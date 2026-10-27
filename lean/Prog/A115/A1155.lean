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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A115500: Number of monic irreducible polynomials of degree 1 in GF(2^n)[x1,x2,x3,x4].

The programs for A115500, the canonical program `A115500.P16276860253592697086` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115500 has offset 1).

The definition of A115500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115500.P16276860253592697086

`2^(n+1)+4^(n+1)+8^(n+1)+16^(n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115500

/-- `2^(n+1)+4^(n+1)+8^(n+1)+16^(n+1)` -/
def P16276860253592697086.Spec : Prop :=
  ∀ n, (P16276860253592697086.a n : ℤ) = A115500 (n + 1)

theorem P16276860253592697086.correct : P16276860253592697086.Spec := by
  intro n
  simp only [A115500, Nat.add_sub_cancel]

end A115500

/-! ## A115500.P12638002474415153954

`2^(n+1)*A034496(n+1)`
-/

namespace A115500.P12638002474415153954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A034496 (n + 1)

end

end A115500.P12638002474415153954

namespace A115500

/-- `2^(n+1)*A034496(n+1)` -/
def P12638002474415153954.Spec : Prop :=
  ∀ n, P12638002474415153954.a n = A115500 (n + 1)

end A115500

/-! ## A115500.P14636467982453944860

`xor(A033999(n)², A020514(n+1))`
-/

namespace A115500.P14636467982453944860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 n ^ 2) (A020514 (n + 1))

end

end A115500.P14636467982453944860

namespace A115500

/-- `xor(A033999(n)², A020514(n+1))` -/
def P14636467982453944860.Spec : Prop :=
  ∀ n, P14636467982453944860.a n = A115500 (n + 1)

end A115500

/-! ## A115500.P12947074945919468766

`A000051(n+1)*A074603(n+1)`
-/

namespace A115500.P12947074945919468766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) * A074603 (n + 1)

end

end A115500.P12947074945919468766

namespace A115500

/-- `A000051(n+1)*A074603(n+1)` -/
def P12947074945919468766.Spec : Prop :=
  ∀ n, P12947074945919468766.a n = A115500 (n + 1)

end A115500

/-! ## A115500.P4941890710384612965

`A052539(n+1)*A161168(n+1)`
-/

namespace A115500.P4941890710384612965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052539 (n + 1) * A161168 (n + 1)

end

end A115500.P4941890710384612965

namespace A115500

/-- `A052539(n+1)*A161168(n+1)` -/
def P4941890710384612965.Spec : Prop :=
  ∀ n, P4941890710384612965.a n = A115500 (n + 1)

end A115500

/-! ## A115500.P16820091460079388739

`(A155592(n+1)+1)*A083318(n+1)`
-/

namespace A115500.P16820091460079388739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155592 (n + 1) + 1) * A083318 (n + 1)

end

end A115500.P16820091460079388739

namespace A115500

/-- `(A155592(n+1)+1)*A083318(n+1)` -/
def P16820091460079388739.Spec : Prop :=
  ∀ n, P16820091460079388739.a n = A115500 (n + 1)

end A115500

/-! ## A115500.P1881417334506784203

`(A004171(n+1)+2)*A007582(n+1)`
-/

namespace A115500.P1881417334506784203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004171 (n + 1) + 2) * A007582 (n + 1)

end

end A115500.P1881417334506784203

namespace A115500

/-- `(A004171(n+1)+2)*A007582(n+1)` -/
def P1881417334506784203.Spec : Prop :=
  ∀ n, P1881417334506784203.a n = A115500 (n + 1)

end A115500

/-! ## A115500.P17206002899280228689

`(A001018(n+1)+A000079(n+1))*A000051(n+1)`
-/

namespace A115500.P17206002899280228689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001018 (n + 1) + A000079 (n + 1)) * A000051 (n + 1)

end

end A115500.P17206002899280228689

namespace A115500

/-- `(A001018(n+1)+A000079(n+1))*A000051(n+1)` -/
def P17206002899280228689.Spec : Prop :=
  ∀ n, P17206002899280228689.a n = A115500 (n + 1)

end A115500

/-! ## A115500.P7058725671165037473

`(A062395(n+1)+A000225(n+1))*A000051(n+1)`
-/

namespace A115500.P7058725671165037473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062395 (n + 1) + A000225 (n + 1)) * A000051 (n + 1)

end

end A115500.P7058725671165037473

namespace A115500

/-- `(A062395(n+1)+A000225(n+1))*A000051(n+1)` -/
def P7058725671165037473.Spec : Prop :=
  ∀ n, P7058725671165037473.a n = A115500 (n + 1)

end A115500

/-!
# A115504: Number of monic irreducible polynomials of degree 1 in GF(2^n)[x1,x2,x3,x4,x5].

The programs for A115504, the canonical program `A115504.P12698168891123988743` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115504 has offset 1).

The definition of A115504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115504.P12698168891123988743

`2^(n+1)+4^(n+1)+8^(n+1)+16^(n+1)+32^(n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115504

/-- `2^(n+1)+4^(n+1)+8^(n+1)+16^(n+1)+32^(n+1)` -/
def P12698168891123988743.Spec : Prop :=
  ∀ n, (P12698168891123988743.a n : ℤ) = A115504 (n + 1)

theorem P12698168891123988743.correct : P12698168891123988743.Spec := by
  intro n
  simp only [A115504, Nat.add_sub_cancel]

end A115504

/-! ## A115504.P11817187090088709602

`Δ[A126646(n)]*A020514(n+1)`
-/

namespace A115504.P11817187090088709602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A020514 (n + 1)

end

end A115504.P11817187090088709602

namespace A115504

/-- `Δ[A126646(n)]*A020514(n+1)` -/
def P11817187090088709602.Spec : Prop :=
  ∀ n, P11817187090088709602.a n = A115504 (n + 1)

end A115504

/-! ## A115504.P12653970466426833985

`A000079(n+1)*A020514(n+1)`
-/

namespace A115504.P12653970466426833985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A020514 (n + 1)

end

end A115504.P12653970466426833985

namespace A115504

/-- `A000079(n+1)*A020514(n+1)` -/
def P12653970466426833985.Spec : Prop :=
  ∀ n, P12653970466426833985.a n = A115504 (n + 1)

end A115504

/-! ## A115504.P6471782003828838970

`(A000225(n+1)+1)*A020514(n+1)`
-/

namespace A115504.P6471782003828838970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 (n + 1) + 1) * A020514 (n + 1)

end

end A115504.P6471782003828838970

namespace A115504

/-- `(A000225(n+1)+1)*A020514(n+1)` -/
def P6471782003828838970.Spec : Prop :=
  ∀ n, P6471782003828838970.a n = A115504 (n + 1)

end A115504

/-! ## A115504.P16306631358819610316

`(A000051(n+1)-1)*A020514(n+1)`
-/

namespace A115504.P16306631358819610316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000051 (n + 1) - 1) * A020514 (n + 1)

end

end A115504.P16306631358819610316

namespace A115504

/-- `(A000051(n+1)-1)*A020514(n+1)` -/
def P16306631358819610316.Spec : Prop :=
  ∀ n, P16306631358819610316.a n = A115504 (n + 1)

end A115504

/-!
# A115506: Number of permutations where every element in binary notation has ones at the same or adjacent positions of previous element's binary ones.

The programs for A115506, there is no canonical definition to state claims against.
-/

/-! ## A115506.P9209022155770887084

`∏{p}[A326093(n), A003057(#)]`
-/

namespace A115506.P9209022155770887084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003057 p

end

end A115506.P9209022155770887084

/-! ## A115506.P2902402711379734837

`A000026(∏[dr(A212422(n))])`
-/

namespace A115506.P2902402711379734837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A212422 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A115506.P2902402711379734837

/-! ## A115506.P9923078243696392138

`record[gcd(A027903(n), A175194(n+1))]`
-/

namespace A115506.P9923078243696392138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027903 n) (A175194 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115506.P9923078243696392138

/-!
# A115508: Number of permutations where for every pair of adjacent elements one element in binary notation has ones at the same or adjacent positions to those of the other element.

The programs for A115508, there is no canonical definition to state claims against.
-/

/-! ## A115508.P9202538867755959502

`gcd(A084162(n²), A290419(n))`
-/

namespace A115508.P9202538867755959502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084162 (n ^ 2)) (A290419 n)

end

end A115508.P9202538867755959502

/-! ## A115508.P13553762991173845174

`and(p?[A022166(n)], A084132(n))`
-/

namespace A115508.P13553762991173845174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A084132 n)

end

end A115508.P13553762991173845174

/-! ## A115508.P4740222451977219946

`gcd(A033431(A003783(n)), A290674(n))`
-/

namespace A115508.P4740222451977219946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033431 (A003783 n).toNat) (A290674 n)

end

end A115508.P4740222451977219946

/-!
# A115510: a(1)=1. a(n) is smallest positive integer not occurring earlier in the sequence such that a(n) and a(n-1) have at least one 1-bit in the same position when they are written in binary.

The programs for A115510, there is no canonical definition to state claims against.
-/

/-! ## A115510.P6276733102124501561

`A131717(A115511(A131717(n+1)))`
-/

namespace A115510.P6276733102124501561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131717 (A115511 (A131717 (n + 1)).toNat).toNat

end

end A115510.P6276733102124501561

/-! ## A115510.P8419175156708012967

`A115511(A115511(A115511(A115511(A115511(n+1)))))`
-/

namespace A115510.P8419175156708012967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115511 (A115511 (A115511 (A115511 (A115511 (n + 1)).toNat).toNat).toNat).toNat

end

end A115510.P8419175156708012967

/-! ## A115510.P14739988347125156467

`A068505(A353728(n+1))`
-/

namespace A115510.P14739988347125156467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A353728 (n + 1)).toNat

end

end A115510.P14739988347125156467

/-!
# A115511: Inverse permutation to sequence A115510.

The programs for A115511, there is no canonical definition to state claims against.
-/

/-! ## A115511.P12953169602586194334

`A131717(A115510(A131717(n+1)))`
-/

namespace A115511.P12953169602586194334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131717 (A115510 (A131717 (n + 1)).toNat).toNat

end

end A115511.P12953169602586194334

/-! ## A115511.P17269352053514241317

`A115510(A115510(A115510(A115510(A115510(n+1)))))`
-/

namespace A115511.P17269352053514241317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115510 (A115510 (A115510 (A115510 (A115510 (n + 1)).toNat).toNat).toNat).toNat

end

end A115511.P17269352053514241317

/-!
# A115512: Number triangle (1,x)+(x,x^3) expressed in terms of Riordan arrays.

The programs for A115512, the canonical program `A115512.P17971829937860406712` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115512 has offset 0).

The definition of A115512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115512.P5263691527745076708

`A114000(n)*A377069(n)`
-/

namespace A115512.P5263691527745076708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114000 n * A377069 n

end

end A115512.P5263691527745076708

namespace A115512

/-- `A114000(n)*A377069(n)` -/
def P5263691527745076708.Spec : Prop :=
  ∀ n, P5263691527745076708.a n = A115512 n

end A115512

/-! ## A115512.P2961307627826498315

`and(A114000(n), A119302(n))`
-/

namespace A115512.P2961307627826498315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114000 n) (A119302 n)

end

end A115512.P2961307627826498315

namespace A115512

/-- `and(A114000(n), A119302(n))` -/
def P2961307627826498315.Spec : Prop :=
  ∀ n, P2961307627826498315.a n = A115512 n

end A115512

/-! ## A115512.P15508587084610740401

`and(A115513(n), A377069(n))`
-/

namespace A115512.P15508587084610740401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115513 n) (A377069 n)

end

end A115512.P15508587084610740401

namespace A115512

/-- `and(A115513(n), A377069(n))` -/
def P15508587084610740401.Spec : Prop :=
  ∀ n, P15508587084610740401.a n = A115512 n

end A115512

/-! ## A115512.P17971829937860406712

`A117198(A183572(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A115512

/-- `A117198(A183572(n+1))` -/
def P17971829937860406712.Spec : Prop :=
  ∀ n, P17971829937860406712.a n = A115512 n

theorem P17971829937860406712.correct : P17971829937860406712.Spec := by
  intro n
  simp only [A115512]

end A115512

/-! ## A115512.P9144616545644407381

`A000009(∑[3-2*char[∑[n]]])%2`
-/

namespace A115512.P9144616545644407381
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((2 * (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) 2

end

end A115512.P9144616545644407381

namespace A115512

/-- `A000009(∑[3-2*char[∑[n]]])%2` -/
def P9144616545644407381.Spec : Prop :=
  ∀ n, P9144616545644407381.a n = A115512 n

end A115512

/-! ## A115512.P13466493013002603759

`A080995(A033292(n+1))`
-/

namespace A115512.P13466493013002603759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080995 (A033292 (n + 1)).toNat

end

end A115512.P13466493013002603759

namespace A115512

/-- `A080995(A033292(n+1))` -/
def P13466493013002603759.Spec : Prop :=
  ∀ n, P13466493013002603759.a n = A115512 n

end A115512

/-! ## A115512.P4728576498693321867

`abs(A010815(A143803(n+1)-n))`
-/

namespace A115512.P4728576498693321867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010815 (A143803 (n + 1) - (n : ℤ)).toNat|

end

end A115512.P4728576498693321867

namespace A115512

/-- `abs(A010815(A143803(n+1)-n))` -/
def P4728576498693321867.Spec : Prop :=
  ∀ n, P4728576498693321867.a n = A115512 n

end A115512

/-! ## A115512.P393193380317803492

`abs(A010815(2*A083920(n)+n+1))`
-/

namespace A115512.P393193380317803492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010815 (2 * A083920 n + (n + 1 : ℤ)).toNat|

end

end A115512.P393193380317803492

namespace A115512

/-- `abs(A010815(2*A083920(n)+n+1))` -/
def P393193380317803492.Spec : Prop :=
  ∀ n, P393193380317803492.a n = A115512 n

end A115512

/-! ## A115512.P4030414628218479848

`val(A050376(3*n+4), 2)^Δ[A062707(n)]²`
-/

namespace A115512.P4030414628218479848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A050376 (3 * n + 4)).toNat 2 : ℚ) ^ ((f1 (n + 1) - f1 n) ^ 2 : ℤ)

end

end A115512.P4030414628218479848

namespace A115512

/-- `val(A050376(3*n+4), 2)^Δ[A062707(n)]²` -/
def P4030414628218479848.Spec : Prop :=
  ∀ n, P4030414628218479848.a n = (A115512 n : ℚ)

end A115512

/-! ## A115512.P15484080406416954047

`val(A297112(n+1)+1, 2)^Δ[A062707(n)]²`
-/

namespace A115512.P15484080406416954047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A297112 (n + 1) + 1).toNat 2 : ℚ) ^ ((f1 (n + 1) - f1 n) ^ 2 : ℤ)

end

end A115512.P15484080406416954047

namespace A115512

/-- `val(A297112(n+1)+1, 2)^Δ[A062707(n)]²` -/
def P15484080406416954047.Spec : Prop :=
  ∀ n, P15484080406416954047.a n = (A115512 n : ℚ)

end A115512

/-! ## A115512.P8327691170492998045

`A010054(3*A033292(n+1))`
-/

namespace A115512.P8327691170492998045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (3 * A033292 (n + 1)).toNat

end

end A115512.P8327691170492998045

namespace A115512

/-- `A010054(3*A033292(n+1))` -/
def P8327691170492998045.Spec : Prop :=
  ∀ n, P8327691170492998045.a n = A115512 n

end A115512

/-! ## A115512.P11293022429854384917

`and(A187954(n), A377069(n))`
-/

namespace A115512.P11293022429854384917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A187954 n) (A377069 n)

end

end A115512.P11293022429854384917

namespace A115512

/-- `and(A187954(n), A377069(n))` -/
def P11293022429854384917.Spec : Prop :=
  ∀ n, P11293022429854384917.a n = A115512 n

end A115512

/-! ## A115512.P4200621879343247762

`A000007(Δ[A062707(n)]²)`
-/

namespace A115512.P4200621879343247762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A115512.P4200621879343247762

namespace A115512

/-- `A000007(Δ[A062707(n)]²)` -/
def P4200621879343247762.Spec : Prop :=
  ∀ n, P4200621879343247762.a n = A115512 n

end A115512

/-! ## A115512.P10148675688342057894

`A005369(Δ[A062707(n)]²)`
-/

namespace A115512.P10148675688342057894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A115512.P10148675688342057894

namespace A115512

/-- `A005369(Δ[A062707(n)]²)` -/
def P10148675688342057894.Spec : Prop :=
  ∀ n, P10148675688342057894.a n = A115512 n

end A115512

/-! ## A115512.P16322055245588718908

`A028586(Δ[A062707(n)]²)`
-/

namespace A115512.P16322055245588718908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028586 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A115512.P16322055245588718908

namespace A115512

/-- `A028586(Δ[A062707(n)]²)` -/
def P16322055245588718908.Spec : Prop :=
  ∀ n, P16322055245588718908.a n = A115512 n

end A115512

/-!
# A115513: Inverse of matrix (1,x)+(x,x^3).

The programs for A115513, there is no canonical definition to state claims against.
-/

/-! ## A115513.P4159662194717174964

`A214295(A182491(n+1)-A344686(n))`
-/

namespace A115513.P4159662194717174964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214295 (A182491 (n + 1) - A344686 n).toNat

end

end A115513.P4159662194717174964

/-! ## A115513.P14767891595332634699

`A244611(A182491(n+1)-A344686(n))`
-/

namespace A115513.P14767891595332634699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244611 (A182491 (n + 1) - A344686 n).toNat

end

end A115513.P14767891595332634699

/-! ## A115513.P8155778229183581428

`A010815(A023532(n)*A318027(n))`
-/

namespace A115513.P8155778229183581428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A023532 n * A318027 n).toNat

end

end A115513.P8155778229183581428

/-! ## A115513.P15389439792315056202

`A010815(A053417(n)*A214269(n+1))`
-/

namespace A115513.P15389439792315056202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A053417 n * A214269 (n + 1)).toNat

end

end A115513.P15389439792315056202

/-! ## A115513.P17456201265297691998

`A121373(and(A143823(n), A337410(n+1)))`
-/

namespace A115513.P17456201265297691998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (Int.land (A143823 n) (A337410 (n + 1))).toNat

end

end A115513.P17456201265297691998

/-!
# A115514: Triangle read by rows: row n >= 1 lists first n positive terms of A004526 (integers repeated) in decreasing order.

The programs for A115514, the canonical program `A115514.P10787854986318995920` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115514 has offset 1).

The definition of A115514 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115514.P10787854986318995920

`floor((row(n)+2-col(n))/2)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115514

/-- `floor((row(n)+2-col(n))/2)` -/
def P10787854986318995920.Spec : Prop :=
  ∀ n, P10787854986318995920.a n = A115514 (n + 1)

theorem P10787854986318995920.correct : P10787854986318995920.Spec := by
  intro n
  simp only [A115514, Nat.add_sub_cancel]

end A115514

/-! ## A115514.P14353713802918360021

`1+T(n-1,k+1)` with `a(0)=1`
-/

namespace A115514.P14353713802918360021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + SequenceMachineLib.triUpRight a n

end

end A115514.P14353713802918360021

namespace A115514

/-- `1+T(n-1,k+1)` -/
def P14353713802918360021.Spec : Prop :=
  ∀ n, (P14353713802918360021.a n : ℤ) = A115514 (n + 1)

end A115514

/-! ## A115514.P11189939789021396983

`1+T(n-2,k)` with `a(0)=1`
-/

namespace A115514.P11189939789021396983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + SequenceMachineLib.triUp2 a n

end

end A115514.P11189939789021396983

namespace A115514

/-- `1+T(n-2,k)` -/
def P11189939789021396983.Spec : Prop :=
  ∀ n, (P11189939789021396983.a n : ℤ) = A115514 (n + 1)

end A115514

/-! ## A115514.P10961328077489912972

`ceil((row(n)+1-col(n))/2)`
-/

namespace A115514.P10961328077489912972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) / 2⌉

end

end A115514.P10961328077489912972

namespace A115514

/-- `ceil((row(n)+1-col(n))/2)` -/
def P10961328077489912972.Spec : Prop :=
  ∀ n, P10961328077489912972.a n = A115514 (n + 1)

end A115514

/-! ## A115514.P18105139889840186037

`round((row(n)-col(n)+1)/2)`
-/

namespace A115514.P18105139889840186037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℚ) / 2)

end

end A115514.P18105139889840186037

namespace A115514

/-- `round((row(n)-col(n)+1)/2)` -/
def P18105139889840186037.Spec : Prop :=
  ∀ n, P18105139889840186037.a n = A115514 (n + 1)

end A115514

/-! ## A115514.P5239561514092074740

`ceil((C(comp[∑[n]]-n, 2)-n)/2)`
-/

namespace A115514.P5239561514092074740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) / 2⌉

end

end A115514.P5239561514092074740

namespace A115514

/-- `ceil((C(comp[∑[n]]-n, 2)-n)/2)` -/
def P5239561514092074740.Spec : Prop :=
  ∀ n, P5239561514092074740.a n = A115514 (n + 1)

end A115514

/-! ## A115514.P12223584578967069572

`round((C(comp[∑[n]]-n, 2)-n)/2)`
-/

namespace A115514.P12223584578967069572
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) / 2)

end

end A115514.P12223584578967069572

namespace A115514

/-- `round((C(comp[∑[n]]-n, 2)-n)/2)` -/
def P12223584578967069572.Spec : Prop :=
  ∀ n, P12223584578967069572.a n = A115514 (n + 1)

end A115514

/-! ## A115514.P11633806157748082334

`round(cosh(log(C(comp[∑[n]]-n, 2)-n)))`
-/

namespace A115514.P11633806157748082334
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℝ)))

end

end A115514.P11633806157748082334

namespace A115514

/-- `round(cosh(log(C(comp[∑[n]]-n, 2)-n)))` -/
def P11633806157748082334.Spec : Prop :=
  ∀ n, P11633806157748082334.a n = A115514 (n + 1)

end A115514

/-! ## A115514.P11739529222950826936

`-floor((n-C(comp[∑[n]]-n, 2))/2)`
-/

namespace A115514.P11739529222950826936
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊((n : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) : ℚ) / 2⌋

end

end A115514.P11739529222950826936

namespace A115514

/-- `-floor((n-C(comp[∑[n]]-n, 2))/2)` -/
def P11739529222950826936.Spec : Prop :=
  ∀ n, P11739529222950826936.a n = A115514 (n + 1)

end A115514

/-! ## A115514.P18200915162287077759

`floor((C(comp[∑[n]]-n, 2)+1-n)/2)`
-/

namespace A115514.P18200915162287077759
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + 1 : ℤ) - (n : ℤ) : ℚ) / 2⌋

end

end A115514.P18200915162287077759

namespace A115514

/-- `floor((C(comp[∑[n]]-n, 2)+1-n)/2)` -/
def P18200915162287077759.Spec : Prop :=
  ∀ n, P18200915162287077759.a n = A115514 (n + 1)

end A115514

/-! ## A115514.P10094198328999829008

`ceil(log2(sqrt(2^(C(comp[∑[n]]-n, 2)-n))))`
-/

namespace A115514.P10094198328999829008
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.sqrt ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ) : ℝ))⌉

end

end A115514.P10094198328999829008

namespace A115514

/-- `ceil(log2(sqrt(2^(C(comp[∑[n]]-n, 2)-n))))` -/
def P10094198328999829008.Spec : Prop :=
  ∀ n, P10094198328999829008.a n = A115514 (n + 1)

end A115514

/-! ## A115514.P4111502233587897394

`val(2*2^(C(comp[∑[n]]-n, 2)-n), 4)`
-/

namespace A115514.P4111502233587897394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (2 * (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ))).toNat 4

end

end A115514.P4111502233587897394

namespace A115514

/-- `val(2*2^(C(comp[∑[n]]-n, 2)-n), 4)` -/
def P4111502233587897394.Spec : Prop :=
  ∀ n, (P4111502233587897394.a n : ℤ) = A115514 (n + 1)

end A115514

/-! ## A115514.P8736680999304263447

`T(n-1,k)+(1+(-1)^(row(n)-col(n)))/2` with `a(0)=1`
-/

namespace A115514.P8736680999304263447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + (1 + (-1 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)) / 2

end

end A115514.P8736680999304263447

namespace A115514

/-- `T(n-1,k)+(1+(-1)^(row(n)-col(n)))/2` -/
def P8736680999304263447.Spec : Prop :=
  ∀ n, P8736680999304263447.a n = (A115514 (n + 1) : ℚ)

end A115514

/-! ## A115514.P2243367508484754830

`ceil((n²+1+n)%(comp[C(n, 2)]+1)/4)`
-/

namespace A115514.P2243367508484754830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n ^ 2 + 1 + n) % (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℕ) : ℚ) / 4⌉

end

end A115514.P2243367508484754830

namespace A115514

/-- `ceil((n²+1+n)%(comp[C(n, 2)]+1)/4)` -/
def P2243367508484754830.Spec : Prop :=
  ∀ n, P2243367508484754830.a n = A115514 (n + 1)

end A115514

/-! ## A115514.P4693273875633792906

`val(2^(C(comp[∑[n]]-n, 2)-(n+1)), 4)+1`
-/

namespace A115514.P4693273875633792906
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ))).toNat 4 + 1

end

end A115514.P4693273875633792906

namespace A115514

/-- `val(2^(C(comp[∑[n]]-n, 2)-(n+1)), 4)+1` -/
def P4693273875633792906.Spec : Prop :=
  ∀ n, (P4693273875633792906.a n : ℤ) = A115514 (n + 1)

end A115514

/-! ## A115514.P8808865076358654155

`ceil(A099375(n)/4)`
-/

namespace A115514.P8808865076358654155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 n : ℚ) / 4⌉

end

end A115514.P8808865076358654155

namespace A115514

/-- `ceil(A099375(n)/4)` -/
def P8808865076358654155.Spec : Prop :=
  ∀ n, P8808865076358654155.a n = A115514 (n + 1)

end A115514

/-! ## A115514.P12915231446417478556

`(A134444(n)+1)/2`
-/

namespace A115514.P12915231446417478556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134444 n + 1 : ℚ) / 2

end

end A115514.P12915231446417478556

namespace A115514

/-- `(A134444(n)+1)/2` -/
def P12915231446417478556.Spec : Prop :=
  ∀ n, P12915231446417478556.a n = (A115514 (n + 1) : ℚ)

end A115514

/-! ## A115514.P12836799796790364708

`val(A036561(n), 4)+1`
-/

namespace A115514.P12836799796790364708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036561 n).toNat 4 + 1

end

end A115514.P12836799796790364708

namespace A115514

/-- `val(A036561(n), 4)+1` -/
def P12836799796790364708.Spec : Prop :=
  ∀ n, (P12836799796790364708.a n : ℤ) = A115514 (n + 1)

end A115514

/-! ## A115514.P13641257489077287730

`val(A054582(n), 4)+1`
-/

namespace A115514.P13641257489077287730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A054582 n).toNat 4 + 1

end

end A115514.P13641257489077287730

namespace A115514

/-- `val(A054582(n), 4)+1` -/
def P13641257489077287730.Spec : Prop :=
  ∀ n, (P13641257489077287730.a n : ℤ) = A115514 (n + 1)

end A115514

/-! ## A115514.P10961051459185903875

`val(A130321(n), 4)+1`
-/

namespace A115514.P10961051459185903875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A130321 n).toNat 4 + 1

end

end A115514.P10961051459185903875

namespace A115514

/-- `val(A130321(n), 4)+1` -/
def P10961051459185903875.Spec : Prop :=
  ∀ n, (P10961051459185903875.a n : ℤ) = A115514 (n + 1)

end A115514

/-!
# A115515: a(n) = largest m such that the harmonic number H(m)= Sum_{i=1..m} 1/i is < n.

The programs for A115515, there is no canonical definition to state claims against.
-/

/-! ## A115515.P17276536784067041954

`record[round(exp(n-γ))-C(3, n²)!]`
-/

namespace A115515.P17276536784067041954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp ((n : ℝ) - Real.eulerMascheroniConstant)) - (Nat.factorial (Nat.choose 3 (n ^ 2)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115515.P17276536784067041954

/-! ## A115515.P5413953207135351310

`∑[A339061(n)]-1`
-/

namespace A115515.P5413953207135351310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A115515.P5413953207135351310

/-! ## A115515.P4259276536297472346

`A004080(n+1)-1`
-/

namespace A115515.P4259276536297472346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004080 (n + 1) - 1

end

end A115515.P4259276536297472346

/-! ## A115515.P11506133433556685321

`Δ[∑[A004080(n)]-n]`
-/

namespace A115515.P11506133433556685321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004080 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115515.P11506133433556685321

/-! ## A115515.P9517791979534377992

`record[A004080(abs(1-n))-1]`
-/

namespace A115515.P9517791979534377992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004080 |1 - (n : ℤ)|.toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115515.P9517791979534377992

/-!
# A115516: The mode of the bits of n (using 0 if bimodal).

The programs for A115516, the canonical program `A115516.P12830131458116103900` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115516 has offset 0).

The definition of A115516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115516.P11998496756695368069

`char[lt[0, a(floor(n/2))-(-1)^n]]` with `a(0)=0`
-/

namespace A115516.P11998496756695368069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f3 =>
  f3 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A115516.P11998496756695368069

namespace A115516

/-- `char[lt[0, a(floor(n/2))-(-1)^n]]` -/
def P11998496756695368069.Spec : Prop :=
  ∀ n, (P11998496756695368069.a n : ℤ) = A115516 n

end A115516

/-! ## A115516.P15855125197974687657

`char[lt[8*n+11, 4*a(and(n, n-1))]]` with `a(0)=4, a(1)=48`
-/

namespace A115516.P15855125197974687657
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 11

def f3 : ℕ → ℕ := SequenceMachineLib.rec [4, 48] fun n f3 =>
  4 * f3 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A115516.P15855125197974687657

namespace A115516

/-- `char[lt[8*n+11, 4*a(and(n, n-1))]]` -/
def P15855125197974687657.Spec : Prop :=
  ∀ n, (P15855125197974687657.a n : ℤ) = A115516 n

end A115516

/-! ## A115516.P6508882636520053820

`ceil(tanh(A145037(n)))`
-/

namespace A115516.P6508882636520053820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh (A145037 n : ℝ)⌉

end

end A115516.P6508882636520053820

namespace A115516

/-- `ceil(tanh(A145037(n)))` -/
def P6508882636520053820.Spec : Prop :=
  ∀ n, P6508882636520053820.a n = A115516 n

end A115516

/-! ## A115516.P17233294027855720051

`char[A072600(n+1)]`
-/

namespace A115516.P17233294027855720051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A115516.P17233294027855720051

namespace A115516

/-- `char[A072600(n+1)]` -/
def P17233294027855720051.Spec : Prop :=
  ∀ n, (P17233294027855720051.a n : ℤ) = A115516 n

end A115516

/-! ## A115516.P438343105941954798

`char[lt[A037861(n), 0]]`
-/

namespace A115516.P438343105941954798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A115516.P438343105941954798

namespace A115516

/-- `char[lt[A037861(n), 0]]` -/
def P438343105941954798.Spec : Prop :=
  ∀ n, (P438343105941954798.a n : ℤ) = A115516 n

end A115516

/-! ## A115516.P10107672511406455692

`ceil(tanh(∑[A269735(n)]))`
-/

namespace A115516.P10107672511406455692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A115516.P10107672511406455692

namespace A115516

/-- `ceil(tanh(∑[A269735(n)]))` -/
def P10107672511406455692.Spec : Prop :=
  ∀ n, P10107672511406455692.a n = A115516 n

end A115516

/-! ## A115516.P8507185427989906077

`round(A000120(n)/log2(2*(n+1)))`
-/

namespace A115516.P8507185427989906077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000120 n : ℝ) / Real.logb 2 (2 * (n + 1) : ℝ))

end

end A115516.P8507185427989906077

namespace A115516

/-- `round(A000120(n)/log2(2*(n+1)))` -/
def P8507185427989906077.Spec : Prop :=
  ∀ n, P8507185427989906077.a n = A115516 n

end A115516

/-! ## A115516.P12830131458116103900

`A000045(and(48, A037861(n)))%5`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A115516

/-- `A000045(and(48, A037861(n)))%5` -/
def P12830131458116103900.Spec : Prop :=
  ∀ n, P12830131458116103900.a n = A115516 n

theorem P12830131458116103900.correct : P12830131458116103900.Spec := by
  intro n
  simp only [A115516]

end A115516

/-! ## A115516.P15856933468120086605

`floor(acot(A000203(n+1))*A037861(n))²`
-/

namespace A115516.P15856933468120086605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A000203 (n + 1) : ℝ) * (A037861 n : ℝ)⌋ ^ 2

end

end A115516.P15856933468120086605

namespace A115516

/-- `floor(acot(A000203(n+1))*A037861(n))²` -/
def P15856933468120086605.Spec : Prop :=
  ∀ n, P15856933468120086605.a n = A115516 n

end A115516

/-! ## A115516.P18280975618392306978

`floor(acot(A037861(n))/A000005(n+1))²`
-/

namespace A115516.P18280975618392306978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A037861 n : ℝ) / (A000005 (n + 1) : ℝ)⌋ ^ 2

end

end A115516.P18280975618392306978

namespace A115516

/-- `floor(acot(A037861(n))/A000005(n+1))²` -/
def P18280975618392306978.Spec : Prop :=
  ∀ n, P18280975618392306978.a n = A115516 n

end A115516

/-! ## A115516.P7450270551513125357

`A000120(and(A073138(n)², A073138(n)))`
-/

namespace A115516.P7450270551513125357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (A073138 n ^ 2) (A073138 n)).toNat

end

end A115516.P7450270551513125357

namespace A115516

/-- `A000120(and(A073138(n)², A073138(n)))` -/
def P7450270551513125357.Spec : Prop :=
  ∀ n, P7450270551513125357.a n = A115516 n

end A115516

/-! ## A115516.P14974208491572319024

`A115517(2*n*A115517(n))`
-/

namespace A115516.P14974208491572319024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115517 ((2 * n : ℤ) * A115517 n).toNat

end

end A115516.P14974208491572319024

namespace A115516

/-- `A115517(2*n*A115517(n))` -/
def P14974208491572319024.Spec : Prop :=
  ∀ n, P14974208491572319024.a n = A115516 n

end A115516

/-! ## A115516.P4388486741816165834

`A115517(2*n)`
-/

namespace A115516.P4388486741816165834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115517 (2 * n)

end

end A115516.P4388486741816165834

namespace A115516

/-- `A115517(2*n)` -/
def P4388486741816165834.Spec : Prop :=
  ∀ n, P4388486741816165834.a n = A115516 n

end A115516

/-!
# A115517: The mode of the bits of n (using 1 if bimodal).

The programs for A115517, the canonical program `A115517.P313347450505954263` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115517 has offset 0).

The definition of A115517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115517.P17977067976647490475

`char[lt[0, a(floor(n/2))-(-1)^n]]` with `a(0)=0, a(1)=2`
-/

namespace A115517.P17977067976647490475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f3 =>
  f3 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A115517.P17977067976647490475

namespace A115517

/-- `char[lt[0, a(floor(n/2))-(-1)^n]]` -/
def P17977067976647490475.Spec : Prop :=
  ∀ n, (P17977067976647490475.a n : ℤ) = A115517 n

end A115517

/-! ## A115517.P13481155736446219775

`char[lt[8*n+11, 4*a(and(n, n-1))]]` with `a(0)=8`
-/

namespace A115517.P13481155736446219775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 11

def f3 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f3 =>
  4 * f3 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A115517.P13481155736446219775

namespace A115517

/-- `char[lt[8*n+11, 4*a(and(n, n-1))]]` -/
def P13481155736446219775.Spec : Prop :=
  ∀ n, (P13481155736446219775.a n : ℤ) = A115517 n

end A115517

/-! ## A115517.P7408159245619783319

`char[A072601(n+1)]`
-/

namespace A115517.P7408159245619783319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A115517.P7408159245619783319

namespace A115517

/-- `char[A072601(n+1)]` -/
def P7408159245619783319.Spec : Prop :=
  ∀ n, (P7408159245619783319.a n : ℤ) = A115517 n

end A115517

/-! ## A115517.P16772182154019308226

`char[lt[A037861(n), 1]]`
-/

namespace A115517.P16772182154019308226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A115517.P16772182154019308226

namespace A115517

/-- `char[lt[A037861(n), 1]]` -/
def P16772182154019308226.Spec : Prop :=
  ∀ n, (P16772182154019308226.a n : ℤ) = A115517 n

end A115517

/-! ## A115517.P4428446637812421102

`char[lt[n+1, A102376(n)]]`
-/

namespace A115517.P4428446637812421102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A115517.P4428446637812421102

namespace A115517

/-- `char[lt[n+1, A102376(n)]]` -/
def P4428446637812421102.Spec : Prop :=
  ∀ n, (P4428446637812421102.a n : ℤ) = A115517 n

end A115517

/-! ## A115517.P15263488053553974254

`round(A000120(n)/log2(n+2))`
-/

namespace A115517.P15263488053553974254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000120 n : ℝ) / Real.logb 2 (n + 2 : ℝ))

end

end A115517.P15263488053553974254

namespace A115517

/-- `round(A000120(n)/log2(n+2))` -/
def P15263488053553974254.Spec : Prop :=
  ∀ n, P15263488053553974254.a n = A115517 n

end A115517

/-! ## A115517.P2979468005729925194

`char[comp[A072603(n+1)-1]+1]`
-/

namespace A115517.P2979468005729925194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072603 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A115517.P2979468005729925194

namespace A115517

/-- `char[comp[A072603(n+1)-1]+1]` -/
def P2979468005729925194.Spec : Prop :=
  ∀ n, (P2979468005729925194.a n : ℤ) = A115517 n

end A115517

/-! ## A115517.P18398041088503870544

`2-A006530(ceil(2^A037861(n)))`
-/

namespace A115517.P18398041088503870544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A006530 ⌈(2 : ℚ) ^ (A037861 n : ℤ)⌉.toNat

end

end A115517.P18398041088503870544

namespace A115517

/-- `2-A006530(ceil(2^A037861(n)))` -/
def P18398041088503870544.Spec : Prop :=
  ∀ n, P18398041088503870544.a n = A115517 n

end A115517

/-! ## A115517.P17261733189741493075

`2-A014963(ceil(2^A037861(n)))`
-/

namespace A115517.P17261733189741493075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A014963 ⌈(2 : ℚ) ^ (A037861 n : ℤ)⌉.toNat

end

end A115517.P17261733189741493075

namespace A115517

/-- `2-A014963(ceil(2^A037861(n)))` -/
def P17261733189741493075.Spec : Prop :=
  ∀ n, P17261733189741493075.a n = A115517 n

end A115517

/-! ## A115517.P313347450505954263

`A000032(ceil(A037861(n)/(n+2)))-1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A115517

/-- `A000032(ceil(A037861(n)/(n+2)))-1` -/
def P313347450505954263.Spec : Prop :=
  ∀ n, P313347450505954263.a n = A115517 n

theorem P313347450505954263.correct : P313347450505954263.Spec := by
  intro n
  simp only [A115517]

end A115517

/-! ## A115517.P1604754677547356550

`A000045(1-ceil(A037861(n)/(n+2)))`
-/

namespace A115517.P1604754677547356550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (1 - ⌈(A037861 n : ℚ) / (n + 2 : ℚ)⌉).toNat

end

end A115517.P1604754677547356550

namespace A115517

/-- `A000045(1-ceil(A037861(n)/(n+2)))` -/
def P1604754677547356550.Spec : Prop :=
  ∀ n, P1604754677547356550.a n = A115517 n

end A115517

/-! ## A115517.P3300153723848097606

`A001221(2-ceil(A037861(n)/(n+2)))`
-/

namespace A115517.P3300153723848097606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 - ⌈(A037861 n : ℚ) / (n + 2 : ℚ)⌉).toNat

end

end A115517.P3300153723848097606

namespace A115517

/-- `A001221(2-ceil(A037861(n)/(n+2)))` -/
def P3300153723848097606.Spec : Prop :=
  ∀ n, P3300153723848097606.a n = A115517 n

end A115517

/-! ## A115517.P4035015541569381758

`A001222(2-ceil(A037861(n)/(n+2)))`
-/

namespace A115517.P4035015541569381758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 - ⌈(A037861 n : ℚ) / (n + 2 : ℚ)⌉).toNat

end

end A115517.P4035015541569381758

namespace A115517

/-- `A001222(2-ceil(A037861(n)/(n+2)))` -/
def P4035015541569381758.Spec : Prop :=
  ∀ n, P4035015541569381758.a n = A115517 n

end A115517

/-! ## A115517.P6607806394795372047

`(floor(acot(A037861(n)))^A000203(n+1))²`
-/

namespace A115517.P6607806394795372047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((⌊SequenceMachineLib.acot (A037861 n : ℝ)⌋ : ℚ) ^ (A000203 (n + 1) : ℤ)) ^ 2

end

end A115517.P6607806394795372047

namespace A115517

/-- `(floor(acot(A037861(n)))^A000203(n+1))²` -/
def P6607806394795372047.Spec : Prop :=
  ∀ n, P6607806394795372047.a n = (A115517 n : ℚ)

end A115517

/-! ## A115517.P18390640143923944398

`(floor(acot(A037861(n)))^A005117(n+1))²`
-/

namespace A115517.P18390640143923944398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((⌊SequenceMachineLib.acot (A037861 n : ℝ)⌋ : ℚ) ^ (A005117 (n + 1) : ℤ)) ^ 2

end

end A115517.P18390640143923944398

namespace A115517

/-- `(floor(acot(A037861(n)))^A005117(n+1))²` -/
def P18390640143923944398.Spec : Prop :=
  ∀ n, P18390640143923944398.a n = (A115517 n : ℚ)

end A115517

/-! ## A115517.P15903406291344592866

`A115516(A042964(n+1))`
-/

namespace A115517.P15903406291344592866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115516 (A042964 (n + 1)).toNat

end

end A115517.P15903406291344592866

namespace A115517

/-- `A115516(A042964(n+1))` -/
def P15903406291344592866.Spec : Prop :=
  ∀ n, P15903406291344592866.a n = A115517 n

end A115517

/-! ## A115517.P17165087138341464204

`A115516(A047487(n+1))`
-/

namespace A115517.P17165087138341464204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115516 (A047487 (n + 1)).toNat

end

end A115517.P17165087138341464204

namespace A115517

/-- `A115516(A047487(n+1))` -/
def P17165087138341464204.Spec : Prop :=
  ∀ n, P17165087138341464204.a n = A115517 n

end A115517

/-! ## A115517.P7074201852815163950

`A115516(A047566(n+1))`
-/

namespace A115517.P7074201852815163950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115516 (A047566 (n + 1)).toNat

end

end A115517.P7074201852815163950

namespace A115517

/-- `A115516(A047566(n+1))` -/
def P7074201852815163950.Spec : Prop :=
  ∀ n, P7074201852815163950.a n = A115517 n

end A115517

/-! ## A115517.P7913843204896909239

`A115516(A047578(n+1))`
-/

namespace A115517.P7913843204896909239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115516 (A047578 (n + 1)).toNat

end

end A115517.P7913843204896909239

namespace A115517

/-- `A115516(A047578(n+1))` -/
def P7913843204896909239.Spec : Prop :=
  ∀ n, P7913843204896909239.a n = A115517 n

end A115517

/-! ## A115517.P6233630246867568783

`A115516(A053438(n+1))`
-/

namespace A115517.P6233630246867568783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115516 (A053438 (n + 1)).toNat

end

end A115517.P6233630246867568783

namespace A115517

/-- `A115516(A053438(n+1))` -/
def P6233630246867568783.Spec : Prop :=
  ∀ n, P6233630246867568783.a n = A115517 n

end A115517

/-!
# A115519: a(n) = n*(1+3*n+6*n^2)/2.

The programs for A115519, the canonical program `A115519.P13720756281229786258` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115519 has offset 0).

The definition of A115519 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(1+3*n+6*n²)/2` (program `A115519.P8751466576840559082`, by `A115519.P8751466576840559082.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A115519.P8751466576840559082

`n*(1+3*n+6*n²)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A115519.P8751466576840559082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (1 + 3 * n + 6 * n ^ 2) : ℚ) / 2

end

end A115519.P8751466576840559082

namespace A115519

/-- `n*(1+3*n+6*n²)/2` -/
def P8751466576840559082.Spec : Prop :=
  ∀ n, P8751466576840559082.a n = (A115519 n : ℚ)

theorem P8751466576840559082.correct : P8751466576840559082.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A115519, Nat.add_sub_cancel, A115519.P8751466576840559082.a, A115519.P13720756281229786258.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A115519, Nat.add_sub_cancel, A115519.P8751466576840559082.a, A115519.P13720756281229786258.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A115519

/-! ## A115519.P13720756281229786258

`3*a(n-1)-3*a(n-2)+a(n-3)+18` with `a(0)=0, a(1)=5, a(2)=31`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115519

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+18` -/
def P13720756281229786258.Spec : Prop :=
  ∀ n, P13720756281229786258.a n = A115519 n

theorem P13720756281229786258.correct : P13720756281229786258.Spec := by
  intro n
  simp only [A115519]

end A115519

/-! ## A115519.P5992894225579943233

`∑[ceil((n*(3-acot(n)))²)]`
-/

namespace A115519.P5992894225579943233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℝ) * (3 - SequenceMachineLib.acot (n : ℝ))) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115519.P5992894225579943233

namespace A115519

/-- `∑[ceil((n*(3-acot(n)))²)]` -/
def P5992894225579943233.Spec : Prop :=
  ∀ n, P5992894225579943233.a n = A115519 n

end A115519

/-! ## A115519.P1544743355648000615

`Δ[(C(n, 2)+n²)*C(n, 2)]`
-/

namespace A115519.P1544743355648000615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + n ^ 2) * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A115519.P1544743355648000615

namespace A115519

/-- `Δ[(C(n, 2)+n²)*C(n, 2)]` -/
def P1544743355648000615.Spec : Prop :=
  ∀ n, P1544743355648000615.a n = A115519 n

end A115519

/-! ## A115519.P15751466241502871425

`Δ[C(3*n, 2)/3*C(n, 2)]`
-/

namespace A115519.P15751466241502871425
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) 2 : ℚ) / 3 * (Nat.choose n 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115519.P15751466241502871425

namespace A115519

/-- `Δ[C(3*n, 2)/3*C(n, 2)]` -/
def P15751466241502871425.Spec : Prop :=
  ∀ n, P15751466241502871425.a n = (A115519 n : ℚ)

end A115519

/-! ## A115519.P12011216819229706120

`Δ[A365929(n)/3]`
-/

namespace A115519.P12011216819229706120
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365929 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115519.P12011216819229706120

namespace A115519

/-- `Δ[A365929(n)/3]` -/
def P12011216819229706120.Spec : Prop :=
  ∀ n, P12011216819229706120.a n = (A115519 n : ℚ)

end A115519

/-! ## A115519.P7245219274280145430

`A294315(n)+∑[n]`
-/

namespace A115519.P7245219274280145430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294315 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A115519.P7245219274280145430

namespace A115519

/-- `A294315(n)+∑[n]` -/
def P7245219274280145430.Spec : Prop :=
  ∀ n, P7245219274280145430.a n = A115519 n

end A115519

/-! ## A115519.P15297394015501060566

`A067389(n)-∑[n]`
-/

namespace A115519.P15297394015501060566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067389 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A115519.P15297394015501060566

namespace A115519

/-- `A067389(n)-∑[n]` -/
def P15297394015501060566.Spec : Prop :=
  ∀ n, P15297394015501060566.a n = A115519 n

end A115519

/-! ## A115519.P6048531057687950882

`n/2*A085473(n)`
-/

namespace A115519.P6048531057687950882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A085473 n : ℚ)

end

end A115519.P6048531057687950882

namespace A115519

/-- `n/2*A085473(n)` -/
def P6048531057687950882.Spec : Prop :=
  ∀ n, P6048531057687950882.a n = (A115519 n : ℚ)

theorem P6048531057687950882.correct : P6048531057687950882.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A115519, Nat.add_sub_cancel, A115519.P6048531057687950882.a, A115519.P13720756281229786258.a, A085473, A085473.P10681717492594671342.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A115519, Nat.add_sub_cancel, A115519.P6048531057687950882.a, A115519.P13720756281229786258.a, A085473, A085473.P10681717492594671342.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A115519

/-! ## A115519.P7661775571303203398

`Δ[C(n, 2)*A000326(n)]`
-/

namespace A115519.P7661775571303203398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A000326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115519.P7661775571303203398

namespace A115519

/-- `Δ[C(n, 2)*A000326(n)]` -/
def P7661775571303203398.Spec : Prop :=
  ∀ n, P7661775571303203398.a n = A115519 n

end A115519

/-! ## A115519.P17628852792175644261

`abs(2-∑[(2-A016777(n))²+1])`
-/

namespace A115519.P17628852792175644261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A016777 n) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A115519.P17628852792175644261

namespace A115519

/-- `abs(2-∑[(2-A016777(n))²+1])` -/
def P17628852792175644261.Spec : Prop :=
  ∀ n, P17628852792175644261.a n = A115519 n

end A115519

/-! ## A115519.P11096241652571351978

`A016742(n)+A005945(n)`
-/

namespace A115519.P11096241652571351978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n + A005945 n

end

end A115519.P11096241652571351978

namespace A115519

/-- `A016742(n)+A005945(n)` -/
def P11096241652571351978.Spec : Prop :=
  ∀ n, P11096241652571351978.a n = A115519 n

end A115519

/-! ## A115519.P6924874137052168456

`A059270(n)+A033431(n)`
-/

namespace A115519.P6924874137052168456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 n + A033431 n

end

end A115519.P6924874137052168456

namespace A115519

/-- `A059270(n)+A033431(n)` -/
def P6924874137052168456.Spec : Prop :=
  ∀ n, P6924874137052168456.a n = A115519 n

end A115519

/-! ## A115519.P10711124871548185397

`A117642(n)+A005449(n)`
-/

namespace A115519.P10711124871548185397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + A005449 n

end

end A115519.P10711124871548185397

namespace A115519

/-- `A117642(n)+A005449(n)` -/
def P10711124871548185397.Spec : Prop :=
  ∀ n, P10711124871548185397.a n = A115519 n

end A115519

/-! ## A115519.P5038385364956618282

`A083127(n)+A056000(n)`
-/

namespace A115519.P5038385364956618282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083127 n + A056000 n

end

end A115519.P5038385364956618282

namespace A115519

/-- `A083127(n)+A056000(n)` -/
def P5038385364956618282.Spec : Prop :=
  ∀ n, P5038385364956618282.a n = A115519 n

end A115519

/-! ## A115519.P17775101754262951891

`A147656(n)+A007588(n)`
-/

namespace A115519.P17775101754262951891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147656 n + A007588 n

end

end A115519.P17775101754262951891

namespace A115519

/-- `A147656(n)+A007588(n)` -/
def P17775101754262951891.Spec : Prop :=
  ∀ n, P17775101754262951891.a n = A115519 n

end A115519

/-! ## A115519.P11890038855060532041

`A135713(n)+A045991(n)`
-/

namespace A115519.P11890038855060532041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135713 n + A045991 n

end

end A115519.P11890038855060532041

namespace A115519

/-- `A135713(n)+A045991(n)` -/
def P11890038855060532041.Spec : Prop :=
  ∀ n, P11890038855060532041.a n = A115519 n

end A115519

/-! ## A115519.P15590207804160796858

`A172082(n)+A028552(n)`
-/

namespace A115519.P15590207804160796858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172082 n + A028552 n

end

end A115519.P15590207804160796858

namespace A115519

/-- `A172082(n)+A028552(n)` -/
def P15590207804160796858.Spec : Prop :=
  ∀ n, P15590207804160796858.a n = A115519 n

end A115519

/-! ## A115519.P14626456572490292037

`A160378(n)+A048395(n)`
-/

namespace A115519.P14626456572490292037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 n + A048395 n

end

end A115519.P14626456572490292037

namespace A115519

/-- `A160378(n)+A048395(n)` -/
def P14626456572490292037.Spec : Prop :=
  ∀ n, P14626456572490292037.a n = A115519 n

end A115519

/-! ## A115519.P11184436033463677560

`A143166(n)+A101986(n)`
-/

namespace A115519.P11184436033463677560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143166 n + A101986 n

end

end A115519.P11184436033463677560

namespace A115519

/-- `A143166(n)+A101986(n)` -/
def P11184436033463677560.Spec : Prop :=
  ∀ n, P11184436033463677560.a n = A115519 n

end A115519

/-!
# A115520: Number of ordered triples (i,j,k) in range [0..n] satisfying i == j mod 2 and j == k mod 3.

The programs for A115520, there is no canonical definition to state claims against.
-/

/-! ## A115520.P17945268566410877321

`A334461(A052855(n))+A000292(n)`
-/

namespace A115520.P17945268566410877321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334461 (A052855 n).toNat + A000292 n

end

end A115520.P17945268566410877321

/-! ## A115520.P7963395039421983920

`A303536(A042267(n))+A000292(n)`
-/

namespace A115520.P7963395039421983920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303536 (A042267 n).toNat + A000292 n

end

end A115520.P7963395039421983920

/-!
# A115523: Number of ordered quadruples (i,j,k,l) in range [0..n] satisfying i == j (mod 2), j == k (mod 3) and k == l (mod 4).

The programs for A115523, there is no canonical definition to state claims against.
-/

/-! ## A115523.P1602218685294200353

`∑[A089856(A285447(n))]`
-/

namespace A115523.P1602218685294200353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089856 (A285447 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115523.P1602218685294200353

/-! ## A115523.P219701503760126199

`xor(n, A352830(A348449(n+1)))`
-/

namespace A115523.P219701503760126199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A352830 (A348449 (n + 1)).toNat)

end

end A115523.P219701503760126199

/-! ## A115523.P15514759508952803120

`∑[∑[A001223(A120590(n))]]-n`
-/

namespace A115523.P15514759508952803120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A120590 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A115523.P15514759508952803120

/-!
# A115524: Number triangle (1,-x)+(x,x)/2+(x,-x)/2-(x^2,x^2) (expressed using the notation of stretched Riordan arrays).

The programs for A115524, there is no canonical definition to state claims against.
-/

/-! ## A115524.P18015061928612528263

`A115633(n)%3`
-/

namespace A115524.P18015061928612528263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115633 n) 3

end

end A115524.P18015061928612528263

/-! ## A115524.P17971212684965432253

`A115633(n)/gcd(A010685(n), A115633(n))`
-/

namespace A115524.P17971212684965432253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115633 n : ℚ) / (Int.gcd (A010685 n) (A115633 n) : ℚ)

end

end A115524.P17971212684965432253

/-! ## A115524.P5720647459650919626

`A115633(n)/A064645(n)²`
-/

namespace A115524.P5720647459650919626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115633 n : ℚ) / (A064645 n ^ 2 : ℚ)

end

end A115524.P5720647459650919626

/-! ## A115524.P3655381572394080238

`A049347(A115633(n)+A016789(n))`
-/

namespace A115524.P3655381572394080238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A115633 n + A016789 n).toNat

end

end A115524.P3655381572394080238

/-! ## A115524.P15302462106207411531

`A049347(A016789(n)-2*A115633(n))`
-/

namespace A115524.P15302462106207411531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A016789 n - 2 * A115633 n).toNat

end

end A115524.P15302462106207411531

/-! ## A115524.P7916566790983850113

`A049347(A016789(n)-A115633(n)-A115633(n))`
-/

namespace A115524.P7916566790983850113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A016789 n - A115633 n - A115633 n).toNat

end

end A115524.P7916566790983850113

/-! ## A115524.P12277506008455473505

`A115633(n)/gcd(4, A115636(n))`
-/

namespace A115524.P12277506008455473505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115633 n : ℚ) / (Int.gcd 4 (A115636 n) : ℚ)

end

end A115524.P12277506008455473505

/-! ## A115524.P11285906138484184719

`A115633(n)/(2-A115715(n))²`
-/

namespace A115524.P11285906138484184719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115633 n : ℚ) / ((2 - A115715 n) ^ 2 : ℚ)

end

end A115524.P11285906138484184719

/-! ## A115524.P17863539383999723566

`A115633(n)/A115639(A115715(n))`
-/

namespace A115524.P17863539383999723566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115633 n : ℚ) / (A115639 (A115715 n).toNat : ℚ)

end

end A115524.P17863539383999723566

/-! ## A115524.P9991320075956135539

`∑{d}[Δ[A115718(n)], 2-#]`
-/

namespace A115524.P9991320075956135539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115718 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (2 - (d : ℤ))

end

end A115524.P9991320075956135539

/-! ## A115524.P236480083791139613

`A062157(abs(Δ[A115718(n)]))`
-/

namespace A115524.P236480083791139613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 |f1 (n + 1) - f1 n|.toNat

end

end A115524.P236480083791139613

/-! ## A115524.P6844681546511536681

`A088705(abs(Δ[A115718(n)]))`
-/

namespace A115524.P6844681546511536681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 |f1 (n + 1) - f1 n|.toNat

end

end A115524.P6844681546511536681

/-! ## A115524.P15383549592651297807

`A092220(abs(Δ[A115718(n)]))`
-/

namespace A115524.P15383549592651297807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 |f1 (n + 1) - f1 n|.toNat

end

end A115524.P15383549592651297807

/-! ## A115524.P13800628885278727402

`A163532(abs(Δ[A115718(n)]))`
-/

namespace A115524.P13800628885278727402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163532 |f1 (n + 1) - f1 n|.toNat

end

end A115524.P13800628885278727402

/-! ## A115524.P8945418773778674435

`A062157(Δ[A115718(n)]²)`
-/

namespace A115524.P8945418773778674435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A115524.P8945418773778674435

/-! ## A115524.P8234210210356476481

`A092220(Δ[A115718(n)]²)`
-/

namespace A115524.P8234210210356476481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A115524.P8234210210356476481

/-! ## A115524.P14821445735535087276

`1-A023416(abs(Δ[A115718(n)]))`
-/

namespace A115524.P14821445735535087276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A023416 |f1 (n + 1) - f1 n|.toNat

end

end A115524.P14821445735535087276

/-! ## A115524.P16662589330930240956

`A163532(Δ[A115718(n)²]²²)`
-/

namespace A115524.P16662589330930240956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115718 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163532 (((f1 (n + 1) - f1 n) ^ 2) ^ 2).toNat

end

end A115524.P16662589330930240956

/-!
# A115525: Periodic {1,1,-2,0,1,0,-1,0,0,1,-1,-1}.

The programs for A115525, the canonical program `A115525.P1254738320040468933` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115525 has offset 0).

The definition of A115525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115525.P1254738320040468933

`n%2-(a(n-2)+n²%3)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115525

/-- `n%2-(a(n-2)+n²%3)` -/
def P1254738320040468933.Spec : Prop :=
  ∀ n, P1254738320040468933.a n = A115525 n

theorem P1254738320040468933.correct : P1254738320040468933.Spec := by
  intro n
  simp only [A115525]

end A115525

/-!
# A115526: Inverse of number triangle A115524.

The programs for A115526, there is no canonical definition to state claims against.
-/

/-! ## A115526.P10522621606698613079

`A115636(n)%3`
-/

namespace A115526.P10522621606698613079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115636 n) 3

end

end A115526.P10522621606698613079

/-! ## A115526.P7204764213039953735

`(-(A115715(n)%3))^(n-C(∑[char[∑[n]]], 2))`
-/

namespace A115526.P7204764213039953735
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-Int.tmod (A115715 n) 3 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ)

end

end A115526.P7204764213039953735

/-! ## A115526.P4709002849062932743

`(-(A115715(n)%3))^A002262(n)`
-/

namespace A115526.P4709002849062932743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-Int.tmod (A115715 n) 3 : ℚ) ^ (A002262 n : ℤ)

end

end A115526.P4709002849062932743

/-! ## A115526.P4810070919060352512

`A049347(A115636(n)+A016789(n))`
-/

namespace A115526.P4810070919060352512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A115636 n + A016789 n).toNat

end

end A115526.P4810070919060352512

/-! ## A115526.P3058981339384085518

`A057078(A016777(n)-A115636(n))`
-/

namespace A115526.P3058981339384085518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A016777 n - A115636 n).toNat

end

end A115526.P3058981339384085518

/-! ## A115526.P4338988159214819929

`A115636(n)/A028310(A115715(n))`
-/

namespace A115526.P4338988159214819929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115636 n : ℚ) / (A028310 (A115715 n).toNat : ℚ)

end

end A115526.P4338988159214819929

/-! ## A115526.P9931176499197520897

`A057428(A115715(n))^A002262(n)`
-/

namespace A115526.P9931176499197520897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 (A115715 n).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A115526.P9931176499197520897

/-! ## A115526.P14541576251947422418

`A057428(A115715(n))^A061885(n)`
-/

namespace A115526.P14541576251947422418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 (A115715 n).toNat : ℚ) ^ (A061885 n : ℤ)

end

end A115526.P14541576251947422418

/-! ## A115526.P10789466967731927250

`A057078(A016777(n)+2*A115636(n))`
-/

namespace A115526.P10789466967731927250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A016777 n + 2 * A115636 n).toNat

end

end A115526.P10789466967731927250

/-! ## A115526.P2312163963644769704

`A049347(A016789(n)-2*A115636(n))`
-/

namespace A115526.P2312163963644769704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A016789 n - 2 * A115636 n).toNat

end

end A115526.P2312163963644769704

/-! ## A115526.P10012508414877538516

`A049347(A115636(n)+n-A049347(n))`
-/

namespace A115526.P10012508414877538516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A115636 n + ((n : ℤ) - A049347 n)).toNat

end

end A115526.P10012508414877538516

/-! ## A115526.P12213223608977064342

`A057078(A057078(n)+n-A115636(n))`
-/

namespace A115526.P12213223608977064342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A057078 n + ((n : ℤ) - A115636 n)).toNat

end

end A115526.P12213223608977064342

/-! ## A115526.P7852464941385188415

`∑{d}[A115636(n), A000010(#)/A115636(n)]`
-/

namespace A115526.P7852464941385188415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115636 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000010 d : ℚ) / (A115636 n : ℚ)

end

end A115526.P7852464941385188415

/-! ## A115526.P5879793488807358393

`A115636(n)/A137735(A115636(n)²)`
-/

namespace A115526.P5879793488807358393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115636 n : ℚ) / (A137735 (A115636 n ^ 2).toNat : ℚ)

end

end A115526.P5879793488807358393

/-! ## A115526.P8886273098699586360

`A057078(A115639(n)-A115636(n))`
-/

namespace A115526.P8886273098699586360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A115639 n - A115636 n).toNat

end

end A115526.P8886273098699586360

/-! ## A115526.P13629459221160440642

`A057078(A115639(n)+2*A115636(n))`
-/

namespace A115526.P13629459221160440642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A115639 n + 2 * A115636 n).toNat

end

end A115526.P13629459221160440642

/-! ## A115526.P3621990702778847989

`A165586(A059268(n)*A115715(n))`
-/

namespace A115526.P3621990702778847989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165586 (A059268 n * A115715 n).toNat

end

end A115526.P3621990702778847989

/-! ## A115526.P7478234895665364892

`A004718(A059268(n)*A115715(n))`
-/

namespace A115526.P7478234895665364892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A059268 n * A115715 n).toNat

end

end A115526.P7478234895665364892

/-!
# A115549: Numbers k such that the concatenation of k with 8*k gives a square.

The programs for A115549, there is no canonical definition to state claims against.
-/

/-! ## A115549.P7249378889124877933

`A360799(∑[(n+1)²+1])`
-/

namespace A115549.P7249378889124877933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360799 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115549.P7249378889124877933

/-!
# A115551: Numbers k such that the concatenation of 8*k with k gives a square.

The programs for A115551, there is no canonical definition to state claims against.
-/

/-! ## A115551.P4562405833798875843

`xor(3, lcm(10, A000265(a(n-1))))` with `a(0)=1, a(1)=4`
-/

namespace A115551.P4562405833798875843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.xor 3 (Int.lcm 10 (A000265 (a (n - 1))))

end

end A115551.P4562405833798875843

/-! ## A115551.P4683289142718165623

`A019433(a(n-1))+1` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A115551.P4683289142718165623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 9] fun n a =>
  A019433 (a (n - 1)).toNat + 1

end

end A115551.P4683289142718165623

/-! ## A115551.P15915108297737775709

`A007913(10*a(n-1)-1)` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A115551.P15915108297737775709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 9] fun n a =>
  A007913 (10 * a (n - 1) - 1).toNat

end

end A115551.P15915108297737775709

/-!
# A115557: Squares in A076361.

The programs for A115557, there is no canonical definition to state claims against.
-/

/-! ## A115557.P1495395645066472708

`A115558(n+1)²`
-/

namespace A115557.P1495395645066472708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115558 (n + 1) ^ 2

end

end A115557.P1495395645066472708

/-! ## A115557.P11636533245655881326

`A115558(2*(n+1)-(n+1))^2`
-/

namespace A115557.P11636533245655881326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115558 (2 * (n + 1) - (n + 1)) ^ 2

end

end A115557.P11636533245655881326

/-! ## A115557.P13828256526873742024

`A115558(A000027(n+1))*A115558(n+1)`
-/

namespace A115557.P13828256526873742024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115558 (A000027 (n + 1)).toNat * A115558 (n + 1)

end

end A115557.P13828256526873742024

/-! ## A115557.P1290911780678389510

`A115558(A005843(n+1)-(n+1))*A115558(n+1)`
-/

namespace A115557.P1290911780678389510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115558 (A005843 (n + 1) - (n + 1 : ℤ)).toNat * A115558 (n + 1)

end

end A115557.P1290911780678389510

/-! ## A115557.P1204754548673924932

`A115558(n+1)%A115558(n+2)*A115558(n+1)`
-/

namespace A115557.P1204754548673924932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115558 (n + 1)) (A115558 (n + 2)) * A115558 (n + 1)

end

end A115557.P1204754548673924932

/-! ## A115557.P12732051355383804261

`A115558(A001057(2*n+1))*A115558(n+1)`
-/

namespace A115557.P12732051355383804261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115558 (A001057 (2 * n + 1)).toNat * A115558 (n + 1)

end

end A115557.P12732051355383804261

/-! ## A115557.P12673834274236009404

`∩[A076361(n+1), n²]`
-/

namespace A115557.P12673834274236009404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076361 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A115557.P12673834274236009404

/-! ## A115557.P2778763067712391485

`∩[A000290(n), A076361(n+1)]`
-/

namespace A115557.P2778763067712391485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115557.P2778763067712391485

/-! ## A115557.P18180336794426483916

`∩[A063735(n+1), A076361(n+1)]`
-/

namespace A115557.P18180336794426483916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115557.P18180336794426483916

/-!
# A115558: a(n) is the square root of A115557(n).

The programs for A115558, there is no canonical definition to state claims against.
-/

/-! ## A115558.P12361401986077083343

`sqrt(A115557(n+1))`
-/

namespace A115558.P12361401986077083343
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A115557 (n + 1) : ℝ)

end

end A115558.P12361401986077083343

/-! ## A115558.P15710315317758398363

`root(A115557(n+1), A001316(A001316(n)))`
-/

namespace A115558.P15710315317758398363
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A115557 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A115558.P15710315317758398363

/-! ## A115558.P12828765096835908059

`root(A115557(n+1), 2%A249707(n+1))`
-/

namespace A115558.P12828765096835908059
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A115557 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A249707 (n + 1)) : ℝ))

end

end A115558.P12828765096835908059

/-! ## A115558.P10491216750486574907

`A115557(n+1)^2^A321804(A001222(n+1))`
-/

namespace A115558.P10491216750486574907
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A115557 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A321804 (A001222 (n + 1)).toNat : ℤ) : ℝ)

end

end A115558.P10491216750486574907

/-! ## A115558.P1712534315347265490

`A165199(A165199(root(A115557(n+1), 2)))`
-/

namespace A115558.P1712534315347265490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (A165199 (SequenceMachineLib.roundAway ((A115557 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat).toNat

end

end A115558.P1712534315347265490

/-! ## A115558.P1746111474534780749

`A115557(n+1)^2^A321804(A007318(n))`
-/

namespace A115558.P1746111474534780749
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A115557 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A321804 (A007318 n).toNat : ℤ) : ℝ)

end

end A115558.P1746111474534780749

/-!
# A115559: Nonprime terms of A115558.

The programs for A115559, there is no canonical definition to state claims against.
-/

/-! ## A115559.P10278786879964996346

`record[A048671(A115558(n+1))]`
-/

namespace A115559.P10278786879964996346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (A115558 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115559.P10278786879964996346

/-! ## A115559.P4494539555499299333

`record[A048671(sqrt(A115557(n+1)))]`
-/

namespace A115559.P4494539555499299333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (SequenceMachineLib.roundAway (Real.sqrt (A115557 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115559.P4494539555499299333

/-! ## A115559.P17704766923052684383

`record[A191558(sqrt(A115557(n+1)))]`
-/

namespace A115559.P17704766923052684383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (SequenceMachineLib.roundAway (Real.sqrt (A115557 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115559.P17704766923052684383

/-!
# A115560: Twin prime pairs k-1 and k+1 such that the squares of both are present in A115557.

The programs for A115560, there is no canonical definition to state claims against.
-/

/-! ## A115560.P13817184800122111033

`A000040(eq[A326474(n), A333325(n)])`
-/

namespace A115560.P13817184800122111033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326474 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115560.P13817184800122111033

/-!
# A115561: a(n) = lpf((n/lpf(n))/lpf(n/lpf(n))), where lpf=A020639, least prime factor.

The programs for A115561, there is no canonical definition to state claims against.
-/

/-! ## A115561.P14023101975619189765

`A020639(A054576(n+1))`
-/

namespace A115561.P14023101975619189765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A054576 (n + 1)).toNat

end

end A115561.P14023101975619189765

/-! ## A115561.P2240366611019160350

`A020639((n+1)/A020639(n+1)/A020639((n+1)/A020639(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A115561.P2240366611019160350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ) / (A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat : ℚ))).toNat

end

end A115561.P2240366611019160350

/-! ## A115561.P5144967985654602443

`A014673(A032742(n+1))`
-/

namespace A115561.P5144967985654602443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A032742 (n + 1)).toNat

end

end A115561.P5144967985654602443

/-! ## A115561.P2395337447709691138

`A014673(A063928(n+1))`
-/

namespace A115561.P2395337447709691138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A063928 (n + 1)).toNat

end

end A115561.P2395337447709691138

/-! ## A115561.P7169204266747981294

`A014673(A117818(n+1))`
-/

namespace A115561.P7169204266747981294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A117818 (n + 1)).toNat

end

end A115561.P7169204266747981294

/-! ## A115561.P7802475269701397053

`A014673(2*A054576(n+1))`
-/

namespace A115561.P7802475269701397053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * A054576 (n + 1)).toNat

end

end A115561.P7802475269701397053

/-! ## A115561.P2335259687718825693

`A020639(A117358(2*(n+1)))`
-/

namespace A115561.P2335259687718825693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A117358 (2 * (n + 1))).toNat

end

end A115561.P2335259687718825693

/-! ## A115561.P3851736243611824721

`A014673(2*A117358(2*(n+1)))`
-/

namespace A115561.P3851736243611824721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * A117358 (2 * (n + 1))).toNat

end

end A115561.P3851736243611824721

/-! ## A115561.P16509034615293894386

`A014673((n+1)/A014673(n+1))`
-/

namespace A115561.P16509034615293894386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014673 (n + 1) : ℚ))).toNat

end

end A115561.P16509034615293894386

/-! ## A115561.P5892528705377127444

`A054576((n+1)/A117358(n+1))`
-/

namespace A115561.P5892528705377127444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A117358 (n + 1) : ℚ))).toNat

end

end A115561.P5892528705377127444

/-! ## A115561.P10957386957866659014

`A117358(2*(n+1))/A117358(n+1)`
-/

namespace A115561.P10957386957866659014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117358 (2 * (n + 1)) : ℚ) / (A117358 (n + 1) : ℚ)

end

end A115561.P10957386957866659014

/-! ## A115561.P11955594240051651194

`A014673(A054576(n+1)+A054576(n+1))`
-/

namespace A115561.P11955594240051651194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A054576 (n + 1) + A054576 (n + 1)).toNat

end

end A115561.P11955594240051651194

/-! ## A115561.P320195310082073047

`A054576((n+1)/A054576(A032742(n+1)))`
-/

namespace A115561.P320195310082073047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A054576 (A032742 (n + 1)).toNat : ℚ))).toNat

end

end A115561.P320195310082073047

/-! ## A115561.P5454332300427472012

`A054576((n+1)/A054576(A063928(n+1)))`
-/

namespace A115561.P5454332300427472012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A054576 (A063928 (n + 1)).toNat : ℚ))).toNat

end

end A115561.P5454332300427472012

/-! ## A115561.P7609314861685197825

`A032742(A032742((n+1)/A117358(n+1)))`
-/

namespace A115561.P7609314861685197825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A032742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A117358 (n + 1) : ℚ))).toNat).toNat

end

end A115561.P7609314861685197825

/-! ## A115561.P4878671972593148835

`A054576(n+1)/A054576(A117818(n+1))`
-/

namespace A115561.P4878671972593148835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054576 (n + 1) : ℚ) / (A054576 (A117818 (n + 1)).toNat : ℚ)

end

end A115561.P4878671972593148835

/-! ## A115561.P2676199909944467032

`A054576(n+1)/A054576(2*A054576(n+1))`
-/

namespace A115561.P2676199909944467032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054576 (n + 1) : ℚ) / (A054576 (2 * A054576 (n + 1)).toNat : ℚ)

end

end A115561.P2676199909944467032

/-! ## A115561.P479265840814490596

`A020639(A032742(n+1)/A020639(A032742(n+1)))`
-/

namespace A115561.P479265840814490596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A032742 (n + 1) : ℚ) / (A020639 (A032742 (n + 1)).toNat : ℚ))).toNat

end

end A115561.P479265840814490596

/-! ## A115561.P16573938034508684376

`A020639(A032742(A032742(n+1))²)`
-/

namespace A115561.P16573938034508684376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A032742 (A032742 (n + 1)).toNat ^ 2).toNat

end

end A115561.P16573938034508684376

/-! ## A115561.P3999946302986565434

`A020639(A322982(A063928(n+1))²)`
-/

namespace A115561.P3999946302986565434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A322982 (A063928 (n + 1)).toNat ^ 2).toNat

end

end A115561.P3999946302986565434

/-!
# A115564: Least number d such that 10^n - /+ d form a prime pair.

The programs for A115564, there is no canonical definition to state claims against.
-/

/-! ## A115564.P3823664134980548732

`3*A117738(n+1)`
-/

namespace A115564.P3823664134980548732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A117738 (n + 1)

end

end A115564.P3823664134980548732

/-! ## A115564.P17731064822759666964

`A008486(A117738(n+1))`
-/

namespace A115564.P17731064822759666964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A117738 (n + 1)).toNat

end

end A115564.P17731064822759666964

/-! ## A115564.P11793930088870617088

`A269379(A117738(n+1)+1)`
-/

namespace A115564.P11793930088870617088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (A117738 (n + 1) + 1).toNat

end

end A115564.P11793930088870617088

/-! ## A115564.P13113024891454766023

`A296515(A117738(n+1)+2)`
-/

namespace A115564.P13113024891454766023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296515 (A117738 (n + 1) + 2).toNat

end

end A115564.P13113024891454766023

/-! ## A115564.P8775416915113619857

`A008585(or(1, A117738(n+1)))`
-/

namespace A115564.P8775416915113619857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (Int.lor 1 (A117738 (n + 1))).toNat

end

end A115564.P8775416915113619857

/-! ## A115564.P10899771582663903820

`A008585(lcm(1-and(2, n), A117738(n+1)))`
-/

namespace A115564.P10899771582663903820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (Int.lcm (1 - (Nat.land 2 n : ℤ)) (A117738 (n + 1)))

end

end A115564.P10899771582663903820

/-! ## A115564.P13226826278060502013

`A008585(A117738(n+1)%A016842(n))`
-/

namespace A115564.P13226826278060502013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (Int.tmod (A117738 (n + 1)) (A016842 n)).toNat

end

end A115564.P13226826278060502013

/-! ## A115564.P15671416971780573770

`A008458(A117738(n+1))/gcd(2, A005843(n))`
-/

namespace A115564.P15671416971780573770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 (A117738 (n + 1)).toNat : ℚ) / (Int.gcd 2 (A005843 n) : ℚ)

end

end A115564.P15671416971780573770

/-! ## A115564.P7661162413276362184

`A008458(A117738(n+1))/(3-A007318(∑[n+1]))`
-/

namespace A115564.P7661162413276362184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 (A117738 (n + 1)).toNat : ℚ) / (3 - A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A115564.P7661162413276362184

/-! ## A115564.P3352354106700903043

`A008458(A117738(n+1))/A001221(A062676(n+1))`
-/

namespace A115564.P3352354106700903043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 (A117738 (n + 1)).toNat : ℚ) / (A001221 (A062676 (n + 1)).toNat : ℚ)

end

end A115564.P3352354106700903043

/-!
# A115565: a(n) = 5*n^4 - 10*n^3 + 20*n^2 - 15*n + 11.

The programs for A115565, the canonical program `A115565.P18422294588862453476` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115565 has offset 1).

The definition of A115565 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*(n+1)^4-10*(n+1)^3+20*(n+1)²-15*(n+1)+11` (program `A115565.P18422294588862453476`, by `A115565.P18422294588862453476.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A115565.P8650782323780032524

`5*((n+1)²-(n+1))²+15*((n+1)²-(n+1))+11`
-/

namespace A115565.P8650782323780032524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ)) ^ 2 + 15 * (((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ)) + 11

end

end A115565.P8650782323780032524

namespace A115565

/-- `5*((n+1)²-(n+1))²+15*((n+1)²-(n+1))+11` -/
def P8650782323780032524.Spec : Prop :=
  ∀ n, P8650782323780032524.a n = A115565 (n + 1)

theorem P8650782323780032524.correct : P8650782323780032524.Spec := by
  intro n
  simp only [A115565, Nat.add_sub_cancel, A115565.P8650782323780032524.a, A115565.P18422294588862453476.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A115565

/-! ## A115565.P18422294588862453476

`5*(n+1)^4-10*(n+1)^3+20*(n+1)²-15*(n+1)+11`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115565

/-- `5*(n+1)^4-10*(n+1)^3+20*(n+1)²-15*(n+1)+11` -/
def P18422294588862453476.Spec : Prop :=
  ∀ n, P18422294588862453476.a n = A115565 (n + 1)

theorem P18422294588862453476.correct : P18422294588862453476.Spec := by
  intro n
  simp only [A115565, Nat.add_sub_cancel]

end A115565

/-! ## A115565.P10467421449808440773

`A062786(2*(∑[n]+1))`
-/

namespace A115565.P10467421449808440773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A115565.P10467421449808440773

namespace A115565

/-- `A062786(2*(∑[n]+1))` -/
def P10467421449808440773.Spec : Prop :=
  ∀ n, P10467421449808440773.a n = A115565 (n + 1)

end A115565

/-! ## A115565.P7900656907652868893

`record[A010054(n)*A062786(2*(n+1))]`
-/

namespace A115565.P7900656907652868893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A062786 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115565.P7900656907652868893

namespace A115565

/-- `record[A010054(n)*A062786(2*(n+1))]` -/
def P7900656907652868893.Spec : Prop :=
  ∀ n, P7900656907652868893.a n = A115565 (n + 1)

end A115565

/-! ## A115565.P4664761089383044456

`A032527(A097080(n+1))`
-/

namespace A115565.P4664761089383044456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (A097080 (n + 1)).toNat

end

end A115565.P4664761089383044456

namespace A115565

/-- `A032527(A097080(n+1))` -/
def P4664761089383044456.Spec : Prop :=
  ∀ n, P4664761089383044456.a n = A115565 (n + 1)

end A115565

/-! ## A115565.P13947904014529839200

`A032527(A061925(2*n+1)+1)`
-/

namespace A115565.P13947904014529839200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (A061925 (2 * n + 1) + 1).toNat

end

end A115565.P13947904014529839200

namespace A115565

/-- `A032527(A061925(2*n+1)+1)` -/
def P13947904014529839200.Spec : Prop :=
  ∀ n, P13947904014529839200.a n = A115565 (n + 1)

end A115565

/-!
# A115566: Numbers k such that 2^k, 2^(k+1) and 2^(k+2) have the same number of digits.

The programs for A115566, the canonical program `A115566.P8073929608010892039` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115566 has offset 1).

The definition of A115566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5693 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115566.P8073929608010892039

`∩[A066344(n+1)-1, A066344(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A115566

/-- `∩[A066344(n+1)-1, A066344(n+1)]` -/
def P8073929608010892039.Spec : Prop :=
  ∀ n, (P8073929608010892039.a n : ℤ) = A115566 (n + 1)

theorem P8073929608010892039.correct : P8073929608010892039.Spec := by
  intro n
  simp only [A115566, Nat.add_sub_cancel]

end A115566

/-! ## A115566.P13615396062597113508

`eq[A006370(A210434(n+2)), A192543(n+1)]`
-/

namespace A115566.P13615396062597113508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A210434 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115566.P13615396062597113508

namespace A115566

/-- `eq[A006370(A210434(n+2)), A192543(n+1)]` -/
def P13615396062597113508.Spec : Prop :=
  ∀ n, (P13615396062597113508.a n : ℤ) = A115566 (n + 1)

end A115566

/-! ## A115566.P7896830490313522483

`eq[A034887(n+2)+A000007(n), A034887(n)]`
-/

namespace A115566.P7896830490313522483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (n + 2) + A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115566.P7896830490313522483

namespace A115566

/-- `eq[A034887(n+2)+A000007(n), A034887(n)]` -/
def P7896830490313522483.Spec : Prop :=
  ∀ n, (P7896830490313522483.a n : ℤ) = A115566 (n + 1)

end A115566

/-! ## A115566.P6287522681497028263

`eq[A034887(n+2)/A034887(n), A057427(n)]`
-/

namespace A115566.P6287522681497028263
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034887 (n + 2) : ℚ) / (A034887 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A115566.P6287522681497028263

namespace A115566

/-- `eq[A034887(n+2)/A034887(n), A057427(n)]` -/
def P6287522681497028263.Spec : Prop :=
  ∀ n, (P6287522681497028263.a n : ℤ) = A115566 (n + 1)

end A115566

/-! ## A115566.P10179988191819838970

`eq[A034887(n+2)/A034887(n), A000038(n)!]`
-/

namespace A115566.P10179988191819838970
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034887 (n + 2) : ℚ) / (A034887 n : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A115566.P10179988191819838970

namespace A115566

/-- `eq[A034887(n+2)/A034887(n), A000038(n)!]` -/
def P10179988191819838970.Spec : Prop :=
  ∀ n, (P10179988191819838970.a n : ℤ) = A115566 (n + 1)

end A115566

/-! ## A115566.P13601806530091539578

`eq[A034887(n+2)%A008619(n+1), A034887(n)]`
-/

namespace A115566.P13601806530091539578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034887 (n + 2)) (A008619 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115566.P13601806530091539578

namespace A115566

/-- `eq[A034887(n+2)%A008619(n+1), A034887(n)]` -/
def P13601806530091539578.Spec : Prop :=
  ∀ n, (P13601806530091539578.a n : ℤ) = A115566 (n + 1)

end A115566

/-! ## A115566.P8023091142582830050

`∑[A053381(eq[1, A244227(n)]²)]`
-/

namespace A115566.P8023091142582830050
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244227 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053381 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115566.P8023091142582830050

namespace A115566

/-- `∑[A053381(eq[1, A244227(n)]²)]` -/
def P8023091142582830050.Spec : Prop :=
  ∀ n, P8023091142582830050.a n = A115566 (n + 1)

end A115566

/-! ## A115566.P15556862605797315785

`∑[A054429(Δ[A330117(n+12)])]`
-/

namespace A115566.P15556862605797315785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330117 (n + 12)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115566.P15556862605797315785

namespace A115566

/-- `∑[A054429(Δ[A330117(n+12)])]` -/
def P15556862605797315785.Spec : Prop :=
  ∀ n, P15556862605797315785.a n = A115566 (n + 1)

end A115566

/-! ## A115566.P15579639403496582682

`∑[A265282(Δ[A330117(n+12)])]`
-/

namespace A115566.P15579639403496582682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330117 (n + 12)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265282 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115566.P15579639403496582682

namespace A115566

/-- `∑[A265282(Δ[A330117(n+12)])]` -/
def P15579639403496582682.Spec : Prop :=
  ∀ n, P15579639403496582682.a n = A115566 (n + 1)

end A115566

/-! ## A115566.P14884296468368074861

`∑[A330117(Δ[A330117(n+12)])]`
-/

namespace A115566.P14884296468368074861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330117 (n + 12)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330117 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115566.P14884296468368074861

namespace A115566

/-- `∑[A330117(Δ[A330117(n+12)])]` -/
def P14884296468368074861.Spec : Prop :=
  ∀ n, P14884296468368074861.a n = A115566 (n + 1)

end A115566

/-!
# A115567: a(n) = C(n,6) + C(n,5) + C(n,4) + C(n,3) + C(n,2) + C(n,1).

The programs for A115567, the canonical program `A115567.P1554515345994280395` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115567 has offset 0).

The definition of A115567 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, 6)+C(n, 5)+C(n, 4)+C(n, 3)+C(n, 2)+C(n, 1)` (program `A115567.P1554515345994280395`, by `A115567.P1554515345994280395.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A115567.P1554515345994280395

`C(n, 6)+C(n, 5)+C(n, 4)+C(n, 3)+C(n, 2)+C(n, 1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115567

/-- `C(n, 6)+C(n, 5)+C(n, 4)+C(n, 3)+C(n, 2)+C(n, 1)` -/
def P1554515345994280395.Spec : Prop :=
  ∀ n, (P1554515345994280395.a n : ℤ) = A115567 n

theorem P1554515345994280395.correct : P1554515345994280395.Spec := by
  intro n
  simp only [A115567]

end A115567

/-! ## A115567.P10382905086768987957

`n*(n+1)*(n^4-10*n^3+65*n²-140*n+444)/720`
-/

namespace A115567.P10382905086768987957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((n ^ 4 : ℤ) - (10 * n ^ 3 : ℤ) + (65 * n ^ 2 : ℤ) - (140 * n : ℤ) + 444) : ℚ) / 720

end

end A115567.P10382905086768987957

namespace A115567

/-- `n*(n+1)*(n^4-10*n^3+65*n²-140*n+444)/720` -/
def P10382905086768987957.Spec : Prop :=
  ∀ n, P10382905086768987957.a n = (A115567 n : ℚ)

theorem P10382905086768987957.correct : P10382905086768987957.Spec := by
  intro n
  simp only [A115567, Nat.add_sub_cancel, A115567.P10382905086768987957.a, A115567.P1554515345994280395.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A115567

/-! ## A115567.P11023452699986458031

`A000579(n)+A057703(n)`
-/

namespace A115567.P11023452699986458031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 n + A057703 n

end

end A115567.P11023452699986458031

namespace A115567

/-- `A000579(n)+A057703(n)` -/
def P11023452699986458031.Spec : Prop :=
  ∀ n, P11023452699986458031.a n = A115567 n

end A115567

/-! ## A115567.P18041898678181324360

`A008859(n)-1`
-/

namespace A115567.P18041898678181324360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n - 1

end

end A115567.P18041898678181324360

namespace A115567

/-- `A008859(n)-1` -/
def P18041898678181324360.Spec : Prop :=
  ∀ n, P18041898678181324360.a n = A115567 n

end A115567

/-! ## A115567.P11616643827539032401

`Δ[A008860(n)]-1`
-/

namespace A115567.P11616643827539032401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A115567.P11616643827539032401

namespace A115567

/-- `Δ[A008860(n)]-1` -/
def P11616643827539032401.Spec : Prop :=
  ∀ n, P11616643827539032401.a n = A115567 n

end A115567

/-! ## A115567.P1522272909942204299

`A362194(n)-1+n`
-/

namespace A115567.P1522272909942204299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362194 n - 1 + (n : ℤ)

end

end A115567.P1522272909942204299

namespace A115567

/-- `A362194(n)-1+n` -/
def P1522272909942204299.Spec : Prop :=
  ∀ n, P1522272909942204299.a n = A115567 n

end A115567

/-! ## A115567.P14059577651366076354

`A362194(n)+A023443(n)`
-/

namespace A115567.P14059577651366076354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362194 n + A023443 n

end

end A115567.P14059577651366076354

namespace A115567

/-- `A362194(n)+A023443(n)` -/
def P14059577651366076354.Spec : Prop :=
  ∀ n, P14059577651366076354.a n = A115567 n

end A115567

/-! ## A115567.P13493046062297933863

`A362194(n)-A024000(n)`
-/

namespace A115567.P13493046062297933863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362194 n - A024000 n

end

end A115567.P13493046062297933863

namespace A115567

/-- `A362194(n)-A024000(n)` -/
def P13493046062297933863.Spec : Prop :=
  ∀ n, P13493046062297933863.a n = A115567 n

end A115567

/-! ## A115567.P7594296764493622152

`∑[A006261(n)]-A006261(n)`
-/

namespace A115567.P7594296764493622152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006261 n

end

end A115567.P7594296764493622152

namespace A115567

/-- `∑[A006261(n)]-A006261(n)` -/
def P7594296764493622152.Spec : Prop :=
  ∀ n, P7594296764493622152.a n = A115567 n

end A115567

/-! ## A115567.P18224141069266070828

`∑[A008859(n)]%A008860(n)`
-/

namespace A115567.P18224141069266070828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A008860 n)

end

end A115567.P18224141069266070828

namespace A115567

/-- `∑[A008859(n)]%A008860(n)` -/
def P18224141069266070828.Spec : Prop :=
  ∀ n, P18224141069266070828.a n = A115567 n

end A115567

/-! ## A115567.P17095921947623411892

`A000579(n)+A006261(n)-1`
-/

namespace A115567.P17095921947623411892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 n + (A006261 n - 1)

end

end A115567.P17095921947623411892

namespace A115567

/-- `A000579(n)+A006261(n)-1` -/
def P17095921947623411892.Spec : Prop :=
  ∀ n, P17095921947623411892.a n = A115567 n

end A115567

/-! ## A115567.P14234637998728538152

`A188557(n+1)-(A188556(n+1)+1)`
-/

namespace A115567.P14234637998728538152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188557 (n + 1) - (A188556 (n + 1) + 1)

end

end A115567.P14234637998728538152

namespace A115567

/-- `A188557(n+1)-(A188556(n+1)+1)` -/
def P14234637998728538152.Spec : Prop :=
  ∀ n, P14234637998728538152.a n = A115567 n

end A115567

/-! ## A115567.P7208674270476908188

`Δ[A362195(n)]`
-/

namespace A115567.P7208674270476908188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115567.P7208674270476908188

namespace A115567

/-- `Δ[A362195(n)]` -/
def P7208674270476908188.Spec : Prop :=
  ∀ n, P7208674270476908188.a n = A115567 n

end A115567

/-! ## A115567.P11406453245779712071

`Δ[A116082(n)]-1`
-/

namespace A115567.P11406453245779712071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116082 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A115567.P11406453245779712071

namespace A115567

/-- `Δ[A116082(n)]-1` -/
def P11406453245779712071.Spec : Prop :=
  ∀ n, P11406453245779712071.a n = A115567 n

theorem P11406453245779712071.correct : P11406453245779712071.Spec := by
  intro n
  simp only [A115567, Nat.add_sub_cancel, A115567.P11406453245779712071.f1, A115567.P11406453245779712071.a, A115567.P1554515345994280395.a, A116082, A116082.P2212801188075974984.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A115567

/-! ## A115567.P8150931344938104280

`Δ[Δ[A008861(n)]]-1`
-/

namespace A115567.P8150931344938104280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008861 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A115567.P8150931344938104280

namespace A115567

/-- `Δ[Δ[A008861(n)]]-1` -/
def P8150931344938104280.Spec : Prop :=
  ∀ n, P8150931344938104280.a n = A115567 n

end A115567

/-! ## A115567.P8420198227773213935

`A362195(n+1)-A362195(n)`
-/

namespace A115567.P8420198227773213935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362195 (n + 1) - A362195 n

end

end A115567.P8420198227773213935

namespace A115567

/-- `A362195(n+1)-A362195(n)` -/
def P8420198227773213935.Spec : Prop :=
  ∀ n, P8420198227773213935.a n = A115567 n

end A115567

/-! ## A115567.P17713981634146740273

`A055795(n+1)+A000579(n+1)`
-/

namespace A115567.P17713981634146740273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055795 (n + 1) + A000579 (n + 1)

end

end A115567.P17713981634146740273

namespace A115567

/-- `A055795(n+1)+A000579(n+1)` -/
def P17713981634146740273.Spec : Prop :=
  ∀ n, P17713981634146740273.a n = A115567 n

theorem P17713981634146740273.correct : P17713981634146740273.Spec := by
  intro n
  simp only [A115567, Nat.add_sub_cancel, A115567.P17713981634146740273.a, A115567.P1554515345994280395.a, A000579, A000579.P13663713855180125612.a, A055795, A055795.P17285801603062217731.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A115567

/-! ## A115567.P13934560251452132239

`A000579(n+1)+A006522(n+1)+n`
-/

namespace A115567.P13934560251452132239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 1) + (A006522 (n + 1) + (n : ℤ))

end

end A115567.P13934560251452132239

namespace A115567

/-- `A000579(n+1)+A006522(n+1)+n` -/
def P13934560251452132239.Spec : Prop :=
  ∀ n, P13934560251452132239.a n = A115567 n

end A115567

/-! ## A115567.P2226660326723744145

`Δ[A188558(n+1)]-(A188556(n+1)+1)`
-/

namespace A115567.P2226660326723744145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A188556 (n + 1) + 1)

end

end A115567.P2226660326723744145

namespace A115567

/-- `Δ[A188558(n+1)]-(A188556(n+1)+1)` -/
def P2226660326723744145.Spec : Prop :=
  ∀ n, P2226660326723744145.a n = A115567 n

end A115567

/-! ## A115567.P2210555486568276218

`Δ[A188558(n+1)-A188557(n+1)]-1`
-/

namespace A115567.P2210555486568276218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188558 (n + 1) - A188557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A115567.P2210555486568276218

namespace A115567

/-- `Δ[A188558(n+1)-A188557(n+1)]-1` -/
def P2210555486568276218.Spec : Prop :=
  ∀ n, P2210555486568276218.a n = A115567 n

end A115567

/-!
# A115568: Maximum Fibonacci exponent in prime factorization of n, or 1 if there is no Fibonacci exponent.

The programs for A115568, the canonical program `A115568.P5208286302951981102` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115568 has offset 1).

The definition of A115568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115568.P11539197340190137530

`A214950(A027642(A066301(n+1)²))`
-/

namespace A115568.P11539197340190137530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214950 (A027642 (A066301 (n + 1) ^ 2).toNat).toNat

end

end A115568.P11539197340190137530

namespace A115568

/-- `A214950(A027642(A066301(n+1)²))` -/
def P11539197340190137530.Spec : Prop :=
  ∀ n, P11539197340190137530.a n = A115568 (n + 1)

end A115568

/-! ## A115568.P10871539471398704098

`A051903(A216442(A051903(n+1)!))`
-/

namespace A115568.P10871539471398704098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A216442 (Nat.factorial (A051903 (n + 1)).toNat)).toNat

end

end A115568.P10871539471398704098

namespace A115568

/-- `A051903(A216442(A051903(n+1)!))` -/
def P10871539471398704098.Spec : Prop :=
  ∀ n, P10871539471398704098.a n = A115568 (n + 1)

end A115568

/-! ## A115568.P8110795209643955245

`A006530(∏{e}[n+1, #^A113953(A008576(#))])`
-/

namespace A115568.P8110795209643955245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) ^ (A113953 (A008576 (Nat.factorization (f1 n) p)).toNat : ℤ))).toNat

end

end A115568.P8110795209643955245

namespace A115568

/-- `A006530(∏{e}[n+1, #^A113953(A008576(#))])` -/
def P8110795209643955245.Spec : Prop :=
  ∀ n, P8110795209643955245.a n = A115568 (n + 1)

end A115568

/-! ## A115568.P865015304235611470

`A006530(∏{e}[n+1, #^A055998(A168561(#))])`
-/

namespace A115568.P865015304235611470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) ^ (A055998 (A168561 (Nat.factorization (f1 n) p)).toNat : ℤ))).toNat

end

end A115568.P865015304235611470

namespace A115568

/-- `A006530(∏{e}[n+1, #^A055998(A168561(#))])` -/
def P865015304235611470.Spec : Prop :=
  ∀ n, P865015304235611470.a n = A115568 (n + 1)

end A115568

/-! ## A115568.P5208286302951981102

`A072211(A051903(n+1)+A051903(n+1)!)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A115568

/-- `A072211(A051903(n+1)+A051903(n+1)!)` -/
def P5208286302951981102.Spec : Prop :=
  ∀ n, P5208286302951981102.a n = A115568 (n + 1)

theorem P5208286302951981102.correct : P5208286302951981102.Spec := by
  intro n
  simp only [A115568, Nat.add_sub_cancel]

end A115568

/-! ## A115568.P11536823147151707670

`A295665(A006530(A293524(n+1)))`
-/

namespace A115568.P11536823147151707670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295665 (A006530 (A293524 (n + 1)).toNat).toNat

end

end A115568.P11536823147151707670

namespace A115568

/-- `A295665(A006530(A293524(n+1)))` -/
def P11536823147151707670.Spec : Prop :=
  ∀ n, P11536823147151707670.a n = A115568 (n + 1)

end A115568

/-! ## A115568.P15871531278315446689

`gcd(A034836(n+1), A110157(A336736(n+1)))`
-/

namespace A115568.P15871531278315446689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034836 (n + 1)) (A110157 (A336736 (n + 1)).toNat)

end

end A115568.P15871531278315446689

namespace A115568

/-- `gcd(A034836(n+1), A110157(A336736(n+1)))` -/
def P15871531278315446689.Spec : Prop :=
  ∀ n, (P15871531278315446689.a n : ℤ) = A115568 (n + 1)

end A115568

/-! ## A115568.P17398591802917718012

`A057945(A046643(n+1)²)`
-/

namespace A115568.P17398591802917718012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 (A046643 (n + 1) ^ 2).toNat

end

end A115568.P17398591802917718012

namespace A115568

/-- `A057945(A046643(n+1)²)` -/
def P17398591802917718012.Spec : Prop :=
  ∀ n, P17398591802917718012.a n = A115568 (n + 1)

end A115568

/-! ## A115568.P5317998234296280999

`A007913(A051903((n+1)*A075432(n+1)))`
-/

namespace A115568.P5317998234296280999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A051903 ((n + 1 : ℤ) * A075432 (n + 1)).toNat).toNat

end

end A115568.P5317998234296280999

namespace A115568

/-- `A007913(A051903((n+1)*A075432(n+1)))` -/
def P5317998234296280999.Spec : Prop :=
  ∀ n, P5317998234296280999.a n = A115568 (n + 1)

end A115568

/-!
# A115569: Lynch-Bell numbers: numbers n such that the digits are all different (and do not include 0) and n is divisible by each of its individual digits.

The programs for A115569, there is no canonical definition to state claims against.
-/

/-! ## A115569.P15506528617043968496

`∩[A010784(n+1), A034838(n+1)]`
-/

namespace A115569.P15506528617043968496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115569.P15506528617043968496

/-! ## A115569.P15502671482782801045

`record[A137564(A034838(n+1))]`
-/

namespace A115569.P15502671482782801045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A034838 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115569.P15502671482782801045

/-! ## A115569.P11750538827197507126

`filter[A034838(n+1), A178788(#)]`
-/

namespace A115569.P11750538827197507126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A115569.P11750538827197507126

/-! ## A115569.P11515947700130906582

`record[A351868(A034838(n+1))]%A241490(n+1)`
-/

namespace A115569.P11515947700130906582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351868 (A034838 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A241490 (n + 1))

end

end A115569.P11515947700130906582

/-! ## A115569.P12197480079941246484

`record[A071785(A343681(n+1))%A144427(n+1)]`
-/

namespace A115569.P12197480079941246484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071785 (A343681 (n + 1)).toNat) (A144427 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115569.P12197480079941246484

/-!
# A115570: Array read by rows: row n (n>= 1) gives the Betti numbers for the n-th element of the Weyl group of type A3 (in Goresky's standard ordering).

The programs for A115570, there is no canonical definition to state claims against.
-/

/-! ## A115570.P12968338157851210922

`or(A115577(n+1), A374247(A358347(2*(n+2))))`
-/

namespace A115570.P12968338157851210922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A115577 (n + 1)) (A374247 (A358347 (2 * (n + 2))).toNat)

end

end A115570.P12968338157851210922

/-! ## A115570.P6688662682542650145

`A115577(abs(A123271(n+2))+n)`
-/

namespace A115570.P6688662682542650145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115577 (|A123271 (n + 2)| + (n : ℤ)).toNat

end

end A115570.P6688662682542650145

/-! ## A115570.P12894684446561336513

`A115577(A123271(n+2)²+n)`
-/

namespace A115570.P12894684446561336513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115577 (A123271 (n + 2) ^ 2 + (n : ℤ)).toNat

end

end A115570.P12894684446561336513

/-! ## A115570.P4592736735261449545

`A115577(n+1)%A138125(n+1)`
-/

namespace A115570.P4592736735261449545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115577 (n + 1)) (A138125 (n + 1))

end

end A115570.P4592736735261449545

/-! ## A115570.P601607369518687427

`lcm(A115577(n+1), A123271(n+2))`
-/

namespace A115570.P601607369518687427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A115577 (n + 1)) (A123271 (n + 2))

end

end A115570.P601607369518687427

/-!
# A115571: Array read by rows: row n (n>= 1) gives the Betti numbers for the n-th element of the affine Weyl group of type A2_tilde (in Goresky's standard ordering).

The programs for A115571, there is no canonical definition to state claims against.
-/

/-! ## A115571.P7936683322373615772

`A115578(A265334(n+1))`
-/

namespace A115571.P7936683322373615772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115578 (A265334 (n + 1)).toNat

end

end A115571.P7936683322373615772

/-! ## A115571.P6223494097788414422

`A115578(A288659(n+1)+1)`
-/

namespace A115571.P6223494097788414422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115578 (A288659 (n + 1) + 1).toNat

end

end A115571.P6223494097788414422

/-! ## A115571.P9449449862272424513

`A115578(A288659(n+2))`
-/

namespace A115571.P9449449862272424513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115578 (A288659 (n + 2)).toNat

end

end A115571.P9449449862272424513

/-! ## A115571.P796062377894689113

`A115572(lt[A349815(n), A115570(2*n+3)])`
-/

namespace A115571.P796062377894689113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115570 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115572 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115571.P796062377894689113

/-! ## A115571.P9582905617833823809

`A115576(lt[A349815(n), A115570(2*n+3)])`
-/

namespace A115571.P9582905617833823809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115570 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115576 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115571.P9582905617833823809

/-!
# A115572: Array read by rows: row n (>= 1) gives the Betti numbers for the n-th element of the Weyl group of type A4 (in Goresky's standard ordering).

The programs for A115572, there is no canonical definition to state claims against.
-/

/-! ## A115572.P4067581276123488810

`lcm(A115576(n+1), A156734(n+1))`
-/

namespace A115572.P4067581276123488810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A115576 (n + 1)) (A156734 (n + 1))

end

end A115572.P4067581276123488810

/-! ## A115572.P18088146695513728423

`A156734(n+1)²*A115581(n+1)`
-/

namespace A115572.P18088146695513728423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156734 (n + 1) ^ 2 * A115581 (n + 1)

end

end A115572.P18088146695513728423

/-! ## A115572.P16115284843062762205

`gcd(Δ[A305671(n+1)], A115576(n+1))`
-/

namespace A115572.P16115284843062762205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305671 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A115576 (n + 1))

end

end A115572.P16115284843062762205

/-! ## A115572.P4788535460358420064

`A115581(n+1)+A000007(A034971(n+1))`
-/

namespace A115572.P4788535460358420064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115581 (n + 1) + A000007 (A034971 (n + 1)).toNat

end

end A115572.P4788535460358420064

/-! ## A115572.P2794464019195016238

`A115576(n+1)+A000007(A140633(n+1))`
-/

namespace A115572.P2794464019195016238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115576 (n + 1) + A000007 (A140633 (n + 1)).toNat

end

end A115572.P2794464019195016238

/-! ## A115572.P13810933324394177905

`A115581(n+1)+A011765(A140633(n+1))`
-/

namespace A115572.P13810933324394177905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115581 (n + 1) + A011765 (A140633 (n + 1)).toNat

end

end A115572.P13810933324394177905

/-! ## A115572.P6753188615027220371

`A115576(n+1)+A000007(A347878(n+1))`
-/

namespace A115572.P6753188615027220371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115576 (n + 1) + A000007 (A347878 (n + 1)).toNat

end

end A115572.P6753188615027220371

/-! ## A115572.P17262772187783110796

`A192541(A182982(n+1))+A115576(n+1)`
-/

namespace A115572.P17262772187783110796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192541 (A182982 (n + 1)).toNat + A115576 (n + 1)

end

end A115572.P17262772187783110796

/-! ## A115572.P13547928094824834946

`A054977(A308985(n+1))*A115581(n+1)`
-/

namespace A115572.P13547928094824834946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A308985 (n + 1)).toNat * A115581 (n + 1)

end

end A115572.P13547928094824834946

/-! ## A115572.P6585312241186965295

`A115581(n+1)+A000007(A115067(n+5))`
-/

namespace A115572.P6585312241186965295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115581 (n + 1) + A000007 (A115067 (n + 5)).toNat

end

end A115572.P6585312241186965295

/-!
# A115573: Array read by rows: row n (>= 1) gives the Betti numbers for the n-th element of the Weyl group of type A_5 (in Goresky's standard ordering).

The programs for A115573, there is no canonical definition to state claims against.
-/

/-! ## A115573.P16867132068673871956

`gcd(A115579(n+4), A301682(A048142(n+1)))`
-/

namespace A115573.P16867132068673871956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115579 (n + 4)) (A301682 (A048142 (n + 1)).toNat)

end

end A115573.P16867132068673871956

/-! ## A115573.P16787095365743291173

`gcd(A000122(A332579(n)), A115579(n+4))`
-/

namespace A115573.P16787095365743291173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000122 (A332579 n).toNat) (A115579 (n + 4))

end

end A115573.P16787095365743291173

/-! ## A115573.P15913506727678905370

`ceil(acot(ratio[A102149(n)]))`
-/

namespace A115573.P15913506727678905370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)⌉

end

end A115573.P15913506727678905370

/-! ## A115573.P6709227889926208001

`A100063(n%A339645(n+1))`
-/

namespace A115573.P6709227889926208001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 (Int.tmod (n : ℤ) (A339645 (n + 1))).toNat

end

end A115573.P6709227889926208001

/-! ## A115573.P14166588509656632299

`floor(root(A105732(n+1), A105730(n)))`
-/

namespace A115573.P14166588509656632299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A105732 (n + 1) : ℝ) ^ (1 / (A105730 n : ℝ))⌋

end

end A115573.P14166588509656632299

/-! ## A115573.P8046443112990527717

`floor(root(A016116(n), A087706(n+6)))`
-/

namespace A115573.P8046443112990527717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A016116 n : ℝ) ^ (1 / (A087706 (n + 6) : ℝ))⌋

end

end A115573.P8046443112990527717

/-! ## A115573.P8624120129289903661

`floor(root(A032020(n), A087706(n+6)))`
-/

namespace A115573.P8624120129289903661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A032020 n : ℝ) ^ (1 / (A087706 (n + 6) : ℝ))⌋

end

end A115573.P8624120129289903661

/-! ## A115573.P8249464746843221633

`A000032((n²%3)^A237978(n+1))`
-/

namespace A115573.P8249464746843221633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway (((n ^ 2 % 3 : ℕ) : ℚ) ^ (A237978 (n + 1) : ℤ))).toNat

end

end A115573.P8249464746843221633

/-! ## A115573.P6523874481871219037

`A347516(2*n+3)%(A256895(n)+2)`
-/

namespace A115573.P6523874481871219037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347516 (2 * n + 3)) (A256895 n + 2)

end

end A115573.P6523874481871219037

/-! ## A115573.P16681947193495433488

`A040001(ceil(abs(1-8*n)/3)^A031286(n))`
-/

namespace A115573.P16681947193495433488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (SequenceMachineLib.roundAway ((⌈(|1 - (8 * n : ℤ)| : ℚ) / 3⌉ : ℚ) ^ (A031286 n : ℤ))).toNat

end

end A115573.P16681947193495433488

/-!
# A115576: Array read by rows: row n (>= 1) gives the Betti numbers for the n-th element of the Weyl group of type D4 (in Goresky's standard ordering).

The programs for A115576, there is no canonical definition to state claims against.
-/

/-! ## A115576.P9242116561119730138

`or(A014590(n)², A115581(n+1))`
-/

namespace A115576.P9242116561119730138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014590 n ^ 2) (A115581 (n + 1))

end

end A115576.P9242116561119730138

/-! ## A115576.P15721377691995361598

`or(A010052(A029837(3*(n+1))), A115581(n+1))`
-/

namespace A115576.P15721377691995361598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010052 (A029837 (3 * (n + 1))).toNat) (A115581 (n + 1))

end

end A115576.P15721377691995361598

/-! ## A115576.P1733372312553646632

`or(A115581(n+1), A391679(A070939(3*n+1)))`
-/

namespace A115576.P1733372312553646632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A115581 (n + 1)) (A391679 (A070939 (3 * n + 1)).toNat)

end

end A115576.P1733372312553646632

/-! ## A115576.P16869034125896267904

`or(A115581(n+1), A358345(A000523(3*n+2)))`
-/

namespace A115576.P16869034125896267904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A115581 (n + 1)) (A358345 (A000523 (3 * n + 2)).toNat)

end

end A115576.P16869034125896267904

/-! ## A115576.P18337567012872602502

`or(val(A115570(n+1), 5), A115581(n+1))`
-/

namespace A115576.P18337567012872602502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.valuation (A115570 (n + 1)).toNat 5 : ℤ) (A115581 (n + 1))

end

end A115576.P18337567012872602502

/-! ## A115576.P2906729226168447993

`or(A115572(n+1)%A115570(n+1), A115581(n+1))`
-/

namespace A115576.P2906729226168447993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A115572 (n + 1)) (A115570 (n + 1))) (A115581 (n + 1))

end

end A115576.P2906729226168447993

/-! ## A115576.P18057232160395692948

`or(A115575(n+1)%A115570(n+1), A115581(n+1))`
-/

namespace A115576.P18057232160395692948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A115575 (n + 1)) (A115570 (n + 1))) (A115581 (n + 1))

end

end A115576.P18057232160395692948

/-! ## A115576.P6435203445703835713

`C(A115581(n+1), A303837(A278222(n)))`
-/

namespace A115576.P6435203445703835713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A115581 (n + 1)).toNat (A303837 (A278222 n).toNat).toNat

end

end A115576.P6435203445703835713

/-! ## A115576.P14523623316453418343

`A115581(n+1)+A036987(A115606(n+1))`
-/

namespace A115576.P14523623316453418343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115581 (n + 1) + A036987 (A115606 (n + 1)).toNat

end

end A115576.P14523623316453418343

/-! ## A115576.P6692631196576320205

`A115581(n+1)+A000007(A295635(n+2))`
-/

namespace A115576.P6692631196576320205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115581 (n + 1) + A000007 (A295635 (n + 2)).toNat

end

end A115576.P6692631196576320205

/-!
# A115578: Array read by rows: row n (>= 1) gives the Betti numbers for the n-th element of the affine Weyl group of type A3_tilde (in Goresky's standard ordering).

The programs for A115578, there is no canonical definition to state claims against.
-/

/-! ## A115578.P5652350597585529644

`A115573(n+3)+A031286(A220517(2*n+1))`
-/

namespace A115578.P5652350597585529644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115573 (n + 3) + A031286 (A220517 (2 * n + 1)).toNat

end

end A115578.P5652350597585529644

/-! ## A115578.P10073340854446768138

`A000010(A055642(n)^val(A378568(2*n+1)+1, 2))`
-/

namespace A115578.P10073340854446768138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A055642 n ^ SequenceMachineLib.valuation (A378568 (2 * n + 1) + 1).toNat 2).toNat

end

end A115578.P10073340854446768138

/-! ## A115578.P14336899884025898430

`(A316945(2*(n+2))%3)!`
-/

namespace A115578.P14336899884025898430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A316945 (2 * (n + 2))) 3).toNat

end

end A115578.P14336899884025898430

/-! ## A115578.P12427479895888467209

`A231177(n+1)%C(2, n%3)+1`
-/

namespace A115578.P12427479895888467209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231177 (n + 1)) (Nat.choose 2 (n % 3) : ℤ) + 1

end

end A115578.P12427479895888467209

/-! ## A115578.P172407503867915755

`A368330(A375476(n+1))`
-/

namespace A115578.P172407503867915755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368330 (A375476 (n + 1)).toNat

end

end A115578.P172407503867915755

/-!
# A115579: Array read by rows: row n (>= 1) gives the Betti numbers for the n-th element of the affine Weyl group of type A4_tilde (in Goresky's standard ordering).

The programs for A115579, there is no canonical definition to state claims against.
-/

/-! ## A115579.P1344691883101700954

`A131534(∑[∑[A066503(2*n+3)]])`
-/

namespace A115579.P1344691883101700954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066503 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A115579.P1344691883101700954

/-! ## A115579.P2476869627209304348

`floor(A301682(n+3)/A348551(n+4))`
-/

namespace A115579.P2476869627209304348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A301682 (n + 3) : ℚ) / (A348551 (n + 4) : ℚ)⌋

end

end A115579.P2476869627209304348

/-! ## A115579.P15151300136049512132

`gcd(A009947(A049450(n)), A055642(n))`
-/

namespace A115579.P15151300136049512132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009947 (A049450 n).toNat) (A055642 n)

end

end A115579.P15151300136049512132

/-! ## A115579.P16435250627479928985

`A055642(A079978(n)*A261017(n+1))`
-/

namespace A115579.P16435250627479928985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A079978 n * A261017 (n + 1)).toNat

end

end A115579.P16435250627479928985

/-! ## A115579.P6264019519983967164

`gcd(A000079(A048142(n+1)), A100063(n))`
-/

namespace A115579.P6264019519983967164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 (A048142 (n + 1)).toNat) (A100063 n)

end

end A115579.P6264019519983967164

/-!
# A115580: Array read by rows: row n (>= 1) gives the Betti numbers for the n-th element of the affine Weyl group of type B2_tilde (in Goresky's standard ordering).

The programs for A115580, there is no canonical definition to state claims against.
-/

/-! ## A115580.P9987844963988464242

`A297770(A115570(n+1)^A013943(n+1))`
-/

namespace A115580.P9987844963988464242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (SequenceMachineLib.roundAway ((A115570 (n + 1) : ℚ) ^ (A013943 (n + 1) : ℤ))).toNat

end

end A115580.P9987844963988464242

/-! ## A115580.P4568775851205132567

`A174641(3*n+4)%A115583(n+1)+1`
-/

namespace A115580.P4568775851205132567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174641 (3 * n + 4)) (A115583 (n + 1)) + 1

end

end A115580.P4568775851205132567

/-! ## A115580.P6851423496553308484

`gcd(A000203(A087909(n+1)), A115571(n+4))`
-/

namespace A115580.P6851423496553308484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (A087909 (n + 1)).toNat) (A115571 (n + 4))

end

end A115580.P6851423496553308484

/-! ## A115580.P1238200549636409297

`A115570(n+1)-A248805(A008279(n))`
-/

namespace A115580.P1238200549636409297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115570 (n + 1) - A248805 (A008279 n).toNat

end

end A115580.P1238200549636409297

/-! ## A115580.P1080114284984955250

`A115583(n+1)-A248805(A008279(n))`
-/

namespace A115580.P1080114284984955250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115583 (n + 1) - A248805 (A008279 n).toNat

end

end A115580.P1080114284984955250

/-!
# A115582: Array read by rows: row n (>= 1) gives the Betti numbers for the n-th element of the affine Weyl group of type C3_tilde (in Goresky's standard ordering).

The programs for A115582, there is no canonical definition to state claims against.
-/

/-! ## A115582.P15240216681569166285

`gcd(A115578(n+4), A143758(A338137(n+2)))`
-/

namespace A115582.P15240216681569166285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115578 (n + 4)) (A143758 (A338137 (n + 2)).toNat)

end

end A115582.P15240216681569166285

/-! ## A115582.P9707680015327315373

`or(A359676(n+1)%2, A115572(n+1))`
-/

namespace A115582.P9707680015327315373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A359676 (n + 1)) 2) (A115572 (n + 1))

end

end A115582.P9707680015327315373

/-! ## A115582.P12256763358094562319

`A115575(n+1)^A344756(2*n+3)²`
-/

namespace A115582.P12256763358094562319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115575 (n + 1) : ℚ) ^ (A344756 (2 * n + 3) ^ 2 : ℤ)

end

end A115582.P12256763358094562319

/-! ## A115582.P11277513317783774967

`A115576(n+1)^A344756(2*n+3)²`
-/

namespace A115582.P11277513317783774967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115576 (n + 1) : ℚ) ^ (A344756 (2 * n + 3) ^ 2 : ℤ)

end

end A115582.P11277513317783774967

/-! ## A115582.P12118557987553718152

`A115576(n+1)+A000007(A000328(n))`
-/

namespace A115582.P12118557987553718152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115576 (n + 1) + A000007 (A000328 n).toNat

end

end A115582.P12118557987553718152

/-! ## A115582.P7098555260493943140

`A115575(n+1)+A000038(A000328(n))`
-/

namespace A115582.P7098555260493943140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115575 (n + 1) + A000038 (A000328 n).toNat

end

end A115582.P7098555260493943140

/-! ## A115582.P2568138547305657273

`A115581(n+1)+A000038(A000328(n))`
-/

namespace A115582.P2568138547305657273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115581 (n + 1) + A000038 (A000328 n).toNat

end

end A115582.P2568138547305657273

/-! ## A115582.P16505220153623927343

`A115575(n+1)+A000038(A116641(n))`
-/

namespace A115582.P16505220153623927343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115575 (n + 1) + A000038 (A116641 n).toNat

end

end A115582.P16505220153623927343

/-! ## A115582.P8624601587796475468

`A115576(n+1)+A000038(A116641(n))`
-/

namespace A115582.P8624601587796475468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115576 (n + 1) + A000038 (A116641 n).toNat

end

end A115582.P8624601587796475468

/-! ## A115582.P2022004615437558508

`A115581(n+1)+A000038(A116641(n))`
-/

namespace A115582.P2022004615437558508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115581 (n + 1) + A000038 (A116641 n).toNat

end

end A115582.P2022004615437558508

/-!
# A115583: Array read by rows: row n (>= 1) gives the Betti numbers for the n-th element of the affine Weyl group of type G2_tilde (in Goresky's standard ordering).

The programs for A115583, there is no canonical definition to state claims against.
-/

/-! ## A115583.P6230919236345732423

`gcd(A335465(n)!, A115574(n+1))`
-/

namespace A115583.P6230919236345732423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A335465 n).toNat : ℤ) (A115574 (n + 1))

end

end A115583.P6230919236345732423

/-! ## A115583.P17388939288810344934

`A115574(n+1)+A000035(A001105(n))`
-/

namespace A115583.P17388939288810344934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115574 (n + 1) + A000035 (A001105 n).toNat

end

end A115583.P17388939288810344934

/-! ## A115583.P15921791438753317876

`A115574(n+1)+A000007(A001844(n))`
-/

namespace A115583.P15921791438753317876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115574 (n + 1) + A000007 (A001844 n).toNat

end

end A115583.P15921791438753317876

/-! ## A115583.P10945738995148137037

`A115574(n+1)+A000007(A005893(n))`
-/

namespace A115583.P10945738995148137037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115574 (n + 1) + A000007 (A005893 n).toNat

end

end A115583.P10945738995148137037

/-! ## A115583.P10102822440693183637

`A115574(n+1)+A000035(A046092(n))`
-/

namespace A115583.P10102822440693183637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115574 (n + 1) + A000035 (A046092 n).toNat

end

end A115583.P10102822440693183637

/-! ## A115583.P14275556839385999995

`A115574(n+1)+A000007(A058331(n))`
-/

namespace A115583.P14275556839385999995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115574 (n + 1) + A000007 (A058331 n).toNat

end

end A115583.P14275556839385999995

/-! ## A115583.P17875584551614753680

`A115574(n+1)+A000007(A084849(n))`
-/

namespace A115583.P17875584551614753680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115574 (n + 1) + A000007 (A084849 n).toNat

end

end A115583.P17875584551614753680

/-! ## A115583.P156613743617555355

`A115574(n+1)+A000007(A255844(n))`
-/

namespace A115583.P156613743617555355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115574 (n + 1) + A000007 (A255844 n).toNat

end

end A115583.P156613743617555355

/-! ## A115583.P109128380634735359

`A115574(n+1)+A000007(A322528(n))`
-/

namespace A115583.P109128380634735359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115574 (n + 1) + A000007 (A322528 n).toNat

end

end A115583.P109128380634735359

/-! ## A115583.P15538660515321903683

`A002828(A016754(n))*A115574(n+1)`
-/

namespace A115583.P15538660515321903683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A016754 n).toNat * A115574 (n + 1)

end

end A115583.P15538660515321903683

/-!
# A115584: Number of partitions of n in which each part k occurs more than k times.

The programs for A115584, there is no canonical definition to state claims against.
-/

/-! ## A115584.P11452673114758006973

`A325678(A325132(n)²)`
-/

namespace A115584.P11452673114758006973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A325132 n ^ 2).toNat

end

end A115584.P11452673114758006973

/-! ## A115584.P10545574130145525404

`A257091(3^A325132(n))`
-/

namespace A115584.P10545574130145525404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257091 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A325132 n : ℤ))).toNat

end

end A115584.P10545574130145525404

/-! ## A115584.P9918592614992687111

`A325132(n)+A103675(A198518(n))`
-/

namespace A115584.P9918592614992687111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325132 n + A103675 (A198518 n).toNat

end

end A115584.P9918592614992687111

/-! ## A115584.P8507271452319297287

`A340998(A008766(n))+A325132(n)`
-/

namespace A115584.P8507271452319297287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A008766 n).toNat + 140) + A325132 n

end

end A115584.P8507271452319297287

/-! ## A115584.P8713611112612634124

`∑{d}[n+3, A051493(#)]-A030658(A202378(n+1))`
-/

namespace A115584.P8713611112612634124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051493 d - A030658 (A202378 (n + 1)).toNat

end

end A115584.P8713611112612634124

/-!
# A115585: Semiprimes with a semiprime sum of factors.

The programs for A115585, the canonical program `A115585.P17184382420706630801` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115585 has offset 1).

The definition of A115585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115585.P5702286614874976450

`filter[A045835(n+1), A064911(#)]`
-/

namespace A115585.P5702286614874976450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A115585.P5702286614874976450

namespace A115585

/-- `filter[A045835(n+1), A064911(#)]` -/
def P5702286614874976450.Spec : Prop :=
  ∀ n, P5702286614874976450.a n = A115585 (n + 1)

end A115585

/-! ## A115585.P1222105604369764248

`filter[A045835(n+1), A101040(#)]`
-/

namespace A115585.P1222105604369764248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A115585.P1222105604369764248

namespace A115585

/-- `filter[A045835(n+1), A101040(#)]` -/
def P1222105604369764248.Spec : Prop :=
  ∀ n, P1222105604369764248.a n = A115585 (n + 1)

end A115585

/-! ## A115585.P11597320733312542328

`filter[A085711(n+1), A064911(#)]`
-/

namespace A115585.P11597320733312542328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A115585.P11597320733312542328

namespace A115585

/-- `filter[A085711(n+1), A064911(#)]` -/
def P11597320733312542328.Spec : Prop :=
  ∀ n, P11597320733312542328.a n = A115585 (n + 1)

end A115585

/-! ## A115585.P8129549117086146705

`filter[A085711(n+1), A101040(#)]`
-/

namespace A115585.P8129549117086146705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A115585.P8129549117086146705

namespace A115585

/-- `filter[A085711(n+1), A101040(#)]` -/
def P8129549117086146705.Spec : Prop :=
  ∀ n, P8129549117086146705.a n = A115585 (n + 1)

end A115585

/-! ## A115585.P16877348082559228910

`filter[A045835(n+2), A353799(#)]`
-/

namespace A115585.P16877348082559228910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045835 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A115585.P16877348082559228910

namespace A115585

/-- `filter[A045835(n+2), A353799(#)]` -/
def P16877348082559228910.Spec : Prop :=
  ∀ n, P16877348082559228910.a n = A115585 (n + 1)

end A115585

/-! ## A115585.P17133956015590932733

`∩[A001358(n+1), A045835(n+1)]`
-/

namespace A115585.P17133956015590932733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115585.P17133956015590932733

namespace A115585

/-- `∩[A001358(n+1), A045835(n+1)]` -/
def P17133956015590932733.Spec : Prop :=
  ∀ n, (P17133956015590932733.a n : ℤ) = A115585 (n + 1)

end A115585

/-! ## A115585.P17184382420706630801

`∩[A001358(n+1), A085711(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A115585

/-- `∩[A001358(n+1), A085711(n+1)]` -/
def P17184382420706630801.Spec : Prop :=
  ∀ n, (P17184382420706630801.a n : ℤ) = A115585 (n + 1)

theorem P17184382420706630801.correct : P17184382420706630801.Spec := by
  intro n
  simp only [A115585, Nat.add_sub_cancel]

end A115585

/-! ## A115585.P4015893728455207104

`∩[A037143(n+1), A085711(n+1)]`
-/

namespace A115585.P4015893728455207104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115585.P4015893728455207104

namespace A115585

/-- `∩[A037143(n+1), A085711(n+1)]` -/
def P4015893728455207104.Spec : Prop :=
  ∀ n, (P4015893728455207104.a n : ℤ) = A115585 (n + 1)

end A115585

/-! ## A115585.P12034286966863046932

`∩[A045835(n+1), A085711(n+1)]`
-/

namespace A115585.P12034286966863046932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115585.P12034286966863046932

namespace A115585

/-- `∩[A045835(n+1), A085711(n+1)]` -/
def P12034286966863046932.Spec : Prop :=
  ∀ n, (P12034286966863046932.a n : ℤ) = A115585 (n + 1)

end A115585

/-! ## A115585.P10268816980026146693

`∩[A085711(n+1), A176540(n+1)]`
-/

namespace A115585.P10268816980026146693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115585.P10268816980026146693

namespace A115585

/-- `∩[A085711(n+1), A176540(n+1)]` -/
def P10268816980026146693.Spec : Prop :=
  ∀ n, (P10268816980026146693.a n : ℤ) = A115585 (n + 1)

end A115585

/-! ## A115585.P14564916522331661969

`∩[A045835(n+1), A323644(n+1)]`
-/

namespace A115585.P14564916522331661969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115585.P14564916522331661969

namespace A115585

/-- `∩[A045835(n+1), A323644(n+1)]` -/
def P14564916522331661969.Spec : Prop :=
  ∀ n, (P14564916522331661969.a n : ℤ) = A115585 (n + 1)

end A115585

/-! ## A115585.P13484563555824170724

`∩[A045835(n+1), A346041(n+1)]`
-/

namespace A115585.P13484563555824170724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115585.P13484563555824170724

namespace A115585

/-- `∩[A045835(n+1), A346041(n+1)]` -/
def P13484563555824170724.Spec : Prop :=
  ∀ n, (P13484563555824170724.a n : ℤ) = A115585 (n + 1)

end A115585

/-! ## A115585.P2927955051318264582

`∪[A001248(n+1), A108633(n+1)]`
-/

namespace A115585.P2927955051318264582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A115585.P2927955051318264582

namespace A115585

/-- `∪[A001248(n+1), A108633(n+1)]` -/
def P2927955051318264582.Spec : Prop :=
  ∀ n, (P2927955051318264582.a n : ℤ) = A115585 (n + 1)

end A115585

/-! ## A115585.P18115024232461630833

`record[A066048(A085711(n+1))]`
-/

namespace A115585.P18115024232461630833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A085711 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115585.P18115024232461630833

namespace A115585

/-- `record[A066048(A085711(n+1))]` -/
def P18115024232461630833.Spec : Prop :=
  ∀ n, P18115024232461630833.a n = A115585 (n + 1)

end A115585

/-! ## A115585.P13997196375432319932

`record[A179312(A085711(n+2))]`
-/

namespace A115585.P13997196375432319932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A085711 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115585.P13997196375432319932

namespace A115585

/-- `record[A179312(A085711(n+2))]` -/
def P13997196375432319932.Spec : Prop :=
  ∀ n, P13997196375432319932.a n = A115585 (n + 1)

end A115585

/-! ## A115585.P1683681275405716807

`eq[A105700(A107463(n)), A226378(n)]`
-/

namespace A115585.P1683681275405716807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A107463 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115585.P1683681275405716807

namespace A115585

/-- `eq[A105700(A107463(n)), A226378(n)]` -/
def P1683681275405716807.Spec : Prop :=
  ∀ n, (P1683681275405716807.a n : ℤ) = A115585 (n + 1)

end A115585

/-! ## A115585.P3088076751876427176

`lt[2, A105700(n)*A105700(A107463(n))]`
-/

namespace A115585.P3088076751876427176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n * A105700 (A107463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A115585.P3088076751876427176

namespace A115585

/-- `lt[2, A105700(n)*A105700(A107463(n))]` -/
def P3088076751876427176.Spec : Prop :=
  ∀ n, (P3088076751876427176.a n : ℤ) = A115585 (n + 1)

end A115585

/-! ## A115585.P6839613820971568619

`filter[A281686(n+1), A064911(#)]`
-/

namespace A115585.P6839613820971568619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A115585.P6839613820971568619

namespace A115585

/-- `filter[A281686(n+1), A064911(#)]` -/
def P6839613820971568619.Spec : Prop :=
  ∀ n, P6839613820971568619.a n = A115585 (n + 1)

end A115585

/-! ## A115585.P3917089929021651168

`filter[A281686(n+1), A101040(#)]`
-/

namespace A115585.P3917089929021651168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A115585.P3917089929021651168

namespace A115585

/-- `filter[A281686(n+1), A101040(#)]` -/
def P3917089929021651168.Spec : Prop :=
  ∀ n, P3917089929021651168.a n = A115585 (n + 1)

end A115585

/-!
# A115586: Prime moduli p for which 2 is neither a quadratic residue nor a primitive root.

The programs for A115586, there is no canonical definition to state claims against.
-/

/-! ## A115586.P1397842859540587917

`∩[A003629(n+1), A216838(n+1)]`
-/

namespace A115586.P1397842859540587917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115586.P1397842859540587917

/-! ## A115586.P7208577306168738296

`∩[A042999(n+1), A216838(n+1)]`
-/

namespace A115586.P7208577306168738296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115586.P7208577306168738296

/-! ## A115586.P10704971608801610826

`∩[A216838(n+1), A270699(n+1)]`
-/

namespace A115586.P10704971608801610826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115586.P10704971608801610826

/-! ## A115586.P6630889683451756242

`∩[A216838(n+1), A319041(n+1)]`
-/

namespace A115586.P6630889683451756242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115586.P6630889683451756242

/-! ## A115586.P13222480977460931647

`∩[A216838(n+1), A269819(n+1)]`
-/

namespace A115586.P13222480977460931647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115586.P13222480977460931647

/-! ## A115586.P11488730142817476630

`∩[A216838(n+1), A227146(n+1)]`
-/

namespace A115586.P11488730142817476630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115586.P11488730142817476630

/-! ## A115586.P16385302985870543324

`∩[A003629(n+1), A082595(n+1)]`
-/

namespace A115586.P16385302985870543324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115586.P16385302985870543324

/-! ## A115586.P6873408892831913990

`∩[A042999(n+1), A082595(n+1)]`
-/

namespace A115586.P6873408892831913990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115586.P6873408892831913990

/-! ## A115586.P1910469236271376255

`∩[A082595(n+1), A227146(n+1)]`
-/

namespace A115586.P1910469236271376255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115586.P1910469236271376255

/-! ## A115586.P4853175448664860991

`∩[A082595(n+1), A269819(n+1)]`
-/

namespace A115586.P4853175448664860991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115586.P4853175448664860991

/-! ## A115586.P575345321548236019

`∩[A082595(n+1), A270699(n+1)]`
-/

namespace A115586.P575345321548236019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115586.P575345321548236019

/-! ## A115586.P3870941535691526767

`∩[A082595(n+1), A319041(n+1)]`
-/

namespace A115586.P3870941535691526767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115586.P3870941535691526767

/-! ## A115586.P17424851121639261966

`∩[A180636(n+1), A216838(n+1)]`
-/

namespace A115586.P17424851121639261966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115586.P17424851121639261966

/-! ## A115586.P16097708124618397146

`∩[A047621(n+1), A082595(n+1)]`
-/

namespace A115586.P16097708124618397146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115586.P16097708124618397146

/-! ## A115586.P16676513925931115585

`∩[A047621(n+1), A216838(n+1)]`
-/

namespace A115586.P16676513925931115585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115586.P16676513925931115585

/-! ## A115586.P5696837003007862383

`∩[A082595(n+1), A260398(n+1)]`
-/

namespace A115586.P5696837003007862383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115586.P5696837003007862383

/-! ## A115586.P14339191503481007975

`∩[A216838(n+1), A260398(n+1)]`
-/

namespace A115586.P14339191503481007975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115586.P14339191503481007975

/-! ## A115586.P18170205988864853039

`∩[A003629(n+1), A333855(n+1)]`
-/

namespace A115586.P18170205988864853039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115586.P18170205988864853039

/-!
# A115587: a(n) = denominator of b(n), where b(1) = 1, b(n+1) = Sum_{k=1..n} b(k)^((-1)^(n-k)).

The programs for A115587, there is no canonical definition to state claims against.
-/

/-! ## A115587.P4761124088303470252

`A056155(A056155(n+1)^A241337(n))`
-/

namespace A115587.P4761124088303470252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056155 (SequenceMachineLib.roundAway ((A056155 (n + 1) : ℚ) ^ (A241337 n : ℤ))).toNat

end

end A115587.P4761124088303470252

/-! ## A115587.P13697759628665717169

`A025444(A020885(n+1)+A000737(n))+1`
-/

namespace A115587.P13697759628665717169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 (A020885 (n + 1) + A000737 n).toNat + 1

end

end A115587.P13697759628665717169

/-!
# A115588: Number of distinct prime numbers necessary to represent a natural number n > 1.

The programs for A115588, there is no canonical definition to state claims against.
-/

/-! ## A115588.P4427348033786137704

`∑{e}[A336965(n+2), #]`
-/

namespace A115588.P4427348033786137704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336965 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A115588.P4427348033786137704

/-! ## A115588.P10557312365645711532

`A001221(A336965(n+2))`
-/

namespace A115588.P10557312365645711532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A336965 (n + 2)).toNat

end

end A115588.P10557312365645711532

/-! ## A115588.P16760103772532056442

`A001222(A336965(A288924(A288923(n+2))))`
-/

namespace A115588.P16760103772532056442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A336965 (A288924 (A288923 (n + 2)).toNat).toNat).toNat

end

end A115588.P16760103772532056442

/-! ## A115588.P6880761028779196059

`A001221((n+2)*A287620(n+2))`
-/

namespace A115588.P6880761028779196059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n + 2 : ℤ) * A287620 (n + 2)).toNat

end

end A115588.P6880761028779196059

/-! ## A115588.P3582543042539435113

`A001222(A000005(A336965(n+2)²))`
-/

namespace A115588.P3582543042539435113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000005 (A336965 (n + 2) ^ 2).toNat).toNat

end

end A115588.P3582543042539435113

/-! ## A115588.P15340478190532440166

`A001221((n+2)*A360970(n+2))`
-/

namespace A115588.P15340478190532440166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n + 2 : ℤ) * A360970 (n + 2)).toNat

end

end A115588.P15340478190532440166

/-! ## A115588.P17988210082550873800

`A001221((n+2)*A008477(n+2))`
-/

namespace A115588.P17988210082550873800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n + 2 : ℤ) * A008477 (n + 2)).toNat

end

end A115588.P17988210082550873800

/-! ## A115588.P1368464791621259745

`A001221((n+2)*A361132(n+2))`
-/

namespace A115588.P1368464791621259745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n + 2 : ℤ) * A361132 (n + 2)).toNat

end

end A115588.P1368464791621259745

/-! ## A115588.P11603171886390827021

`A064372((n+2)*A287620(n+2))`
-/

namespace A115588.P11603171886390827021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064372 ((n + 2 : ℤ) * A287620 (n + 2)).toNat

end

end A115588.P11603171886390827021

/-!
# A115590: a(0) = 0; a(n) = (1+a(n-1))^3 for n > 0.

The programs for A115590, the canonical program `A115590.P17738392302112376128` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115590 has offset 0).

The definition of A115590 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+a(n-1))^3` (program `A115590.P17738392302112376128`, by `A115590.P17738392302112376128.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A115590.P17738392302112376128

`(1+a(n-1))^3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115590

/-- `(1+a(n-1))^3` -/
def P17738392302112376128.Spec : Prop :=
  ∀ n, (P17738392302112376128.a n : ℤ) = A115590 n

theorem P17738392302112376128.correct : P17738392302112376128.Spec := by
  intro n
  simp only [A115590]

end A115590

/-! ## A115590.P5360582250893531068

`root(a(n-1)+1, 1/3)` with `a(0)=0`
-/

namespace A115590.P5360582250893531068
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) ^ (1 / ((1 : ℚ) / 3 : ℝ))

end

end A115590.P5360582250893531068

namespace A115590

/-- `root(a(n-1)+1, 1/3)` -/
def P5360582250893531068.Spec : Prop :=
  ∀ n, P5360582250893531068.a n = (A115590 n : ℝ)

end A115590

/-! ## A115590.P747145619854523858

`(or(2, a(n-1))-1)^3` with `a(0)=0`
-/

namespace A115590.P747145619854523858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Int.lor 2 (a (n - 1)) - 1) ^ 3

end

end A115590.P747145619854523858

namespace A115590

/-- `(or(2, a(n-1))-1)^3` -/
def P747145619854523858.Spec : Prop :=
  ∀ n, P747145619854523858.a n = A115590 n

end A115590

/-!
# A115591: Primes p such that the multiplicative order of 2 modulo p is (p-1)/2.

The programs for A115591, there is no canonical definition to state claims against.
-/

/-! ## A115591.P2986884333487571651

`2*A364086(n+1)+1`
-/

namespace A115591.P2986884333487571651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A364086 (n + 1) + 1

end

end A115591.P2986884333487571651

/-! ## A115591.P13140176531915502234

`A000040(eq[2, A001917(n+2)]+2)`
-/

namespace A115591.P13140176531915502234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001917 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A115591.P13140176531915502234

/-! ## A115591.P1989252811863158848

`∪[A139035(n+1), A155072(n+1)]`
-/

namespace A115591.P1989252811863158848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A115591.P1989252811863158848

/-! ## A115591.P5623775379726827660

`2*eq[n+1, A002326(n+1)]+3`
-/

namespace A115591.P5623775379726827660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A115591.P5623775379726827660

/-! ## A115591.P15343206328289072424

`A033465(A364086(n+1))`
-/

namespace A115591.P15343206328289072424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033465 (A364086 (n + 1)).toNat

end

end A115591.P15343206328289072424

/-! ## A115591.P16439196199340864878

`A005408(eq[n, A002326(n)])`
-/

namespace A115591.P16439196199340864878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115591.P16439196199340864878

/-! ## A115591.P8192917662262745944

`A137576(eq[n, A002326(n)])`
-/

namespace A115591.P8192917662262745944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115591.P8192917662262745944

/-! ## A115591.P7861936134209962895

`A140607(eq[n, A002326(n)])`
-/

namespace A115591.P7861936134209962895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115591.P7861936134209962895

/-! ## A115591.P11365134845218766079

`A144396(eq[n, A002326(n)])`
-/

namespace A115591.P11365134845218766079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115591.P11365134845218766079

/-! ## A115591.P7484938307711189657

`p?[A005408(eq[2, A006694(n)])]`
-/

namespace A115591.P7484938307711189657
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115591.P7484938307711189657

/-! ## A115591.P2624798544186226628

`p?[A005408(eq[2, A037226(n)])]`
-/

namespace A115591.P2624798544186226628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037226 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115591.P2624798544186226628

/-! ## A115591.P5674883700764769196

`p?[A144396(eq[2, A006694(n)])]`
-/

namespace A115591.P5674883700764769196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115591.P5674883700764769196

/-! ## A115591.P13081580942518126291

`p?[A144396(eq[2, A037226(n)])]`
-/

namespace A115591.P13081580942518126291
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037226 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115591.P13081580942518126291

/-! ## A115591.P866775483645694995

`A047481(eq[n, A002326(n)])+2`
-/

namespace A115591.P866775483645694995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 2

end

end A115591.P866775483645694995

/-! ## A115591.P2493237769505560034

`A000265(2*eq[n, A002326(n)]+1)`
-/

namespace A115591.P2493237769505560034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A115591.P2493237769505560034

/-! ## A115591.P1929045144533105795

`eq[n, 2*A007733(n+1)]+1`
-/

namespace A115591.P1929045144533105795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007733 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A115591.P1929045144533105795

/-! ## A115591.P3864025872591480678

`eq[n, A005408(A024222(n+1))]`
-/

namespace A115591.P3864025872591480678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A024222 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115591.P3864025872591480678

/-! ## A115591.P14354661581869202927

`eq[A024222(n+1), A057979(n)]`
-/

namespace A115591.P14354661581869202927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115591.P14354661581869202927

/-! ## A115591.P1625992056867568466

`eq[A024222(n+1), A174239(n)]`
-/

namespace A115591.P1625992056867568466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174239 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115591.P1625992056867568466

/-! ## A115591.P17628058112921837846

`A005408(eq[n, A007733(2*n+1)])`
-/

namespace A115591.P17628058112921837846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115591.P17628058112921837846

/-!
# A115593: Number of forests of rooted trees with total weight n, where a node at height k has weight 2^k (with root considered to be at height 0).

The programs for A115593, there is no canonical definition to state claims against.
-/

/-! ## A115593.P6530527387872680313

`A062298(A002024(Δ[A022318(n)]))`
-/

namespace A115593.P6530527387872680313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A002024 (f1 (n + 1) - f1 n).toNat).toNat

end

end A115593.P6530527387872680313

/-! ## A115593.P15061025008331298849

`A135660(A080000(n)+A020701(n))`
-/

namespace A115593.P15061025008331298849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A080000 n + A020701 n).toNat

end

end A115593.P15061025008331298849

/-! ## A115593.P2982018879597404832

`A135660(A105420(n)+A000126(n+1))`
-/

namespace A115593.P2982018879597404832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A105420 n + A000126 (n + 1)).toNat

end

end A115593.P2982018879597404832

/-! ## A115593.P9746256613715191478

`A135660(xor(A000196(n), A274162(n+4)))`
-/

namespace A115593.P9746256613715191478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (Int.xor (A000196 n) (A274162 (n + 4))).toNat

end

end A115593.P9746256613715191478

/-! ## A115593.P4714725014105319249

`A135660(xor(A004524(n), A274162(n+4)))`
-/

namespace A115593.P4714725014105319249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (Int.xor (A004524 n) (A274162 (n + 4))).toNat

end

end A115593.P4714725014105319249

/-!
# A115594: Triangle read by rows: number of isomorphism classes of series-parallel matroids of rank d on n elements.

The programs for A115594, there is no canonical definition to state claims against.
-/

/-! ## A115594.P13951425528671429724

`A086623(n)%23`
-/

namespace A115594.P13951425528671429724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086623 n) 23

end

end A115594.P13951425528671429724

/-! ## A115594.P769080138702950849

`floor(root(A178048(n), 5))`
-/

namespace A115594.P769080138702950849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A178048 n : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A115594.P769080138702950849

/-! ## A115594.P6882345870755351500

`floor(root(A086629(n), ϕ))`
-/

namespace A115594.P6882345870755351500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086629 n : ℝ) ^ (1 / Real.goldenRatio)⌋

end

end A115594.P6882345870755351500

/-! ## A115594.P12994284028807341444

`ceil(sqrt(A272644(n+2)/6))`
-/

namespace A115594.P12994284028807341444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A272644 (n + 2) : ℚ) / 6 : ℝ)⌉

end

end A115594.P12994284028807341444

/-! ## A115594.P10821752314161066957

`A086623(∑[floor(n^(1/5))])`
-/

namespace A115594.P10821752314161066957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086623 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A115594.P10821752314161066957

/-!
# A115596: The least number k > 1 such that (p+1)^k - p^k is prime, p = n-th prime.

The programs for A115596, there is no canonical definition to state claims against.
-/

/-! ## A115596.P6779336070676975550

`A058013(p?[xor(1, n)])`
-/

namespace A115596.P6779336070676975550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058013 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A115596.P6779336070676975550

/-! ## A115596.P3016842680649528949

`A058013(Δ[A007504(n)])`
-/

namespace A115596.P3016842680649528949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058013 (f1 (n + 1) - f1 n).toNat

end

end A115596.P3016842680649528949

/-! ## A115596.P1841522939617452730

`A058013(A000040(n+1))`
-/

namespace A115596.P1841522939617452730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058013 (A000040 (n + 1)).toNat

end

end A115596.P1841522939617452730

/-! ## A115596.P1714454416828078957

`A058013(A006005(n+1))`
-/

namespace A115596.P1714454416828078957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058013 (A006005 (n + 1)).toNat

end

end A115596.P1714454416828078957

/-! ## A115596.P16214934627501546114

`A058013(A049551(n+1))`
-/

namespace A115596.P16214934627501546114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058013 (A049551 (n + 1)).toNat

end

end A115596.P16214934627501546114

/-!
# A115597: Triangle read by rows: let a(n,k) = number of graphs on n nodes with chromatic number k; T(n,k) = a(n,n-k), n >= 2, k=0..n-2.

The programs for A115597, there is no canonical definition to state claims against.
-/

/-! ## A115597.P6348886892662317958

`A084268(A099375(n)+2+n)`
-/

namespace A115597.P6348886892662317958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084268 (A099375 n + 2 + (n : ℤ)).toNat

end

end A115597.P6348886892662317958

/-! ## A115597.P3670671695845782644

`A084268(A212012(n+1)+n+1)`
-/

namespace A115597.P3670671695845782644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084268 (A212012 (n + 1) + (n + 1 : ℤ)).toNat

end

end A115597.P3670671695845782644

/-! ## A115597.P10332794966341747774

`A084268(A185782(n+1)+n+3)`
-/

namespace A115597.P10332794966341747774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084268 (A185782 (n + 1) + (n + 3 : ℤ)).toNat

end

end A115597.P10332794966341747774

/-! ## A115597.P3768973600974851990

`A084268(2*A004736(n+1)+n+1)`
-/

namespace A115597.P3768973600974851990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084268 (2 * A004736 (n + 1) + (n : ℤ) + 1).toNat

end

end A115597.P3768973600974851990

/-! ## A115597.P2153769409658125439

`A084268(A038722(A014132(n+1)))`
-/

namespace A115597.P2153769409658125439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084268 (A038722 (A014132 (n + 1)).toNat).toNat

end

end A115597.P2153769409658125439

/-!
# A115598: Consider all Pythagorean triples (X,X+1,Z) ordered by increasing Z; sequence gives Z-(X+1) values.

The programs for A115598, the canonical program `A115598.P348833358698767717` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115598 has offset 1).

The definition of A115598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115598.P348833358698767717

`7*a(n-1)-7*a(n-2)+a(n-3)` with `a(0)=1, a(1)=8, a(2)=49`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115598

/-- `7*a(n-1)-7*a(n-2)+a(n-3)` -/
def P348833358698767717.Spec : Prop :=
  ∀ n, P348833358698767717.a n = A115598 (n + 1)

theorem P348833358698767717.correct : P348833358698767717.Spec := by
  intro n
  simp only [A115598, Nat.add_sub_cancel]

end A115598

/-! ## A115598.P12743442709107920905

`∑[ogf((1+x)/(1-6x+x^2))]`
-/

namespace A115598.P12743442709107920905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115598.P12743442709107920905

namespace A115598

/-- `∑[ogf((1+x)/(1-6x+x^2))]` -/
def P12743442709107920905.Spec : Prop :=
  ∀ n, P12743442709107920905.a n = A115598 (n + 1)

end A115598

/-! ## A115598.P3075828546580347584

`ogf((1+x)/(1-7x+7x^2-x^3))`
-/

namespace A115598.P3075828546580347584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -7, 7, -1] n

end

end A115598.P3075828546580347584

namespace A115598

/-- `ogf((1+x)/(1-7x+7x^2-x^3))` -/
def P3075828546580347584.Spec : Prop :=
  ∀ n, P3075828546580347584.a n = A115598 (n + 1)

end A115598

/-! ## A115598.P16452123245847798933

`∑[ceil(∑[((sqrt(2)+1)^n)²])]`
-/

namespace A115598.P16452123245847798933
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (2 : ℝ) + 1) ^ n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115598.P16452123245847798933

namespace A115598

/-- `∑[ceil(∑[((sqrt(2)+1)^n)²])]` -/
def P16452123245847798933.Spec : Prop :=
  ∀ n, P16452123245847798933.a n = A115598 (n + 1)

end A115598

/-! ## A115598.P3294261532952563114

`floor(a(n-1)/(3-sqrt(8)))+3` with `a(0)=1`
-/

namespace A115598.P3294261532952563114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋ + 3

end

end A115598.P3294261532952563114

namespace A115598

/-- `floor(a(n-1)/(3-sqrt(8)))+3` -/
def P3294261532952563114.Spec : Prop :=
  ∀ n, P3294261532952563114.a n = A115598 (n + 1)

end A115598

/-! ## A115598.P9632203300454507734

`round(a(n-1)/(3-sqrt(8)))+2` with `a(0)=1`
-/

namespace A115598.P9632203300454507734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))) + 2

end

end A115598.P9632203300454507734

namespace A115598

/-- `round(a(n-1)/(3-sqrt(8)))+2` -/
def P9632203300454507734.Spec : Prop :=
  ∀ n, P9632203300454507734.a n = A115598 (n + 1)

end A115598

/-! ## A115598.P17268429064065172655

`6*a(n-1)+2-a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A115598.P17268429064065172655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  6 * a (n - 1) + (2 - a (n - 2))

end

end A115598.P17268429064065172655

namespace A115598

/-- `6*a(n-1)+2-a(n-2)` -/
def P17268429064065172655.Spec : Prop :=
  ∀ n, P17268429064065172655.a n = A115598 (n + 1)

end A115598

/-! ## A115598.P3578697195469446874

`2-(a(n-2)-6*a(n-1))` with `a(0)=1, a(1)=8`
-/

namespace A115598.P3578697195469446874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  2 - (a (n - 2) - 6 * a (n - 1))

end

end A115598.P3578697195469446874

namespace A115598

/-- `2-(a(n-2)-6*a(n-1))` -/
def P3578697195469446874.Spec : Prop :=
  ∀ n, P3578697195469446874.a n = A115598 (n + 1)

end A115598

/-! ## A115598.P2997853872315704013

`A001108(n+1)`
-/

namespace A115598.P2997853872315704013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 (n + 1)

end

end A115598.P2997853872315704013

namespace A115598

/-- `A001108(n+1)` -/
def P2997853872315704013.Spec : Prop :=
  ∀ n, P2997853872315704013.a n = A115598 (n + 1)

end A115598

/-! ## A115598.P5136184353531180632

`A048739(2*n)`
-/

namespace A115598.P5136184353531180632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 (2 * n)

end

end A115598.P5136184353531180632

namespace A115598

/-- `A048739(2*n)` -/
def P5136184353531180632.Spec : Prop :=
  ∀ n, P5136184353531180632.a n = A115598 (n + 1)

end A115598

/-! ## A115598.P13487463816156890818

`A181658(4*n)`
-/

namespace A115598.P13487463816156890818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181658 (4 * n)

end

end A115598.P13487463816156890818

namespace A115598

/-- `A181658(4*n)` -/
def P13487463816156890818.Spec : Prop :=
  ∀ n, P13487463816156890818.a n = A115598 (n + 1)

end A115598

/-! ## A115598.P11747642158059300994

`abs(A077921(Δ[n²]))`
-/

namespace A115598.P11747642158059300994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077921 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A115598.P11747642158059300994

namespace A115598

/-- `abs(A077921(Δ[n²]))` -/
def P11747642158059300994.Spec : Prop :=
  ∀ n, P11747642158059300994.a n = A115598 (n + 1)

end A115598

/-! ## A115598.P1652755436586594761

`A115599(n+1)-1`
-/

namespace A115598.P1652755436586594761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115599 (n + 1) - 1

end

end A115598.P1652755436586594761

namespace A115598

/-- `A115599(n+1)-1` -/
def P1652755436586594761.Spec : Prop :=
  ∀ n, P1652755436586594761.a n = A115598 (n + 1)

end A115598

/-! ## A115598.P9167337478201067170

`A055997(n+2)-1`
-/

namespace A115598.P9167337478201067170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055997 (n + 2) - 1

end

end A115598.P9167337478201067170

namespace A115598

/-- `A055997(n+2)-1` -/
def P9167337478201067170.Spec : Prop :=
  ∀ n, P9167337478201067170.a n = A115598 (n + 1)

end A115598

/-! ## A115598.P198494421506630789

`A097076(2*(n+1))`
-/

namespace A115598.P198494421506630789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097076 (2 * (n + 1))

end

end A115598.P198494421506630789

namespace A115598

/-- `A097076(2*(n+1))` -/
def P198494421506630789.Spec : Prop :=
  ∀ n, P198494421506630789.a n = A115598 (n + 1)

end A115598

/-! ## A115598.P8267745187928754735

`A082639(n+2)/2`
-/

namespace A115598.P8267745187928754735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082639 (n + 2) : ℚ) / 2

end

end A115598.P8267745187928754735

namespace A115598

/-- `A082639(n+2)/2` -/
def P8267745187928754735.Spec : Prop :=
  ∀ n, P8267745187928754735.a n = (A115598 (n + 1) : ℚ)

end A115598

/-! ## A115598.P1405739456311329027

`A024537(Δ[n²])-1`
-/

namespace A115598.P1405739456311329027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A115598.P1405739456311329027

namespace A115598

/-- `A024537(Δ[n²])-1` -/
def P1405739456311329027.Spec : Prop :=
  ∀ n, P1405739456311329027.a n = A115598 (n + 1)

end A115598

/-! ## A115598.P3548325303835328968

`A113224(Δ[n²])/2`
-/

namespace A115598.P3548325303835328968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113224 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A115598.P3548325303835328968

namespace A115598

/-- `A113224(Δ[n²])/2` -/
def P3548325303835328968.Spec : Prop :=
  ∀ n, P3548325303835328968.a n = (A115598 (n + 1) : ℚ)

end A115598

/-! ## A115598.P14310210826371966673

`record[A001108(abs(1-n))]`
-/

namespace A115598.P14310210826371966673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115598.P14310210826371966673

namespace A115598

/-- `record[A001108(abs(1-n))]` -/
def P14310210826371966673.Spec : Prop :=
  ∀ n, P14310210826371966673.a n = A115598 (n + 1)

end A115598

/-! ## A115598.P15909336041393831623

`record[-A077921(n+1)]`
-/

namespace A115598.P15909336041393831623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A077921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115598.P15909336041393831623

namespace A115598

/-- `record[-A077921(n+1)]` -/
def P15909336041393831623.Spec : Prop :=
  ∀ n, P15909336041393831623.a n = A115598 (n + 1)

end A115598

/-!
# A115599: Consider all Pythagorean triples (X,X+1,Z) ordered by increasing Z; sequence gives Z-X values.

The programs for A115599, the canonical program `A115599.P4137712146841097180` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115599 has offset 1).

The definition of A115599 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115599.P4137712146841097180

`7*a(n-1)-7*a(n-2)+a(n-3)` with `a(0)=2, a(1)=9, a(2)=50`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115599

/-- `7*a(n-1)-7*a(n-2)+a(n-3)` -/
def P4137712146841097180.Spec : Prop :=
  ∀ n, P4137712146841097180.a n = A115599 (n + 1)

theorem P4137712146841097180.correct : P4137712146841097180.Spec := by
  intro n
  simp only [A115599, Nat.add_sub_cancel]

end A115599

/-! ## A115599.P16980980499440869504

`(2+(3-2*sqrt(2))^(n+1)+(3+2*sqrt(2))^(n+1))/4`
-/

namespace A115599.P16980980499440869504
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 + (3 - 2 * Real.sqrt (2 : ℝ)) ^ (n + 1) + (3 + 2 * Real.sqrt (2 : ℝ)) ^ (n + 1)) / 4

end

end A115599.P16980980499440869504

namespace A115599

/-- `(2+(3-2*sqrt(2))^(n+1)+(3+2*sqrt(2))^(n+1))/4` -/
def P16980980499440869504.Spec : Prop :=
  ∀ n, P16980980499440869504.a n = (A115599 (n + 1) : ℝ)

theorem P16980980499440869504.correct : P16980980499440869504.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A115599, Nat.add_sub_cancel, A115599.P16980980499440869504.a, A115599.P4137712146841097180.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A115599, Nat.add_sub_cancel, A115599.P16980980499440869504.a, A115599.P4137712146841097180.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A115599

/-! ## A115599.P14855824440262819832

`∑[ogf((2-5x+x^2)/(1-6x+x^2))]`
-/

namespace A115599.P14855824440262819832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5, 1] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115599.P14855824440262819832

namespace A115599

/-- `∑[ogf((2-5x+x^2)/(1-6x+x^2))]` -/
def P14855824440262819832.Spec : Prop :=
  ∀ n, P14855824440262819832.a n = A115599 (n + 1)

end A115599

/-! ## A115599.P12045920357263408273

`ogf((2-5x+x^2)/(1-7x+7x^2-x^3))`
-/

namespace A115599.P12045920357263408273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5, 1] [1, -7, 7, -1] n

end

end A115599.P12045920357263408273

namespace A115599

/-- `ogf((2-5x+x^2)/(1-7x+7x^2-x^3))` -/
def P12045920357263408273.Spec : Prop :=
  ∀ n, P12045920357263408273.a n = A115599 (n + 1)

end A115599

/-! ## A115599.P17264227288636830688

`∑[round(a(n-1)/(3-sqrt(8)))]` with `a(0)=2, a(1)=7`
-/

namespace A115599.P17264227288636830688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115599.P17264227288636830688

namespace A115599

/-- `∑[round(a(n-1)/(3-sqrt(8)))]` -/
def P17264227288636830688.Spec : Prop :=
  ∀ n, P17264227288636830688.a n = A115599 (n + 1)

end A115599

/-! ## A115599.P9042836825395895092

`abs(floor(a(n-1)/(3-sqrt(8)))-2)` with `a(0)=2`
-/

namespace A115599.P9042836825395895092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  |⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋ - 2|

end

end A115599.P9042836825395895092

namespace A115599

/-- `abs(floor(a(n-1)/(3-sqrt(8)))-2)` -/
def P9042836825395895092.Spec : Prop :=
  ∀ n, P9042836825395895092.a n = A115599 (n + 1)

end A115599

/-! ## A115599.P17360568491772433132

`record[1-floor((sqrt(2)+1)*a(n-1))]` with `a(0)=2`
-/

namespace A115599.P17360568491772433132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - ⌊(Real.sqrt (2 : ℝ) + 1) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115599.P17360568491772433132

namespace A115599

/-- `record[1-floor((sqrt(2)+1)*a(n-1))]` -/
def P17360568491772433132.Spec : Prop :=
  ∀ n, P17360568491772433132.a n = A115599 (n + 1)

end A115599

/-! ## A115599.P6313450051054591079

`record[6*a(n-1)-(a(n-2)+2)]` with `a(0)=2, a(1)=1`
-/

namespace A115599.P6313450051054591079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  6 * f1 (n - 1) - (f1 (n - 2) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115599.P6313450051054591079

namespace A115599

/-- `record[6*a(n-1)-(a(n-2)+2)]` -/
def P6313450051054591079.Spec : Prop :=
  ∀ n, P6313450051054591079.a n = A115599 (n + 1)

end A115599

/-! ## A115599.P1158002017149830279

`record[6*a(n-1)-2-a(n-2)]` with `a(0)=2, a(1)=1`
-/

namespace A115599.P1158002017149830279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  6 * f1 (n - 1) - 2 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115599.P1158002017149830279

namespace A115599

/-- `record[6*a(n-1)-2-a(n-2)]` -/
def P1158002017149830279.Spec : Prop :=
  ∀ n, P1158002017149830279.a n = A115599 (n + 1)

end A115599

/-! ## A115599.P18334656520041052105

`A055997(n+2)`
-/

namespace A115599.P18334656520041052105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055997 (n + 2)

end

end A115599.P18334656520041052105

namespace A115599

/-- `A055997(n+2)` -/
def P18334656520041052105.Spec : Prop :=
  ∀ n, P18334656520041052105.a n = A115599 (n + 1)

end A115599

/-! ## A115599.P16000302334801290505

`A024537(Δ[n²])`
-/

namespace A115599.P16000302334801290505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A115599.P16000302334801290505

namespace A115599

/-- `A024537(Δ[n²])` -/
def P16000302334801290505.Spec : Prop :=
  ∀ n, P16000302334801290505.a n = A115599 (n + 1)

end A115599

/-! ## A115599.P5374694595289201654

`A001108(n+1)+1`
-/

namespace A115599.P5374694595289201654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 (n + 1) + 1

end

end A115599.P5374694595289201654

namespace A115599

/-- `A001108(n+1)+1` -/
def P5374694595289201654.Spec : Prop :=
  ∀ n, P5374694595289201654.a n = A115599 (n + 1)

end A115599

/-! ## A115599.P1485477997892345274

`A115598(n+1)+1`
-/

namespace A115599.P1485477997892345274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115598 (n + 1) + 1

end

end A115599.P1485477997892345274

namespace A115599

/-- `A115598(n+1)+1` -/
def P1485477997892345274.Spec : Prop :=
  ∀ n, P1485477997892345274.a n = A115599 (n + 1)

end A115599

/-! ## A115599.P1950091043175473434

`A048739(2*n)+1`
-/

namespace A115599.P1950091043175473434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 (2 * n) + 1

end

end A115599.P1950091043175473434

namespace A115599

/-- `A048739(2*n)+1` -/
def P1950091043175473434.Spec : Prop :=
  ∀ n, P1950091043175473434.a n = A115599 (n + 1)

end A115599

/-! ## A115599.P5006883981966376345

`A097075(2*(n+1))`
-/

namespace A115599.P5006883981966376345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097075 (2 * (n + 1))

end

end A115599.P5006883981966376345

namespace A115599

/-- `A097075(2*(n+1))` -/
def P5006883981966376345.Spec : Prop :=
  ∀ n, P5006883981966376345.a n = A115599 (n + 1)

end A115599

/-! ## A115599.P6429014843238471009

`A171842(2*(n+1))`
-/

namespace A115599.P6429014843238471009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (2 * (n + 1))

end

end A115599.P6429014843238471009

namespace A115599

/-- `A171842(2*(n+1))` -/
def P6429014843238471009.Spec : Prop :=
  ∀ n, P6429014843238471009.a n = A115599 (n + 1)

end A115599

/-! ## A115599.P4611057901781663610

`A247311(6*(n+1))`
-/

namespace A115599.P4611057901781663610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247311 (6 * (n + 1))

end

end A115599.P4611057901781663610

namespace A115599

/-- `A247311(6*(n+1))` -/
def P4611057901781663610.Spec : Prop :=
  ∀ n, P4611057901781663610.a n = A115599 (n + 1)

end A115599

/-! ## A115599.P12731898503201012636

`1-A077921(Δ[n²])`
-/

namespace A115599.P12731898503201012636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A077921 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A115599.P12731898503201012636

namespace A115599

/-- `1-A077921(Δ[n²])` -/
def P12731898503201012636.Spec : Prop :=
  ∀ n, P12731898503201012636.a n = A115599 (n + 1)

end A115599

/-! ## A115599.P16259579599403802164

`ceil(A001541(n+1)/2)`
-/

namespace A115599.P16259579599403802164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001541 (n + 1) : ℚ) / 2⌉

end

end A115599.P16259579599403802164

namespace A115599

/-- `ceil(A001541(n+1)/2)` -/
def P16259579599403802164.Spec : Prop :=
  ∀ n, P16259579599403802164.a n = A115599 (n + 1)

end A115599

/-! ## A115599.P8419138192948957314

`record[1-A077921(n+1)]`
-/

namespace A115599.P8419138192948957314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A077921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115599.P8419138192948957314

namespace A115599

/-- `record[1-A077921(n+1)]` -/
def P8419138192948957314.Spec : Prop :=
  ∀ n, P8419138192948957314.a n = A115599 (n + 1)

end A115599

