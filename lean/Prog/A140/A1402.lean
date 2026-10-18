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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
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
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
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
# A140200: Partial sums of A140080.

The programs for A140200, there is no canonical definition to state claims against.
-/

/-! ## A140200.P8128358683162636313

`∑[A140080(n)]`
-/

namespace A140200.P8128358683162636313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140200.P8128358683162636313

/-! ## A140200.P12491944680055623113

`∑[A140083(2*n)]`
-/

namespace A140200.P12491944680055623113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140083 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140200.P12491944680055623113

/-! ## A140200.P15891462878879984858

`∑[dr(A140083(lcm(2, n)))]`
-/

namespace A140200.P15891462878879984858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A140083 (Nat.lcm 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140200.P15891462878879984858

/-! ## A140200.P3304357883131023617

`∑[A140083(n+n)%3]`
-/

namespace A140200.P3304357883131023617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140083 (n + n)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140200.P3304357883131023617

/-! ## A140200.P15473997039546764663

`∑[gcd(n, A030101(n))%3]`
-/

namespace A140200.P15473997039546764663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A030101 n) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140200.P15473997039546764663

/-! ## A140200.P5861721688848065508

`∑[A140083(Δ[n²])-1]`
-/

namespace A140200.P5861721688848065508
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140083 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140200.P5861721688848065508

/-! ## A140200.P8620271306750833442

`∑[A140083(A004277(n))]-1`
-/

namespace A140200.P8620271306750833442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140083 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A140200.P8620271306750833442

/-! ## A140200.P9864530655546611657

`∑[gcd(A026741(n), A055945(n))%3]`
-/

namespace A140200.P9864530655546611657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026741 n) (A055945 n) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140200.P9864530655546611657

/-!
# A140201: Partial sums of A140081.

The programs for A140201, the canonical program `A140201.P8450812756532810979` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140201 has offset 0).

The definition of A140201 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140201.P8450812756532810979

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=4`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A140201

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P8450812756532810979.Spec : Prop :=
  ∀ n, P8450812756532810979.a n = A140201 n

theorem P8450812756532810979.correct : P8450812756532810979.Spec := by
  intro n
  simp only [A140201]

end A140201

/-! ## A140201.P16651621018330426935

`n+A121262(n+1)`
-/

namespace A140201.P16651621018330426935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A121262 (n + 1)

end

end A140201.P16651621018330426935

namespace A140201

/-- `n+A121262(n+1)` -/
def P16651621018330426935.Spec : Prop :=
  ∀ n, P16651621018330426935.a n = A140201 n

end A140201

/-! ## A140201.P15949862245324170325

`A047624(n+1)-A042948(A004526(n))`
-/

namespace A140201.P15949862245324170325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047624 (n + 1) - A042948 (A004526 n).toNat

end

end A140201.P15949862245324170325

namespace A140201

/-- `A047624(n+1)-A042948(A004526(n))` -/
def P15949862245324170325.Spec : Prop :=
  ∀ n, P15949862245324170325.a n = A140201 n

end A140201

/-! ## A140201.P17073070571259376299

`A004524(n+1)+A004526(n+1)`
-/

namespace A140201.P17073070571259376299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (n + 1) + A004526 (n + 1)

end

end A140201.P17073070571259376299

namespace A140201

/-- `A004524(n+1)+A004526(n+1)` -/
def P17073070571259376299.Spec : Prop :=
  ∀ n, P17073070571259376299.a n = A140201 n

end A140201

/-! ## A140201.P5019419898657598984

`A002265(n+1)+A057353(n+1)`
-/

namespace A140201.P5019419898657598984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1) + A057353 (n + 1)

end

end A140201.P5019419898657598984

namespace A140201

/-- `A002265(n+1)+A057353(n+1)` -/
def P5019419898657598984.Spec : Prop :=
  ∀ n, P5019419898657598984.a n = A140201 n

end A140201

/-! ## A140201.P16624231820645293055

`char[or(3, n)]+n`
-/

namespace A140201.P16624231820645293055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + n

end

end A140201.P16624231820645293055

namespace A140201

/-- `char[or(3, n)]+n` -/
def P16624231820645293055.Spec : Prop :=
  ∀ n, (P16624231820645293055.a n : ℤ) = A140201 n

end A140201

/-! ## A140201.P10198051427466365

`∑[round(sqrt(n%4))]`
-/

namespace A140201.P10198051427466365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n % 4 : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140201.P10198051427466365

namespace A140201

/-- `∑[round(sqrt(n%4))]` -/
def P10198051427466365.Spec : Prop :=
  ∀ n, P10198051427466365.a n = A140201 n

end A140201

/-! ## A140201.P1737292159691889851

`∑[round(sqrt(and(3, n)))]`
-/

namespace A140201.P1737292159691889851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Nat.land 3 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140201.P1737292159691889851

namespace A140201

/-- `∑[round(sqrt(and(3, n)))]` -/
def P1737292159691889851.Spec : Prop :=
  ∀ n, P1737292159691889851.a n = A140201 n

end A140201

/-! ## A140201.P11530259850720625302

`C(n, 3)%2+n`
-/

namespace A140201.P11530259850720625302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 % 2 + n

end

end A140201.P11530259850720625302

namespace A140201

/-- `C(n, 3)%2+n` -/
def P11530259850720625302.Spec : Prop :=
  ∀ n, (P11530259850720625302.a n : ℤ) = A140201 n

end A140201

/-! ## A140201.P2261073391741117328

`and(1, C(n, 3))+n`
-/

namespace A140201.P2261073391741117328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.choose n 3) + n

end

end A140201.P2261073391741117328

namespace A140201

/-- `and(1, C(n, 3))+n` -/
def P2261073391741117328.Spec : Prop :=
  ∀ n, (P2261073391741117328.a n : ℤ) = A140201 n

end A140201

/-! ## A140201.P16409604824678837569

`∑[ceil(and(3, n)/2)]`
-/

namespace A140201.P16409604824678837569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.land 3 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140201.P16409604824678837569

namespace A140201

/-- `∑[ceil(and(3, n)/2)]` -/
def P16409604824678837569.Spec : Prop :=
  ∀ n, P16409604824678837569.a n = A140201 n

end A140201

/-! ## A140201.P6682023654263083492

`∑[round(and(3, n)/2)]`
-/

namespace A140201.P6682023654263083492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.land 3 n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140201.P6682023654263083492

namespace A140201

/-- `∑[round(and(3, n)/2)]` -/
def P6682023654263083492.Spec : Prop :=
  ∀ n, P6682023654263083492.a n = A140201 n

end A140201

/-! ## A140201.P12216303967402443182

`C(n, or(3, n))+n`
-/

namespace A140201.P12216303967402443182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.lor 3 n) + n

end

end A140201.P12216303967402443182

namespace A140201

/-- `C(n, or(3, n))+n` -/
def P12216303967402443182.Spec : Prop :=
  ∀ n, (P12216303967402443182.a n : ℤ) = A140201 n

end A140201

/-! ## A140201.P9333743284356172525

`Δ[floor(n/4)]+n`
-/

namespace A140201.P9333743284356172525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A140201.P9333743284356172525

namespace A140201

/-- `Δ[floor(n/4)]+n` -/
def P9333743284356172525.Spec : Prop :=
  ∀ n, P9333743284356172525.a n = A140201 n

end A140201

/-! ## A140201.P14796122244353941052

`floor(and(3, n)/3+n)`
-/

namespace A140201.P14796122244353941052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 3 n : ℚ) / 3 + (n : ℚ)⌋

end

end A140201.P14796122244353941052

namespace A140201

/-- `floor(and(3, n)/3+n)` -/
def P14796122244353941052.Spec : Prop :=
  ∀ n, P14796122244353941052.a n = A140201 n

end A140201

/-! ## A140201.P14615439795938016419

`round(and(3, n)/5+n)`
-/

namespace A140201.P14615439795938016419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.land 3 n : ℚ) / 5 + (n : ℚ))

end

end A140201.P14615439795938016419

namespace A140201

/-- `round(and(3, n)/5+n)` -/
def P14615439795938016419.Spec : Prop :=
  ∀ n, P14615439795938016419.a n = A140201 n

end A140201

/-! ## A140201.P4516965312554555485

`floor(n/or(3, n)+n)`
-/

namespace A140201.P4516965312554555485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.lor 3 n : ℚ) + (n : ℚ)⌋

end

end A140201.P4516965312554555485

namespace A140201

/-- `floor(n/or(3, n)+n)` -/
def P4516965312554555485.Spec : Prop :=
  ∀ n, P4516965312554555485.a n = A140201 n

end A140201

/-! ## A140201.P4990706955374360573

`∑[((n+3)%4)!%3]`
-/

namespace A140201.P4990706955374360573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n + 3) % 4) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140201.P4990706955374360573

namespace A140201

/-- `∑[((n+3)%4)!%3]` -/
def P4990706955374360573.Spec : Prop :=
  ∀ n, (P4990706955374360573.a n : ℤ) = A140201 n

end A140201

/-! ## A140201.P4426757666136857144

`ceil(∑[(2*n)%8/3])`
-/

namespace A140201.P4426757666136857144
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n % 8 : ℕ) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A140201.P4426757666136857144

namespace A140201

/-- `ceil(∑[(2*n)%8/3])` -/
def P4426757666136857144.Spec : Prop :=
  ∀ n, P4426757666136857144.a n = A140201 n

end A140201

/-! ## A140201.P9832478818798648755

`∑[and(3, n-1)!%3]`
-/

namespace A140201.P9832478818798648755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land 3 ((n : ℤ) - 1)).toNat % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140201.P9832478818798648755

namespace A140201

/-- `∑[and(3, n-1)!%3]` -/
def P9832478818798648755.Spec : Prop :=
  ∀ n, (P9832478818798648755.a n : ℤ) = A140201 n

end A140201

/-!
# A140202: Partial sums of A140082.

The programs for A140202, there is no canonical definition to state claims against.
-/

/-! ## A140202.P5375321732783286252

`∑[A140082(n)]`
-/

namespace A140202.P5375321732783286252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140082 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140202.P5375321732783286252

/-! ## A140202.P4864010028310920721

`∑{d}[A000079(n), A140082(log2(#))]`
-/

namespace A140202.P4864010028310920721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A140082 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A140202.P4864010028310920721

/-! ## A140202.P14255996552721217112

`∑[A005811(A330714(n)^6)]`
-/

namespace A140202.P14255996552721217112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A330714 n ^ 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140202.P14255996552721217112

/-! ## A140202.P13848844477691188874

`∑[A257679(A330714(n)^6)]`
-/

namespace A140202.P13848844477691188874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257679 (A330714 n ^ 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140202.P13848844477691188874

/-! ## A140202.P6603789922682511372

`∑[dr(A042948(A330714(n)^6))]`
-/

namespace A140202.P6603789922682511372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A042948 (A330714 n ^ 6).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140202.P6603789922682511372

/-!
# A140203: Partial sums of A140083.

The programs for A140203, there is no canonical definition to state claims against.
-/

/-! ## A140203.P9578692850566800759

`∑[A140083(n)]`
-/

namespace A140203.P9578692850566800759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140203.P9578692850566800759

/-! ## A140203.P11885538428747384035

`∑[A140080(floor(n/2))+n%2]`
-/

namespace A140203.P11885538428747384035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 ⌊(n : ℚ) / 2⌋.toNat + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140203.P11885538428747384035

/-! ## A140203.P4170227244701215740

`∑[A140080(or(1, n)-1)+and(1, n)]`
-/

namespace A140203.P4170227244701215740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 (Nat.lor 1 n - 1) + (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140203.P4170227244701215740

/-! ## A140203.P18029706096904543867

`∑[A140080(lcm(2, n+1)-2)+and(1, n)]`
-/

namespace A140203.P18029706096904543867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 (Nat.lcm 2 (n + 1) - 2) + (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140203.P18029706096904543867

/-! ## A140203.P1678722995195486605

`∑[A140080(n+1-gcd(2, n+1))+and(1, n)]`
-/

namespace A140203.P1678722995195486605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 (n + 1 - Nat.gcd 2 (n + 1)) + (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140203.P1678722995195486605

/-! ## A140203.P5702104677186720566

`∑[A140080(A052928(n))+and(1, n)]`
-/

namespace A140203.P5702104677186720566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 (A052928 n).toNat + (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140203.P5702104677186720566

/-! ## A140203.P2490017777791603640

`∑[A140080(A004526(n))+(n%2)²]`
-/

namespace A140203.P2490017777791603640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 (A004526 n).toNat + (((n % 2) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140203.P2490017777791603640

/-! ## A140203.P1015973227412437582

`∑[A140080(n-A000035(n))+and(1, n)]`
-/

namespace A140203.P1015973227412437582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 ((n : ℤ) - A000035 n).toNat + (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140203.P1015973227412437582

/-! ## A140203.P1945093591559231475

`∑[A140080(A004526(n))+A000035(n)]`
-/

namespace A140203.P1945093591559231475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 (A004526 n).toNat + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140203.P1945093591559231475

/-!
# A140204: Partial sums of A140084.

The programs for A140204, there is no canonical definition to state claims against.
-/

/-! ## A140204.P15982139764568960233

`∑[A140084(n)]`
-/

namespace A140204.P15982139764568960233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140204.P15982139764568960233

/-! ## A140204.P18411510368042632991

`∑[A000120(n)%A142972(A124834(n))]`
-/

namespace A140204.P18411510368042632991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 n) (A142972 (A124834 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140204.P18411510368042632991

/-! ## A140204.P3138189877340268821

`∑[A049260(A317043(A278222(n)))]`
-/

namespace A140204.P3138189877340268821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049260 (A317043 (A278222 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140204.P3138189877340268821

/-! ## A140204.P10842567055020295890

`∑[A217869(A167338(A286589(n)))]`
-/

namespace A140204.P10842567055020295890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217869 (A167338 (A286589 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140204.P10842567055020295890

/-!
# A140205: Partial sums of A140085.

The programs for A140205, the canonical program `A140205.P17537084821769450193` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140205 has offset 0).

The definition of A140205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140205.P17537084821769450193

`floor(∑[and(6, n)+3]/4)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A140205

/-- `floor(∑[and(6, n)+3]/4)` -/
def P17537084821769450193.Spec : Prop :=
  ∀ n, P17537084821769450193.a n = A140205 n

theorem P17537084821769450193.correct : P17537084821769450193.Spec := by
  intro n
  simp only [A140205]

end A140205

/-! ## A140205.P18365085557733256246

`∑[ceil(lcm(2, n%8)/5)]`
-/

namespace A140205.P18365085557733256246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 2 (n % 8) : ℚ) / 5⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140205.P18365085557733256246

namespace A140205

/-- `∑[ceil(lcm(2, n%8)/5)]` -/
def P18365085557733256246.Spec : Prop :=
  ∀ n, P18365085557733256246.a n = A140205 n

end A140205

/-! ## A140205.P5068427405359607096

`∑[A140085(n)]`
-/

namespace A140205.P5068427405359607096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140205.P5068427405359607096

namespace A140205

/-- `∑[A140085(n)]` -/
def P5068427405359607096.Spec : Prop :=
  ∀ n, P5068427405359607096.a n = A140205 n

end A140205

/-! ## A140205.P13116014747926745861

`∑[A000120(and(7, n-8))]`
-/

namespace A140205.P13116014747926745861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land 7 ((n : ℤ) - 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140205.P13116014747926745861

namespace A140205

/-- `∑[A000120(and(7, n-8))]` -/
def P13116014747926745861.Spec : Prop :=
  ∀ n, P13116014747926745861.a n = A140205 n

end A140205

/-! ## A140205.P2203844665787740752

`∑[A000120(or(n, -8)+8)]`
-/

namespace A140205.P2203844665787740752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lor (n : ℤ) (-8) + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140205.P2203844665787740752

namespace A140205

/-- `∑[A000120(or(n, -8)+8)]` -/
def P2203844665787740752.Spec : Prop :=
  ∀ n, P2203844665787740752.a n = A140205 n

end A140205

/-! ## A140205.P9422559145697204485

`∑[n-A047460(A008619(n))]`
-/

namespace A140205.P9422559145697204485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A047460 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140205.P9422559145697204485

namespace A140205

/-- `∑[n-A047460(A008619(n))]` -/
def P9422559145697204485.Spec : Prop :=
  ∀ n, P9422559145697204485.a n = A140205 n

end A140205

/-! ## A140205.P8127201511836831009

`∑[A001222(A001316(and(7, n-8)))]`
-/

namespace A140205.P8127201511836831009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (Int.land 7 ((n : ℤ) - 8)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140205.P8127201511836831009

namespace A140205

/-- `∑[A001222(A001316(and(7, n-8)))]` -/
def P8127201511836831009.Spec : Prop :=
  ∀ n, P8127201511836831009.a n = A140205 n

end A140205

/-! ## A140205.P13769177569467373586

`A002265(∑[or(3, A010887(n))])`
-/

namespace A140205.P13769177569467373586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A010887 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A140205.P13769177569467373586

namespace A140205

/-- `A002265(∑[or(3, A010887(n))])` -/
def P13769177569467373586.Spec : Prop :=
  ∀ n, P13769177569467373586.a n = A140205 n

end A140205

/-! ## A140205.P18432850104950779324

`∑[∑{p}[A019565(n), A167393(#)]]`
-/

namespace A140205.P18432850104950779324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A167393 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140205.P18432850104950779324

namespace A140205

/-- `∑[∑{p}[A019565(n), A167393(#)]]` -/
def P18432850104950779324.Spec : Prop :=
  ∀ n, P18432850104950779324.a n = A140205 n

end A140205

/-!
# A140206: Partial sums of A140086.

The programs for A140206, there is no canonical definition to state claims against.
-/

/-! ## A140206.P4125242127893546320

`∑[A140086(n)]`
-/

namespace A140206.P4125242127893546320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140206.P4125242127893546320

/-! ## A140206.P15512274852792598628

`∑[A000120(A178734(n))-A000120(n)]`
-/

namespace A140206.P15512274852792598628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A178734 n).toNat - A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140206.P15512274852792598628

/-! ## A140206.P3778344326158798180

`∑{d}[A000079(n), A140086(log2(#))]`
-/

namespace A140206.P3778344326158798180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A140086 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A140206.P3778344326158798180

/-! ## A140206.P12571762564899058162

`∑{d}[A059268(2*n²), A140086(log2(#))]`
-/

namespace A140206.P12571762564899058162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (2 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A140086 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A140206.P12571762564899058162

/-! ## A140206.P5262415812518318069

`∑[and(A000120(n), A246493(n+1))]`
-/

namespace A140206.P5262415812518318069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000120 n) (A246493 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140206.P5262415812518318069

/-!
# A140207: Triangle read by rows in which row n (n>=0) gives the first n terms of A000041.

The programs for A140207, there is no canonical definition to state claims against.
-/

/-! ## A140207.P15669881620047849986

`A000041(n-C(∑[char[∑[n]]], 2))`
-/

namespace A140207.P15669881620047849986
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A140207.P15669881620047849986

/-! ## A140207.P3602723606103863114

`A000041(A002262(n))`
-/

namespace A140207.P3602723606103863114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002262 n).toNat

end

end A140207.P3602723606103863114

/-! ## A140207.P11852092777441956369

`A054225(A112367(n))`
-/

namespace A140207.P11852092777441956369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A112367 n).toNat

end

end A140207.P11852092777441956369

/-! ## A140207.P9361732644311903665

`A000041(sqrt(A143844(n)))`
-/

namespace A140207.P9361732644311903665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (Real.sqrt (A143844 n : ℝ))).toNat

end

end A140207.P9361732644311903665

/-! ## A140207.P10702280622905580861

`A000041(log2(A059268(n)))`
-/

namespace A140207.P10702280622905580861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat

end

end A140207.P10702280622905580861

/-! ## A140207.P5261564563979001782

`A000041(A144328(n+1))`
-/

namespace A140207.P5261564563979001782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A144328 (n + 1)).toNat

end

end A140207.P5261564563979001782

/-! ## A140207.P9063344531030206275

`A119620(A158405(n+1))`
-/

namespace A140207.P9063344531030206275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (A158405 (n + 1)).toNat

end

end A140207.P9063344531030206275

/-! ## A140207.P771572564094265046

`A035363(2*A002262(n))`
-/

namespace A140207.P771572564094265046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * A002262 n).toNat

end

end A140207.P771572564094265046

/-! ## A140207.P9919111631627760623

`A119620(2*A002262(n))`
-/

namespace A140207.P9919111631627760623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * A002262 n).toNat

end

end A140207.P9919111631627760623

/-! ## A140207.P8896609804753416749

`A000041(val(A055235(n), 3))`
-/

namespace A140207.P8896609804753416749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.valuation (A055235 n).toNat 3)

end

end A140207.P8896609804753416749

/-! ## A140207.P11549845584314322244

`A000041(val(A055236(n), 4))`
-/

namespace A140207.P11549845584314322244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.valuation (A055236 n).toNat 4)

end

end A140207.P11549845584314322244

/-! ## A140207.P2017377061746800479

`A000041(val(A055237(n), 5))`
-/

namespace A140207.P2017377061746800479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.valuation (A055237 n).toNat 5)

end

end A140207.P2017377061746800479

/-! ## A140207.P15216645482190974882

`A000041(n-A057944(n))`
-/

namespace A140207.P15216645482190974882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ((n : ℤ) - A057944 n).toNat

end

end A140207.P15216645482190974882

/-! ## A140207.P1716212031532234371

`A141210(n)/A141155(n)`
-/

namespace A140207.P1716212031532234371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141210 n : ℚ) / (A141155 n : ℚ)

end

end A140207.P1716212031532234371

/-! ## A140207.P13590691848354183184

`A000041(A128227(abs(1-n)))`
-/

namespace A140207.P13590691848354183184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A128227 |1 - (n : ℤ)|.toNat).toNat

end

end A140207.P13590691848354183184

/-! ## A140207.P237943437157301508

`A000041(A002260(n+1)-1)`
-/

namespace A140207.P237943437157301508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002260 (n + 1) - 1).toNat

end

end A140207.P237943437157301508

/-! ## A140207.P14960955043741632670

`A035363(A158405(n+1)-1)`
-/

namespace A140207.P14960955043741632670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A158405 (n + 1) - 1).toNat

end

end A140207.P14960955043741632670

/-! ## A140207.P13955725897770608658

`A000041(A057554(2*n+1))`
-/

namespace A140207.P13955725897770608658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A057554 (2 * n + 1)).toNat

end

end A140207.P13955725897770608658

/-! ## A140207.P2467052494461096074

`A000041(val(A118413(n+1), 2))`
-/

namespace A140207.P2467052494461096074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.valuation (A118413 (n + 1)).toNat 2)

end

end A140207.P2467052494461096074

/-! ## A140207.P16672478597597454280

`A141157(n)/A004736(n+1)`
-/

namespace A140207.P16672478597597454280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141157 n : ℚ) / (A004736 (n + 1) : ℚ)

end

end A140207.P16672478597597454280

/-!
# A140208: a(n) = floor(n*pi(n)/2) where pi(n) is the number of primes <= n.

The programs for A140208, the canonical program `A140208.P2719107758714154914` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140208 has offset 1).

The definition of A140208 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128913, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A140208.P2719107758714154914

`floor(A128913(n+1)/2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A140208

/-- `floor(A128913(n+1)/2)` -/
def P2719107758714154914.Spec : Prop :=
  ∀ n, P2719107758714154914.a n = A140208 (n + 1)

theorem P2719107758714154914.correct : P2719107758714154914.Spec := by
  intro n
  simp only [A140208, Nat.add_sub_cancel]

end A140208

/-! ## A140208.P7406103210405517462

`floor((n+1)*∑[∑{p}[n+1, val(#, n+1)]]/2)`
-/

namespace A140208.P7406103210405517462
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2)⌋

end

end A140208.P7406103210405517462

namespace A140208

/-- `floor((n+1)*∑[∑{p}[n+1, val(#, n+1)]]/2)` -/
def P7406103210405517462.Spec : Prop :=
  ∀ n, P7406103210405517462.a n = A140208 (n + 1)

end A140208

/-! ## A140208.P1466781466599811210

`floor((n+1)*∑[∑{p}[n+1, C(#, n+1)]]/2)`
-/

namespace A140208.P1466781466599811210
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / 2⌋

end

end A140208.P1466781466599811210

namespace A140208

/-- `floor((n+1)*∑[∑{p}[n+1, C(#, n+1)]]/2)` -/
def P1466781466599811210.Spec : Prop :=
  ∀ n, P1466781466599811210.a n = A140208 (n + 1)

end A140208

/-! ## A140208.P3972168674765174177

`floor((n+1)*∑[∑{p}[n+1, floor(#/(n+1))]]/2)`
-/

namespace A140208.P3972168674765174177
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ) / 2⌋

end

end A140208.P3972168674765174177

namespace A140208

/-- `floor((n+1)*∑[∑{p}[n+1, floor(#/(n+1))]]/2)` -/
def P3972168674765174177.Spec : Prop :=
  ∀ n, P3972168674765174177.a n = A140208 (n + 1)

end A140208

/-! ## A140208.P9885966506018150227

`floor((n+1)/2*A000720(n+1))`
-/

namespace A140208.P9885966506018150227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2 * (A000720 (n + 1) : ℚ)⌋

end

end A140208.P9885966506018150227

namespace A140208

/-- `floor((n+1)/2*A000720(n+1))` -/
def P9885966506018150227.Spec : Prop :=
  ∀ n, P9885966506018150227.a n = A140208 (n + 1)

end A140208

/-! ## A140208.P2566898847077835685

`floor((n+1)*∑[A010051(n+1)]/2)`
-/

namespace A140208.P2566898847077835685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ) / 2⌋

end

end A140208.P2566898847077835685

namespace A140208

/-- `floor((n+1)*∑[A010051(n+1)]/2)` -/
def P2566898847077835685.Spec : Prop :=
  ∀ n, P2566898847077835685.a n = A140208 (n + 1)

end A140208

/-! ## A140208.P15158722524395707902

`floor((n+1)*∑[char[A000040(n+1)-1]]/2)`
-/

namespace A140208.P15158722524395707902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2)⌋

end

end A140208.P15158722524395707902

namespace A140208

/-- `floor((n+1)*∑[char[A000040(n+1)-1]]/2)` -/
def P15158722524395707902.Spec : Prop :=
  ∀ n, P15158722524395707902.a n = A140208 (n + 1)

end A140208

/-! ## A140208.P4828219016548951126

`floor((n+1)*∑[char[A006530(n+2)-1]]/2)`
-/

namespace A140208.P4828219016548951126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2)⌋

end

end A140208.P4828219016548951126

namespace A140208

/-- `floor((n+1)*∑[char[A006530(n+2)-1]]/2)` -/
def P4828219016548951126.Spec : Prop :=
  ∀ n, P4828219016548951126.a n = A140208 (n + 1)

end A140208

/-! ## A140208.P370579136034871756

`floor((n+1)*∑[char[A020639(n+2)-1]]/2)`
-/

namespace A140208.P370579136034871756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2)⌋

end

end A140208.P370579136034871756

namespace A140208

/-- `floor((n+1)*∑[char[A020639(n+2)-1]]/2)` -/
def P370579136034871756.Spec : Prop :=
  ∀ n, P370579136034871756.a n = A140208 (n + 1)

end A140208

/-! ## A140208.P15139613396101548583

`floor((n+1)/2*A230980(n+1))`
-/

namespace A140208.P15139613396101548583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2 * (A230980 (n + 1) : ℚ)⌋

end

end A140208.P15139613396101548583

namespace A140208

/-- `floor((n+1)/2*A230980(n+1))` -/
def P15139613396101548583.Spec : Prop :=
  ∀ n, P15139613396101548583.a n = A140208 (n + 1)

end A140208

/-! ## A140208.P1372962725088039955

`A004526(A128913(n+1))`
-/

namespace A140208.P1372962725088039955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A128913 (n + 1)).toNat

end

end A140208.P1372962725088039955

namespace A140208

/-- `A004526(A128913(n+1))` -/
def P1372962725088039955.Spec : Prop :=
  ∀ n, P1372962725088039955.a n = A140208 (n + 1)

end A140208

/-! ## A140208.P15251508884609100511

`A004526((n+1)*A000720(n+1))`
-/

namespace A140208.P15251508884609100511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n + 1 : ℤ) * A000720 (n + 1)).toNat

end

end A140208.P15251508884609100511

namespace A140208

/-- `A004526((n+1)*A000720(n+1))` -/
def P15251508884609100511.Spec : Prop :=
  ∀ n, P15251508884609100511.a n = A140208 (n + 1)

end A140208

/-!
# A140209: Nonprimes of the form ((x+y)/3+2)/(x-y), where x=prime and y=nonprime.

The programs for A140209, there is no canonical definition to state claims against.
-/

/-! ## A140209.P7095037297155783509

`comp[A006530(n-a(n-1))]` with `a(0)=64, a(1)=68, a(2)=90, a(3)=0`
-/

namespace A140209.P7095037297155783509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [64, 68, 90, 0] fun n f1 =>
  A006530 ((n : ℤ) - f1 (n - 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A140209.P7095037297155783509

/-! ## A140209.P17475532119364037862

`A018252(record[A235037(n+1)-A083573(n+1)])`
-/

namespace A140209.P17475532119364037862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235037 (n + 1) - A083573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A140209.P17475532119364037862

/-! ## A140209.P747717457266574365

`A018252(lt[A260324(n+1), A260314(n)])`
-/

namespace A140209.P747717457266574365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A140209.P747717457266574365

/-! ## A140209.P1731005485359309758

`A018252(lt[A123566(n+3), A123614(n)])`
-/

namespace A140209.P1731005485359309758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123566 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A140209.P1731005485359309758

/-! ## A140209.P8000760482449594516

`eq[A055672(n), A151878(A007094(n))]`
-/

namespace A140209.P8000760482449594516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140209.P8000760482449594516

/-!
# A140210: a(n) = Product_{h == 1 (mod 4) and h|n} h.

The programs for A140210, the canonical program `A140210.P18150944992194176443` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140210 has offset 1).

The definition of A140210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140210.P18150944992194176443

`∏{d}[n+1, gcd(#, 1-and(3, #))]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A140210

/-- `∏{d}[n+1, gcd(#, 1-and(3, #))]` -/
def P18150944992194176443.Spec : Prop :=
  ∀ n, (P18150944992194176443.a n : ℤ) = A140210 (n + 1)

theorem P18150944992194176443.correct : P18150944992194176443.Spec := by
  intro n
  simp only [A140210, Nat.add_sub_cancel]

end A140210

/-! ## A140210.P14775180105846008360

`∏{d}[n+1, #^(A087811(#)%2)]`
-/

namespace A140210.P14775180105846008360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (Int.tmod (A087811 d) 2 : ℤ)

end

end A140210.P14775180105846008360

namespace A140210

/-- `∏{d}[n+1, #^(A087811(#)%2)]` -/
def P14775180105846008360.Spec : Prop :=
  ∀ n, P14775180105846008360.a n = (A140210 (n + 1) : ℚ)

end A140210

/-! ## A140210.P18442823210886251054

`∏{d}[A000265(n+1), gcd(#, and(2, #))]`
-/

namespace A140210.P18442823210886251054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, Nat.gcd d (Nat.land 2 d)

end

end A140210.P18442823210886251054

namespace A140210

/-- `∏{d}[A000265(n+1), gcd(#, and(2, #))]` -/
def P18442823210886251054.Spec : Prop :=
  ∀ n, (P18442823210886251054.a n : ℤ) = A140210 (n + 1)

end A140210

/-! ## A140210.P6283420801653727151

`A136655(n+1)/A140211(n+1)`
-/

namespace A140210.P6283420801653727151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136655 (n + 1) : ℚ) / (A140211 (n + 1) : ℚ)

end

end A140210.P6283420801653727151

namespace A140210

/-- `A136655(n+1)/A140211(n+1)` -/
def P6283420801653727151.Spec : Prop :=
  ∀ n, P6283420801653727151.a n = (A140210 (n + 1) : ℚ)

end A140210

/-! ## A140210.P12589668798732745283

`∏{d}[A000265(n+1), #]/A140211(n+1)`
-/

namespace A140210.P12589668798732745283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ) / (A140211 (n + 1) : ℚ)

end

end A140210.P12589668798732745283

namespace A140210

/-- `∏{d}[A000265(n+1), #]/A140211(n+1)` -/
def P12589668798732745283.Spec : Prop :=
  ∀ n, P12589668798732745283.a n = (A140210 (n + 1) : ℚ)

end A140210

/-! ## A140210.P18387086480027963470

`A007955(A000265(n+1))/A140211(n+1)`
-/

namespace A140210.P18387086480027963470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (A000265 (n + 1)).toNat : ℚ) / (A140211 (n + 1) : ℚ)

end

end A140210.P18387086480027963470

namespace A140210

/-- `A007955(A000265(n+1))/A140211(n+1)` -/
def P18387086480027963470.Spec : Prop :=
  ∀ n, P18387086480027963470.a n = (A140210 (n + 1) : ℚ)

end A140210

/-!
# A140211: a(n) = Product_{d == 3 (mod 4) and d|n} d.

The programs for A140211, the canonical program `A140211.P16537942396198288479` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140211 has offset 1).

The definition of A140211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140211.P6672855346924886766

`∏{d}[A000265(n+1), gcd(#, or(2, #))]`
-/

namespace A140211.P6672855346924886766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, Nat.gcd d (Nat.lor 2 d)

end

end A140211.P6672855346924886766

namespace A140211

/-- `∏{d}[A000265(n+1), gcd(#, or(2, #))]` -/
def P6672855346924886766.Spec : Prop :=
  ∀ n, (P6672855346924886766.a n : ℤ) = A140211 (n + 1)

end A140211

/-! ## A140211.P5220589522937755730

`∏{d}[(n+1)/and(n+1, -(n+1)), #]/A140210(n+1)`
-/

namespace A140211.P5220589522937755730
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d : ℕ) : ℚ) / (A140210 (n + 1) : ℚ)

end

end A140211.P5220589522937755730

namespace A140211

/-- `∏{d}[(n+1)/and(n+1, -(n+1)), #]/A140210(n+1)` -/
def P5220589522937755730.Spec : Prop :=
  ∀ n, P5220589522937755730.a n = (A140211 (n + 1) : ℚ)

end A140211

/-! ## A140211.P14499368318814211804

`A136655(n+1)/A140210(n+1)`
-/

namespace A140211.P14499368318814211804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136655 (n + 1) : ℚ) / (A140210 (n + 1) : ℚ)

end

end A140211.P14499368318814211804

namespace A140211

/-- `A136655(n+1)/A140210(n+1)` -/
def P14499368318814211804.Spec : Prop :=
  ∀ n, P14499368318814211804.a n = (A140211 (n + 1) : ℚ)

end A140211

/-! ## A140211.P16537942396198288479

`∏{d}[n+1, A028310(#%A062828(#))]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A140211

/-- `∏{d}[n+1, A028310(#%A062828(#))]` -/
def P16537942396198288479.Spec : Prop :=
  ∀ n, P16537942396198288479.a n = A140211 (n + 1)

theorem P16537942396198288479.correct : P16537942396198288479.Spec := by
  intro n
  simp only [A140211, Nat.add_sub_cancel]

end A140211

/-! ## A140211.P14558612815310082086

`∏{d}[A000265(n+1), #]/A140210(n+1)`
-/

namespace A140211.P14558612815310082086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ) / (A140210 (n + 1) : ℚ)

end

end A140211.P14558612815310082086

namespace A140211

/-- `∏{d}[A000265(n+1), #]/A140210(n+1)` -/
def P14558612815310082086.Spec : Prop :=
  ∀ n, P14558612815310082086.a n = (A140211 (n + 1) : ℚ)

end A140211

/-! ## A140211.P9526737049766824140

`∏{d}[A153733(n)+1, #]/A140210(n+1)`
-/

namespace A140211.P9526737049766824140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ) / (A140210 (n + 1) : ℚ)

end

end A140211.P9526737049766824140

namespace A140211

/-- `∏{d}[A153733(n)+1, #]/A140210(n+1)` -/
def P9526737049766824140.Spec : Prop :=
  ∀ n, P9526737049766824140.a n = (A140211 (n + 1) : ℚ)

end A140211

/-! ## A140211.P560663905497652720

`∏{d}[(n+1)/A000010(xor(n, n+1)+1), #]/A140210(n+1)`
-/

namespace A140211.P560663905497652720
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000010 (Nat.xor n (n + 1) + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d : ℕ) : ℚ) / (A140210 (n + 1) : ℚ)

end

end A140211.P560663905497652720

namespace A140211

/-- `∏{d}[(n+1)/A000010(xor(n, n+1)+1), #]/A140210(n+1)` -/
def P560663905497652720.Spec : Prop :=
  ∀ n, P560663905497652720.a n = (A140211 (n + 1) : ℚ)

end A140211

/-! ## A140211.P12890856766369761777

`∏{d}[A000265(n+1), A093178(A080412(#))]`
-/

namespace A140211.P12890856766369761777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A093178 (A080412 d).toNat

end

end A140211.P12890856766369761777

namespace A140211

/-- `∏{d}[A000265(n+1), A093178(A080412(#))]` -/
def P12890856766369761777.Spec : Prop :=
  ∀ n, P12890856766369761777.a n = A140211 (n + 1)

end A140211

/-! ## A140211.P5001779692581983411

`∏{d}[A025480(n)+A003602(n+1), #]/A140210(n+1)`
-/

namespace A140211.P5001779692581983411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n + A003602 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ) / (A140210 (n + 1) : ℚ)

end

end A140211.P5001779692581983411

namespace A140211

/-- `∏{d}[A025480(n)+A003602(n+1), #]/A140210(n+1)` -/
def P5001779692581983411.Spec : Prop :=
  ∀ n, P5001779692581983411.a n = (A140211 (n + 1) : ℚ)

end A140211

/-! ## A140211.P15580327107738977495

`∏{d}[(n+1)/A132741(A132739(n+1)), #]/A140210(n+1)`
-/

namespace A140211.P15580327107738977495
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A132741 (A132739 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d : ℕ) : ℚ) / (A140210 (n + 1) : ℚ)

end

end A140211.P15580327107738977495

namespace A140211

/-- `∏{d}[(n+1)/A132741(A132739(n+1)), #]/A140210(n+1)` -/
def P15580327107738977495.Spec : Prop :=
  ∀ n, P15580327107738977495.a n = (A140211 (n + 1) : ℚ)

end A140211

/-! ## A140211.P14031125897689543663

`∏{d}[2*(n+1)/(xor(n, n+1)+1), #]/A140210(A227140(n+1))`
-/

namespace A140211.P14031125897689543663
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d : ℕ) : ℚ) / (A140210 (A227140 (n + 1)).toNat : ℚ)

end

end A140211.P14031125897689543663

namespace A140211

/-- `∏{d}[2*(n+1)/(xor(n, n+1)+1), #]/A140210(A227140(n+1))` -/
def P14031125897689543663.Spec : Prop :=
  ∀ n, P14031125897689543663.a n = (A140211 (n + 1) : ℚ)

end A140211

/-! ## A140211.P12081594132115548722

`A007955(A000265(n+1))/A140210(n+1)`
-/

namespace A140211.P12081594132115548722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (A000265 (n + 1)).toNat : ℚ) / (A140210 (n + 1) : ℚ)

end

end A140211.P12081594132115548722

namespace A140211

/-- `A007955(A000265(n+1))/A140210(n+1)` -/
def P12081594132115548722.Spec : Prop :=
  ∀ n, P12081594132115548722.a n = (A140211 (n + 1) : ℚ)

end A140211

/-! ## A140211.P1627843896872987494

`A007955(n+1)/(A125911(n+1)*A140210(n+1))`
-/

namespace A140211.P1627843896872987494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A125911 (n + 1) * A140210 (n + 1) : ℚ)

end

end A140211.P1627843896872987494

namespace A140211

/-- `A007955(n+1)/(A125911(n+1)*A140210(n+1))` -/
def P1627843896872987494.Spec : Prop :=
  ∀ n, P1627843896872987494.a n = (A140211 (n + 1) : ℚ)

end A140211

/-!
# A140212: Numbers n not a multiple of 10 such that reverse(n^2) = reverse(n)^2, but reverse(n) is different from n.

The programs for A140212, there is no canonical definition to state claims against.
-/

/-! ## A140212.P1784626773984158559

`sqrt(A064021(n+1))`
-/

namespace A140212.P1784626773984158559
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A064021 (n + 1) : ℝ)

end

end A140212.P1784626773984158559

/-! ## A140212.P13671445348878328578

`root(A064021(n+1), 2%A017488(n))`
-/

namespace A140212.P13671445348878328578
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A064021 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A017488 n) : ℝ))

end

end A140212.P13671445348878328578

/-! ## A140212.P3278571695991801810

`root(A064021(n+1)%A046303(n+1), 2)`
-/

namespace A140212.P3278571695991801810
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A064021 (n + 1)) (A046303 (n + 1)) : ℝ) ^ (1 / (2 : ℝ))

end

end A140212.P3278571695991801810

/-! ## A140212.P15072242353664468096

`root(A064021(n+1), A001316(A001316(n)))`
-/

namespace A140212.P15072242353664468096
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A064021 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A140212.P15072242353664468096

/-! ## A140212.P10594363075682388872

`∩[A035123(n+1), A061909(n+1)]`
-/

namespace A140212.P10594363075682388872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140212.P10594363075682388872

/-! ## A140212.P6498940165643371264

`∩[A035123(n+1), A085305(n+1)]`
-/

namespace A140212.P6498940165643371264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140212.P6498940165643371264

/-! ## A140212.P1947330345353449826

`root(A064021(n+1), 2)%A035090(n+1)`
-/

namespace A140212.P1947330345353449826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A064021 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A035090 (n + 1))

end

end A140212.P1947330345353449826

/-! ## A140212.P14602354942609123364

`∩[A035123(n+1), A288657(n+1)]`
-/

namespace A140212.P14602354942609123364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140212.P14602354942609123364

/-!
# A140213: Product_{h|n and h mod 6 = 1} h; product of divisors of n of the form 6*k + 1.

The programs for A140213, the canonical program `A140213.P4834195896681918348` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140213 has offset 1).

The definition of A140213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140213.P16405710294877890651

`A140215(n+1)/A140214(n+1)`
-/

namespace A140213.P16405710294877890651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140215 (n + 1) : ℚ) / (A140214 (n + 1) : ℚ)

end

end A140213.P16405710294877890651

namespace A140213

/-- `A140215(n+1)/A140214(n+1)` -/
def P16405710294877890651.Spec : Prop :=
  ∀ n, P16405710294877890651.a n = (A140213 (n + 1) : ℚ)

end A140213

/-! ## A140213.P1451266564492948601

`∏{d}[A065330(n+1), #]/A140214(n+1)`
-/

namespace A140213.P1451266564492948601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ) / (A140214 (n + 1) : ℚ)

end

end A140213.P1451266564492948601

namespace A140213

/-- `∏{d}[A065330(n+1), #]/A140214(n+1)` -/
def P1451266564492948601.Spec : Prop :=
  ∀ n, P1451266564492948601.a n = (A140213 (n + 1) : ℚ)

end A140213

/-! ## A140213.P17745226560323431347

`A136655((n+1)/3^val(n+1, 3))/A140214(n+1)`
-/

namespace A140213.P17745226560323431347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136655 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat : ℚ) / (A140214 (n + 1) : ℚ)

end

end A140213.P17745226560323431347

namespace A140213

/-- `A136655((n+1)/3^val(n+1, 3))/A140214(n+1)` -/
def P17745226560323431347.Spec : Prop :=
  ∀ n, P17745226560323431347.a n = (A140213 (n + 1) : ℚ)

end A140213

/-! ## A140213.P4834195896681918348

`∏{d}[A000265(n+1), A000265(A078689(#))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A140213

/-- `∏{d}[A000265(n+1), A000265(A078689(#))]` -/
def P4834195896681918348.Spec : Prop :=
  ∀ n, P4834195896681918348.a n = A140213 (n + 1)

theorem P4834195896681918348.correct : P4834195896681918348.Spec := by
  intro n
  simp only [A140213, Nat.add_sub_cancel]

end A140213

/-! ## A140213.P17617860967064515153

`A136655(A038502(n+1))/A140214(n+1)`
-/

namespace A140213.P17617860967064515153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136655 (A038502 (n + 1)).toNat : ℚ) / (A140214 (n + 1) : ℚ)

end

end A140213.P17617860967064515153

namespace A140213

/-- `A136655(A038502(n+1))/A140214(n+1)` -/
def P17617860967064515153.Spec : Prop :=
  ∀ n, P17617860967064515153.a n = (A140213 (n + 1) : ℚ)

end A140213

/-! ## A140213.P14720927296260594502

`∏{d}[n+1, #^(#%A057079(#))]`
-/

namespace A140213.P14720927296260594502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (Int.tmod (d : ℤ) (A057079 d) : ℤ)

end

end A140213.P14720927296260594502

namespace A140213

/-- `∏{d}[n+1, #^(#%A057079(#))]` -/
def P14720927296260594502.Spec : Prop :=
  ∀ n, P14720927296260594502.a n = (A140213 (n + 1) : ℚ)

end A140213

/-! ## A140213.P4010509825559007849

`A007955(A065330(n+1))/A140214(n+1)`
-/

namespace A140213.P4010509825559007849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (A065330 (n + 1)).toNat : ℚ) / (A140214 (n + 1) : ℚ)

end

end A140213.P4010509825559007849

namespace A140213

/-- `A007955(A065330(n+1))/A140214(n+1)` -/
def P4010509825559007849.Spec : Prop :=
  ∀ n, P4010509825559007849.a n = (A140213 (n + 1) : ℚ)

end A140213

/-! ## A140213.P9683459896164669312

`∏{d}[A284254(2*(n+1)), #]/A140214(n+1)`
-/

namespace A140213.P9683459896164669312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284254 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ) / (A140214 (n + 1) : ℚ)

end

end A140213.P9683459896164669312

namespace A140213

/-- `∏{d}[A284254(2*(n+1)), #]/A140214(n+1)` -/
def P9683459896164669312.Spec : Prop :=
  ∀ n, P9683459896164669312.a n = (A140213 (n + 1) : ℚ)

end A140213

/-! ## A140213.P3379869049503238215

`∏{d}[A065330(n+1), #]/A000265(∏{d}[A000265(n+1), A087774(#)])`
-/

namespace A140213.P3379869049503238215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ) / (A000265 (∏ d ∈ Nat.divisors (f2 n).natAbs, A087774 d).toNat : ℚ)

end

end A140213.P3379869049503238215

namespace A140213

/-- `∏{d}[A065330(n+1), #]/A000265(∏{d}[A000265(n+1), A087774(#)])` -/
def P3379869049503238215.Spec : Prop :=
  ∀ n, P3379869049503238215.a n = (A140213 (n + 1) : ℚ)

end A140213

/-!
# A140214: a(n) = Product_{h == 5 (mod 6) and h|n} h.

The programs for A140214, the canonical program `A140214.P6582779710072761783` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140214 has offset 1).

The definition of A140214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140214.P17423406182006174314

`A140215(n+1)/A140213(n+1)`
-/

namespace A140214.P17423406182006174314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140215 (n + 1) : ℚ) / (A140213 (n + 1) : ℚ)

end

end A140214.P17423406182006174314

namespace A140214

/-- `A140215(n+1)/A140213(n+1)` -/
def P17423406182006174314.Spec : Prop :=
  ∀ n, P17423406182006174314.a n = (A140214 (n + 1) : ℚ)

end A140214

/-! ## A140214.P7559475213485811249

`A136655((n+1)/3^val(n+1, 3))/A140213(n+1)`
-/

namespace A140214.P7559475213485811249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136655 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat : ℚ) / (A140213 (n + 1) : ℚ)

end

end A140214.P7559475213485811249

namespace A140214

/-- `A136655((n+1)/3^val(n+1, 3))/A140213(n+1)` -/
def P7559475213485811249.Spec : Prop :=
  ∀ n, P7559475213485811249.a n = (A140214 (n + 1) : ℚ)

end A140214

/-! ## A140214.P6582779710072761783

`∏{d}[A000265(n+1), A093178(A143097(#))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A140214

/-- `∏{d}[A000265(n+1), A093178(A143097(#))]` -/
def P6582779710072761783.Spec : Prop :=
  ∀ n, P6582779710072761783.a n = A140214 (n + 1)

theorem P6582779710072761783.correct : P6582779710072761783.Spec := by
  intro n
  simp only [A140214, Nat.add_sub_cancel]

end A140214

/-! ## A140214.P13836828517150689134

`A136655(A038502(n+1))/A140213(n+1)`
-/

namespace A140214.P13836828517150689134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136655 (A038502 (n + 1)).toNat : ℚ) / (A140213 (n + 1) : ℚ)

end

end A140214.P13836828517150689134

namespace A140214

/-- `A136655(A038502(n+1))/A140213(n+1)` -/
def P13836828517150689134.Spec : Prop :=
  ∀ n, P13836828517150689134.a n = (A140214 (n + 1) : ℚ)

end A140214

/-! ## A140214.P11505106057869418830

`A136655(A065330(n+1))/A140213(n+1)`
-/

namespace A140214.P11505106057869418830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136655 (A065330 (n + 1)).toNat : ℚ) / (A140213 (n + 1) : ℚ)

end

end A140214.P11505106057869418830

namespace A140214

/-- `A136655(A065330(n+1))/A140213(n+1)` -/
def P11505106057869418830.Spec : Prop :=
  ∀ n, P11505106057869418830.a n = (A140214 (n + 1) : ℚ)

end A140214

/-! ## A140214.P7192219449762829497

`∏{d}[n+1, #^(#%A057079(A276331(#)))]`
-/

namespace A140214.P7192219449762829497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (Int.tmod (d : ℤ) (A057079 (A276331 d).toNat) : ℤ)

end

end A140214.P7192219449762829497

namespace A140214

/-- `∏{d}[n+1, #^(#%A057079(A276331(#)))]` -/
def P7192219449762829497.Spec : Prop :=
  ∀ n, P7192219449762829497.a n = (A140214 (n + 1) : ℚ)

end A140214

/-! ## A140214.P14594929931839593765

`∏{d}[(n+1)/gcd(n+1, 6^n), #]/A140213((n+1)/2^val(n+1, 2))`
-/

namespace A140214.P14594929931839593765
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.gcd (n + 1) (6 ^ n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d : ℕ) : ℚ) / (A140213 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℚ)

end

end A140214.P14594929931839593765

namespace A140214

/-- `∏{d}[(n+1)/gcd(n+1, 6^n), #]/A140213((n+1)/2^val(n+1, 2))` -/
def P14594929931839593765.Spec : Prop :=
  ∀ n, P14594929931839593765.a n = (A140214 (n + 1) : ℚ)

end A140214

/-! ## A140214.P4277820188485233120

`A000265(∏{d}[A000265(n+1), A087774(#)])`
-/

namespace A140214.P4277820188485233120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∏ d ∈ Nat.divisors (f1 n).natAbs, A087774 d).toNat

end

end A140214.P4277820188485233120

namespace A140214

/-- `A000265(∏{d}[A000265(n+1), A087774(#)])` -/
def P4277820188485233120.Spec : Prop :=
  ∀ n, P4277820188485233120.a n = A140214 (n + 1)

end A140214

/-! ## A140214.P1200672455365228367

`A065330(∏{d}[A065330(n+1), A087774(#)])`
-/

namespace A140214.P1200672455365228367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (∏ d ∈ Nat.divisors (f1 n).natAbs, A087774 d).toNat

end

end A140214.P1200672455365228367

namespace A140214

/-- `A065330(∏{d}[A065330(n+1), A087774(#)])` -/
def P1200672455365228367.Spec : Prop :=
  ∀ n, P1200672455365228367.a n = A140214 (n + 1)

end A140214

/-! ## A140214.P5099158469742244532

`∏{d}[A204455(n+1), A204455(A087774(#))]`
-/

namespace A140214.P5099158469742244532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A204455 (A087774 d).toNat

end

end A140214.P5099158469742244532

namespace A140214

/-- `∏{d}[A204455(n+1), A204455(A087774(#))]` -/
def P5099158469742244532.Spec : Prop :=
  ∀ n, P5099158469742244532.a n = A140214 (n + 1)

end A140214

/-!
# A140215: A140213(n)*A140214(n).

The programs for A140215, the canonical program `A140215.P7416230048954684977` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140215 has offset 1).

The definition of A140215 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140213, A140214, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A140215.P7416230048954684977

`A140213(n+1)*A140214(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A140215

/-- `A140213(n+1)*A140214(n+1)` -/
def P7416230048954684977.Spec : Prop :=
  ∀ n, P7416230048954684977.a n = A140215 (n + 1)

theorem P7416230048954684977.correct : P7416230048954684977.Spec := by
  intro n
  simp only [A140215, Nat.add_sub_cancel]

end A140215

/-! ## A140215.P7066008755514488053

`∏{d}[floor((n+1)/2^val(n+1, 2))/3^val(n+1, 3), #]`
-/

namespace A140215.P7066008755514488053
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A140215.P7066008755514488053

namespace A140215

/-- `∏{d}[floor((n+1)/2^val(n+1, 2))/3^val(n+1, 3), #]` -/
def P7066008755514488053.Spec : Prop :=
  ∀ n, (P7066008755514488053.a n : ℤ) = A140215 (n + 1)

end A140215

/-! ## A140215.P9276945164417851753

`∏{d}[round((n+1)/2^val(n+1, 2))/3^val(n+1, 3), #]`
-/

namespace A140215.P9276945164417851753
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)) : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A140215.P9276945164417851753

namespace A140215

/-- `∏{d}[round((n+1)/2^val(n+1, 2))/3^val(n+1, 3), #]` -/
def P9276945164417851753.Spec : Prop :=
  ∀ n, (P9276945164417851753.a n : ℤ) = A140215 (n + 1)

end A140215

/-! ## A140215.P8036508661210126291

`∏{d}[ceil((n+1)/and(n+1, -(n+1)))/3^val(n+1, 3), #]`
-/

namespace A140215.P8036508661210126291
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌉ : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A140215.P8036508661210126291

namespace A140215

/-- `∏{d}[ceil((n+1)/and(n+1, -(n+1)))/3^val(n+1, 3), #]` -/
def P8036508661210126291.Spec : Prop :=
  ∀ n, (P8036508661210126291.a n : ℤ) = A140215 (n + 1)

end A140215

/-! ## A140215.P9555217388091061971

`∏{d}[A065330(n+1), #]`
-/

namespace A140215.P9555217388091061971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A140215.P9555217388091061971

namespace A140215

/-- `∏{d}[A065330(n+1), #]` -/
def P9555217388091061971.Spec : Prop :=
  ∀ n, (P9555217388091061971.a n : ℤ) = A140215 (n + 1)

end A140215

/-! ## A140215.P6397440164095514247

`∏{d}[(n+1)/A065331(n+1), #]`
-/

namespace A140215.P6397440164095514247
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A065331 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A140215.P6397440164095514247

namespace A140215

/-- `∏{d}[(n+1)/A065331(n+1), #]` -/
def P6397440164095514247.Spec : Prop :=
  ∀ n, (P6397440164095514247.a n : ℤ) = A140215 (n + 1)

end A140215

/-! ## A140215.P4178508314520077474

`A136655((n+1)/3^val(n+1, 3))`
-/

namespace A140215.P4178508314520077474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136655 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

end

end A140215.P4178508314520077474

namespace A140215

/-- `A136655((n+1)/3^val(n+1, 3))` -/
def P4178508314520077474.Spec : Prop :=
  ∀ n, P4178508314520077474.a n = A140215 (n + 1)

end A140215

/-! ## A140215.P8743820414188536645

`∏{d}[A038502((n+1)/2^val(n+1, 2)), #]`
-/

namespace A140215.P8743820414188536645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A140215.P8743820414188536645

namespace A140215

/-- `∏{d}[A038502((n+1)/2^val(n+1, 2)), #]` -/
def P8743820414188536645.Spec : Prop :=
  ∀ n, (P8743820414188536645.a n : ℤ) = A140215 (n + 1)

end A140215

/-! ## A140215.P11382313709832557822

`∏{d}[A000265((n+1)/3^val(n+1, 3)), #]`
-/

namespace A140215.P11382313709832557822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A140215.P11382313709832557822

namespace A140215

/-- `∏{d}[A000265((n+1)/3^val(n+1, 3)), #]` -/
def P11382313709832557822.Spec : Prop :=
  ∀ n, (P11382313709832557822.a n : ℤ) = A140215 (n + 1)

end A140215

/-! ## A140215.P17275409071517390080

`A136655(A038502(n+1))`
-/

namespace A140215.P17275409071517390080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136655 (A038502 (n + 1)).toNat

end

end A140215.P17275409071517390080

namespace A140215

/-- `A136655(A038502(n+1))` -/
def P17275409071517390080.Spec : Prop :=
  ∀ n, P17275409071517390080.a n = A140215 (n + 1)

end A140215

/-! ## A140215.P537152430402879839

`A136655(A065330(n+1))`
-/

namespace A140215.P537152430402879839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136655 (A065330 (n + 1)).toNat

end

end A140215.P537152430402879839

namespace A140215

/-- `A136655(A065330(n+1))` -/
def P537152430402879839.Spec : Prop :=
  ∀ n, P537152430402879839.a n = A140215 (n + 1)

end A140215

/-! ## A140215.P18304065976681608342

`∏{d}[A284254(2*(n+1)), #]`
-/

namespace A140215.P18304065976681608342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284254 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A140215.P18304065976681608342

namespace A140215

/-- `∏{d}[A284254(2*(n+1)), #]` -/
def P18304065976681608342.Spec : Prop :=
  ∀ n, (P18304065976681608342.a n : ℤ) = A140215 (n + 1)

end A140215

/-! ## A140215.P16523285235134088046

`A007955(A065330(2*(n+1)))`
-/

namespace A140215.P16523285235134088046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A065330 (2 * (n + 1))).toNat

end

end A140215.P16523285235134088046

namespace A140215

/-- `A007955(A065330(2*(n+1)))` -/
def P16523285235134088046.Spec : Prop :=
  ∀ n, P16523285235134088046.a n = A140215 (n + 1)

end A140215

/-! ## A140215.P5599319300437943323

`∏{d}[(n+1)/gcd(n+1, 6^n), #]`
-/

namespace A140215.P5599319300437943323
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.gcd (n + 1) (6 ^ n) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A140215.P5599319300437943323

namespace A140215

/-- `∏{d}[(n+1)/gcd(n+1, 6^n), #]` -/
def P5599319300437943323.Spec : Prop :=
  ∀ n, (P5599319300437943323.a n : ℤ) = A140215 (n + 1)

end A140215

/-!
# A140217: Half the number of n X n binary matrices, symmetric under horizontal reflection, having equal row sums.

The programs for A140217, there is no canonical definition to state claims against.
-/

/-! ## A140217.P9656218539474723871

`A278062(A232471(n))`
-/

namespace A140217.P9656218539474723871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278062 (A232471 n).toNat

end

end A140217.P9656218539474723871

/-! ## A140217.P7377527262728976394

`A276901(∏{e}[A009159(n), #])`
-/

namespace A140217.P7377527262728976394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276901 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A140217.P7377527262728976394

/-!
# A140218: Denominators of the inverse triangle to that described in A133135.

The programs for A140218, there is no canonical definition to state claims against.
-/

/-! ## A140218.P5800140535601002530

`gcd(A009998(n), A297771(A255622(n+1)))`
-/

namespace A140218.P5800140535601002530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009998 n) (A297771 (A255622 (n + 1)).toNat)

end

end A140218.P5800140535601002530

/-! ## A140218.P8083522232544677254

`gcd(A009998(n), A177002(A177020(n)))`
-/

namespace A140218.P8083522232544677254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009998 n) (A177002 (A177020 n).toNat)

end

end A140218.P8083522232544677254

/-! ## A140218.P9599078614135540656

`A053735(gcd(A051239(n+1), A142589(n)))`
-/

namespace A140218.P9599078614135540656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (Int.gcd (A051239 (n + 1)) (A142589 n))

end

end A140218.P9599078614135540656

/-! ## A140218.P15620963298283086477

`gcd(A051237(n+1), A131736(A188427(n)))`
-/

namespace A140218.P15620963298283086477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051237 (n + 1)) (A131736 (A188427 n).toNat)

end

end A140218.P15620963298283086477

/-! ## A140218.P8799423656422372643

`ceil(ratio[A034444(A291261(n))])`
-/

namespace A140218.P8799423656422372643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A291261 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A140218.P8799423656422372643

/-!
# A140219: Denominator of the coefficient [x^1] of the Bernoulli twin number polynomial C(n,x).

The programs for A140219, the canonical program `A140219.P10587511373409915709` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140219 has offset 0).

The definition of A140219 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006955, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A140219.P10587511373409915709

`A006955(floor(n/2))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A140219

/-- `A006955(floor(n/2))` -/
def P10587511373409915709.Spec : Prop :=
  ∀ n, P10587511373409915709.a n = A140219 n

theorem P10587511373409915709.correct : P10587511373409915709.Spec := by
  intro n
  simp only [A140219]

end A140219

/-! ## A140219.P5006056044554779124

`A050932(and(n, -2))`
-/

namespace A140219.P5006056044554779124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 (Int.land (n : ℤ) (-2)).toNat

end

end A140219.P5006056044554779124

namespace A140219

/-- `A050932(and(n, -2))` -/
def P5006056044554779124.Spec : Prop :=
  ∀ n, P5006056044554779124.a n = A140219 n

end A140219

/-! ## A140219.P4889181995597231851

`A050932(or(1, n)-1)`
-/

namespace A140219.P4889181995597231851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 (Nat.lor 1 n - 1)

end

end A140219.P4889181995597231851

namespace A140219

/-- `A050932(or(1, n)-1)` -/
def P4889181995597231851.Spec : Prop :=
  ∀ n, P4889181995597231851.a n = A140219 n

end A140219

/-! ## A140219.P6077194462709283281

`A050932(xor(1, or(1, n)))`
-/

namespace A140219.P6077194462709283281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 (Nat.xor 1 (Nat.lor 1 n))

end

end A140219.P6077194462709283281

namespace A140219

/-- `A050932(xor(1, or(1, n)))` -/
def P6077194462709283281.Spec : Prop :=
  ∀ n, P6077194462709283281.a n = A140219 n

end A140219

/-! ## A140219.P2013706925279411109

`A050932(n-n%2)`
-/

namespace A140219.P2013706925279411109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 (n - n % 2)

end

end A140219.P2013706925279411109

namespace A140219

/-- `A050932(n-n%2)` -/
def P2013706925279411109.Spec : Prop :=
  ∀ n, P2013706925279411109.a n = A140219 n

end A140219

/-! ## A140219.P15849718157833630631

`A050932(2*floor(n/2))`
-/

namespace A140219.P15849718157833630631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 (2 * ⌊(n : ℚ) / 2⌋).toNat

end

end A140219.P15849718157833630631

namespace A140219

/-- `A050932(2*floor(n/2))` -/
def P15849718157833630631.Spec : Prop :=
  ∀ n, P15849718157833630631.a n = A140219 n

end A140219

/-! ## A140219.P12949700209225238495

`A100616(or(1, n))`
-/

namespace A140219.P12949700209225238495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100616 (Nat.lor 1 n)

end

end A140219.P12949700209225238495

namespace A140219

/-- `A100616(or(1, n))` -/
def P12949700209225238495.Spec : Prop :=
  ∀ n, P12949700209225238495.a n = A140219 n

end A140219

/-! ## A140219.P2809959960206966528

`A100616(log2(gcd(2, n))+n)`
-/

namespace A140219.P2809959960206966528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100616 (SequenceMachineLib.roundAway (Real.logb 2 (Nat.gcd 2 n : ℝ) + (n : ℝ))).toNat

end

end A140219.P2809959960206966528

namespace A140219

/-- `A100616(log2(gcd(2, n))+n)` -/
def P2809959960206966528.Spec : Prop :=
  ∀ n, P2809959960206966528.a n = A140219 n

end A140219

/-! ## A140219.P17710620261063250414

`A100616(A109613(n))`
-/

namespace A140219.P17710620261063250414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100616 (A109613 n).toNat

end

end A140219.P17710620261063250414

namespace A140219

/-- `A100616(A109613(n))` -/
def P17710620261063250414.Spec : Prop :=
  ∀ n, P17710620261063250414.a n = A140219 n

end A140219

/-! ## A140219.P8161070651235598759

`A100616(A063196(n+1))`
-/

namespace A140219.P8161070651235598759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100616 (A063196 (n + 1)).toNat

end

end A140219.P8161070651235598759

namespace A140219

/-- `A100616(A063196(n+1))` -/
def P8161070651235598759.Spec : Prop :=
  ∀ n, P8161070651235598759.a n = A140219 n

end A140219

/-! ## A140219.P3579513473722742934

`A100616(A266591(n+2)+n)`
-/

namespace A140219.P3579513473722742934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100616 (A266591 (n + 2) + (n : ℤ)).toNat

end

end A140219.P3579513473722742934

namespace A140219

/-- `A100616(A266591(n+2)+n)` -/
def P3579513473722742934.Spec : Prop :=
  ∀ n, P3579513473722742934.a n = A140219 n

end A140219

/-!
# A140220: a(n) = binomial(n+7, 7)*5^n.

The programs for A140220, the canonical program `A140220.P2796129871829738144` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140220 has offset 0).

The definition of A140220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140220.P2796129871829738144

`5^n*C(n+7, 7)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A140220

/-- `5^n*C(n+7, 7)` -/
def P2796129871829738144.Spec : Prop :=
  ∀ n, (P2796129871829738144.a n : ℤ) = A140220 n

theorem P2796129871829738144.correct : P2796129871829738144.Spec := by
  intro n
  simp only [A140220]

end A140220

/-! ## A140220.P18051649394582341590

`(35/n+5)*a(n-1)` with `a(0)=1`
-/

namespace A140220.P18051649394582341590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (35 / (n : ℚ) + 5) * a (n - 1)

end

end A140220.P18051649394582341590

namespace A140220

/-- `(35/n+5)*a(n-1)` -/
def P18051649394582341590.Spec : Prop :=
  ∀ n, P18051649394582341590.a n = (A140220 n : ℚ)

end A140220

/-! ## A140220.P18308740217041998397

`5^n*A000580(n+7)`
-/

namespace A140220.P18308740217041998397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A000580 (n + 7)

end

end A140220.P18308740217041998397

namespace A140220

/-- `5^n*A000580(n+7)` -/
def P18308740217041998397.Spec : Prop :=
  ∀ n, P18308740217041998397.a n = A140220 n

end A140220

/-! ## A140220.P10672522795344672219

`C(n+7, 7)*A000351(n)`
-/

namespace A140220.P10672522795344672219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℤ) * A000351 n

end

end A140220.P10672522795344672219

namespace A140220

/-- `C(n+7, 7)*A000351(n)` -/
def P10672522795344672219.Spec : Prop :=
  ∀ n, P10672522795344672219.a n = A140220 n

end A140220

/-! ## A140220.P932769455883687166

`5^n*∑[A000579(n+6)]`
-/

namespace A140220.P932769455883687166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140220.P932769455883687166

namespace A140220

/-- `5^n*∑[A000579(n+6)]` -/
def P932769455883687166.Spec : Prop :=
  ∀ n, P932769455883687166.a n = A140220 n

end A140220

/-! ## A140220.P14285960482655335454

`A140405(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A140220.P14285960482655335454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A140405 n + 5 * a (n - 1)

end

end A140220.P14285960482655335454

namespace A140220

/-- `A140405(n)+5*a(n-1)` -/
def P14285960482655335454.Spec : Prop :=
  ∀ n, P14285960482655335454.a n = A140220 n

end A140220

/-! ## A140220.P2185994632798815713

`A000580(n+7)*A017920(2*n)`
-/

namespace A140220.P2185994632798815713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A017920 (2 * n)

end

end A140220.P2185994632798815713

namespace A140220

/-- `A000580(n+7)*A017920(2*n)` -/
def P2185994632798815713.Spec : Prop :=
  ∀ n, P2185994632798815713.a n = A140220 n

end A140220

/-! ## A140220.P15681258456490144999

`A038243(eq[7, A002262(n)])`
-/

namespace A140220.P15681258456490144999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140220.P15681258456490144999

namespace A140220

/-- `A038243(eq[7, A002262(n)])` -/
def P15681258456490144999.Spec : Prop :=
  ∀ n, P15681258456490144999.a n = A140220 n

end A140220

/-! ## A140220.P12121468172699587630

`A038243(eq[8, A002260(n+1)])`
-/

namespace A140220.P12121468172699587630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140220.P12121468172699587630

namespace A140220

/-- `A038243(eq[8, A002260(n+1)])` -/
def P12121468172699587630.Spec : Prop :=
  ∀ n, P12121468172699587630.a n = A140220 n

end A140220

/-! ## A140220.P7462759354624815949

`A013612(A155212(n+4))`
-/

namespace A140220.P7462759354624815949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 (A155212 (n + 4)).toNat

end

end A140220.P7462759354624815949

namespace A140220

/-- `A013612(A155212(n+4))` -/
def P7462759354624815949.Spec : Prop :=
  ∀ n, P7462759354624815949.a n = A140220 n

end A140220

/-! ## A140220.P5846362337902844576

`A013612(2*n+A000217(n+6)+7)`
-/

namespace A140220.P5846362337902844576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 ((2 * n : ℤ) + (A000217 (n + 6) + 7)).toNat

end

end A140220.P5846362337902844576

namespace A140220

/-- `A013612(2*n+A000217(n+6)+7)` -/
def P5846362337902844576.Spec : Prop :=
  ∀ n, P5846362337902844576.a n = A140220 n

end A140220

/-! ## A140220.P10012965646063209631

`A013612(2*n+A034856(n+5)+9)`
-/

namespace A140220.P10012965646063209631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 ((2 * n : ℤ) + (A034856 (n + 5) + 9)).toNat

end

end A140220.P10012965646063209631

namespace A140220

/-- `A013612(2*n+A034856(n+5)+9)` -/
def P10012965646063209631.Spec : Prop :=
  ∀ n, P10012965646063209631.a n = A140220 n

end A140220

/-!
# A140221: A number n is included if n is coprime to Sum_{k=1..n} d(k), where d(k) is the number of divisors of k.

The programs for A140221, the canonical program `A140221.P18236953394721170131` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140221 has offset 1).

The definition of A140221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140221.P5981352458422190596

`eq[1, gcd(n, A006218(n))]`
-/

namespace A140221.P5981352458422190596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A006218 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140221.P5981352458422190596

namespace A140221

/-- `eq[1, gcd(n, A006218(n))]` -/
def P5981352458422190596.Spec : Prop :=
  ∀ n, (P5981352458422190596.a n : ℤ) = A140221 (n + 1)

end A140221

/-! ## A140221.P18236953394721170131

`record[A059247(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A140221

/-- `record[A059247(n+1)]` -/
def P18236953394721170131.Spec : Prop :=
  ∀ n, P18236953394721170131.a n = A140221 (n + 1)

theorem P18236953394721170131.correct : P18236953394721170131.Spec := by
  intro n
  simp only [A140221, Nat.add_sub_cancel]

end A140221

/-! ## A140221.P10158215303146381644

`eq[n, A059247(abs(1-n)+1)]`
-/

namespace A140221.P10158215303146381644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059247 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140221.P10158215303146381644

namespace A140221

/-- `eq[n, A059247(abs(1-n)+1)]` -/
def P10158215303146381644.Spec : Prop :=
  ∀ n, (P10158215303146381644.a n : ℤ) = A140221 (n + 1)

end A140221

/-! ## A140221.P11305709393362221613

`root(record[A059247(-xor(n, -1))], 2)²`
-/

namespace A140221.P11305709393362221613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059247 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A140221.P11305709393362221613

namespace A140221

/-- `root(record[A059247(-xor(n, -1))], 2)²` -/
def P11305709393362221613.Spec : Prop :=
  ∀ n, P11305709393362221613.a n = (A140221 (n + 1) : ℝ)

end A140221

/-! ## A140221.P11381832851268071208

`eq[1, gcd(n+1, ∑[A000005(n+1)])]+1`
-/

namespace A140221.P11381832851268071208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A140221.P11381832851268071208

namespace A140221

/-- `eq[1, gcd(n+1, ∑[A000005(n+1)])]+1` -/
def P11381832851268071208.Spec : Prop :=
  ∀ n, (P11381832851268071208.a n : ℤ) = A140221 (n + 1)

end A140221

/-! ## A140221.P18180863258302246811

`A059247(record[A059247(-xor(n, -1))])`
-/

namespace A140221.P18180863258302246811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059247 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059247 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A140221.P18180863258302246811

namespace A140221

/-- `A059247(record[A059247(-xor(n, -1))])` -/
def P18180863258302246811.Spec : Prop :=
  ∀ n, P18180863258302246811.a n = A140221 (n + 1)

end A140221

/-! ## A140221.P9762413949100252386

`record[A059246(n+1)-A002541(n+1)]`
-/

namespace A140221.P9762413949100252386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059246 (n + 1) - A002541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140221.P9762413949100252386

namespace A140221

/-- `record[A059246(n+1)-A002541(n+1)]` -/
def P9762413949100252386.Spec : Prop :=
  ∀ n, P9762413949100252386.a n = A140221 (n + 1)

end A140221

/-! ## A140221.P6212187694071209038

`record[A059247(A028310(n))%A022497(n)]`
-/

namespace A140221.P6212187694071209038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059247 (A028310 n).toNat) (A022497 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140221.P6212187694071209038

namespace A140221

/-- `record[A059247(A028310(n))%A022497(n)]` -/
def P6212187694071209038.Spec : Prop :=
  ∀ n, P6212187694071209038.a n = A140221 (n + 1)

end A140221

/-! ## A140221.P16621039264537420901

`record[A275055(A059246(n+1))]`
-/

namespace A140221.P16621039264537420901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275055 (A059246 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140221.P16621039264537420901

namespace A140221

/-- `record[A275055(A059246(n+1))]` -/
def P16621039264537420901.Spec : Prop :=
  ∀ n, P16621039264537420901.a n = A140221 (n + 1)

end A140221

/-!
# A140222: A number j is included if (Sum_{k=1..j} d(k)) is prime, where d(k) is the number of divisors of k.

The programs for A140222, the canonical program `A140222.P11268396333169725338` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140222 has offset 1).

The definition of A140222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1052 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140222.P11268396333169725338

`eq[1, A001222(A006218(n+1))]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A140222

/-- `eq[1, A001222(A006218(n+1))]+1` -/
def P11268396333169725338.Spec : Prop :=
  ∀ n, (P11268396333169725338.a n : ℤ) = A140222 (n + 1)

theorem P11268396333169725338.correct : P11268396333169725338.Spec := by
  intro n
  simp only [A140222, Nat.add_sub_cancel]

end A140222

/-! ## A140222.P1932846188015645617

`record[A000027(2*(n+1))/A000005(A006218(n+1))]`
-/

namespace A140222.P1932846188015645617
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (2 * (n + 1)) : ℚ) / (A000005 (A006218 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140222.P1932846188015645617

namespace A140222

/-- `record[A000027(2*(n+1))/A000005(A006218(n+1))]` -/
def P1932846188015645617.Spec : Prop :=
  ∀ n, P1932846188015645617.a n = (A140222 (n + 1) : ℚ)

end A140222

/-! ## A140222.P3101365415134879310

`eq[2, ∏{e}[A006218(n), #+1]]`
-/

namespace A140222.P3101365415134879310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140222.P3101365415134879310

namespace A140222

/-- `eq[2, ∏{e}[A006218(n), #+1]]` -/
def P3101365415134879310.Spec : Prop :=
  ∀ n, (P3101365415134879310.a n : ℤ) = A140222 (n + 1)

end A140222

/-! ## A140222.P674074551879322644

`eq[4, A323161(A054519(n))]`
-/

namespace A140222.P674074551879322644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (A054519 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140222.P674074551879322644

namespace A140222

/-- `eq[4, A323161(A054519(n))]` -/
def P674074551879322644.Spec : Prop :=
  ∀ n, (P674074551879322644.a n : ℤ) = A140222 (n + 1)

end A140222

/-! ## A140222.P12350778698455711477

`eq[2, A000005(∑[A000005(n+1)])]+1`
-/

namespace A140222.P12350778698455711477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A140222.P12350778698455711477

namespace A140222

/-- `eq[2, A000005(∑[A000005(n+1)])]+1` -/
def P12350778698455711477.Spec : Prop :=
  ∀ n, (P12350778698455711477.a n : ℤ) = A140222 (n + 1)

end A140222

/-! ## A140222.P3242497931139661912

`lt[A107393(A006218(n)), 0]`
-/

namespace A140222.P3242497931139661912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A006218 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A140222.P3242497931139661912

namespace A140222

/-- `lt[A107393(A006218(n)), 0]` -/
def P3242497931139661912.Spec : Prop :=
  ∀ n, (P3242497931139661912.a n : ℤ) = A140222 (n + 1)

end A140222

/-! ## A140222.P10605468567963264034

`A275055(p?[∑[∏{e}[n+1, #+1]]])`
-/

namespace A140222.P10605468567963264034
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275055 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A140222.P10605468567963264034

namespace A140222

/-- `A275055(p?[∑[∏{e}[n+1, #+1]]])` -/
def P10605468567963264034.Spec : Prop :=
  ∀ n, P10605468567963264034.a n = A140222 (n + 1)

end A140222

/-! ## A140222.P1830618480753878516

`A275055(p?[∏{e}[n, #+1]+a(n-1)])` with `a(0)=0`
-/

namespace A140222.P1830618480753878516
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275055 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A140222.P1830618480753878516

namespace A140222

/-- `A275055(p?[∏{e}[n, #+1]+a(n-1)])` -/
def P1830618480753878516.Spec : Prop :=
  ∀ n, P1830618480753878516.a n = A140222 (n + 1)

end A140222

/-! ## A140222.P7990600654418629749

`A275055(p?[A006218(n)])`
-/

namespace A140222.P7990600654418629749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275055 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A140222.P7990600654418629749

namespace A140222

/-- `A275055(p?[A006218(n)])` -/
def P7990600654418629749.Spec : Prop :=
  ∀ n, P7990600654418629749.a n = A140222 (n + 1)

end A140222

/-! ## A140222.P7028128167351325706

`A275055(p?[∑[A000005(n+1)]])`
-/

namespace A140222.P7028128167351325706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275055 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A140222.P7028128167351325706

namespace A140222

/-- `A275055(p?[∑[A000005(n+1)]])` -/
def P7028128167351325706.Spec : Prop :=
  ∀ n, P7028128167351325706.a n = A140222 (n + 1)

end A140222

/-! ## A140222.P6660183050605612046

`A275055(p?[∑[A032741(n)]+n])`
-/

namespace A140222.P6660183050605612046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275055 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A140222.P6660183050605612046

namespace A140222

/-- `A275055(p?[∑[A032741(n)]+n])` -/
def P6660183050605612046.Spec : Prop :=
  ∀ n, P6660183050605612046.a n = A140222 (n + 1)

end A140222

/-! ## A140222.P12841058122075747356

`A275055(p?[A000005(n)+a(n-1)])` with `a(0)=0`
-/

namespace A140222.P12841058122075747356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000005 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275055 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A140222.P12841058122075747356

namespace A140222

/-- `A275055(p?[A000005(n)+a(n-1)])` -/
def P12841058122075747356.Spec : Prop :=
  ∀ n, P12841058122075747356.a n = A140222 (n + 1)

end A140222

/-! ## A140222.P11939353241644553990

`A275055(p?[∑[1-A049820(n+1)+n]])`
-/

namespace A140222.P11939353241644553990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A049820 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275055 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A140222.P11939353241644553990

namespace A140222

/-- `A275055(p?[∑[1-A049820(n+1)+n]])` -/
def P11939353241644553990.Spec : Prop :=
  ∀ n, P11939353241644553990.a n = A140222 (n + 1)

end A140222

/-! ## A140222.P1550576598275385507

`A275055(p?[A257644(n)-A160664(n)])`
-/

namespace A140222.P1550576598275385507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257644 n - A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275055 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A140222.P1550576598275385507

namespace A140222

/-- `A275055(p?[A257644(n)-A160664(n)])` -/
def P1550576598275385507.Spec : Prop :=
  ∀ n, P1550576598275385507.a n = A140222 (n + 1)

end A140222

/-! ## A140222.P10212837564330054543

`A275055(p?[A049820(n+1)+A002541(n+1)])`
-/

namespace A140222.P10212837564330054543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + A002541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275055 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A140222.P10212837564330054543

namespace A140222

/-- `A275055(p?[A049820(n+1)+A002541(n+1)])` -/
def P10212837564330054543.Spec : Prop :=
  ∀ n, P10212837564330054543.a n = A140222 (n + 1)

end A140222

/-! ## A140222.P4550046916000054527

`record[-A233773(A000040(n+2))]`
-/

namespace A140222.P4550046916000054527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A233773 (A000040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140222.P4550046916000054527

namespace A140222

/-- `record[-A233773(A000040(n+2))]` -/
def P4550046916000054527.Spec : Prop :=
  ∀ n, P4550046916000054527.a n = A140222 (n + 1)

end A140222

/-! ## A140222.P7431322683427996295

`A027750(p?[∑[A000005(n+1)]])`
-/

namespace A140222.P7431322683427996295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A140222.P7431322683427996295

namespace A140222

/-- `A027750(p?[∑[A000005(n+1)]])` -/
def P7431322683427996295.Spec : Prop :=
  ∀ n, P7431322683427996295.a n = A140222 (n + 1)

end A140222

/-! ## A140222.P15218321292076231335

`A027750(p?[A000005(n)+a(n-1)])` with `a(0)=0`
-/

namespace A140222.P15218321292076231335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000005 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A140222.P15218321292076231335

namespace A140222

/-- `A027750(p?[A000005(n)+a(n-1)])` -/
def P15218321292076231335.Spec : Prop :=
  ∀ n, P15218321292076231335.a n = A140222 (n + 1)

end A140222

/-!
# A140223: Triangle: Row n contains (d(1),d(2),...,d(n)) in non-descending order, where d(n) = A000005(n).

The programs for A140223, there is no canonical definition to state claims against.
-/

/-! ## A140223.P15129346886757607311

`A000005(A119585(n+1))`
-/

namespace A140223.P15129346886757607311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A119585 (n + 1)).toNat

end

end A140223.P15129346886757607311

/-! ## A140223.P15425246189161386924

`A046951(A119585(n+1)²)`
-/

namespace A140223.P15425246189161386924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A119585 (n + 1) ^ 2).toNat

end

end A140223.P15425246189161386924

/-! ## A140223.P17909179788480108210

`A322483(A119585(n+1)²)`
-/

namespace A140223.P17909179788480108210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A119585 (n + 1) ^ 2).toNat

end

end A140223.P17909179788480108210

/-! ## A140223.P2194614576060826111

`A112329(4*A119585(n+1))`
-/

namespace A140223.P2194614576060826111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (4 * A119585 (n + 1)).toNat

end

end A140223.P2194614576060826111

/-! ## A140223.P15384406689639851784

`A345936(7*A119585(n+1))`
-/

namespace A140223.P15384406689639851784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345936 (7 * A119585 (n + 1)).toNat

end

end A140223.P15384406689639851784

/-! ## A140223.P7286231396146884682

`A305149(2^A119585(n+1))`
-/

namespace A140223.P7286231396146884682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305149 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A119585 (n + 1) : ℤ))).toNat

end

end A140223.P7286231396146884682

/-! ## A140223.P9550397247234626006

`∑{d}[A119585(n+1), A016168(#)]`
-/

namespace A140223.P9550397247234626006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A016168 d

end

end A140223.P9550397247234626006

/-! ## A140223.P11562079731379612750

`∑{d}[A119585(n+1), A054977(#)]`
-/

namespace A140223.P11562079731379612750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054977 d

end

end A140223.P11562079731379612750

/-! ## A140223.P4890311164321310752

`∑{d}[A119585(n+1), A056059(#)]`
-/

namespace A140223.P4890311164321310752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056059 d

end

end A140223.P4890311164321310752

/-! ## A140223.P12241039696760392900

`∑{d}[A119585(n+1), A057427(#)]`
-/

namespace A140223.P12241039696760392900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A140223.P12241039696760392900

/-!
# A140224: Triangle: T(n,m) is number of m's among (d(1),d(2),...,d(n)), where d(n) = A000005(n).

The programs for A140224, there is no canonical definition to state claims against.
-/

/-! ## A140224.P9044562656468659087

`A075993(A028310(n))^A260340(n)`
-/

namespace A140224.P9044562656468659087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075993 (A028310 n).toNat : ℚ) ^ (A260340 n : ℤ)

end

end A140224.P9044562656468659087

/-! ## A140224.P8380484805378189714

`A075993(A028310(n))^A288972(n)`
-/

namespace A140224.P8380484805378189714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075993 (A028310 n).toNat : ℚ) ^ (A288972 n : ℤ)

end

end A140224.P8380484805378189714

/-! ## A140224.P4335767341132061385

`A075993(A028310(n))^A004248(n)²`
-/

namespace A140224.P4335767341132061385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075993 (A028310 n).toNat : ℚ) ^ (A004248 n ^ 2 : ℤ)

end

end A140224.P4335767341132061385

/-! ## A140224.P13946223735367618082

`A075993(A028310(n))^A010176(n)²`
-/

namespace A140224.P13946223735367618082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075993 (A028310 n).toNat : ℚ) ^ (A010176 n ^ 2 : ℤ)

end

end A140224.P13946223735367618082

/-! ## A140224.P5005167448339978172

`A075993(A151878(3*n+1)+A028310(n))`
-/

namespace A140224.P5005167448339978172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075993 (A151878 (3 * n + 1) + A028310 n).toNat

end

end A140224.P5005167448339978172

/-!
# A140225: a(n) = number of m's among (d(1),d(2),...,d(n)), where m is the maximum value of (d(1),d(2),...,d(n)) and d(n) is the number of divisors of n.

The programs for A140225, there is no canonical definition to state claims against.
-/

/-! ## A140225.P2667630670396291527

`A067004(A329004(n+1))`
-/

namespace A140225.P2667630670396291527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (A329004 (n + 1)).toNat

end

end A140225.P2667630670396291527

/-! ## A140225.P3639770663988118428

`A138009(A329004(n+1)+A000007(n))`
-/

namespace A140225.P3639770663988118428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138009 (A329004 (n + 1) + A000007 n).toNat

end

end A140225.P3639770663988118428

/-!
# A140226: Binomial transform of [1, 3, 3, 1, 1, -1, 1, -1, 1, ...].

The programs for A140226, the canonical program `A140226.P8310404171085745994` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140226 has offset 0).

The definition of A140226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140226.P6882852698758201369

`∑[∑[comp[2*(n+2)]+1]]`
-/

namespace A140226.P6882852698758201369
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140226.P6882852698758201369

namespace A140226

/-- `∑[∑[comp[2*(n+2)]+1]]` -/
def P6882852698758201369.Spec : Prop :=
  ∀ n, (P6882852698758201369.a n : ℤ) = A140226 n

end A140226

/-! ## A140226.P8310404171085745994

`4-n+a(n-1)+n²` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A140226

/-- `4-n+a(n-1)+n²` -/
def P8310404171085745994.Spec : Prop :=
  ∀ n, P8310404171085745994.a n = A140226 n

theorem P8310404171085745994.correct : P8310404171085745994.Spec := by
  intro n
  simp only [A140226]

end A140226

/-! ## A140226.P14150027043714793091

`4-(n-a(n-1)-n²)` with `a(0)=1, a(1)=4`
-/

namespace A140226.P14150027043714793091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 - ((n : ℤ) - a (n - 1) - (n ^ 2 : ℤ))

end

end A140226.P14150027043714793091

namespace A140226

/-- `4-(n-a(n-1)-n²)` -/
def P14150027043714793091.Spec : Prop :=
  ∀ n, P14150027043714793091.a n = A140226 n

theorem P14150027043714793091.correct : P14150027043714793091.Spec := by
  intro n
  simp only [A140226, Nat.add_sub_cancel, A140226.P14150027043714793091.a, A140226.P8310404171085745994.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A140226

/-! ## A140226.P8578108556665796377

`a(n-1)+n*(n-1)+4` with `a(0)=1, a(1)=4`
-/

namespace A140226.P8578108556665796377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + ((n : ℤ) * ((n : ℤ) - 1) + 4)

end

end A140226.P8578108556665796377

namespace A140226

/-- `a(n-1)+n*(n-1)+4` -/
def P8578108556665796377.Spec : Prop :=
  ∀ n, P8578108556665796377.a n = A140226 n

end A140226

/-! ## A140226.P9350078924991510936

`4-(n*(1-n)-a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A140226.P9350078924991510936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 - ((n : ℤ) * (1 - (n : ℤ)) - a (n - 1))

end

end A140226.P9350078924991510936

namespace A140226

/-- `4-(n*(1-n)-a(n-1))` -/
def P9350078924991510936.Spec : Prop :=
  ∀ n, P9350078924991510936.a n = A140226 n

theorem P9350078924991510936.correct : P9350078924991510936.Spec := by
  intro n
  simp only [A140226, Nat.add_sub_cancel, A140226.P9350078924991510936.a, A140226.P8310404171085745994.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A140226

/-! ## A140226.P16947107199413222873

`∑[∑[A092535(n)]]+n`
-/

namespace A140226.P16947107199413222873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A140226.P16947107199413222873

namespace A140226

/-- `∑[∑[A092535(n)]]+n` -/
def P16947107199413222873.Spec : Prop :=
  ∀ n, P16947107199413222873.a n = A140226 n

end A140226

/-! ## A140226.P1347976006684928958

`∑[2*n]+A004277(n)+2*C(n, 3)`
-/

namespace A140226.P1347976006684928958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A004277 n + (2 * Nat.choose n 3 : ℤ))

end

end A140226.P1347976006684928958

namespace A140226

/-- `∑[2*n]+A004277(n)+2*C(n, 3)` -/
def P1347976006684928958.Spec : Prop :=
  ∀ n, P1347976006684928958.a n = A140226 n

end A140226

/-! ## A140226.P13194440473505654464

`A008486(n)+A006527(n)`
-/

namespace A140226.P13194440473505654464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A006527 n

end

end A140226.P13194440473505654464

namespace A140226

/-- `A008486(n)+A006527(n)` -/
def P13194440473505654464.Spec : Prop :=
  ∀ n, P13194440473505654464.a n = A140226 n

end A140226

/-! ## A140226.P13149861022127996976

`A033547(n)+A004277(n)`
-/

namespace A140226.P13149861022127996976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033547 n + A004277 n

end

end A140226.P13149861022127996976

namespace A140226

/-- `A033547(n)+A004277(n)` -/
def P13149861022127996976.Spec : Prop :=
  ∀ n, P13149861022127996976.a n = A140226 n

end A140226

/-! ## A140226.P13936416803395757521

`A008487(n)-A006003(n)`
-/

namespace A140226.P13936416803395757521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008487 n - A006003 n

end

end A140226.P13936416803395757521

namespace A140226

/-- `A008487(n)-A006003(n)` -/
def P13936416803395757521.Spec : Prop :=
  ∀ n, P13936416803395757521.a n = A140226 n

end A140226

/-! ## A140226.P10470283473543737362

`A288534(n)-A004466(n)`
-/

namespace A140226.P10470283473543737362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288534 n - A004466 n

end

end A140226.P10470283473543737362

namespace A140226

/-- `A288534(n)-A004466(n)` -/
def P10470283473543737362.Spec : Prop :=
  ∀ n, P10470283473543737362.a n = A140226 n

end A140226

/-! ## A140226.P7960056946460162701

`A283551(n)+A201347(n+1)`
-/

namespace A140226.P7960056946460162701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283551 n + A201347 (n + 1)

end

end A140226.P7960056946460162701

namespace A140226

/-- `A283551(n)+A201347(n+1)` -/
def P7960056946460162701.Spec : Prop :=
  ∀ n, P7960056946460162701.a n = A140226 n

end A140226

/-! ## A140226.P5054855818834590566

`A217748(n+3)+A007290(n)`
-/

namespace A140226.P5054855818834590566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217748 (n + 3) + A007290 n

end

end A140226.P5054855818834590566

namespace A140226

/-- `A217748(n+3)+A007290(n)` -/
def P5054855818834590566.Spec : Prop :=
  ∀ n, P5054855818834590566.a n = A140226 n

end A140226

/-! ## A140226.P3840918511426139356

`A004277(n)+2*A004006(n)`
-/

namespace A140226.P3840918511426139356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + 2 * A004006 n

end

end A140226.P3840918511426139356

namespace A140226

/-- `A004277(n)+2*A004006(n)` -/
def P3840918511426139356.Spec : Prop :=
  ∀ n, P3840918511426139356.a n = A140226 n

end A140226

/-! ## A140226.P3367744541595574788

`A004277(n)+A006527(n)+n`
-/

namespace A140226.P3367744541595574788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (A006527 n + (n : ℤ))

end

end A140226.P3367744541595574788

namespace A140226

/-- `A004277(n)+A006527(n)+n` -/
def P3367744541595574788.Spec : Prop :=
  ∀ n, P3367744541595574788.a n = A140226 n

end A140226

/-! ## A140226.P10662822709723916393

`A008486(n)+A033547(n)-n`
-/

namespace A140226.P10662822709723916393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A033547 n - (n : ℤ))

end

end A140226.P10662822709723916393

namespace A140226

/-- `A008486(n)+A033547(n)-n` -/
def P10662822709723916393.Spec : Prop :=
  ∀ n, P10662822709723916393.a n = A140226 n

end A140226

/-! ## A140226.P16995171355892619038

`A008486(n)+∑[∑[A004275(n)]]`
-/

namespace A140226.P16995171355892619038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140226.P16995171355892619038

namespace A140226

/-- `A008486(n)+∑[∑[A004275(n)]]` -/
def P16995171355892619038.Spec : Prop :=
  ∀ n, P16995171355892619038.a n = A140226 n

end A140226

/-! ## A140226.P5347895510868139217

`(2-A000007(n))*∑[A238531(n)]`
-/

namespace A140226.P5347895510868139217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140226.P5347895510868139217

namespace A140226

/-- `(2-A000007(n))*∑[A238531(n)]` -/
def P5347895510868139217.Spec : Prop :=
  ∀ n, P5347895510868139217.a n = A140226 n

end A140226

/-! ## A140226.P259959658339224572

`∑[A002061(n)]+A004273(n)+n`
-/

namespace A140226.P259959658339224572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A004273 n + (n : ℤ))

end

end A140226.P259959658339224572

namespace A140226

/-- `∑[A002061(n)]+A004273(n)+n` -/
def P259959658339224572.Spec : Prop :=
  ∀ n, P259959658339224572.a n = A140226 n

end A140226

/-! ## A140226.P7329322237406885891

`∑[n]+A027379(n)+A007290(n)`
-/

namespace A140226.P7329322237406885891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A027379 n + A007290 n)

end

end A140226.P7329322237406885891

namespace A140226

/-- `∑[n]+A027379(n)+A007290(n)` -/
def P7329322237406885891.Spec : Prop :=
  ∀ n, P7329322237406885891.a n = A140226 n

end A140226

/-!
# A140227: Binomial transform of [1, 4, 6, 4, 1, 1, -1, 1, -1, 1, ...].

The programs for A140227, the canonical program `A140227.P15039973297700042189` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140227 has offset 1).

The definition of A140227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140227.P9123281207712669353

`∑[∑[∑[comp[2*n+5]+1]]]`
-/

namespace A140227.P9123281207712669353
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140227.P9123281207712669353

namespace A140227

/-- `∑[∑[∑[comp[2*n+5]+1]]]` -/
def P9123281207712669353.Spec : Prop :=
  ∀ n, (P9123281207712669353.a n : ℤ) = A140227 (n + 1)

end A140227

/-! ## A140227.P15039973297700042189

`A005918(n)+A002415(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140227

/-- `A005918(n)+A002415(n)` -/
def P15039973297700042189.Spec : Prop :=
  ∀ n, P15039973297700042189.a n = A140227 (n + 1)

theorem P15039973297700042189.correct : P15039973297700042189.Spec := by
  intro n
  simp only [A140227, Nat.add_sub_cancel]

end A140227

/-! ## A140227.P3451282647983681867

`A006008(n)+A005893(n)`
-/

namespace A140227.P3451282647983681867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006008 n + A005893 n

end

end A140227.P3451282647983681867

namespace A140227

/-- `A006008(n)+A005893(n)` -/
def P3451282647983681867.Spec : Prop :=
  ∀ n, P3451282647983681867.a n = A140227 (n + 1)

end A140227

/-! ## A140227.P8909113264347232246

`A002415(n)+∑[A270545(n)]`
-/

namespace A140227.P8909113264347232246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140227.P8909113264347232246

namespace A140227

/-- `A002415(n)+∑[A270545(n)]` -/
def P8909113264347232246.Spec : Prop :=
  ∀ n, P8909113264347232246.a n = A140227 (n + 1)

end A140227

/-! ## A140227.P8901948351103437445

`A005918(n)+A006011(n)/3`
-/

namespace A140227.P8901948351103437445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005918 n : ℚ) + (A006011 n : ℚ) / 3

end

end A140227.P8901948351103437445

namespace A140227

/-- `A005918(n)+A006011(n)/3` -/
def P8901948351103437445.Spec : Prop :=
  ∀ n, P8901948351103437445.a n = (A140227 (n + 1) : ℚ)

end A140227

/-! ## A140227.P7493002213719451989

`A010000(2*n)+A002415(n)-n²`
-/

namespace A140227.P7493002213719451989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 (2 * n) + (A002415 n - (n ^ 2 : ℤ))

end

end A140227.P7493002213719451989

namespace A140227

/-- `A010000(2*n)+A002415(n)-n²` -/
def P7493002213719451989.Spec : Prop :=
  ∀ n, P7493002213719451989.a n = A140227 (n + 1)

end A140227

/-! ## A140227.P11913031429639487794

`A026491(n²)+A006008(n)`
-/

namespace A140227.P11913031429639487794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (n ^ 2) + A006008 n

end

end A140227.P11913031429639487794

namespace A140227

/-- `A026491(n²)+A006008(n)` -/
def P11913031429639487794.Spec : Prop :=
  ∀ n, P11913031429639487794.a n = A140227 (n + 1)

end A140227

/-!
# A140228: Binomial transform of [1, 5, 10, 10, 5, 1, 1, -1, 1, -1, 1, ...].

The programs for A140228, the canonical program `A140228.P395581750922971096` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140228 has offset 0).

The definition of A140228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140228.P6830689863325247505

`A337895(n+1)-A002415(A289207(n))`
-/

namespace A140228.P6830689863325247505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337895 (n + 1) - A002415 (A289207 n).toNat

end

end A140228.P6830689863325247505

namespace A140228

/-- `A337895(n+1)-A002415(A289207(n))` -/
def P6830689863325247505.Spec : Prop :=
  ∀ n, P6830689863325247505.a n = A140228 n

end A140228

/-! ## A140228.P395581750922971096

`A059174(n)+A132366(n)-A000125(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A140228

/-- `A059174(n)+A132366(n)-A000125(n)` -/
def P395581750922971096.Spec : Prop :=
  ∀ n, P395581750922971096.a n = A140228 n

theorem P395581750922971096.correct : P395581750922971096.Spec := by
  intro n
  simp only [A140228]

end A140228

/-! ## A140228.P3624264811562665611

`A008498(n)+A059174(n)-A000127(n+1)`
-/

namespace A140228.P3624264811562665611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008498 n + (A059174 n - A000127 (n + 1))

end

end A140228.P3624264811562665611

namespace A140228

/-- `A008498(n)+A059174(n)-A000127(n+1)` -/
def P3624264811562665611.Spec : Prop :=
  ∀ n, P3624264811562665611.a n = A140228 n

end A140228

/-! ## A140228.P18175860455483298584

`Δ[A040977(n)-A008489(n)]`
-/

namespace A140228.P18175860455483298584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040977 n - A008489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140228.P18175860455483298584

namespace A140228

/-- `Δ[A040977(n)-A008489(n)]` -/
def P18175860455483298584.Spec : Prop :=
  ∀ n, P18175860455483298584.a n = A140228 n

end A140228

/-! ## A140228.P8862445708615561412

`A000389(n+5)+A000389(A028310(n)-1)`
-/

namespace A140228.P8862445708615561412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 5) + A000389 (A028310 n - 1).toNat

end

end A140228.P8862445708615561412

namespace A140228

/-- `A000389(n+5)+A000389(A028310(n)-1)` -/
def P8862445708615561412.Spec : Prop :=
  ∀ n, P8862445708615561412.a n = A140228 n

end A140228

/-! ## A140228.P6445777720808353788

`A000389(n+5)+A059174(n)-A006261(n)`
-/

namespace A140228.P6445777720808353788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 5) + (A059174 n - A006261 n)

end

end A140228.P6445777720808353788

namespace A140228

/-- `A000389(n+5)+A059174(n)-A006261(n)` -/
def P6445777720808353788.Spec : Prop :=
  ∀ n, P6445777720808353788.a n = A140228 n

end A140228

/-!
# A140229: Binomial transform of [1, 3, 3, 1, -2, 3, -4, 5, ...].

The programs for A140229, the canonical program `A140229.P15154534900449768874` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140229 has offset 1).

The definition of A140229 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140229.P15154534900449768874

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=20, a(4)=33`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A140229

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P15154534900449768874.Spec : Prop :=
  ∀ n, P15154534900449768874.a n = A140229 (n + 1)

theorem P15154534900449768874.correct : P15154534900449768874.Spec := by
  intro n
  simp only [A140229, Nat.add_sub_cancel]

end A140229

/-! ## A140229.P18262854495682226278

`floor(∑[3*n+1]-atan(n))`
-/

namespace A140229.P18262854495682226278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.arctan (n : ℝ)⌋

end

end A140229.P18262854495682226278

namespace A140229

/-- `floor(∑[3*n+1]-atan(n))` -/
def P18262854495682226278.Spec : Prop :=
  ∀ n, P18262854495682226278.a n = A140229 (n + 1)

end A140229

/-! ## A140229.P11801151620224659530

`∑[3*n+1]-ceil(atan(n))`
-/

namespace A140229.P11801151620224659530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌈Real.arctan (n : ℝ)⌉

end

end A140229.P11801151620224659530

namespace A140229

/-- `∑[3*n+1]-ceil(atan(n))` -/
def P11801151620224659530.Spec : Prop :=
  ∀ n, P11801151620224659530.a n = A140229 (n + 1)

end A140229

/-! ## A140229.P59881239851538563

`∑[a(n-1)+3]` with `a(0)=1, a(1)=3, a(2)=6, a(3)=10`
-/

namespace A140229.P59881239851538563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6, 10] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140229.P59881239851538563

namespace A140229

/-- `∑[a(n-1)+3]` -/
def P59881239851538563.Spec : Prop :=
  ∀ n, (P59881239851538563.a n : ℤ) = A140229 (n + 1)

end A140229

/-! ## A140229.P7227529835717754877

`∑[3*n]+abs(n-(char[1]+1))`
-/

namespace A140229.P7227529835717754877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + |(n : ℤ) - (((if ∃ j, f2 j = n then 1 else 0) + 1 : ℕ) : ℤ)|

end

end A140229.P7227529835717754877

namespace A140229

/-- `∑[3*n]+abs(n-(char[1]+1))` -/
def P7227529835717754877.Spec : Prop :=
  ∀ n, P7227529835717754877.a n = A140229 (n + 1)

end A140229

/-! ## A140229.P7414108166128848780

`∑[A179184(n)+3*n]`
-/

namespace A140229.P7414108166128848780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 n + (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140229.P7414108166128848780

namespace A140229

/-- `∑[A179184(n)+3*n]` -/
def P7414108166128848780.Spec : Prop :=
  ∀ n, P7414108166128848780.a n = A140229 (n + 1)

end A140229

/-! ## A140229.P8995185039676160839

`∑[3*n+1-A171386(n+1)]`
-/

namespace A140229.P8995185039676160839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - A171386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140229.P8995185039676160839

namespace A140229

/-- `∑[3*n+1-A171386(n+1)]` -/
def P8995185039676160839.Spec : Prop :=
  ∀ n, P8995185039676160839.a n = A140229 (n + 1)

end A140229

/-! ## A140229.P17651748149708449500

`∑[A326178(n)+A004277(n)]`
-/

namespace A140229.P17651748149708449500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 n + A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140229.P17651748149708449500

namespace A140229

/-- `∑[A326178(n)+A004277(n)]` -/
def P17651748149708449500.Spec : Prop :=
  ∀ n, P17651748149708449500.a n = A140229 (n + 1)

end A140229

/-! ## A140229.P16234787462274589034

`∑[A028310(n)+A326178(n)+n]`
-/

namespace A140229.P16234787462274589034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A326178 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140229.P16234787462274589034

namespace A140229

/-- `∑[A028310(n)+A326178(n)+n]` -/
def P16234787462274589034.Spec : Prop :=
  ∀ n, P16234787462274589034.a n = A140229 (n + 1)

end A140229

/-! ## A140229.P8352762727975437627

`∑[lt[A020639(n+1), 3]+A055495(n+1)-2]`
-/

namespace A140229.P8352762727975437627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ) + (A055495 (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140229.P8352762727975437627

namespace A140229

/-- `∑[lt[A020639(n+1), 3]+A055495(n+1)-2]` -/
def P8352762727975437627.Spec : Prop :=
  ∀ n, P8352762727975437627.a n = A140229 (n + 1)

end A140229

/-! ## A140229.P1146937454715866507

`∑[Δ[A082562(n)]+n]`
-/

namespace A140229.P1146937454715866507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082562 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140229.P1146937454715866507

namespace A140229

/-- `∑[Δ[A082562(n)]+n]` -/
def P1146937454715866507.Spec : Prop :=
  ∀ n, P1146937454715866507.a n = A140229 (n + 1)

end A140229

/-! ## A140229.P6502382152646507552

`∑[A032766(Δ[A082562(n)])]`
-/

namespace A140229.P6502382152646507552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082562 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140229.P6502382152646507552

namespace A140229

/-- `∑[A032766(Δ[A082562(n)])]` -/
def P6502382152646507552.Spec : Prop :=
  ∀ n, P6502382152646507552.a n = A140229 (n + 1)

end A140229

/-! ## A140229.P17981523252271332833

`∑[2*n+1-C(2*n+1, A000045(n+3))+n]`
-/

namespace A140229.P17981523252271332833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (Nat.choose (2 * n + 1) (A000045 (n + 3)).toNat : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140229.P17981523252271332833

namespace A140229

/-- `∑[2*n+1-C(2*n+1, A000045(n+3))+n]` -/
def P17981523252271332833.Spec : Prop :=
  ∀ n, P17981523252271332833.a n = A140229 (n + 1)

end A140229

/-! ## A140229.P11433648294369044366

`∑[2*n+and(1, A239678(n))+n]`
-/

namespace A140229.P11433648294369044366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (Int.land 1 (A239678 n) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140229.P11433648294369044366

namespace A140229

/-- `∑[2*n+and(1, A239678(n))+n]` -/
def P11433648294369044366.Spec : Prop :=
  ∀ n, P11433648294369044366.a n = A140229 (n + 1)

end A140229

/-! ## A140229.P17813382277238997909

`record[A060734(n+1)+n-ceil(atan(n))]`
-/

namespace A140229.P17813382277238997909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060734 (n + 1) + ((n : ℤ) - ⌈Real.arctan (n : ℝ)⌉)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140229.P17813382277238997909

namespace A140229

/-- `record[A060734(n+1)+n-ceil(atan(n))]` -/
def P17813382277238997909.Spec : Prop :=
  ∀ n, P17813382277238997909.a n = A140229 (n + 1)

end A140229

/-! ## A140229.P8930031676748380183

`ceil(∑[log2(A083849(3*n+1))])`
-/

namespace A140229.P8930031676748380183
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A083849 (3 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A140229.P8930031676748380183

namespace A140229

/-- `ceil(∑[log2(A083849(3*n+1))])` -/
def P8930031676748380183.Spec : Prop :=
  ∀ n, P8930031676748380183.a n = A140229 (n + 1)

end A140229

/-!
# A140230: Binomial transform of [1, 2, -3, -4, 5, 6, -7, -8, 9, 10, ...].

The programs for A140230, the canonical program `A140230.P94800940916380077` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140230 has offset 1).

The definition of A140230 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140230.P94800940916380077

`4*a(n-1)-8*a(n-2)+8*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=3, a(2)=2, a(3)=-6`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A140230

/-- `4*a(n-1)-8*a(n-2)+8*a(n-3)-4*a(n-4)` -/
def P94800940916380077.Spec : Prop :=
  ∀ n, P94800940916380077.a n = A140230 (n + 1)

theorem P94800940916380077.correct : P94800940916380077.Spec := by
  intro n
  simp only [A140230, Nat.add_sub_cancel]

end A140230

/-! ## A140230.P5657418671537221968

`Δ[A316386(n)]`
-/

namespace A140230.P5657418671537221968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140230.P5657418671537221968

namespace A140230

/-- `Δ[A316386(n)]` -/
def P5657418671537221968.Spec : Prop :=
  ∀ n, P5657418671537221968.a n = A140230 (n + 1)

end A140230

/-! ## A140230.P8739255646540519984

`Δ[n*A009545(n)]`
-/

namespace A140230.P8739255646540519984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A009545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140230.P8739255646540519984

namespace A140230

/-- `Δ[n*A009545(n)]` -/
def P8739255646540519984.Spec : Prop :=
  ∀ n, P8739255646540519984.a n = A140230 (n + 1)

end A140230

/-! ## A140230.P17417872265079730987

`Δ[n*A138231(2*n)]`
-/

namespace A140230.P17417872265079730987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A138231 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140230.P17417872265079730987

namespace A140230

/-- `Δ[n*A138231(2*n)]` -/
def P17417872265079730987.Spec : Prop :=
  ∀ n, P17417872265079730987.a n = A140230 (n + 1)

end A140230

/-! ## A140230.P7978933317019126019

`Δ[n*A138232(2*n+1)]`
-/

namespace A140230.P7978933317019126019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A138232 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140230.P7978933317019126019

namespace A140230

/-- `Δ[n*A138232(2*n+1)]` -/
def P7978933317019126019.Spec : Prop :=
  ∀ n, P7978933317019126019.a n = A140230 (n + 1)

end A140230

/-! ## A140230.P14593769053016749948

`A316386(n+1)-A316386(n)`
-/

namespace A140230.P14593769053016749948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316386 (n + 1) - A316386 n

end

end A140230.P14593769053016749948

namespace A140230

/-- `A316386(n+1)-A316386(n)` -/
def P14593769053016749948.Spec : Prop :=
  ∀ n, P14593769053016749948.a n = A140230 (n + 1)

end A140230

/-! ## A140230.P14770859186800130167

`A016116(n)*A189442(n+1)`
-/

namespace A140230.P14770859186800130167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A189442 (n + 1)

end

end A140230.P14770859186800130167

namespace A140230

/-- `A016116(n)*A189442(n+1)` -/
def P14770859186800130167.Spec : Prop :=
  ∀ n, P14770859186800130167.a n = A140230 (n + 1)

end A140230

/-! ## A140230.P5550745381885140012

`A099087(n)+n*A146559(n)`
-/

namespace A140230.P5550745381885140012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n + (n : ℤ) * A146559 n

end

end A140230.P5550745381885140012

namespace A140230

/-- `A099087(n)+n*A146559(n)` -/
def P5550745381885140012.Spec : Prop :=
  ∀ n, P5550745381885140012.a n = A140230 (n + 1)

end A140230

/-! ## A140230.P5984404340662139454

`Δ[n*A016116(n)*A046978(n)]`
-/

namespace A140230.P5984404340662139454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A016116 n * A046978 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140230.P5984404340662139454

namespace A140230

/-- `Δ[n*A016116(n)*A046978(n)]` -/
def P5984404340662139454.Spec : Prop :=
  ∀ n, P5984404340662139454.a n = A140230 (n + 1)

end A140230

/-! ## A140230.P291724401814756255

`A009545(n+1)+n*A146559(n)`
-/

namespace A140230.P291724401814756255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (n + 1) + (n : ℤ) * A146559 n

end

end A140230.P291724401814756255

namespace A140230

/-- `A009545(n+1)+n*A146559(n)` -/
def P291724401814756255.Spec : Prop :=
  ∀ n, P291724401814756255.a n = A140230 (n + 1)

end A140230

/-! ## A140230.P14099040138052962866

`Δ[n*(A146559(n)-A146559(n+1))]`
-/

namespace A140230.P14099040138052962866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A146559 n - A146559 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140230.P14099040138052962866

namespace A140230

/-- `Δ[n*(A146559(n)-A146559(n+1))]` -/
def P14099040138052962866.Spec : Prop :=
  ∀ n, P14099040138052962866.a n = A140230 (n + 1)

end A140230

/-! ## A140230.P2210109569283182407

`A000079(A004526(n))*A189442(n+1)`
-/

namespace A140230.P2210109569283182407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004526 n).toNat * A189442 (n + 1)

end

end A140230.P2210109569283182407

namespace A140230

/-- `A000079(A004526(n))*A189442(n+1)` -/
def P2210109569283182407.Spec : Prop :=
  ∀ n, P2210109569283182407.a n = A140230 (n + 1)

end A140230

/-! ## A140230.P9147649259251735608

`A138231(2*n+1)*A259445(n+2)-A146559(n+1)`
-/

namespace A140230.P9147649259251735608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138231 (2 * n + 1) * A259445 (n + 2) - A146559 (n + 1)

end

end A140230.P9147649259251735608

namespace A140230

/-- `A138231(2*n+1)*A259445(n+2)-A146559(n+1)` -/
def P9147649259251735608.Spec : Prop :=
  ∀ n, P9147649259251735608.a n = A140230 (n + 1)

end A140230

/-! ## A140230.P922629264281028655

`Δ[n*∑[A038504(n)-A038505(n)]]`
-/

namespace A140230.P922629264281028655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 n - A038505 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140230.P922629264281028655

namespace A140230

/-- `Δ[n*∑[A038504(n)-A038505(n)]]` -/
def P922629264281028655.Spec : Prop :=
  ∀ n, P922629264281028655.a n = A140230 (n + 1)

end A140230

/-! ## A140230.P11268783737493583835

`Δ[n*(A038504(n)-Δ[A038503(n)])]`
-/

namespace A140230.P11268783737493583835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A038504 n - (f2 (n + 1) - f2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140230.P11268783737493583835

namespace A140230

/-- `Δ[n*(A038504(n)-Δ[A038503(n)])]` -/
def P11268783737493583835.Spec : Prop :=
  ∀ n, P11268783737493583835.a n = A140230 (n + 1)

end A140230

/-! ## A140230.P13881575199447365232

`Δ[n*Δ[A038505(n)-A038503(n)]]`
-/

namespace A140230.P13881575199447365232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 n - A038503 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140230.P13881575199447365232

namespace A140230

/-- `Δ[n*Δ[A038505(n)-A038503(n)]]` -/
def P13881575199447365232.Spec : Prop :=
  ∀ n, P13881575199447365232.a n = A140230 (n + 1)

end A140230

/-! ## A140230.P13257432883355532354

`Δ[n*(A038504(n+1)-Δ[A038504(n+1)])]`
-/

namespace A140230.P13257432883355532354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A038504 (n + 1) - (f2 (n + 1) - f2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140230.P13257432883355532354

namespace A140230

/-- `Δ[n*(A038504(n+1)-Δ[A038504(n+1)])]` -/
def P13257432883355532354.Spec : Prop :=
  ∀ n, P13257432883355532354.a n = A140230 (n + 1)

end A140230

/-!
# A140231: a(n) = ceiling(e^(n*(1+sqrt(5))/2)).

The programs for A140231, the canonical program `A140231.P1273633069445897374` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140231 has offset 1).

The definition of A140231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140231.P1273633069445897374

`ceil(exp(ϕ)^(n+1))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A140231

/-- `ceil(exp(ϕ)^(n+1))` -/
def P1273633069445897374.Spec : Prop :=
  ∀ n, P1273633069445897374.a n = A140231 (n + 1)

theorem P1273633069445897374.correct : P1273633069445897374.Spec := by
  intro n
  simp only [A140231, Nat.add_sub_cancel]

end A140231

/-!
# A140232: a(n) = ceiling(n*exp((1+sqrt(5))/2)).

The programs for A140232, the canonical program `A140232.P9943564388041438788` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140232 has offset 1).

The definition of A140232 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)*exp((1+sqrt(5))/2))` (program `A140232.P46807882409434247`, by `A140232.P46807882409434247.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140232.P9943564388041438788

`ceil((n+1)*exp(ϕ))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A140232

/-- `ceil((n+1)*exp(ϕ))` -/
def P9943564388041438788.Spec : Prop :=
  ∀ n, P9943564388041438788.a n = A140232 (n + 1)

theorem P9943564388041438788.correct : P9943564388041438788.Spec := by
  intro n
  simp only [A140232, Nat.add_sub_cancel]

end A140232

/-! ## A140232.P46807882409434247

`ceil((n+1)*exp((1+sqrt(5))/2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140232.P46807882409434247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.exp ((1 + Real.sqrt (5 : ℝ)) / 2)⌉

end

end A140232.P46807882409434247

namespace A140232

/-- `ceil((n+1)*exp((1+sqrt(5))/2))` -/
def P46807882409434247.Spec : Prop :=
  ∀ n, P46807882409434247.a n = A140232 (n + 1)

theorem P46807882409434247.correct : P46807882409434247.Spec := by
  intro n
  simp only [A140232, Nat.add_sub_cancel, A140232.P46807882409434247.a, A140232.P9943564388041438788.a, SequenceMachineLib.memo_apply]

end A140232

/-! ## A140232.P322362917828754040

`A140233(n+1)+1`
-/

namespace A140232.P322362917828754040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140233 (n + 1) + 1

end

end A140232.P322362917828754040

namespace A140232

/-- `A140233(n+1)+1` -/
def P322362917828754040.Spec : Prop :=
  ∀ n, P322362917828754040.a n = A140232 (n + 1)

end A140232

/-! ## A140232.P12300216533910609088

`floor(A249740(A055231(n+1))+(n+1)*exp(ϕ))`
-/

namespace A140232.P12300216533910609088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A249740 (A055231 (n + 1)).toNat : ℝ) + (n + 1 : ℝ) * Real.exp Real.goldenRatio⌋

end

end A140232.P12300216533910609088

namespace A140232

/-- `floor(A249740(A055231(n+1))+(n+1)*exp(ϕ))` -/
def P12300216533910609088.Spec : Prop :=
  ∀ n, P12300216533910609088.a n = A140232 (n + 1)

end A140232

/-! ## A140232.P13766040210505997397

`A020725(A140233(n+1))`
-/

namespace A140232.P13766040210505997397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A140233 (n + 1)).toNat

end

end A140232.P13766040210505997397

namespace A140232

/-- `A020725(A140233(n+1))` -/
def P13766040210505997397.Spec : Prop :=
  ∀ n, P13766040210505997397.a n = A140232 (n + 1)

end A140232

/-! ## A140232.P7913282474607226134

`A001221(A040067(n+1))+floor((n+1)*exp(ϕ))`
-/

namespace A140232.P7913282474607226134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A040067 (n + 1)).toNat + ⌊(n + 1 : ℝ) * Real.exp Real.goldenRatio⌋

end

end A140232.P7913282474607226134

namespace A140232

/-- `A001221(A040067(n+1))+floor((n+1)*exp(ϕ))` -/
def P7913282474607226134.Spec : Prop :=
  ∀ n, P7913282474607226134.a n = A140232 (n + 1)

end A140232

/-! ## A140232.P3746450543062787778

`A001221(A133370(3*n+1))+floor((n+1)*exp(ϕ))`
-/

namespace A140232.P3746450543062787778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A133370 (3 * n + 1)).toNat + ⌊(n + 1 : ℝ) * Real.exp Real.goldenRatio⌋

end

end A140232.P3746450543062787778

namespace A140232

/-- `A001221(A133370(3*n+1))+floor((n+1)*exp(ϕ))` -/
def P3746450543062787778.Spec : Prop :=
  ∀ n, P3746450543062787778.a n = A140232 (n + 1)

end A140232

/-! ## A140232.P3775807617486135855

`∑[6-A011586(n²)]`
-/

namespace A140232.P3775807617486135855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A011586 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140232.P3775807617486135855

namespace A140232

/-- `∑[6-A011586(n²)]` -/
def P3775807617486135855.Spec : Prop :=
  ∀ n, P3775807617486135855.a n = A140232 (n + 1)

end A140232

/-!
# A140233: a(n) = floor(n*e^((1+sqrt(5))/2)) = floor(n*A139341).

The programs for A140233, the canonical program `A140233.P16758134367363942694` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140233 has offset 1).

The definition of A140233 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*e^((1+sqrt(5))/2))` (program `A140233.P5654598738813474721`, by `A140233.P5654598738813474721.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140233.P16758134367363942694

`floor((n+1)*exp(ϕ))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A140233

/-- `floor((n+1)*exp(ϕ))` -/
def P16758134367363942694.Spec : Prop :=
  ∀ n, P16758134367363942694.a n = A140233 (n + 1)

theorem P16758134367363942694.correct : P16758134367363942694.Spec := by
  intro n
  simp only [A140233, Nat.add_sub_cancel]

end A140233

/-! ## A140233.P5654598738813474721

`floor((n+1)*e^((1+sqrt(5))/2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140233.P5654598738813474721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.exp 1 ^ ((1 + Real.sqrt (5 : ℝ)) / 2)⌋

end

end A140233.P5654598738813474721

namespace A140233

/-- `floor((n+1)*e^((1+sqrt(5))/2))` -/
def P5654598738813474721.Spec : Prop :=
  ∀ n, P5654598738813474721.a n = A140233 (n + 1)

theorem P5654598738813474721.correct : P5654598738813474721.Spec := by
  intro n
  simp only [A140233, Nat.add_sub_cancel, A140233.P5654598738813474721.a, A140233.P16758134367363942694.a, SequenceMachineLib.memo_apply]
  try simp

end A140233

/-! ## A140233.P2487874375001280442

`A140232(n+1)-1`
-/

namespace A140233.P2487874375001280442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140232 (n + 1) - 1

end

end A140233.P2487874375001280442

namespace A140233

/-- `A140232(n+1)-1` -/
def P2487874375001280442.Spec : Prop :=
  ∀ n, P2487874375001280442.a n = A140233 (n + 1)

end A140233

/-! ## A140233.P10308561080692199219

`(A241849(n)+A140232(n+1))%A241850(n)`
-/

namespace A140233.P10308561080692199219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241849 n + A140232 (n + 1)) (A241850 n)

end

end A140233.P10308561080692199219

namespace A140233

/-- `(A241849(n)+A140232(n+1))%A241850(n)` -/
def P10308561080692199219.Spec : Prop :=
  ∀ n, P10308561080692199219.a n = A140233 (n + 1)

end A140233

/-! ## A140233.P12173513936879786749

`(A241850(n)+A140232(n+1))%A241851(n)`
-/

namespace A140233.P12173513936879786749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241850 n + A140232 (n + 1)) (A241851 n)

end

end A140233.P12173513936879786749

namespace A140233

/-- `(A241850(n)+A140232(n+1))%A241851(n)` -/
def P12173513936879786749.Spec : Prop :=
  ∀ n, P12173513936879786749.a n = A140233 (n + 1)

end A140233

/-! ## A140233.P16731748957078044858

`A023443(A140232(n+1))`
-/

namespace A140233.P16731748957078044858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A140232 (n + 1)).toNat

end

end A140233.P16731748957078044858

namespace A140233

/-- `A023443(A140232(n+1))` -/
def P16731748957078044858.Spec : Prop :=
  ∀ n, P16731748957078044858.a n = A140233 (n + 1)

end A140233

/-! ## A140233.P11726184972752471787

`A165326(2*A140232(n+1))+A140232(n+1)`
-/

namespace A140233.P11726184972752471787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (2 * A140232 (n + 1)).toNat + A140232 (n + 1)

end

end A140233.P11726184972752471787

namespace A140233

/-- `A165326(2*A140232(n+1))+A140232(n+1)` -/
def P11726184972752471787.Spec : Prop :=
  ∀ n, P11726184972752471787.a n = A140233 (n + 1)

end A140233

/-!
# A140234: Sum of the semiprimes <= n.

The programs for A140234, there is no canonical definition to state claims against.
-/

/-! ## A140234.P15310462718250893592

`∑[n*char[eq[2, ∑{e}[n, #]]]]`
-/

namespace A140234.P15310462718250893592
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140234.P15310462718250893592

/-! ## A140234.P16815267455431297329

`∑[n%(n^∑{e}[C(7, ∑{e}[n, #]²), #])]`
-/

namespace A140234.P16815267455431297329
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 7 ((∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p) ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % n ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140234.P16815267455431297329

/-! ## A140234.P5149380936711819848

`∑[n*C(A105700(n), 2)]`
-/

namespace A140234.P5149380936711819848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (A105700 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140234.P5149380936711819848

/-! ## A140234.P5543100878319955019

`∑[n*A080300(∑{e}[n, #])]`
-/

namespace A140234.P5543100878319955019
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A080300 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140234.P5543100878319955019

/-! ## A140234.P13907438992384865430

`∑[n*A160382(∑{e}[n, #])]`
-/

namespace A140234.P13907438992384865430
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A160382 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140234.P13907438992384865430

/-! ## A140234.P5734160777652376170

`∑[n*char[A001358(n+1)]]`
-/

namespace A140234.P5734160777652376170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140234.P5734160777652376170

/-! ## A140234.P15870667865675157372

`∑[n*char[A087112(n+1)]]`
-/

namespace A140234.P15870667865675157372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140234.P15870667865675157372

/-! ## A140234.P15677729020237302500

`∑[n*char[A098350(n+1)]]`
-/

namespace A140234.P15677729020237302500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098350 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140234.P15677729020237302500

/-! ## A140234.P8067095928542637667

`∑[n*char[A179312(n+1)]]`
-/

namespace A140234.P8067095928542637667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140234.P8067095928542637667

/-! ## A140234.P16384019702194474416

`∑[n*char[A179939(n+1)]]`
-/

namespace A140234.P16384019702194474416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179939 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140234.P16384019702194474416

/-!
# A140235: Partial sum of non-semiprimes A100959.

The programs for A140235, the canonical program `A140235.P5857822171184418591` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140235 has offset 1).

The definition of A140235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140235.P5857822171184418591

`∑[A100959(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A140235

/-- `∑[A100959(n+1)]` -/
def P5857822171184418591.Spec : Prop :=
  ∀ n, P5857822171184418591.a n = A140235 (n + 1)

theorem P5857822171184418591.correct : P5857822171184418591.Spec := by
  intro n
  simp only [A140235, Nat.add_sub_cancel]

end A140235

/-! ## A140235.P16107040822704046213

`∑[eq[0, A064911(n+1)]+1]`
-/

namespace A140235.P16107040822704046213
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140235.P16107040822704046213

namespace A140235

/-- `∑[eq[0, A064911(n+1)]+1]` -/
def P16107040822704046213.Spec : Prop :=
  ∀ n, (P16107040822704046213.a n : ℤ) = A140235 (n + 1)

end A140235

/-! ## A140235.P2151757914088779677

`∑[comp[A001358(n+1)-1]+1]`
-/

namespace A140235.P2151757914088779677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140235.P2151757914088779677

namespace A140235

/-- `∑[comp[A001358(n+1)-1]+1]` -/
def P2151757914088779677.Spec : Prop :=
  ∀ n, (P2151757914088779677.a n : ℤ) = A140235 (n + 1)

end A140235

/-! ## A140235.P3797532247124996582

`∑[comp[A088707(n+1)-2]+1]`
-/

namespace A140235.P3797532247124996582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140235.P3797532247124996582

namespace A140235

/-- `∑[comp[A088707(n+1)-2]+1]` -/
def P3797532247124996582.Spec : Prop :=
  ∀ n, (P3797532247124996582.a n : ℤ) = A140235 (n + 1)

end A140235

/-! ## A140235.P10598425460032706553

`∑[comp[eq[2, A001222(n+1)]]+1]`
-/

namespace A140235.P10598425460032706553
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140235.P10598425460032706553

namespace A140235

/-- `∑[comp[eq[2, A001222(n+1)]]+1]` -/
def P10598425460032706553.Spec : Prop :=
  ∀ n, (P10598425460032706553.a n : ℤ) = A140235 (n + 1)

end A140235

/-! ## A140235.P6086130042726594073

`∑[lt[1, A130724(∑{e}[2*(n+1), #])]+1]`
-/

namespace A140235.P6086130042726594073
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 (∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140235.P6086130042726594073

namespace A140235

/-- `∑[lt[1, A130724(∑{e}[2*(n+1), #])]+1]` -/
def P6086130042726594073.Spec : Prop :=
  ∀ n, (P6086130042726594073.a n : ℤ) = A140235 (n + 1)

end A140235

/-! ## A140235.P3886461166176428263

`∑[A215261(Δ[n²])]`
-/

namespace A140235.P3886461166176428263
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215261 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140235.P3886461166176428263

namespace A140235

/-- `∑[A215261(Δ[n²])]` -/
def P3886461166176428263.Spec : Prop :=
  ∀ n, P3886461166176428263.a n = A140235 (n + 1)

end A140235

/-! ## A140235.P2612552990363665036

`∑[lt[1, A029653(A001222(n+1)!)]+1]`
-/

namespace A140235.P2612552990363665036
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (Nat.factorial (A001222 (n + 1)).toNat)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140235.P2612552990363665036

namespace A140235

/-- `∑[lt[1, A029653(A001222(n+1)!)]+1]` -/
def P2612552990363665036.Spec : Prop :=
  ∀ n, (P2612552990363665036.a n : ℤ) = A140235 (n + 1)

end A140235

/-! ## A140235.P359667402754980477

`∑[record[(n+1)/A014963(A001222(n+1)!)]]`
-/

namespace A140235.P359667402754980477
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A014963 (Nat.factorial (A001222 (n + 1)).toNat) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140235.P359667402754980477

namespace A140235

/-- `∑[record[(n+1)/A014963(A001222(n+1)!)]]` -/
def P359667402754980477.Spec : Prop :=
  ∀ n, P359667402754980477.a n = (A140235 (n + 1) : ℚ)

end A140235

/-!
# A140236: a(n) = A000292(A000292(n)).

The programs for A140236, the canonical program `A140236.P12614309250063322323` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140236 has offset 0).

The definition of A140236 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000292(A000292(n))` (program `A140236.P12614309250063322323`, by `A140236.P12614309250063322323.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140236.P12614309250063322323

`A000292(A000292(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140236

/-- `A000292(A000292(n))` -/
def P12614309250063322323.Spec : Prop :=
  ∀ n, P12614309250063322323.a n = A140236 n

theorem P12614309250063322323.correct : P12614309250063322323.Spec := by
  intro n
  simp only [A140236]

end A140236

/-! ## A140236.P76333702639477983

`C(∑[∑[n]]+2, 3)`
-/

namespace A140236.P76333702639477983
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 2) 3

end

end A140236.P76333702639477983

namespace A140236

/-- `C(∑[∑[n]]+2, 3)` -/
def P76333702639477983.Spec : Prop :=
  ∀ n, (P76333702639477983.a n : ℤ) = A140236 n

end A140236

/-! ## A140236.P4616835359474772106

`C(C(n+2, 3), 3)+C(n+2, 3)²`
-/

namespace A140236.P4616835359474772106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (n + 2) 3) 3 + Nat.choose (n + 2) 3 ^ 2

end

end A140236.P4616835359474772106

namespace A140236

/-- `C(C(n+2, 3), 3)+C(n+2, 3)²` -/
def P4616835359474772106.Spec : Prop :=
  ∀ n, (P4616835359474772106.a n : ℤ) = A140236 n

end A140236

/-! ## A140236.P13242242267890740010

`∑[A113596(n)]`
-/

namespace A140236.P13242242267890740010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140236.P13242242267890740010

namespace A140236

/-- `∑[A113596(n)]` -/
def P13242242267890740010.Spec : Prop :=
  ∀ n, P13242242267890740010.a n = A140236 n

end A140236

/-! ## A140236.P8468921152478903993

`C(C(n+2, 3), 3)+(A027480(n)/3)²`
-/

namespace A140236.P8468921152478903993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.choose (n + 2) 3) 3 : ℚ) + ((A027480 n : ℚ) / 3) ^ 2

end

end A140236.P8468921152478903993

namespace A140236

/-- `C(C(n+2, 3), 3)+(A027480(n)/3)²` -/
def P8468921152478903993.Spec : Prop :=
  ∀ n, P8468921152478903993.a n = (A140236 n : ℚ)

end A140236

/-! ## A140236.P2979744001841458808

`C(C(n+2, 3), 3)+(A210440(n)/4)²`
-/

namespace A140236.P2979744001841458808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.choose (n + 2) 3) 3 : ℚ) + ((A210440 n : ℚ) / 4) ^ 2

end

end A140236.P2979744001841458808

namespace A140236

/-- `C(C(n+2, 3), 3)+(A210440(n)/4)²` -/
def P2979744001841458808.Spec : Prop :=
  ∀ n, P2979744001841458808.a n = (A140236 n : ℚ)

end A140236

/-! ## A140236.P8623452488196516574

`C(C(n+2, 3), 3)+(A005581(n)+n)²`
-/

namespace A140236.P8623452488196516574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.choose (n + 2) 3) 3 : ℤ) + (A005581 n + (n : ℤ)) ^ 2

end

end A140236.P8623452488196516574

namespace A140236

/-- `C(C(n+2, 3), 3)+(A005581(n)+n)²` -/
def P8623452488196516574.Spec : Prop :=
  ∀ n, P8623452488196516574.a n = A140236 n

end A140236

/-!
# A140237: A number n is included if (Sum_{k=1..n} d(k)) is divisible by d(n), where d(n) is the number of positive divisors of n.

The programs for A140237, the canonical program `A140237.P5947294070104650303` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140237 has offset 1).

The definition of A140237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3628 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140237.P5947294070104650303

`eq[0, A006218(n)%A000005(n+1)]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A140237

/-- `eq[0, A006218(n)%A000005(n+1)]+1` -/
def P5947294070104650303.Spec : Prop :=
  ∀ n, (P5947294070104650303.a n : ℤ) = A140237 (n + 1)

theorem P5947294070104650303.correct : P5947294070104650303.Spec := by
  intro n
  simp only [A140237, Nat.add_sub_cancel]

end A140237

/-!
# A140238: Numbers k such that Sum_{i=1..k} d(i) is coprime to d(k), where d(k) is the number of positive divisors of k.

The programs for A140238, the canonical program `A140238.P17325431186135903879` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140238 has offset 1).

The definition of A140238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140238.P17325431186135903879

`eq[1, gcd(A000005(n+1), A006218(n))]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A140238

/-- `eq[1, gcd(A000005(n+1), A006218(n))]+1` -/
def P17325431186135903879.Spec : Prop :=
  ∀ n, (P17325431186135903879.a n : ℤ) = A140238 (n + 1)

theorem P17325431186135903879.correct : P17325431186135903879.Spec := by
  intro n
  simp only [A140238, Nat.add_sub_cancel]

end A140238

/-! ## A140238.P11651281382430234835

`lt[xor(A268038(n+4), A351595(n+4)), 3]+1`
-/

namespace A140238.P11651281382430234835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A268038 (n + 4)) (A351595 (n + 4))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A140238.P11651281382430234835

namespace A140238

/-- `lt[xor(A268038(n+4), A351595(n+4)), 3]+1` -/
def P11651281382430234835.Spec : Prop :=
  ∀ n, (P11651281382430234835.a n : ℤ) = A140238 (n + 1)

end A140238

/-! ## A140238.P2814487894746250864

`∑[gcd(16*n+11, A245101(n+1))]`
-/

namespace A140238.P2814487894746250864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (16 * n + 11 : ℤ) (A245101 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140238.P2814487894746250864

namespace A140238

/-- `∑[gcd(16*n+11, A245101(n+1))]` -/
def P2814487894746250864.Spec : Prop :=
  ∀ n, (P2814487894746250864.a n : ℤ) = A140238 (n + 1)

end A140238

/-! ## A140238.P17177032137612988003

`∑[A304042(p?[A255566(n)])]`
-/

namespace A140238.P17177032137612988003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255566 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140238.P17177032137612988003

namespace A140238

/-- `∑[A304042(p?[A255566(n)])]` -/
def P17177032137612988003.Spec : Prop :=
  ∀ n, P17177032137612988003.a n = A140238 (n + 1)

end A140238

/-! ## A140238.P17640707416229586967

`lt[A346524(p?[A346563(n+1)]), 1]`
-/

namespace A140238.P17640707416229586967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346563 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346524 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A140238.P17640707416229586967

namespace A140238

/-- `lt[A346524(p?[A346563(n+1)]), 1]` -/
def P17640707416229586967.Spec : Prop :=
  ∀ n, (P17640707416229586967.a n : ℤ) = A140238 (n + 1)

end A140238

/-!
# A140252: Inverse binomial transform of A140420.

The programs for A140252, the canonical program `A140252.P1391156608340645963` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140252 has offset 0).

The definition of A140252 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140252.P1391156608340645963

`a(n-1)+4*a(n-2)-4*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=7`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A140252

/-- `a(n-1)+4*a(n-2)-4*a(n-3)` -/
def P1391156608340645963.Spec : Prop :=
  ∀ n, P1391156608340645963.a n = A140252 n

theorem P1391156608340645963.correct : P1391156608340645963.Spec := by
  intro n
  simp only [A140252]

end A140252

/-! ## A140252.P16491661520183761074

`ceil(2^or(1, n-1))-1`
-/

namespace A140252.P16491661520183761074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (Int.lor 1 ((n : ℤ) - 1) : ℤ)⌉ - 1

end

end A140252.P16491661520183761074

namespace A140252

/-- `ceil(2^or(1, n-1))-1` -/
def P16491661520183761074.Spec : Prop :=
  ∀ n, P16491661520183761074.a n = A140252 n

end A140252

/-! ## A140252.P2885967461798327144

`round(2^or(1, n-1))-1`
-/

namespace A140252.P2885967461798327144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.lor 1 ((n : ℤ) - 1) : ℤ)) - 1

end

end A140252.P2885967461798327144

namespace A140252

/-- `round(2^or(1, n-1))-1` -/
def P2885967461798327144.Spec : Prop :=
  ∀ n, P2885967461798327144.a n = A140252 n

end A140252

/-! ## A140252.P12085724731889254611

`4*a(n-2)+3` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A140252.P12085724731889254611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  4 * a (n - 2) + 3

end

end A140252.P12085724731889254611

namespace A140252

/-- `4*a(n-2)+3` -/
def P12085724731889254611.Spec : Prop :=
  ∀ n, (P12085724731889254611.a n : ℤ) = A140252 n

end A140252

/-! ## A140252.P3962802640397743384

`lcm(4, a(n-2))+3` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A140252.P3962802640397743384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  Nat.lcm 4 (a (n - 2)) + 3

end

end A140252.P3962802640397743384

namespace A140252

/-- `lcm(4, a(n-2))+3` -/
def P3962802640397743384.Spec : Prop :=
  ∀ n, (P3962802640397743384.a n : ℤ) = A140252 n

end A140252

/-! ## A140252.P15334713076249695026

`or(3, 4*a(n-2))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A140252.P15334713076249695026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  Nat.lor 3 (4 * a (n - 2))

end

end A140252.P15334713076249695026

namespace A140252

/-- `or(3, 4*a(n-2))` -/
def P15334713076249695026.Spec : Prop :=
  ∀ n, (P15334713076249695026.a n : ℤ) = A140252 n

end A140252

/-! ## A140252.P13229242300469343525

`xor(3, 4*a(n-2))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A140252.P13229242300469343525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  Nat.xor 3 (4 * a (n - 2))

end

end A140252.P13229242300469343525

namespace A140252

/-- `xor(3, 4*a(n-2))` -/
def P13229242300469343525.Spec : Prop :=
  ∀ n, (P13229242300469343525.a n : ℤ) = A140252 n

end A140252

/-! ## A140252.P15400071231355001812

`∑[4*a(n-2)]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=6`
-/

namespace A140252.P15400071231355001812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 6] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140252.P15400071231355001812

namespace A140252

/-- `∑[4*a(n-2)]` -/
def P15400071231355001812.Spec : Prop :=
  ∀ n, (P15400071231355001812.a n : ℤ) = A140252 n

end A140252

/-! ## A140252.P12123474956400290056

`3-(a(n-2)-5*a(n-2))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A140252.P12123474956400290056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  3 - (a (n - 2) - 5 * a (n - 2))

end

end A140252.P12123474956400290056

namespace A140252

/-- `3-(a(n-2)-5*a(n-2))` -/
def P12123474956400290056.Spec : Prop :=
  ∀ n, P12123474956400290056.a n = A140252 n

end A140252

/-! ## A140252.P5130511894174759809

`A158302(n)-1`
-/

namespace A140252.P5130511894174759809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158302 n - 1

end

end A140252.P5130511894174759809

namespace A140252

/-- `A158302(n)-1` -/
def P5130511894174759809.Spec : Prop :=
  ∀ n, P5130511894174759809.a n = A140252 n

end A140252

/-! ## A140252.P2658942278694587928

`A078485(and(1, n)+n)`
-/

namespace A140252.P2658942278694587928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078485 (Nat.land 1 n + n)

end

end A140252.P2658942278694587928

namespace A140252

/-- `A078485(and(1, n)+n)` -/
def P2658942278694587928.Spec : Prop :=
  ∀ n, P2658942278694587928.a n = A140252 n

end A140252

/-! ## A140252.P9905072182599439351

`floor((A056450(n)-1)/2)`
-/

namespace A140252.P9905072182599439351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056450 n - 1 : ℚ) / 2⌋

end

end A140252.P9905072182599439351

namespace A140252

/-- `floor((A056450(n)-1)/2)` -/
def P9905072182599439351.Spec : Prop :=
  ∀ n, P9905072182599439351.a n = A140252 n

end A140252

/-! ## A140252.P10731267566696402200

`floor((A285475(n)-1)/2)`
-/

namespace A140252.P10731267566696402200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A285475 n - 1 : ℚ) / 2⌋

end

end A140252.P10731267566696402200

namespace A140252

/-- `floor((A285475(n)-1)/2)` -/
def P10731267566696402200.Spec : Prop :=
  ∀ n, P10731267566696402200.a n = A140252 n

end A140252

/-! ## A140252.P11851394251221821287

`A173300(2*(n+1))-1`
-/

namespace A140252.P11851394251221821287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173300 (2 * (n + 1)) - 1

end

end A140252.P11851394251221821287

namespace A140252

/-- `A173300(2*(n+1))-1` -/
def P11851394251221821287.Spec : Prop :=
  ∀ n, P11851394251221821287.a n = A140252 n

end A140252

/-! ## A140252.P5401533718958214219

`gcd(2, n+1)*A011782(n)-1`
-/

namespace A140252.P5401533718958214219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A011782 n - 1

end

end A140252.P5401533718958214219

namespace A140252

/-- `gcd(2, n+1)*A011782(n)-1` -/
def P5401533718958214219.Spec : Prop :=
  ∀ n, P5401533718958214219.a n = A140252 n

end A140252

/-! ## A140252.P12236494988703044902

`A011782(char[2*n+1]+n)-1`
-/

namespace A140252.P12236494988703044902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 ((if ∃ j, f1 j = n then 1 else 0) + n) - 1

end

end A140252.P12236494988703044902

namespace A140252

/-- `A011782(char[2*n+1]+n)-1` -/
def P12236494988703044902.Spec : Prop :=
  ∀ n, P12236494988703044902.a n = A140252 n

end A140252

/-! ## A140252.P16223168538225430729

`A078485(A052928(n+1))`
-/

namespace A140252.P16223168538225430729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078485 (A052928 (n + 1)).toNat

end

end A140252.P16223168538225430729

namespace A140252

/-- `A078485(A052928(n+1))` -/
def P16223168538225430729.Spec : Prop :=
  ∀ n, P16223168538225430729.a n = A140252 n

end A140252

/-! ## A140252.P6014960639369762041

`A116601(A168273(n+1))`
-/

namespace A140252.P6014960639369762041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116601 (A168273 (n + 1)).toNat

end

end A140252.P6014960639369762041

namespace A140252

/-- `A116601(A168273(n+1))` -/
def P6014960639369762041.Spec : Prop :=
  ∀ n, P6014960639369762041.a n = A140252 n

end A140252

/-!
# A140253: a(2*n) = 2*(2*4^(n-1)-1) and a(2*n-1) = 2*4^(n-1)-1.

The programs for A140253, the canonical program `A140253.P16334260990602493394` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140253 has offset 0).

The definition of A140253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140253.P16334260990602493394

`a(n-1)+2*a(n-2)+3` with `a(0)=-1, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A140253

/-- `a(n-1)+2*a(n-2)+3` -/
def P16334260990602493394.Spec : Prop :=
  ∀ n, P16334260990602493394.a n = A140253 n

theorem P16334260990602493394.correct : P16334260990602493394.Spec := by
  intro n
  simp only [A140253]

end A140253

/-! ## A140253.P727153067674246557

`2^n-gcd(2, n)`
-/

namespace A140253.P727153067674246557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (Nat.gcd 2 n : ℤ)

end

end A140253.P727153067674246557

namespace A140253

/-- `2^n-gcd(2, n)` -/
def P727153067674246557.Spec : Prop :=
  ∀ n, P727153067674246557.a n = A140253 n

end A140253

/-! ## A140253.P17255544437299768781

`or(n, 2^n-2)`
-/

namespace A140253.P17255544437299768781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((2 ^ n : ℤ) - 2)

end

end A140253.P17255544437299768781

namespace A140253

/-- `or(n, 2^n-2)` -/
def P17255544437299768781.Spec : Prop :=
  ∀ n, P17255544437299768781.a n = A140253 n

end A140253

/-! ## A140253.P11437064765651718686

`or(n, -2)+2^n`
-/

namespace A140253.P11437064765651718686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-2) + (2 ^ n : ℤ)

end

end A140253.P11437064765651718686

namespace A140253

/-- `or(n, -2)+2^n` -/
def P11437064765651718686.Spec : Prop :=
  ∀ n, P11437064765651718686.a n = A140253 n

end A140253

/-! ## A140253.P1859521294897494743

`2^n+n%2-2`
-/

namespace A140253.P1859521294897494743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (((n % 2 : ℕ) : ℤ) - 2)

end

end A140253.P1859521294897494743

namespace A140253

/-- `2^n+n%2-2` -/
def P1859521294897494743.Spec : Prop :=
  ∀ n, P1859521294897494743.a n = A140253 n

end A140253

/-! ## A140253.P5112885277680353380

`2^n-(char[2*n]+1)`
-/

namespace A140253.P5112885277680353380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ)

end

end A140253.P5112885277680353380

namespace A140253

/-- `2^n-(char[2*n]+1)` -/
def P5112885277680353380.Spec : Prop :=
  ∀ n, P5112885277680353380.a n = A140253 n

end A140253

/-! ## A140253.P12773249582809340746

`xor(A000035(n), A000918(n))`
-/

namespace A140253.P12773249582809340746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n) (A000918 n)

end

end A140253.P12773249582809340746

namespace A140253

/-- `xor(A000035(n), A000918(n))` -/
def P12773249582809340746.Spec : Prop :=
  ∀ n, P12773249582809340746.a n = A140253 n

end A140253

/-! ## A140253.P5363675675340413792

`xor(A000975(n), A167030(n))`
-/

namespace A140253.P5363675675340413792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000975 n) (A167030 n)

end

end A140253.P5363675675340413792

namespace A140253

/-- `xor(A000975(n), A167030(n))` -/
def P5363675675340413792.Spec : Prop :=
  ∀ n, P5363675675340413792.a n = A140253 n

end A140253

/-! ## A140253.P4208776624063902068

`xor(A141023(n), A158388(n))`
-/

namespace A140253.P4208776624063902068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A141023 n) (A158388 n)

end

end A140253.P4208776624063902068

namespace A140253

/-- `xor(A141023(n), A158388(n))` -/
def P4208776624063902068.Spec : Prop :=
  ∀ n, P4208776624063902068.a n = A140253 n

end A140253

/-! ## A140253.P4671636953041235332

`xor(A045621(n), A395396(n))`
-/

namespace A140253.P4671636953041235332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A045621 n) (A395396 n)

end

end A140253.P4671636953041235332

namespace A140253

/-- `xor(A045621(n), A395396(n))` -/
def P4671636953041235332.Spec : Prop :=
  ∀ n, P4671636953041235332.a n = A140253 n

end A140253

/-! ## A140253.P13499253979097825662

`(A166956(n+1)-1)/2`
-/

namespace A140253.P13499253979097825662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166956 (n + 1) - 1 : ℚ) / 2

end

end A140253.P13499253979097825662

namespace A140253

/-- `(A166956(n+1)-1)/2` -/
def P13499253979097825662.Spec : Prop :=
  ∀ n, P13499253979097825662.a n = (A140253 n : ℚ)

end A140253

/-! ## A140253.P18325243221201236522

`(A014551(n+1)-3)/2`
-/

namespace A140253.P18325243221201236522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014551 (n + 1) - 3 : ℚ) / 2

end

end A140253.P18325243221201236522

namespace A140253

/-- `(A014551(n+1)-3)/2` -/
def P18325243221201236522.Spec : Prop :=
  ∀ n, P18325243221201236522.a n = (A140253 n : ℚ)

end A140253

/-! ## A140253.P8408420494151576186

`(A166977(n+1)-3)/2`
-/

namespace A140253.P8408420494151576186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166977 (n + 1) - 3 : ℚ) / 2

end

end A140253.P8408420494151576186

namespace A140253

/-- `(A166977(n+1)-3)/2` -/
def P8408420494151576186.Spec : Prop :=
  ∀ n, P8408420494151576186.a n = (A140253 n : ℚ)

end A140253

/-! ## A140253.P14247502793151389470

`Δ[A000051(n)-A007494(n)]`
-/

namespace A140253.P14247502793151389470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140253.P14247502793151389470

namespace A140253

/-- `Δ[A000051(n)-A007494(n)]` -/
def P14247502793151389470.Spec : Prop :=
  ∀ n, P14247502793151389470.a n = A140253 n

end A140253

/-! ## A140253.P7971117811934643170

`(A280173(n)-4)/3`
-/

namespace A140253.P7971117811934643170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280173 n - 4 : ℚ) / 3

end

end A140253.P7971117811934643170

namespace A140253

/-- `(A280173(n)-4)/3` -/
def P7971117811934643170.Spec : Prop :=
  ∀ n, P7971117811934643170.a n = (A140253 n : ℚ)

end A140253

/-! ## A140253.P1228120159918888483

`(A001045(2*n+1)-A010684(n+1))/A128209(n+1)`
-/

namespace A140253.P1228120159918888483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001045 (2 * n + 1) - A010684 (n + 1) : ℚ) / (A128209 (n + 1) : ℚ)

end

end A140253.P1228120159918888483

namespace A140253

/-- `(A001045(2*n+1)-A010684(n+1))/A128209(n+1)` -/
def P1228120159918888483.Spec : Prop :=
  ∀ n, P1228120159918888483.a n = (A140253 n : ℚ)

end A140253

/-! ## A140253.P7127267036574474576

`(A128209(2*n+1)-A010694(n+1))/A128209(n+1)`
-/

namespace A140253.P7127267036574474576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128209 (2 * n + 1) - A010694 (n + 1) : ℚ) / (A128209 (n + 1) : ℚ)

end

end A140253.P7127267036574474576

namespace A140253

/-- `(A128209(2*n+1)-A010694(n+1))/A128209(n+1)` -/
def P7127267036574474576.Spec : Prop :=
  ∀ n, P7127267036574474576.a n = (A140253 n : ℚ)

end A140253

/-!
# A140254: Mobius transform of A014963.

The programs for A140254, the canonical program `A140254.P10954065600151529999` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140254 has offset 1).

The definition of A140254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140254.P3381209674107313436

`∑{d}[n+1, A008683((n+1)/#)*A014963(#)]`
-/

namespace A140254.P3381209674107313436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A014963 d

end

end A140254.P3381209674107313436

namespace A140254

/-- `∑{d}[n+1, A008683((n+1)/#)*A014963(#)]` -/
def P3381209674107313436.Spec : Prop :=
  ∀ n, P3381209674107313436.a n = A140254 (n + 1)

end A140254

/-! ## A140254.P10954065600151529999

`∑{d}[n+1, A007427(#)*A140255((n+1)/#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A140254

/-- `∑{d}[n+1, A007427(#)*A140255((n+1)/#)]` -/
def P10954065600151529999.Spec : Prop :=
  ∀ n, P10954065600151529999.a n = A140254 (n + 1)

theorem P10954065600151529999.correct : P10954065600151529999.Spec := by
  intro n
  simp only [A140254, Nat.add_sub_cancel]

end A140254

/-! ## A140254.P17236399029568663609

`A000007(n)-A008683(n+1)*A067240(n+1)`
-/

namespace A140254.P17236399029568663609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A008683 (n + 1) * A067240 (n + 1)

end

end A140254.P17236399029568663609

namespace A140254

/-- `A000007(n)-A008683(n+1)*A067240(n+1)` -/
def P17236399029568663609.Spec : Prop :=
  ∀ n, P17236399029568663609.a n = A140254 (n + 1)

end A140254

/-! ## A140254.P17298030805169429655

`∑{d}[n+1, A055615(#)*A140584((n+1)/#)]`
-/

namespace A140254.P17298030805169429655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A140584 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140254.P17298030805169429655

namespace A140254

/-- `∑{d}[n+1, A055615(#)*A140584((n+1)/#)]` -/
def P17298030805169429655.Spec : Prop :=
  ∀ n, P17298030805169429655.a n = A140254 (n + 1)

end A140254

/-! ## A140254.P13358521297050598107

`A140581(∑[n]+1)`
-/

namespace A140254.P13358521297050598107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140581 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A140254.P13358521297050598107

namespace A140254

/-- `A140581(∑[n]+1)` -/
def P13358521297050598107.Spec : Prop :=
  ∀ n, P13358521297050598107.a n = A140254 (n + 1)

end A140254

/-!
# A140255: Inverse Mobius transform of A014963.

The programs for A140255, the canonical program `A140255.P14497844489668583855` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140255 has offset 1).

The definition of A140255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140255.P4199943536925325022

`∑{d}[n+1, A014963(#)]`
-/

namespace A140255.P4199943536925325022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A014963 d

end

end A140255.P4199943536925325022

namespace A140255

/-- `∑{d}[n+1, A014963(#)]` -/
def P4199943536925325022.Spec : Prop :=
  ∀ n, P4199943536925325022.a n = A140255 (n + 1)

end A140255

/-! ## A140255.P14497844489668583855

`∑{d}[n+1, A028310(A120007(#))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A140255

/-- `∑{d}[n+1, A028310(A120007(#))]` -/
def P14497844489668583855.Spec : Prop :=
  ∀ n, P14497844489668583855.a n = A140255 (n + 1)

theorem P14497844489668583855.correct : P14497844489668583855.Spec := by
  intro n
  simp only [A140255, Nat.add_sub_cancel]

end A140255

/-! ## A140255.P3093371496694039689

`A000027(∑{d}[xor(n, -1), A014963(#)])`
-/

namespace A140255.P3093371496694039689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n).natAbs, A014963 d).toNat

end

end A140255.P3093371496694039689

namespace A140255

/-- `A000027(∑{d}[xor(n, -1), A014963(#)])` -/
def P3093371496694039689.Spec : Prop :=
  ∀ n, P3093371496694039689.a n = A140255 (n + 1)

end A140255

/-! ## A140255.P5211354233381964741

`A059975(n+1)+A000005(n+1)`
-/

namespace A140255.P5211354233381964741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059975 (n + 1) + A000005 (n + 1)

end

end A140255.P5211354233381964741

namespace A140255

/-- `A059975(n+1)+A000005(n+1)` -/
def P5211354233381964741.Spec : Prop :=
  ∀ n, P5211354233381964741.a n = A140255 (n + 1)

end A140255

/-! ## A140255.P8588704109240173724

`A081707(n+1)+A001414(n+1)`
-/

namespace A140255.P8588704109240173724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081707 (n + 1) + A001414 (n + 1)

end

end A140255.P8588704109240173724

namespace A140255

/-- `A081707(n+1)+A001414(n+1)` -/
def P8588704109240173724.Spec : Prop :=
  ∀ n, P8588704109240173724.a n = A140255 (n + 1)

end A140255

/-! ## A140255.P14053191065681808842

`A075254(n+1)-A162906(n+1)`
-/

namespace A140255.P14053191065681808842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1) - A162906 (n + 1)

end

end A140255.P14053191065681808842

namespace A140255

/-- `A075254(n+1)-A162906(n+1)` -/
def P14053191065681808842.Spec : Prop :=
  ∀ n, P14053191065681808842.a n = A140255 (n + 1)

end A140255

/-! ## A140255.P6957646287106994776

`A062249(n+1)-A341865(n+1)`
-/

namespace A140255.P6957646287106994776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (n + 1) - A341865 (n + 1)

end

end A140255.P6957646287106994776

namespace A140255

/-- `A062249(n+1)-A341865(n+1)` -/
def P6957646287106994776.Spec : Prop :=
  ∀ n, P6957646287106994776.a n = A140255 (n + 1)

end A140255

/-! ## A140255.P11833418299562967809

`A397106(n+1)-A062968(n+1)`
-/

namespace A140255.P11833418299562967809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397106 (n + 1) - A062968 (n + 1)

end

end A140255.P11833418299562967809

namespace A140255

/-- `A397106(n+1)-A062968(n+1)` -/
def P11833418299562967809.Spec : Prop :=
  ∀ n, P11833418299562967809.a n = A140255 (n + 1)

end A140255

/-! ## A140255.P6715800301505977519

`∑{d}[n+1, gcd(A006530(#), A020639(#))]`
-/

namespace A140255.P6715800301505977519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.gcd (A006530 d) (A020639 d)

end

end A140255.P6715800301505977519

namespace A140255

/-- `∑{d}[n+1, gcd(A006530(#), A020639(#))]` -/
def P6715800301505977519.Spec : Prop :=
  ∀ n, (P6715800301505977519.a n : ℤ) = A140255 (n + 1)

end A140255

/-! ## A140255.P13684883846993046140

`∑{d}[n+1, A000005(#)*A140254((n+1)/#)]`
-/

namespace A140255.P13684883846993046140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A140254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140255.P13684883846993046140

namespace A140255

/-- `∑{d}[n+1, A000005(#)*A140254((n+1)/#)]` -/
def P13684883846993046140.Spec : Prop :=
  ∀ n, P13684883846993046140.a n = A140255 (n + 1)

end A140255

/-! ## A140255.P9496996420305119898

`A000005(n+1)+A001414(n+1)-A001222(n+1)`
-/

namespace A140255.P9496996420305119898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A001414 (n + 1) - A001222 (n + 1))

end

end A140255.P9496996420305119898

namespace A140255

/-- `A000005(n+1)+A001414(n+1)-A001222(n+1)` -/
def P9496996420305119898.Spec : Prop :=
  ∀ n, P9496996420305119898.a n = A140255 (n + 1)

end A140255

/-! ## A140255.P3211654405979903114

`∑{d}[n+1, A130054(#)*A140584((n+1)/#)]`
-/

namespace A140255.P3211654405979903114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A140584 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140255.P3211654405979903114

namespace A140255

/-- `∑{d}[n+1, A130054(#)*A140584((n+1)/#)]` -/
def P3211654405979903114.Spec : Prop :=
  ∀ n, P3211654405979903114.a n = A140255 (n + 1)

end A140255

/-!
# A140256: Triangle read by columns: Column k is A014963 aerated with groups of (k-1) zeros.

The programs for A140256, the canonical program `A140256.P6339651880868965640` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140256 has offset 1).

The definition of A140256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140256.P3236754014135168435

`A140579(A286158(n+1))`
-/

namespace A140256.P3236754014135168435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140579 (A286158 (n + 1)).toNat

end

end A140256.P3236754014135168435

namespace A140256

/-- `A140579(A286158(n+1))` -/
def P3236754014135168435.Spec : Prop :=
  ∀ n, P3236754014135168435.a n = A140256 (n + 1)

end A140256

/-! ## A140256.P6339651880868965640

`∑{d}[A126988(n+1), A140254(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A140256

/-- `∑{d}[A126988(n+1), A140254(#)]` -/
def P6339651880868965640.Spec : Prop :=
  ∀ n, P6339651880868965640.a n = A140256 (n + 1)

theorem P6339651880868965640.correct : P6339651880868965640.Spec := by
  intro n
  simp only [A140256, Nat.add_sub_cancel]

end A140256

/-! ## A140256.P17984128459237720245

`A051731(n+1)*A138618(n+1)`
-/

namespace A140256.P17984128459237720245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A138618 (n + 1)

end

end A140256.P17984128459237720245

namespace A140256

/-- `A051731(n+1)*A138618(n+1)` -/
def P17984128459237720245.Spec : Prop :=
  ∀ n, P17984128459237720245.a n = A140256 (n + 1)

end A140256

/-! ## A140256.P8006465638405295622

`gcd(A126988(n+1), A140699(n+1))`
-/

namespace A140256.P8006465638405295622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126988 (n + 1)) (A140699 (n + 1))

end

end A140256.P8006465638405295622

namespace A140256

/-- `gcd(A126988(n+1), A140699(n+1))` -/
def P8006465638405295622.Spec : Prop :=
  ∀ n, (P8006465638405295622.a n : ℤ) = A140256 (n + 1)

end A140256

/-! ## A140256.P12612444241664538301

`lcm(A138618(n+1), A166139(n+1))`
-/

namespace A140256.P12612444241664538301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A138618 (n + 1)) (A166139 (n + 1))

end

end A140256.P12612444241664538301

namespace A140256

/-- `lcm(A138618(n+1), A166139(n+1))` -/
def P12612444241664538301.Spec : Prop :=
  ∀ n, (P12612444241664538301.a n : ℤ) = A140256 (n + 1)

end A140256

/-! ## A140256.P9482354506720800965

`C(A138618(n+1), A164306(n+1))`
-/

namespace A140256.P9482354506720800965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A138618 (n + 1)).toNat (A164306 (n + 1)).toNat

end

end A140256.P9482354506720800965

namespace A140256

/-- `C(A138618(n+1), A164306(n+1))` -/
def P9482354506720800965.Spec : Prop :=
  ∀ n, (P9482354506720800965.a n : ℤ) = A140256 (n + 1)

end A140256

/-! ## A140256.P12945719371561791492

`gcd(A127013(A278818(n)), A140699(n+1))`
-/

namespace A140256.P12945719371561791492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127013 (A278818 n).toNat) (A140699 (n + 1))

end

end A140256.P12945719371561791492

namespace A140256

/-- `gcd(A127013(A278818(n)), A140699(n+1))` -/
def P12945719371561791492.Spec : Prop :=
  ∀ n, (P12945719371561791492.a n : ℤ) = A140256 (n + 1)

end A140256

/-! ## A140256.P6679212148412839438

`∑{e}[A000079(A126988(n+1)), A014963(#)]`
-/

namespace A140256.P6679212148412839438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A126988 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A014963 (Nat.factorization (f1 n).natAbs p)

end

end A140256.P6679212148412839438

namespace A140256

/-- `∑{e}[A000079(A126988(n+1)), A014963(#)]` -/
def P6679212148412839438.Spec : Prop :=
  ∀ n, P6679212148412839438.a n = A140256 (n + 1)

end A140256

/-! ## A140256.P2213596163576763163

`A014963(A010766(n+1))*A051731(n+1)`
-/

namespace A140256.P2213596163576763163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A010766 (n + 1)).toNat * A051731 (n + 1)

end

end A140256.P2213596163576763163

namespace A140256

/-- `A014963(A010766(n+1))*A051731(n+1)` -/
def P2213596163576763163.Spec : Prop :=
  ∀ n, P2213596163576763163.a n = A140256 (n + 1)

end A140256

/-! ## A140256.P5410289366057779271

`A014963(A049834(n+1))*A051731(n+1)`
-/

namespace A140256.P5410289366057779271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A049834 (n + 1)).toNat * A051731 (n + 1)

end

end A140256.P5410289366057779271

namespace A140256

/-- `A014963(A049834(n+1))*A051731(n+1)` -/
def P5410289366057779271.Spec : Prop :=
  ∀ n, P5410289366057779271.a n = A140256 (n + 1)

end A140256

/-! ## A140256.P5420728260205433146

`A014963(A051537(n+1))*A051731(n+1)`
-/

namespace A140256.P5420728260205433146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A051537 (n + 1)).toNat * A051731 (n + 1)

end

end A140256.P5420728260205433146

namespace A140256

/-- `A014963(A051537(n+1))*A051731(n+1)` -/
def P5420728260205433146.Spec : Prop :=
  ∀ n, P5420728260205433146.a n = A140256 (n + 1)

end A140256

/-! ## A140256.P14583033558262022371

`A014963(A054531(n+1))*A051731(n+1)`
-/

namespace A140256.P14583033558262022371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A054531 (n + 1)).toNat * A051731 (n + 1)

end

end A140256.P14583033558262022371

namespace A140256

/-- `A014963(A054531(n+1))*A051731(n+1)` -/
def P14583033558262022371.Spec : Prop :=
  ∀ n, P14583033558262022371.a n = A140256 (n + 1)

end A140256

/-! ## A140256.P13789041532978532564

`A126988(n+1)/A010766(n+1)*A138618(n+1)`
-/

namespace A140256.P13789041532978532564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126988 (n + 1) : ℚ) / (A010766 (n + 1) : ℚ) * (A138618 (n + 1) : ℚ)

end

end A140256.P13789041532978532564

namespace A140256

/-- `A126988(n+1)/A010766(n+1)*A138618(n+1)` -/
def P13789041532978532564.Spec : Prop :=
  ∀ n, P13789041532978532564.a n = (A140256 (n + 1) : ℚ)

end A140256

/-! ## A140256.P4331363043700696394

`A014963(A003056(A286157(n+1)))*A051731(n+1)`
-/

namespace A140256.P4331363043700696394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A003056 (A286157 (n + 1)).toNat).toNat * A051731 (n + 1)

end

end A140256.P4331363043700696394

namespace A140256

/-- `A014963(A003056(A286157(n+1)))*A051731(n+1)` -/
def P4331363043700696394.Spec : Prop :=
  ∀ n, P4331363043700696394.a n = A140256 (n + 1)

end A140256

/-! ## A140256.P15781478780932276915

`floor(acot(A007318(n+1)%A007318(n)))*A014963(A049834(n+1))`
-/

namespace A140256.P15781478780932276915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (Int.tmod (A007318 (n + 1)) (A007318 n) : ℝ)⌋ * A014963 (A049834 (n + 1)).toNat

end

end A140256.P15781478780932276915

namespace A140256

/-- `floor(acot(A007318(n+1)%A007318(n)))*A014963(A049834(n+1))` -/
def P15781478780932276915.Spec : Prop :=
  ∀ n, P15781478780932276915.a n = A140256 (n + 1)

end A140256

/-!
# A140257: Number of permutations p of order n such that the system of congruences x == i (mod p(i)), i=1..n, is solvable.

The programs for A140257, there is no canonical definition to state claims against.
-/

/-! ## A140257.P3163599859633996082

`A322321(Δ[∏[A325382(n+1)]])`
-/

namespace A140257.P3163599859633996082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325382 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322321 (f1 (n + 1) - f1 n).toNat

end

end A140257.P3163599859633996082

/-! ## A140257.P6293892004355834145

`(round(n²/12)+1)*A000005(A330387(n+1))`
-/

namespace A140257.P6293892004355834145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12) + 1) * A000005 (A330387 (n + 1)).toNat

end

end A140257.P6293892004355834145

/-! ## A140257.P8343350643343556567

`A000005(A330387(n+1))*A000009(n)`
-/

namespace A140257.P8343350643343556567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A330387 (n + 1)).toNat * A000009 n

end

end A140257.P8343350643343556567

/-!
# A140259: a(0)=3; a(n)=A002264(n+11) if a(n-1)=1, a(n) = a(n-1)-1 if (n-1) mod 3 <> 0, otherwise a(n-1).

The programs for A140259, there is no canonical definition to state claims against.
-/

/-! ## A140259.P15301178641807264022

`A080883(A210062(n))+A044941(A219676(n))`
-/

namespace A140259.P15301178641807264022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (A210062 n).toNat + A044941 (A219676 n).toNat

end

end A140259.P15301178641807264022

/-! ## A140259.P12170432174654044011

`A341256(A141689(n+1))+A080883(A210062(n))`
-/

namespace A140259.P12170432174654044011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341256 (A141689 (n + 1)).toNat + A080883 (A210062 n).toNat

end

end A140259.P12170432174654044011

/-! ## A140259.P2078820595108535714

`A080883(A210062(n))%record[A106410(n+1)]`
-/

namespace A140259.P2078820595108535714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080883 (A210062 n).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A140259.P2078820595108535714

/-! ## A140259.P3068747359319498555

`A001222(A072536(n+1))*A080883(A210062(n))`
-/

namespace A140259.P3068747359319498555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A072536 (n + 1)).toNat * A080883 (A210062 n).toNat

end

end A140259.P3068747359319498555

/-!
# A140260: Those n for which A140259(n) = A002264(n+11).

The programs for A140260, there is no canonical definition to state claims against.
-/

/-! ## A140260.P6180960995643714186

`floor(3*(a(n-1)+3)/2)` with `a(0)=0`
-/

namespace A140260.P6180960995643714186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊3 * ((a (n - 1) + 3 : ℚ) / 2)⌋

end

end A140260.P6180960995643714186

/-! ## A140260.P13070677373833951740

`ceil(3/2*a(n-1))+4` with `a(0)=0`
-/

namespace A140260.P13070677373833951740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(3 : ℚ) / 2 * (a (n - 1) : ℚ)⌉ + 4

end

end A140260.P13070677373833951740

/-! ## A140260.P3277568000672024290

`round(3/2*a(n-1))+4` with `a(0)=0`
-/

namespace A140260.P3277568000672024290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((3 : ℚ) / 2 * (a (n - 1) : ℚ)) + 4

end

end A140260.P3277568000672024290

/-! ## A140260.P5132050299468626868

`floor(3*(2-(1-a(n-1))/2))` with `a(0)=0`
-/

namespace A140260.P5132050299468626868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊3 * (2 - (1 - a (n - 1) : ℚ) / 2)⌋

end

end A140260.P5132050299468626868

/-! ## A140260.P16263161199698934609

`floor((a(n-1)+3)/(1-1/3))` with `a(0)=0`
-/

namespace A140260.P16263161199698934609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) + 3 : ℚ) / (1 - (1 : ℚ) / 3)⌋

end

end A140260.P16263161199698934609

/-!
# A140261: The length of Sapro's necklace at successive years in Werneck's Black Pearl Necklace problem.

The programs for A140261, there is no canonical definition to state claims against.
-/

/-! ## A140261.P13447591287341150754

`floor(A003312(n+4)/2)`
-/

namespace A140261.P13447591287341150754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003312 (n + 4) : ℚ) / 2⌋

end

end A140261.P13447591287341150754

/-! ## A140261.P5388509923952379476

`ceil(A061418(n+4)/2)`
-/

namespace A140261.P5388509923952379476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A061418 (n + 4) : ℚ) / 2⌉

end

end A140261.P5388509923952379476

/-! ## A140261.P13104561431865131793

`round(A003312(n+5)/3)`
-/

namespace A140261.P13104561431865131793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A003312 (n + 5) : ℚ) / 3)

end

end A140261.P13104561431865131793

/-! ## A140261.P7574988997185229716

`ceil(A006999(n+3)/2)+1`
-/

namespace A140261.P7574988997185229716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006999 (n + 3) : ℚ) / 2⌉ + 1

end

end A140261.P7574988997185229716

/-! ## A140261.P79612032315368870

`floor(A061419(n+4)/2)+1`
-/

namespace A140261.P79612032315368870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061419 (n + 4) : ℚ) / 2⌋ + 1

end

end A140261.P79612032315368870

/-!
# A140262: A140260 reduced modulo 9.

The programs for A140262, there is no canonical definition to state claims against.
-/

/-! ## A140262.P12100215135135212944

`record[floor(3/2*a(n-1))]%9` with `a(0)=9, a(1)=2`
-/

namespace A140262.P12100215135135212944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9, 2] fun n f1 =>
  ⌊(3 : ℚ) / 2 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 9

end

end A140262.P12100215135135212944

/-! ## A140262.P345538709294186714

`A061418(n+5)%9`
-/

namespace A140262.P345538709294186714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061418 (n + 5)) 9

end

end A140262.P345538709294186714

/-! ## A140262.P2600360038074601860

`dr(A003312(n+5))-1`
-/

namespace A140262.P2600360038074601860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A003312 (n + 5)) : ℤ) - 1

end

end A140262.P2600360038074601860

/-! ## A140262.P4787834396155897146

`(A061419(n+5)+1)%9`
-/

namespace A140262.P4787834396155897146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061419 (n + 5) + 1) 9

end

end A140262.P4787834396155897146

/-! ## A140262.P5248854512020002093

`(A006999(n+4)-7)%9`
-/

namespace A140262.P5248854512020002093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006999 (n + 4) - 7) 9

end

end A140262.P5248854512020002093

/-! ## A140262.P6663089266146733777

`(∑[A073941(n+5)]-3)%9`
-/

namespace A140262.P6663089266146733777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073941 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - 3) 9

end

end A140262.P6663089266146733777

/-! ## A140262.P10654841333734712483

`A308778(n²)+dr(A003312(n+5))`
-/

namespace A140262.P10654841333734712483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + (SequenceMachineLib.digitalRoot (A003312 (n + 5)) : ℤ)

end

end A140262.P10654841333734712483

/-! ## A140262.P5498150105195544864

`A008683(A007918(n))+dr(A003312(n+5))`
-/

namespace A140262.P5498150105195544864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007918 n).toNat + (SequenceMachineLib.digitalRoot (A003312 (n + 5)) : ℤ)

end

end A140262.P5498150105195544864

/-! ## A140262.P1429449438599451327

`A008683(A088732(n))+dr(A003312(n+5))`
-/

namespace A140262.P1429449438599451327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A088732 n).toNat + (SequenceMachineLib.digitalRoot (A003312 (n + 5)) : ℤ)

end

end A140262.P1429449438599451327

/-! ## A140262.P16383369053384532889

`A008683(A151800(n))+dr(A003312(n+5))`
-/

namespace A140262.P16383369053384532889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A151800 n).toNat + (SequenceMachineLib.digitalRoot (A003312 (n + 5)) : ℤ)

end

end A140262.P16383369053384532889

/-!
# A140263: Permutation of nonnegative integers obtained by interleaving A117967 and A117968.

The programs for A140263, the canonical program `A140263.P6663385585559439803` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140263 has offset 0).

The definition of A140263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2187 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140263.P11290460540183123822

`A140265(n+1)-1`
-/

namespace A140263.P11290460540183123822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140265 (n + 1) - 1

end

end A140263.P11290460540183123822

namespace A140263

/-- `A140265(n+1)-1` -/
def P11290460540183123822.Spec : Prop :=
  ∀ n, P11290460540183123822.a n = A140263 n

end A140263

/-! ## A140263.P17851655139181410767

`A023443(A140265(n+1))`
-/

namespace A140263.P17851655139181410767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A140265 (n + 1)).toNat

end

end A140263.P17851655139181410767

namespace A140263

/-- `A023443(A140265(n+1))` -/
def P17851655139181410767.Spec : Prop :=
  ∀ n, P17851655139181410767.a n = A140263 n

end A140263

/-! ## A140263.P16863684317370891661

`A260196(n+2)+A140265(n+1)`
-/

namespace A140263.P16863684317370891661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A140265 (n + 1)

end

end A140263.P16863684317370891661

namespace A140263

/-- `A260196(n+2)+A140265(n+1)` -/
def P16863684317370891661.Spec : Prop :=
  ∀ n, P16863684317370891661.a n = A140263 n

end A140263

/-! ## A140263.P6663385585559439803

`A142150(n)+A117967(A110654(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A140263

/-- `A142150(n)+A117967(A110654(n))` -/
def P6663385585559439803.Spec : Prop :=
  ∀ n, P6663385585559439803.a n = A140263 n

theorem P6663385585559439803.correct : P6663385585559439803.Spec := by
  intro n
  simp only [A140263]

end A140263

/-! ## A140263.P1693947624757914891

`A142150(n)+A117967(A004526(n+1))`
-/

namespace A140263.P1693947624757914891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + A117967 (A004526 (n + 1)).toNat

end

end A140263.P1693947624757914891

namespace A140263

/-- `A142150(n)+A117967(A004526(n+1))` -/
def P1693947624757914891.Spec : Prop :=
  ∀ n, P1693947624757914891.a n = A140263 n

end A140263

/-! ## A140263.P16170767478713185018

`A117966(A117968(n+1))+A140265(n+1)+n`
-/

namespace A140263.P16170767478713185018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A117968 (n + 1)).toNat + (A140265 (n + 1) + (n : ℤ))

end

end A140263.P16170767478713185018

namespace A140263

/-- `A117966(A117968(n+1))+A140265(n+1)+n` -/
def P16170767478713185018.Spec : Prop :=
  ∀ n, P16170767478713185018.a n = A140263 n

end A140263

/-! ## A140263.P1461372291054381507

`A000027(A140265(n+1))+A008683(A008578(n+2))`
-/

namespace A140263.P1461372291054381507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A140265 (n + 1)).toNat + A008683 (A008578 (n + 2)).toNat

end

end A140263.P1461372291054381507

namespace A140263

/-- `A000027(A140265(n+1))+A008683(A008578(n+2))` -/
def P1461372291054381507.Spec : Prop :=
  ∀ n, P1461372291054381507.a n = A140263 n

end A140263

/-! ## A140263.P13452609607228285505

`A152163(A007318(∑[n]))+A140265(n+1)`
-/

namespace A140263.P13452609607228285505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A140265 (n + 1)

end

end A140263.P13452609607228285505

namespace A140263

/-- `A152163(A007318(∑[n]))+A140265(n+1)` -/
def P13452609607228285505.Spec : Prop :=
  ∀ n, P13452609607228285505.a n = A140263 n

end A140263

/-! ## A140263.P501857065172998363

`A057918(A140265(n+1)²)`
-/

namespace A140263.P501857065172998363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A140265 (n + 1) ^ 2).toNat

end

end A140263.P501857065172998363

namespace A140263

/-- `A057918(A140265(n+1)²)` -/
def P501857065172998363.Spec : Prop :=
  ∀ n, P501857065172998363.a n = A140263 n

end A140263

/-! ## A140263.P17912910576642075783

`A215029(A215032(n+1))+A140265(n+1)`
-/

namespace A140263.P17912910576642075783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 (A215032 (n + 1)).toNat + A140265 (n + 1)

end

end A140263.P17912910576642075783

namespace A140263

/-- `A215029(A215032(n+1))+A140265(n+1)` -/
def P17912910576642075783.Spec : Prop :=
  ∀ n, P17912910576642075783.a n = A140263 n

end A140263

/-!
# A140264: Inverse permutation to A140263.

The programs for A140264, the canonical program `A140264.P15141776931122807942` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140264 has offset 0).

The definition of A140264 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140266, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A140264.P15141776931122807942

`A140266(n+1)-1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A140264

/-- `A140266(n+1)-1` -/
def P15141776931122807942.Spec : Prop :=
  ∀ n, P15141776931122807942.a n = A140264 n

theorem P15141776931122807942.correct : P15141776931122807942.Spec := by
  intro n
  simp only [A140264]

end A140264

/-! ## A140264.P17564069829036399452

`A023443(A140266(n+1))`
-/

namespace A140264.P17564069829036399452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A140266 (n + 1)).toNat

end

end A140264.P17564069829036399452

namespace A140264

/-- `A023443(A140266(n+1))` -/
def P17564069829036399452.Spec : Prop :=
  ∀ n, P17564069829036399452.a n = A140264 n

end A140264

/-! ## A140264.P5469494749100856025

`A057918(A140266(n+1)²)`
-/

namespace A140264.P5469494749100856025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A140266 (n + 1) ^ 2).toNat

end

end A140264.P5469494749100856025

namespace A140264

/-- `A057918(A140266(n+1)²)` -/
def P5469494749100856025.Spec : Prop :=
  ∀ n, P5469494749100856025.a n = A140264 n

end A140264

/-! ## A140264.P17019414938143951562

`A253580(A004488(n)²+n)`
-/

namespace A140264.P17019414938143951562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253580 (A004488 n ^ 2 + (n : ℤ)).toNat

end

end A140264.P17019414938143951562

namespace A140264

/-- `A253580(A004488(n)²+n)` -/
def P17019414938143951562.Spec : Prop :=
  ∀ n, P17019414938143951562.a n = A140264 n

end A140264

/-! ## A140264.P12137467208469044070

`A023444(A140266(n+1)+1)`
-/

namespace A140264.P12137467208469044070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A140266 (n + 1) + 1).toNat

end

end A140264.P12137467208469044070

namespace A140264

/-- `A023444(A140266(n+1)+1)` -/
def P12137467208469044070.Spec : Prop :=
  ∀ n, P12137467208469044070.a n = A140264 n

end A140264

/-! ## A140264.P10368068547883531573

`A023453(A140266(n+1)+10)`
-/

namespace A140264.P10368068547883531573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023453 (A140266 (n + 1) + 10).toNat

end

end A140264.P10368068547883531573

namespace A140264

/-- `A023453(A140266(n+1)+10)` -/
def P10368068547883531573.Spec : Prop :=
  ∀ n, P10368068547883531573.a n = A140264 n

end A140264

/-! ## A140264.P8222091048612639317

`abs(A140266(n+1)+A057428(n+1))`
-/

namespace A140264.P8222091048612639317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140266 (n + 1) + A057428 (n + 1)|

end

end A140264.P8222091048612639317

namespace A140264

/-- `abs(A140266(n+1)+A057428(n+1))` -/
def P8222091048612639317.Spec : Prop :=
  ∀ n, P8222091048612639317.a n = A140264 n

end A140264

/-! ## A140264.P5574241904528725447

`A033619(A140266(n+1)%(∑[n+3]+1))`
-/

namespace A140264.P5574241904528725447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (Int.tmod (A140266 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)).toNat

end

end A140264.P5574241904528725447

namespace A140264

/-- `A033619(A140266(n+1)%(∑[n+3]+1))` -/
def P5574241904528725447.Spec : Prop :=
  ∀ n, P5574241904528725447.a n = A140264 n

end A140264

/-!
# A140265: Permutation of natural numbers: a(n) = A140263(n-1)+1.

The programs for A140265, the canonical program `A140265.P1410062122565116902` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140265 has offset 1).

The definition of A140265 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140263, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A140265.P1410062122565116902

`A140263(n)+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A140265

/-- `A140263(n)+1` -/
def P1410062122565116902.Spec : Prop :=
  ∀ n, P1410062122565116902.a n = A140265 (n + 1)

theorem P1410062122565116902.correct : P1410062122565116902.Spec := by
  intro n
  simp only [A140265, Nat.add_sub_cancel]

end A140265

/-! ## A140265.P2651797346376082820

`A117967(A110654(n))+A142150(n)+1`
-/

namespace A140265.P2651797346376082820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 (A110654 n).toNat + (A142150 n + 1)

end

end A140265.P2651797346376082820

namespace A140265

/-- `A117967(A110654(n))+A142150(n)+1` -/
def P2651797346376082820.Spec : Prop :=
  ∀ n, P2651797346376082820.a n = A140265 (n + 1)

end A140265

/-! ## A140265.P16179030551773525280

`A117967(A004526(n+1))+A142150(n)+1`
-/

namespace A140265.P16179030551773525280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 (A004526 (n + 1)).toNat + (A142150 n + 1)

end

end A140265.P16179030551773525280

namespace A140265

/-- `A117967(A004526(n+1))+A142150(n)+1` -/
def P16179030551773525280.Spec : Prop :=
  ∀ n, P16179030551773525280.a n = A140265 (n + 1)

end A140265

/-! ## A140265.P16038584445825253929

`A008619(2*A140263(n))`
-/

namespace A140265.P16038584445825253929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A140263 n).toNat

end

end A140265.P16038584445825253929

namespace A140265

/-- `A008619(2*A140263(n))` -/
def P16038584445825253929.Spec : Prop :=
  ∀ n, P16038584445825253929.a n = A140265 (n + 1)

end A140265

/-! ## A140265.P7925984124069093224

`1-A001057(2*A140263(n))`
-/

namespace A140265.P7925984124069093224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001057 (2 * A140263 n).toNat

end

end A140265.P7925984124069093224

namespace A140265

/-- `1-A001057(2*A140263(n))` -/
def P7925984124069093224.Spec : Prop :=
  ∀ n, P7925984124069093224.a n = A140265 (n + 1)

end A140265

/-! ## A140265.P15576384765360358788

`1-A057428(n)*A140263(n)`
-/

namespace A140265.P15576384765360358788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 n * A140263 n

end

end A140265.P15576384765360358788

namespace A140265

/-- `1-A057428(n)*A140263(n)` -/
def P15576384765360358788.Spec : Prop :=
  ∀ n, P15576384765360358788.a n = A140265 (n + 1)

end A140265

/-! ## A140265.P2840706794916227213

`2-(A085478(∑[n])-A140263(n))`
-/

namespace A140265.P2840706794916227213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A085478 (∑ j ∈ Finset.range (n + 1), f1 j) - A140263 n)

end

end A140265.P2840706794916227213

namespace A140265

/-- `2-(A085478(∑[n])-A140263(n))` -/
def P2840706794916227213.Spec : Prop :=
  ∀ n, P2840706794916227213.a n = A140265 (n + 1)

end A140265

/-! ## A140265.P17496470984366201750

`1-(A053186(n²)-A140263(n))`
-/

namespace A140265.P17496470984366201750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A053186 (n ^ 2) - A140263 n)

end

end A140265.P17496470984366201750

namespace A140265

/-- `1-(A053186(n²)-A140263(n))` -/
def P17496470984366201750.Spec : Prop :=
  ∀ n, P17496470984366201750.a n = A140265 (n + 1)

end A140265

/-!
# A140266: Inverse permutation to A140265.

The programs for A140266, the canonical program `A140266.P8746548474832639475` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140266 has offset 1).

The definition of A140266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140266.P8746548474832639475

`A004741((n+1)²-A004488(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A140266

/-- `A004741((n+1)²-A004488(n))` -/
def P8746548474832639475.Spec : Prop :=
  ∀ n, P8746548474832639475.a n = A140266 (n + 1)

theorem P8746548474832639475.correct : P8746548474832639475.Spec := by
  intro n
  simp only [A140266, Nat.add_sub_cancel]

end A140266

/-! ## A140266.P3770589194586436591

`A253580(A004488(n)²+n)+1`
-/

namespace A140266.P3770589194586436591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253580 (A004488 n ^ 2 + (n : ℤ)).toNat + 1

end

end A140266.P3770589194586436591

namespace A140266

/-- `A253580(A004488(n)²+n)+1` -/
def P3770589194586436591.Spec : Prop :=
  ∀ n, P3770589194586436591.a n = A140266 (n + 1)

end A140266

/-! ## A140266.P1502563349307800491

`A140264(n)+1`
-/

namespace A140266.P1502563349307800491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140264 n + 1

end

end A140266.P1502563349307800491

namespace A140266

/-- `A140264(n)+1` -/
def P1502563349307800491.Spec : Prop :=
  ∀ n, P1502563349307800491.a n = A140266 (n + 1)

end A140266

/-! ## A140266.P11773279990618774951

`A008619(2*A140264(n))`
-/

namespace A140266.P11773279990618774951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A140264 n).toNat

end

end A140266.P11773279990618774951

namespace A140266

/-- `A008619(2*A140264(n))` -/
def P11773279990618774951.Spec : Prop :=
  ∀ n, P11773279990618774951.a n = A140266 (n + 1)

end A140266

/-! ## A140266.P924325727097381971

`A027656(2*A140264(n))`
-/

namespace A140266.P924325727097381971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A140264 n).toNat

end

end A140266.P924325727097381971

namespace A140266

/-- `A027656(2*A140264(n))` -/
def P924325727097381971.Spec : Prop :=
  ∀ n, P924325727097381971.a n = A140266 (n + 1)

end A140266

/-! ## A140266.P8127677319023782449

`A028242(2*A140264(n))`
-/

namespace A140266.P8127677319023782449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A140264 n).toNat

end

end A140266.P8127677319023782449

namespace A140266

/-- `A028242(2*A140264(n))` -/
def P8127677319023782449.Spec : Prop :=
  ∀ n, P8127677319023782449.a n = A140266 (n + 1)

end A140266

/-! ## A140266.P11673454079954786266

`A029579(2*A140264(n))`
-/

namespace A140266.P11673454079954786266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A140264 n).toNat

end

end A140266.P11673454079954786266

namespace A140266

/-- `A029579(2*A140264(n))` -/
def P11673454079954786266.Spec : Prop :=
  ∀ n, P11673454079954786266.a n = A140266 (n + 1)

end A140266

/-! ## A140266.P12489343816608302820

`A008611(3*A140264(n))`
-/

namespace A140266.P12489343816608302820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A140264 n).toNat

end

end A140266.P12489343816608302820

namespace A140266

/-- `A008611(3*A140264(n))` -/
def P12489343816608302820.Spec : Prop :=
  ∀ n, P12489343816608302820.a n = A140266 (n + 1)

end A140266

/-! ## A140266.P17297782817514998167

`A008624(4*A140264(n))`
-/

namespace A140266.P17297782817514998167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (4 * A140264 n).toNat

end

end A140266.P17297782817514998167

namespace A140266

/-- `A008624(4*A140264(n))` -/
def P17297782817514998167.Spec : Prop :=
  ∀ n, P17297782817514998167.a n = A140266 (n + 1)

end A140266

/-! ## A140266.P4114019045042732399

`A008612(6*A140264(n))`
-/

namespace A140266.P4114019045042732399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A140264 n).toNat

end

end A140266.P4114019045042732399

namespace A140266

/-- `A008612(6*A140264(n))` -/
def P4114019045042732399.Spec : Prop :=
  ∀ n, P4114019045042732399.a n = A140266 (n + 1)

end A140266

/-!
# A140267: Nonnegative integers in balanced ternary representation (with 2 standing for -1 digit).

The programs for A140267, the canonical program `A140267.P8124456129966607887` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140267 has offset 0).

The definition of A140267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140267.P8124456129966607887

`A007089(A060373(n))+A007089(A060374(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A140267

/-- `A007089(A060373(n))+A007089(A060374(n))` -/
def P8124456129966607887.Spec : Prop :=
  ∀ n, P8124456129966607887.a n = A140267 n

theorem P8124456129966607887.correct : P8124456129966607887.Spec := by
  intro n
  simp only [A140267]

end A140267

/-! ## A140267.P10435949417173324221

`A007089(A117967(n))`
-/

namespace A140267.P10435949417173324221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A117967 n).toNat

end

end A140267.P10435949417173324221

namespace A140267

/-- `A007089(A117967(n))` -/
def P10435949417173324221.Spec : Prop :=
  ∀ n, P10435949417173324221.a n = A140267 n

end A140267

/-! ## A140267.P6155474771553651363

`A007089(A060373(3*n)+n)`
-/

namespace A140267.P6155474771553651363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A060373 (3 * n) + (n : ℤ)).toNat

end

end A140267.P6155474771553651363

namespace A140267

/-- `A007089(A060373(3*n)+n)` -/
def P6155474771553651363.Spec : Prop :=
  ∀ n, P6155474771553651363.a n = A140267 n

end A140267

/-! ## A140267.P3842157631023361835

`A007089(A060374(n)+A060373(n))`
-/

namespace A140267.P3842157631023361835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A060374 n + A060373 n).toNat

end

end A140267.P3842157631023361835

namespace A140267

/-- `A007089(A060374(n)+A060373(n))` -/
def P3842157631023361835.Spec : Prop :=
  ∀ n, P3842157631023361835.a n = A140267 n

end A140267

/-! ## A140267.P3769821887884784406

`A007089(A117966(2*n)+A004488(n))`
-/

namespace A140267.P3769821887884784406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A117966 (2 * n) + A004488 n).toNat

end

end A140267.P3769821887884784406

namespace A140267

/-- `A007089(A117966(2*n)+A004488(n))` -/
def P3769821887884784406.Spec : Prop :=
  ∀ n, P3769821887884784406.a n = A140267 n

end A140267

/-! ## A140267.P15085701868978704366

`A007089(A140263(2*n)-n)`
-/

namespace A140267.P15085701868978704366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A140263 (2 * n) - (n : ℤ)).toNat

end

end A140267.P15085701868978704366

namespace A140267

/-- `A007089(A140263(2*n)-n)` -/
def P15085701868978704366.Spec : Prop :=
  ∀ n, P15085701868978704366.a n = A140267 n

end A140267

/-! ## A140267.P15568280167472980294

`A007089(A004488(A140263(2*n)))`
-/

namespace A140267.P15568280167472980294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A004488 (A140263 (2 * n)).toNat).toNat

end

end A140267.P15568280167472980294

namespace A140267

/-- `A007089(A004488(A140263(2*n)))` -/
def P15568280167472980294.Spec : Prop :=
  ∀ n, P15568280167472980294.a n = A140267 n

end A140267

/-!
# A140268: a(n) = negative integer -n presented in balanced ternary system.

The programs for A140268, there is no canonical definition to state claims against.
-/

/-! ## A140268.P13322801314132857078

`A007089(A117968(n+1))`
-/

namespace A140268.P13322801314132857078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A117968 (n + 1)).toNat

end

end A140268.P13322801314132857078

/-! ## A140268.P1815959479723658977

`A072998(A338246(n+1))`
-/

namespace A140268.P1815959479723658977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072998 (A338246 (n + 1)).toNat

end

end A140268.P1815959479723658977

/-! ## A140268.P15695909418832643789

`A007089(A140263(2*(n+1)))`
-/

namespace A140268.P15695909418832643789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A140263 (2 * (n + 1))).toNat

end

end A140268.P15695909418832643789

/-! ## A140268.P7568955256252962813

`A007089(∑[Δ[A117967(n)]+1])`
-/

namespace A140268.P7568955256252962813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A140268.P7568955256252962813

/-! ## A140268.P1211732311532362162

`A007089(A117967(n+1)+1+n)`
-/

namespace A140268.P1211732311532362162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A117967 (n + 1) + 1 + (n : ℤ)).toNat

end

end A140268.P1211732311532362162

/-!
# A140269: Numbers n such that gcd((largest divisor of n that is <= sqrt(n)), (smallest divisor of n that is >=sqrt(n))) > 1.

The programs for A140269, there is no canonical definition to state claims against.
-/

/-! ## A140269.P14838864268116679897

`lt[A033677(n+1), A354933(n+1)]+1`
-/

namespace A140269.P14838864268116679897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A140269.P14838864268116679897

/-! ## A140269.P1415818262242609608

`A061767(lt[A033677(n+1), A354933(n+1)])`
-/

namespace A140269.P1415818262242609608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A140269.P1415818262242609608

/-! ## A140269.P14407731266289089140

`A061767(lt[(n+1)/A033676(n+1), A354933(n+1)])`
-/

namespace A140269.P14407731266289089140
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A033676 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A140269.P14407731266289089140

/-! ## A140269.P10428203856570449757

`lt[A163457(n+2)², n+3]+2`
-/

namespace A140269.P10428203856570449757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163457 (n + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A140269.P10428203856570449757

/-! ## A140269.P11927129699564743721

`lt[A163457(A233583(n+1)), A003059(n+1)]`
-/

namespace A140269.P11927129699564743721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163457 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A140269.P11927129699564743721

/-!
# A140270: A number n is included if gcd((largest divisor of n that is < sqrt(n)), (smallest divisor of n that is > sqrt(n))) > 1.

The programs for A140270, there is no canonical definition to state claims against.
-/

/-! ## A140270.P10936597459167560659

`lt[A163457(n+2)², n]+2`
-/

namespace A140270.P10936597459167560659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163457 (n + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A140270.P10936597459167560659

/-! ## A140270.P8520987556396964688

`lt[A163457(A233583(n+1))², n]`
-/

namespace A140270.P8520987556396964688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163457 (A233583 (n + 1)).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A140270.P8520987556396964688

/-! ## A140270.P15625175810955053096

`lt[A163457(n+2), A003059(n+1)]+2`
-/

namespace A140270.P15625175810955053096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163457 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A140270.P15625175810955053096

/-!
# A140271: Least divisor of n that is > sqrt(n), with a(1) = 1.

The programs for A140271, there is no canonical definition to state claims against.
-/

/-! ## A140271.P3593805691422506530

`(n+1)/A060775(n+1)`
-/

namespace A140271.P3593805691422506530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A060775 (n + 1) : ℚ)

end

end A140271.P3593805691422506530

/-! ## A140271.P9245184406800055991

`A027750(A054519(n)+ceil(∏{e}[n+1, #+1]/2))`
-/

namespace A140271.P9245184406800055991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A054519 n + ⌈((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌉).toNat

end

end A140271.P9245184406800055991

/-! ## A140271.P9504066974991234385

`A027750(A054519(n)+round(∏{e}[n+1, #+1]/2))`
-/

namespace A140271.P9504066974991234385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A054519 n + SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2)).toNat

end

end A140271.P9504066974991234385

/-! ## A140271.P11781218944707661905

`A027750(A054519(n)+floor((∏{e}[n+1, #+1]+1)/2))`
-/

namespace A140271.P11781218944707661905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A054519 n + ⌊((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 1 : ℕ) : ℚ) / 2⌋).toNat

end

end A140271.P11781218944707661905

/-! ## A140271.P9774131767690390566

`A027750(A054519(n)+A038548(n+1))`
-/

namespace A140271.P9774131767690390566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A054519 n + A038548 (n + 1)).toNat

end

end A140271.P9774131767690390566

/-! ## A140271.P12294439846891402066

`A027750(A038548(n+1)+A006218(n)+1)`
-/

namespace A140271.P12294439846891402066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A038548 (n + 1) + (A006218 n + 1)).toNat

end

end A140271.P12294439846891402066

/-! ## A140271.P3566465625747618910

`A027750(A054519(n)+ceil(A000005(n+1)/2))`
-/

namespace A140271.P3566465625747618910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A054519 n + ⌈(A000005 (n + 1) : ℚ) / 2⌉).toNat

end

end A140271.P3566465625747618910

/-! ## A140271.P11204031189085647887

`A027750(A054519(n)+ceil((A334954(n+1)-1)/2))`
-/

namespace A140271.P11204031189085647887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A054519 n + ⌈(A334954 (n + 1) - 1 : ℚ) / 2⌉).toNat

end

end A140271.P11204031189085647887

/-! ## A140271.P4765630035658197563

`A027750(A038548(n+1)+eq[1, A027750(n+1)]+1)`
-/

namespace A140271.P4765630035658197563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A038548 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + 1).toNat

end

end A140271.P4765630035658197563

/-! ## A140271.P2206651131370453765

`A027750(A054519(n)+A004526(∏{e}[n+1, #+1]+1))`
-/

namespace A140271.P2206651131370453765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A054519 n + A004526 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 1)).toNat

end

end A140271.P2206651131370453765

/-! ## A140271.P9606516967147996557

`A219158(A060775(n+1)+A000217(n))`
-/

namespace A140271.P9606516967147996557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A060775 (n + 1) + A000217 n).toNat

end

end A140271.P9606516967147996557

/-! ## A140271.P4772560534819090645

`val(A000079(n), A000079(A060775(n+1)))+1`
-/

namespace A140271.P4772560534819090645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 n).toNat (A000079 (A060775 (n + 1)).toNat).toNat + 1

end

end A140271.P4772560534819090645

/-! ## A140271.P7265951992546161029

`A054531(A060775(n+1)+∑[n])`
-/

namespace A140271.P7265951992546161029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A060775 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A140271.P7265951992546161029

/-!
# A140274: a(1)=1; a(n)=least nonnegative integer such that the concatenation of all terms, including a(n), is == 1 (mod n).

The programs for A140274, there is no canonical definition to state claims against.
-/

/-! ## A140274.P18113316245467005464

`A095231(n+1)%A095208(A306458(n+1))`
-/

namespace A140274.P18113316245467005464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095231 (n + 1)) (A095208 (A306458 (n + 1)).toNat)

end

end A140274.P18113316245467005464

/-! ## A140274.P14988430180907991798

`A095231(n+1)%A095231(A057548(A100692(n)))`
-/

namespace A140274.P14988430180907991798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095231 (n + 1)) (A095231 (A057548 (A100692 n).toNat).toNat)

end

end A140274.P14988430180907991798

/-!
# A140275: Total number of distinct solutions (modulo lcm(1,2,...,n)) of the system of congruences x == i (mod p(i)), i=1,2,...,n, where p is a permutation of order n.

The programs for A140275, there is no canonical definition to state claims against.
-/

/-! ## A140275.P7994838575092012403

`A003842(n)*A119791(A186997(n))`
-/

namespace A140275.P7994838575092012403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n * A119791 (A186997 n).toNat

end

end A140275.P7994838575092012403

/-! ## A140275.P17268303310804612713

`A003023(A015775(n+1))*A081676(n+1)`
-/

namespace A140275.P17268303310804612713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003023 (A015775 (n + 1)).toNat * A081676 (n + 1)

end

end A140275.P17268303310804612713

/-!
# A140276: Floor of the (first-quadrant) angle in degrees whose tangent is n.

The programs for A140276, the canonical program `A140276.P17298397352012173531` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140276 has offset 0).

The definition of A140276 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140276.P17298397352012173531

`floor(180*atan(n)/π)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A140276

/-- `floor(180*atan(n)/π)` -/
def P17298397352012173531.Spec : Prop :=
  ∀ n, P17298397352012173531.a n = A140276 n

theorem P17298397352012173531.correct : P17298397352012173531.Spec := by
  intro n
  simp only [A140276]

end A140276

/-!
# A140277: Rounded (first-quadrant) angle in degrees whose tangent is n.

The programs for A140277, the canonical program `A140277.P6365988790545978647` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140277 has offset 0).

The definition of A140277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140277.P6365988790545978647

`round(180*atan(n)/π)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A140277

/-- `round(180*atan(n)/π)` -/
def P6365988790545978647.Spec : Prop :=
  ∀ n, P6365988790545978647.a n = A140277 n

theorem P6365988790545978647.correct : P6365988790545978647.Spec := by
  intro n
  simp only [A140277]

end A140277

/-!
# A140278: Ceiling of the (first-quadrant) angle in degrees whose tangent is n.

The programs for A140278, the canonical program `A140278.P5145372208652285668` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140278 has offset 0).

The definition of A140278 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140278.P5145372208652285668

`ceil(180*atan(n)/π)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A140278

/-- `ceil(180*atan(n)/π)` -/
def P5145372208652285668.Spec : Prop :=
  ∀ n, P5145372208652285668.a n = A140278 n

theorem P5145372208652285668.correct : P5145372208652285668.Spec := by
  intro n
  simp only [A140278]

end A140278

/-!
# A140280: Product of digits of values in Pascal's triangle, by rows.

The programs for A140280, the canonical program `A140280.P15285720908636328681` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140280 has offset 0).

The definition of A140280 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A140280.P15285720908636328681

`A007954(A007318(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A140280

/-- `A007954(A007318(n))` -/
def P15285720908636328681.Spec : Prop :=
  ∀ n, P15285720908636328681.a n = A140280 n

theorem P15285720908636328681.correct : P15285720908636328681.Spec := by
  intro n
  simp only [A140280]

end A140280

/-! ## A140280.P17628216096466551541

`∏{digits}[A108086(n), #]`
-/

namespace A140280.P17628216096466551541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A140280.P17628216096466551541

namespace A140280

/-- `∏{digits}[A108086(n), #]` -/
def P17628216096466551541.Spec : Prop :=
  ∀ n, (P17628216096466551541.a n : ℤ) = A140280 n

end A140280

/-! ## A140280.P3349793318234718320

`∏{digits}[A117440(n), #]`
-/

namespace A140280.P3349793318234718320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117440 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A140280.P3349793318234718320

namespace A140280

/-- `∏{digits}[A117440(n), #]` -/
def P3349793318234718320.Spec : Prop :=
  ∀ n, (P3349793318234718320.a n : ℤ) = A140280 n

end A140280

/-! ## A140280.P15666285012884005860

`∏{digits}[A130595(n), #]`
-/

namespace A140280.P15666285012884005860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A140280.P15666285012884005860

namespace A140280

/-- `∏{digits}[A130595(n), #]` -/
def P15666285012884005860.Spec : Prop :=
  ∀ n, (P15666285012884005860.a n : ℤ) = A140280 n

end A140280

/-! ## A140280.P11480617381567463010

`∏{digits}[A154926(n+1), #]`
-/

namespace A140280.P11480617381567463010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154926 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A140280.P11480617381567463010

namespace A140280

/-- `∏{digits}[A154926(n+1), #]` -/
def P11480617381567463010.Spec : Prop :=
  ∀ n, (P11480617381567463010.a n : ℤ) = A140280 n

end A140280

/-! ## A140280.P16677077600564094563

`∏{digits}[A152905(2*n), #]`
-/

namespace A140280.P16677077600564094563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152905 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A140280.P16677077600564094563

namespace A140280

/-- `∏{digits}[A152905(2*n), #]` -/
def P16677077600564094563.Spec : Prop :=
  ∀ n, (P16677077600564094563.a n : ℤ) = A140280 n

end A140280

/-! ## A140280.P10660325989646036061

`∏{digits}[A052553(A245300(n)), #]`
-/

namespace A140280.P10660325989646036061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 (A245300 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A140280.P10660325989646036061

namespace A140280

/-- `∏{digits}[A052553(A245300(n)), #]` -/
def P10660325989646036061.Spec : Prop :=
  ∀ n, (P10660325989646036061.a n : ℤ) = A140280 n

end A140280

/-! ## A140280.P8127555764967326368

`∏{digits}[A158020(A185869(n+1)), #]`
-/

namespace A140280.P8127555764967326368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158020 (A185869 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A140280.P8127555764967326368

namespace A140280

/-- `∏{digits}[A158020(A185869(n+1)), #]` -/
def P8127555764967326368.Spec : Prop :=
  ∀ n, (P8127555764967326368.a n : ℤ) = A140280 n

end A140280

/-! ## A140280.P3600220852390932625

`∏{digits}[A273943(A028326(n)), #]`
-/

namespace A140280.P3600220852390932625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A028326 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A140280.P3600220852390932625

namespace A140280

/-- `∏{digits}[A273943(A028326(n)), #]` -/
def P3600220852390932625.Spec : Prop :=
  ∀ n, (P3600220852390932625.a n : ℤ) = A140280 n

end A140280

/-! ## A140280.P5711964776931266786

`∏{digits}[A273943(A124927(n)), #]`
-/

namespace A140280.P5711964776931266786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A124927 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A140280.P5711964776931266786

namespace A140280

/-- `∏{digits}[A273943(A124927(n)), #]` -/
def P5711964776931266786.Spec : Prop :=
  ∀ n, (P5711964776931266786.a n : ℤ) = A140280 n

end A140280

/-! ## A140280.P2876276253593814300

`∏{digits}[A273943(A134058(n)), #]`
-/

namespace A140280.P2876276253593814300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A134058 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A140280.P2876276253593814300

namespace A140280

/-- `∏{digits}[A273943(A134058(n)), #]` -/
def P2876276253593814300.Spec : Prop :=
  ∀ n, (P2876276253593814300.a n : ℤ) = A140280 n

end A140280

/-! ## A140280.P17671901434899952051

`A007954(Δ[A102363(n)])`
-/

namespace A140280.P17671901434899952051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (f1 (n + 1) - f1 n).toNat

end

end A140280.P17671901434899952051

namespace A140280

/-- `A007954(Δ[A102363(n)])` -/
def P17671901434899952051.Spec : Prop :=
  ∀ n, P17671901434899952051.a n = A140280 n

end A140280

/-! ## A140280.P6732549520022057401

`A007954(A014473(n)+1)`
-/

namespace A140280.P6732549520022057401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A014473 n + 1).toNat

end

end A140280.P6732549520022057401

namespace A140280

/-- `A007954(A014473(n)+1)` -/
def P6732549520022057401.Spec : Prop :=
  ∀ n, P6732549520022057401.a n = A140280 n

end A140280

/-! ## A140280.P11209580986476744881

`A007954(A028326(n)/2)`
-/

namespace A140280.P11209580986476744881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (SequenceMachineLib.roundAway ((A028326 n : ℚ) / 2)).toNat

end

end A140280.P11209580986476744881

namespace A140280

/-- `A007954(A028326(n)/2)` -/
def P11209580986476744881.Spec : Prop :=
  ∀ n, P11209580986476744881.a n = A140280 n

end A140280

/-! ## A140280.P16505091893285973598

`A007954(A176348(n)/A176346(n))`
-/

namespace A140280.P16505091893285973598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (SequenceMachineLib.roundAway ((A176348 n : ℚ) / (A176346 n : ℚ))).toNat

end

end A140280.P16505091893285973598

namespace A140280

/-- `A007954(A176348(n)/A176346(n))` -/
def P16505091893285973598.Spec : Prop :=
  ∀ n, P16505091893285973598.a n = A140280 n

end A140280

/-! ## A140280.P5677823928992777035

`A007954(gcd(A124927(n), A124928(n)))`
-/

namespace A140280.P5677823928992777035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (Int.gcd (A124927 n) (A124928 n))

end

end A140280.P5677823928992777035

namespace A140280

/-- `A007954(gcd(A124927(n), A124928(n)))` -/
def P5677823928992777035.Spec : Prop :=
  ∀ n, P5677823928992777035.a n = A140280 n

end A140280

/-! ## A140280.P15984047731505582584

`A007954(C(A003056(n), A002262(n)))`
-/

namespace A140280.P15984047731505582584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (Nat.choose (A003056 n).toNat (A002262 n).toNat)

end

end A140280.P15984047731505582584

namespace A140280

/-- `A007954(C(A003056(n), A002262(n)))` -/
def P15984047731505582584.Spec : Prop :=
  ∀ n, P15984047731505582584.a n = A140280 n

end A140280

/-! ## A140280.P3135625358624909107

`A007954(C(A003056(n), A025581(n)))`
-/

namespace A140280.P3135625358624909107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (Nat.choose (A003056 n).toNat (A025581 n).toNat)

end

end A140280.P3135625358624909107

namespace A140280

/-- `A007954(C(A003056(n), A025581(n)))` -/
def P3135625358624909107.Spec : Prop :=
  ∀ n, P3135625358624909107.a n = A140280 n

end A140280

/-! ## A140280.P9541796062599016159

`A007954(A102363(n+1)-A102363(n))`
-/

namespace A140280.P9541796062599016159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A102363 (n + 1) - A102363 n).toNat

end

end A140280.P9541796062599016159

namespace A140280

/-- `A007954(A102363(n+1)-A102363(n))` -/
def P9541796062599016159.Spec : Prop :=
  ∀ n, P9541796062599016159.a n = A140280 n

end A140280

/-! ## A140280.P10925652763578241960

`A007954(2*A124927(n)-A124928(n))`
-/

namespace A140280.P10925652763578241960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (2 * A124927 n - A124928 n).toNat

end

end A140280.P10925652763578241960

namespace A140280

/-- `A007954(2*A124927(n)-A124928(n))` -/
def P10925652763578241960.Spec : Prop :=
  ∀ n, P10925652763578241960.a n = A140280 n

end A140280

/-!
# A140282: Numbers k such that A000330(k) is multiple of 3.

The programs for A140282, the canonical program `A140282.P15039976820010532297` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140282 has offset 0).

The definition of A140282 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140282.P15039976820010532297

`a(n-3)+9` with `a(0)=0, a(1)=4, a(2)=8`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A140282

/-- `a(n-3)+9` -/
def P15039976820010532297.Spec : Prop :=
  ∀ n, (P15039976820010532297.a n : ℤ) = A140282 n

theorem P15039976820010532297.correct : P15039976820010532297.Spec := by
  intro n
  simp only [A140282]

end A140282

/-! ## A140282.P8129102171352837578

`3*(n-floor(n/3))+n`
-/

namespace A140282.P8129102171352837578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) - ⌊(n : ℚ) / 3⌋) + (n : ℤ)

end

end A140282.P8129102171352837578

namespace A140282

/-- `3*(n-floor(n/3))+n` -/
def P8129102171352837578.Spec : Prop :=
  ∀ n, P8129102171352837578.a n = A140282 n

end A140282

/-! ## A140282.P4642313779621723993

`∑[and(5, dr(6*n²))]`
-/

namespace A140282.P4642313779621723993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 5 (SequenceMachineLib.digitalRoot (6 * n ^ 2 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140282.P4642313779621723993

namespace A140282

/-- `∑[and(5, dr(6*n²))]` -/
def P4642313779621723993.Spec : Prop :=
  ∀ n, (P4642313779621723993.a n : ℤ) = A140282 n

end A140282

/-! ## A140282.P9841244665647600273

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=4, a(2)=4, a(3)=1`
-/

namespace A140282.P9841244665647600273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 4, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140282.P9841244665647600273

namespace A140282

/-- `∑[abs(a(n-3))]` -/
def P9841244665647600273.Spec : Prop :=
  ∀ n, (P9841244665647600273.a n : ℤ) = A140282 n

end A140282

/-! ## A140282.P9276508736733090112

`∑[dr(a(n-3))]` with `a(0)=0, a(1)=4, a(2)=4, a(3)=1`
-/

namespace A140282.P9276508736733090112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 4, 1] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140282.P9276508736733090112

namespace A140282

/-- `∑[dr(a(n-3))]` -/
def P9276508736733090112.Spec : Prop :=
  ∀ n, (P9276508736733090112.a n : ℤ) = A140282 n

end A140282

/-! ## A140282.P4550047270112254898

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=4, a(2)=4, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A140282.P4550047270112254898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 4, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140282.P4550047270112254898

namespace A140282

/-- `∑[floor(a(n-3))]` -/
def P4550047270112254898.Spec : Prop :=
  ∀ n, (P4550047270112254898.a n : ℤ) = A140282 n

end A140282

/-! ## A140282.P4517155601603883277

`∑[round(a(n-3))]` with `a(0)=0, a(1)=4, a(2)=4, a(3)=1`

`round` is left out, it is the identity on integers.
-/

namespace A140282.P4517155601603883277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 4, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140282.P4517155601603883277

namespace A140282

/-- `∑[round(a(n-3))]` -/
def P4517155601603883277.Spec : Prop :=
  ∀ n, (P4517155601603883277.a n : ℤ) = A140282 n

end A140282

/-! ## A140282.P3537615820596531706

`∑[(2-a(n-3))²]` with `a(0)=0, a(1)=4, a(2)=4, a(3)=1`
-/

namespace A140282.P3537615820596531706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 4, 1] fun n f1 =>
  (2 - f1 (n - 3)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140282.P3537615820596531706

namespace A140282

/-- `∑[(2-a(n-3))²]` -/
def P3537615820596531706.Spec : Prop :=
  ∀ n, P3537615820596531706.a n = A140282 n

end A140282

/-! ## A140282.P18035299109289704728

`lt[n, (dr(2*n)-5)*(n-1)]`
-/

namespace A140282.P18035299109289704728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot (2 * n : ℤ) : ℤ) - 5) * ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A140282.P18035299109289704728

namespace A140282

/-- `lt[n, (dr(2*n)-5)*(n-1)]` -/
def P18035299109289704728.Spec : Prop :=
  ∀ n, (P18035299109289704728.a n : ℤ) = A140282 n

end A140282

/-! ## A140282.P45165845677485601

`∑[4/(5-a(n-3))]` with `a(0)=0, a(1)=4, a(2)=4, a(3)=1`
-/

namespace A140282.P45165845677485601
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 4, 4, 1] fun n f1 =>
  4 / (5 - f1 (n - 3))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140282.P45165845677485601

namespace A140282

/-- `∑[4/(5-a(n-3))]` -/
def P45165845677485601.Spec : Prop :=
  ∀ n, P45165845677485601.a n = (A140282 n : ℚ)

end A140282

/-! ## A140282.P7910240160415955095

`eq[0, C(n-1, a(n-3)²)]` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A140282.P7910240160415955095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n f2 =>
  Nat.choose ((n : ℤ) - 1).toNat (f2 (n - 3) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140282.P7910240160415955095

namespace A140282

/-- `eq[0, C(n-1, a(n-3)²)]` -/
def P7910240160415955095.Spec : Prop :=
  ∀ n, (P7910240160415955095.a n : ℤ) = A140282 n

end A140282

/-! ## A140282.P14407222363798424805

`lt[dr(n+3+n)+n-1, n+3]`
-/

namespace A140282.P14407222363798424805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (n + 3 + n : ℤ) : ℤ) + ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A140282.P14407222363798424805

namespace A140282

/-- `lt[dr(n+3+n)+n-1, n+3]` -/
def P14407222363798424805.Spec : Prop :=
  ∀ n, (P14407222363798424805.a n : ℤ) = A140282 n

end A140282

/-! ## A140282.P13390408688731895171

`∑[2*a(n-3)-a(n-3)]` with `a(0)=0, a(1)=4, a(2)=4, a(3)=1`
-/

namespace A140282.P13390408688731895171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 4, 1] fun n f1 =>
  2 * f1 (n - 3) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140282.P13390408688731895171

namespace A140282

/-- `∑[2*a(n-3)-a(n-3)]` -/
def P13390408688731895171.Spec : Prop :=
  ∀ n, P13390408688731895171.a n = A140282 n

end A140282

/-! ## A140282.P11191667529169972128

`∑[a(n-3)^(a(n-3)-3)]` with `a(0)=0, a(1)=4, a(2)=4, a(3)=1`
-/

namespace A140282.P11191667529169972128
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 4, 4, 1] fun n f1 =>
  f1 (n - 3) ^ (f1 (n - 3) - 3)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140282.P11191667529169972128

namespace A140282

/-- `∑[a(n-3)^(a(n-3)-3)]` -/
def P11191667529169972128.Spec : Prop :=
  ∀ n, P11191667529169972128.a n = (A140282 n : ℝ)

end A140282

/-! ## A140282.P2406091320812281706

`∑[(1-A099837(n))²]`
-/

namespace A140282.P2406091320812281706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A099837 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140282.P2406091320812281706

namespace A140282

/-- `∑[(1-A099837(n))²]` -/
def P2406091320812281706.Spec : Prop :=
  ∀ n, P2406091320812281706.a n = A140282 n

end A140282

/-! ## A140282.P13364650428298284102

`∑[(1-A164359(n))²]`
-/

namespace A140282.P13364650428298284102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A164359 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140282.P13364650428298284102

namespace A140282

/-- `∑[(1-A164359(n))²]` -/
def P13364650428298284102.Spec : Prop :=
  ∀ n, P13364650428298284102.a n = A140282 n

end A140282

/-! ## A140282.P5960680698498674935

`∪[A274406(n+1), A017209(n)]`
-/

namespace A140282.P5960680698498674935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140282.P5960680698498674935

namespace A140282

/-- `∪[A274406(n+1), A017209(n)]` -/
def P5960680698498674935.Spec : Prop :=
  ∀ n, (P5960680698498674935.a n : ℤ) = A140282 n

end A140282

/-! ## A140282.P13845740194303822712

`A229144(A047399(n+1))`
-/

namespace A140282.P13845740194303822712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229144 (A047399 (n + 1)).toNat

end

end A140282.P13845740194303822712

namespace A140282

/-- `A229144(A047399(n+1))` -/
def P13845740194303822712.Spec : Prop :=
  ∀ n, P13845740194303822712.a n = A140282 n

end A140282

/-! ## A140282.P9999630726146607605

`A229144(A047407(n+1))`
-/

namespace A140282.P9999630726146607605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229144 (A047407 (n + 1)).toNat

end

end A140282.P9999630726146607605

namespace A140282

/-- `A229144(A047407(n+1))` -/
def P9999630726146607605.Spec : Prop :=
  ∀ n, P9999630726146607605.a n = A140282 n

end A140282

/-!
# A140283: A weighted crossed binomial Hodge diamond triangle from coefficients of Hodge polynomials as monomials.

The programs for A140283, there is no canonical definition to state claims against.
-/

/-! ## A140283.P14045434721591201029

`A174040(n)%A334726(n)+1`
-/

namespace A140283.P14045434721591201029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174040 n) (A334726 n) + 1

end

end A140283.P14045434721591201029

/-! ## A140283.P17099724827579812181

`A174040(n)+A057427(3^n-1)`
-/

namespace A140283.P17099724827579812181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174040 n + A057427 (3 ^ n - 1)

end

end A140283.P17099724827579812181

/-! ## A140283.P1587617396879476707

`A000005(or(A054719(n), A103451(n)))`
-/

namespace A140283.P1587617396879476707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor (A054719 n) (A103451 n)).toNat

end

end A140283.P1587617396879476707

/-!
# A140284: A weighted binomial triangle with smooth weighting function: f(n,d) = Floor[1 + d*Sech[d/2 - n]].

The programs for A140284, there is no canonical definition to state claims against.
-/

/-! ## A140284.P1027350265556537819

`A157454(n+1)*A335521(A036561(n))`
-/

namespace A140284.P1027350265556537819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157454 (n + 1) * A335521 (A036561 n).toNat

end

end A140284.P1027350265556537819

/-! ## A140284.P5724442306816028131

`A131516(3*A059922(n))`
-/

namespace A140284.P5724442306816028131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131516 (3 * A059922 n).toNat

end

end A140284.P5724442306816028131

/-! ## A140284.P7184597051511683563

`A163638(3*A059922(n))`
-/

namespace A140284.P7184597051511683563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163638 (3 * A059922 n).toNat

end

end A140284.P7184597051511683563

/-! ## A140284.P18387615544195536143

`A131516(3*A309876(n))`
-/

namespace A140284.P18387615544195536143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131516 (3 * A309876 n).toNat

end

end A140284.P18387615544195536143

/-! ## A140284.P15108488804373367219

`A163638(3*A309876(n))`
-/

namespace A140284.P15108488804373367219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163638 (3 * A309876 n).toNat

end

end A140284.P15108488804373367219

/-!
# A140286: The n-th lucky number which is the product of exactly n primes (with multiplicity).

The programs for A140286, there is no canonical definition to state claims against.
-/

/-! ## A140286.P15902966130577877906

`A046530(∏[or(5, A095972(n+5))])`
-/

namespace A140286.P15902966130577877906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 5 (A095972 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A140286.P15902966130577877906

/-!
# A140288: The least n-digit multiple of 5^n using the decimal digits {1, 2, 3, 4, 5} exclusively.

The programs for A140288, there is no canonical definition to state claims against.
-/

/-! ## A140288.P13834821302365824319

`∏[A000005(A014718(n)²)]`
-/

namespace A140288.P13834821302365824319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A014718 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A140288.P13834821302365824319

/-!
# A140289: First quadrisection of A140287.

The programs for A140289, there is no canonical definition to state claims against.
-/

/-! ## A140289.P8720245942512717844

`A140290(n+1)+2*A140290(n)`
-/

namespace A140289.P8720245942512717844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140290 (n + 1) + 2 * A140290 n

end

end A140289.P8720245942512717844

/-! ## A140289.P2936263642628506101

`Δ[A140290(n)]+3*A140290(n)`
-/

namespace A140289.P2936263642628506101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3 * A140290 n

end

end A140289.P2936263642628506101

/-! ## A140289.P8278756125296717386

`Δ[A140290(A028310(n))]%(3*A140290(n))`
-/

namespace A140289.P8278756125296717386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140290 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (3 * A140290 n)

end

end A140289.P8278756125296717386

/-! ## A140289.P14395183514712485774

`A140287(4*n)`
-/

namespace A140289.P14395183514712485774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140287 (4 * n)

end

end A140289.P14395183514712485774

/-! ## A140289.P17730763523368928556

`and(-3, A140287(A008574(n)))`
-/

namespace A140289.P17730763523368928556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A140287 (A008574 n).toNat)

end

end A140289.P17730763523368928556

/-!
# A140290: Fourth quadrisection of A140287.

The programs for A140290, there is no canonical definition to state claims against.
-/

/-! ## A140290.P10131369155672052643

`A140287(record[xor(3, n)])`
-/

namespace A140290.P10131369155672052643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140287 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A140290.P10131369155672052643

/-! ## A140290.P10418030421414961673

`A140287(4*n+3)`
-/

namespace A140290.P10418030421414961673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140287 (4 * n + 3)

end

end A140290.P10418030421414961673

/-! ## A140290.P573157372507106630

`A140287(A004767(n))+char[14]`
-/

namespace A140290.P573157372507106630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140287 (A004767 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A140290.P573157372507106630

/-! ## A140290.P10958132702529688225

`A185238(n)+A140287(A004767(n))`
-/

namespace A140290.P10958132702529688225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 n + A140287 (A004767 n).toNat

end

end A140290.P10958132702529688225

/-! ## A140290.P12579213513044240457

`or(A000122(n), A140287(A004767(n)))`
-/

namespace A140290.P12579213513044240457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 n) (A140287 (A004767 n).toNat)

end

end A140290.P12579213513044240457

/-!
# A140292: a(n) is a square mod a(n-1), a(n) > a(n-1) and a(n) semiprime.

The programs for A140292, there is no canonical definition to state claims against.
-/

/-! ## A140292.P7694584956505735154

`A001358(lt[A376675(n+1), A069835(n)])`
-/

namespace A140292.P7694584956505735154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A140292.P7694584956505735154

/-! ## A140292.P5233588249799257939

`A001358(lt[A376675(n+1), A033117(n+1)])`
-/

namespace A140292.P5233588249799257939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A140292.P5233588249799257939

/-! ## A140292.P8282101581703687068

`A001358(lt[A376675(n+1), A376716(2*n)])`
-/

namespace A140292.P8282101581703687068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376716 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A140292.P8282101581703687068

/-! ## A140292.P12143290411924453270

`record[A131749(A304404(n+1))]`
-/

namespace A140292.P12143290411924453270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131749 (A304404 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140292.P12143290411924453270

/-! ## A140292.P9999905953145301245

`A001358(lt[A331981(2*(n+2)), n])`
-/

namespace A140292.P9999905953145301245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331981 (2 * (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A140292.P9999905953145301245

/-!
# A140293: Numbers k such that k!/k#-1 is prime, where k# is the primorial function (A034386).

The programs for A140293, there is no canonical definition to state claims against.
-/

/-! ## A140293.P17726711178271741801

`∪[A141213(A141484(n+1)), A049421(n+2)]`
-/

namespace A140293.P17726711178271741801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 (A141484 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049421 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140293.P17726711178271741801

/-! ## A140293.P14239453759930100516

`A141213(A141484(n+1))`
-/

namespace A140293.P14239453759930100516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 (A141484 (n + 1)).toNat

end

end A140293.P14239453759930100516

/-! ## A140293.P2602884035374505349

`eq[A000196(n), A344887(A202650(n+1))]`
-/

namespace A140293.P2602884035374505349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344887 (A202650 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140293.P2602884035374505349

/-!
# A140294: Numbers k such that k!/k# + 1 is prime, where k# is the primorial function (A034386).

The programs for A140294, there is no canonical definition to state claims against.
-/

/-! ## A140294.P15058473273517661021

`eq[1, A082956(round(acot(n)+n))]`
-/

namespace A140294.P15058473273517661021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082956 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140294.P15058473273517661021

/-! ## A140294.P4460484926863106823

`eq[1, A082956(round(sqrt(n²+1)))]`
-/

namespace A140294.P4460484926863106823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082956 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140294.P4460484926863106823

/-! ## A140294.P17217215674153411926

`lt[A082956(A028310(n)), 2]`
-/

namespace A140294.P17217215674153411926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082956 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A140294.P17217215674153411926

/-! ## A140294.P16791690147974340442

`lt[A082956(A233583(n+1)), 2]`
-/

namespace A140294.P16791690147974340442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082956 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A140294.P16791690147974340442

/-! ## A140294.P7297289880270116351

`record[A053188(∑[A114652(n+1)])]`
-/

namespace A140294.P7297289880270116351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114652 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140294.P7297289880270116351

/-!
# A140295: a(n) = a(n-1) + a(n-2) + 2a(n-3).

The programs for A140295, the canonical program `A140295.P3386220610798486925` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140295 has offset 0).

The definition of A140295 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+2*a(n-3)` (program `A140295.P3386220610798486925`, by `A140295.P3386220610798486925.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140295.P3386220610798486925

`a(n-1)+a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=-2, a(2)=4`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A140295

/-- `a(n-1)+a(n-2)+2*a(n-3)` -/
def P3386220610798486925.Spec : Prop :=
  ∀ n, P3386220610798486925.a n = A140295 n

theorem P3386220610798486925.correct : P3386220610798486925.Spec := by
  intro n
  simp only [A140295]

end A140295

/-! ## A140295.P3733898464319872820

`A294627(n)-A167373(2*(n+1))`
-/

namespace A140295.P3733898464319872820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294627 n - A167373 (2 * (n + 1))

end

end A140295.P3733898464319872820

namespace A140295

/-- `A294627(n)-A167373(2*(n+1))` -/
def P3733898464319872820.Spec : Prop :=
  ∀ n, P3733898464319872820.a n = A140295 n

end A140295

/-! ## A140295.P6602439978717289796

`A061347(n+2)+A122552(n)-A061347(n+1)`
-/

namespace A140295.P6602439978717289796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 2) + (A122552 n - A061347 (n + 1))

end

end A140295.P6602439978717289796

namespace A140295

/-- `A061347(n+2)+A122552(n)-A061347(n+1)` -/
def P6602439978717289796.Spec : Prop :=
  ∀ n, P6602439978717289796.a n = A140295 n

end A140295

/-! ## A140295.P8635471461008421897

`Δ[A122552(n)+A102283(n)]`
-/

namespace A140295.P8635471461008421897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122552 n + A102283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140295.P8635471461008421897

namespace A140295

/-- `Δ[A122552(n)+A102283(n)]` -/
def P8635471461008421897.Spec : Prop :=
  ∀ n, P8635471461008421897.a n = A140295 n

end A140295

/-! ## A140295.P3216569568046847298

`A131713(n)+Δ[A122552(n)]`
-/

namespace A140295.P3216569568046847298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n + (f1 (n + 1) - f1 n)

end

end A140295.P3216569568046847298

namespace A140295

/-- `A131713(n)+Δ[A122552(n)]` -/
def P3216569568046847298.Spec : Prop :=
  ∀ n, P3216569568046847298.a n = A140295 n

end A140295

/-! ## A140295.P8119122738036005447

`Δ[A294627(n)-A021337(n)]`
-/

namespace A140295.P8119122738036005447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294627 n - A021337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140295.P8119122738036005447

namespace A140295

/-- `Δ[A294627(n)-A021337(n)]` -/
def P8119122738036005447.Spec : Prop :=
  ∀ n, P8119122738036005447.a n = A140295 n

end A140295

/-! ## A140295.P5106997279341717381

`Δ[A294627(n)+A061347(n+1)]`
-/

namespace A140295.P5106997279341717381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294627 n + A061347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140295.P5106997279341717381

namespace A140295

/-- `Δ[A294627(n)+A061347(n+1)]` -/
def P5106997279341717381.Spec : Prop :=
  ∀ n, P5106997279341717381.a n = A140295 n

end A140295

/-!
# A140296: Number of isomorphism classes of smooth toric Fano n-folds (or, equivalently, regular Fano n-topes).

The programs for A140296, there is no canonical definition to state claims against.
-/

/-! ## A140296.P15120467074680320276

`∑[∑[A301851(A179515(n+1))]]`
-/

namespace A140296.P15120467074680320276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301851 (A179515 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140296.P15120467074680320276

/-!
# A140297: Values of records set by A138570.

The programs for A140297, there is no canonical definition to state claims against.
-/

/-! ## A140297.P17626313637041247073

`eq[A135060(n+1), A139315(n+2)]+2`
-/

namespace A140297.P17626313637041247073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139315 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A140297.P17626313637041247073

/-!
# A140298: a(0)=1; a(3n+1) = a(3n)+1, a(3n+2) = a(3n+1) + a(3n) (=3*A000244), a(3n+3) = a(3n+2) + a(3n) (=A003462(n+2)).

The programs for A140298, the canonical program `A140298.P6130233779866552396` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140298 has offset 0).

The definition of A140298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140298.P6130233779866552396

`∑[A140313(n+2)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A140298

/-- `∑[A140313(n+2)]+1` -/
def P6130233779866552396.Spec : Prop :=
  ∀ n, P6130233779866552396.a n = A140298 n

theorem P6130233779866552396.correct : P6130233779866552396.Spec := by
  intro n
  simp only [A140298]

end A140298

/-! ## A140298.P11901301883037752430

`∑[A261547(Δ[A008130(n)])]`
-/

namespace A140298.P11901301883037752430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261547 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140298.P11901301883037752430

namespace A140298

/-- `∑[A261547(Δ[A008130(n)])]` -/
def P11901301883037752430.Spec : Prop :=
  ∀ n, P11901301883037752430.a n = A140298 n

end A140298

/-! ## A140298.P17185375011200279506

`∑[A140313(A114637(n+1))]`
-/

namespace A140298.P17185375011200279506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140313 (A114637 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140298.P17185375011200279506

namespace A140298

/-- `∑[A140313(A114637(n+1))]` -/
def P17185375011200279506.Spec : Prop :=
  ∀ n, P17185375011200279506.a n = A140298 n

end A140298

/-! ## A140298.P10525003981948596882

`∑[A140313(4-(n-A004275(n)))]`
-/

namespace A140298.P10525003981948596882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140313 (4 - ((n : ℤ) - A004275 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140298.P10525003981948596882

namespace A140298

/-- `∑[A140313(4-(n-A004275(n)))]` -/
def P10525003981948596882.Spec : Prop :=
  ∀ n, P10525003981948596882.a n = A140298 n

end A140298

/-! ## A140298.P8239394544219158717

`∑[A140313(A028242(A103517(n)))]`
-/

namespace A140298.P8239394544219158717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140313 (A028242 (A103517 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140298.P8239394544219158717

namespace A140298

/-- `∑[A140313(A028242(A103517(n)))]` -/
def P8239394544219158717.Spec : Prop :=
  ∀ n, P8239394544219158717.a n = A140298 n

end A140298

/-! ## A140298.P17867911949366291179

`ceil((A167051(n+2)+A167051(n+1))/4)`
-/

namespace A140298.P17867911949366291179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A167051 (n + 2) + A167051 (n + 1) : ℚ) / 4⌉

end

end A140298.P17867911949366291179

namespace A140298

/-- `ceil((A167051(n+2)+A167051(n+1))/4)` -/
def P17867911949366291179.Spec : Prop :=
  ∀ n, P17867911949366291179.a n = A140298 n

end A140298

/-! ## A140298.P542916225325983267

`record[A216220(n)]`
-/

namespace A140298.P542916225325983267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140298.P542916225325983267

namespace A140298

/-- `record[A216220(n)]` -/
def P542916225325983267.Spec : Prop :=
  ∀ n, P542916225325983267.a n = A140298 n

end A140298

/-! ## A140298.P13924787007175931932

`A216220(lt[1, n*A216228(n)])`
-/

namespace A140298.P13924787007175931932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A216228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216220 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A140298.P13924787007175931932

namespace A140298

/-- `A216220(lt[1, n*A216228(n)])` -/
def P13924787007175931932.Spec : Prop :=
  ∀ n, P13924787007175931932.a n = A140298 n

end A140298

/-! ## A140298.P10918833034395402224

`A216220(lt[A216188(n+1), A216228(n)])`
-/

namespace A140298.P10918833034395402224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216220 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A140298.P10918833034395402224

namespace A140298

/-- `A216220(lt[A216188(n+1), A216228(n)])` -/
def P10918833034395402224.Spec : Prop :=
  ∀ n, P10918833034395402224.a n = A140298 n

end A140298

/-! ## A140298.P739220896705514393

`A216220(lt[A216230(n+1), A216228(n)])`
-/

namespace A140298.P739220896705514393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216220 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A140298.P739220896705514393

namespace A140298

/-- `A216220(lt[A216230(n+1), A216228(n)])` -/
def P739220896705514393.Spec : Prop :=
  ∀ n, P739220896705514393.a n = A140298 n

end A140298

/-! ## A140298.P13725140200177336309

`record[A216238(n)]`
-/

namespace A140298.P13725140200177336309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140298.P13725140200177336309

namespace A140298

/-- `record[A216238(n)]` -/
def P13725140200177336309.Spec : Prop :=
  ∀ n, P13725140200177336309.a n = A140298 n

end A140298

/-!
# A140299: a(n) = A100626(n+1)/A100626(n).

The programs for A140299, the canonical program `A140299.P17580252582756976410` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140299 has offset 0).

The definition of A140299 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A140299.P17580252582756976410

`4^A001223(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A140299

/-- `4^A001223(n+1)` -/
def P17580252582756976410.Spec : Prop :=
  ∀ n, P17580252582756976410.a n = (A140299 n : ℚ)

end A140299

/-! ## A140299.P14653469751277627673

`A100626(n+2)/A100626(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140299.P14653469751277627673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100626 (n + 2) : ℚ) / (A100626 (n + 1) : ℚ)

end

end A140299.P14653469751277627673

namespace A140299

/-- `A100626(n+2)/A100626(n+1)` -/
def P14653469751277627673.Spec : Prop :=
  ∀ n, P14653469751277627673.a n = (A140299 n : ℚ)

end A140299

/-! ## A140299.P4400344464210808238

`A218075(n+1)²`
-/

namespace A140299.P4400344464210808238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218075 (n + 1) ^ 2

end

end A140299.P4400344464210808238

namespace A140299

/-- `A218075(n+1)²` -/
def P4400344464210808238.Spec : Prop :=
  ∀ n, P4400344464210808238.a n = A140299 n

end A140299

/-! ## A140299.P2696771839880764212

`(1-A137780(n+1))²`
-/

namespace A140299.P2696771839880764212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A137780 (n + 1)) ^ 2

end

end A140299.P2696771839880764212

namespace A140299

/-- `(1-A137780(n+1))²` -/
def P2696771839880764212.Spec : Prop :=
  ∀ n, P2696771839880764212.a n = A140299 n

end A140299

/-! ## A140299.P3979640215874803970

`4^sqrt(A076821(n+1))`
-/

namespace A140299.P3979640215874803970
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 : ℝ) ^ (Real.sqrt (A076821 (n + 1) : ℝ))

end

end A140299.P3979640215874803970

namespace A140299

/-- `4^sqrt(A076821(n+1))` -/
def P3979640215874803970.Spec : Prop :=
  ∀ n, P3979640215874803970.a n = (A140299 n : ℝ)

end A140299

/-! ## A140299.P10963410776107568257

`2^(A100803(n+1)+1)`
-/

namespace A140299.P10963410776107568257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A100803 (n + 1) + 1 : ℤ)

end

end A140299.P10963410776107568257

namespace A140299

/-- `2^(A100803(n+1)+1)` -/
def P10963410776107568257.Spec : Prop :=
  ∀ n, P10963410776107568257.a n = (A140299 n : ℚ)

end A140299

/-! ## A140299.P15607465370546356920

`A000302(A001223(n+1))`
-/

namespace A140299.P15607465370546356920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A001223 (n + 1)).toNat

end

end A140299.P15607465370546356920

namespace A140299

/-- `A000302(A001223(n+1))` -/
def P15607465370546356920.Spec : Prop :=
  ∀ n, P15607465370546356920.a n = A140299 n

end A140299

/-! ## A140299.P10213036107031868023

`A056450(A100803(n+1))`
-/

namespace A140299.P10213036107031868023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056450 (A100803 (n + 1)).toNat

end

end A140299.P10213036107031868023

namespace A140299

/-- `A056450(A100803(n+1))` -/
def P10213036107031868023.Spec : Prop :=
  ∀ n, P10213036107031868023.a n = A140299 n

end A140299

/-! ## A140299.P15985493804318430910

`A048656(A082910(n+1))²`
-/

namespace A140299.P15985493804318430910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048656 (A082910 (n + 1)).toNat ^ 2

end

end A140299.P15985493804318430910

namespace A140299

/-- `A048656(A082910(n+1))²` -/
def P15985493804318430910.Spec : Prop :=
  ∀ n, P15985493804318430910.a n = A140299 n

end A140299

/-! ## A140299.P8074847206502576518

`A139548(A076821(n+1))²`
-/

namespace A140299.P8074847206502576518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139548 (A076821 (n + 1)).toNat ^ 2

end

end A140299.P8074847206502576518

namespace A140299

/-- `A139548(A076821(n+1))²` -/
def P8074847206502576518.Spec : Prop :=
  ∀ n, P8074847206502576518.a n = A140299 n

end A140299

/-! ## A140299.P17914643516893929462

`A000079(2*A001223(n+1))`
-/

namespace A140299.P17914643516893929462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * A001223 (n + 1)).toNat

end

end A140299.P17914643516893929462

namespace A140299

/-- `A000079(2*A001223(n+1))` -/
def P17914643516893929462.Spec : Prop :=
  ∀ n, P17914643516893929462.a n = A140299 n

end A140299

/-! ## A140299.P4134544883653818709

`A011782(A001223(n+1)+1)²`
-/

namespace A140299.P4134544883653818709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A001223 (n + 1) + 1).toNat ^ 2

end

end A140299.P4134544883653818709

namespace A140299

/-- `A011782(A001223(n+1)+1)²` -/
def P4134544883653818709.Spec : Prop :=
  ∀ n, P4134544883653818709.a n = A140299 n

end A140299

/-! ## A140299.P1117912331460649483

`A000079(A046933(n+1)+1)²`
-/

namespace A140299.P1117912331460649483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A046933 (n + 1) + 1).toNat ^ 2

end

end A140299.P1117912331460649483

namespace A140299

/-- `A000079(A046933(n+1)+1)²` -/
def P1117912331460649483.Spec : Prop :=
  ∀ n, P1117912331460649483.a n = A140299 n

end A140299

/-! ## A140299.P15701440024297000201

`A000079(A001223(n+1)+A001223(n+1))`
-/

namespace A140299.P15701440024297000201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A001223 (n + 1) + A001223 (n + 1)).toNat

end

end A140299.P15701440024297000201

namespace A140299

/-- `A000079(A001223(n+1)+A001223(n+1))` -/
def P15701440024297000201.Spec : Prop :=
  ∀ n, P15701440024297000201.a n = A140299 n

end A140299

/-! ## A140299.P16158116616601190841

`A000079(A000040(n+1)-A062234(n+1))²`
-/

namespace A140299.P16158116616601190841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000040 (n + 1) - A062234 (n + 1)).toNat ^ 2

end

end A140299.P16158116616601190841

namespace A140299

/-- `A000079(A000040(n+1)-A062234(n+1))²` -/
def P16158116616601190841.Spec : Prop :=
  ∀ n, P16158116616601190841.a n = A140299 n

end A140299

/-! ## A140299.P8736981356808439633

`4^Δ[p?[ceil(2/acot(n))]]`
-/

namespace A140299.P8736981356808439633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A140299.P8736981356808439633

namespace A140299

/-- `4^Δ[p?[ceil(2/acot(n))]]` -/
def P8736981356808439633.Spec : Prop :=
  ∀ n, P8736981356808439633.a n = (A140299 n : ℚ)

end A140299

/-! ## A140299.P3260799235826974965

`4^A075526(n+1)`
-/

namespace A140299.P3260799235826974965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A075526 (n + 1) : ℤ)

end

end A140299.P3260799235826974965

namespace A140299

/-- `4^A075526(n+1)` -/
def P3260799235826974965.Spec : Prop :=
  ∀ n, P3260799235826974965.a n = (A140299 n : ℚ)

end A140299

/-! ## A140299.P504209975861501334

`4^A054541(n+2)`
-/

namespace A140299.P504209975861501334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A054541 (n + 2) : ℤ)

end

end A140299.P504209975861501334

namespace A140299

/-- `4^A054541(n+2)` -/
def P504209975861501334.Spec : Prop :=
  ∀ n, P504209975861501334.a n = (A140299 n : ℚ)

end A140299

/-! ## A140299.P542675228392919185

`4^A125266(n+2)`
-/

namespace A140299.P542675228392919185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A125266 (n + 2) : ℤ)

end

end A140299.P542675228392919185

namespace A140299

/-- `4^A125266(n+2)` -/
def P542675228392919185.Spec : Prop :=
  ∀ n, P542675228392919185.a n = (A140299 n : ℚ)

end A140299

/-! ## A140299.P790727518556048402

`2^Δ[A037168(n+1)]`
-/

namespace A140299.P790727518556048402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A140299.P790727518556048402

namespace A140299

/-- `2^Δ[A037168(n+1)]` -/
def P790727518556048402.Spec : Prop :=
  ∀ n, P790727518556048402.a n = (A140299 n : ℚ)

end A140299

