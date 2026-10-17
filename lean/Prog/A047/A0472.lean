import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A047200: Number of nonempty subsets of {1,2,...,n} in which exactly 3/5 of the elements are <= n/3.

The programs for A047200, there is no canonical definition to state claims against.
-/

/-! ## A047200.P3891459547323812287

`A008615(3*A004396(n)*A047197(n+1))`
-/

namespace A047200.P3891459547323812287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * (A004396 n * A047197 (n + 1))).toNat

end

end A047200.P3891459547323812287

/-! ## A047200.P6539394274602559646

`A051724(6*A004396(n)*A047197(n+1))`
-/

namespace A047200.P6539394274602559646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (6 * (A004396 n * A047197 (n + 1))).toNat

end

end A047200.P6539394274602559646

/-! ## A047200.P10944174731805880312

`A047197(n+1)/A020639(A109975(n))*A004396(n)`
-/

namespace A047200.P10944174731805880312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047197 (n + 1) : ℚ) / (A020639 (A109975 n).toNat : ℚ) * (A004396 n : ℚ)

end

end A047200.P10944174731805880312

/-! ## A047200.P8271614052951753454

`A047197(n+1)/A020639(A153973(n+1))*A004396(n)`
-/

namespace A047200.P8271614052951753454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047197 (n + 1) : ℚ) / (A020639 (A153973 (n + 1)).toNat : ℚ) * (A004396 n : ℚ)

end

end A047200.P8271614052951753454

/-! ## A047200.P1387036170202104778

`A047197(n+1)/A014963(A000079(n))*A004396(n)`
-/

namespace A047200.P1387036170202104778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047197 (n + 1) : ℚ) / (A014963 (A000079 n).toNat : ℚ) * (A004396 n : ℚ)

end

end A047200.P1387036170202104778

/-!
# A047201: Numbers not divisible by 5.

The programs for A047201, the canonical program `A047201.P16887124220134305265` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047201 has offset 1).

The definition of A047201 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047201.P16887124220134305265

`5+a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047201

/-- `5+a(n-4)` -/
def P16887124220134305265.Spec : Prop :=
  ∀ n, (P16887124220134305265.a n : ℤ) = A047201 (n + 1)

theorem P16887124220134305265.correct : P16887124220134305265.Spec := by
  intro n
  simp only [A047201, Nat.add_sub_cancel]

end A047201

/-! ## A047201.P15332702084406395825

`comp[5*n]`
-/

namespace A047201.P15332702084406395825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047201.P15332702084406395825

namespace A047201

/-- `comp[5*n]` -/
def P15332702084406395825.Spec : Prop :=
  ∀ n, (P15332702084406395825.a n : ℤ) = A047201 (n + 1)

end A047201

/-! ## A047201.P12888789776957509589

`lt[n, lcm(5, n)]`
-/

namespace A047201.P12888789776957509589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047201.P12888789776957509589

namespace A047201

/-- `lt[n, lcm(5, n)]` -/
def P12888789776957509589.Spec : Prop :=
  ∀ n, (P12888789776957509589.a n : ℤ) = A047201 (n + 1)

end A047201

/-! ## A047201.P15991691059119227708

`lt[0, n*n%5]`
-/

namespace A047201.P15991691059119227708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047201.P15991691059119227708

namespace A047201

/-- `lt[0, n*n%5]` -/
def P15991691059119227708.Spec : Prop :=
  ∀ n, (P15991691059119227708.a n : ℤ) = A047201 (n + 1)

end A047201

/-! ## A047201.P9622376231098288723

`ceil(5/(4*acot(n)))`
-/

namespace A047201.P9622376231098288723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈5 / (4 * SequenceMachineLib.acot (n : ℝ))⌉

end

end A047201.P9622376231098288723

namespace A047201

/-- `ceil(5/(4*acot(n)))` -/
def P9622376231098288723.Spec : Prop :=
  ∀ n, P9622376231098288723.a n = A047201 (n + 1)

end A047201

/-! ## A047201.P1400553895706135759

`ceil(or(1, 5*n)/4)`
-/

namespace A047201.P1400553895706135759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (5 * n) : ℚ) / 4⌉

end

end A047201.P1400553895706135759

namespace A047201

/-- `ceil(or(1, 5*n)/4)` -/
def P1400553895706135759.Spec : Prop :=
  ∀ n, P1400553895706135759.a n = A047201 (n + 1)

end A047201

/-! ## A047201.P5954089511074624479

`round(or(2, 5*n)/4)`
-/

namespace A047201.P5954089511074624479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 2 (5 * n) : ℚ) / 4)

end

end A047201.P5954089511074624479

namespace A047201

/-- `round(or(2, 5*n)/4)` -/
def P5954089511074624479.Spec : Prop :=
  ∀ n, P5954089511074624479.a n = A047201 (n + 1)

end A047201

/-! ## A047201.P9175744339272432181

`ceil(or(1, n)/4+n)`
-/

namespace A047201.P9175744339272432181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 n : ℚ) / 4 + (n : ℚ)⌉

end

end A047201.P9175744339272432181

namespace A047201

/-- `ceil(or(1, n)/4+n)` -/
def P9175744339272432181.Spec : Prop :=
  ∀ n, P9175744339272432181.a n = A047201 (n + 1)

end A047201

/-! ## A047201.P3582231990716175447

`round(or(2, n)/4+n)`
-/

namespace A047201.P3582231990716175447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 2 n : ℚ) / 4 + (n : ℚ))

end

end A047201.P3582231990716175447

namespace A047201

/-- `round(or(2, n)/4+n)` -/
def P3582231990716175447.Spec : Prop :=
  ∀ n, P3582231990716175447.a n = A047201 (n + 1)

end A047201

/-! ## A047201.P5261293659596928062

`∑[gcd(8, n²)%3]-1`
-/

namespace A047201.P5261293659596928062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 8 (n ^ 2) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047201.P5261293659596928062

namespace A047201

/-- `∑[gcd(8, n²)%3]-1` -/
def P5261293659596928062.Spec : Prop :=
  ∀ n, P5261293659596928062.a n = A047201 (n + 1)

end A047201

/-! ## A047201.P9740374982235332366

`∑[gcd(n+2, ∑[n])]-1`
-/

namespace A047201.P9740374982235332366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047201.P9740374982235332366

namespace A047201

/-- `∑[gcd(n+2, ∑[n])]-1` -/
def P9740374982235332366.Spec : Prop :=
  ∀ n, P9740374982235332366.a n = A047201 (n + 1)

end A047201

/-! ## A047201.P5085777047835156331

`∑[∑[∑[n+1]]%2]+n`
-/

namespace A047201.P5085777047835156331
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047201.P5085777047835156331

namespace A047201

/-- `∑[∑[∑[n+1]]%2]+n` -/
def P5085777047835156331.Spec : Prop :=
  ∀ n, (P5085777047835156331.a n : ℤ) = A047201 (n + 1)

end A047201

/-! ## A047201.P15601039701778169303

`∑[and(1, ∑[∑[n+1]])]+n`
-/

namespace A047201.P15601039701778169303
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047201.P15601039701778169303

namespace A047201

/-- `∑[and(1, ∑[∑[n+1]])]+n` -/
def P15601039701778169303.Spec : Prop :=
  ∀ n, (P15601039701778169303.a n : ℤ) = A047201 (n + 1)

end A047201

/-! ## A047201.P12682610981377303218

`∑[abs(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A047201.P12682610981377303218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047201.P12682610981377303218

namespace A047201

/-- `∑[abs(a(n-4))]` -/
def P12682610981377303218.Spec : Prop :=
  ∀ n, (P12682610981377303218.a n : ℤ) = A047201 (n + 1)

end A047201

/-! ## A047201.P10607205838348628191

`∑[a(n-4)!]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A047201.P10607205838348628191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n f1 =>
  Nat.factorial (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047201.P10607205838348628191

namespace A047201

/-- `∑[a(n-4)!]` -/
def P10607205838348628191.Spec : Prop :=
  ∀ n, (P10607205838348628191.a n : ℤ) = A047201 (n + 1)

end A047201

/-! ## A047201.P14651905834245633689

`∑[dr(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A047201.P14651905834245633689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047201.P14651905834245633689

namespace A047201

/-- `∑[dr(a(n-4))]` -/
def P14651905834245633689.Spec : Prop :=
  ∀ n, (P14651905834245633689.a n : ℤ) = A047201 (n + 1)

end A047201

/-! ## A047201.P18435009401021004201

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A047201.P18435009401021004201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047201.P18435009401021004201

namespace A047201

/-- `∑[floor(a(n-4))]` -/
def P18435009401021004201.Spec : Prop :=
  ∀ n, (P18435009401021004201.a n : ℤ) = A047201 (n + 1)

end A047201

/-! ## A047201.P13526477953010359562

`∑[ceil(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A047201.P13526477953010359562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047201.P13526477953010359562

namespace A047201

/-- `∑[ceil(a(n-4))]` -/
def P13526477953010359562.Spec : Prop :=
  ∀ n, (P13526477953010359562.a n : ℤ) = A047201 (n + 1)

end A047201

/-! ## A047201.P2879902146348704375

`∑[round(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`

`round` is left out, it is the identity on integers.
-/

namespace A047201.P2879902146348704375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047201.P2879902146348704375

namespace A047201

/-- `∑[round(a(n-4))]` -/
def P2879902146348704375.Spec : Prop :=
  ∀ n, (P2879902146348704375.a n : ℤ) = A047201 (n + 1)

end A047201

/-! ## A047201.P14843795723364068505

`∑[a(n-4)^a(n-1)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A047201.P14843795723364068505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n f1 =>
  f1 (n - 4) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047201.P14843795723364068505

namespace A047201

/-- `∑[a(n-4)^a(n-1)]` -/
def P14843795723364068505.Spec : Prop :=
  ∀ n, (P14843795723364068505.a n : ℤ) = A047201 (n + 1)

end A047201

/-!
# A047202: Numbers that are congruent to {2, 3, 4} mod 5.

The programs for A047202, the canonical program `A047202.P12705462691346672858` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047202 has offset 1).

The definition of A047202 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047202.P12705462691346672858

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=7`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047202

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P12705462691346672858.Spec : Prop :=
  ∀ n, P12705462691346672858.a n = A047202 (n + 1)

theorem P12705462691346672858.correct : P12705462691346672858.Spec := by
  intro n
  simp only [A047202, Nat.add_sub_cancel]

end A047202

/-! ## A047202.P16165687077539787268

`∑[gcd(3, n)]-1`
-/

namespace A047202.P16165687077539787268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047202.P16165687077539787268

namespace A047202

/-- `∑[gcd(3, n)]-1` -/
def P16165687077539787268.Spec : Prop :=
  ∀ n, P16165687077539787268.a n = A047202 (n + 1)

end A047202

/-! ## A047202.P7207596189238266206

`2*comp[4*n]-n`
-/

namespace A047202.P7207596189238266206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A047202.P7207596189238266206

namespace A047202

/-- `2*comp[4*n]-n` -/
def P7207596189238266206.Spec : Prop :=
  ∀ n, P7207596189238266206.a n = A047202 (n + 1)

end A047202

/-! ## A047202.P6358888951428399274

`comp[a(n-2)+5]` with `a(0)=0, a(1)=1`
-/

namespace A047202.P6358888951428399274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047202.P6358888951428399274

namespace A047202

/-- `comp[a(n-2)+5]` -/
def P6358888951428399274.Spec : Prop :=
  ∀ n, (P6358888951428399274.a n : ℤ) = A047202 (n + 1)

end A047202

/-! ## A047202.P3399032780115613716

`comp[∑[C(4, a(n-1))]]` with `a(0)=0`
-/

namespace A047202.P3399032780115613716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Nat.choose 4 (f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047202.P3399032780115613716

namespace A047202

/-- `comp[∑[C(4, a(n-1))]]` -/
def P3399032780115613716.Spec : Prop :=
  ∀ n, (P3399032780115613716.a n : ℤ) = A047202 (n + 1)

end A047202

/-! ## A047202.P11992531682766449510

`lt[n², lcm(5, n-n²)]`
-/

namespace A047202.P11992531682766449510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 ((n : ℤ) - (n ^ 2 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047202.P11992531682766449510

namespace A047202

/-- `lt[n², lcm(5, n-n²)]` -/
def P11992531682766449510.Spec : Prop :=
  ∀ n, (P11992531682766449510.a n : ℤ) = A047202 (n + 1)

end A047202

/-! ## A047202.P1768676867516509502

`∑[abs(a(n-3))]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A047202.P1768676867516509502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047202.P1768676867516509502

namespace A047202

/-- `∑[abs(a(n-3))]` -/
def P1768676867516509502.Spec : Prop :=
  ∀ n, (P1768676867516509502.a n : ℤ) = A047202 (n + 1)

end A047202

/-! ## A047202.P4024035153231276777

`∑[or(1, a(n-3))]` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A047202.P4024035153231276777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1] fun n f1 =>
  Nat.lor 1 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047202.P4024035153231276777

namespace A047202

/-- `∑[or(1, a(n-3))]` -/
def P4024035153231276777.Spec : Prop :=
  ∀ n, (P4024035153231276777.a n : ℤ) = A047202 (n + 1)

end A047202

/-! ## A047202.P1999189223475828810

`∑[dr(a(n-3))]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A047202.P1999189223475828810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047202.P1999189223475828810

namespace A047202

/-- `∑[dr(a(n-3))]` -/
def P1999189223475828810.Spec : Prop :=
  ∀ n, (P1999189223475828810.a n : ℤ) = A047202 (n + 1)

end A047202

/-! ## A047202.P3982853918993614620

`∑[floor(a(n-3))]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047202.P3982853918993614620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047202.P3982853918993614620

namespace A047202

/-- `∑[floor(a(n-3))]` -/
def P3982853918993614620.Spec : Prop :=
  ∀ n, (P3982853918993614620.a n : ℤ) = A047202 (n + 1)

end A047202

/-! ## A047202.P2878402573916695742

`∑[ceil(a(n-3))]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A047202.P2878402573916695742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047202.P2878402573916695742

namespace A047202

/-- `∑[ceil(a(n-3))]` -/
def P2878402573916695742.Spec : Prop :=
  ∀ n, (P2878402573916695742.a n : ℤ) = A047202 (n + 1)

end A047202

/-! ## A047202.P4548485256759133913

`∑[round(a(n-3))]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=3`

`round` is left out, it is the identity on integers.
-/

namespace A047202.P4548485256759133913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047202.P4548485256759133913

namespace A047202

/-- `∑[round(a(n-3))]` -/
def P4548485256759133913.Spec : Prop :=
  ∀ n, (P4548485256759133913.a n : ℤ) = A047202 (n + 1)

end A047202

/-! ## A047202.P4129649652001725625

`eq[0, val((n+2)²+1, 5)]`
-/

namespace A047202.P4129649652001725625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 2) ^ 2 + 1) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047202.P4129649652001725625

namespace A047202

/-- `eq[0, val((n+2)²+1, 5)]` -/
def P4129649652001725625.Spec : Prop :=
  ∀ n, (P4129649652001725625.a n : ℤ) = A047202 (n + 1)

end A047202

/-! ## A047202.P14612259699737713436

`lt[val((n+2)²+1, 5), 1]`
-/

namespace A047202.P14612259699737713436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 2) ^ 2 + 1) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047202.P14612259699737713436

namespace A047202

/-- `lt[val((n+2)²+1, 5), 1]` -/
def P14612259699737713436.Spec : Prop :=
  ∀ n, (P14612259699737713436.a n : ℤ) = A047202 (n + 1)

end A047202

/-! ## A047202.P8821069154975235966

`record[a(n-4)+5]` with `a(0)=2, a(1)=0, a(2)=3, a(3)=4`
-/

namespace A047202.P8821069154975235966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 3, 4] fun n f1 =>
  f1 (n - 4) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047202.P8821069154975235966

namespace A047202

/-- `record[a(n-4)+5]` -/
def P8821069154975235966.Spec : Prop :=
  ∀ n, (P8821069154975235966.a n : ℤ) = A047202 (n + 1)

end A047202

/-! ## A047202.P13786809750386679209

`∑[a(n-3)%4]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A047202.P13786809750386679209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1, 3] fun n f1 =>
  f1 (n - 3) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047202.P13786809750386679209

namespace A047202

/-- `∑[a(n-3)%4]` -/
def P13786809750386679209.Spec : Prop :=
  ∀ n, (P13786809750386679209.a n : ℤ) = A047202 (n + 1)

end A047202

/-! ## A047202.P15518491467553829462

`∑[and(3, a(n-3))]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A047202.P15518491467553829462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1, 3] fun n f1 =>
  Nat.land 3 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047202.P15518491467553829462

namespace A047202

/-- `∑[and(3, a(n-3))]` -/
def P15518491467553829462.Spec : Prop :=
  ∀ n, (P15518491467553829462.a n : ℤ) = A047202 (n + 1)

end A047202

/-! ## A047202.P1531603959832503988

`∑[char[3]+a(n-3)]` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A047202.P1531603959832503988
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1] fun n f1 =>
  (if ∃ j, f2 j = n then 1 else 0) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047202.P1531603959832503988

namespace A047202

/-- `∑[char[3]+a(n-3)]` -/
def P1531603959832503988.Spec : Prop :=
  ∀ n, (P1531603959832503988.a n : ℤ) = A047202 (n + 1)

end A047202

/-! ## A047202.P10502651765175102908

`lt[(n+3)%5, 3%(n+2)]`
-/

namespace A047202.P10502651765175102908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) % 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 % (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047202.P10502651765175102908

namespace A047202

/-- `lt[(n+3)%5, 3%(n+2)]` -/
def P10502651765175102908.Spec : Prop :=
  ∀ n, (P10502651765175102908.a n : ℤ) = A047202 (n + 1)

end A047202

/-! ## A047202.P17331175720471474504

`comp[∑[(2-a(n-2))²]]` with `a(0)=0, a(1)=1`
-/

namespace A047202.P17331175720471474504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  (2 - f2 (n - 2)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047202.P17331175720471474504

namespace A047202

/-- `comp[∑[(2-a(n-2))²]]` -/
def P17331175720471474504.Spec : Prop :=
  ∀ n, (P17331175720471474504.a n : ℤ) = A047202 (n + 1)

end A047202

/-!
# A047203: Numbers that are congruent to {0, 2, 3, 4} mod 5.

The programs for A047203, the canonical program `A047203.P9378854928714187791` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047203 has offset 1).

The definition of A047203 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047203.P9378854928714187791

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4, a(4)=5`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047203

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P9378854928714187791.Spec : Prop :=
  ∀ n, P9378854928714187791.a n = A047203 (n + 1)

theorem P9378854928714187791.correct : P9378854928714187791.Spec := by
  intro n
  simp only [A047203, Nat.add_sub_cancel]

end A047203

/-! ## A047203.P18400086435680548346

`A047207(n+2)-1`
-/

namespace A047203.P18400086435680548346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047207 (n + 2) - 1

end

end A047203.P18400086435680548346

namespace A047203

/-- `A047207(n+2)-1` -/
def P18400086435680548346.Spec : Prop :=
  ∀ n, P18400086435680548346.a n = A047203 (n + 1)

end A047203

/-! ## A047203.P6702572921559646300

`ceil(5*n/4)`
-/

namespace A047203.P6702572921559646300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈5 * ((n : ℚ) / 4)⌉

end

end A047203.P6702572921559646300

namespace A047203

/-- `ceil(5*n/4)` -/
def P6702572921559646300.Spec : Prop :=
  ∀ n, P6702572921559646300.a n = A047203 (n + 1)

end A047203

/-! ## A047203.P7545012102159201140

`comp[lcm(5, n)+1]`
-/

namespace A047203.P7545012102159201140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047203.P7545012102159201140

namespace A047203

/-- `comp[lcm(5, n)+1]` -/
def P7545012102159201140.Spec : Prop :=
  ∀ n, (P7545012102159201140.a n : ℤ) = A047203 (n + 1)

end A047203

/-! ## A047203.P11278072437467248277

`comp[C(n, n%5)]`
-/

namespace A047203.P11278072437467248277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n % 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047203.P11278072437467248277

namespace A047203

/-- `comp[C(n, n%5)]` -/
def P11278072437467248277.Spec : Prop :=
  ∀ n, (P11278072437467248277.a n : ℤ) = A047203 (n + 1)

end A047203

/-! ## A047203.P16705515719577863822

`comp[5*xor(1, n)+1]`
-/

namespace A047203.P16705515719577863822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.xor 1 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047203.P16705515719577863822

namespace A047203

/-- `comp[5*xor(1, n)+1]` -/
def P16705515719577863822.Spec : Prop :=
  ∀ n, (P16705515719577863822.a n : ℤ) = A047203 (n + 1)

end A047203

/-! ## A047203.P16190716022919245269

`comp[a(n-1)+5]` with `a(0)=1`
-/

namespace A047203.P16190716022919245269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047203.P16190716022919245269

namespace A047203

/-- `comp[a(n-1)+5]` -/
def P16190716022919245269.Spec : Prop :=
  ∀ n, (P16190716022919245269.a n : ℤ) = A047203 (n + 1)

end A047203

/-! ## A047203.P2500421556785235791

`comp[n-(n-1)%5]`
-/

namespace A047203.P2500421556785235791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod ((n : ℤ) - 1) 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047203.P2500421556785235791

namespace A047203

/-- `comp[n-(n-1)%5]` -/
def P2500421556785235791.Spec : Prop :=
  ∀ n, (P2500421556785235791.a n : ℤ) = A047203 (n + 1)

end A047203

/-! ## A047203.P17157168341115425133

`record[n-val(n+4, 5)]`
-/

namespace A047203.P17157168341115425133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (n + 4) 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047203.P17157168341115425133

namespace A047203

/-- `record[n-val(n+4, 5)]` -/
def P17157168341115425133.Spec : Prop :=
  ∀ n, P17157168341115425133.a n = A047203 (n + 1)

end A047203

/-! ## A047203.P11000474791033282578

`∑[∑[∑[n]]%2]+n`
-/

namespace A047203.P11000474791033282578
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047203.P11000474791033282578

namespace A047203

/-- `∑[∑[∑[n]]%2]+n` -/
def P11000474791033282578.Spec : Prop :=
  ∀ n, (P11000474791033282578.a n : ℤ) = A047203 (n + 1)

end A047203

/-! ## A047203.P8731905874495784726

`∑[and(1, ∑[∑[n]])]+n`
-/

namespace A047203.P8731905874495784726
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047203.P8731905874495784726

namespace A047203

/-- `∑[and(1, ∑[∑[n]])]+n` -/
def P8731905874495784726.Spec : Prop :=
  ∀ n, (P8731905874495784726.a n : ℤ) = A047203 (n + 1)

end A047203

/-! ## A047203.P10671755023620245471

`eq[0, val(4*n+1, 5)]`
-/

namespace A047203.P10671755023620245471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (4 * n + 1) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047203.P10671755023620245471

namespace A047203

/-- `eq[0, val(4*n+1, 5)]` -/
def P10671755023620245471.Spec : Prop :=
  ∀ n, (P10671755023620245471.a n : ℤ) = A047203 (n + 1)

end A047203

/-! ## A047203.P9303213836698697007

`lt[2*n, lcm(10, 1-n)]`
-/

namespace A047203.P9303213836698697007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 10 (1 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047203.P9303213836698697007

namespace A047203

/-- `lt[2*n, lcm(10, 1-n)]` -/
def P9303213836698697007.Spec : Prop :=
  ∀ n, (P9303213836698697007.a n : ℤ) = A047203 (n + 1)

end A047203

/-! ## A047203.P15651697815397973959

`eq[n, n*gcd(5, 1-n)]`
-/

namespace A047203.P15651697815397973959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd 5 (1 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047203.P15651697815397973959

namespace A047203

/-- `eq[n, n*gcd(5, 1-n)]` -/
def P15651697815397973959.Spec : Prop :=
  ∀ n, (P15651697815397973959.a n : ℤ) = A047203 (n + 1)

end A047203

/-! ## A047203.P14776453527326469664

`a(n-4)+5` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A047203.P14776453527326469664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 4] fun n a =>
  a (n - 4) + 5

end

end A047203.P14776453527326469664

namespace A047203

/-- `a(n-4)+5` -/
def P14776453527326469664.Spec : Prop :=
  ∀ n, (P14776453527326469664.a n : ℤ) = A047203 (n + 1)

end A047203

/-! ## A047203.P6824517010907581077

`∑[a(n-4)!]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=1`
-/

namespace A047203.P6824517010907581077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 1] fun n f1 =>
  Nat.factorial (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047203.P6824517010907581077

namespace A047203

/-- `∑[a(n-4)!]` -/
def P6824517010907581077.Spec : Prop :=
  ∀ n, (P6824517010907581077.a n : ℤ) = A047203 (n + 1)

end A047203

/-! ## A047203.P12540088446176917017

`and(n+3, -4)/4+n`
-/

namespace A047203.P12540088446176917017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n + 3 : ℤ) (-4) : ℚ) / 4 + (n : ℚ)

end

end A047203.P12540088446176917017

namespace A047203

/-- `and(n+3, -4)/4+n` -/
def P12540088446176917017.Spec : Prop :=
  ∀ n, P12540088446176917017.a n = (A047203 (n + 1) : ℚ)

end A047203

/-! ## A047203.P7406469464418726984

`round(or(1, n+1)/4+n)`
-/

namespace A047203.P7406469464418726984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (n + 1) : ℚ) / 4 + (n : ℚ))

end

end A047203.P7406469464418726984

namespace A047203

/-- `round(or(1, n+1)/4+n)` -/
def P7406469464418726984.Spec : Prop :=
  ∀ n, P7406469464418726984.a n = A047203 (n + 1)

end A047203

/-! ## A047203.P13202670221881571703

`floor(or(1, n+3)/4+n)`
-/

namespace A047203.P13202670221881571703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (n + 3) : ℚ) / 4 + (n : ℚ)⌋

end

end A047203.P13202670221881571703

namespace A047203

/-- `floor(or(1, n+3)/4+n)` -/
def P13202670221881571703.Spec : Prop :=
  ∀ n, P13202670221881571703.a n = A047203 (n + 1)

end A047203

/-! ## A047203.P3574164634496292981

`round(xor(1, n+1)/4+n)`
-/

namespace A047203.P3574164634496292981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (n + 1) : ℚ) / 4 + (n : ℚ))

end

end A047203.P3574164634496292981

namespace A047203

/-- `round(xor(1, n+1)/4+n)` -/
def P3574164634496292981.Spec : Prop :=
  ∀ n, P3574164634496292981.a n = A047203 (n + 1)

end A047203

/-!
# A047204: Numbers that are congruent to {3, 4} mod 5.

The programs for A047204, the canonical program `A047204.P9685075898767516946` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047204 has offset 1).

The definition of A047204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047204.P9685075898767516946

`∑[gcd(2, n)²]-1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047204

/-- `∑[gcd(2, n)²]-1` -/
def P9685075898767516946.Spec : Prop :=
  ∀ n, P9685075898767516946.a n = A047204 (n + 1)

theorem P9685075898767516946.correct : P9685075898767516946.Spec := by
  intro n
  simp only [A047204, Nat.add_sub_cancel]

end A047204

/-! ## A047204.P10526852939516759411

`a(n-2)+5` with `a(0)=3, a(1)=4`
-/

namespace A047204.P10526852939516759411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 2) + 5

end

end A047204.P10526852939516759411

namespace A047204

/-- `a(n-2)+5` -/
def P10526852939516759411.Spec : Prop :=
  ∀ n, (P10526852939516759411.a n : ℤ) = A047204 (n + 1)

end A047204

/-! ## A047204.P16297421000734571706

`∑[gcd(4, n^2)]-1`
-/

namespace A047204.P16297421000734571706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047204.P16297421000734571706

namespace A047204

/-- `∑[gcd(4, n^2)]-1` -/
def P16297421000734571706.Spec : Prop :=
  ∀ n, P16297421000734571706.a n = A047204 (n + 1)

end A047204

/-! ## A047204.P9060517829440631439

`∑[or(n, -2)²]-1`
-/

namespace A047204.P9060517829440631439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A047204.P9060517829440631439

namespace A047204

/-- `∑[or(n, -2)²]-1` -/
def P9060517829440631439.Spec : Prop :=
  ∀ n, P9060517829440631439.a n = A047204 (n + 1)

end A047204

/-! ## A047204.P17373684481206070248

`(record[or(6, n)]+n)/2`
-/

namespace A047204.P17373684481206070248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n : ℚ) / 2

end

end A047204.P17373684481206070248

namespace A047204

/-- `(record[or(6, n)]+n)/2` -/
def P17373684481206070248.Spec : Prop :=
  ∀ n, P17373684481206070248.a n = (A047204 (n + 1) : ℚ)

end A047204

/-! ## A047204.P6688149872960888595

`∑[5-a(n-1)]` with `a(0)=3, a(1)=1`
-/

namespace A047204.P6688149872960888595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047204.P6688149872960888595

namespace A047204

/-- `∑[5-a(n-1)]` -/
def P6688149872960888595.Spec : Prop :=
  ∀ n, P6688149872960888595.a n = A047204 (n + 1)

end A047204

/-! ## A047204.P17319659418470656179

`∑[(and(1, n)-2)²]-1`
-/

namespace A047204.P17319659418470656179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 n : ℤ) - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A047204.P17319659418470656179

namespace A047204

/-- `∑[(and(1, n)-2)²]-1` -/
def P17319659418470656179.Spec : Prop :=
  ∀ n, P17319659418470656179.a n = A047204 (n + 1)

end A047204

/-! ## A047204.P13545126295297851364

`lt[n+2, n%5+n]`
-/

namespace A047204.P13545126295297851364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 5 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047204.P13545126295297851364

namespace A047204

/-- `lt[n+2, n%5+n]` -/
def P13545126295297851364.Spec : Prop :=
  ∀ n, (P13545126295297851364.a n : ℤ) = A047204 (n + 1)

end A047204

/-! ## A047204.P6270152247653821175

`∑[3*char[2*n]]+n`
-/

namespace A047204.P6270152247653821175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047204.P6270152247653821175

namespace A047204

/-- `∑[3*char[2*n]]+n` -/
def P6270152247653821175.Spec : Prop :=
  ∀ n, (P6270152247653821175.a n : ℤ) = A047204 (n + 1)

end A047204

/-! ## A047204.P3444389456107674129

`lt[0, val((1-n)²+1, 5)]`
-/

namespace A047204.P3444389456107674129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((1 - (n : ℤ)) ^ 2 + 1).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047204.P3444389456107674129

namespace A047204

/-- `lt[0, val((1-n)²+1, 5)]` -/
def P3444389456107674129.Spec : Prop :=
  ∀ n, (P3444389456107674129.a n : ℤ) = A047204 (n + 1)

end A047204

/-! ## A047204.P5172518109130783458

`round(or(3, 2*n)+n/2)`
-/

namespace A047204.P5172518109130783458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 3 (2 * n) : ℚ) + (n : ℚ) / 2)

end

end A047204.P5172518109130783458

namespace A047204

/-- `round(or(3, 2*n)+n/2)` -/
def P5172518109130783458.Spec : Prop :=
  ∀ n, P5172518109130783458.a n = A047204 (n + 1)

end A047204

/-! ## A047204.P16899323615483935612

`record[(n+2)²%5+n-1]`
-/

namespace A047204.P16899323615483935612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2 % 5 : ℕ) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047204.P16899323615483935612

namespace A047204

/-- `record[(n+2)²%5+n-1]` -/
def P16899323615483935612.Spec : Prop :=
  ∀ n, P16899323615483935612.a n = A047204 (n + 1)

end A047204

/-! ## A047204.P660949254125796409

`floor(or(3, 2*n)+(n+1)/2)`
-/

namespace A047204.P660949254125796409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 3 (2 * n) : ℚ) + (n + 1 : ℚ) / 2⌋

end

end A047204.P660949254125796409

namespace A047204

/-- `floor(or(3, 2*n)+(n+1)/2)` -/
def P660949254125796409.Spec : Prop :=
  ∀ n, P660949254125796409.a n = A047204 (n + 1)

end A047204

/-! ## A047204.P3970450569534791554

`floor(5*n-(a(n-1)-2))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047204.P3970450569534791554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (5 * n : ℤ) - (a (n - 1) - 2)

end

end A047204.P3970450569534791554

namespace A047204

/-- `floor(5*n-(a(n-1)-2))` -/
def P3970450569534791554.Spec : Prop :=
  ∀ n, P3970450569534791554.a n = A047204 (n + 1)

end A047204

/-! ## A047204.P12688964354409818753

`lt[5, (n+3)/ceil((n+1)/5)]`
-/

namespace A047204.P12688964354409818753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (⌈(n + 1 : ℚ) / 5⌉ : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A047204.P12688964354409818753

namespace A047204

/-- `lt[5, (n+3)/ceil((n+1)/5)]` -/
def P12688964354409818753.Spec : Prop :=
  ∀ n, (P12688964354409818753.a n : ℤ) = A047204 (n + 1)

end A047204

/-! ## A047204.P3614287133594248289

`5*(n-(a(n-1)-2)/5)` with `a(0)=3`
-/

namespace A047204.P3614287133594248289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  5 * ((n : ℚ) - (a (n - 1) - 2) / 5)

end

end A047204.P3614287133594248289

namespace A047204

/-- `5*(n-(a(n-1)-2)/5)` -/
def P3614287133594248289.Spec : Prop :=
  ∀ n, P3614287133594248289.a n = (A047204 (n + 1) : ℚ)

end A047204

/-! ## A047204.P16356565809578365212

`floor(a(n-1)-4/(a(n-2)-a(n-1)))` with `a(0)=3, a(1)=4`
-/

namespace A047204.P16356565809578365212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  ⌊(a (n - 1) : ℚ) - 4 / (a (n - 2) - a (n - 1) : ℚ)⌋

end

end A047204.P16356565809578365212

namespace A047204

/-- `floor(a(n-1)-4/(a(n-2)-a(n-1)))` -/
def P16356565809578365212.Spec : Prop :=
  ∀ n, P16356565809578365212.a n = A047204 (n + 1)

end A047204

/-!
# A047205: Numbers that are congruent to {0, 3, 4} mod 5.

The programs for A047205, the canonical program `A047205.P15681585372041631801` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047205 has offset 1).

The definition of A047205 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047205.P15681585372041631801

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=4, a(3)=5`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047205

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P15681585372041631801.Spec : Prop :=
  ∀ n, P15681585372041631801.a n = A047205 (n + 1)

theorem P15681585372041631801.correct : P15681585372041631801.Spec := by
  intro n
  simp only [A047205, Nat.add_sub_cancel]

end A047205

/-! ## A047205.P12649848310416607794

`∑[gcd(3, 1-n)]-1`
-/

namespace A047205.P12649848310416607794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047205.P12649848310416607794

namespace A047205

/-- `∑[gcd(3, 1-n)]-1` -/
def P12649848310416607794.Spec : Prop :=
  ∀ n, P12649848310416607794.a n = A047205 (n + 1)

end A047205

/-! ## A047205.P1842566336793240775

`2*ceil(n/3)+n`
-/

namespace A047205.P1842566336793240775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(n : ℚ) / 3⌉ + (n : ℤ)

end

end A047205.P1842566336793240775

namespace A047205

/-- `2*ceil(n/3)+n` -/
def P1842566336793240775.Spec : Prop :=
  ∀ n, P1842566336793240775.a n = A047205 (n + 1)

end A047205

/-! ## A047205.P11063770808352344753

`comp[∑[(n%3)²]+1]`
-/

namespace A047205.P11063770808352344753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 3) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047205.P11063770808352344753

namespace A047205

/-- `comp[∑[(n%3)²]+1]` -/
def P11063770808352344753.Spec : Prop :=
  ∀ n, (P11063770808352344753.a n : ℤ) = A047205 (n + 1)

end A047205

/-! ## A047205.P10285388859175007611

`∑[and(3, dr(∑[3*n]))]`
-/

namespace A047205.P10285388859175007611
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047205.P10285388859175007611

namespace A047205

/-- `∑[and(3, dr(∑[3*n]))]` -/
def P10285388859175007611.Spec : Prop :=
  ∀ n, (P10285388859175007611.a n : ℤ) = A047205 (n + 1)

end A047205

/-! ## A047205.P9051445043572440186

`comp[a(n-2)+5]` with `a(0)=1, a(1)=2`
-/

namespace A047205.P9051445043572440186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047205.P9051445043572440186

namespace A047205

/-- `comp[a(n-2)+5]` -/
def P9051445043572440186.Spec : Prop :=
  ∀ n, (P9051445043572440186.a n : ℤ) = A047205 (n + 1)

end A047205

/-! ## A047205.P11656311176557554960

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=1`
-/

namespace A047205.P11656311176557554960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047205.P11656311176557554960

namespace A047205

/-- `∑[abs(a(n-3))]` -/
def P11656311176557554960.Spec : Prop :=
  ∀ n, (P11656311176557554960.a n : ℤ) = A047205 (n + 1)

end A047205

/-! ## A047205.P18172834170147126123

`∑[or(1, a(n-3))]` with `a(0)=0, a(1)=3, a(2)=1`
-/

namespace A047205.P18172834170147126123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1] fun n f1 =>
  Nat.lor 1 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047205.P18172834170147126123

namespace A047205

/-- `∑[or(1, a(n-3))]` -/
def P18172834170147126123.Spec : Prop :=
  ∀ n, (P18172834170147126123.a n : ℤ) = A047205 (n + 1)

end A047205

/-! ## A047205.P6869581288101634673

`∑[dr(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=1`
-/

namespace A047205.P6869581288101634673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 1] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047205.P6869581288101634673

namespace A047205

/-- `∑[dr(a(n-3))]` -/
def P6869581288101634673.Spec : Prop :=
  ∀ n, (P6869581288101634673.a n : ℤ) = A047205 (n + 1)

end A047205

/-! ## A047205.P281990390201926115

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047205.P281990390201926115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047205.P281990390201926115

namespace A047205

/-- `∑[floor(a(n-3))]` -/
def P281990390201926115.Spec : Prop :=
  ∀ n, (P281990390201926115.a n : ℤ) = A047205 (n + 1)

end A047205

/-! ## A047205.P18049204973503981730

`∑[ceil(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A047205.P18049204973503981730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047205.P18049204973503981730

namespace A047205

/-- `∑[ceil(a(n-3))]` -/
def P18049204973503981730.Spec : Prop :=
  ∀ n, (P18049204973503981730.a n : ℤ) = A047205 (n + 1)

end A047205

/-! ## A047205.P7195809250850217709

`∑[round(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=1`

`round` is left out, it is the identity on integers.
-/

namespace A047205.P7195809250850217709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047205.P7195809250850217709

namespace A047205

/-- `∑[round(a(n-3))]` -/
def P7195809250850217709.Spec : Prop :=
  ∀ n, (P7195809250850217709.a n : ℤ) = A047205 (n + 1)

end A047205

/-! ## A047205.P3405793793010057247

`eq[0, val((n+1)²+1, 5)]`
-/

namespace A047205.P3405793793010057247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) ^ 2 + 1) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047205.P3405793793010057247

namespace A047205

/-- `eq[0, val((n+1)²+1, 5)]` -/
def P3405793793010057247.Spec : Prop :=
  ∀ n, (P3405793793010057247.a n : ℤ) = A047205 (n + 1)

end A047205

/-! ## A047205.P783406670504803777

`lt[val((n+1)²+1, 5), 1]`
-/

namespace A047205.P783406670504803777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) ^ 2 + 1) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047205.P783406670504803777

namespace A047205

/-- `lt[val((n+1)²+1, 5), 1]` -/
def P783406670504803777.Spec : Prop :=
  ∀ n, (P783406670504803777.a n : ℤ) = A047205 (n + 1)

end A047205

/-! ## A047205.P16780002526522434487

`record[a(n-4)+5]` with `a(0)=0, a(1)=3, a(2)=0, a(3)=4`
-/

namespace A047205.P16780002526522434487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 0, 4] fun n f1 =>
  f1 (n - 4) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047205.P16780002526522434487

namespace A047205

/-- `record[a(n-4)+5]` -/
def P16780002526522434487.Spec : Prop :=
  ∀ n, (P16780002526522434487.a n : ℤ) = A047205 (n + 1)

end A047205

/-! ## A047205.P16882237729329396296

`∑[and(3, a(n-3))]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=1`
-/

namespace A047205.P16882237729329396296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 1] fun n f1 =>
  Nat.land 3 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047205.P16882237729329396296

namespace A047205

/-- `∑[and(3, a(n-3))]` -/
def P16882237729329396296.Spec : Prop :=
  ∀ n, (P16882237729329396296.a n : ℤ) = A047205 (n + 1)

end A047205

/-! ## A047205.P11930996575953512262

`∑[a(n-3)%n]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=1`
-/

namespace A047205.P11930996575953512262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 1] fun n f1 =>
  f1 (n - 3) % n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047205.P11930996575953512262

namespace A047205

/-- `∑[a(n-3)%n]` -/
def P11930996575953512262.Spec : Prop :=
  ∀ n, (P11930996575953512262.a n : ℤ) = A047205 (n + 1)

end A047205

/-! ## A047205.P5830921345870492324

`∑[char[3]+a(n-3)]` with `a(0)=0, a(1)=3, a(2)=1`
-/

namespace A047205.P5830921345870492324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1] fun n f1 =>
  (if ∃ j, f2 j = n then 1 else 0) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047205.P5830921345870492324

namespace A047205

/-- `∑[char[3]+a(n-3)]` -/
def P5830921345870492324.Spec : Prop :=
  ∀ n, (P5830921345870492324.a n : ℤ) = A047205 (n + 1)

end A047205

/-! ## A047205.P6887067384739356414

`comp[∑[(2-a(n-2))²]]` with `a(0)=1, a(1)=0`
-/

namespace A047205.P6887067384739356414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  (2 - f2 (n - 2)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047205.P6887067384739356414

namespace A047205

/-- `comp[∑[(2-a(n-2))²]]` -/
def P6887067384739356414.Spec : Prop :=
  ∀ n, (P6887067384739356414.a n : ℤ) = A047205 (n + 1)

end A047205

/-! ## A047205.P14532963068975435429

`lt[(n+2)%5+n, n+3]`
-/

namespace A047205.P14532963068975435429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % 5 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047205.P14532963068975435429

namespace A047205

/-- `lt[(n+2)%5+n, n+3]` -/
def P14532963068975435429.Spec : Prop :=
  ∀ n, (P14532963068975435429.a n : ℤ) = A047205 (n + 1)

end A047205

/-!
# A047206: Numbers that are congruent to {1, 3, 4} mod 5.

The programs for A047206, the canonical program `A047206.P5264832210253127635` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047206 has offset 1).

The definition of A047206 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047206.P5264832210253127635

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=6`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047206

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P5264832210253127635.Spec : Prop :=
  ∀ n, P5264832210253127635.a n = A047206 (n + 1)

theorem P5264832210253127635.correct : P5264832210253127635.Spec := by
  intro n
  simp only [A047206, Nat.add_sub_cancel]

end A047206

/-! ## A047206.P9000391175773384537

`comp[floor(5*n/2)]`
-/

namespace A047206.P9000391175773384537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((n : ℚ) / 2)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047206.P9000391175773384537

namespace A047206

/-- `comp[floor(5*n/2)]` -/
def P9000391175773384537.Spec : Prop :=
  ∀ n, (P9000391175773384537.a n : ℤ) = A047206 (n + 1)

end A047206

/-! ## A047206.P844974595116436083

`∑[gcd(2, (1-n)%3)]`
-/

namespace A047206.P844974595116436083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (Int.tmod (1 - (n : ℤ)) 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047206.P844974595116436083

namespace A047206

/-- `∑[gcd(2, (1-n)%3)]` -/
def P844974595116436083.Spec : Prop :=
  ∀ n, (P844974595116436083.a n : ℤ) = A047206 (n + 1)

end A047206

/-! ## A047206.P1089755591894431951

`∑[char[∑[n%3]]]+n`
-/

namespace A047206.P1089755591894431951
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047206.P1089755591894431951

namespace A047206

/-- `∑[char[∑[n%3]]]+n` -/
def P1089755591894431951.Spec : Prop :=
  ∀ n, (P1089755591894431951.a n : ℤ) = A047206 (n + 1)

end A047206

/-! ## A047206.P5025458173401929468

`a(n-3)+5` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A047206.P5025458173401929468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  a (n - 3) + 5

end

end A047206.P5025458173401929468

namespace A047206

/-- `a(n-3)+5` -/
def P5025458173401929468.Spec : Prop :=
  ∀ n, (P5025458173401929468.a n : ℤ) = A047206 (n + 1)

end A047206

/-! ## A047206.P1778644315267623709

`∑[(n+1)²%3]+n`
-/

namespace A047206.P1778644315267623709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047206.P1778644315267623709

namespace A047206

/-- `∑[(n+1)²%3]+n` -/
def P1778644315267623709.Spec : Prop :=
  ∀ n, (P1778644315267623709.a n : ℤ) = A047206 (n + 1)

end A047206

/-! ## A047206.P3391332381686817400

`-xor(round(5*n/3), -1)`
-/

namespace A047206.P3391332381686817400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (SequenceMachineLib.roundAway (5 * ((n : ℚ) / 3))) (-1)

end

end A047206.P3391332381686817400

namespace A047206

/-- `-xor(round(5*n/3), -1)` -/
def P3391332381686817400.Spec : Prop :=
  ∀ n, P3391332381686817400.a n = A047206 (n + 1)

end A047206

/-! ## A047206.P16835754113361888211

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2`
-/

namespace A047206.P16835754113361888211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047206.P16835754113361888211

namespace A047206

/-- `∑[abs(a(n-3))]` -/
def P16835754113361888211.Spec : Prop :=
  ∀ n, (P16835754113361888211.a n : ℤ) = A047206 (n + 1)

end A047206

/-! ## A047206.P10177440643181998200

`∑[a(n-3)!]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2`
-/

namespace A047206.P10177440643181998200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 2] fun n f1 =>
  Nat.factorial (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047206.P10177440643181998200

namespace A047206

/-- `∑[a(n-3)!]` -/
def P10177440643181998200.Spec : Prop :=
  ∀ n, (P10177440643181998200.a n : ℤ) = A047206 (n + 1)

end A047206

/-! ## A047206.P17861119159634789543

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2`
-/

namespace A047206.P17861119159634789543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047206.P17861119159634789543

namespace A047206

/-- `∑[dr(a(n-3))]` -/
def P17861119159634789543.Spec : Prop :=
  ∀ n, (P17861119159634789543.a n : ℤ) = A047206 (n + 1)

end A047206

/-! ## A047206.P12983088722530360421

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A047206.P12983088722530360421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047206.P12983088722530360421

namespace A047206

/-- `∑[floor(a(n-3))]` -/
def P12983088722530360421.Spec : Prop :=
  ∀ n, (P12983088722530360421.a n : ℤ) = A047206 (n + 1)

end A047206

/-! ## A047206.P8504957017131518066

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A047206.P8504957017131518066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047206.P8504957017131518066

namespace A047206

/-- `∑[ceil(a(n-3))]` -/
def P8504957017131518066.Spec : Prop :=
  ∀ n, (P8504957017131518066.a n : ℤ) = A047206 (n + 1)

end A047206

/-! ## A047206.P4016921843574625002

`∑[round(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2`

`round` is left out, it is the identity on integers.
-/

namespace A047206.P4016921843574625002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047206.P4016921843574625002

namespace A047206

/-- `∑[round(a(n-3))]` -/
def P4016921843574625002.Spec : Prop :=
  ∀ n, (P4016921843574625002.a n : ℤ) = A047206 (n + 1)

end A047206

/-! ## A047206.P3035895561962836918

`round(or(1, 2*n)-n/3)`
-/

namespace A047206.P3035895561962836918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (2 * n) : ℚ) - (n : ℚ) / 3)

end

end A047206.P3035895561962836918

namespace A047206

/-- `round(or(1, 2*n)-n/3)` -/
def P3035895561962836918.Spec : Prop :=
  ∀ n, P3035895561962836918.a n = A047206 (n + 1)

end A047206

/-! ## A047206.P12915710483081353900

`round(xor(1, 2*n)-n/3)`
-/

namespace A047206.P12915710483081353900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (2 * n) : ℚ) - (n : ℚ) / 3)

end

end A047206.P12915710483081353900

namespace A047206

/-- `round(xor(1, 2*n)-n/3)` -/
def P12915710483081353900.Spec : Prop :=
  ∀ n, P12915710483081353900.a n = A047206 (n + 1)

end A047206

/-! ## A047206.P2627622487987870668

`∑[a(n-3)%3]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2`
-/

namespace A047206.P2627622487987870668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 2] fun n f1 =>
  f1 (n - 3) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047206.P2627622487987870668

namespace A047206

/-- `∑[a(n-3)%3]` -/
def P2627622487987870668.Spec : Prop :=
  ∀ n, (P2627622487987870668.a n : ℤ) = A047206 (n + 1)

end A047206

/-! ## A047206.P12818277049180746280

`∑[and(3, a(n-3))]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2`
-/

namespace A047206.P12818277049180746280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 2] fun n f1 =>
  Nat.land 3 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047206.P12818277049180746280

namespace A047206

/-- `∑[and(3, a(n-3))]` -/
def P12818277049180746280.Spec : Prop :=
  ∀ n, (P12818277049180746280.a n : ℤ) = A047206 (n + 1)

end A047206

/-! ## A047206.P331412135854047418

`∑[3-a(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2`
-/

namespace A047206.P331412135854047418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, 2] fun n f1 =>
  3 - f1 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047206.P331412135854047418

namespace A047206

/-- `∑[3-a(a(n-3))]` -/
def P331412135854047418.Spec : Prop :=
  ∀ n, P331412135854047418.a n = A047206 (n + 1)

end A047206

/-! ## A047206.P1768445335873381286

`lt[val((n+2)²-(n-1), 5), 1]`
-/

namespace A047206.P1768445335873381286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (((n + 2) ^ 2 : ℤ) - ((n : ℤ) - 1)).toNat 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047206.P1768445335873381286

namespace A047206

/-- `lt[val((n+2)²-(n-1), 5), 1]` -/
def P1768445335873381286.Spec : Prop :=
  ∀ n, (P1768445335873381286.a n : ℤ) = A047206 (n + 1)

end A047206

/-!
# A047207: Numbers that are congruent to {0, 1, 3, 4} mod 5.

The programs for A047207, the canonical program `A047207.P5182596554560112218` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047207 has offset 1).

The definition of A047207 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047207.P5182596554560112218

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4, a(4)=5`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047207

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P5182596554560112218.Spec : Prop :=
  ∀ n, P5182596554560112218.a n = A047207 (n + 1)

theorem P5182596554560112218.correct : P5182596554560112218.Spec := by
  intro n
  simp only [A047207, Nat.add_sub_cancel]

end A047207

/-! ## A047207.P14780082149166941999

`round(5*n/4)`
-/

namespace A047207.P14780082149166941999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * ((n : ℚ) / 4))

end

end A047207.P14780082149166941999

namespace A047207

/-- `round(5*n/4)` -/
def P14780082149166941999.Spec : Prop :=
  ∀ n, P14780082149166941999.a n = A047207 (n + 1)

end A047207

/-! ## A047207.P9563357754877001597

`comp[lcm(5, n)+2]`
-/

namespace A047207.P9563357754877001597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047207.P9563357754877001597

namespace A047207

/-- `comp[lcm(5, n)+2]` -/
def P9563357754877001597.Spec : Prop :=
  ∀ n, (P9563357754877001597.a n : ℤ) = A047207 (n + 1)

end A047207

/-! ## A047207.P6309269261632560677

`∑[gcd(4, n)%3]-1`
-/

namespace A047207.P6309269261632560677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 n % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047207.P6309269261632560677

namespace A047207

/-- `∑[gcd(4, n)%3]-1` -/
def P6309269261632560677.Spec : Prop :=
  ∀ n, P6309269261632560677.a n = A047207 (n + 1)

end A047207

/-! ## A047207.P8194255479505791331

`comp[5*xor(1, n)+2]`
-/

namespace A047207.P8194255479505791331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.xor 1 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047207.P8194255479505791331

namespace A047207

/-- `comp[5*xor(1, n)+2]` -/
def P8194255479505791331.Spec : Prop :=
  ∀ n, (P8194255479505791331.a n : ℤ) = A047207 (n + 1)

end A047207

/-! ## A047207.P18087787068500769364

`comp[a(n-1)+5]` with `a(0)=2`
-/

namespace A047207.P18087787068500769364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047207.P18087787068500769364

namespace A047207

/-- `comp[a(n-1)+5]` -/
def P18087787068500769364.Spec : Prop :=
  ∀ n, (P18087787068500769364.a n : ℤ) = A047207 (n + 1)

end A047207

/-! ## A047207.P7258206160794549498

`round(or(1, n)/4)+n`
-/

namespace A047207.P7258206160794549498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 n : ℚ) / 4) + (n : ℤ)

end

end A047207.P7258206160794549498

namespace A047207

/-- `round(or(1, n)/4)+n` -/
def P7258206160794549498.Spec : Prop :=
  ∀ n, P7258206160794549498.a n = A047207 (n + 1)

end A047207

/-! ## A047207.P14350728294312539114

`round(xor(1, n)/4)+n`
-/

namespace A047207.P14350728294312539114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 4) + (n : ℤ)

end

end A047207.P14350728294312539114

namespace A047207

/-- `round(xor(1, n)/4)+n` -/
def P14350728294312539114.Spec : Prop :=
  ∀ n, P14350728294312539114.a n = A047207 (n + 1)

end A047207

/-! ## A047207.P9158934862998877632

`comp[2-n%5+n]`
-/

namespace A047207.P9158934862998877632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n % 5 : ℕ) : ℤ) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047207.P9158934862998877632

namespace A047207

/-- `comp[2-n%5+n]` -/
def P9158934862998877632.Spec : Prop :=
  ∀ n, (P9158934862998877632.a n : ℤ) = A047207 (n + 1)

end A047207

/-! ## A047207.P17042277422988929435

`record[n/gcd(5, 2-n)]`
-/

namespace A047207.P17042277422988929435
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd 5 (2 - (n : ℤ)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047207.P17042277422988929435

namespace A047207

/-- `record[n/gcd(5, 2-n)]` -/
def P17042277422988929435.Spec : Prop :=
  ∀ n, P17042277422988929435.a n = (A047207 (n + 1) : ℚ)

end A047207

/-! ## A047207.P6998685527382427375

`comp[n-(n-2)%5]`
-/

namespace A047207.P6998685527382427375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod ((n : ℤ) - 2) 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047207.P6998685527382427375

namespace A047207

/-- `comp[n-(n-2)%5]` -/
def P6998685527382427375.Spec : Prop :=
  ∀ n, (P6998685527382427375.a n : ℤ) = A047207 (n + 1)

end A047207

/-! ## A047207.P4173090328930032292

`record[n-val(n+3, 5)]`
-/

namespace A047207.P4173090328930032292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (n + 3) 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047207.P4173090328930032292

namespace A047207

/-- `record[n-val(n+3, 5)]` -/
def P4173090328930032292.Spec : Prop :=
  ∀ n, P4173090328930032292.a n = A047207 (n + 1)

end A047207

/-! ## A047207.P14753573828991539808

`eq[1, n^val(n+3, 5)]`
-/

namespace A047207.P14753573828991539808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.valuation (n + 3) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047207.P14753573828991539808

namespace A047207

/-- `eq[1, n^val(n+3, 5)]` -/
def P14753573828991539808.Spec : Prop :=
  ∀ n, (P14753573828991539808.a n : ℤ) = A047207 (n + 1)

end A047207

/-! ## A047207.P8466447283268969208

`lt[2*n, lcm(10, 2-n)]`
-/

namespace A047207.P8466447283268969208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 10 (2 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047207.P8466447283268969208

namespace A047207

/-- `lt[2*n, lcm(10, 2-n)]` -/
def P8466447283268969208.Spec : Prop :=
  ∀ n, (P8466447283268969208.a n : ℤ) = A047207 (n + 1)

end A047207

/-! ## A047207.P8635699544336386969

`lt[n^val(n+3, 5), 2]`
-/

namespace A047207.P8635699544336386969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.valuation (n + 3) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047207.P8635699544336386969

namespace A047207

/-- `lt[n^val(n+3, 5), 2]` -/
def P8635699544336386969.Spec : Prop :=
  ∀ n, (P8635699544336386969.a n : ℤ) = A047207 (n + 1)

end A047207

/-! ## A047207.P15021277072241469733

`lt[C(2, n), (n+3)%5]`
-/

namespace A047207.P15021277072241469733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047207.P15021277072241469733

namespace A047207

/-- `lt[C(2, n), (n+3)%5]` -/
def P15021277072241469733.Spec : Prop :=
  ∀ n, (P15021277072241469733.a n : ℤ) = A047207 (n + 1)

end A047207

/-! ## A047207.P1692062896380002559

`eq[n, val(n+3, 5)+n]`
-/

namespace A047207.P1692062896380002559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 3) 5 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047207.P1692062896380002559

namespace A047207

/-- `eq[n, val(n+3, 5)+n]` -/
def P1692062896380002559.Spec : Prop :=
  ∀ n, (P1692062896380002559.a n : ℤ) = A047207 (n + 1)

end A047207

/-! ## A047207.P17409253761263955622

`a(n-4)+5` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4`
-/

namespace A047207.P17409253761263955622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 4] fun n a =>
  a (n - 4) + 5

end

end A047207.P17409253761263955622

namespace A047207

/-- `a(n-4)+5` -/
def P17409253761263955622.Spec : Prop :=
  ∀ n, (P17409253761263955622.a n : ℤ) = A047207 (n + 1)

end A047207

/-! ## A047207.P18054670716302311543

`∑[a(n-4)!]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A047207.P18054670716302311543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 1] fun n f1 =>
  Nat.factorial (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047207.P18054670716302311543

namespace A047207

/-- `∑[a(n-4)!]` -/
def P18054670716302311543.Spec : Prop :=
  ∀ n, (P18054670716302311543.a n : ℤ) = A047207 (n + 1)

end A047207

/-! ## A047207.P17899850364319884937

`and(n+2, -4)/4+n`
-/

namespace A047207.P17899850364319884937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n + 2 : ℤ) (-4) : ℚ) / 4 + (n : ℚ)

end

end A047207.P17899850364319884937

namespace A047207

/-- `and(n+2, -4)/4+n` -/
def P17899850364319884937.Spec : Prop :=
  ∀ n, P17899850364319884937.a n = (A047207 (n + 1) : ℚ)

end A047207

/-!
# A047208: Numbers that are congruent to {0, 4} mod 5.

The programs for A047208, the canonical program `A047208.P14497428806713299572` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047208 has offset 1).

The definition of A047208 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047208.P14497428806713299572

`a(n-2)+5` with `a(0)=0, a(1)=4`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047208

/-- `a(n-2)+5` -/
def P14497428806713299572.Spec : Prop :=
  ∀ n, (P14497428806713299572.a n : ℤ) = A047208 (n + 1)

theorem P14497428806713299572.correct : P14497428806713299572.Spec := by
  intro n
  simp only [A047208, Nat.add_sub_cancel]

end A047208

/-! ## A047208.P7835635754756671343

`ceil(5/3*ceil(3*n/2))`
-/

namespace A047208.P7835635754756671343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(5 : ℚ) / 3 * (⌈3 * ((n : ℚ) / 2)⌉ : ℚ)⌉

end

end A047208.P7835635754756671343

namespace A047208

/-- `ceil(5/3*ceil(3*n/2))` -/
def P7835635754756671343.Spec : Prop :=
  ∀ n, P7835635754756671343.a n = A047208 (n + 1)

end A047208

/-! ## A047208.P10254102328071325883

`∑[4^(n%2)]-1`
-/

namespace A047208.P10254102328071325883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047208.P10254102328071325883

namespace A047208

/-- `∑[4^(n%2)]-1` -/
def P10254102328071325883.Spec : Prop :=
  ∀ n, P10254102328071325883.a n = A047208 (n + 1)

end A047208

/-! ## A047208.P10006513984061157142

`∑[4^and(1, n)]-1`
-/

namespace A047208.P10006513984061157142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047208.P10006513984061157142

namespace A047208

/-- `∑[4^and(1, n)]-1` -/
def P10006513984061157142.Spec : Prop :=
  ∀ n, P10006513984061157142.a n = A047208 (n + 1)

end A047208

/-! ## A047208.P15496754945158956032

`∑[abs(a(n-2))]` with `a(0)=0, a(1)=4, a(2)=1`
-/

namespace A047208.P15496754945158956032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 1] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047208.P15496754945158956032

namespace A047208

/-- `∑[abs(a(n-2))]` -/
def P15496754945158956032.Spec : Prop :=
  ∀ n, (P15496754945158956032.a n : ℤ) = A047208 (n + 1)

end A047208

/-! ## A047208.P15836381508824599407

`∑[5-a(n-1)]` with `a(0)=0, a(1)=4`
-/

namespace A047208.P15836381508824599407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047208.P15836381508824599407

namespace A047208

/-- `∑[5-a(n-1)]` -/
def P15836381508824599407.Spec : Prop :=
  ∀ n, P15836381508824599407.a n = A047208 (n + 1)

end A047208

/-! ## A047208.P14263878011813940557

`lt[0, val((2-n)²+1, 5)]`
-/

namespace A047208.P14263878011813940557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((2 - (n : ℤ)) ^ 2 + 1).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047208.P14263878011813940557

namespace A047208

/-- `lt[0, val((2-n)²+1, 5)]` -/
def P14263878011813940557.Spec : Prop :=
  ∀ n, (P14263878011813940557.a n : ℤ) = A047208 (n + 1)

end A047208

/-! ## A047208.P6001474466990451231

`abs(1-∑[gcd(2, n+1)²])`
-/

namespace A047208.P6001474466990451231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A047208.P6001474466990451231

namespace A047208

/-- `abs(1-∑[gcd(2, n+1)²])` -/
def P6001474466990451231.Spec : Prop :=
  ∀ n, P6001474466990451231.a n = A047208 (n + 1)

end A047208

/-! ## A047208.P3772137276124724675

`5*n-a(n-1)-1` with `a(0)=0`
-/

namespace A047208.P3772137276124724675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (5 * n : ℤ) - a (n - 1) - 1

end

end A047208.P3772137276124724675

namespace A047208

/-- `5*n-a(n-1)-1` -/
def P3772137276124724675.Spec : Prop :=
  ∀ n, P3772137276124724675.a n = A047208 (n + 1)

end A047208

/-! ## A047208.P14601941104323682186

`lt[(n+1)%5+n, n+2]`
-/

namespace A047208.P14601941104323682186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 5 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047208.P14601941104323682186

namespace A047208

/-- `lt[(n+1)%5+n, n+2]` -/
def P14601941104323682186.Spec : Prop :=
  ∀ n, (P14601941104323682186.a n : ℤ) = A047208 (n + 1)

end A047208

/-! ## A047208.P5002835134919539385

`record[(n+1)²%5+n-1]`
-/

namespace A047208.P5002835134919539385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 % 5 : ℕ) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047208.P5002835134919539385

namespace A047208

/-- `record[(n+1)²%5+n-1]` -/
def P5002835134919539385.Spec : Prop :=
  ∀ n, P5002835134919539385.a n = A047208 (n + 1)

end A047208

/-! ## A047208.P6170145365160241544

`record[n+2-((n+2)%5)!]`
-/

namespace A047208.P6170145365160241544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.factorial ((n + 2) % 5) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047208.P6170145365160241544

namespace A047208

/-- `record[n+2-((n+2)%5)!]` -/
def P6170145365160241544.Spec : Prop :=
  ∀ n, P6170145365160241544.a n = A047208 (n + 1)

end A047208

/-! ## A047208.P2138496554652694874

`lt[lcm(5, n²+n), (n+1)²]`
-/

namespace A047208.P2138496554652694874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 (n ^ 2 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047208.P2138496554652694874

namespace A047208

/-- `lt[lcm(5, n²+n), (n+1)²]` -/
def P2138496554652694874.Spec : Prop :=
  ∀ n, (P2138496554652694874.a n : ℤ) = A047208 (n + 1)

end A047208

/-! ## A047208.P4996806415591910023

`round(xor(1, n+1)/2+2*n)`
-/

namespace A047208.P4996806415591910023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (n + 1) : ℚ) / 2 + (2 * n : ℚ))

end

end A047208.P4996806415591910023

namespace A047208

/-- `round(xor(1, n+1)/2+2*n)` -/
def P4996806415591910023.Spec : Prop :=
  ∀ n, P4996806415591910023.a n = A047208 (n + 1)

end A047208

/-! ## A047208.P10721034121397580363

`∑[ceil(xor(1, n+1)/(n+1))²]`
-/

namespace A047208.P10721034121397580363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047208.P10721034121397580363

namespace A047208

/-- `∑[ceil(xor(1, n+1)/(n+1))²]` -/
def P10721034121397580363.Spec : Prop :=
  ∀ n, P10721034121397580363.a n = A047208 (n + 1)

end A047208

/-! ## A047208.P2379332921929268561

`lt[2*n, (n-1)*(n-1)%5]`
-/

namespace A047208.P2379332921929268561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * Int.tmod ((n : ℤ) - 1) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A047208.P2379332921929268561

namespace A047208

/-- `lt[2*n, (n-1)*(n-1)%5]` -/
def P2379332921929268561.Spec : Prop :=
  ∀ n, (P2379332921929268561.a n : ℤ) = A047208 (n + 1)

end A047208

/-! ## A047208.P1272643245360051290

`∑[gcd(2*n, (2*n)%(n+1))²]`
-/

namespace A047208.P1272643245360051290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (2 * n % (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047208.P1272643245360051290

namespace A047208

/-- `∑[gcd(2*n, (2*n)%(n+1))²]` -/
def P1272643245360051290.Spec : Prop :=
  ∀ n, (P1272643245360051290.a n : ℤ) = A047208 (n + 1)

end A047208

/-!
# A047209: Numbers that are congruent to {1, 4} mod 5.

The programs for A047209, the canonical program `A047209.P980479515713272986` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047209 has offset 1).

The definition of A047209 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047209.P980479515713272986

`a(n-2)+5` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047209

/-- `a(n-2)+5` -/
def P980479515713272986.Spec : Prop :=
  ∀ n, (P980479515713272986.a n : ℤ) = A047209 (n + 1)

theorem P980479515713272986.correct : P980479515713272986.Spec := by
  intro n
  simp only [A047209, Nat.add_sub_cancel]

end A047209

/-! ## A047209.P9958750254792681939

`comp[round(5*n/3)]`
-/

namespace A047209.P9958750254792681939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * ((n : ℚ) / 3))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047209.P9958750254792681939

namespace A047209

/-- `comp[round(5*n/3)]` -/
def P9958750254792681939.Spec : Prop :=
  ∀ n, (P9958750254792681939.a n : ℤ) = A047209 (n + 1)

end A047209

/-! ## A047209.P12611515601837726961

`∑[n%2+2]-1`
-/

namespace A047209.P12611515601837726961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047209.P12611515601837726961

namespace A047209

/-- `∑[n%2+2]-1` -/
def P12611515601837726961.Spec : Prop :=
  ∀ n, P12611515601837726961.a n = A047209 (n + 1)

end A047209

/-! ## A047209.P6742022230313517458

`∑[4-gcd(2, n)]-1`
-/

namespace A047209.P6742022230313517458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A047209.P6742022230313517458

namespace A047209

/-- `∑[4-gcd(2, n)]-1` -/
def P6742022230313517458.Spec : Prop :=
  ∀ n, P6742022230313517458.a n = A047209 (n + 1)

end A047209

/-! ## A047209.P11806167636293782623

`∑[and(1, n)+2]-1`
-/

namespace A047209.P11806167636293782623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047209.P11806167636293782623

namespace A047209

/-- `∑[and(1, n)+2]-1` -/
def P11806167636293782623.Spec : Prop :=
  ∀ n, P11806167636293782623.a n = A047209 (n + 1)

end A047209

/-! ## A047209.P15826211739578104776

`∑[or(2, and(1, n))]-1`
-/

namespace A047209.P15826211739578104776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047209.P15826211739578104776

namespace A047209

/-- `∑[or(2, and(1, n))]-1` -/
def P15826211739578104776.Spec : Prop :=
  ∀ n, P15826211739578104776.a n = A047209 (n + 1)

end A047209

/-! ## A047209.P1096047836711309362

`∑[xor(2, and(1, n))]-1`
-/

namespace A047209.P1096047836711309362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047209.P1096047836711309362

namespace A047209

/-- `∑[xor(2, and(1, n))]-1` -/
def P1096047836711309362.Spec : Prop :=
  ∀ n, P1096047836711309362.a n = A047209 (n + 1)

end A047209

/-! ## A047209.P8778056394244068399

`∑[2^and(1, n)]+n`
-/

namespace A047209.P8778056394244068399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047209.P8778056394244068399

namespace A047209

/-- `∑[2^and(1, n)]+n` -/
def P8778056394244068399.Spec : Prop :=
  ∀ n, (P8778056394244068399.a n : ℤ) = A047209 (n + 1)

end A047209

/-! ## A047209.P881189482022114097

`∑[C(2, and(1, n))]+n`
-/

namespace A047209.P881189482022114097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047209.P881189482022114097

namespace A047209

/-- `∑[C(2, and(1, n))]+n` -/
def P881189482022114097.Spec : Prop :=
  ∀ n, (P881189482022114097.a n : ℤ) = A047209 (n + 1)

end A047209

/-! ## A047209.P17412455241511710290

`∑[2-floor(cos(2)^n)]`
-/

namespace A047209.P17412455241511710290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌊Real.cos (2 : ℝ) ^ n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047209.P17412455241511710290

namespace A047209

/-- `∑[2-floor(cos(2)^n)]` -/
def P17412455241511710290.Spec : Prop :=
  ∀ n, P17412455241511710290.a n = A047209 (n + 1)

end A047209

/-! ## A047209.P6498025195954673124

`∑[2-floor(tan(3)^n)]`
-/

namespace A047209.P6498025195954673124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌊Real.tan (3 : ℝ) ^ n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047209.P6498025195954673124

namespace A047209

/-- `∑[2-floor(tan(3)^n)]` -/
def P6498025195954673124.Spec : Prop :=
  ∀ n, P6498025195954673124.a n = A047209 (n + 1)

end A047209

/-! ## A047209.P5350200517720522173

`∑[2-floor(cot(2)^n)]`
-/

namespace A047209.P5350200517720522173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌊Real.cot (2 : ℝ) ^ n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047209.P5350200517720522173

namespace A047209

/-- `∑[2-floor(cot(2)^n)]` -/
def P5350200517720522173.Spec : Prop :=
  ∀ n, P5350200517720522173.a n = A047209 (n + 1)

end A047209

/-! ## A047209.P17435664369084838289

`Δ[n²]+∑[and(1, n)]`
-/

namespace A047209.P17435664369084838289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A047209.P17435664369084838289

namespace A047209

/-- `Δ[n²]+∑[and(1, n)]` -/
def P17435664369084838289.Spec : Prop :=
  ∀ n, P17435664369084838289.a n = A047209 (n + 1)

end A047209

/-! ## A047209.P15072452662909919348

`∑[5-a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A047209.P15072452662909919348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047209.P15072452662909919348

namespace A047209

/-- `∑[5-a(n-1)]` -/
def P15072452662909919348.Spec : Prop :=
  ∀ n, P15072452662909919348.a n = A047209 (n + 1)

end A047209

/-! ## A047209.P5124693970095786146

`5*n-a(n-1)` with `a(0)=1`
-/

namespace A047209.P5124693970095786146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (5 * n : ℤ) - a (n - 1)

end

end A047209.P5124693970095786146

namespace A047209

/-- `5*n-a(n-1)` -/
def P5124693970095786146.Spec : Prop :=
  ∀ n, P5124693970095786146.a n = A047209 (n + 1)

end A047209

/-! ## A047209.P15625631594651094298

`n-∑[or(n+1, -2)]`
-/

namespace A047209.P15625631594651094298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047209.P15625631594651094298

namespace A047209

/-- `n-∑[or(n+1, -2)]` -/
def P15625631594651094298.Spec : Prop :=
  ∀ n, P15625631594651094298.a n = A047209 (n + 1)

end A047209

/-! ## A047209.P9455835719822934943

`record[n+1-n²%5]`
-/

namespace A047209.P9455835719822934943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((n ^ 2 % 5 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047209.P9455835719822934943

namespace A047209

/-- `record[n+1-n²%5]` -/
def P9455835719822934943.Spec : Prop :=
  ∀ n, P9455835719822934943.a n = A047209 (n + 1)

end A047209

/-! ## A047209.P16760520512874337394

`round(5*or(1, 2*n)/4)`
-/

namespace A047209.P16760520512874337394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * ((Nat.lor 1 (2 * n) : ℚ) / 4))

end

end A047209.P16760520512874337394

namespace A047209

/-- `round(5*or(1, 2*n)/4)` -/
def P16760520512874337394.Spec : Prop :=
  ∀ n, P16760520512874337394.a n = A047209 (n + 1)

end A047209

/-!
# A047210: Largest square modulo n.

The programs for A047210, there is no canonical definition to state claims against.
-/

/-! ## A047210.P13552628834053015567

`A096008(∑[A000224(n+1)])`
-/

namespace A047210.P13552628834053015567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096008 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047210.P13552628834053015567

/-! ## A047210.P17604701495911428307

`A096008(∑[A105612(n+1)+1])`
-/

namespace A047210.P17604701495911428307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096008 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047210.P17604701495911428307

/-! ## A047210.P16142242404610527542

`A096008(∑[1-A095972(n+1)+n])`
-/

namespace A047210.P16142242404610527542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A095972 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096008 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047210.P16142242404610527542

/-! ## A047210.P16344300919405340953

`A096008(A000224(n+1)+eq[0, A096008(n+1)])`
-/

namespace A047210.P16344300919405340953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096008 (A000224 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)).toNat

end

end A047210.P16344300919405340953

/-! ## A047210.P16798640014792338595

`A096008(∑[A165915(n+1)+A165924(n+1)+1])`
-/

namespace A047210.P16798640014792338595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165915 (n + 1) + (A165924 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096008 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047210.P16798640014792338595

/-! ## A047210.P9020021218619155051

`A096008(eq[1, A096008(n+2)])`
-/

namespace A047210.P9020021218619155051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096008 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096008 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047210.P9020021218619155051

/-! ## A047210.P16840929838477763369

`A096008(record[n+1-A096008(n+2)])`
-/

namespace A047210.P16840929838477763369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A096008 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096008 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A047210.P16840929838477763369

/-!
# A047211: Numbers that are congruent to {2, 4} mod 5.

The programs for A047211, the canonical program `A047211.P8822276400939425709` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047211 has offset 1).

The definition of A047211 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047211.P8822276400939425709

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=2, a(1)=4, a(2)=7`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047211

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P8822276400939425709.Spec : Prop :=
  ∀ n, P8822276400939425709.a n = A047211 (n + 1)

theorem P8822276400939425709.correct : P8822276400939425709.Spec := by
  intro n
  simp only [A047211, Nat.add_sub_cancel]

end A047211

/-! ## A047211.P16033328448192014711

`∑[gcd(2, n)]+n`
-/

namespace A047211.P16033328448192014711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047211.P16033328448192014711

namespace A047211

/-- `∑[gcd(2, n)]+n` -/
def P16033328448192014711.Spec : Prop :=
  ∀ n, (P16033328448192014711.a n : ℤ) = A047211 (n + 1)

end A047211

/-! ## A047211.P8526389828150806619

`n-∑[or(n, -2)]`
-/

namespace A047211.P8526389828150806619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047211.P8526389828150806619

namespace A047211

/-- `n-∑[or(n, -2)]` -/
def P8526389828150806619.Spec : Prop :=
  ∀ n, P8526389828150806619.a n = A047211 (n + 1)

end A047211

/-! ## A047211.P9108253780575751313

`a(n-2)+5` with `a(0)=2, a(1)=4`
-/

namespace A047211.P9108253780575751313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 2) + 5

end

end A047211.P9108253780575751313

namespace A047211

/-- `a(n-2)+5` -/
def P9108253780575751313.Spec : Prop :=
  ∀ n, (P9108253780575751313.a n : ℤ) = A047211 (n + 1)

end A047211

/-! ## A047211.P9060924863469165852

`floor(5*n/2)+2`
-/

namespace A047211.P9060924863469165852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((n : ℚ) / 2)⌋ + 2

end

end A047211.P9060924863469165852

namespace A047211

/-- `floor(5*n/2)+2` -/
def P9060924863469165852.Spec : Prop :=
  ∀ n, P9060924863469165852.a n = A047211 (n + 1)

end A047211

/-! ## A047211.P4104608781531296217

`∑[3-(n%2)^n]`
-/

namespace A047211.P4104608781531296217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (((n % 2) ^ n : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047211.P4104608781531296217

namespace A047211

/-- `∑[3-(n%2)^n]` -/
def P4104608781531296217.Spec : Prop :=
  ∀ n, P4104608781531296217.a n = A047211 (n + 1)

end A047211

/-! ## A047211.P6221115309620306014

`∑[xor(3, and(1, n)^n)]`
-/

namespace A047211.P6221115309620306014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (Nat.land 1 n ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047211.P6221115309620306014

namespace A047211

/-- `∑[xor(3, and(1, n)^n)]` -/
def P6221115309620306014.Spec : Prop :=
  ∀ n, (P6221115309620306014.a n : ℤ) = A047211 (n + 1)

end A047211

/-! ## A047211.P5743196206838637473

`∑[∑{p}[n, val(#, 2)]+2]`
-/

namespace A047211.P5743196206838637473
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047211.P5743196206838637473

namespace A047211

/-- `∑[∑{p}[n, val(#, 2)]+2]` -/
def P5743196206838637473.Spec : Prop :=
  ∀ n, (P5743196206838637473.a n : ℤ) = A047211 (n + 1)

end A047211

/-! ## A047211.P16218020321125617173

`∑[val(∏{p}[n, #], 2)+2]`
-/

namespace A047211.P16218020321125617173
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p) 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047211.P16218020321125617173

namespace A047211

/-- `∑[val(∏{p}[n, #], 2)+2]` -/
def P16218020321125617173.Spec : Prop :=
  ∀ n, (P16218020321125617173.a n : ℤ) = A047211 (n + 1)

end A047211

/-! ## A047211.P7767494493149643816

`∑[∑{p}[n, C(2, #)]+2]`
-/

namespace A047211.P7767494493149643816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose 2 p + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047211.P7767494493149643816

namespace A047211

/-- `∑[∑{p}[n, C(2, #)]+2]` -/
def P7767494493149643816.Spec : Prop :=
  ∀ n, (P7767494493149643816.a n : ℤ) = A047211 (n + 1)

end A047211

/-! ## A047211.P13159981196310040060

`floor(sinh(log(5*(n+1))))`
-/

namespace A047211.P13159981196310040060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (5 * (n + 1) : ℝ))⌋

end

end A047211.P13159981196310040060

namespace A047211

/-- `floor(sinh(log(5*(n+1))))` -/
def P13159981196310040060.Spec : Prop :=
  ∀ n, P13159981196310040060.a n = A047211 (n + 1)

end A047211

/-! ## A047211.P10495188225566646199

`(or(1, 5*n)+3)/2`
-/

namespace A047211.P10495188225566646199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (5 * n) + 3 : ℚ) / 2

end

end A047211.P10495188225566646199

namespace A047211

/-- `(or(1, 5*n)+3)/2` -/
def P10495188225566646199.Spec : Prop :=
  ∀ n, P10495188225566646199.a n = (A047211 (n + 1) : ℚ)

end A047211

/-! ## A047211.P12613584050984931100

`∑[5-a(n-1)]` with `a(0)=2, a(1)=2`
-/

namespace A047211.P12613584050984931100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047211.P12613584050984931100

namespace A047211

/-- `∑[5-a(n-1)]` -/
def P12613584050984931100.Spec : Prop :=
  ∀ n, P12613584050984931100.a n = A047211 (n + 1)

end A047211

/-! ## A047211.P12210019316031516288

`∑[char[lcm(2, n+1)]+2]`
-/

namespace A047211.P12210019316031516288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047211.P12210019316031516288

namespace A047211

/-- `∑[char[lcm(2, n+1)]+2]` -/
def P12210019316031516288.Spec : Prop :=
  ∀ n, (P12210019316031516288.a n : ℤ) = A047211 (n + 1)

end A047211

/-! ## A047211.P535657797888032367

`∑[or(2, char[2*(n+1)])]`
-/

namespace A047211.P535657797888032367
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047211.P535657797888032367

namespace A047211

/-- `∑[or(2, char[2*(n+1)])]` -/
def P535657797888032367.Spec : Prop :=
  ∀ n, (P535657797888032367.a n : ℤ) = A047211 (n + 1)

end A047211

/-! ## A047211.P7391106678517484949

`∑[xor(2, char[2*(n+1)])]`
-/

namespace A047211.P7391106678517484949
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047211.P7391106678517484949

namespace A047211

/-- `∑[xor(2, char[2*(n+1)])]` -/
def P7391106678517484949.Spec : Prop :=
  ∀ n, (P7391106678517484949.a n : ℤ) = A047211 (n + 1)

end A047211

/-! ## A047211.P15464087673665356739

`ceil(5*or(1, 2*n)/4)`
-/

namespace A047211.P15464087673665356739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈5 * ((Nat.lor 1 (2 * n) : ℚ) / 4)⌉

end

end A047211.P15464087673665356739

namespace A047211

/-- `ceil(5*or(1, 2*n)/4)` -/
def P15464087673665356739.Spec : Prop :=
  ∀ n, P15464087673665356739.a n = A047211 (n + 1)

end A047211

/-!
# A047212: Numbers that are congruent to {0, 2, 4} mod 5.

The programs for A047212, the canonical program `A047212.P2417433116165128359` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047212 has offset 1).

The definition of A047212 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047212.P2417433116165128359

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=5`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047212

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P2417433116165128359.Spec : Prop :=
  ∀ n, P2417433116165128359.a n = A047212 (n + 1)

theorem P2417433116165128359.correct : P2417433116165128359.Spec := by
  intro n
  simp only [A047212, Nat.add_sub_cancel]

end A047212

/-! ## A047212.P1294690857691228083

`ceil(5*n/3)`
-/

namespace A047212.P1294690857691228083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈5 * ((n : ℚ) / 3)⌉

end

end A047212.P1294690857691228083

namespace A047212

/-- `ceil(5*n/3)` -/
def P1294690857691228083.Spec : Prop :=
  ∀ n, P1294690857691228083.a n = A047212 (n + 1)

end A047212

/-! ## A047212.P6491513919026194667

`∑[n²%3]+n`
-/

namespace A047212.P6491513919026194667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047212.P6491513919026194667

namespace A047212

/-- `∑[n²%3]+n` -/
def P6491513919026194667.Spec : Prop :=
  ∀ n, (P6491513919026194667.a n : ℤ) = A047212 (n + 1)

end A047212

/-! ## A047212.P17123683671186076087

`3*n-comp[or(3, n)]`
-/

namespace A047212.P17123683671186076087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A047212.P17123683671186076087

namespace A047212

/-- `3*n-comp[or(3, n)]` -/
def P17123683671186076087.Spec : Prop :=
  ∀ n, P17123683671186076087.a n = A047212 (n + 1)

end A047212

/-! ## A047212.P10071594782724664564

`record[(n%5)%3+n]`
-/

namespace A047212.P10071594782724664564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 5 % 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047212.P10071594782724664564

namespace A047212

/-- `record[(n%5)%3+n]` -/
def P10071594782724664564.Spec : Prop :=
  ∀ n, (P10071594782724664564.a n : ℤ) = A047212 (n + 1)

end A047212

/-! ## A047212.P5277551586766410625

`n-∑[-n²%3]`
-/

namespace A047212.P5277551586766410625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(n ^ 2 : ℤ)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047212.P5277551586766410625

namespace A047212

/-- `n-∑[-n²%3]` -/
def P5277551586766410625.Spec : Prop :=
  ∀ n, P5277551586766410625.a n = A047212 (n + 1)

end A047212

/-! ## A047212.P4002775198444582104

`a(n-3)+5` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A047212.P4002775198444582104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4] fun n a =>
  a (n - 3) + 5

end

end A047212.P4002775198444582104

namespace A047212

/-- `a(n-3)+5` -/
def P4002775198444582104.Spec : Prop :=
  ∀ n, (P4002775198444582104.a n : ℤ) = A047212 (n + 1)

end A047212

/-! ## A047212.P8004747006810689110

`∑[a(n-3)!]` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A047212.P8004747006810689110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2] fun n f1 =>
  Nat.factorial (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047212.P8004747006810689110

namespace A047212

/-- `∑[a(n-3)!]` -/
def P8004747006810689110.Spec : Prop :=
  ∀ n, (P8004747006810689110.a n : ℤ) = A047212 (n + 1)

end A047212

/-! ## A047212.P7190845065298494845

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=1`
-/

namespace A047212.P7190845065298494845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047212.P7190845065298494845

namespace A047212

/-- `∑[abs(a(n-3))]` -/
def P7190845065298494845.Spec : Prop :=
  ∀ n, (P7190845065298494845.a n : ℤ) = A047212 (n + 1)

end A047212

/-! ## A047212.P930834704315438459

`∑[dr(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=1`
-/

namespace A047212.P930834704315438459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 1] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047212.P930834704315438459

namespace A047212

/-- `∑[dr(a(n-3))]` -/
def P930834704315438459.Spec : Prop :=
  ∀ n, (P930834704315438459.a n : ℤ) = A047212 (n + 1)

end A047212

/-! ## A047212.P4722780892767036898

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047212.P4722780892767036898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047212.P4722780892767036898

namespace A047212

/-- `∑[floor(a(n-3))]` -/
def P4722780892767036898.Spec : Prop :=
  ∀ n, (P4722780892767036898.a n : ℤ) = A047212 (n + 1)

end A047212

/-! ## A047212.P15080943086156349634

`∑[ceil(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A047212.P15080943086156349634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047212.P15080943086156349634

namespace A047212

/-- `∑[ceil(a(n-3))]` -/
def P15080943086156349634.Spec : Prop :=
  ∀ n, (P15080943086156349634.a n : ℤ) = A047212 (n + 1)

end A047212

/-! ## A047212.P7124674127756327370

`∑[round(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=1`

`round` is left out, it is the identity on integers.
-/

namespace A047212.P7124674127756327370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047212.P7124674127756327370

namespace A047212

/-- `∑[round(a(n-3))]` -/
def P7124674127756327370.Spec : Prop :=
  ∀ n, (P7124674127756327370.a n : ℤ) = A047212 (n + 1)

end A047212

/-! ## A047212.P4758881125911697618

`∑[gcd(2, (n+1)%3)]-1`
-/

namespace A047212.P4758881125911697618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 ((n + 1) % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047212.P4758881125911697618

namespace A047212

/-- `∑[gcd(2, (n+1)%3)]-1` -/
def P4758881125911697618.Spec : Prop :=
  ∀ n, P4758881125911697618.a n = A047212 (n + 1)

end A047212

/-! ## A047212.P12232696401540151281

`lcm(2, 2*n)-floor(n/3)`
-/

namespace A047212.P12232696401540151281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (2 * n) : ℤ) - ⌊(n : ℚ) / 3⌋

end

end A047212.P12232696401540151281

namespace A047212

/-- `lcm(2, 2*n)-floor(n/3)` -/
def P12232696401540151281.Spec : Prop :=
  ∀ n, P12232696401540151281.a n = A047212 (n + 1)

end A047212

/-! ## A047212.P248553011688543211

`round(or(1, 2*n)/3+n)`
-/

namespace A047212.P248553011688543211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (2 * n) : ℚ) / 3 + (n : ℚ))

end

end A047212.P248553011688543211

namespace A047212

/-- `round(or(1, 2*n)/3+n)` -/
def P248553011688543211.Spec : Prop :=
  ∀ n, P248553011688543211.a n = A047212 (n + 1)

end A047212

/-! ## A047212.P8599070823792227519

`round(xor(1, 2*n)/3+n)`
-/

namespace A047212.P8599070823792227519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (2 * n) : ℚ) / 3 + (n : ℚ))

end

end A047212.P8599070823792227519

namespace A047212

/-- `round(xor(1, 2*n)/3+n)` -/
def P8599070823792227519.Spec : Prop :=
  ∀ n, P8599070823792227519.a n = A047212 (n + 1)

end A047212

/-! ## A047212.P526352123272920601

`eq[0, val(n²+3+n, 5)]`
-/

namespace A047212.P526352123272920601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n ^ 2 + 3 + n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047212.P526352123272920601

namespace A047212

/-- `eq[0, val(n²+3+n, 5)]` -/
def P526352123272920601.Spec : Prop :=
  ∀ n, (P526352123272920601.a n : ℤ) = A047212 (n + 1)

end A047212

/-! ## A047212.P11141855227215029481

`lt[val(n²+3+n, 5), 1]`
-/

namespace A047212.P11141855227215029481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n ^ 2 + 3 + n) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047212.P11141855227215029481

namespace A047212

/-- `lt[val(n²+3+n, 5), 1]` -/
def P11141855227215029481.Spec : Prop :=
  ∀ n, (P11141855227215029481.a n : ℤ) = A047212 (n + 1)

end A047212

/-! ## A047212.P2438230619747806817

`∑[a(n-3)%3]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=1`
-/

namespace A047212.P2438230619747806817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 1] fun n f1 =>
  f1 (n - 3) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047212.P2438230619747806817

namespace A047212

/-- `∑[a(n-3)%3]` -/
def P2438230619747806817.Spec : Prop :=
  ∀ n, (P2438230619747806817.a n : ℤ) = A047212 (n + 1)

end A047212

/-!
# A047215: Numbers that are congruent to {0, 2} mod 5.

The programs for A047215, the canonical program `A047215.P16752244667238451087` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047215 has offset 0).

The definition of A047215 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047215.P16752244667238451087

`floor(5*n/2)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047215

/-- `floor(5*n/2)` -/
def P16752244667238451087.Spec : Prop :=
  ∀ n, P16752244667238451087.a n = A047215 n

theorem P16752244667238451087.correct : P16752244667238451087.Spec := by
  intro n
  simp only [A047215]

end A047215

/-! ## A047215.P17731559972711365042

`∑[∑{d}[n, C(2, #)]]`
-/

namespace A047215.P17731559972711365042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.choose 2 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047215.P17731559972711365042

namespace A047215

/-- `∑[∑{d}[n, C(2, #)]]` -/
def P17731559972711365042.Spec : Prop :=
  ∀ n, (P17731559972711365042.a n : ℤ) = A047215 n

end A047215

/-! ## A047215.P9788103448451669843

`∑[∑{d}[n, floor(2/#)]]`
-/

namespace A047215.P9788103448451669843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌊2 / (d : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047215.P9788103448451669843

namespace A047215

/-- `∑[∑{d}[n, floor(2/#)]]` -/
def P9788103448451669843.Spec : Prop :=
  ∀ n, P9788103448451669843.a n = A047215 n

end A047215

/-! ## A047215.P4350872082889475587

`and(5*n, -2)/2`
-/

namespace A047215.P4350872082889475587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (5 * n : ℤ) (-2) : ℚ) / 2

end

end A047215.P4350872082889475587

namespace A047215

/-- `and(5*n, -2)/2` -/
def P4350872082889475587.Spec : Prop :=
  ∀ n, P4350872082889475587.a n = (A047215 n : ℚ)

end A047215

/-! ## A047215.P1115437358871640273

`a(n-2)+5` with `a(0)=0, a(1)=2`
-/

namespace A047215.P1115437358871640273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) + 5

end

end A047215.P1115437358871640273

namespace A047215

/-- `a(n-2)+5` -/
def P1115437358871640273.Spec : Prop :=
  ∀ n, (P1115437358871640273.a n : ℤ) = A047215 n

end A047215

/-! ## A047215.P1162909478817067478

`∑[gcd(2, n)+1]-3`
-/

namespace A047215.P1162909478817067478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A047215.P1162909478817067478

namespace A047215

/-- `∑[gcd(2, n)+1]-3` -/
def P1162909478817067478.Spec : Prop :=
  ∀ n, P1162909478817067478.a n = A047215 n

end A047215

/-! ## A047215.P3555581468081157004

`∑[3-n%2]-3`
-/

namespace A047215.P3555581468081157004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A047215.P3555581468081157004

namespace A047215

/-- `∑[3-n%2]-3` -/
def P3555581468081157004.Spec : Prop :=
  ∀ n, P3555581468081157004.a n = A047215 n

end A047215

/-! ## A047215.P11730159656784438063

`∑[3-and(1, n)]-3`
-/

namespace A047215.P11730159656784438063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A047215.P11730159656784438063

namespace A047215

/-- `∑[3-and(1, n)]-3` -/
def P11730159656784438063.Spec : Prop :=
  ∀ n, P11730159656784438063.a n = A047215 n

end A047215

/-! ## A047215.P5980992124802325247

`comp[lcm(3, n)-1]+n`
-/

namespace A047215.P5980992124802325247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A047215.P5980992124802325247

namespace A047215

/-- `comp[lcm(3, n)-1]+n` -/
def P5980992124802325247.Spec : Prop :=
  ∀ n, (P5980992124802325247.a n : ℤ) = A047215 n

end A047215

/-! ## A047215.P145281874992658808

`record[n-(2*n)%5]`
-/

namespace A047215.P145281874992658808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((2 * n % 5 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047215.P145281874992658808

namespace A047215

/-- `record[n-(2*n)%5]` -/
def P145281874992658808.Spec : Prop :=
  ∀ n, P145281874992658808.a n = A047215 n

end A047215

/-! ## A047215.P17378374657658283447

`∑[round(∑{d}[n, 2/#²])]`
-/

namespace A047215.P17378374657658283447
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f2 n), 2 / (d ^ 2 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047215.P17378374657658283447

namespace A047215

/-- `∑[round(∑{d}[n, 2/#²])]` -/
def P17378374657658283447.Spec : Prop :=
  ∀ n, P17378374657658283447.a n = A047215 n

end A047215

/-! ## A047215.P10285763145446111834

`(or(1, 5*n)-1)/2`
-/

namespace A047215.P10285763145446111834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (5 * n) : ℤ) - 1 : ℚ) / 2

end

end A047215.P10285763145446111834

namespace A047215

/-- `(or(1, 5*n)-1)/2` -/
def P10285763145446111834.Spec : Prop :=
  ∀ n, P10285763145446111834.a n = (A047215 n : ℚ)

end A047215

/-! ## A047215.P6072469863307154848

`∑[5-a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A047215.P6072469863307154848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047215.P6072469863307154848

namespace A047215

/-- `∑[5-a(n-1)]` -/
def P6072469863307154848.Spec : Prop :=
  ∀ n, P6072469863307154848.a n = A047215 n

end A047215

/-! ## A047215.P8648773623739267668

`5-floor(-a(n-2))` with `a(0)=0, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A047215.P8648773623739267668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  5 - (-a (n - 2))

end

end A047215.P8648773623739267668

namespace A047215

/-- `5-floor(-a(n-2))` -/
def P8648773623739267668.Spec : Prop :=
  ∀ n, P8648773623739267668.a n = A047215 n

end A047215

/-! ## A047215.P18306702602212456778

`5-ceil(-a(n-2))` with `a(0)=0, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A047215.P18306702602212456778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  5 - (-a (n - 2))

end

end A047215.P18306702602212456778

namespace A047215

/-- `5-ceil(-a(n-2))` -/
def P18306702602212456778.Spec : Prop :=
  ∀ n, P18306702602212456778.a n = A047215 n

end A047215

/-! ## A047215.P5897193195122425781

`5-round(-a(n-2))` with `a(0)=0, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A047215.P5897193195122425781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  5 - (-a (n - 2))

end

end A047215.P5897193195122425781

namespace A047215

/-- `5-round(-a(n-2))` -/
def P5897193195122425781.Spec : Prop :=
  ∀ n, P5897193195122425781.a n = A047215 n

end A047215

/-! ## A047215.P15804113058507937243

`5-(char[1]-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A047215.P15804113058507937243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  5 - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A047215.P15804113058507937243

namespace A047215

/-- `5-(char[1]-a(n-2))` -/
def P15804113058507937243.Spec : Prop :=
  ∀ n, P15804113058507937243.a n = A047215 n

end A047215

/-! ## A047215.P11342382104534175959

`5*n-3-a(n-1)` with `a(0)=0`
-/

namespace A047215.P11342382104534175959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (5 * n : ℤ) - 3 - a (n - 1)

end

end A047215.P11342382104534175959

namespace A047215

/-- `5*n-3-a(n-1)` -/
def P11342382104534175959.Spec : Prop :=
  ∀ n, P11342382104534175959.a n = A047215 n

end A047215

/-!
# A047216: Numbers that are congruent to {1, 2} mod 5.

The programs for A047216, the canonical program `A047216.P8853622637911300199` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047216 has offset 1).

The definition of A047216 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047216.P8853622637911300199

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047216

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P8853622637911300199.Spec : Prop :=
  ∀ n, P8853622637911300199.a n = A047216 (n + 1)

theorem P8853622637911300199.correct : P8853622637911300199.Spec := by
  intro n
  simp only [A047216, Nat.add_sub_cancel]

end A047216

/-! ## A047216.P8129997775492177134

`∑[gcd(2, n)²]-3`
-/

namespace A047216.P8129997775492177134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A047216.P8129997775492177134

namespace A047216

/-- `∑[gcd(2, n)²]-3` -/
def P8129997775492177134.Spec : Prop :=
  ∀ n, P8129997775492177134.a n = A047216 (n + 1)

end A047216

/-! ## A047216.P7052848757227345895

`5+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A047216.P7052848757227345895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  5 + a (n - 2)

end

end A047216.P7052848757227345895

namespace A047216

/-- `5+a(n-2)` -/
def P7052848757227345895.Spec : Prop :=
  ∀ n, (P7052848757227345895.a n : ℤ) = A047216 (n + 1)

end A047216

/-! ## A047216.P16408531522438961749

`ceil(xor(1, 5*n)/2)`
-/

namespace A047216.P16408531522438961749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (5 * n) : ℚ) / 2⌉

end

end A047216.P16408531522438961749

namespace A047216

/-- `ceil(xor(1, 5*n)/2)` -/
def P16408531522438961749.Spec : Prop :=
  ∀ n, P16408531522438961749.a n = A047216 (n + 1)

end A047216

/-! ## A047216.P12692182802536457823

`round(xor(1, 5*n)/2)`
-/

namespace A047216.P12692182802536457823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (5 * n) : ℚ) / 2)

end

end A047216.P12692182802536457823

namespace A047216

/-- `round(xor(1, 5*n)/2)` -/
def P12692182802536457823.Spec : Prop :=
  ∀ n, P12692182802536457823.a n = A047216 (n + 1)

end A047216

/-! ## A047216.P3532923684014246631

`∑[gcd(4, n^3)]-3`
-/

namespace A047216.P3532923684014246631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (n ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A047216.P3532923684014246631

namespace A047216

/-- `∑[gcd(4, n^3)]-3` -/
def P3532923684014246631.Spec : Prop :=
  ∀ n, P3532923684014246631.a n = A047216 (n + 1)

end A047216

/-! ## A047216.P16946960615649752848

`∑[or(n, -2)²]-3`
-/

namespace A047216.P16946960615649752848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A047216.P16946960615649752848

namespace A047216

/-- `∑[or(n, -2)²]-3` -/
def P16946960615649752848.Spec : Prop :=
  ∀ n, P16946960615649752848.a n = A047216 (n + 1)

end A047216

/-! ## A047216.P12773336805245977131

`∑[∏{p}[n, ceil(3/#)²]]`
-/

namespace A047216.P12773336805245977131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ⌈3 / (p : ℚ)⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047216.P12773336805245977131

namespace A047216

/-- `∑[∏{p}[n, ceil(3/#)²]]` -/
def P12773336805245977131.Spec : Prop :=
  ∀ n, P12773336805245977131.a n = A047216 (n + 1)

end A047216

/-! ## A047216.P14579544726627677303

`∑[5-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A047216.P14579544726627677303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047216.P14579544726627677303

namespace A047216

/-- `∑[5-a(n-1)]` -/
def P14579544726627677303.Spec : Prop :=
  ∀ n, P14579544726627677303.a n = A047216 (n + 1)

end A047216

/-! ## A047216.P16243319024471634531

`∑[ceil(4^((n-1)%2))]`
-/

namespace A047216.P16243319024471634531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) 2 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047216.P16243319024471634531

namespace A047216

/-- `∑[ceil(4^((n-1)%2))]` -/
def P16243319024471634531.Spec : Prop :=
  ∀ n, P16243319024471634531.a n = A047216 (n + 1)

end A047216

/-! ## A047216.P18382832786756416560

`∑[gcd(n², 4%(n+3))]`
-/

namespace A047216.P18382832786756416560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n ^ 2) (4 % (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047216.P18382832786756416560

namespace A047216

/-- `∑[gcd(n², 4%(n+3))]` -/
def P18382832786756416560.Spec : Prop :=
  ∀ n, (P18382832786756416560.a n : ℤ) = A047216 (n + 1)

end A047216

/-! ## A047216.P2188643801912517271

`record[n+2-(n%5)!]`
-/

namespace A047216.P2188643801912517271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.factorial (n % 5) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047216.P2188643801912517271

namespace A047216

/-- `record[n+2-(n%5)!]` -/
def P2188643801912517271.Spec : Prop :=
  ∀ n, P2188643801912517271.a n = A047216 (n + 1)

end A047216

/-! ## A047216.P5665302210434259097

`∑[4^∑[(-1)^n]]-3`
-/

namespace A047216.P5665302210434259097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A047216.P5665302210434259097

namespace A047216

/-- `∑[4^∑[(-1)^n]]-3` -/
def P5665302210434259097.Spec : Prop :=
  ∀ n, P5665302210434259097.a n = (A047216 (n + 1) : ℚ)

end A047216

/-! ## A047216.P15669301609906728904

`lt[0, val((n+1)²+1, 5)]`
-/

namespace A047216.P15669301609906728904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) ^ 2 + 1) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047216.P15669301609906728904

namespace A047216

/-- `lt[0, val((n+1)²+1, 5)]` -/
def P15669301609906728904.Spec : Prop :=
  ∀ n, (P15669301609906728904.a n : ℤ) = A047216 (n + 1)

end A047216

/-! ## A047216.P8696354450928190941

`∑[(char[lcm(2, n+1)]+1)²]`
-/

namespace A047216.P8696354450928190941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0) + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047216.P8696354450928190941

namespace A047216

/-- `∑[(char[lcm(2, n+1)]+1)²]` -/
def P8696354450928190941.Spec : Prop :=
  ∀ n, (P8696354450928190941.a n : ℤ) = A047216 (n + 1)

end A047216

/-! ## A047216.P12251909355786975795

`floor(5*n-2-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047216.P12251909355786975795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (5 * n : ℤ) - 2 - a (n - 1)

end

end A047216.P12251909355786975795

namespace A047216

/-- `floor(5*n-2-a(n-1))` -/
def P12251909355786975795.Spec : Prop :=
  ∀ n, P12251909355786975795.a n = A047216 (n + 1)

end A047216

/-! ## A047216.P15797018241848008835

`∑[gcd(n+2, C(2, n+2)+2)²]`
-/

namespace A047216.P15797018241848008835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 2) (Nat.choose 2 (n + 2) + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047216.P15797018241848008835

namespace A047216

/-- `∑[gcd(n+2, C(2, n+2)+2)²]` -/
def P15797018241848008835.Spec : Prop :=
  ∀ n, (P15797018241848008835.a n : ℤ) = A047216 (n + 1)

end A047216

/-!
# A047217: Numbers that are congruent to {0, 1, 2} mod 5.

The programs for A047217, the canonical program `A047217.P4521274970991378201` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047217 has offset 1).

The definition of A047217 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047217.P4521274970991378201

`5+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047217

/-- `5+a(n-3)` -/
def P4521274970991378201.Spec : Prop :=
  ∀ n, (P4521274970991378201.a n : ℤ) = A047217 (n + 1)

theorem P4521274970991378201.correct : P4521274970991378201.Spec := by
  intro n
  simp only [A047217, Nat.add_sub_cancel]

end A047217

/-! ## A047217.P16124596733173104666

`∑[gcd(3, n)]-3`
-/

namespace A047217.P16124596733173104666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A047217.P16124596733173104666

namespace A047217

/-- `∑[gcd(3, n)]-3` -/
def P16124596733173104666.Spec : Prop :=
  ∀ n, P16124596733173104666.a n = A047217 (n + 1)

end A047217

/-! ## A047217.P11145033997779406750

`∑[sqrt(dr(n^6))]`
-/

namespace A047217.P11145033997779406750
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.digitalRoot (n ^ 6 : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047217.P11145033997779406750

namespace A047217

/-- `∑[sqrt(dr(n^6))]` -/
def P11145033997779406750.Spec : Prop :=
  ∀ n, P11145033997779406750.a n = (A047217 (n + 1) : ℝ)

end A047217

/-! ## A047217.P16017006735133556238

`∑[dr(n^6)%6]`
-/

namespace A047217.P16017006735133556238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n ^ 6 : ℤ) % 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047217.P16017006735133556238

namespace A047217

/-- `∑[dr(n^6)%6]` -/
def P16017006735133556238.Spec : Prop :=
  ∀ n, (P16017006735133556238.a n : ℤ) = A047217 (n + 1)

end A047217

/-! ## A047217.P4187510343601789188

`2*floor(n/3)+n`
-/

namespace A047217.P4187510343601789188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℚ) / 3⌋ + (n : ℤ)

end

end A047217.P4187510343601789188

namespace A047217

/-- `2*floor(n/3)+n` -/
def P4187510343601789188.Spec : Prop :=
  ∀ n, P4187510343601789188.a n = A047217 (n + 1)

end A047217

/-! ## A047217.P3543442143562989776

`∑[dr(3*n²)/3]`
-/

namespace A047217.P3543442143562989776
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (3 * n ^ 2 : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047217.P3543442143562989776

namespace A047217

/-- `∑[dr(3*n²)/3]` -/
def P3543442143562989776.Spec : Prop :=
  ∀ n, P3543442143562989776.a n = (A047217 (n + 1) : ℚ)

end A047217

/-! ## A047217.P5838494379410005067

`∑[dr(lcm(3, n²))]/3`
-/

namespace A047217.P5838494379410005067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.lcm 3 (n ^ 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3

end

end A047217.P5838494379410005067

namespace A047217

/-- `∑[dr(lcm(3, n²))]/3` -/
def P5838494379410005067.Spec : Prop :=
  ∀ n, P5838494379410005067.a n = (A047217 (n + 1) : ℚ)

end A047217

/-! ## A047217.P2805586269095999252

`∑[(n²-1)%3+1]`
-/

namespace A047217.P2805586269095999252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - 1) 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047217.P2805586269095999252

namespace A047217

/-- `∑[(n²-1)%3+1]` -/
def P2805586269095999252.Spec : Prop :=
  ∀ n, P2805586269095999252.a n = A047217 (n + 1)

end A047217

/-! ## A047217.P3370227607563783482

`∑[1-(1-n²)%3]`
-/

namespace A047217.P3370227607563783482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (1 - (n ^ 2 : ℤ)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047217.P3370227607563783482

namespace A047217

/-- `∑[1-(1-n²)%3]` -/
def P3370227607563783482.Spec : Prop :=
  ∀ n, P3370227607563783482.a n = A047217 (n + 1)

end A047217

/-! ## A047217.P7067836847908833198

`lt[n%5+n, n+3]`
-/

namespace A047217.P7067836847908833198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 5 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047217.P7067836847908833198

namespace A047217

/-- `lt[n%5+n, n+3]` -/
def P7067836847908833198.Spec : Prop :=
  ∀ n, (P7067836847908833198.a n : ℤ) = A047217 (n + 1)

end A047217

/-! ## A047217.P4130404380288256191

`record[n-(2*n)²%5]`
-/

namespace A047217.P4130404380288256191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((2 * n) ^ 2 % 5 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047217.P4130404380288256191

namespace A047217

/-- `record[n-(2*n)²%5]` -/
def P4130404380288256191.Spec : Prop :=
  ∀ n, P4130404380288256191.a n = A047217 (n + 1)

end A047217

/-! ## A047217.P10779589152183510066

`∑[gcd(n², 3%(n+3))]`
-/

namespace A047217.P10779589152183510066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n ^ 2) (3 % (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047217.P10779589152183510066

namespace A047217

/-- `∑[gcd(n², 3%(n+3))]` -/
def P10779589152183510066.Spec : Prop :=
  ∀ n, (P10779589152183510066.a n : ℤ) = A047217 (n + 1)

end A047217

/-! ## A047217.P14810445841281101556

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A047217.P14810445841281101556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047217.P14810445841281101556

namespace A047217

/-- `∑[abs(a(n-3))]` -/
def P14810445841281101556.Spec : Prop :=
  ∀ n, (P14810445841281101556.a n : ℤ) = A047217 (n + 1)

end A047217

/-! ## A047217.P1910928712365026025

`∑[dr(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A047217.P1910928712365026025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047217.P1910928712365026025

namespace A047217

/-- `∑[dr(a(n-3))]` -/
def P1910928712365026025.Spec : Prop :=
  ∀ n, (P1910928712365026025.a n : ℤ) = A047217 (n + 1)

end A047217

/-! ## A047217.P1550743979367326564

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047217.P1550743979367326564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047217.P1550743979367326564

namespace A047217

/-- `∑[floor(a(n-3))]` -/
def P1550743979367326564.Spec : Prop :=
  ∀ n, (P1550743979367326564.a n : ℤ) = A047217 (n + 1)

end A047217

/-! ## A047217.P13991157444841396765

`∑[ceil(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A047217.P13991157444841396765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047217.P13991157444841396765

namespace A047217

/-- `∑[ceil(a(n-3))]` -/
def P13991157444841396765.Spec : Prop :=
  ∀ n, (P13991157444841396765.a n : ℤ) = A047217 (n + 1)

end A047217

/-! ## A047217.P15943088510138130167

`∑[round(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3`

`round` is left out, it is the identity on integers.
-/

namespace A047217.P15943088510138130167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047217.P15943088510138130167

namespace A047217

/-- `∑[round(a(n-3))]` -/
def P15943088510138130167.Spec : Prop :=
  ∀ n, (P15943088510138130167.a n : ℤ) = A047217 (n + 1)

end A047217

/-! ## A047217.P11421593177886244764

`eq[0, val((1-n)²+1, 5)]`
-/

namespace A047217.P11421593177886244764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((1 - (n : ℤ)) ^ 2 + 1).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047217.P11421593177886244764

namespace A047217

/-- `eq[0, val((1-n)²+1, 5)]` -/
def P11421593177886244764.Spec : Prop :=
  ∀ n, (P11421593177886244764.a n : ℤ) = A047217 (n + 1)

end A047217

/-! ## A047217.P16954956220555755527

`lt[val((1-n)²+1, 5), 1]`
-/

namespace A047217.P16954956220555755527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((1 - (n : ℤ)) ^ 2 + 1).toNat 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047217.P16954956220555755527

namespace A047217

/-- `lt[val((1-n)²+1, 5), 1]` -/
def P16954956220555755527.Spec : Prop :=
  ∀ n, (P16954956220555755527.a n : ℤ) = A047217 (n + 1)

end A047217

/-! ## A047217.P8321741839522732932

`∑[or(1, a(n-3))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A047217.P8321741839522732932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 3] fun n f1 =>
  Nat.lor 1 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047217.P8321741839522732932

namespace A047217

/-- `∑[or(1, a(n-3))]` -/
def P8321741839522732932.Spec : Prop :=
  ∀ n, (P8321741839522732932.a n : ℤ) = A047217 (n + 1)

end A047217

/-!
# A047218: Numbers that are congruent to {0, 3} mod 5.

The programs for A047218, the canonical program `A047218.P8875707235065574696` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047218 has offset 1).

The definition of A047218 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047218.P8875707235065574696

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=3, a(2)=5`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047218

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P8875707235065574696.Spec : Prop :=
  ∀ n, P8875707235065574696.a n = A047218 (n + 1)

theorem P8875707235065574696.correct : P8875707235065574696.Spec := by
  intro n
  simp only [A047218, Nat.add_sub_cancel]

end A047218

/-! ## A047218.P7129073996820576890

`ceil(5*n/2)`
-/

namespace A047218.P7129073996820576890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈5 * ((n : ℚ) / 2)⌉

end

end A047218.P7129073996820576890

namespace A047218

/-- `ceil(5*n/2)` -/
def P7129073996820576890.Spec : Prop :=
  ∀ n, P7129073996820576890.a n = A047218 (n + 1)

end A047218

/-! ## A047218.P15437206776414265943

`record[n-n²%5]`
-/

namespace A047218.P15437206776414265943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n ^ 2 % 5 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047218.P15437206776414265943

namespace A047218

/-- `record[n-n²%5]` -/
def P15437206776414265943.Spec : Prop :=
  ∀ n, P15437206776414265943.a n = A047218 (n + 1)

end A047218

/-! ## A047218.P16821002169606482843

`a(n-2)+5` with `a(0)=0, a(1)=3`
-/

namespace A047218.P16821002169606482843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 2) + 5

end

end A047218.P16821002169606482843

namespace A047218

/-- `a(n-2)+5` -/
def P16821002169606482843.Spec : Prop :=
  ∀ n, (P16821002169606482843.a n : ℤ) = A047218 (n + 1)

end A047218

/-! ## A047218.P8511328269182847559

`∑[n%2+2]-2`
-/

namespace A047218.P8511328269182847559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A047218.P8511328269182847559

namespace A047218

/-- `∑[n%2+2]-2` -/
def P8511328269182847559.Spec : Prop :=
  ∀ n, P8511328269182847559.a n = A047218 (n + 1)

end A047218

/-! ## A047218.P15047445393127759189

`∑[4-gcd(2, n)]-2`
-/

namespace A047218.P15047445393127759189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A047218.P15047445393127759189

namespace A047218

/-- `∑[4-gcd(2, n)]-2` -/
def P15047445393127759189.Spec : Prop :=
  ∀ n, P15047445393127759189.a n = A047218 (n + 1)

end A047218

/-! ## A047218.P4308474720869452247

`round(lcm(5, 5*n)/2)`
-/

namespace A047218.P4308474720869452247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm 5 (5 * n) : ℚ) / 2)

end

end A047218.P4308474720869452247

namespace A047218

/-- `round(lcm(5, 5*n)/2)` -/
def P4308474720869452247.Spec : Prop :=
  ∀ n, P4308474720869452247.a n = A047218 (n + 1)

end A047218

/-! ## A047218.P12744040431834643327

`∑[and(1, n)+2]-2`
-/

namespace A047218.P12744040431834643327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A047218.P12744040431834643327

namespace A047218

/-- `∑[and(1, n)+2]-2` -/
def P12744040431834643327.Spec : Prop :=
  ∀ n, P12744040431834643327.a n = A047218 (n + 1)

end A047218

/-! ## A047218.P5835413840942318214

`∑[or(2, and(1, n))]-2`
-/

namespace A047218.P5835413840942318214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A047218.P5835413840942318214

namespace A047218

/-- `∑[or(2, and(1, n))]-2` -/
def P5835413840942318214.Spec : Prop :=
  ∀ n, P5835413840942318214.a n = A047218 (n + 1)

end A047218

/-! ## A047218.P8052624230601293588

`∑[xor(2, and(1, n))]-2`
-/

namespace A047218.P8052624230601293588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A047218.P8052624230601293588

namespace A047218

/-- `∑[xor(2, and(1, n))]-2` -/
def P8052624230601293588.Spec : Prop :=
  ∀ n, P8052624230601293588.a n = A047218 (n + 1)

end A047218

/-! ## A047218.P5567667560251980423

`∑[and(1, n)]+2*n`
-/

namespace A047218.P5567667560251980423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * n

end

end A047218.P5567667560251980423

namespace A047218

/-- `∑[and(1, n)]+2*n` -/
def P5567667560251980423.Spec : Prop :=
  ∀ n, (P5567667560251980423.a n : ℤ) = A047218 (n + 1)

end A047218

/-! ## A047218.P6023695749364233481

`comp[lcm(3, n)+1]+n`
-/

namespace A047218.P6023695749364233481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n

end

end A047218.P6023695749364233481

namespace A047218

/-- `comp[lcm(3, n)+1]+n` -/
def P6023695749364233481.Spec : Prop :=
  ∀ n, (P6023695749364233481.a n : ℤ) = A047218 (n + 1)

end A047218

/-! ## A047218.P4393528353866694737

`round(2*n*cosh(log(2)))`
-/

namespace A047218.P4393528353866694737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℝ) * Real.cosh (Real.log (2 : ℝ)))

end

end A047218.P4393528353866694737

namespace A047218

/-- `round(2*n*cosh(log(2)))` -/
def P4393528353866694737.Spec : Prop :=
  ∀ n, P4393528353866694737.a n = A047218 (n + 1)

end A047218

/-! ## A047218.P5329520558912956173

`round(2*n/tanh(log(3)))`
-/

namespace A047218.P5329520558912956173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℝ) / Real.tanh (Real.log (3 : ℝ)))

end

end A047218.P5329520558912956173

namespace A047218

/-- `round(2*n/tanh(log(3)))` -/
def P5329520558912956173.Spec : Prop :=
  ∀ n, P5329520558912956173.a n = A047218 (n + 1)

end A047218

/-! ## A047218.P11139616811376062380

`∑[and(1, n)]+n+n`
-/

namespace A047218.P11139616811376062380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n + n

end

end A047218.P11139616811376062380

namespace A047218

/-- `∑[and(1, n)]+n+n` -/
def P11139616811376062380.Spec : Prop :=
  ∀ n, (P11139616811376062380.a n : ℤ) = A047218 (n + 1)

end A047218

/-! ## A047218.P3733173416211322735

`∑[5-a(n-1)]` with `a(0)=0, a(1)=3`
-/

namespace A047218.P3733173416211322735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047218.P3733173416211322735

namespace A047218

/-- `∑[5-a(n-1)]` -/
def P3733173416211322735.Spec : Prop :=
  ∀ n, P3733173416211322735.a n = A047218 (n + 1)

end A047218

/-! ## A047218.P7109262459950692658

`round(or(1, 5*2*n)/4)`
-/

namespace A047218.P7109262459950692658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (5 * (2 * n)) : ℚ) / 4)

end

end A047218.P7109262459950692658

namespace A047218

/-- `round(or(1, 5*2*n)/4)` -/
def P7109262459950692658.Spec : Prop :=
  ∀ n, P7109262459950692658.a n = A047218 (n + 1)

end A047218

/-! ## A047218.P693170515502790917

`round(xor(1, 5*2*n)/4)`
-/

namespace A047218.P693170515502790917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (5 * (2 * n)) : ℚ) / 4)

end

end A047218.P693170515502790917

namespace A047218

/-- `round(xor(1, 5*2*n)/4)` -/
def P693170515502790917.Spec : Prop :=
  ∀ n, P693170515502790917.a n = A047218 (n + 1)

end A047218

/-!
# A047219: Numbers that are congruent to {1, 3} mod 5.

The programs for A047219, the canonical program `A047219.P1237294872039489274` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047219 has offset 1).

The definition of A047219 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047219.P1237294872039489274

`a(n-2)+5` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047219

/-- `a(n-2)+5` -/
def P1237294872039489274.Spec : Prop :=
  ∀ n, (P1237294872039489274.a n : ℤ) = A047219 (n + 1)

theorem P1237294872039489274.correct : P1237294872039489274.Spec := by
  intro n
  simp only [A047219, Nat.add_sub_cancel]

end A047219

/-! ## A047219.P16866156488747965518

`comp[3*n]+n`
-/

namespace A047219.P16866156488747965518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n

end

end A047219.P16866156488747965518

namespace A047219

/-- `comp[3*n]+n` -/
def P16866156488747965518.Spec : Prop :=
  ∀ n, (P16866156488747965518.a n : ℤ) = A047219 (n + 1)

end A047219

/-! ## A047219.P7237297666100439711

`∑[(n-1)%2+2]`
-/

namespace A047219.P7237297666100439711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047219.P7237297666100439711

namespace A047219

/-- `∑[(n-1)%2+2]` -/
def P7237297666100439711.Spec : Prop :=
  ∀ n, P7237297666100439711.a n = A047219 (n + 1)

end A047219

/-! ## A047219.P4064452075243705343

`∑[2-(1-n)%2]`
-/

namespace A047219.P4064452075243705343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (1 - (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047219.P4064452075243705343

namespace A047219

/-- `∑[2-(1-n)%2]` -/
def P4064452075243705343.Spec : Prop :=
  ∀ n, P4064452075243705343.a n = A047219 (n + 1)

end A047219

/-! ## A047219.P629507739675635543

`ceil(or(1, 5*n)/2)`
-/

namespace A047219.P629507739675635543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (5 * n) : ℚ) / 2⌉

end

end A047219.P629507739675635543

namespace A047219

/-- `ceil(or(1, 5*n)/2)` -/
def P629507739675635543.Spec : Prop :=
  ∀ n, P629507739675635543.a n = A047219 (n + 1)

end A047219

/-! ## A047219.P9179886864594543958

`round(or(1, 5*n)/2)`
-/

namespace A047219.P9179886864594543958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (5 * n) : ℚ) / 2)

end

end A047219.P9179886864594543958

namespace A047219

/-- `round(or(1, 5*n)/2)` -/
def P9179886864594543958.Spec : Prop :=
  ∀ n, P9179886864594543958.a n = A047219 (n + 1)

end A047219

/-! ## A047219.P8770334758113906396

`(or(1, 5*n)+1)/2`
-/

namespace A047219.P8770334758113906396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (5 * n) + 1 : ℚ) / 2

end

end A047219.P8770334758113906396

namespace A047219

/-- `(or(1, 5*n)+1)/2` -/
def P8770334758113906396.Spec : Prop :=
  ∀ n, P8770334758113906396.a n = (A047219 (n + 1) : ℚ)

end A047219

/-! ## A047219.P6358301764697758271

`∑[5-a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A047219.P6358301764697758271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047219.P6358301764697758271

namespace A047219

/-- `∑[5-a(n-1)]` -/
def P6358301764697758271.Spec : Prop :=
  ∀ n, P6358301764697758271.a n = A047219 (n + 1)

end A047219

/-! ## A047219.P15650624998216818225

`ceil(5/(4*acot(2*n)))`
-/

namespace A047219.P15650624998216818225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈5 / (4 * SequenceMachineLib.acot (2 * n : ℝ))⌉

end

end A047219.P15650624998216818225

namespace A047219

/-- `ceil(5/(4*acot(2*n)))` -/
def P15650624998216818225.Spec : Prop :=
  ∀ n, P15650624998216818225.a n = A047219 (n + 1)

end A047219

/-! ## A047219.P414665121141967055

`∑[a(∑[(-1)^n])+1]` with `a(0)=1`
-/

namespace A047219.P414665121141967055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (∑ j ∈ Finset.range (n + 1), f2 j).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047219.P414665121141967055

namespace A047219

/-- `∑[a(∑[(-1)^n])+1]` -/
def P414665121141967055.Spec : Prop :=
  ∀ n, (P414665121141967055.a n : ℤ) = A047219 (n + 1)

end A047219

/-! ## A047219.P3474618201478205810

`floor(5*or(1, 2*n)/4)`
-/

namespace A047219.P3474618201478205810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((Nat.lor 1 (2 * n) : ℚ) / 4)⌋

end

end A047219.P3474618201478205810

namespace A047219

/-- `floor(5*or(1, 2*n)/4)` -/
def P3474618201478205810.Spec : Prop :=
  ∀ n, P3474618201478205810.a n = A047219 (n + 1)

end A047219

/-! ## A047219.P17094397408084667605

`floor(5*xor(1, 2*n)/4)`
-/

namespace A047219.P17094397408084667605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((Nat.xor 1 (2 * n) : ℚ) / 4)⌋

end

end A047219.P17094397408084667605

namespace A047219

/-- `floor(5*xor(1, 2*n)/4)` -/
def P17094397408084667605.Spec : Prop :=
  ∀ n, P17094397408084667605.a n = A047219 (n + 1)

end A047219

/-! ## A047219.P11331553361097441530

`ceil(xor(1, 5*2*n)/4)`
-/

namespace A047219.P11331553361097441530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (5 * (2 * n)) : ℚ) / 4⌉

end

end A047219.P11331553361097441530

namespace A047219

/-- `ceil(xor(1, 5*2*n)/4)` -/
def P11331553361097441530.Spec : Prop :=
  ∀ n, P11331553361097441530.a n = A047219 (n + 1)

end A047219

/-! ## A047219.P7865520114612752211

`record[n+1-(2*n)%5]`
-/

namespace A047219.P7865520114612752211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((2 * n % 5 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047219.P7865520114612752211

namespace A047219

/-- `record[n+1-(2*n)%5]` -/
def P7865520114612752211.Spec : Prop :=
  ∀ n, P7865520114612752211.a n = A047219 (n + 1)

end A047219

/-! ## A047219.P7223896875341736356

`∑[gcd(n, 2%(n+1))+1]`
-/

namespace A047219.P7223896875341736356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 % (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047219.P7223896875341736356

namespace A047219

/-- `∑[gcd(n, 2%(n+1))+1]` -/
def P7223896875341736356.Spec : Prop :=
  ∀ n, (P7223896875341736356.a n : ℤ) = A047219 (n + 1)

end A047219

/-! ## A047219.P1079424081600192254

`∑[and(3, abs(2-(n+1)²))]`
-/

namespace A047219.P1079424081600192254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 |2 - ((n + 1) ^ 2 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047219.P1079424081600192254

namespace A047219

/-- `∑[and(3, abs(2-(n+1)²))]` -/
def P1079424081600192254.Spec : Prop :=
  ∀ n, P1079424081600192254.a n = A047219 (n + 1)

end A047219

/-!
# A047220: Numbers that are congruent to {0, 1, 3} mod 5.

The programs for A047220, the canonical program `A047220.P4379332822883347461` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047220 has offset 1).

The definition of A047220 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047220.P4379332822883347461

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047220

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P4379332822883347461.Spec : Prop :=
  ∀ n, P4379332822883347461.a n = A047220 (n + 1)

theorem P4379332822883347461.correct : P4379332822883347461.Spec := by
  intro n
  simp only [A047220, Nat.add_sub_cancel]

end A047220

/-! ## A047220.P4458162111415414720

`floor(5*n/3)`
-/

namespace A047220.P4458162111415414720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((n : ℚ) / 3)⌋

end

end A047220.P4458162111415414720

namespace A047220

/-- `floor(5*n/3)` -/
def P4458162111415414720.Spec : Prop :=
  ∀ n, P4458162111415414720.a n = A047220 (n + 1)

end A047220

/-! ## A047220.P5173948499918197091

`∑[ceil(atan(dr(∑[n])))]`
-/

namespace A047220.P5173948499918197091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047220.P5173948499918197091

namespace A047220

/-- `∑[ceil(atan(dr(∑[n])))]` -/
def P5173948499918197091.Spec : Prop :=
  ∀ n, P5173948499918197091.a n = A047220 (n + 1)

end A047220

/-! ## A047220.P9672550462894618572

`comp[∑[gcd(2, n)]+n]`
-/

namespace A047220.P9672550462894618572
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047220.P9672550462894618572

namespace A047220

/-- `comp[∑[gcd(2, n)]+n]` -/
def P9672550462894618572.Spec : Prop :=
  ∀ n, (P9672550462894618572.a n : ℤ) = A047220 (n + 1)

end A047220

/-! ## A047220.P4355699774161632986

`a(n-3)+5` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A047220.P4355699774161632986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 3) + 5

end

end A047220.P4355699774161632986

namespace A047220

/-- `a(n-3)+5` -/
def P4355699774161632986.Spec : Prop :=
  ∀ n, (P4355699774161632986.a n : ℤ) = A047220 (n + 1)

end A047220

/-! ## A047220.P15969337320731827717

`comp[∑[n%2+2]-3]`
-/

namespace A047220.P15969337320731827717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047220.P15969337320731827717

namespace A047220

/-- `comp[∑[n%2+2]-3]` -/
def P15969337320731827717.Spec : Prop :=
  ∀ n, (P15969337320731827717.a n : ℤ) = A047220 (n + 1)

end A047220

/-! ## A047220.P12328503081563871389

`2*n-∑[∑[n]%3]`
-/

namespace A047220.P12328503081563871389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A047220.P12328503081563871389

namespace A047220

/-- `2*n-∑[∑[n]%3]` -/
def P12328503081563871389.Spec : Prop :=
  ∀ n, P12328503081563871389.a n = A047220 (n + 1)

end A047220

/-! ## A047220.P11450717357728329805

`comp[comp[lcm(3, n)]+n+1]`
-/

namespace A047220.P11450717357728329805
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047220.P11450717357728329805

namespace A047220

/-- `comp[comp[lcm(3, n)]+n+1]` -/
def P11450717357728329805.Spec : Prop :=
  ∀ n, (P11450717357728329805.a n : ℤ) = A047220 (n + 1)

end A047220

/-! ## A047220.P8328313291097248800

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A047220.P8328313291097248800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047220.P8328313291097248800

namespace A047220

/-- `∑[abs(a(n-3))]` -/
def P8328313291097248800.Spec : Prop :=
  ∀ n, (P8328313291097248800.a n : ℤ) = A047220 (n + 1)

end A047220

/-! ## A047220.P14375431297462274238

`∑[a(n-3)!]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A047220.P14375431297462274238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 2] fun n f1 =>
  Nat.factorial (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047220.P14375431297462274238

namespace A047220

/-- `∑[a(n-3)!]` -/
def P14375431297462274238.Spec : Prop :=
  ∀ n, (P14375431297462274238.a n : ℤ) = A047220 (n + 1)

end A047220

/-! ## A047220.P7346835516599341718

`∑[dr(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A047220.P7346835516599341718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047220.P7346835516599341718

namespace A047220

/-- `∑[dr(a(n-3))]` -/
def P7346835516599341718.Spec : Prop :=
  ∀ n, (P7346835516599341718.a n : ℤ) = A047220 (n + 1)

end A047220

/-! ## A047220.P7904238093738197127

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A047220.P7904238093738197127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047220.P7904238093738197127

namespace A047220

/-- `∑[floor(a(n-3))]` -/
def P7904238093738197127.Spec : Prop :=
  ∀ n, (P7904238093738197127.a n : ℤ) = A047220 (n + 1)

end A047220

/-! ## A047220.P15910070229877606842

`∑[ceil(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A047220.P15910070229877606842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047220.P15910070229877606842

namespace A047220

/-- `∑[ceil(a(n-3))]` -/
def P15910070229877606842.Spec : Prop :=
  ∀ n, (P15910070229877606842.a n : ℤ) = A047220 (n + 1)

end A047220

/-! ## A047220.P12180672539683190640

`∑[round(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2`

`round` is left out, it is the identity on integers.
-/

namespace A047220.P12180672539683190640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047220.P12180672539683190640

namespace A047220

/-- `∑[round(a(n-3))]` -/
def P12180672539683190640.Spec : Prop :=
  ∀ n, (P12180672539683190640.a n : ℤ) = A047220 (n + 1)

end A047220

/-! ## A047220.P12546768923527006093

`lcm(2, 2*n)-ceil(n/3)`
-/

namespace A047220.P12546768923527006093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (2 * n) : ℤ) - ⌈(n : ℚ) / 3⌉

end

end A047220.P12546768923527006093

namespace A047220

/-- `lcm(2, 2*n)-ceil(n/3)` -/
def P12546768923527006093.Spec : Prop :=
  ∀ n, P12546768923527006093.a n = A047220 (n + 1)

end A047220

/-! ## A047220.P12963186657010967316

`eq[0, val(n²+3-n, 5)]`
-/

namespace A047220.P12963186657010967316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n ^ 2 : ℤ) + (3 - (n : ℤ))).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047220.P12963186657010967316

namespace A047220

/-- `eq[0, val(n²+3-n, 5)]` -/
def P12963186657010967316.Spec : Prop :=
  ∀ n, (P12963186657010967316.a n : ℤ) = A047220 (n + 1)

end A047220

/-! ## A047220.P10788587278567661358

`lt[val(n²+3-n, 5), 1]`
-/

namespace A047220.P10788587278567661358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n ^ 2 : ℤ) + (3 - (n : ℤ))).toNat 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047220.P10788587278567661358

namespace A047220

/-- `lt[val(n²+3-n, 5), 1]` -/
def P10788587278567661358.Spec : Prop :=
  ∀ n, (P10788587278567661358.a n : ℤ) = A047220 (n + 1)

end A047220

/-! ## A047220.P17789998562786290557

`∑[a(n-3)%3]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A047220.P17789998562786290557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 2] fun n f1 =>
  f1 (n - 3) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047220.P17789998562786290557

namespace A047220

/-- `∑[a(n-3)%3]` -/
def P17789998562786290557.Spec : Prop :=
  ∀ n, (P17789998562786290557.a n : ℤ) = A047220 (n + 1)

end A047220

/-! ## A047220.P13325677255839700087

`∑[and(3, a(n-3))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A047220.P13325677255839700087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 2] fun n f1 =>
  Nat.land 3 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047220.P13325677255839700087

namespace A047220

/-- `∑[and(3, a(n-3))]` -/
def P13325677255839700087.Spec : Prop :=
  ∀ n, (P13325677255839700087.a n : ℤ) = A047220 (n + 1)

end A047220

/-! ## A047220.P13955063920471804980

`5-floor(-a(n-3))` with `a(0)=0, a(1)=1, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047220.P13955063920471804980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  5 - (-a (n - 3))

end

end A047220.P13955063920471804980

namespace A047220

/-- `5-floor(-a(n-3))` -/
def P13955063920471804980.Spec : Prop :=
  ∀ n, P13955063920471804980.a n = A047220 (n + 1)

end A047220

/-!
# A047221: Numbers that are congruent to {2, 3} mod 5.

The programs for A047221, the canonical program `A047221.P1532680198306689054` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047221 has offset 1).

The definition of A047221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047221.P1532680198306689054

`∑[gcd(2, n)²]-2`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047221

/-- `∑[gcd(2, n)²]-2` -/
def P1532680198306689054.Spec : Prop :=
  ∀ n, P1532680198306689054.a n = A047221 (n + 1)

theorem P1532680198306689054.correct : P1532680198306689054.Spec := by
  intro n
  simp only [A047221, Nat.add_sub_cancel]

end A047221

/-! ## A047221.P661146898889109307

`a(n-2)+5` with `a(0)=2, a(1)=3`
-/

namespace A047221.P661146898889109307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + 5

end

end A047221.P661146898889109307

namespace A047221

/-- `a(n-2)+5` -/
def P661146898889109307.Spec : Prop :=
  ∀ n, (P661146898889109307.a n : ℤ) = A047221 (n + 1)

end A047221

/-! ## A047221.P597357120722307990

`∑[gcd(4, n^3)]-2`
-/

namespace A047221.P597357120722307990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (n ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A047221.P597357120722307990

namespace A047221

/-- `∑[gcd(4, n^3)]-2` -/
def P597357120722307990.Spec : Prop :=
  ∀ n, P597357120722307990.a n = A047221 (n + 1)

end A047221

/-! ## A047221.P1569009201210410068

`lt[0, val(n²+1, 5)]`
-/

namespace A047221.P1569009201210410068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n ^ 2 + 1) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047221.P1569009201210410068

namespace A047221

/-- `lt[0, val(n²+1, 5)]` -/
def P1569009201210410068.Spec : Prop :=
  ∀ n, (P1569009201210410068.a n : ℤ) = A047221 (n + 1)

end A047221

/-! ## A047221.P17320473755758603617

`∑[a(n%2)²]` with `a(0)=2, a(1)=1`
-/

namespace A047221.P17320473755758603617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n % 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047221.P17320473755758603617

namespace A047221

/-- `∑[a(n%2)²]` -/
def P17320473755758603617.Spec : Prop :=
  ∀ n, (P17320473755758603617.a n : ℤ) = A047221 (n + 1)

end A047221

/-! ## A047221.P14100369628689133634

`∑[a(and(1, n))²]` with `a(0)=2, a(1)=1`
-/

namespace A047221.P14100369628689133634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (Nat.land 1 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047221.P14100369628689133634

namespace A047221

/-- `∑[a(and(1, n))²]` -/
def P14100369628689133634.Spec : Prop :=
  ∀ n, (P14100369628689133634.a n : ℤ) = A047221 (n + 1)

end A047221

/-! ## A047221.P7330645104787261785

`comp[3*n]+or(1, n)`
-/

namespace A047221.P7330645104787261785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + Nat.lor 1 n

end

end A047221.P7330645104787261785

namespace A047221

/-- `comp[3*n]+or(1, n)` -/
def P7330645104787261785.Spec : Prop :=
  ∀ n, (P7330645104787261785.a n : ℤ) = A047221 (n + 1)

end A047221

/-! ## A047221.P3086413185337956009

`∑[or(n, -2)²]-2`
-/

namespace A047221.P3086413185337956009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A047221.P3086413185337956009

namespace A047221

/-- `∑[or(n, -2)²]-2` -/
def P3086413185337956009.Spec : Prop :=
  ∀ n, P3086413185337956009.a n = A047221 (n + 1)

end A047221

/-! ## A047221.P10522573667524496508

`Δ[ceil(5*(n/2)²)]`
-/

namespace A047221.P10522573667524496508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈5 * ((n : ℚ) / 2) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047221.P10522573667524496508

namespace A047221

/-- `Δ[ceil(5*(n/2)²)]` -/
def P10522573667524496508.Spec : Prop :=
  ∀ n, P10522573667524496508.a n = A047221 (n + 1)

end A047221

/-! ## A047221.P14064092251060732070

`∑[5-a(n-1)]` with `a(0)=2, a(1)=1`
-/

namespace A047221.P14064092251060732070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047221.P14064092251060732070

namespace A047221

/-- `∑[5-a(n-1)]` -/
def P14064092251060732070.Spec : Prop :=
  ∀ n, P14064092251060732070.a n = A047221 (n + 1)

end A047221

/-! ## A047221.P6161046790502155535

`5*n-a(n-1)` with `a(0)=2`
-/

namespace A047221.P6161046790502155535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (5 * n : ℤ) - a (n - 1)

end

end A047221.P6161046790502155535

namespace A047221

/-- `5*n-a(n-1)` -/
def P6161046790502155535.Spec : Prop :=
  ∀ n, P6161046790502155535.a n = A047221 (n + 1)

end A047221

/-! ## A047221.P9907271591695388425

`∑[(and(1, n)-2)²]-2`
-/

namespace A047221.P9907271591695388425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 n : ℤ) - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A047221.P9907271591695388425

namespace A047221

/-- `∑[(and(1, n)-2)²]-2` -/
def P9907271591695388425.Spec : Prop :=
  ∀ n, P9907271591695388425.a n = A047221 (n + 1)

end A047221

/-! ## A047221.P10183525069397921986

`comp[n+1-n²%5]`
-/

namespace A047221.P10183525069397921986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((n ^ 2 % 5 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047221.P10183525069397921986

namespace A047221

/-- `comp[n+1-n²%5]` -/
def P10183525069397921986.Spec : Prop :=
  ∀ n, (P10183525069397921986.a n : ℤ) = A047221 (n + 1)

end A047221

/-! ## A047221.P14585246916045614860

`∑[4^((n+1)%2)]-2`
-/

namespace A047221.P14585246916045614860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ ((n + 1) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A047221.P14585246916045614860

namespace A047221

/-- `∑[4^((n+1)%2)]-2` -/
def P14585246916045614860.Spec : Prop :=
  ∀ n, P14585246916045614860.a n = A047221 (n + 1)

end A047221

/-! ## A047221.P7628829211500900745

`5-floor(-a(n-2))` with `a(0)=2, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047221.P7628829211500900745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  5 - (-a (n - 2))

end

end A047221.P7628829211500900745

namespace A047221

/-- `5-floor(-a(n-2))` -/
def P7628829211500900745.Spec : Prop :=
  ∀ n, P7628829211500900745.a n = A047221 (n + 1)

end A047221

/-! ## A047221.P10244559200830879637

`5-ceil(-a(n-2))` with `a(0)=2, a(1)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A047221.P10244559200830879637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  5 - (-a (n - 2))

end

end A047221.P10244559200830879637

namespace A047221

/-- `5-ceil(-a(n-2))` -/
def P10244559200830879637.Spec : Prop :=
  ∀ n, P10244559200830879637.a n = A047221 (n + 1)

end A047221

/-! ## A047221.P10759754931761338579

`∑[4^and(1, n+1)]-2`
-/

namespace A047221.P10759754931761338579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A047221.P10759754931761338579

namespace A047221

/-- `∑[4^and(1, n+1)]-2` -/
def P10759754931761338579.Spec : Prop :=
  ∀ n, P10759754931761338579.a n = A047221 (n + 1)

end A047221

/-!
# A047222: Numbers that are congruent to {0, 2, 3} mod 5.

The programs for A047222, the canonical program `A047222.P6769316524413247814` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047222 has offset 1).

The definition of A047222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047222.P6769316524413247814

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=5`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047222

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P6769316524413247814.Spec : Prop :=
  ∀ n, P6769316524413247814.a n = A047222 (n + 1)

theorem P6769316524413247814.correct : P6769316524413247814.Spec := by
  intro n
  simp only [A047222, Nat.add_sub_cancel]

end A047222

/-! ## A047222.P11644164803275427279

`round(5*n/3)`
-/

namespace A047222.P11644164803275427279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * ((n : ℚ) / 3))

end

end A047222.P11644164803275427279

namespace A047222

/-- `round(5*n/3)` -/
def P11644164803275427279.Spec : Prop :=
  ∀ n, P11644164803275427279.a n = A047222 (n + 1)

end A047222

/-! ## A047222.P12006425288834141983

`comp[xor(1, n)-n%5]`
-/

namespace A047222.P12006425288834141983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) - ((n % 5 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047222.P12006425288834141983

namespace A047222

/-- `comp[xor(1, n)-n%5]` -/
def P12006425288834141983.Spec : Prop :=
  ∀ n, (P12006425288834141983.a n : ℤ) = A047222 (n + 1)

end A047222

/-! ## A047222.P2167237073967807038

`a(n-3)+5` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A047222.P2167237073967807038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  a (n - 3) + 5

end

end A047222.P2167237073967807038

namespace A047222

/-- `a(n-3)+5` -/
def P2167237073967807038.Spec : Prop :=
  ∀ n, (P2167237073967807038.a n : ℤ) = A047222 (n + 1)

end A047222

/-! ## A047222.P10606862011448440747

`comp[∑[and(1, n)+2]-1]`
-/

namespace A047222.P10606862011448440747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047222.P10606862011448440747

namespace A047222

/-- `comp[∑[and(1, n)+2]-1]` -/
def P10606862011448440747.Spec : Prop :=
  ∀ n, (P10606862011448440747.a n : ℤ) = A047222 (n + 1)

end A047222

/-! ## A047222.P8641546075615688772

`ceil(record[lcm(2, n)]/6)+n`
-/

namespace A047222.P8641546075615688772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 6⌉ + (n : ℤ)

end

end A047222.P8641546075615688772

namespace A047222

/-- `ceil(record[lcm(2, n)]/6)+n` -/
def P8641546075615688772.Spec : Prop :=
  ∀ n, P8641546075615688772.a n = A047222 (n + 1)

end A047222

/-! ## A047222.P5880677457843554983

`floor(record[xor(1, n)/3])+n`
-/

namespace A047222.P5880677457843554983
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋ + (n : ℤ)

end

end A047222.P5880677457843554983

namespace A047222

/-- `floor(record[xor(1, n)/3])+n` -/
def P5880677457843554983.Spec : Prop :=
  ∀ n, P5880677457843554983.a n = A047222 (n + 1)

end A047222

/-! ## A047222.P557412617720921644

`comp[∑[gcd(2, n+1)]+n]`
-/

namespace A047222.P557412617720921644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047222.P557412617720921644

namespace A047222

/-- `comp[∑[gcd(2, n+1)]+n]` -/
def P557412617720921644.Spec : Prop :=
  ∀ n, (P557412617720921644.a n : ℤ) = A047222 (n + 1)

end A047222

/-! ## A047222.P17321942917737350699

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=2`
-/

namespace A047222.P17321942917737350699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047222.P17321942917737350699

namespace A047222

/-- `∑[abs(a(n-3))]` -/
def P17321942917737350699.Spec : Prop :=
  ∀ n, (P17321942917737350699.a n : ℤ) = A047222 (n + 1)

end A047222

/-! ## A047222.P12188371558103783347

`∑[a(n-3)!]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=2`
-/

namespace A047222.P12188371558103783347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 2] fun n f1 =>
  Nat.factorial (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047222.P12188371558103783347

namespace A047222

/-- `∑[a(n-3)!]` -/
def P12188371558103783347.Spec : Prop :=
  ∀ n, (P12188371558103783347.a n : ℤ) = A047222 (n + 1)

end A047222

/-! ## A047222.P18222055613845923689

`∑[dr(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=2`
-/

namespace A047222.P18222055613845923689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047222.P18222055613845923689

namespace A047222

/-- `∑[dr(a(n-3))]` -/
def P18222055613845923689.Spec : Prop :=
  ∀ n, (P18222055613845923689.a n : ℤ) = A047222 (n + 1)

end A047222

/-! ## A047222.P14318613001551001718

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A047222.P14318613001551001718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047222.P14318613001551001718

namespace A047222

/-- `∑[floor(a(n-3))]` -/
def P14318613001551001718.Spec : Prop :=
  ∀ n, (P14318613001551001718.a n : ℤ) = A047222 (n + 1)

end A047222

/-! ## A047222.P12237838642163449489

`∑[ceil(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A047222.P12237838642163449489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047222.P12237838642163449489

namespace A047222

/-- `∑[ceil(a(n-3))]` -/
def P12237838642163449489.Spec : Prop :=
  ∀ n, (P12237838642163449489.a n : ℤ) = A047222 (n + 1)

end A047222

/-! ## A047222.P13339516174627226730

`∑[round(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=2`

`round` is left out, it is the identity on integers.
-/

namespace A047222.P13339516174627226730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047222.P13339516174627226730

namespace A047222

/-- `∑[round(a(n-3))]` -/
def P13339516174627226730.Spec : Prop :=
  ∀ n, (P13339516174627226730.a n : ℤ) = A047222 (n + 1)

end A047222

/-! ## A047222.P17799773832683167430

`eq[0, val((2*n)²+1, 5)]`
-/

namespace A047222.P17799773832683167430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((2 * n) ^ 2 + 1) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047222.P17799773832683167430

namespace A047222

/-- `eq[0, val((2*n)²+1, 5)]` -/
def P17799773832683167430.Spec : Prop :=
  ∀ n, (P17799773832683167430.a n : ℤ) = A047222 (n + 1)

end A047222

/-! ## A047222.P8161195217892335124

`lt[val((2*n)²+1, 5), 1]`
-/

namespace A047222.P8161195217892335124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((2 * n) ^ 2 + 1) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047222.P8161195217892335124

namespace A047222

/-- `lt[val((2*n)²+1, 5), 1]` -/
def P8161195217892335124.Spec : Prop :=
  ∀ n, (P8161195217892335124.a n : ℤ) = A047222 (n + 1)

end A047222

/-! ## A047222.P9278579382307037280

`floor(or(1, 2*n)/3+n)`
-/

namespace A047222.P9278579382307037280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (2 * n) : ℚ) / 3 + (n : ℚ)⌋

end

end A047222.P9278579382307037280

namespace A047222

/-- `floor(or(1, 2*n)/3+n)` -/
def P9278579382307037280.Spec : Prop :=
  ∀ n, P9278579382307037280.a n = A047222 (n + 1)

end A047222

/-! ## A047222.P16327522121971930142

`floor(xor(1, 2*n)/3+n)`
-/

namespace A047222.P16327522121971930142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 (2 * n) : ℚ) / 3 + (n : ℚ)⌋

end

end A047222.P16327522121971930142

namespace A047222

/-- `floor(xor(1, 2*n)/3+n)` -/
def P16327522121971930142.Spec : Prop :=
  ∀ n, P16327522121971930142.a n = A047222 (n + 1)

end A047222

/-! ## A047222.P1072489132535074976

`record[(n+3)%5+n-3]`
-/

namespace A047222.P1072489132535074976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 3) % 5 : ℕ) : ℤ) + ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047222.P1072489132535074976

namespace A047222

/-- `record[(n+3)%5+n-3]` -/
def P1072489132535074976.Spec : Prop :=
  ∀ n, P1072489132535074976.a n = A047222 (n + 1)

end A047222

/-! ## A047222.P9126902243719440338

`comp[5*n-a(n-1)]` with `a(0)=1`
-/

namespace A047222.P9126902243719440338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (5 * n : ℤ) - f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047222.P9126902243719440338

namespace A047222

/-- `comp[5*n-a(n-1)]` -/
def P9126902243719440338.Spec : Prop :=
  ∀ n, (P9126902243719440338.a n : ℤ) = A047222 (n + 1)

end A047222

/-!
# A047223: Numbers that are congruent to {1, 2, 3} mod 5.

The programs for A047223, the canonical program `A047223.P5203741466902604277` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047223 has offset 1).

The definition of A047223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047223.P5203741466902604277

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047223

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P5203741466902604277.Spec : Prop :=
  ∀ n, P5203741466902604277.a n = A047223 (n + 1)

theorem P5203741466902604277.correct : P5203741466902604277.Spec := by
  intro n
  simp only [A047223, Nat.add_sub_cancel]

end A047223

/-! ## A047223.P1036702789803926567

`∑[gcd(3, n)]-2`
-/

namespace A047223.P1036702789803926567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A047223.P1036702789803926567

namespace A047223

/-- `∑[gcd(3, n)]-2` -/
def P1036702789803926567.Spec : Prop :=
  ∀ n, P1036702789803926567.a n = A047223 (n + 1)

end A047223

/-! ## A047223.P4605606883329346337

`∑[gcd(9, ∏{p}[n, #])]`
-/

namespace A047223.P4605606883329346337
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 9 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047223.P4605606883329346337

namespace A047223

/-- `∑[gcd(9, ∏{p}[n, #])]` -/
def P4605606883329346337.Spec : Prop :=
  ∀ n, (P4605606883329346337.a n : ℤ) = A047223 (n + 1)

end A047223

/-! ## A047223.P14219088891103301729

`comp[∑[((2*n)%3)²]]`
-/

namespace A047223.P14219088891103301729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n % 3) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047223.P14219088891103301729

namespace A047223

/-- `comp[∑[((2*n)%3)²]]` -/
def P14219088891103301729.Spec : Prop :=
  ∀ n, (P14219088891103301729.a n : ℤ) = A047223 (n + 1)

end A047223

/-! ## A047223.P3580539729514671934

`∑[3^∑{p}[n, val(#, 3)]]`
-/

namespace A047223.P3580539729514671934
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047223.P3580539729514671934

namespace A047223

/-- `∑[3^∑{p}[n, val(#, 3)]]` -/
def P3580539729514671934.Spec : Prop :=
  ∀ n, (P3580539729514671934.a n : ℤ) = A047223 (n + 1)

end A047223

/-! ## A047223.P16363816524463824953

`∑[3^val(∏{p}[n, #], 3)]`
-/

namespace A047223.P16363816524463824953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047223.P16363816524463824953

namespace A047223

/-- `∑[3^val(∏{p}[n, #], 3)]` -/
def P16363816524463824953.Spec : Prop :=
  ∀ n, (P16363816524463824953.a n : ℤ) = A047223 (n + 1)

end A047223

/-! ## A047223.P7594874027008480838

`∑[∏{d}[n, C(3, C(3, #))]]`
-/

namespace A047223.P7594874027008480838
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), Nat.choose 3 (Nat.choose 3 d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047223.P7594874027008480838

namespace A047223

/-- `∑[∏{d}[n, C(3, C(3, #))]]` -/
def P7594874027008480838.Spec : Prop :=
  ∀ n, (P7594874027008480838.a n : ℤ) = A047223 (n + 1)

end A047223

/-! ## A047223.P10054959253438361810

`∑[∏{p}[n, C(3, C(3, #))]]`
-/

namespace A047223.P10054959253438361810
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose 3 (Nat.choose 3 p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047223.P10054959253438361810

namespace A047223

/-- `∑[∏{p}[n, C(3, C(3, #))]]` -/
def P10054959253438361810.Spec : Prop :=
  ∀ n, (P10054959253438361810.a n : ℤ) = A047223 (n + 1)

end A047223

/-! ## A047223.P14723965043013289093

`∑[floor(cosh((n-1)%3))]`
-/

namespace A047223.P14723965043013289093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Int.tmod ((n : ℤ) - 1) 3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047223.P14723965043013289093

namespace A047223

/-- `∑[floor(cosh((n-1)%3))]` -/
def P14723965043013289093.Spec : Prop :=
  ∀ n, P14723965043013289093.a n = A047223 (n + 1)

end A047223

/-! ## A047223.P18155344114716125574

`Δ[ceil(n²/3)]+n`
-/

namespace A047223.P18155344114716125574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A047223.P18155344114716125574

namespace A047223

/-- `Δ[ceil(n²/3)]+n` -/
def P18155344114716125574.Spec : Prop :=
  ∀ n, P18155344114716125574.a n = A047223 (n + 1)

end A047223

/-! ## A047223.P4823755057511982187

`lt[n, n*(n+1)%5]`
-/

namespace A047223.P4823755057511982187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((n + 1) % 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047223.P4823755057511982187

namespace A047223

/-- `lt[n, n*(n+1)%5]` -/
def P4823755057511982187.Spec : Prop :=
  ∀ n, (P4823755057511982187.a n : ℤ) = A047223 (n + 1)

end A047223

/-! ## A047223.P9047627601526501133

`∑[gcd(n², 3%(n+2))]`
-/

namespace A047223.P9047627601526501133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n ^ 2) (3 % (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047223.P9047627601526501133

namespace A047223

/-- `∑[gcd(n², 3%(n+2))]` -/
def P9047627601526501133.Spec : Prop :=
  ∀ n, (P9047627601526501133.a n : ℤ) = A047223 (n + 1)

end A047223

/-! ## A047223.P17026877287464904148

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A047223.P17026877287464904148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047223.P17026877287464904148

namespace A047223

/-- `∑[abs(a(n-3))]` -/
def P17026877287464904148.Spec : Prop :=
  ∀ n, (P17026877287464904148.a n : ℤ) = A047223 (n + 1)

end A047223

/-! ## A047223.P6467167503783957741

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A047223.P6467167503783957741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047223.P6467167503783957741

namespace A047223

/-- `∑[dr(a(n-3))]` -/
def P6467167503783957741.Spec : Prop :=
  ∀ n, (P6467167503783957741.a n : ℤ) = A047223 (n + 1)

end A047223

/-! ## A047223.P13972390283796607779

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047223.P13972390283796607779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047223.P13972390283796607779

namespace A047223

/-- `∑[floor(a(n-3))]` -/
def P13972390283796607779.Spec : Prop :=
  ∀ n, (P13972390283796607779.a n : ℤ) = A047223 (n + 1)

end A047223

/-! ## A047223.P5856575214193596887

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A047223.P5856575214193596887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047223.P5856575214193596887

namespace A047223

/-- `∑[ceil(a(n-3))]` -/
def P5856575214193596887.Spec : Prop :=
  ∀ n, (P5856575214193596887.a n : ℤ) = A047223 (n + 1)

end A047223

/-! ## A047223.P13110741104013625934

`∑[round(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`

`round` is left out, it is the identity on integers.
-/

namespace A047223.P13110741104013625934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047223.P13110741104013625934

namespace A047223

/-- `∑[round(a(n-3))]` -/
def P13110741104013625934.Spec : Prop :=
  ∀ n, (P13110741104013625934.a n : ℤ) = A047223 (n + 1)

end A047223

/-! ## A047223.P16602827003184683219

`eq[0, val((2-n)²+1, 5)]`
-/

namespace A047223.P16602827003184683219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((2 - (n : ℤ)) ^ 2 + 1).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047223.P16602827003184683219

namespace A047223

/-- `eq[0, val((2-n)²+1, 5)]` -/
def P16602827003184683219.Spec : Prop :=
  ∀ n, (P16602827003184683219.a n : ℤ) = A047223 (n + 1)

end A047223

/-! ## A047223.P7029885338728182193

`lt[val((n+3)²+1, 5), 1]`
-/

namespace A047223.P7029885338728182193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 3) ^ 2 + 1) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047223.P7029885338728182193

namespace A047223

/-- `lt[val((n+3)²+1, 5), 1]` -/
def P7029885338728182193.Spec : Prop :=
  ∀ n, (P7029885338728182193.a n : ℤ) = A047223 (n + 1)

end A047223

/-! ## A047223.P14063798664570590264

`∑[gcd(C(2, n)+n, n+3)]`
-/

namespace A047223.P14063798664570590264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose 2 n + n) (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047223.P14063798664570590264

namespace A047223

/-- `∑[gcd(C(2, n)+n, n+3)]` -/
def P14063798664570590264.Spec : Prop :=
  ∀ n, (P14063798664570590264.a n : ℤ) = A047223 (n + 1)

end A047223

/-!
# A047225: Numbers that are congruent to {0, 1} mod 6.

The programs for A047225, the canonical program `A047225.P18263311134364995427` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047225 has offset 1).

The definition of A047225 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047225.P18263311134364995427

`a(n-2)+6` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047225

/-- `a(n-2)+6` -/
def P18263311134364995427.Spec : Prop :=
  ∀ n, (P18263311134364995427.a n : ℤ) = A047225 (n + 1)

theorem P18263311134364995427.correct : P18263311134364995427.Spec := by
  intro n
  simp only [A047225, Nat.add_sub_cancel]

end A047225

/-! ## A047225.P11927199937787679416

`record[and(n, -6)]-n`
-/

namespace A047225.P11927199937787679416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A047225.P11927199937787679416

namespace A047225

/-- `record[and(n, -6)]-n` -/
def P11927199937787679416.Spec : Prop :=
  ∀ n, P11927199937787679416.a n = A047225 (n + 1)

end A047225

/-! ## A047225.P11205513559908087373

`xor(1, 3*n)-1`
-/

namespace A047225.P11205513559908087373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (3 * n) : ℤ) - 1

end

end A047225.P11205513559908087373

namespace A047225

/-- `xor(1, 3*n)-1` -/
def P11205513559908087373.Spec : Prop :=
  ∀ n, P11205513559908087373.a n = A047225 (n + 1)

end A047225

/-! ## A047225.P8273168769238817342

`record[n/(n%6)!]`
-/

namespace A047225.P8273168769238817342
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial (n % 6) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047225.P8273168769238817342

namespace A047225

/-- `record[n/(n%6)!]` -/
def P8273168769238817342.Spec : Prop :=
  ∀ n, P8273168769238817342.a n = (A047225 (n + 1) : ℚ)

end A047225

/-! ## A047225.P7330147650287907400

`2*and(n, -2)+n`
-/

namespace A047225.P7330147650287907400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (n : ℤ) (-2) + (n : ℤ)

end

end A047225.P7330147650287907400

namespace A047225

/-- `2*and(n, -2)+n` -/
def P7330147650287907400.Spec : Prop :=
  ∀ n, P7330147650287907400.a n = A047225 (n + 1)

end A047225

/-! ## A047225.P16235442488077075283

`∑[C(5, a(n-1))]` with `a(0)=0`
-/

namespace A047225.P16235442488077075283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.choose 5 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047225.P16235442488077075283

namespace A047225

/-- `∑[C(5, a(n-1))]` -/
def P16235442488077075283.Spec : Prop :=
  ∀ n, (P16235442488077075283.a n : ℤ) = A047225 (n + 1)

end A047225

/-! ## A047225.P6465596776430316591

`4*floor(n/2)+n`
-/

namespace A047225.P6465596776430316591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌊(n : ℚ) / 2⌋ + (n : ℤ)

end

end A047225.P6465596776430316591

namespace A047225

/-- `4*floor(n/2)+n` -/
def P6465596776430316591.Spec : Prop :=
  ∀ n, P6465596776430316591.a n = A047225 (n + 1)

end A047225

/-! ## A047225.P11573197895893105149

`∑[6-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A047225.P11573197895893105149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047225.P11573197895893105149

namespace A047225

/-- `∑[6-a(n-1)]` -/
def P11573197895893105149.Spec : Prop :=
  ∀ n, P11573197895893105149.a n = A047225 (n + 1)

end A047225

/-! ## A047225.P6233532490860599097

`∑[floor(5^((n-1)%2))]`
-/

namespace A047225.P6233532490860599097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) 2 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047225.P6233532490860599097

namespace A047225

/-- `∑[floor(5^((n-1)%2))]` -/
def P6233532490860599097.Spec : Prop :=
  ∀ n, P6233532490860599097.a n = A047225 (n + 1)

end A047225

/-! ## A047225.P7761222153093478383

`abs(2-(2*or(1, n)+n))`
-/

namespace A047225.P7761222153093478383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (2 * Nat.lor 1 n + n : ℤ)|

end

end A047225.P7761222153093478383

namespace A047225

/-- `abs(2-(2*or(1, n)+n))` -/
def P7761222153093478383.Spec : Prop :=
  ∀ n, P7761222153093478383.a n = A047225 (n + 1)

end A047225

/-! ## A047225.P4256525384703841831

`abs(2-2*or(1, n)-n)`
-/

namespace A047225.P4256525384703841831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (2 * Nat.lor 1 n : ℤ) - (n : ℤ)|

end

end A047225.P4256525384703841831

namespace A047225

/-- `abs(2-2*or(1, n)-n)` -/
def P4256525384703841831.Spec : Prop :=
  ∀ n, P4256525384703841831.a n = A047225 (n + 1)

end A047225

/-! ## A047225.P1571435537790138423

`abs(2*and(1, n)-3*n)`
-/

namespace A047225.P1571435537790138423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * Nat.land 1 n : ℤ) - (3 * n : ℤ)|

end

end A047225.P1571435537790138423

namespace A047225

/-- `abs(2*and(1, n)-3*n)` -/
def P1571435537790138423.Spec : Prop :=
  ∀ n, P1571435537790138423.a n = A047225 (n + 1)

end A047225

/-! ## A047225.P2743787528616606998

`abs(n-1+xor(1, n)+n)`
-/

namespace A047225.P2743787528616606998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - 1 + (Nat.xor 1 n + n : ℤ)|

end

end A047225.P2743787528616606998

namespace A047225

/-- `abs(n-1+xor(1, n)+n)` -/
def P2743787528616606998.Spec : Prop :=
  ∀ n, P2743787528616606998.a n = A047225 (n + 1)

end A047225

/-! ## A047225.P3002678991331209266

`floor(n-(ϕ-2*or(1, n)))`
-/

namespace A047225.P3002678991331209266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) - (Real.goldenRatio - (2 * Nat.lor 1 n : ℝ))⌋

end

end A047225.P3002678991331209266

namespace A047225

/-- `floor(n-(ϕ-2*or(1, n)))` -/
def P3002678991331209266.Spec : Prop :=
  ∀ n, P3002678991331209266.a n = A047225 (n + 1)

end A047225

/-! ## A047225.P8793931173588158901

`round(n-(ϕ-2*or(1, n)))`
-/

namespace A047225.P8793931173588158901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) - (Real.goldenRatio - (2 * Nat.lor 1 n : ℝ)))

end

end A047225.P8793931173588158901

namespace A047225

/-- `round(n-(ϕ-2*or(1, n)))` -/
def P8793931173588158901.Spec : Prop :=
  ∀ n, P8793931173588158901.a n = A047225 (n + 1)

end A047225

/-! ## A047225.P14522716505639102259

`3*(n-(2*n)%4/3)`
-/

namespace A047225.P14522716505639102259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℚ) - ((2 * n % 4 : ℕ) : ℚ) / 3)

end

end A047225.P14522716505639102259

namespace A047225

/-- `3*(n-(2*n)%4/3)` -/
def P14522716505639102259.Spec : Prop :=
  ∀ n, P14522716505639102259.a n = (A047225 (n + 1) : ℚ)

end A047225

/-! ## A047225.P3025956222383265663

`eq[0, C(n, a(n-2)²)]` with `a(0)=0, a(1)=0`
-/

namespace A047225.P3025956222383265663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  Nat.choose n (f2 (n - 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047225.P3025956222383265663

namespace A047225

/-- `eq[0, C(n, a(n-2)²)]` -/
def P3025956222383265663.Spec : Prop :=
  ∀ n, (P3025956222383265663.a n : ℤ) = A047225 (n + 1)

end A047225

/-!
# A047226: Numbers that are congruent to {0, 1, 2, 3, 4} mod 6; a(n)=floor(6(n-1)/5).

The programs for A047226, the canonical program `A047226.P11233273670124315123` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047226 has offset 1).

The definition of A047226 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047226.P11233273670124315123

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=6`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047226

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P11233273670124315123.Spec : Prop :=
  ∀ n, P11233273670124315123.a n = A047226 (n + 1)

theorem P11233273670124315123.correct : P11233273670124315123.Spec := by
  intro n
  simp only [A047226, Nat.add_sub_cancel]

end A047226

/-! ## A047226.P6838524307772601175

`floor(6*n/5)`
-/

namespace A047226.P6838524307772601175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊6 * ((n : ℚ) / 5)⌋

end

end A047226.P6838524307772601175

namespace A047226

/-- `floor(6*n/5)` -/
def P6838524307772601175.Spec : Prop :=
  ∀ n, P6838524307772601175.a n = A047226 (n + 1)

end A047226

/-! ## A047226.P651128015256833255

`comp[lcm(6, n)-1]`
-/

namespace A047226.P651128015256833255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 6 n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047226.P651128015256833255

namespace A047226

/-- `comp[lcm(6, n)-1]` -/
def P651128015256833255.Spec : Prop :=
  ∀ n, (P651128015256833255.a n : ℤ) = A047226 (n + 1)

end A047226

/-! ## A047226.P289128155456953027

`eq[0, val(n+1, 6)]`
-/

namespace A047226.P289128155456953027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047226.P289128155456953027

namespace A047226

/-- `eq[0, val(n+1, 6)]` -/
def P289128155456953027.Spec : Prop :=
  ∀ n, (P289128155456953027.a n : ℤ) = A047226 (n + 1)

end A047226

/-! ## A047226.P13553670649071622720

`lt[val(n+1, 6), 1]`
-/

namespace A047226.P13553670649071622720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047226.P13553670649071622720

namespace A047226

/-- `lt[val(n+1, 6), 1]` -/
def P13553670649071622720.Spec : Prop :=
  ∀ n, (P13553670649071622720.a n : ℤ) = A047226 (n + 1)

end A047226

/-! ## A047226.P9888813099163245406

`comp[3*or(1, n)+2]`
-/

namespace A047226.P9888813099163245406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.lor 1 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047226.P9888813099163245406

namespace A047226

/-- `comp[3*or(1, n)+2]` -/
def P9888813099163245406.Spec : Prop :=
  ∀ n, (P9888813099163245406.a n : ℤ) = A047226 (n + 1)

end A047226

/-! ## A047226.P14253055370553784380

`∑[gcd(5, n)%3]-2`
-/

namespace A047226.P14253055370553784380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 n % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A047226.P14253055370553784380

namespace A047226

/-- `∑[gcd(5, n)%3]-2` -/
def P14253055370553784380.Spec : Prop :=
  ∀ n, P14253055370553784380.a n = A047226 (n + 1)

end A047226

/-! ## A047226.P496284956983918859

`comp[xor(1, 6*n+4)]`
-/

namespace A047226.P496284956983918859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (6 * n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047226.P496284956983918859

namespace A047226

/-- `comp[xor(1, 6*n+4)]` -/
def P496284956983918859.Spec : Prop :=
  ∀ n, (P496284956983918859.a n : ℤ) = A047226 (n + 1)

end A047226

/-! ## A047226.P14010360140684592188

`comp[a(n-1)+6]` with `a(0)=5`
-/

namespace A047226.P14010360140684592188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047226.P14010360140684592188

namespace A047226

/-- `comp[a(n-1)+6]` -/
def P14010360140684592188.Spec : Prop :=
  ∀ n, (P14010360140684592188.a n : ℤ) = A047226 (n + 1)

end A047226

/-! ## A047226.P15322747666603770628

`comp[n-(n+1)%6]`
-/

namespace A047226.P15322747666603770628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((n + 1) % 6 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047226.P15322747666603770628

namespace A047226

/-- `comp[n-(n+1)%6]` -/
def P15322747666603770628.Spec : Prop :=
  ∀ n, (P15322747666603770628.a n : ℤ) = A047226 (n + 1)

end A047226

/-! ## A047226.P11575080492026196162

`record[n-val(n+1, 6)]`
-/

namespace A047226.P11575080492026196162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (n + 1) 6 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047226.P11575080492026196162

namespace A047226

/-- `record[n-val(n+1, 6)]` -/
def P11575080492026196162.Spec : Prop :=
  ∀ n, P11575080492026196162.a n = A047226 (n + 1)

end A047226

/-! ## A047226.P17737731942841633460

`record[xor(n, val(n+1, 6))]`
-/

namespace A047226.P17737731942841633460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (SequenceMachineLib.valuation (n + 1) 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047226.P17737731942841633460

namespace A047226

/-- `record[xor(n, val(n+1, 6))]` -/
def P17737731942841633460.Spec : Prop :=
  ∀ n, (P17737731942841633460.a n : ℤ) = A047226 (n + 1)

end A047226

/-! ## A047226.P4214663334804494815

`∪[or(1, 3*n), 2*n]`
-/

namespace A047226.P4214663334804494815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A047226.P4214663334804494815

namespace A047226

/-- `∪[or(1, 3*n), 2*n]` -/
def P4214663334804494815.Spec : Prop :=
  ∀ n, (P4214663334804494815.a n : ℤ) = A047226 (n + 1)

end A047226

/-! ## A047226.P15449372227909402030

`∑[2-(n^4)%5]-2`
-/

namespace A047226.P15449372227909402030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n ^ 4 % 5 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A047226.P15449372227909402030

namespace A047226

/-- `∑[2-(n^4)%5]-2` -/
def P15449372227909402030.Spec : Prop :=
  ∀ n, P15449372227909402030.a n = A047226 (n + 1)

end A047226

/-! ## A047226.P8652504842683059835

`comp[3*and(n, n+1)-1]`
-/

namespace A047226.P8652504842683059835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.land n (n + 1) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047226.P8652504842683059835

namespace A047226

/-- `comp[3*and(n, n+1)-1]` -/
def P8652504842683059835.Spec : Prop :=
  ∀ n, (P8652504842683059835.a n : ℤ) = A047226 (n + 1)

end A047226

/-! ## A047226.P16229306543925091516

`∪[∑[gcd(2, n+1)], 2*n]`
-/

namespace A047226.P16229306543925091516
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n

end

end A047226.P16229306543925091516

namespace A047226

/-- `∪[∑[gcd(2, n+1)], 2*n]` -/
def P16229306543925091516.Spec : Prop :=
  ∀ n, (P16229306543925091516.a n : ℤ) = A047226 (n + 1)

end A047226

/-! ## A047226.P580821555880051856

`6+a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A047226.P580821555880051856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 4] fun n a =>
  6 + a (n - 5)

end

end A047226.P580821555880051856

namespace A047226

/-- `6+a(n-5)` -/
def P580821555880051856.Spec : Prop :=
  ∀ n, (P580821555880051856.a n : ℤ) = A047226 (n + 1)

end A047226

/-! ## A047226.P5078101949007466722

`lt[lcm(n+2, n%3), n+3]`
-/

namespace A047226.P5078101949007466722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) (n % 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047226.P5078101949007466722

namespace A047226

/-- `lt[lcm(n+2, n%3), n+3]` -/
def P5078101949007466722.Spec : Prop :=
  ∀ n, (P5078101949007466722.a n : ℤ) = A047226 (n + 1)

end A047226

/-! ## A047226.P676408655940297883

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A047226.P676408655940297883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 1, 2] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047226.P676408655940297883

namespace A047226

/-- `∑[floor(a(n-5))]` -/
def P676408655940297883.Spec : Prop :=
  ∀ n, (P676408655940297883.a n : ℤ) = A047226 (n + 1)

end A047226

/-! ## A047226.P12995992708141923978

`n-floor((3-a(n-1))/6)` with `a(0)=0`
-/

namespace A047226.P12995992708141923978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - ⌊(3 - a (n - 1) : ℚ) / 6⌋

end

end A047226.P12995992708141923978

namespace A047226

/-- `n-floor((3-a(n-1))/6)` -/
def P12995992708141923978.Spec : Prop :=
  ∀ n, P12995992708141923978.a n = A047226 (n + 1)

end A047226

/-!
# A047227: Numbers that are congruent to {1, 2, 3, 4} mod 6.

The programs for A047227, the canonical program `A047227.P11666463329436393676` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047227 has offset 1).

The definition of A047227 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047227.P11666463329436393676

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=7`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047227

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P11666463329436393676.Spec : Prop :=
  ∀ n, P11666463329436393676.a n = A047227 (n + 1)

theorem P11666463329436393676.correct : P11666463329436393676.Spec := by
  intro n
  simp only [A047227, Nat.add_sub_cancel]

end A047227

/-! ## A047227.P13605548867067621173

`A047246(n+1)+1`
-/

namespace A047227.P13605548867067621173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047246 (n + 1) + 1

end

end A047227.P13605548867067621173

namespace A047227

/-- `A047246(n+1)+1` -/
def P13605548867067621173.Spec : Prop :=
  ∀ n, P13605548867067621173.a n = A047227 (n + 1)

end A047227

/-! ## A047227.P9700375566334992067

`comp[xor(1, 3*n+1)]`
-/

namespace A047227.P9700375566334992067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047227.P9700375566334992067

namespace A047227

/-- `comp[xor(1, 3*n+1)]` -/
def P9700375566334992067.Spec : Prop :=
  ∀ n, (P9700375566334992067.a n : ℤ) = A047227 (n + 1)

end A047227

/-! ## A047227.P550402584988164300

`comp[xor(1, 3*n)-2]`
-/

namespace A047227.P550402584988164300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (3 * n) : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047227.P550402584988164300

namespace A047227

/-- `comp[xor(1, 3*n)-2]` -/
def P550402584988164300.Spec : Prop :=
  ∀ n, (P550402584988164300.a n : ℤ) = A047227 (n + 1)

end A047227

/-! ## A047227.P12239053070984913945

`or(1, floor(n/2))+n`
-/

namespace A047227.P12239053070984913945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(n : ℚ) / 2⌋ + (n : ℤ)

end

end A047227.P12239053070984913945

namespace A047227

/-- `or(1, floor(n/2))+n` -/
def P12239053070984913945.Spec : Prop :=
  ∀ n, P12239053070984913945.a n = A047227 (n + 1)

end A047227

/-! ## A047227.P15369023720953931292

`comp[a(n-2)+6]` with `a(0)=0, a(1)=5`
-/

namespace A047227.P15369023720953931292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (n - 2) + 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047227.P15369023720953931292

namespace A047227

/-- `comp[a(n-2)+6]` -/
def P15369023720953931292.Spec : Prop :=
  ∀ n, (P15369023720953931292.a n : ℤ) = A047227 (n + 1)

end A047227

/-! ## A047227.P7840991974245555509

`comp[∑[5^and(1, n)]-1]`
-/

namespace A047227.P7840991974245555509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ Nat.land 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047227.P7840991974245555509

namespace A047227

/-- `comp[∑[5^and(1, n)]-1]` -/
def P7840991974245555509.Spec : Prop :=
  ∀ n, (P7840991974245555509.a n : ℤ) = A047227 (n + 1)

end A047227

/-! ## A047227.P17465542558830097466

`lt[n, n*(n+1)%6]`
-/

namespace A047227.P17465542558830097466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((n + 1) % 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047227.P17465542558830097466

namespace A047227

/-- `lt[n, n*(n+1)%6]` -/
def P17465542558830097466.Spec : Prop :=
  ∀ n, (P17465542558830097466.a n : ℤ) = A047227 (n + 1)

end A047227

/-! ## A047227.P11703024610916067545

`a(n-4)+6` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A047227.P11703024610916067545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  a (n - 4) + 6

end

end A047227.P11703024610916067545

namespace A047227

/-- `a(n-4)+6` -/
def P11703024610916067545.Spec : Prop :=
  ∀ n, (P11703024610916067545.a n : ℤ) = A047227 (n + 1)

end A047227

/-! ## A047227.P13964413553108089733

`∑[2%gcd(4, n)+1]-2`
-/

namespace A047227.P13964413553108089733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 % Nat.gcd 4 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A047227.P13964413553108089733

namespace A047227

/-- `∑[2%gcd(4, n)+1]-2` -/
def P13964413553108089733.Spec : Prop :=
  ∀ n, P13964413553108089733.a n = A047227 (n + 1)

end A047227

/-! ## A047227.P13611074991428528022

`and(n, -4)/2+n+1`
-/

namespace A047227.P13611074991428528022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-4) : ℚ) / 2 + (n + 1 : ℚ)

end

end A047227.P13611074991428528022

namespace A047227

/-- `and(n, -4)/2+n+1` -/
def P13611074991428528022.Spec : Prop :=
  ∀ n, P13611074991428528022.a n = (A047227 (n + 1) : ℚ)

end A047227

/-! ## A047227.P4637626964049621080

`2*floor(n/4)+1+n`
-/

namespace A047227.P4637626964049621080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℚ) / 4⌋ + 1 + (n : ℤ)

end

end A047227.P4637626964049621080

namespace A047227

/-- `2*floor(n/4)+1+n` -/
def P4637626964049621080.Spec : Prop :=
  ∀ n, P4637626964049621080.a n = A047227 (n + 1)

end A047227

/-! ## A047227.P92005126373631343

`ceil(or(3, n)/2+n-1)`
-/

namespace A047227.P92005126373631343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 3 n : ℚ) / 2 + ((n : ℤ) - 1 : ℚ)⌉

end

end A047227.P92005126373631343

namespace A047227

/-- `ceil(or(3, n)/2+n-1)` -/
def P92005126373631343.Spec : Prop :=
  ∀ n, P92005126373631343.a n = A047227 (n + 1)

end A047227

/-! ## A047227.P12322175177584450522

`round(or(3, n)/2+n-1)`
-/

namespace A047227.P12322175177584450522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 3 n : ℚ) / 2 + ((n : ℤ) - 1 : ℚ))

end

end A047227.P12322175177584450522

namespace A047227

/-- `round(or(3, n)/2+n-1)` -/
def P12322175177584450522.Spec : Prop :=
  ∀ n, P12322175177584450522.a n = A047227 (n + 1)

end A047227

/-! ## A047227.P17120423962003356097

`comp[2*or(1, n)+n-3]`
-/

namespace A047227.P17120423962003356097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℤ) + ((n : ℤ) - 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047227.P17120423962003356097

namespace A047227

/-- `comp[2*or(1, n)+n-3]` -/
def P17120423962003356097.Spec : Prop :=
  ∀ n, (P17120423962003356097.a n : ℤ) = A047227 (n + 1)

end A047227

/-! ## A047227.P1123243972615132053

`(record[or(4, n)]+n-2)/2`
-/

namespace A047227.P1123243972615132053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) + ((n : ℤ) - 2) : ℚ) / 2

end

end A047227.P1123243972615132053

namespace A047227

/-- `(record[or(4, n)]+n-2)/2` -/
def P1123243972615132053.Spec : Prop :=
  ∀ n, P1123243972615132053.a n = (A047227 (n + 1) : ℚ)

end A047227

/-! ## A047227.P1824240756767234692

`(record[xor(4, n)]+n-2)/2`
-/

namespace A047227.P1824240756767234692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) + ((n : ℤ) - 2) : ℚ) / 2

end

end A047227.P1824240756767234692

namespace A047227

/-- `(record[xor(4, n)]+n-2)/2` -/
def P1824240756767234692.Spec : Prop :=
  ∀ n, P1824240756767234692.a n = (A047227 (n + 1) : ℚ)

end A047227

/-! ## A047227.P2165247113449659869

`∑[gcd((1-n)%4, n%2)]`
-/

namespace A047227.P2165247113449659869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (1 - (n : ℤ)) 4) ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047227.P2165247113449659869

namespace A047227

/-- `∑[gcd((1-n)%4, n%2)]` -/
def P2165247113449659869.Spec : Prop :=
  ∀ n, (P2165247113449659869.a n : ℤ) = A047227 (n + 1)

end A047227

/-! ## A047227.P883264725245574483

`comp[xor(1, n+1)+n+n]`
-/

namespace A047227.P883264725245574483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1) + n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047227.P883264725245574483

namespace A047227

/-- `comp[xor(1, n+1)+n+n]` -/
def P883264725245574483.Spec : Prop :=
  ∀ n, (P883264725245574483.a n : ℤ) = A047227 (n + 1)

end A047227

/-! ## A047227.P1888652336293104835

`∑[abs(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=3`
-/

namespace A047227.P1888652336293104835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047227.P1888652336293104835

namespace A047227

/-- `∑[abs(a(n-4))]` -/
def P1888652336293104835.Spec : Prop :=
  ∀ n, (P1888652336293104835.a n : ℤ) = A047227 (n + 1)

end A047227

/-!
# A047228: Numbers that are congruent to {2, 3, 4} mod 6.

The programs for A047228, the canonical program `A047228.P104193079783604670` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047228 has offset 1).

The definition of A047228 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047228.P104193079783604670

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047228

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P104193079783604670.Spec : Prop :=
  ∀ n, P104193079783604670.a n = A047228 (n + 1)

theorem P104193079783604670.correct : P104193079783604670.Spec := by
  intro n
  simp only [A047228, Nat.add_sub_cancel]

end A047228

/-! ## A047228.P14215193249715809027

`Δ[n²%3+n²]`
-/

namespace A047228.P14215193249715809027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A047228.P14215193249715809027

namespace A047228

/-- `Δ[n²%3+n²]` -/
def P14215193249715809027.Spec : Prop :=
  ∀ n, P14215193249715809027.a n = A047228 (n + 1)

end A047228

/-! ## A047228.P14391847644867168872

`a(n-3)+6` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A047228.P14391847644867168872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4] fun n a =>
  a (n - 3) + 6

end

end A047228.P14391847644867168872

namespace A047228

/-- `a(n-3)+6` -/
def P14391847644867168872.Spec : Prop :=
  ∀ n, (P14391847644867168872.a n : ℤ) = A047228 (n + 1)

end A047228

/-! ## A047228.P13410646478954469715

`∑[a(n%3)²]` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A047228.P13410646478954469715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1] fun n f1 =>
  f1 (n % 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047228.P13410646478954469715

namespace A047228

/-- `∑[a(n%3)²]` -/
def P13410646478954469715.Spec : Prop :=
  ∀ n, (P13410646478954469715.a n : ℤ) = A047228 (n + 1)

end A047228

/-! ## A047228.P17935224663353540101

`Δ[n²-gcd(3, n)/2]`
-/

namespace A047228.P17935224663353540101
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) - (Nat.gcd 3 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047228.P17935224663353540101

namespace A047228

/-- `Δ[n²-gcd(3, n)/2]` -/
def P17935224663353540101.Spec : Prop :=
  ∀ n, P17935224663353540101.a n = (A047228 (n + 1) : ℚ)

end A047228

/-! ## A047228.P18406032958337054276

`∑[floor(a(n-3))]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A047228.P18406032958337054276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047228.P18406032958337054276

namespace A047228

/-- `∑[floor(a(n-3))]` -/
def P18406032958337054276.Spec : Prop :=
  ∀ n, (P18406032958337054276.a n : ℤ) = A047228 (n + 1)

end A047228

/-! ## A047228.P229134415829306030

`-n%3+2*(n+1)`
-/

namespace A047228.P229134415829306030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(n : ℤ)) 3 + (2 * (n + 1) : ℤ)

end

end A047228.P229134415829306030

namespace A047228

/-- `-n%3+2*(n+1)` -/
def P229134415829306030.Spec : Prop :=
  ∀ n, P229134415829306030.a n = A047228 (n + 1)

end A047228

/-! ## A047228.P7715293381561447632

`3*floor(n/3)+2+n`
-/

namespace A047228.P7715293381561447632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(n : ℚ) / 3⌋ + 2 + (n : ℤ)

end

end A047228.P7715293381561447632

namespace A047228

/-- `3*floor(n/3)+2+n` -/
def P7715293381561447632.Spec : Prop :=
  ∀ n, P7715293381561447632.a n = A047228 (n + 1)

end A047228

/-! ## A047228.P3693175049304354906

`∑[a(n-3)%5]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A047228.P3693175049304354906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1, 4] fun n f1 =>
  f1 (n - 3) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047228.P3693175049304354906

namespace A047228

/-- `∑[a(n-3)%5]` -/
def P3693175049304354906.Spec : Prop :=
  ∀ n, (P3693175049304354906.a n : ℤ) = A047228 (n + 1)

end A047228

/-! ## A047228.P16813617416383212795

`∑[gcd(2, a(n-3))²]` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A047228.P16813617416383212795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1] fun n f1 =>
  Nat.gcd 2 (f1 (n - 3)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047228.P16813617416383212795

namespace A047228

/-- `∑[gcd(2, a(n-3))²]` -/
def P16813617416383212795.Spec : Prop :=
  ∀ n, (P16813617416383212795.a n : ℤ) = A047228 (n + 1)

end A047228

/-! ## A047228.P17941813876616281887

`lt[n+2, (n+1)%6+n]`
-/

namespace A047228.P17941813876616281887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 6 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047228.P17941813876616281887

namespace A047228

/-- `lt[n+2, (n+1)%6+n]` -/
def P17941813876616281887.Spec : Prop :=
  ∀ n, (P17941813876616281887.a n : ℤ) = A047228 (n + 1)

end A047228

/-! ## A047228.P17697721493526306512

`∑[(2-a(n-3))²]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A047228.P17697721493526306512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1, 4] fun n f1 =>
  (2 - f1 (n - 3)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047228.P17697721493526306512

namespace A047228

/-- `∑[(2-a(n-3))²]` -/
def P17697721493526306512.Spec : Prop :=
  ∀ n, P17697721493526306512.a n = A047228 (n + 1)

end A047228

/-! ## A047228.P10478260510464806874

`record[2*n-a(n-3)]` with `a(0)=2, a(1)=0, a(2)=3`
-/

namespace A047228.P10478260510464806874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 3] fun n f1 =>
  (2 * n : ℤ) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047228.P10478260510464806874

namespace A047228

/-- `record[2*n-a(n-3)]` -/
def P10478260510464806874.Spec : Prop :=
  ∀ n, P10478260510464806874.a n = A047228 (n + 1)

end A047228

/-! ## A047228.P5196425421359872254

`∑[4/(5-a(n-3))]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A047228.P5196425421359872254
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1, 1, 4] fun n f1 =>
  4 / (5 - f1 (n - 3))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047228.P5196425421359872254

namespace A047228

/-- `∑[4/(5-a(n-3))]` -/
def P5196425421359872254.Spec : Prop :=
  ∀ n, P5196425421359872254.a n = (A047228 (n + 1) : ℚ)

end A047228

/-! ## A047228.P11765150590179726450

`lt[n, 2*n-a(n-3)]` with `a(0)=0, a(1)=0, a(2)=5`
-/

namespace A047228.P11765150590179726450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 5] fun n f2 =>
  (2 * n : ℤ) - f2 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A047228.P11765150590179726450

namespace A047228

/-- `lt[n, 2*n-a(n-3)]` -/
def P11765150590179726450.Spec : Prop :=
  ∀ n, (P11765150590179726450.a n : ℤ) = A047228 (n + 1)

end A047228

/-! ## A047228.P14730109876653583333

`eq[n, 2*n-a(n-3)]` with `a(0)=3, a(1)=4, a(2)=2`
-/

namespace A047228.P14730109876653583333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 2] fun n f2 =>
  (2 * n : ℤ) - f2 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047228.P14730109876653583333

namespace A047228

/-- `eq[n, 2*n-a(n-3)]` -/
def P14730109876653583333.Spec : Prop :=
  ∀ n, (P14730109876653583333.a n : ℤ) = A047228 (n + 1)

end A047228

/-! ## A047228.P726207263777239255

`∑[a(n-3)^a(n-1)]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A047228.P726207263777239255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1, 4] fun n f1 =>
  f1 (n - 3) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047228.P726207263777239255

namespace A047228

/-- `∑[a(n-3)^a(n-1)]` -/
def P726207263777239255.Spec : Prop :=
  ∀ n, (P726207263777239255.a n : ℤ) = A047228 (n + 1)

end A047228

/-! ## A047228.P11034277443695157744

`eq[1, floor((n-1)/a(n-3))]` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A047228.P11034277443695157744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 1] fun n f2 =>
  ⌊((n : ℤ) - 1 : ℚ) / (f2 (n - 3) : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047228.P11034277443695157744

namespace A047228

/-- `eq[1, floor((n-1)/a(n-3))]` -/
def P11034277443695157744.Spec : Prop :=
  ∀ n, (P11034277443695157744.a n : ℤ) = A047228 (n + 1)

end A047228

/-!
# A047229: Numbers that are congruent to {0, 2, 3, 4} mod 6.

The programs for A047229, the canonical program `A047229.P14164567933214653390` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047229 has offset 1).

The definition of A047229 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047229.P14164567933214653390

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4, a(4)=6`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047229

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P14164567933214653390.Spec : Prop :=
  ∀ n, P14164567933214653390.a n = A047229 (n + 1)

theorem P14164567933214653390.correct : P14164567933214653390.Spec := by
  intro n
  simp only [A047229, Nat.add_sub_cancel]

end A047229

/-! ## A047229.P17903834068801471416

`∪[2*n, 3*n]`
-/

namespace A047229.P17903834068801471416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A047229.P17903834068801471416

namespace A047229

/-- `∪[2*n, 3*n]` -/
def P17903834068801471416.Spec : Prop :=
  ∀ n, (P17903834068801471416.a n : ℤ) = A047229 (n + 1)

end A047229

/-! ## A047229.P3340025991976982587

`comp[or(1, 3*n+1)]`
-/

namespace A047229.P3340025991976982587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047229.P3340025991976982587

namespace A047229

/-- `comp[or(1, 3*n+1)]` -/
def P3340025991976982587.Spec : Prop :=
  ∀ n, (P3340025991976982587.a n : ℤ) = A047229 (n + 1)

end A047229

/-! ## A047229.P3046041321526526105

`comp[or(1, 3*n)-2]`
-/

namespace A047229.P3046041321526526105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (3 * n) : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047229.P3046041321526526105

namespace A047229

/-- `comp[or(1, 3*n)-2]` -/
def P3046041321526526105.Spec : Prop :=
  ∀ n, (P3046041321526526105.a n : ℤ) = A047229 (n + 1)

end A047229

/-! ## A047229.P12963394490652218491

`∑[gcd(2, C(n, 2))]-2`
-/

namespace A047229.P12963394490652218491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A047229.P12963394490652218491

namespace A047229

/-- `∑[gcd(2, C(n, 2))]-2` -/
def P12963394490652218491.Spec : Prop :=
  ∀ n, P12963394490652218491.a n = A047229 (n + 1)

end A047229

/-! ## A047229.P16892528530334573178

`comp[lcm(3, n)-(n+3)]`
-/

namespace A047229.P16892528530334573178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 n : ℤ) - (n + 3 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047229.P16892528530334573178

namespace A047229

/-- `comp[lcm(3, n)-(n+3)]` -/
def P16892528530334573178.Spec : Prop :=
  ∀ n, (P16892528530334573178.a n : ℤ) = A047229 (n + 1)

end A047229

/-! ## A047229.P13022821507536894507

`∑[C(2, a(n-2))]` with `a(0)=0, a(1)=2`
-/

namespace A047229.P13022821507536894507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  Nat.choose 2 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047229.P13022821507536894507

namespace A047229

/-- `∑[C(2, a(n-2))]` -/
def P13022821507536894507.Spec : Prop :=
  ∀ n, (P13022821507536894507.a n : ℤ) = A047229 (n + 1)

end A047229

/-! ## A047229.P9367451820071748804

`comp[a(n-2)+6]` with `a(0)=1, a(1)=5`
-/

namespace A047229.P9367451820071748804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 2) + 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047229.P9367451820071748804

namespace A047229

/-- `comp[a(n-2)+6]` -/
def P9367451820071748804.Spec : Prop :=
  ∀ n, (P9367451820071748804.a n : ℤ) = A047229 (n + 1)

end A047229

/-! ## A047229.P5038627644260317686

`∑[and(2, n+2)!]-2`
-/

namespace A047229.P5038627644260317686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 2 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A047229.P5038627644260317686

namespace A047229

/-- `∑[and(2, n+2)!]-2` -/
def P5038627644260317686.Spec : Prop :=
  ∀ n, P5038627644260317686.a n = A047229 (n + 1)

end A047229

/-! ## A047229.P13248983548056518999

`∑[a(a(n-2))!]` with `a(0)=0, a(1)=2`
-/

namespace A047229.P13248983548056518999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  Nat.factorial (f1 (f1 (n - 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047229.P13248983548056518999

namespace A047229

/-- `∑[a(a(n-2))!]` -/
def P13248983548056518999.Spec : Prop :=
  ∀ n, (P13248983548056518999.a n : ℤ) = A047229 (n + 1)

end A047229

/-! ## A047229.P7172767743182640973

`lt[n+1, gcd(6, n)+n]`
-/

namespace A047229.P7172767743182640973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047229.P7172767743182640973

namespace A047229

/-- `lt[n+1, gcd(6, n)+n]` -/
def P7172767743182640973.Spec : Prop :=
  ∀ n, (P7172767743182640973.a n : ℤ) = A047229 (n + 1)

end A047229

/-! ## A047229.P12835312609847428211

`a(n-4)+6` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A047229.P12835312609847428211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 4] fun n a =>
  a (n - 4) + 6

end

end A047229.P12835312609847428211

namespace A047229

/-- `a(n-4)+6` -/
def P12835312609847428211.Spec : Prop :=
  ∀ n, (P12835312609847428211.a n : ℤ) = A047229 (n + 1)

end A047229

/-! ## A047229.P1321408203990353268

`∑[3-a(n-2)]` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A047229.P1321408203990353268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n f1 =>
  3 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047229.P1321408203990353268

namespace A047229

/-- `∑[3-a(n-2)]` -/
def P1321408203990353268.Spec : Prop :=
  ∀ n, P1321408203990353268.a n = A047229 (n + 1)

end A047229

/-! ## A047229.P89795969408114025

`2*n-∑[and(2, n)/2]`
-/

namespace A047229.P89795969408114025
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047229.P89795969408114025

namespace A047229

/-- `2*n-∑[and(2, n)/2]` -/
def P89795969408114025.Spec : Prop :=
  ∀ n, P89795969408114025.a n = (A047229 (n + 1) : ℚ)

end A047229

/-! ## A047229.P3860482443874083972

`comp[2*n-gcd(3, n+1)]`
-/

namespace A047229.P3860482443874083972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.gcd 3 (n + 1) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047229.P3860482443874083972

namespace A047229

/-- `comp[2*n-gcd(3, n+1)]` -/
def P3860482443874083972.Spec : Prop :=
  ∀ n, (P3860482443874083972.a n : ℤ) = A047229 (n + 1)

end A047229

/-! ## A047229.P5714726143906455303

`comp[gcd(9, n+2)+2*n]`
-/

namespace A047229.P5714726143906455303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 9 (n + 2) + 2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047229.P5714726143906455303

namespace A047229

/-- `comp[gcd(9, n+2)+2*n]` -/
def P5714726143906455303.Spec : Prop :=
  ∀ n, (P5714726143906455303.a n : ℤ) = A047229 (n + 1)

end A047229

/-! ## A047229.P3306499108507226221

`2*n-∑[and(1, C(n, 2))]`
-/

namespace A047229.P3306499108507226221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A047229.P3306499108507226221

namespace A047229

/-- `2*n-∑[and(1, C(n, 2))]` -/
def P3306499108507226221.Spec : Prop :=
  ∀ n, P3306499108507226221.a n = A047229 (n + 1)

end A047229

/-! ## A047229.P16106377271174959288

`comp[or(1, n+1)+n+n]`
-/

namespace A047229.P16106377271174959288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1) + n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047229.P16106377271174959288

namespace A047229

/-- `comp[or(1, n+1)+n+n]` -/
def P16106377271174959288.Spec : Prop :=
  ∀ n, (P16106377271174959288.a n : ℤ) = A047229 (n + 1)

end A047229

/-! ## A047229.P8834715746199959913

`∑[a(and(2, n+2))+1]` with `a(0)=0, a(1)=2`
-/

namespace A047229.P8834715746199959913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (Nat.land 2 (n + 2)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047229.P8834715746199959913

namespace A047229

/-- `∑[a(and(2, n+2))+1]` -/
def P8834715746199959913.Spec : Prop :=
  ∀ n, (P8834715746199959913.a n : ℤ) = A047229 (n + 1)

end A047229

/-!
# A047230: Numbers that are congruent to {3, 4} mod 6.

The programs for A047230, the canonical program `A047230.P7947870410627615105` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047230 has offset 1).

The definition of A047230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047230.P7947870410627615105

`xor(1, 3*n+2)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047230

/-- `xor(1, 3*n+2)` -/
def P7947870410627615105.Spec : Prop :=
  ∀ n, (P7947870410627615105.a n : ℤ) = A047230 (n + 1)

theorem P7947870410627615105.correct : P7947870410627615105.Spec := by
  intro n
  simp only [A047230, Nat.add_sub_cancel]

end A047230

/-! ## A047230.P1324005281905342291

`or(3, 2*n)+n`
-/

namespace A047230.P1324005281905342291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (2 * n) + n

end

end A047230.P1324005281905342291

namespace A047230

/-- `or(3, 2*n)+n` -/
def P1324005281905342291.Spec : Prop :=
  ∀ n, (P1324005281905342291.a n : ℤ) = A047230 (n + 1)

end A047230

/-! ## A047230.P12476483157919238054

`Δ[n²]-xor(n, -2)`
-/

namespace A047230.P12476483157919238054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - Int.xor (n : ℤ) (-2)

end

end A047230.P12476483157919238054

namespace A047230

/-- `Δ[n²]-xor(n, -2)` -/
def P12476483157919238054.Spec : Prop :=
  ∀ n, P12476483157919238054.a n = A047230 (n + 1)

end A047230

/-! ## A047230.P6621599610201646839

`a(n-2)+6` with `a(0)=3, a(1)=4`
-/

namespace A047230.P6621599610201646839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 2) + 6

end

end A047230.P6621599610201646839

namespace A047230

/-- `a(n-2)+6` -/
def P6621599610201646839.Spec : Prop :=
  ∀ n, (P6621599610201646839.a n : ℤ) = A047230 (n + 1)

end A047230

/-! ## A047230.P9175785209231941689

`∑[gcd(5, n%2)]-2`
-/

namespace A047230.P9175785209231941689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A047230.P9175785209231941689

namespace A047230

/-- `∑[gcd(5, n%2)]-2` -/
def P9175785209231941689.Spec : Prop :=
  ∀ n, P9175785209231941689.a n = A047230 (n + 1)

end A047230

/-! ## A047230.P2925613817990034658

`record[or(5, n)]-(n+2)`
-/

namespace A047230.P2925613817990034658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n + 2 : ℤ)

end

end A047230.P2925613817990034658

namespace A047230

/-- `record[or(5, n)]-(n+2)` -/
def P2925613817990034658.Spec : Prop :=
  ∀ n, P2925613817990034658.a n = A047230 (n + 1)

end A047230

/-! ## A047230.P12318418823212423232

`record[or(5, n)-2]-n`
-/

namespace A047230.P12318418823212423232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A047230.P12318418823212423232

namespace A047230

/-- `record[or(5, n)-2]-n` -/
def P12318418823212423232.Spec : Prop :=
  ∀ n, P12318418823212423232.a n = A047230 (n + 1)

end A047230

/-! ## A047230.P2312671057836503906

`record[xor(5, n)]-(n+2)`
-/

namespace A047230.P2312671057836503906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n + 2 : ℤ)

end

end A047230.P2312671057836503906

namespace A047230

/-- `record[xor(5, n)]-(n+2)` -/
def P2312671057836503906.Spec : Prop :=
  ∀ n, P2312671057836503906.a n = A047230 (n + 1)

end A047230

/-! ## A047230.P17911137220250231969

`record[xor(5, n)-2]-n`
-/

namespace A047230.P17911137220250231969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 5 n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A047230.P17911137220250231969

namespace A047230

/-- `record[xor(5, n)-2]-n` -/
def P17911137220250231969.Spec : Prop :=
  ∀ n, P17911137220250231969.a n = A047230 (n + 1)

end A047230

/-! ## A047230.P8142249942420783276

`comp[xor(n, gcd(3, n+1))]`
-/

namespace A047230.P8142249942420783276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.gcd 3 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047230.P8142249942420783276

namespace A047230

/-- `comp[xor(n, gcd(3, n+1))]` -/
def P8142249942420783276.Spec : Prop :=
  ∀ n, (P8142249942420783276.a n : ℤ) = A047230 (n + 1)

end A047230

/-! ## A047230.P6774012386641262521

`∑[6-a(n-1)]` with `a(0)=3, a(1)=1`
-/

namespace A047230.P6774012386641262521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047230.P6774012386641262521

namespace A047230

/-- `∑[6-a(n-1)]` -/
def P6774012386641262521.Spec : Prop :=
  ∀ n, P6774012386641262521.a n = A047230 (n + 1)

end A047230

/-! ## A047230.P1781196022087889898

`lcm(2, or(1, n))+n+1`
-/

namespace A047230.P1781196022087889898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.lor 1 n) + (n + 1)

end

end A047230.P1781196022087889898

namespace A047230

/-- `lcm(2, or(1, n))+n+1` -/
def P1781196022087889898.Spec : Prop :=
  ∀ n, (P1781196022087889898.a n : ℤ) = A047230 (n + 1)

end A047230

/-! ## A047230.P6069994597854452560

`xor(1, n+2)+n+n`
-/

namespace A047230.P6069994597854452560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 2) + n + n

end

end A047230.P6069994597854452560

namespace A047230

/-- `xor(1, n+2)+n+n` -/
def P6069994597854452560.Spec : Prop :=
  ∀ n, (P6069994597854452560.a n : ℤ) = A047230 (n + 1)

end A047230

/-! ## A047230.P3316062660002944425

`eq[n, or(5, n)]-(n+2)`
-/

namespace A047230.P3316062660002944425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n + 2 : ℤ)

end

end A047230.P3316062660002944425

namespace A047230

/-- `eq[n, or(5, n)]-(n+2)` -/
def P3316062660002944425.Spec : Prop :=
  ∀ n, P3316062660002944425.a n = A047230 (n + 1)

end A047230

/-! ## A047230.P6545996723702566291

`3*n+(-1)^n+2`
-/

namespace A047230.P6545996723702566291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + ((-1) ^ n + 2)

end

end A047230.P6545996723702566291

namespace A047230

/-- `3*n+(-1)^n+2` -/
def P6545996723702566291.Spec : Prop :=
  ∀ n, P6545996723702566291.a n = A047230 (n + 1)

end A047230

/-! ## A047230.P16367509621078257719

`eq[1, C(n, a(n-2)²)]` with `a(0)=2, a(1)=0`
-/

namespace A047230.P16367509621078257719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f2 =>
  Nat.choose n (f2 (n - 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047230.P16367509621078257719

namespace A047230

/-- `eq[1, C(n, a(n-2)²)]` -/
def P16367509621078257719.Spec : Prop :=
  ∀ n, (P16367509621078257719.a n : ℤ) = A047230 (n + 1)

end A047230

/-! ## A047230.P10594467973679604504

`floor(6*n-(a(n-1)-1))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047230.P10594467973679604504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (6 * n : ℤ) - (a (n - 1) - 1)

end

end A047230.P10594467973679604504

namespace A047230

/-- `floor(6*n-(a(n-1)-1))` -/
def P10594467973679604504.Spec : Prop :=
  ∀ n, P10594467973679604504.a n = A047230 (n + 1)

end A047230

/-! ## A047230.P17321355655800450054

`2*(4-(2-a(n-2))/2)` with `a(0)=3, a(1)=4`
-/

namespace A047230.P17321355655800450054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 4] fun n a =>
  2 * (4 - (2 - a (n - 2)) / 2)

end

end A047230.P17321355655800450054

namespace A047230

/-- `2*(4-(2-a(n-2))/2)` -/
def P17321355655800450054.Spec : Prop :=
  ∀ n, P17321355655800450054.a n = (A047230 (n + 1) : ℚ)

end A047230

/-!
# A047231: Numbers that are congruent to {0, 3, 4} mod 6.

The programs for A047231, the canonical program `A047231.P5841339266927411318` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047231 has offset 1).

The definition of A047231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047231.P5841339266927411318

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=4, a(3)=6`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047231

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P5841339266927411318.Spec : Prop :=
  ∀ n, P5841339266927411318.a n = A047231 (n + 1)

theorem P5841339266927411318.correct : P5841339266927411318.Spec := by
  intro n
  simp only [A047231, Nat.add_sub_cancel]

end A047231

/-! ## A047231.P1160404906969231386

`∑[n]%3+2*n`
-/

namespace A047231.P1160404906969231386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 3 + 2 * n

end

end A047231.P1160404906969231386

namespace A047231

/-- `∑[n]%3+2*n` -/
def P1160404906969231386.Spec : Prop :=
  ∀ n, (P1160404906969231386.a n : ℤ) = A047231 (n + 1)

end A047231

/-! ## A047231.P17110657822793132439

`Δ[round((1/3-n)²)]`
-/

namespace A047231.P17110657822793132439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((1 : ℚ) / 3 - (n : ℚ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047231.P17110657822793132439

namespace A047231

/-- `Δ[round((1/3-n)²)]` -/
def P17110657822793132439.Spec : Prop :=
  ∀ n, P17110657822793132439.a n = A047231 (n + 1)

end A047231

/-! ## A047231.P14384860680810124148

`a(n-3)+6` with `a(0)=0, a(1)=3, a(2)=4`
-/

namespace A047231.P14384860680810124148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4] fun n a =>
  a (n - 3) + 6

end

end A047231.P14384860680810124148

namespace A047231

/-- `a(n-3)+6` -/
def P14384860680810124148.Spec : Prop :=
  ∀ n, (P14384860680810124148.a n : ℤ) = A047231 (n + 1)

end A047231

/-! ## A047231.P6563941464467725283

`and(1, n%3)+2*n`
-/

namespace A047231.P6563941464467725283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n % 3) + 2 * n

end

end A047231.P6563941464467725283

namespace A047231

/-- `and(1, n%3)+2*n` -/
def P6563941464467725283.Spec : Prop :=
  ∀ n, (P6563941464467725283.a n : ℤ) = A047231 (n + 1)

end A047231

/-! ## A047231.P18207398730071983153

`2*n-∑[-n]%3`
-/

namespace A047231.P18207398730071983153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A047231.P18207398730071983153

namespace A047231

/-- `2*n-∑[-n]%3` -/
def P18207398730071983153.Spec : Prop :=
  ∀ n, P18207398730071983153.a n = A047231 (n + 1)

end A047231

/-! ## A047231.P4833602877318650427

`eq[n, lcm(n, (n+1)%3)]`
-/

namespace A047231.P4833602877318650427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n ((n + 1) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047231.P4833602877318650427

namespace A047231

/-- `eq[n, lcm(n, (n+1)%3)]` -/
def P4833602877318650427.Spec : Prop :=
  ∀ n, (P4833602877318650427.a n : ℤ) = A047231 (n + 1)

end A047231

/-! ## A047231.P7835421555054889959

`or(2*n, ∑[n]²%3)`
-/

namespace A047231.P7835421555054889959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 % 3)

end

end A047231.P7835421555054889959

namespace A047231

/-- `or(2*n, ∑[n]²%3)` -/
def P7835421555054889959.Spec : Prop :=
  ∀ n, (P7835421555054889959.a n : ℤ) = A047231 (n + 1)

end A047231

/-! ## A047231.P2138339510622774404

`record[and(n, -(n+1)%3)]`
-/

namespace A047231.P2138339510622774404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (Int.tmod (-(n + 1 : ℤ)) 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047231.P2138339510622774404

namespace A047231

/-- `record[and(n, -(n+1)%3)]` -/
def P2138339510622774404.Spec : Prop :=
  ∀ n, P2138339510622774404.a n = A047231 (n + 1)

end A047231

/-! ## A047231.P15770735196520937593

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=2`
-/

namespace A047231.P15770735196520937593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047231.P15770735196520937593

namespace A047231

/-- `∑[abs(a(n-3))]` -/
def P15770735196520937593.Spec : Prop :=
  ∀ n, (P15770735196520937593.a n : ℤ) = A047231 (n + 1)

end A047231

/-! ## A047231.P4085062104349925610

`∑[dr(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=2`
-/

namespace A047231.P4085062104349925610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047231.P4085062104349925610

namespace A047231

/-- `∑[dr(a(n-3))]` -/
def P4085062104349925610.Spec : Prop :=
  ∀ n, (P4085062104349925610.a n : ℤ) = A047231 (n + 1)

end A047231

/-! ## A047231.P10550035616725178214

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A047231.P10550035616725178214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047231.P10550035616725178214

namespace A047231

/-- `∑[floor(a(n-3))]` -/
def P10550035616725178214.Spec : Prop :=
  ∀ n, (P10550035616725178214.a n : ℤ) = A047231 (n + 1)

end A047231

/-! ## A047231.P3108449969262315871

`∑[ceil(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A047231.P3108449969262315871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047231.P3108449969262315871

namespace A047231

/-- `∑[ceil(a(n-3))]` -/
def P3108449969262315871.Spec : Prop :=
  ∀ n, (P3108449969262315871.a n : ℤ) = A047231 (n + 1)

end A047231

/-! ## A047231.P1265018477894078459

`∑[round(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=2`

`round` is left out, it is the identity on integers.
-/

namespace A047231.P1265018477894078459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047231.P1265018477894078459

namespace A047231

/-- `∑[round(a(n-3))]` -/
def P1265018477894078459.Spec : Prop :=
  ∀ n, (P1265018477894078459.a n : ℤ) = A047231 (n + 1)

end A047231

/-! ## A047231.P6796293927630837588

`val(∑[n]+2, 3)+2*n`
-/

namespace A047231.P6796293927630837588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j + 2) 3 + 2 * n

end

end A047231.P6796293927630837588

namespace A047231

/-- `val(∑[n]+2, 3)+2*n` -/
def P6796293927630837588.Spec : Prop :=
  ∀ n, (P6796293927630837588.a n : ℤ) = A047231 (n + 1)

end A047231

/-! ## A047231.P289769471713881660

`∑[n+3]%3+n+n`
-/

namespace A047231.P289769471713881660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 3 + n + n

end

end A047231.P289769471713881660

namespace A047231

/-- `∑[n+3]%3+n+n` -/
def P289769471713881660.Spec : Prop :=
  ∀ n, (P289769471713881660.a n : ℤ) = A047231 (n + 1)

end A047231

/-! ## A047231.P566953744072048504

`∑[and(3, a(n-3))]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=2`
-/

namespace A047231.P566953744072048504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 2] fun n f1 =>
  Nat.land 3 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047231.P566953744072048504

namespace A047231

/-- `∑[and(3, a(n-3))]` -/
def P566953744072048504.Spec : Prop :=
  ∀ n, (P566953744072048504.a n : ℤ) = A047231 (n + 1)

end A047231

/-! ## A047231.P2832162221418057919

`∑[a(n-3)%n]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=2`
-/

namespace A047231.P2832162221418057919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 2] fun n f1 =>
  f1 (n - 3) % n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047231.P2832162221418057919

namespace A047231

/-- `∑[a(n-3)%n]` -/
def P2832162221418057919.Spec : Prop :=
  ∀ n, (P2832162221418057919.a n : ℤ) = A047231 (n + 1)

end A047231

/-! ## A047231.P452144997529051424

`xor(2*n, ((n+3)%3)%2)`
-/

namespace A047231.P452144997529051424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) ((n + 3) % 3 % 2)

end

end A047231.P452144997529051424

namespace A047231

/-- `xor(2*n, ((n+3)%3)%2)` -/
def P452144997529051424.Spec : Prop :=
  ∀ n, (P452144997529051424.a n : ℤ) = A047231 (n + 1)

end A047231

/-! ## A047231.P4009091035571800803

`or(2*n, C((2*n)%3, 2))`
-/

namespace A047231.P4009091035571800803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (Nat.choose (2 * n % 3) 2)

end

end A047231.P4009091035571800803

namespace A047231

/-- `or(2*n, C((2*n)%3, 2))` -/
def P4009091035571800803.Spec : Prop :=
  ∀ n, (P4009091035571800803.a n : ℤ) = A047231 (n + 1)

end A047231

/-!
# A047233: Numbers that are congruent to {0, 4} mod 6.

The programs for A047233, the canonical program `A047233.P13960520804655028660` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047233 has offset 1).

The definition of A047233 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047233.P13960520804655028660

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=4, a(2)=6`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047233

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P13960520804655028660.Spec : Prop :=
  ∀ n, P13960520804655028660.a n = A047233 (n + 1)

theorem P13960520804655028660.correct : P13960520804655028660.Spec := by
  intro n
  simp only [A047233, Nat.add_sub_cancel]

end A047233

/-! ## A047233.P13104189635504711191

`3*n+n%2`
-/

namespace A047233.P13104189635504711191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + n % 2

end

end A047233.P13104189635504711191

namespace A047233

/-- `3*n+n%2` -/
def P13104189635504711191.Spec : Prop :=
  ∀ n, (P13104189635504711191.a n : ℤ) = A047233 (n + 1)

end A047233

/-! ## A047233.P89730052460759855

`and(1, n)+3*n`
-/

namespace A047233.P89730052460759855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 3 * n

end

end A047233.P89730052460759855

namespace A047233

/-- `and(1, n)+3*n` -/
def P89730052460759855.Spec : Prop :=
  ∀ n, (P89730052460759855.a n : ℤ) = A047233 (n + 1)

end A047233

/-! ## A047233.P4316742478338284762

`record[n-n²%6]`
-/

namespace A047233.P4316742478338284762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n ^ 2 % 6 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047233.P4316742478338284762

namespace A047233

/-- `record[n-n²%6]` -/
def P4316742478338284762.Spec : Prop :=
  ∀ n, P4316742478338284762.a n = A047233 (n + 1)

end A047233

/-! ## A047233.P4795668466931344669

`4*n-and(n, -2)`
-/

namespace A047233.P4795668466931344669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - Int.land (n : ℤ) (-2)

end

end A047233.P4795668466931344669

namespace A047233

/-- `4*n-and(n, -2)` -/
def P4795668466931344669.Spec : Prop :=
  ∀ n, P4795668466931344669.a n = A047233 (n + 1)

end A047233

/-! ## A047233.P10586137737536692694

`a(n-2)+6` with `a(0)=0, a(1)=4`
-/

namespace A047233.P10586137737536692694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 2) + 6

end

end A047233.P10586137737536692694

namespace A047233

/-- `a(n-2)+6` -/
def P10586137737536692694.Spec : Prop :=
  ∀ n, (P10586137737536692694.a n : ℤ) = A047233 (n + 1)

end A047233

/-! ## A047233.P13313490708377987286

`1-or(1, -3*n)`
-/

namespace A047233.P13313490708377987286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.lor 1 (-(3 * n : ℤ))

end

end A047233.P13313490708377987286

namespace A047233

/-- `1-or(1, -3*n)` -/
def P13313490708377987286.Spec : Prop :=
  ∀ n, P13313490708377987286.a n = A047233 (n + 1)

end A047233

/-! ## A047233.P8171703831450644802

`2*ceil(3*n/2)`
-/

namespace A047233.P8171703831450644802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈3 * ((n : ℚ) / 2)⌉

end

end A047233.P8171703831450644802

namespace A047233

/-- `2*ceil(3*n/2)` -/
def P8171703831450644802.Spec : Prop :=
  ∀ n, P8171703831450644802.a n = A047233 (n + 1)

end A047233

/-! ## A047233.P11874237628480395514

`∑[4/gcd(2, n)]-2`
-/

namespace A047233.P11874237628480395514
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A047233.P11874237628480395514

namespace A047233

/-- `∑[4/gcd(2, n)]-2` -/
def P11874237628480395514.Spec : Prop :=
  ∀ n, P11874237628480395514.a n = (A047233 (n + 1) : ℚ)

end A047233

/-! ## A047233.P5220407331720796741

`comp[or(2, n)-1]+n`
-/

namespace A047233.P5220407331720796741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A047233.P5220407331720796741

namespace A047233

/-- `comp[or(2, n)-1]+n` -/
def P5220407331720796741.Spec : Prop :=
  ∀ n, (P5220407331720796741.a n : ℤ) = A047233 (n + 1)

end A047233

/-! ## A047233.P1870813027667549289

`char[or(1, n)]+3*n`
-/

namespace A047233.P1870813027667549289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 3 * n

end

end A047233.P1870813027667549289

namespace A047233

/-- `char[or(1, n)]+3*n` -/
def P1870813027667549289.Spec : Prop :=
  ∀ n, (P1870813027667549289.a n : ℤ) = A047233 (n + 1)

end A047233

/-! ## A047233.P17185975880490419770

`and(Δ[n²]+n, -2)`
-/

namespace A047233.P17185975880490419770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)) (-2)

end

end A047233.P17185975880490419770

namespace A047233

/-- `and(Δ[n²]+n, -2)` -/
def P17185975880490419770.Spec : Prop :=
  ∀ n, P17185975880490419770.a n = A047233 (n + 1)

end A047233

/-! ## A047233.P12178927704401220244

`or(1, 3*n+1)-1`
-/

namespace A047233.P12178927704401220244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (3 * n + 1) : ℤ) - 1

end

end A047233.P12178927704401220244

namespace A047233

/-- `or(1, 3*n+1)-1` -/
def P12178927704401220244.Spec : Prop :=
  ∀ n, P12178927704401220244.a n = A047233 (n + 1)

end A047233

/-! ## A047233.P2244519230695846484

`xor(1, or(1, 3*n+1))`
-/

namespace A047233.P2244519230695846484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 (3 * n + 1))

end

end A047233.P2244519230695846484

namespace A047233

/-- `xor(1, or(1, 3*n+1))` -/
def P2244519230695846484.Spec : Prop :=
  ∀ n, (P2244519230695846484.a n : ℤ) = A047233 (n + 1)

end A047233

/-! ## A047233.P16597956748167863900

`∑[abs(a(n-2))]` with `a(0)=0, a(1)=4, a(2)=2`
-/

namespace A047233.P16597956748167863900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 2] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047233.P16597956748167863900

namespace A047233

/-- `∑[abs(a(n-2))]` -/
def P16597956748167863900.Spec : Prop :=
  ∀ n, (P16597956748167863900.a n : ℤ) = A047233 (n + 1)

end A047233

/-! ## A047233.P2217583939475555240

`∑[6-a(n-1)]` with `a(0)=0, a(1)=4`
-/

namespace A047233.P2217583939475555240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047233.P2217583939475555240

namespace A047233

/-- `∑[6-a(n-1)]` -/
def P2217583939475555240.Spec : Prop :=
  ∀ n, P2217583939475555240.a n = A047233 (n + 1)

end A047233

/-! ## A047233.P12473419672370022975

`lt[6*n, lcm(6, n+1)]`
-/

namespace A047233.P12473419672370022975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047233.P12473419672370022975

namespace A047233

/-- `lt[6*n, lcm(6, n+1)]` -/
def P12473419672370022975.Spec : Prop :=
  ∀ n, (P12473419672370022975.a n : ℤ) = A047233 (n + 1)

end A047233

/-! ## A047233.P16077336585458109623

`eq[n, n*gcd(6, n+1)]`
-/

namespace A047233.P16077336585458109623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 6 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047233.P16077336585458109623

namespace A047233

/-- `eq[n, n*gcd(6, n+1)]` -/
def P16077336585458109623.Spec : Prop :=
  ∀ n, (P16077336585458109623.a n : ℤ) = A047233 (n + 1)

end A047233

/-! ## A047233.P16970058197345905022

`lt[or(2, n-1), n]+n`
-/

namespace A047233.P16970058197345905022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + n

end

end A047233.P16970058197345905022

namespace A047233

/-- `lt[or(2, n-1), n]+n` -/
def P16970058197345905022.Spec : Prop :=
  ∀ n, (P16970058197345905022.a n : ℤ) = A047233 (n + 1)

end A047233

/-! ## A047233.P9847375257770363158

`lt[n, xor(2, n+1)]+n`
-/

namespace A047233.P9847375257770363158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + n

end

end A047233.P9847375257770363158

namespace A047233

/-- `lt[n, xor(2, n+1)]+n` -/
def P9847375257770363158.Spec : Prop :=
  ∀ n, (P9847375257770363158.a n : ℤ) = A047233 (n + 1)

end A047233

/-!
# A047234: Numbers that are congruent to {0, 1, 4} mod 6.

The programs for A047234, the canonical program `A047234.P14533108991925136628` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047234 has offset 1).

The definition of A047234 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047234.P14533108991925136628

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=6`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047234

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P14533108991925136628.Spec : Prop :=
  ∀ n, P14533108991925136628.a n = A047234 (n + 1)

theorem P14533108991925136628.correct : P14533108991925136628.Spec := by
  intro n
  simp only [A047234, Nat.add_sub_cancel]

end A047234

/-! ## A047234.P15896345411686187079

`2*n-∑[n]%3`
-/

namespace A047234.P15896345411686187079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℤ)

end

end A047234.P15896345411686187079

namespace A047234

/-- `2*n-∑[n]%3` -/
def P15896345411686187079.Spec : Prop :=
  ∀ n, P15896345411686187079.a n = A047234 (n + 1)

end A047234

/-! ## A047234.P3025090593457837988

`Δ[floor((2/3-n)²)]`
-/

namespace A047234.P3025090593457837988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 : ℚ) / 3 - (n : ℚ)) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047234.P3025090593457837988

namespace A047234

/-- `Δ[floor((2/3-n)²)]` -/
def P3025090593457837988.Spec : Prop :=
  ∀ n, P3025090593457837988.a n = A047234 (n + 1)

end A047234

/-! ## A047234.P5889369523118873033

`a(n-3)+6` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A047234.P5889369523118873033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  a (n - 3) + 6

end

end A047234.P5889369523118873033

namespace A047234

/-- `a(n-3)+6` -/
def P5889369523118873033.Spec : Prop :=
  ∀ n, (P5889369523118873033.a n : ℤ) = A047234 (n + 1)

end A047234

/-! ## A047234.P12904347141062065761

`2*n-and(1, n%3)`
-/

namespace A047234.P12904347141062065761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.land 1 (n % 3) : ℤ)

end

end A047234.P12904347141062065761

namespace A047234

/-- `2*n-and(1, n%3)` -/
def P12904347141062065761.Spec : Prop :=
  ∀ n, P12904347141062065761.a n = A047234 (n + 1)

end A047234

/-! ## A047234.P16806115508810330363

`∑[-n]%3+2*n`
-/

namespace A047234.P16806115508810330363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3 + (2 * n : ℤ)

end

end A047234.P16806115508810330363

namespace A047234

/-- `∑[-n]%3+2*n` -/
def P16806115508810330363.Spec : Prop :=
  ∀ n, P16806115508810330363.a n = A047234 (n + 1)

end A047234

/-! ## A047234.P4987755597526597725

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A047234.P4987755597526597725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047234.P4987755597526597725

namespace A047234

/-- `∑[abs(a(n-3))]` -/
def P4987755597526597725.Spec : Prop :=
  ∀ n, (P4987755597526597725.a n : ℤ) = A047234 (n + 1)

end A047234

/-! ## A047234.P4673698440797592182

`∑[dr(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A047234.P4673698440797592182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047234.P4673698440797592182

namespace A047234

/-- `∑[dr(a(n-3))]` -/
def P4673698440797592182.Spec : Prop :=
  ∀ n, (P4673698440797592182.a n : ℤ) = A047234 (n + 1)

end A047234

/-! ## A047234.P2628278783997676240

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A047234.P2628278783997676240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047234.P2628278783997676240

namespace A047234

/-- `∑[floor(a(n-3))]` -/
def P2628278783997676240.Spec : Prop :=
  ∀ n, (P2628278783997676240.a n : ℤ) = A047234 (n + 1)

end A047234

/-! ## A047234.P11467458833175193373

`∑[ceil(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A047234.P11467458833175193373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047234.P11467458833175193373

namespace A047234

/-- `∑[ceil(a(n-3))]` -/
def P11467458833175193373.Spec : Prop :=
  ∀ n, (P11467458833175193373.a n : ℤ) = A047234 (n + 1)

end A047234

/-! ## A047234.P10514639908066038831

`∑[round(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`

`round` is left out, it is the identity on integers.
-/

namespace A047234.P10514639908066038831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047234.P10514639908066038831

namespace A047234

/-- `∑[round(a(n-3))]` -/
def P10514639908066038831.Spec : Prop :=
  ∀ n, (P10514639908066038831.a n : ℤ) = A047234 (n + 1)

end A047234

/-! ## A047234.P3143742497810704175

`∑[3-(n+1)%3]-2`
-/

namespace A047234.P3143742497810704175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (((n + 1) % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A047234.P3143742497810704175

namespace A047234

/-- `∑[3-(n+1)%3]-2` -/
def P3143742497810704175.Spec : Prop :=
  ∀ n, P3143742497810704175.a n = A047234 (n + 1)

end A047234

/-! ## A047234.P5454532774294780281

`2*n-val(∑[n]+2, 3)`
-/

namespace A047234.P5454532774294780281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j + 2) 3 : ℤ)

end

end A047234.P5454532774294780281

namespace A047234

/-- `2*n-val(∑[n]+2, 3)` -/
def P5454532774294780281.Spec : Prop :=
  ∀ n, P5454532774294780281.a n = A047234 (n + 1)

end A047234

/-! ## A047234.P3208194621108471906

`∑[a(n-3)%4]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A047234.P3208194621108471906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2] fun n f1 =>
  f1 (n - 3) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047234.P3208194621108471906

namespace A047234

/-- `∑[a(n-3)%4]` -/
def P3208194621108471906.Spec : Prop :=
  ∀ n, (P3208194621108471906.a n : ℤ) = A047234 (n + 1)

end A047234

/-! ## A047234.P14766287233914449763

`∑[gcd(6, a(n-3))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A047234.P14766287233914449763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2] fun n f1 =>
  Nat.gcd 6 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047234.P14766287233914449763

namespace A047234

/-- `∑[gcd(6, a(n-3))]` -/
def P14766287233914449763.Spec : Prop :=
  ∀ n, (P14766287233914449763.a n : ℤ) = A047234 (n + 1)

end A047234

/-! ## A047234.P2378238877740324170

`∑[and(3, a(n-3))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A047234.P2378238877740324170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2] fun n f1 =>
  Nat.land 3 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047234.P2378238877740324170

namespace A047234

/-- `∑[and(3, a(n-3))]` -/
def P2378238877740324170.Spec : Prop :=
  ∀ n, (P2378238877740324170.a n : ℤ) = A047234 (n + 1)

end A047234

/-! ## A047234.P13994504665656036274

`2*n-C(gcd(3, 1-n), 3)`
-/

namespace A047234.P13994504665656036274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.choose (Int.gcd 3 (1 - (n : ℤ))) 3 : ℤ)

end

end A047234.P13994504665656036274

namespace A047234

/-- `2*n-C(gcd(3, 1-n), 3)` -/
def P13994504665656036274.Spec : Prop :=
  ∀ n, P13994504665656036274.a n = A047234 (n + 1)

end A047234

/-! ## A047234.P4828891604491986243

`lt[1, gcd(n+2, (n+2)%3)]`
-/

namespace A047234.P4828891604491986243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 2) ((n + 2) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047234.P4828891604491986243

namespace A047234

/-- `lt[1, gcd(n+2, (n+2)%3)]` -/
def P4828891604491986243.Spec : Prop :=
  ∀ n, (P4828891604491986243.a n : ℤ) = A047234 (n + 1)

end A047234

/-! ## A047234.P9508523915089434040

`n-((n+3)%3)%2+n`
-/

namespace A047234.P9508523915089434040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((n + 3) % 3 % 2 : ℕ) : ℤ) + (n : ℤ)

end

end A047234.P9508523915089434040

namespace A047234

/-- `n-((n+3)%3)%2+n` -/
def P9508523915089434040.Spec : Prop :=
  ∀ n, P9508523915089434040.a n = A047234 (n + 1)

end A047234

/-! ## A047234.P5992068188853987312

`2*n-∑{p}[n+2, val(#, 3)]`
-/

namespace A047234.P5992068188853987312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 3 : ℕ) : ℤ)

end

end A047234.P5992068188853987312

namespace A047234

/-- `2*n-∑{p}[n+2, val(#, 3)]` -/
def P5992068188853987312.Spec : Prop :=
  ∀ n, P5992068188853987312.a n = A047234 (n + 1)

end A047234

/-!
# A047235: Numbers that are congruent to {2, 4} mod 6.

The programs for A047235, the canonical program `A047235.P5560758299185322021` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047235 has offset 1).

The definition of A047235 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047235.P5560758299185322021

`6*n-a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047235

/-- `6*n-a(n-1)` -/
def P5560758299185322021.Spec : Prop :=
  ∀ n, P5560758299185322021.a n = A047235 (n + 1)

theorem P5560758299185322021.correct : P5560758299185322021.Spec := by
  intro n
  simp only [A047235, Nat.add_sub_cancel]

end A047235

/-! ## A047235.P12038730798385362438

`2*A001651(n+1)`
-/

namespace A047235.P12038730798385362438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001651 (n + 1)

end

end A047235.P12038730798385362438

namespace A047235

/-- `2*A001651(n+1)` -/
def P12038730798385362438.Spec : Prop :=
  ∀ n, P12038730798385362438.a n = A047235 (n + 1)

end A047235

/-! ## A047235.P905040778765666331

`2*comp[3*n]`
-/

namespace A047235.P905040778765666331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047235.P905040778765666331

namespace A047235

/-- `2*comp[3*n]` -/
def P905040778765666331.Spec : Prop :=
  ∀ n, (P905040778765666331.a n : ℤ) = A047235 (n + 1)

end A047235

/-! ## A047235.P4448193013870573437

`record[or(2, n)]+n`
-/

namespace A047235.P4448193013870573437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n

end

end A047235.P4448193013870573437

namespace A047235

/-- `record[or(2, n)]+n` -/
def P4448193013870573437.Spec : Prop :=
  ∀ n, (P4448193013870573437.a n : ℤ) = A047235 (n + 1)

end A047235

/-! ## A047235.P10637692076229495167

`record[xor(2, n)]+n`
-/

namespace A047235.P10637692076229495167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n

end

end A047235.P10637692076229495167

namespace A047235

/-- `record[xor(2, n)]+n` -/
def P10637692076229495167.Spec : Prop :=
  ∀ n, (P10637692076229495167.a n : ℤ) = A047235 (n + 1)

end A047235

/-! ## A047235.P2754507395193703387

`or(1, 3*n)+1`
-/

namespace A047235.P2754507395193703387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n) + 1

end

end A047235.P2754507395193703387

namespace A047235

/-- `or(1, 3*n)+1` -/
def P2754507395193703387.Spec : Prop :=
  ∀ n, (P2754507395193703387.a n : ℤ) = A047235 (n + 1)

end A047235

/-! ## A047235.P5137216888090538368

`gcd(2, n)+3*n`
-/

namespace A047235.P5137216888090538368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + 3 * n

end

end A047235.P5137216888090538368

namespace A047235

/-- `gcd(2, n)+3*n` -/
def P5137216888090538368.Spec : Prop :=
  ∀ n, (P5137216888090538368.a n : ℤ) = A047235 (n + 1)

end A047235

/-! ## A047235.P14432967079754424682

`Δ[n²]+or(1, n)`
-/

namespace A047235.P14432967079754424682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.lor 1 n : ℤ)

end

end A047235.P14432967079754424682

namespace A047235

/-- `Δ[n²]+or(1, n)` -/
def P14432967079754424682.Spec : Prop :=
  ∀ n, P14432967079754424682.a n = A047235 (n + 1)

end A047235

/-! ## A047235.P16147847969347527129

`eq[n, or(2, n)]+n`
-/

namespace A047235.P16147847969347527129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + n

end

end A047235.P16147847969347527129

namespace A047235

/-- `eq[n, or(2, n)]+n` -/
def P16147847969347527129.Spec : Prop :=
  ∀ n, (P16147847969347527129.a n : ℤ) = A047235 (n + 1)

end A047235

/-! ## A047235.P1526186357797252031

`lt[xor(2, n), n]+n`
-/

namespace A047235.P1526186357797252031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + n

end

end A047235.P1526186357797252031

namespace A047235

/-- `lt[xor(2, n), n]+n` -/
def P1526186357797252031.Spec : Prop :=
  ∀ n, (P1526186357797252031.a n : ℤ) = A047235 (n + 1)

end A047235

/-! ## A047235.P12178279480737715371

`a(n-2)+6` with `a(0)=2, a(1)=4`
-/

namespace A047235.P12178279480737715371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 2) + 6

end

end A047235.P12178279480737715371

namespace A047235

/-- `a(n-2)+6` -/
def P12178279480737715371.Spec : Prop :=
  ∀ n, (P12178279480737715371.a n : ℤ) = A047235 (n + 1)

end A047235

/-! ## A047235.P158585134545027648

`and(3*n+2, -2)`
-/

namespace A047235.P158585134545027648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n + 2 : ℤ) (-2)

end

end A047235.P158585134545027648

namespace A047235

/-- `and(3*n+2, -2)` -/
def P158585134545027648.Spec : Prop :=
  ∀ n, P158585134545027648.a n = A047235 (n + 1)

end A047235

/-! ## A047235.P14406936536461540052

`∑[gcd(4, 2*n)]-2`
-/

namespace A047235.P14406936536461540052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A047235.P14406936536461540052

namespace A047235

/-- `∑[gcd(4, 2*n)]-2` -/
def P14406936536461540052.Spec : Prop :=
  ∀ n, P14406936536461540052.a n = A047235 (n + 1)

end A047235

/-! ## A047235.P5954010902947126171

`ceil(or(3, 6*n)/2)`
-/

namespace A047235.P5954010902947126171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 3 (6 * n) : ℚ) / 2⌉

end

end A047235.P5954010902947126171

namespace A047235

/-- `ceil(or(3, 6*n)/2)` -/
def P5954010902947126171.Spec : Prop :=
  ∀ n, P5954010902947126171.a n = A047235 (n + 1)

end A047235

/-! ## A047235.P5027893317376790032

`round(or(3, 6*n)/2)`
-/

namespace A047235.P5027893317376790032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 3 (6 * n) : ℚ) / 2)

end

end A047235.P5027893317376790032

namespace A047235

/-- `round(or(3, 6*n)/2)` -/
def P5027893317376790032.Spec : Prop :=
  ∀ n, P5027893317376790032.a n = A047235 (n + 1)

end A047235

/-! ## A047235.P12125687958784937654

`comp[or(2, n)]+2+n`
-/

namespace A047235.P12125687958784937654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2 + n

end

end A047235.P12125687958784937654

namespace A047235

/-- `comp[or(2, n)]+2+n` -/
def P12125687958784937654.Spec : Prop :=
  ∀ n, (P12125687958784937654.a n : ℤ) = A047235 (n + 1)

end A047235

/-! ## A047235.P33115900246625751

`comp[and(2, n)+n]+n`
-/

namespace A047235.P33115900246625751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n

end

end A047235.P33115900246625751

namespace A047235

/-- `comp[and(2, n)+n]+n` -/
def P33115900246625751.Spec : Prop :=
  ∀ n, (P33115900246625751.a n : ℤ) = A047235 (n + 1)

end A047235

/-! ## A047235.P14796097258618286840

`lt[and(n, -3), n]+n`
-/

namespace A047235.P14796097258618286840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + n

end

end A047235.P14796097258618286840

namespace A047235

/-- `lt[and(n, -3), n]+n` -/
def P14796097258618286840.Spec : Prop :=
  ∀ n, (P14796097258618286840.a n : ℤ) = A047235 (n + 1)

end A047235

/-! ## A047235.P6872291182672020423

`∑[6-a(n-1)]` with `a(0)=2, a(1)=2`
-/

namespace A047235.P6872291182672020423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047235.P6872291182672020423

namespace A047235

/-- `∑[6-a(n-1)]` -/
def P6872291182672020423.Spec : Prop :=
  ∀ n, P6872291182672020423.a n = A047235 (n + 1)

end A047235

/-! ## A047235.P6129930197088048541

`2+3*n-n%2`
-/

namespace A047235.P6129930197088048541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 + 3 * n : ℤ) - ((n % 2 : ℕ) : ℤ)

end

end A047235.P6129930197088048541

namespace A047235

/-- `2+3*n-n%2` -/
def P6129930197088048541.Spec : Prop :=
  ∀ n, P6129930197088048541.a n = A047235 (n + 1)

end A047235

/-!
# A047236: Numbers that are congruent to {1, 2, 4} mod 6.

The programs for A047236, the canonical program `A047236.P292911758985986532` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047236 has offset 1).

The definition of A047236 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047236.P292911758985986532

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047236

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P292911758985986532.Spec : Prop :=
  ∀ n, P292911758985986532.a n = A047236 (n + 1)

theorem P292911758985986532.correct : P292911758985986532.Spec := by
  intro n
  simp only [A047236, Nat.add_sub_cancel]

end A047236

/-! ## A047236.P430009868246586042

`char[3*n]+2*n`
-/

namespace A047236.P430009868246586042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 2 * n

end

end A047236.P430009868246586042

namespace A047236

/-- `char[3*n]+2*n` -/
def P430009868246586042.Spec : Prop :=
  ∀ n, (P430009868246586042.a n : ℤ) = A047236 (n + 1)

end A047236

/-! ## A047236.P1645188936147491952

`or(2*n, char[3*n])`
-/

namespace A047236.P1645188936147491952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (if ∃ j, f1 j = n then 1 else 0)

end

end A047236.P1645188936147491952

namespace A047236

/-- `or(2*n, char[3*n])` -/
def P1645188936147491952.Spec : Prop :=
  ∀ n, (P1645188936147491952.a n : ℤ) = A047236 (n + 1)

end A047236

/-! ## A047236.P15884745996063660254

`xor(2*n, char[3*n])`
-/

namespace A047236.P15884745996063660254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) (if ∃ j, f1 j = n then 1 else 0)

end

end A047236.P15884745996063660254

namespace A047236

/-- `xor(2*n, char[3*n])` -/
def P15884745996063660254.Spec : Prop :=
  ∀ n, (P15884745996063660254.a n : ℤ) = A047236 (n + 1)

end A047236

/-! ## A047236.P6732574082763612180

`record[xor(1, n)-n%3]`
-/

namespace A047236.P6732574082763612180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) - ((n % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047236.P6732574082763612180

namespace A047236

/-- `record[xor(1, n)-n%3]` -/
def P6732574082763612180.Spec : Prop :=
  ∀ n, P6732574082763612180.a n = A047236 (n + 1)

end A047236

/-! ## A047236.P16930234937880000543

`comp[∑[dr(3*n)%4]]`
-/

namespace A047236.P16930234937880000543
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * n : ℤ) % 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047236.P16930234937880000543

namespace A047236

/-- `comp[∑[dr(3*n)%4]]` -/
def P16930234937880000543.Spec : Prop :=
  ∀ n, (P16930234937880000543.a n : ℤ) = A047236 (n + 1)

end A047236

/-! ## A047236.P1803864941984034465

`∑[ceil(ϕ^((n-1)%3))]`
-/

namespace A047236.P1803864941984034465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ (Int.tmod ((n : ℤ) - 1) 3 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047236.P1803864941984034465

namespace A047236

/-- `∑[ceil(ϕ^((n-1)%3))]` -/
def P1803864941984034465.Spec : Prop :=
  ∀ n, P1803864941984034465.a n = A047236 (n + 1)

end A047236

/-! ## A047236.P9704589469088052480

`abs(a(n-3)+6)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A047236.P9704589469088052480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 3) + 6

end

end A047236.P9704589469088052480

namespace A047236

/-- `abs(a(n-3)+6)` -/
def P9704589469088052480.Spec : Prop :=
  ∀ n, (P9704589469088052480.a n : ℤ) = A047236 (n + 1)

end A047236

/-! ## A047236.P5188024161784290720

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A047236.P5188024161784290720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047236.P5188024161784290720

namespace A047236

/-- `∑[abs(a(n-3))]` -/
def P5188024161784290720.Spec : Prop :=
  ∀ n, (P5188024161784290720.a n : ℤ) = A047236 (n + 1)

end A047236

/-! ## A047236.P3273217912885913168

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A047236.P3273217912885913168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047236.P3273217912885913168

namespace A047236

/-- `∑[dr(a(n-3))]` -/
def P3273217912885913168.Spec : Prop :=
  ∀ n, (P3273217912885913168.a n : ℤ) = A047236 (n + 1)

end A047236

/-! ## A047236.P7737843726027465614

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047236.P7737843726027465614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047236.P7737843726027465614

namespace A047236

/-- `∑[floor(a(n-3))]` -/
def P7737843726027465614.Spec : Prop :=
  ∀ n, (P7737843726027465614.a n : ℤ) = A047236 (n + 1)

end A047236

/-! ## A047236.P12626037119993298629

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A047236.P12626037119993298629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047236.P12626037119993298629

namespace A047236

/-- `∑[ceil(a(n-3))]` -/
def P12626037119993298629.Spec : Prop :=
  ∀ n, (P12626037119993298629.a n : ℤ) = A047236 (n + 1)

end A047236

/-! ## A047236.P4478999785345674099

`∑[round(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

`round` is left out, it is the identity on integers.
-/

namespace A047236.P4478999785345674099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047236.P4478999785345674099

namespace A047236

/-- `∑[round(a(n-3))]` -/
def P4478999785345674099.Spec : Prop :=
  ∀ n, (P4478999785345674099.a n : ℤ) = A047236 (n + 1)

end A047236

/-! ## A047236.P5042328888672578389

`floor(gcd(3, n)/2+2*n)`
-/

namespace A047236.P5042328888672578389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd 3 n : ℚ) / 2 + (2 * n : ℚ)⌋

end

end A047236.P5042328888672578389

namespace A047236

/-- `floor(gcd(3, n)/2+2*n)` -/
def P5042328888672578389.Spec : Prop :=
  ∀ n, P5042328888672578389.a n = A047236 (n + 1)

end A047236

/-! ## A047236.P16822465463704207900

`comp[n*(n+1)%3-3]`
-/

namespace A047236.P16822465463704207900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * ((n + 1) % 3) : ℕ) : ℤ) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047236.P16822465463704207900

namespace A047236

/-- `comp[n*(n+1)%3-3]` -/
def P16822465463704207900.Spec : Prop :=
  ∀ n, (P16822465463704207900.a n : ℤ) = A047236 (n + 1)

end A047236

/-! ## A047236.P12187380937064856153

`∑[and(3, a(n-3))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A047236.P12187380937064856153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3] fun n f1 =>
  Nat.land 3 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047236.P12187380937064856153

namespace A047236

/-- `∑[and(3, a(n-3))]` -/
def P12187380937064856153.Spec : Prop :=
  ∀ n, (P12187380937064856153.a n : ℤ) = A047236 (n + 1)

end A047236

/-! ## A047236.P17773855433565364355

`∑[a(n-1)%3+1]` with `a(0)=1, a(1)=1`
-/

namespace A047236.P17773855433565364355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) % 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047236.P17773855433565364355

namespace A047236

/-- `∑[a(n-1)%3+1]` -/
def P17773855433565364355.Spec : Prop :=
  ∀ n, (P17773855433565364355.a n : ℤ) = A047236 (n + 1)

end A047236

/-! ## A047236.P6705246137632490662

`∑[a(n-3)%n]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A047236.P6705246137632490662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3] fun n f1 =>
  f1 (n - 3) % n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047236.P6705246137632490662

namespace A047236

/-- `∑[a(n-3)%n]` -/
def P6705246137632490662.Spec : Prop :=
  ∀ n, (P6705246137632490662.a n : ℤ) = A047236 (n + 1)

end A047236

/-! ## A047236.P562262638443292040

`lt[val(n+1, 6), (2*n)%3]`
-/

namespace A047236.P562262638443292040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047236.P562262638443292040

namespace A047236

/-- `lt[val(n+1, 6), (2*n)%3]` -/
def P562262638443292040.Spec : Prop :=
  ∀ n, (P562262638443292040.a n : ℤ) = A047236 (n + 1)

end A047236

/-! ## A047236.P16498147429641785051

`abs(2*n+1-n²%3)`
-/

namespace A047236.P16498147429641785051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) - ((n ^ 2 % 3 : ℕ) : ℤ)|

end

end A047236.P16498147429641785051

namespace A047236

/-- `abs(2*n+1-n²%3)` -/
def P16498147429641785051.Spec : Prop :=
  ∀ n, P16498147429641785051.a n = A047236 (n + 1)

end A047236

/-!
# A047237: Numbers that are congruent to {0, 1, 2, 4} mod 6.

The programs for A047237, the canonical program `A047237.P11499323888522605392` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047237 has offset 1).

The definition of A047237 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047237.P11499323888522605392

`a(n-4)+6` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047237

/-- `a(n-4)+6` -/
def P11499323888522605392.Spec : Prop :=
  ∀ n, (P11499323888522605392.a n : ℤ) = A047237 (n + 1)

theorem P11499323888522605392.correct : P11499323888522605392.Spec := by
  intro n
  simp only [A047237, Nat.add_sub_cancel]

end A047237

/-! ## A047237.P13439042082304682496

`A047255(n+1)-1`
-/

namespace A047237.P13439042082304682496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (n + 1) - 1

end

end A047237.P13439042082304682496

namespace A047237

/-- `A047255(n+1)-1` -/
def P13439042082304682496.Spec : Prop :=
  ∀ n, P13439042082304682496.a n = A047237 (n + 1)

end A047237

/-! ## A047237.P5251607843865325388

`∑[gcd(2, ∑[n])]-2`
-/

namespace A047237.P5251607843865325388
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A047237.P5251607843865325388

namespace A047237

/-- `∑[gcd(2, ∑[n])]-2` -/
def P5251607843865325388.Spec : Prop :=
  ∀ n, P5251607843865325388.a n = A047237 (n + 1)

end A047237

/-! ## A047237.P4267987841785132282

`comp[or(1, 3*n-1)]`
-/

namespace A047237.P4267987841785132282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((3 * n : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047237.P4267987841785132282

namespace A047237

/-- `comp[or(1, 3*n-1)]` -/
def P4267987841785132282.Spec : Prop :=
  ∀ n, (P4267987841785132282.a n : ℤ) = A047237 (n + 1)

end A047237

/-! ## A047237.P17190043606570828048

`comp[or(1, 3*n)+2]`
-/

namespace A047237.P17190043606570828048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047237.P17190043606570828048

namespace A047237

/-- `comp[or(1, 3*n)+2]` -/
def P17190043606570828048.Spec : Prop :=
  ∀ n, (P17190043606570828048.a n : ℤ) = A047237 (n + 1)

end A047237

/-! ## A047237.P10139505600450098873

`comp[gcd(3, n)+2*n]`
-/

namespace A047237.P10139505600450098873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n + 2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047237.P10139505600450098873

namespace A047237

/-- `comp[gcd(3, n)+2*n]` -/
def P10139505600450098873.Spec : Prop :=
  ∀ n, (P10139505600450098873.a n : ℤ) = A047237 (n + 1)

end A047237

/-! ## A047237.P4342357347257830869

`comp[and(3*n, -2)+3]`
-/

namespace A047237.P4342357347257830869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n : ℤ) (-2) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047237.P4342357347257830869

namespace A047237

/-- `comp[and(3*n, -2)+3]` -/
def P4342357347257830869.Spec : Prop :=
  ∀ n, (P4342357347257830869.a n : ℤ) = A047237 (n + 1)

end A047237

/-! ## A047237.P1730202709006459531

`∑[C(2, a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A047237.P1730202709006459531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Nat.choose 2 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047237.P1730202709006459531

namespace A047237

/-- `∑[C(2, a(n-2))]` -/
def P1730202709006459531.Spec : Prop :=
  ∀ n, (P1730202709006459531.a n : ℤ) = A047237 (n + 1)

end A047237

/-! ## A047237.P5127761349595350176

`comp[a(n-2)+6]` with `a(0)=3, a(1)=5`
-/

namespace A047237.P5127761349595350176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  f1 (n - 2) + 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047237.P5127761349595350176

namespace A047237

/-- `comp[a(n-2)+6]` -/
def P5127761349595350176.Spec : Prop :=
  ∀ n, (P5127761349595350176.a n : ℤ) = A047237 (n + 1)

end A047237

/-! ## A047237.P15956196769599931364

`∑[and(2, n-1)!]-2`
-/

namespace A047237.P15956196769599931364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land 2 ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A047237.P15956196769599931364

namespace A047237

/-- `∑[and(2, n-1)!]-2` -/
def P15956196769599931364.Spec : Prop :=
  ∀ n, P15956196769599931364.a n = A047237 (n + 1)

end A047237

/-! ## A047237.P7916960078591605090

`∪[2*n, 3*n+1]`
-/

namespace A047237.P7916960078591605090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A047237.P7916960078591605090

namespace A047237

/-- `∪[2*n, 3*n+1]` -/
def P7916960078591605090.Spec : Prop :=
  ∀ n, (P7916960078591605090.a n : ℤ) = A047237 (n + 1)

end A047237

/-! ## A047237.P12172321120559164115

`∑[(∑[n]-1)%2+1]`
-/

namespace A047237.P12172321120559164115
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047237.P12172321120559164115

namespace A047237

/-- `∑[(∑[n]-1)%2+1]` -/
def P12172321120559164115.Spec : Prop :=
  ∀ n, P12172321120559164115.a n = A047237 (n + 1)

end A047237

/-! ## A047237.P8791750695139585001

`∑[1-(1-∑[n])%2]`
-/

namespace A047237.P8791750695139585001
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047237.P8791750695139585001

namespace A047237

/-- `∑[1-(1-∑[n])%2]` -/
def P8791750695139585001.Spec : Prop :=
  ∀ n, P8791750695139585001.a n = A047237 (n + 1)

end A047237

/-! ## A047237.P13137694873855265897

`∑[2-and(1, ∑[n])]-2`
-/

namespace A047237.P13137694873855265897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A047237.P13137694873855265897

namespace A047237

/-- `∑[2-and(1, ∑[n])]-2` -/
def P13137694873855265897.Spec : Prop :=
  ∀ n, P13137694873855265897.a n = A047237 (n + 1)

end A047237

/-! ## A047237.P5808396681305798294

`comp[2*comp[3*n]+1]`
-/

namespace A047237.P5808396681305798294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047237.P5808396681305798294

namespace A047237

/-- `comp[2*comp[3*n]+1]` -/
def P5808396681305798294.Spec : Prop :=
  ∀ n, (P5808396681305798294.a n : ℤ) = A047237 (n + 1)

end A047237

/-! ## A047237.P16764514159548265647

`∑[3-a(n-2)]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A047237.P16764514159548265647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  3 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047237.P16764514159548265647

namespace A047237

/-- `∑[3-a(n-2)]` -/
def P16764514159548265647.Spec : Prop :=
  ∀ n, P16764514159548265647.a n = A047237 (n + 1)

end A047237

/-! ## A047237.P16422157611368566538

`∑[a(and(2, n+3))+1]` with `a(0)=0`
-/

namespace A047237.P16422157611368566538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (Nat.land 2 (n + 3)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047237.P16422157611368566538

namespace A047237

/-- `∑[a(and(2, n+3))+1]` -/
def P16422157611368566538.Spec : Prop :=
  ∀ n, (P16422157611368566538.a n : ℤ) = A047237 (n + 1)

end A047237

/-! ## A047237.P18026479032086002734

`∑[gcd(2%(n+1), ∑[n²])]`
-/

namespace A047237.P18026479032086002734
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 % (n + 1)) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047237.P18026479032086002734

namespace A047237

/-- `∑[gcd(2%(n+1), ∑[n²])]` -/
def P18026479032086002734.Spec : Prop :=
  ∀ n, (P18026479032086002734.a n : ℤ) = A047237 (n + 1)

end A047237

/-! ## A047237.P12504789382036564761

`eq[0, val((n+1)*(n+3), 6)]`
-/

namespace A047237.P12504789382036564761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) * (n + 3)) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047237.P12504789382036564761

namespace A047237

/-- `eq[0, val((n+1)*(n+3), 6)]` -/
def P12504789382036564761.Spec : Prop :=
  ∀ n, (P12504789382036564761.a n : ℤ) = A047237 (n + 1)

end A047237

/-!
# A047238: Numbers that are congruent to {0, 2} mod 6.

The programs for A047238, the canonical program `A047238.P10963973165371707935` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047238 has offset 1).

The definition of A047238 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047238.P10963973165371707935

`2*floor(3*n/2)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047238

/-- `2*floor(3*n/2)` -/
def P10963973165371707935.Spec : Prop :=
  ∀ n, P10963973165371707935.a n = A047238 (n + 1)

theorem P10963973165371707935.correct : P10963973165371707935.Spec := by
  intro n
  simp only [A047238, Nat.add_sub_cancel]

end A047238

/-! ## A047238.P8023144525456807331

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=2, a(2)=6`
-/

namespace A047238.P8023144525456807331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 6] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A047238.P8023144525456807331

namespace A047238

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P8023144525456807331.Spec : Prop :=
  ∀ n, P8023144525456807331.a n = A047238 (n + 1)

end A047238

/-! ## A047238.P10053563318048818980

`and(3*n, -2)`
-/

namespace A047238.P10053563318048818980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n : ℤ) (-2)

end

end A047238.P10053563318048818980

namespace A047238

/-- `and(3*n, -2)` -/
def P10053563318048818980.Spec : Prop :=
  ∀ n, P10053563318048818980.a n = A047238 (n + 1)

end A047238

/-! ## A047238.P5988591403370007612

`comp[or(2, n)]+n`
-/

namespace A047238.P5988591403370007612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n

end

end A047238.P5988591403370007612

namespace A047238

/-- `comp[or(2, n)]+n` -/
def P5988591403370007612.Spec : Prop :=
  ∀ n, (P5988591403370007612.a n : ℤ) = A047238 (n + 1)

end A047238

/-! ## A047238.P633596921135135227

`or(1, 3*n)-1`
-/

namespace A047238.P633596921135135227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (3 * n) : ℤ) - 1

end

end A047238.P633596921135135227

namespace A047238

/-- `or(1, 3*n)-1` -/
def P633596921135135227.Spec : Prop :=
  ∀ n, P633596921135135227.a n = A047238 (n + 1)

end A047238

/-! ## A047238.P17299127484372546281

`xor(1, or(1, 3*n))`
-/

namespace A047238.P17299127484372546281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 (3 * n))

end

end A047238.P17299127484372546281

namespace A047238

/-- `xor(1, or(1, 3*n))` -/
def P17299127484372546281.Spec : Prop :=
  ∀ n, (P17299127484372546281.a n : ℤ) = A047238 (n + 1)

end A047238

/-! ## A047238.P8558337790777347988

`3*n-n%2`
-/

namespace A047238.P8558337790777347988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - ((n % 2 : ℕ) : ℤ)

end

end A047238.P8558337790777347988

namespace A047238

/-- `3*n-n%2` -/
def P8558337790777347988.Spec : Prop :=
  ∀ n, P8558337790777347988.a n = A047238 (n + 1)

end A047238

/-! ## A047238.P16778079775764187846

`lt[n, or(2, n)]+n`
-/

namespace A047238.P16778079775764187846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + n

end

end A047238.P16778079775764187846

namespace A047238

/-- `lt[n, or(2, n)]+n` -/
def P16778079775764187846.Spec : Prop :=
  ∀ n, (P16778079775764187846.a n : ℤ) = A047238 (n + 1)

end A047238

/-! ## A047238.P12687854041625294554

`record[n²%6+n]`
-/

namespace A047238.P12687854041625294554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 6 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047238.P12687854041625294554

namespace A047238

/-- `record[n²%6+n]` -/
def P12687854041625294554.Spec : Prop :=
  ∀ n, (P12687854041625294554.a n : ℤ) = A047238 (n + 1)

end A047238

/-! ## A047238.P2178335731264413713

`lt[n, xor(2, n)]+n`
-/

namespace A047238.P2178335731264413713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + n

end

end A047238.P2178335731264413713

namespace A047238

/-- `lt[n, xor(2, n)]+n` -/
def P2178335731264413713.Spec : Prop :=
  ∀ n, (P2178335731264413713.a n : ℤ) = A047238 (n + 1)

end A047238

/-! ## A047238.P16022394277427418231

`record[and(n, -3)]+n`
-/

namespace A047238.P16022394277427418231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A047238.P16022394277427418231

namespace A047238

/-- `record[and(n, -3)]+n` -/
def P16022394277427418231.Spec : Prop :=
  ∀ n, P16022394277427418231.a n = A047238 (n + 1)

end A047238

/-! ## A047238.P12821072358519299377

`a(n-2)+6` with `a(0)=0, a(1)=2`
-/

namespace A047238.P12821072358519299377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) + 6

end

end A047238.P12821072358519299377

namespace A047238

/-- `a(n-2)+6` -/
def P12821072358519299377.Spec : Prop :=
  ∀ n, (P12821072358519299377.a n : ℤ) = A047238 (n + 1)

end A047238

/-! ## A047238.P952976015190975326

`∑[2*gcd(2, n)]-4`
-/

namespace A047238.P952976015190975326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A047238.P952976015190975326

namespace A047238

/-- `∑[2*gcd(2, n)]-4` -/
def P952976015190975326.Spec : Prop :=
  ∀ n, P952976015190975326.a n = A047238 (n + 1)

end A047238

/-! ## A047238.P5943564360171938976

`2*comp[lcm(3, n)]-2`
-/

namespace A047238.P5943564360171938976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 2

end

end A047238.P5943564360171938976

namespace A047238

/-- `2*comp[lcm(3, n)]-2` -/
def P5943564360171938976.Spec : Prop :=
  ∀ n, P5943564360171938976.a n = A047238 (n + 1)

end A047238

/-! ## A047238.P102429011199112033

`-n%2+3*n`
-/

namespace A047238.P102429011199112033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(n : ℤ)) 2 + (3 * n : ℤ)

end

end A047238.P102429011199112033

namespace A047238

/-- `-n%2+3*n` -/
def P102429011199112033.Spec : Prop :=
  ∀ n, P102429011199112033.a n = A047238 (n + 1)

end A047238

/-! ## A047238.P6022776123838543097

`record[or(2, n)-2]+n`
-/

namespace A047238.P6022776123838543097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A047238.P6022776123838543097

namespace A047238

/-- `record[or(2, n)-2]+n` -/
def P6022776123838543097.Spec : Prop :=
  ∀ n, P6022776123838543097.a n = A047238 (n + 1)

end A047238

/-! ## A047238.P3746400157880872724

`record[or(2, n)]-(2-n)`
-/

namespace A047238.P3746400157880872724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (2 - (n : ℤ))

end

end A047238.P3746400157880872724

namespace A047238

/-- `record[or(2, n)]-(2-n)` -/
def P3746400157880872724.Spec : Prop :=
  ∀ n, P3746400157880872724.a n = A047238 (n + 1)

end A047238

/-! ## A047238.P13474777921979671439

`record[xor(2, n)-2]+n`
-/

namespace A047238.P13474777921979671439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A047238.P13474777921979671439

namespace A047238

/-- `record[xor(2, n)-2]+n` -/
def P13474777921979671439.Spec : Prop :=
  ∀ n, P13474777921979671439.a n = A047238 (n + 1)

end A047238

/-! ## A047238.P9493339969143960718

`record[xor(2, n)]-(2-n)`
-/

namespace A047238.P9493339969143960718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (2 - (n : ℤ))

end

end A047238.P9493339969143960718

namespace A047238

/-- `record[xor(2, n)]-(2-n)` -/
def P9493339969143960718.Spec : Prop :=
  ∀ n, P9493339969143960718.a n = A047238 (n + 1)

end A047238

/-! ## A047238.P5916445227849116019

`3*n-A000035(n)`
-/

namespace A047238.P5916445227849116019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A000035 n

end

end A047238.P5916445227849116019

namespace A047238

/-- `3*n-A000035(n)` -/
def P5916445227849116019.Spec : Prop :=
  ∀ n, P5916445227849116019.a n = A047238 (n + 1)

end A047238

/-!
# A047239: Numbers that are congruent to {1, 2} (mod 6).

The programs for A047239, the canonical program `A047239.P9092031145545312968` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047239 has offset 1).

The definition of A047239 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047239.P9092031145545312968

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=7`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047239

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P9092031145545312968.Spec : Prop :=
  ∀ n, P9092031145545312968.a n = A047239 (n + 1)

theorem P9092031145545312968.correct : P9092031145545312968.Spec := by
  intro n
  simp only [A047239, Nat.add_sub_cancel]

end A047239

/-! ## A047239.P13567178709053326936

`xor(1, 3*n)`
-/

namespace A047239.P13567178709053326936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n)

end

end A047239.P13567178709053326936

namespace A047239

/-- `xor(1, 3*n)` -/
def P13567178709053326936.Spec : Prop :=
  ∀ n, (P13567178709053326936.a n : ℤ) = A047239 (n + 1)

end A047239

/-! ## A047239.P16274369617911303590

`comp[xor(n, gcd(3, n))]`
-/

namespace A047239.P16274369617911303590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.gcd 3 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047239.P16274369617911303590

namespace A047239

/-- `comp[xor(n, gcd(3, n))]` -/
def P16274369617911303590.Spec : Prop :=
  ∀ n, (P16274369617911303590.a n : ℤ) = A047239 (n + 1)

end A047239

/-! ## A047239.P1583607720982058184

`xor(1, n)+n+n`
-/

namespace A047239.P1583607720982058184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + n + n

end

end A047239.P1583607720982058184

namespace A047239

/-- `xor(1, n)+n+n` -/
def P1583607720982058184.Spec : Prop :=
  ∀ n, (P1583607720982058184.a n : ℤ) = A047239 (n + 1)

end A047239

/-! ## A047239.P6953369611110578882

`comp[xor(n, n²%3)]`
-/

namespace A047239.P6953369611110578882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n ^ 2 % 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047239.P6953369611110578882

namespace A047239

/-- `comp[xor(n, n²%3)]` -/
def P6953369611110578882.Spec : Prop :=
  ∀ n, (P6953369611110578882.a n : ℤ) = A047239 (n + 1)

end A047239

/-! ## A047239.P16055330668405616441

`(-1)^n+3*n`
-/

namespace A047239.P16055330668405616441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + (3 * n : ℤ)

end

end A047239.P16055330668405616441

namespace A047239

/-- `(-1)^n+3*n` -/
def P16055330668405616441.Spec : Prop :=
  ∀ n, P16055330668405616441.a n = A047239 (n + 1)

end A047239

/-! ## A047239.P12020142397173276152

`∑[gcd(5, (n%2)^n)]`
-/

namespace A047239.P12020142397173276152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 ((n % 2) ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047239.P12020142397173276152

namespace A047239

/-- `∑[gcd(5, (n%2)^n)]` -/
def P12020142397173276152.Spec : Prop :=
  ∀ n, (P12020142397173276152.a n : ℤ) = A047239 (n + 1)

end A047239

/-! ## A047239.P17948611493934935395

`abs(a(n-2)+6)` with `a(0)=1, a(1)=2`
-/

namespace A047239.P17948611493934935395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + 6

end

end A047239.P17948611493934935395

namespace A047239

/-- `abs(a(n-2)+6)` -/
def P17948611493934935395.Spec : Prop :=
  ∀ n, (P17948611493934935395.a n : ℤ) = A047239 (n + 1)

end A047239

/-! ## A047239.P18291314153574704489

`∑[6-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A047239.P18291314153574704489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047239.P18291314153574704489

namespace A047239

/-- `∑[6-a(n-1)]` -/
def P18291314153574704489.Spec : Prop :=
  ∀ n, P18291314153574704489.a n = A047239 (n + 1)

end A047239

/-! ## A047239.P4441804081595330938

`∑[ceil(5^((n-1)%2))]`
-/

namespace A047239.P4441804081595330938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(5 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) 2 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047239.P4441804081595330938

namespace A047239

/-- `∑[ceil(5^((n-1)%2))]` -/
def P4441804081595330938.Spec : Prop :=
  ∀ n, P4441804081595330938.a n = A047239 (n + 1)

end A047239

/-! ## A047239.P1652007530602571040

`abs(1-(2*or(1, n)+n))`
-/

namespace A047239.P1652007530602571040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * Nat.lor 1 n + n : ℤ)|

end

end A047239.P1652007530602571040

namespace A047239

/-- `abs(1-(2*or(1, n)+n))` -/
def P1652007530602571040.Spec : Prop :=
  ∀ n, P1652007530602571040.a n = A047239 (n + 1)

end A047239

/-! ## A047239.P18353217982214433385

`abs(1-2*or(1, n)-n)`
-/

namespace A047239.P18353217982214433385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * Nat.lor 1 n : ℤ) - (n : ℤ)|

end

end A047239.P18353217982214433385

namespace A047239

/-- `abs(1-2*or(1, n)-n)` -/
def P18353217982214433385.Spec : Prop :=
  ∀ n, P18353217982214433385.a n = A047239 (n + 1)

end A047239

/-! ## A047239.P15245686172659236765

`ceil(2*or(1, n)-ϕ+n)`
-/

namespace A047239.P15245686172659236765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * Nat.lor 1 n : ℝ) - Real.goldenRatio + (n : ℝ)⌉

end

end A047239.P15245686172659236765

namespace A047239

/-- `ceil(2*or(1, n)-ϕ+n)` -/
def P15245686172659236765.Spec : Prop :=
  ∀ n, P15245686172659236765.a n = A047239 (n + 1)

end A047239

/-! ## A047239.P4085057154224735359

`floor(or(3, 2*n)-ϕ+n)`
-/

namespace A047239.P4085057154224735359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 3 (2 * n) : ℝ) - Real.goldenRatio + (n : ℝ)⌋

end

end A047239.P4085057154224735359

namespace A047239

/-- `floor(or(3, 2*n)-ϕ+n)` -/
def P4085057154224735359.Spec : Prop :=
  ∀ n, P4085057154224735359.a n = A047239 (n + 1)

end A047239

/-! ## A047239.P8014979151688459286

`ceil(n-(ϕ-2*or(1, n)))`
-/

namespace A047239.P8014979151688459286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - (Real.goldenRatio - (2 * Nat.lor 1 n : ℝ))⌉

end

end A047239.P8014979151688459286

namespace A047239

/-- `ceil(n-(ϕ-2*or(1, n)))` -/
def P8014979151688459286.Spec : Prop :=
  ∀ n, P8014979151688459286.a n = A047239 (n + 1)

end A047239

/-! ## A047239.P4793462564449515121

`floor(or(3, 2*n)-(ϕ-n))`
-/

namespace A047239.P4793462564449515121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 3 (2 * n) : ℝ) - (Real.goldenRatio - (n : ℝ))⌋

end

end A047239.P4793462564449515121

namespace A047239

/-- `floor(or(3, 2*n)-(ϕ-n))` -/
def P4793462564449515121.Spec : Prop :=
  ∀ n, P4793462564449515121.a n = A047239 (n + 1)

end A047239

/-! ## A047239.P18224671843918605325

`round(or(3, 2*n)-ϕ+n)`
-/

namespace A047239.P18224671843918605325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 3 (2 * n) : ℝ) - Real.goldenRatio + (n : ℝ))

end

end A047239.P18224671843918605325

namespace A047239

/-- `round(or(3, 2*n)-ϕ+n)` -/
def P18224671843918605325.Spec : Prop :=
  ∀ n, P18224671843918605325.a n = A047239 (n + 1)

end A047239

/-! ## A047239.P5849385062635457924

`round(or(3, 2*n)-(ϕ-n))`
-/

namespace A047239.P5849385062635457924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 3 (2 * n) : ℝ) - (Real.goldenRatio - (n : ℝ)))

end

end A047239.P5849385062635457924

namespace A047239

/-- `round(or(3, 2*n)-(ϕ-n))` -/
def P5849385062635457924.Spec : Prop :=
  ∀ n, P5849385062635457924.a n = A047239 (n + 1)

end A047239

/-!
# A047240: Numbers that are congruent to {0, 1, 2} mod 6.

The programs for A047240, the canonical program `A047240.P8687498487400877813` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047240 has offset 1).

The definition of A047240 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047240.P8687498487400877813

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047240

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P8687498487400877813.Spec : Prop :=
  ∀ n, P8687498487400877813.a n = A047240 (n + 1)

theorem P8687498487400877813.correct : P8687498487400877813.Spec := by
  intro n
  simp only [A047240, Nat.add_sub_cancel]

end A047240

/-! ## A047240.P7652133456909721972

`2*n-n%3`
-/

namespace A047240.P7652133456909721972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n % 3 : ℕ) : ℤ)

end

end A047240.P7652133456909721972

namespace A047240

/-- `2*n-n%3` -/
def P7652133456909721972.Spec : Prop :=
  ∀ n, P7652133456909721972.a n = A047240 (n + 1)

end A047240

/-! ## A047240.P1384490269893620031

`∑[dr(n^6)%5]`
-/

namespace A047240.P1384490269893620031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n ^ 6 : ℤ) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047240.P1384490269893620031

namespace A047240

/-- `∑[dr(n^6)%5]` -/
def P1384490269893620031.Spec : Prop :=
  ∀ n, (P1384490269893620031.a n : ℤ) = A047240 (n + 1)

end A047240

/-! ## A047240.P13886189328143912262

`-n%3+2*n`
-/

namespace A047240.P13886189328143912262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(n : ℤ)) 3 + (2 * n : ℤ)

end

end A047240.P13886189328143912262

namespace A047240

/-- `-n%3+2*n` -/
def P13886189328143912262.Spec : Prop :=
  ∀ n, P13886189328143912262.a n = A047240 (n + 1)

end A047240

/-! ## A047240.P3637041251694481215

`3*floor(n/3)+n`
-/

namespace A047240.P3637041251694481215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(n : ℚ) / 3⌋ + (n : ℤ)

end

end A047240.P3637041251694481215

namespace A047240

/-- `3*floor(n/3)+n` -/
def P3637041251694481215.Spec : Prop :=
  ∀ n, P3637041251694481215.a n = A047240 (n + 1)

end A047240

/-! ## A047240.P623686274669445329

`record[n*(-1)^floor(n/3)]`
-/

namespace A047240.P623686274669445329
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (-1 : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047240.P623686274669445329

namespace A047240

/-- `record[n*(-1)^floor(n/3)]` -/
def P623686274669445329.Spec : Prop :=
  ∀ n, P623686274669445329.a n = (A047240 (n + 1) : ℚ)

end A047240

/-! ## A047240.P361802671053262258

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A047240.P361802671053262258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047240.P361802671053262258

namespace A047240

/-- `∑[floor(a(n-3))]` -/
def P361802671053262258.Spec : Prop :=
  ∀ n, (P361802671053262258.a n : ℤ) = A047240 (n + 1)

end A047240

/-! ## A047240.P6208397492787237737

`∑[n²%∑[(n+2)%3]]`
-/

namespace A047240.P6208397492787237737
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047240.P6208397492787237737

namespace A047240

/-- `∑[n²%∑[(n+2)%3]]` -/
def P6208397492787237737.Spec : Prop :=
  ∀ n, (P6208397492787237737.a n : ℤ) = A047240 (n + 1)

end A047240

/-! ## A047240.P13832403971733241602

`∑[a(n-3)%5]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A047240.P13832403971733241602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 4] fun n f1 =>
  f1 (n - 3) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047240.P13832403971733241602

namespace A047240

/-- `∑[a(n-3)%5]` -/
def P13832403971733241602.Spec : Prop :=
  ∀ n, (P13832403971733241602.a n : ℤ) = A047240 (n + 1)

end A047240

/-! ## A047240.P12368849445151046190

`∑[(2-a(n-3))²]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A047240.P12368849445151046190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  (2 - f1 (n - 3)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047240.P12368849445151046190

namespace A047240

/-- `∑[(2-a(n-3))²]` -/
def P12368849445151046190.Spec : Prop :=
  ∀ n, P12368849445151046190.a n = A047240 (n + 1)

end A047240

/-! ## A047240.P526158182679765495

`comp[3*n-a(n-2)]` with `a(0)=3, a(1)=4`
-/

namespace A047240.P526158182679765495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  (3 * n : ℤ) - f1 (n - 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047240.P526158182679765495

namespace A047240

/-- `comp[3*n-a(n-2)]` -/
def P526158182679765495.Spec : Prop :=
  ∀ n, (P526158182679765495.a n : ℤ) = A047240 (n + 1)

end A047240

/-! ## A047240.P13695072722116967844

`∑[4^a(∑[n+1]%3)]` with `a(0)=0`
-/

namespace A047240.P13695072722116967844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  4 ^ f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047240.P13695072722116967844

namespace A047240

/-- `∑[4^a(∑[n+1]%3)]` -/
def P13695072722116967844.Spec : Prop :=
  ∀ n, (P13695072722116967844.a n : ℤ) = A047240 (n + 1)

end A047240

/-! ## A047240.P3286609261486023786

`Δ[(1-n)²-gcd(3, n)/2]`
-/

namespace A047240.P3286609261486023786
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2 : ℚ) - (Nat.gcd 3 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047240.P3286609261486023786

namespace A047240

/-- `Δ[(1-n)²-gcd(3, n)/2]` -/
def P3286609261486023786.Spec : Prop :=
  ∀ n, P3286609261486023786.a n = (A047240 (n + 1) : ℚ)

end A047240

/-! ## A047240.P6935958295950470988

`floor(a(n-3)+ϕ²²)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A047240.P6935958295950470988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  ⌊(a (n - 3) : ℝ) + (Real.goldenRatio ^ 2) ^ 2⌋

end

end A047240.P6935958295950470988

namespace A047240

/-- `floor(a(n-3)+ϕ²²)` -/
def P6935958295950470988.Spec : Prop :=
  ∀ n, P6935958295950470988.a n = A047240 (n + 1)

end A047240

/-! ## A047240.P1398517578447298912

`2*(a(n-3)/2+3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A047240.P1398517578447298912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  2 * (a (n - 3) / 2 + 3)

end

end A047240.P1398517578447298912

namespace A047240

/-- `2*(a(n-3)/2+3)` -/
def P1398517578447298912.Spec : Prop :=
  ∀ n, P1398517578447298912.a n = (A047240 (n + 1) : ℚ)

end A047240

/-! ## A047240.P12771497132896886813

`∑[4/(5-a(n-3))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A047240.P12771497132896886813
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 1, 4] fun n f1 =>
  4 / (5 - f1 (n - 3))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047240.P12771497132896886813

namespace A047240

/-- `∑[4/(5-a(n-3))]` -/
def P12771497132896886813.Spec : Prop :=
  ∀ n, P12771497132896886813.a n = (A047240 (n + 1) : ℚ)

end A047240

/-! ## A047240.P15798926479884821994

`eq[n, 2*n-a(n-3)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A047240.P15798926479884821994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  (2 * n : ℤ) - f2 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047240.P15798926479884821994

namespace A047240

/-- `eq[n, 2*n-a(n-3)]` -/
def P15798926479884821994.Spec : Prop :=
  ∀ n, (P15798926479884821994.a n : ℤ) = A047240 (n + 1)

end A047240

/-! ## A047240.P1342063160818604313

`lt[n, 2*n-a(n-3)]` with `a(0)=3, a(1)=4, a(2)=5`
-/

namespace A047240.P1342063160818604313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 5] fun n f2 =>
  (2 * n : ℤ) - f2 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A047240.P1342063160818604313

namespace A047240

/-- `lt[n, 2*n-a(n-3)]` -/
def P1342063160818604313.Spec : Prop :=
  ∀ n, (P1342063160818604313.a n : ℤ) = A047240 (n + 1)

end A047240

/-!
# A047241: Numbers that are congruent to {1, 3} mod 6.

The programs for A047241, the canonical program `A047241.P1226178589064476610` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047241 has offset 1).

The definition of A047241 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047241.P1226178589064476610

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=7`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047241

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P1226178589064476610.Spec : Prop :=
  ∀ n, P1226178589064476610.a n = A047241 (n + 1)

theorem P1226178589064476610.correct : P1226178589064476610.Spec := by
  intro n
  simp only [A047241, Nat.add_sub_cancel]

end A047241

/-! ## A047241.P15806892573679377584

`or(1, 3*n)`
-/

namespace A047241.P15806892573679377584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n)

end

end A047241.P15806892573679377584

namespace A047241

/-- `or(1, 3*n)` -/
def P15806892573679377584.Spec : Prop :=
  ∀ n, (P15806892573679377584.a n : ℤ) = A047241 (n + 1)

end A047241

/-! ## A047241.P17694581847833448459

`or(1, n)+n+n`
-/

namespace A047241.P17694581847833448459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + n + n

end

end A047241.P17694581847833448459

namespace A047241

/-- `or(1, n)+n+n` -/
def P17694581847833448459.Spec : Prop :=
  ∀ n, (P17694581847833448459.a n : ℤ) = A047241 (n + 1)

end A047241

/-! ## A047241.P10555982256446356024

`and(3*n, -2)+1`
-/

namespace A047241.P10555982256446356024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n : ℤ) (-2) + 1

end

end A047241.P10555982256446356024

namespace A047241

/-- `and(3*n, -2)+1` -/
def P10555982256446356024.Spec : Prop :=
  ∀ n, P10555982256446356024.a n = A047241 (n + 1)

end A047241

/-! ## A047241.P12231241446875989512

`Δ[n²]+and(n, -2)`
-/

namespace A047241.P12231241446875989512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + Int.land (n : ℤ) (-2)

end

end A047241.P12231241446875989512

namespace A047241

/-- `Δ[n²]+and(n, -2)` -/
def P12231241446875989512.Spec : Prop :=
  ∀ n, P12231241446875989512.a n = A047241 (n + 1)

end A047241

/-! ## A047241.P2766042075447277838

`a(n-2)+6` with `a(0)=1, a(1)=3`
-/

namespace A047241.P2766042075447277838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + 6

end

end A047241.P2766042075447277838

namespace A047241

/-- `a(n-2)+6` -/
def P2766042075447277838.Spec : Prop :=
  ∀ n, (P2766042075447277838.a n : ℤ) = A047241 (n + 1)

end A047241

/-! ## A047241.P10878016514702762085

`xor(1, and(3*n, -2))`
-/

namespace A047241.P10878016514702762085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.land (3 * n : ℤ) (-2))

end

end A047241.P10878016514702762085

namespace A047241

/-- `xor(1, and(3*n, -2))` -/
def P10878016514702762085.Spec : Prop :=
  ∀ n, P10878016514702762085.a n = A047241 (n + 1)

end A047241

/-! ## A047241.P11462782768689505284

`2*comp[3*n]-1`
-/

namespace A047241.P11462782768689505284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 1

end

end A047241.P11462782768689505284

namespace A047241

/-- `2*comp[3*n]-1` -/
def P11462782768689505284.Spec : Prop :=
  ∀ n, P11462782768689505284.a n = A047241 (n + 1)

end A047241

/-! ## A047241.P8936023102761333976

`xor(3*n, char[2*n])`
-/

namespace A047241.P8936023102761333976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (3 * n) (if ∃ j, f1 j = n then 1 else 0)

end

end A047241.P8936023102761333976

namespace A047241

/-- `xor(3*n, char[2*n])` -/
def P8936023102761333976.Spec : Prop :=
  ∀ n, (P8936023102761333976.a n : ℤ) = A047241 (n + 1)

end A047241

/-! ## A047241.P15596081017957892521

`∑[6-a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A047241.P15596081017957892521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047241.P15596081017957892521

namespace A047241

/-- `∑[6-a(n-1)]` -/
def P15596081017957892521.Spec : Prop :=
  ∀ n, P15596081017957892521.a n = A047241 (n + 1)

end A047241

/-! ## A047241.P11929998484191871342

`∑[4/a(n%2)]` with `a(0)=1, a(1)=2`
-/

namespace A047241.P11929998484191871342
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  4 / f1 (n % 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047241.P11929998484191871342

namespace A047241

/-- `∑[4/a(n%2)]` -/
def P11929998484191871342.Spec : Prop :=
  ∀ n, P11929998484191871342.a n = (A047241 (n + 1) : ℚ)

end A047241

/-! ## A047241.P10851932805216444966

`record[n²%6+n+1]`
-/

namespace A047241.P10851932805216444966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 6 + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047241.P10851932805216444966

namespace A047241

/-- `record[n²%6+n+1]` -/
def P10851932805216444966.Spec : Prop :=
  ∀ n, (P10851932805216444966.a n : ℤ) = A047241 (n + 1)

end A047241

/-! ## A047241.P16784153229343972256

`record[xor(n, (1-n)²%6)]`
-/

namespace A047241.P16784153229343972256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.tmod ((1 - (n : ℤ)) ^ 2) 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047241.P16784153229343972256

namespace A047241

/-- `record[xor(n, (1-n)²%6)]` -/
def P16784153229343972256.Spec : Prop :=
  ∀ n, P16784153229343972256.a n = A047241 (n + 1)

end A047241

/-! ## A047241.P14288276055936963687

`∑[2*a(∑[(-1)^n])]` with `a(0)=1`
-/

namespace A047241.P14288276055936963687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047241.P14288276055936963687

namespace A047241

/-- `∑[2*a(∑[(-1)^n])]` -/
def P14288276055936963687.Spec : Prop :=
  ∀ n, (P14288276055936963687.a n : ℤ) = A047241 (n + 1)

end A047241

/-! ## A047241.P2901493865321332211

`∑[2^a(∑[(-1)^n])]` with `a(0)=1`
-/

namespace A047241.P2901493865321332211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 ^ f1 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047241.P2901493865321332211

namespace A047241

/-- `∑[2^a(∑[(-1)^n])]` -/
def P2901493865321332211.Spec : Prop :=
  ∀ n, (P2901493865321332211.a n : ℤ) = A047241 (n + 1)

end A047241

/-! ## A047241.P9756772920955501668

`∑[2^((n-1)%2+1)]`
-/

namespace A047241.P9756772920955501668
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) 2 + 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047241.P9756772920955501668

namespace A047241

/-- `∑[2^((n-1)%2+1)]` -/
def P9756772920955501668.Spec : Prop :=
  ∀ n, P9756772920955501668.a n = (A047241 (n + 1) : ℚ)

end A047241

/-! ## A047241.P4759774486714128694

`floor(gcd(2, n)/2+3*n)`
-/

namespace A047241.P4759774486714128694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd 2 n : ℚ) / 2 + (3 * n : ℚ)⌋

end

end A047241.P4759774486714128694

namespace A047241

/-- `floor(gcd(2, n)/2+3*n)` -/
def P4759774486714128694.Spec : Prop :=
  ∀ n, P4759774486714128694.a n = A047241 (n + 1)

end A047241

/-! ## A047241.P2008310873723533520

`record[lcm(3, n+1)-(n+2)]`
-/

namespace A047241.P2008310873723533520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (n + 1) : ℤ) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047241.P2008310873723533520

namespace A047241

/-- `record[lcm(3, n+1)-(n+2)]` -/
def P2008310873723533520.Spec : Prop :=
  ∀ n, P2008310873723533520.a n = A047241 (n + 1)

end A047241

/-!
# A047242: Numbers that are congruent to {0, 1, 3} mod 6.

The programs for A047242, the canonical program `A047242.P2593984116857713801` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047242 has offset 1).

The definition of A047242 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047242.P2593984116857713801

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047242

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P2593984116857713801.Spec : Prop :=
  ∀ n, P2593984116857713801.a n = A047242 (n + 1)

theorem P2593984116857713801.correct : P2593984116857713801.Spec := by
  intro n
  simp only [A047242, Nat.add_sub_cancel]

end A047242

/-! ## A047242.P1195480096365105171

`∑[dr(3*n)/3]`
-/

namespace A047242.P1195480096365105171
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (3 * n : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047242.P1195480096365105171

namespace A047242

/-- `∑[dr(3*n)/3]` -/
def P1195480096365105171.Spec : Prop :=
  ∀ n, P1195480096365105171.a n = (A047242 (n + 1) : ℚ)

end A047242

/-! ## A047242.P874792910889653615

`∑[dr(n^3)%6]`
-/

namespace A047242.P874792910889653615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n ^ 3 : ℤ) % 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047242.P874792910889653615

namespace A047242

/-- `∑[dr(n^3)%6]` -/
def P874792910889653615.Spec : Prop :=
  ∀ n, (P874792910889653615.a n : ℤ) = A047242 (n + 1)

end A047242

/-! ## A047242.P10288392184035907842

`∑[(n-1)%3+1]`
-/

namespace A047242.P10288392184035907842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047242.P10288392184035907842

namespace A047242

/-- `∑[(n-1)%3+1]` -/
def P10288392184035907842.Spec : Prop :=
  ∀ n, P10288392184035907842.a n = A047242 (n + 1)

end A047242

/-! ## A047242.P11577942127995911151

`∑[1-(1-n)%3]`
-/

namespace A047242.P11577942127995911151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (1 - (n : ℤ)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047242.P11577942127995911151

namespace A047242

/-- `∑[1-(1-n)%3]` -/
def P11577942127995911151.Spec : Prop :=
  ∀ n, P11577942127995911151.a n = A047242 (n + 1)

end A047242

/-! ## A047242.P6212117696201533628

`2*n-n²%3`
-/

namespace A047242.P6212117696201533628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A047242.P6212117696201533628

namespace A047242

/-- `2*n-n²%3` -/
def P6212117696201533628.Spec : Prop :=
  ∀ n, P6212117696201533628.a n = A047242 (n + 1)

end A047242

/-! ## A047242.P10862721817203567900

`ceil(∑[dr(n^3)/3])`
-/

namespace A047242.P10862721817203567900
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (n ^ 3 : ℤ) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A047242.P10862721817203567900

namespace A047242

/-- `ceil(∑[dr(n^3)/3])` -/
def P10862721817203567900.Spec : Prop :=
  ∀ n, P10862721817203567900.a n = A047242 (n + 1)

end A047242

/-! ## A047242.P6078690421691719971

`∑[dr(C(dr(3*n), 3))]`
-/

namespace A047242.P6078690421691719971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.choose (SequenceMachineLib.digitalRoot (3 * n : ℤ)) 3 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047242.P6078690421691719971

namespace A047242

/-- `∑[dr(C(dr(3*n), 3))]` -/
def P6078690421691719971.Spec : Prop :=
  ∀ n, (P6078690421691719971.a n : ℤ) = A047242 (n + 1)

end A047242

/-! ## A047242.P12856744579472273207

`a(n-3)+6` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A047242.P12856744579472273207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 3) + 6

end

end A047242.P12856744579472273207

namespace A047242

/-- `a(n-3)+6` -/
def P12856744579472273207.Spec : Prop :=
  ∀ n, (P12856744579472273207.a n : ℤ) = A047242 (n + 1)

end A047242

/-! ## A047242.P3906550171696502718

`eq[1, gcd(n, (n+1)%3)]`
-/

namespace A047242.P3906550171696502718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n ((n + 1) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047242.P3906550171696502718

namespace A047242

/-- `eq[1, gcd(n, (n+1)%3)]` -/
def P3906550171696502718.Spec : Prop :=
  ∀ n, (P3906550171696502718.a n : ℤ) = A047242 (n + 1)

end A047242

/-! ## A047242.P17882498089719891477

`-n²%3+2*n`
-/

namespace A047242.P17882498089719891477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(n ^ 2 : ℤ)) 3 + (2 * n : ℤ)

end

end A047242.P17882498089719891477

namespace A047242

/-- `-n²%3+2*n` -/
def P17882498089719891477.Spec : Prop :=
  ∀ n, P17882498089719891477.a n = A047242 (n + 1)

end A047242

/-! ## A047242.P14278332950287319180

`2*n-floor(sqrt(n%3))`
-/

namespace A047242.P14278332950287319180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.sqrt (n % 3) : ℤ)

end

end A047242.P14278332950287319180

namespace A047242

/-- `2*n-floor(sqrt(n%3))` -/
def P14278332950287319180.Spec : Prop :=
  ∀ n, P14278332950287319180.a n = A047242 (n + 1)

end A047242

/-! ## A047242.P3970182694130776166

`∑[log2(dr(2^dr(n^3)))]`
-/

namespace A047242.P3970182694130776166
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (SequenceMachineLib.digitalRoot (2 ^ SequenceMachineLib.digitalRoot (n ^ 3 : ℤ) : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047242.P3970182694130776166

namespace A047242

/-- `∑[log2(dr(2^dr(n^3)))]` -/
def P3970182694130776166.Spec : Prop :=
  ∀ n, P3970182694130776166.a n = (A047242 (n + 1) : ℝ)

end A047242

/-! ## A047242.P2004165810775643643

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A047242.P2004165810775643643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047242.P2004165810775643643

namespace A047242

/-- `∑[abs(a(n-3))]` -/
def P2004165810775643643.Spec : Prop :=
  ∀ n, (P2004165810775643643.a n : ℤ) = A047242 (n + 1)

end A047242

/-! ## A047242.P3022813088638395272

`∑[dr(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A047242.P3022813088638395272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047242.P3022813088638395272

namespace A047242

/-- `∑[dr(a(n-3))]` -/
def P3022813088638395272.Spec : Prop :=
  ∀ n, (P3022813088638395272.a n : ℤ) = A047242 (n + 1)

end A047242

/-! ## A047242.P4670294286559470810

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047242.P4670294286559470810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047242.P4670294286559470810

namespace A047242

/-- `∑[floor(a(n-3))]` -/
def P4670294286559470810.Spec : Prop :=
  ∀ n, (P4670294286559470810.a n : ℤ) = A047242 (n + 1)

end A047242

/-! ## A047242.P1045508986287393739

`∑[ceil(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A047242.P1045508986287393739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047242.P1045508986287393739

namespace A047242

/-- `∑[ceil(a(n-3))]` -/
def P1045508986287393739.Spec : Prop :=
  ∀ n, (P1045508986287393739.a n : ℤ) = A047242 (n + 1)

end A047242

/-! ## A047242.P12550505684968325886

`∑[round(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

`round` is left out, it is the identity on integers.
-/

namespace A047242.P12550505684968325886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047242.P12550505684968325886

namespace A047242

/-- `∑[round(a(n-3))]` -/
def P12550505684968325886.Spec : Prop :=
  ∀ n, (P12550505684968325886.a n : ℤ) = A047242 (n + 1)

end A047242

/-! ## A047242.P9584168842062034032

`2*n+char[3*n]-1`
-/

namespace A047242.P9584168842062034032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 1)

end

end A047242.P9584168842062034032

namespace A047242

/-- `2*n+char[3*n]-1` -/
def P9584168842062034032.Spec : Prop :=
  ∀ n, P9584168842062034032.a n = A047242 (n + 1)

end A047242

/-! ## A047242.P7040710359962097401

`record[and(n, n+1)/2+n]`
-/

namespace A047242.P7040710359962097401
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land n (n + 1) : ℚ) / 2 + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047242.P7040710359962097401

namespace A047242

/-- `record[and(n, n+1)/2+n]` -/
def P7040710359962097401.Spec : Prop :=
  ∀ n, P7040710359962097401.a n = (A047242 (n + 1) : ℚ)

end A047242

/-!
# A047243: Numbers that are congruent to {2, 3} mod 6.

The programs for A047243, the canonical program `A047243.P5660519100337839406` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047243 has offset 1).

The definition of A047243 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047243.P5660519100337839406

`a(n-2)+6` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047243

/-- `a(n-2)+6` -/
def P5660519100337839406.Spec : Prop :=
  ∀ n, (P5660519100337839406.a n : ℤ) = A047243 (n + 1)

theorem P5660519100337839406.correct : P5660519100337839406.Spec := by
  intro n
  simp only [A047243, Nat.add_sub_cancel]

end A047243

/-! ## A047243.P13268270772097251932

`abs(xor(3*n, -2))`
-/

namespace A047243.P13268270772097251932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (3 * n : ℤ) (-2)|

end

end A047243.P13268270772097251932

namespace A047243

/-- `abs(xor(3*n, -2))` -/
def P13268270772097251932.Spec : Prop :=
  ∀ n, P13268270772097251932.a n = A047243 (n + 1)

end A047243

/-! ## A047243.P6074148061400354034

`-xor(3*n, -2)`
-/

namespace A047243.P6074148061400354034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (3 * n : ℤ) (-2)

end

end A047243.P6074148061400354034

namespace A047243

/-- `-xor(3*n, -2)` -/
def P6074148061400354034.Spec : Prop :=
  ∀ n, P6074148061400354034.a n = A047243 (n + 1)

end A047243

/-! ## A047243.P6974427880154494705

`xor(1, 3*n)+1`
-/

namespace A047243.P6974427880154494705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n) + 1

end

end A047243.P6974427880154494705

namespace A047243

/-- `xor(1, 3*n)+1` -/
def P6974427880154494705.Spec : Prop :=
  ∀ n, (P6974427880154494705.a n : ℤ) = A047243 (n + 1)

end A047243

/-! ## A047243.P5378268083593257106

`2*or(1, n)+n`
-/

namespace A047243.P5378268083593257106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 1 n + n

end

end A047243.P5378268083593257106

namespace A047243

/-- `2*or(1, n)+n` -/
def P5378268083593257106.Spec : Prop :=
  ∀ n, (P5378268083593257106.a n : ℤ) = A047243 (n + 1)

end A047243

/-! ## A047243.P1962833383934672867

`lcm(2, or(1, n))+n`
-/

namespace A047243.P1962833383934672867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.lor 1 n) + n

end

end A047243.P1962833383934672867

namespace A047243

/-- `lcm(2, or(1, n))+n` -/
def P1962833383934672867.Spec : Prop :=
  ∀ n, (P1962833383934672867.a n : ℤ) = A047243 (n + 1)

end A047243

/-! ## A047243.P1629407181523409821

`Δ[n²]+xor(1, n)`
-/

namespace A047243.P1629407181523409821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.xor 1 n : ℤ)

end

end A047243.P1629407181523409821

namespace A047243

/-- `Δ[n²]+xor(1, n)` -/
def P1629407181523409821.Spec : Prop :=
  ∀ n, P1629407181523409821.a n = A047243 (n + 1)

end A047243

/-! ## A047243.P17240517954765980469

`ceil(xor(3, 6*n)/2)`
-/

namespace A047243.P17240517954765980469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 3 (6 * n) : ℚ) / 2⌉

end

end A047243.P17240517954765980469

namespace A047243

/-- `ceil(xor(3, 6*n)/2)` -/
def P17240517954765980469.Spec : Prop :=
  ∀ n, P17240517954765980469.a n = A047243 (n + 1)

end A047243

/-! ## A047243.P6460119874860407164

`round(xor(3, 6*n)/2)`
-/

namespace A047243.P6460119874860407164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 3 (6 * n) : ℚ) / 2)

end

end A047243.P6460119874860407164

namespace A047243

/-- `round(xor(3, 6*n)/2)` -/
def P6460119874860407164.Spec : Prop :=
  ∀ n, P6460119874860407164.a n = A047243 (n + 1)

end A047243

/-! ## A047243.P6768815286629078205

`∑[gcd(5, n%2)]-3`
-/

namespace A047243.P6768815286629078205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A047243.P6768815286629078205

namespace A047243

/-- `∑[gcd(5, n%2)]-3` -/
def P6768815286629078205.Spec : Prop :=
  ∀ n, P6768815286629078205.a n = A047243 (n + 1)

end A047243

/-! ## A047243.P6228834509363920075

`record[or(5, n)]-(n+3)`
-/

namespace A047243.P6228834509363920075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n + 3 : ℤ)

end

end A047243.P6228834509363920075

namespace A047243

/-- `record[or(5, n)]-(n+3)` -/
def P6228834509363920075.Spec : Prop :=
  ∀ n, P6228834509363920075.a n = A047243 (n + 1)

end A047243

/-! ## A047243.P16994265931498293341

`record[or(5, n)-3]-n`
-/

namespace A047243.P16994265931498293341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A047243.P16994265931498293341

namespace A047243

/-- `record[or(5, n)-3]-n` -/
def P16994265931498293341.Spec : Prop :=
  ∀ n, P16994265931498293341.a n = A047243 (n + 1)

end A047243

/-! ## A047243.P9269978870440362787

`record[xor(5, n)]-(n+3)`
-/

namespace A047243.P9269978870440362787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n + 3 : ℤ)

end

end A047243.P9269978870440362787

namespace A047243

/-- `record[xor(5, n)]-(n+3)` -/
def P9269978870440362787.Spec : Prop :=
  ∀ n, P9269978870440362787.a n = A047243 (n + 1)

end A047243

/-! ## A047243.P6552839385735101936

`record[xor(5, n)-3]-n`
-/

namespace A047243.P6552839385735101936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 5 n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A047243.P6552839385735101936

namespace A047243

/-- `record[xor(5, n)-3]-n` -/
def P6552839385735101936.Spec : Prop :=
  ∀ n, P6552839385735101936.a n = A047243 (n + 1)

end A047243

/-! ## A047243.P13488538899752096767

`comp[xor(n, gcd(3, n))]+1`
-/

namespace A047243.P13488538899752096767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.gcd 3 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A047243.P13488538899752096767

namespace A047243

/-- `comp[xor(n, gcd(3, n))]+1` -/
def P13488538899752096767.Spec : Prop :=
  ∀ n, (P13488538899752096767.a n : ℤ) = A047243 (n + 1)

end A047243

/-! ## A047243.P16729811153419933562

`or(2, comp[or(1, n)])+n`
-/

namespace A047243.P16729811153419933562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + n

end

end A047243.P16729811153419933562

namespace A047243

/-- `or(2, comp[or(1, n)])+n` -/
def P16729811153419933562.Spec : Prop :=
  ∀ n, (P16729811153419933562.a n : ℤ) = A047243 (n + 1)

end A047243

/-! ## A047243.P9773659168648983348

`n-xor(n, -2)+n`
-/

namespace A047243.P9773659168648983348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor (n : ℤ) (-2) + (n : ℤ)

end

end A047243.P9773659168648983348

namespace A047243

/-- `n-xor(n, -2)+n` -/
def P9773659168648983348.Spec : Prop :=
  ∀ n, P9773659168648983348.a n = A047243 (n + 1)

end A047243

/-! ## A047243.P10317405596794711833

`n-(xor(n, -2)-n)`
-/

namespace A047243.P10317405596794711833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Int.xor (n : ℤ) (-2) - (n : ℤ))

end

end A047243.P10317405596794711833

namespace A047243

/-- `n-(xor(n, -2)-n)` -/
def P10317405596794711833.Spec : Prop :=
  ∀ n, P10317405596794711833.a n = A047243 (n + 1)

end A047243

/-! ## A047243.P4730867545086712824

`n-Δ[or(1, -n²)]`
-/

namespace A047243.P4730867545086712824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A047243.P4730867545086712824

namespace A047243

/-- `n-Δ[or(1, -n²)]` -/
def P4730867545086712824.Spec : Prop :=
  ∀ n, P4730867545086712824.a n = A047243 (n + 1)

end A047243

/-! ## A047243.P6696547540101040727

`∑[6-a(n-1)]` with `a(0)=2, a(1)=1`
-/

namespace A047243.P6696547540101040727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047243.P6696547540101040727

namespace A047243

/-- `∑[6-a(n-1)]` -/
def P6696547540101040727.Spec : Prop :=
  ∀ n, P6696547540101040727.a n = A047243 (n + 1)

end A047243

/-!
# A047244: Numbers that are congruent to {0, 2, 3} mod 6.

The programs for A047244, the canonical program `A047244.P6841592920032044211` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047244 has offset 1).

The definition of A047244 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047244.P6841592920032044211

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=6`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047244

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P6841592920032044211.Spec : Prop :=
  ∀ n, P6841592920032044211.a n = A047244 (n + 1)

theorem P6841592920032044211.correct : P6841592920032044211.Spec := by
  intro n
  simp only [A047244, Nat.add_sub_cancel]

end A047244

/-! ## A047244.P7532101987433717994

`∑[dr(6*n)/3]`
-/

namespace A047244.P7532101987433717994
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (6 * n : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047244.P7532101987433717994

namespace A047244

/-- `∑[dr(6*n)/3]` -/
def P7532101987433717994.Spec : Prop :=
  ∀ n, P7532101987433717994.a n = (A047244 (n + 1) : ℚ)

end A047244

/-! ## A047244.P7804493692935309763

`∑[3-n%3]-3`
-/

namespace A047244.P7804493692935309763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((n % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A047244.P7804493692935309763

namespace A047244

/-- `∑[3-n%3]-3` -/
def P7804493692935309763.Spec : Prop :=
  ∀ n, P7804493692935309763.a n = A047244 (n + 1)

end A047244

/-! ## A047244.P17853588561180882786

`Δ[round((2/3-n)²)]`
-/

namespace A047244.P17853588561180882786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 : ℚ) / 3 - (n : ℚ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047244.P17853588561180882786

namespace A047244

/-- `Δ[round((2/3-n)²)]` -/
def P17853588561180882786.Spec : Prop :=
  ∀ n, P17853588561180882786.a n = A047244 (n + 1)

end A047244

/-! ## A047244.P10565037115711022989

`a(n-3)+6` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A047244.P10565037115711022989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  a (n - 3) + 6

end

end A047244.P10565037115711022989

namespace A047244

/-- `a(n-3)+6` -/
def P10565037115711022989.Spec : Prop :=
  ∀ n, (P10565037115711022989.a n : ℤ) = A047244 (n + 1)

end A047244

/-! ## A047244.P6417491119121196574

`2*n-C(n, 2)%3`
-/

namespace A047244.P6417491119121196574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((Nat.choose n 2 % 3 : ℕ) : ℤ)

end

end A047244.P6417491119121196574

namespace A047244

/-- `2*n-C(n, 2)%3` -/
def P6417491119121196574.Spec : Prop :=
  ∀ n, P6417491119121196574.a n = A047244 (n + 1)

end A047244

/-! ## A047244.P5007088285928329497

`∑[dr((2*n)^3)%6]`
-/

namespace A047244.P5007088285928329497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((2 * n) ^ 3 : ℤ) % 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047244.P5007088285928329497

namespace A047244

/-- `∑[dr((2*n)^3)%6]` -/
def P5007088285928329497.Spec : Prop :=
  ∀ n, (P5007088285928329497.a n : ℤ) = A047244 (n + 1)

end A047244

/-! ## A047244.P16457780948076580009

`comp[∑[(n+1)%3]+n]`
-/

namespace A047244.P16457780948076580009
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047244.P16457780948076580009

namespace A047244

/-- `comp[∑[(n+1)%3]+n]` -/
def P16457780948076580009.Spec : Prop :=
  ∀ n, (P16457780948076580009.a n : ℤ) = A047244 (n + 1)

end A047244

/-! ## A047244.P15803758842900761693

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=3`
-/

namespace A047244.P15803758842900761693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047244.P15803758842900761693

namespace A047244

/-- `∑[abs(a(n-3))]` -/
def P15803758842900761693.Spec : Prop :=
  ∀ n, (P15803758842900761693.a n : ℤ) = A047244 (n + 1)

end A047244

/-! ## A047244.P11159147839693229861

`∑[dr(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=3`
-/

namespace A047244.P11159147839693229861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047244.P11159147839693229861

namespace A047244

/-- `∑[dr(a(n-3))]` -/
def P11159147839693229861.Spec : Prop :=
  ∀ n, (P11159147839693229861.a n : ℤ) = A047244 (n + 1)

end A047244

/-! ## A047244.P14601435203539327157

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047244.P14601435203539327157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047244.P14601435203539327157

namespace A047244

/-- `∑[floor(a(n-3))]` -/
def P14601435203539327157.Spec : Prop :=
  ∀ n, (P14601435203539327157.a n : ℤ) = A047244 (n + 1)

end A047244

/-! ## A047244.P5716437529399797585

`∑[ceil(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A047244.P5716437529399797585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047244.P5716437529399797585

namespace A047244

/-- `∑[ceil(a(n-3))]` -/
def P5716437529399797585.Spec : Prop :=
  ∀ n, (P5716437529399797585.a n : ℤ) = A047244 (n + 1)

end A047244

/-! ## A047244.P13349462349785347474

`∑[round(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=3`

`round` is left out, it is the identity on integers.
-/

namespace A047244.P13349462349785347474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047244.P13349462349785347474

namespace A047244

/-- `∑[round(a(n-3))]` -/
def P13349462349785347474.Spec : Prop :=
  ∀ n, (P13349462349785347474.a n : ℤ) = A047244 (n + 1)

end A047244

/-! ## A047244.P15144456198898848927

`∑[and(3, a(n-3))]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=3`
-/

namespace A047244.P15144456198898848927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 3] fun n f1 =>
  Nat.land 3 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047244.P15144456198898848927

namespace A047244

/-- `∑[and(3, a(n-3))]` -/
def P15144456198898848927.Spec : Prop :=
  ∀ n, (P15144456198898848927.a n : ℤ) = A047244 (n + 1)

end A047244

/-! ## A047244.P17944048989336633897

`∑[4-a(a(n-2))]` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A047244.P17944048989336633897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n f1 =>
  4 - f1 (f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047244.P17944048989336633897

namespace A047244

/-- `∑[4-a(a(n-2))]` -/
def P17944048989336633897.Spec : Prop :=
  ∀ n, P17944048989336633897.a n = A047244 (n + 1)

end A047244

/-! ## A047244.P8069368419738207405

`2*n-((n+2)%3)%2`
-/

namespace A047244.P8069368419738207405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (((n + 2) % 3 % 2 : ℕ) : ℤ)

end

end A047244.P8069368419738207405

namespace A047244

/-- `2*n-((n+2)%3)%2` -/
def P8069368419738207405.Spec : Prop :=
  ∀ n, P8069368419738207405.a n = A047244 (n + 1)

end A047244

/-! ## A047244.P17383991466300556590

`2*n-val(gcd(3, n+1), 3)`
-/

namespace A047244.P17383991466300556590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.valuation (Nat.gcd 3 (n + 1)) 3 : ℤ)

end

end A047244.P17383991466300556590

namespace A047244

/-- `2*n-val(gcd(3, n+1), 3)` -/
def P17383991466300556590.Spec : Prop :=
  ∀ n, P17383991466300556590.a n = A047244 (n + 1)

end A047244

/-! ## A047244.P2782673515937391571

`comp[3*n-a(n-2)]` with `a(0)=1, a(1)=4`
-/

namespace A047244.P2782673515937391571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  (3 * n : ℤ) - f1 (n - 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047244.P2782673515937391571

namespace A047244

/-- `comp[3*n-a(n-2)]` -/
def P2782673515937391571.Spec : Prop :=
  ∀ n, (P2782673515937391571.a n : ℤ) = A047244 (n + 1)

end A047244

/-! ## A047244.P5613853350968840270

`n-(((2*n)%3)%2-n)`
-/

namespace A047244.P5613853350968840270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((2 * n % 3 % 2 : ℕ) : ℤ) - (n : ℤ))

end

end A047244.P5613853350968840270

namespace A047244

/-- `n-(((2*n)%3)%2-n)` -/
def P5613853350968840270.Spec : Prop :=
  ∀ n, P5613853350968840270.a n = A047244 (n + 1)

end A047244

/-! ## A047244.P13179417775601587543

`2*n-∑{p}[n+1, val(#, 3)]`
-/

namespace A047244.P13179417775601587543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 3 : ℕ) : ℤ)

end

end A047244.P13179417775601587543

namespace A047244

/-- `2*n-∑{p}[n+1, val(#, 3)]` -/
def P13179417775601587543.Spec : Prop :=
  ∀ n, P13179417775601587543.a n = A047244 (n + 1)

end A047244

/-!
# A047245: Numbers that are congruent to {1, 2, 3} mod 6.

The programs for A047245, the canonical program `A047245.P5985506669286410783` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047245 has offset 1).

The definition of A047245 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047245.P5985506669286410783

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=7`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047245

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P5985506669286410783.Spec : Prop :=
  ∀ n, P5985506669286410783.a n = A047245 (n + 1)

theorem P5985506669286410783.correct : P5985506669286410783.Spec := by
  intro n
  simp only [A047245, Nat.add_sub_cancel]

end A047245

/-! ## A047245.P3808814719845026853

`Δ[n²]-n%3`
-/

namespace A047245.P3808814719845026853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n % 3 : ℕ) : ℤ)

end

end A047245.P3808814719845026853

namespace A047245

/-- `Δ[n²]-n%3` -/
def P3808814719845026853.Spec : Prop :=
  ∀ n, P3808814719845026853.a n = A047245 (n + 1)

end A047245

/-! ## A047245.P15259370319327161121

`6+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A047245.P15259370319327161121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  6 + a (n - 3)

end

end A047245.P15259370319327161121

namespace A047245

/-- `6+a(n-3)` -/
def P15259370319327161121.Spec : Prop :=
  ∀ n, (P15259370319327161121.a n : ℤ) = A047245 (n + 1)

end A047245

/-! ## A047245.P14267544624477920468

`∑[gcd(4, n²%3)]-3`
-/

namespace A047245.P14267544624477920468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (n ^ 2 % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A047245.P14267544624477920468

namespace A047245

/-- `∑[gcd(4, n²%3)]-3` -/
def P14267544624477920468.Spec : Prop :=
  ∀ n, P14267544624477920468.a n = A047245 (n + 1)

end A047245

/-! ## A047245.P4260214980684472756

`∑[abs((1-n)%3)!²]`
-/

namespace A047245.P4260214980684472756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |Int.tmod (1 - (n : ℤ)) 3|.toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047245.P4260214980684472756

namespace A047245

/-- `∑[abs((1-n)%3)!²]` -/
def P4260214980684472756.Spec : Prop :=
  ∀ n, (P4260214980684472756.a n : ℤ) = A047245 (n + 1)

end A047245

/-! ## A047245.P2847879228061996178

`∑[(dr(1-n)%3)!²]`
-/

namespace A047245.P2847879228061996178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.digitalRoot (1 - (n : ℤ)) % 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047245.P2847879228061996178

namespace A047245

/-- `∑[(dr(1-n)%3)!²]` -/
def P2847879228061996178.Spec : Prop :=
  ∀ n, (P2847879228061996178.a n : ℤ) = A047245 (n + 1)

end A047245

/-! ## A047245.P4862709191723897192

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A047245.P4862709191723897192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047245.P4862709191723897192

namespace A047245

/-- `∑[abs(a(n-3))]` -/
def P4862709191723897192.Spec : Prop :=
  ∀ n, (P4862709191723897192.a n : ℤ) = A047245 (n + 1)

end A047245

/-! ## A047245.P3031521047843544252

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A047245.P3031521047843544252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 4] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047245.P3031521047843544252

namespace A047245

/-- `∑[dr(a(n-3))]` -/
def P3031521047843544252.Spec : Prop :=
  ∀ n, (P3031521047843544252.a n : ℤ) = A047245 (n + 1)

end A047245

/-! ## A047245.P5273247110850511053

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A047245.P5273247110850511053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047245.P5273247110850511053

namespace A047245

/-- `∑[floor(a(n-3))]` -/
def P5273247110850511053.Spec : Prop :=
  ∀ n, (P5273247110850511053.a n : ℤ) = A047245 (n + 1)

end A047245

/-! ## A047245.P3403202893527292611

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A047245.P3403202893527292611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047245.P3403202893527292611

namespace A047245

/-- `∑[ceil(a(n-3))]` -/
def P3403202893527292611.Spec : Prop :=
  ∀ n, (P3403202893527292611.a n : ℤ) = A047245 (n + 1)

end A047245

/-! ## A047245.P12590455845027296173

`∑[round(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4`

`round` is left out, it is the identity on integers.
-/

namespace A047245.P12590455845027296173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047245.P12590455845027296173

namespace A047245

/-- `∑[round(a(n-3))]` -/
def P12590455845027296173.Spec : Prop :=
  ∀ n, (P12590455845027296173.a n : ℤ) = A047245 (n + 1)

end A047245

/-! ## A047245.P4330298741815820787

`-n%3+2*n+1`
-/

namespace A047245.P4330298741815820787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(n : ℤ)) 3 + (2 * n + 1 : ℤ)

end

end A047245.P4330298741815820787

namespace A047245

/-- `-n%3+2*n+1` -/
def P4330298741815820787.Spec : Prop :=
  ∀ n, P4330298741815820787.a n = A047245 (n + 1)

end A047245

/-! ## A047245.P17591523759951073208

`3*floor(n/3)+1+n`
-/

namespace A047245.P17591523759951073208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(n : ℚ) / 3⌋ + 1 + (n : ℤ)

end

end A047245.P17591523759951073208

namespace A047245

/-- `3*floor(n/3)+1+n` -/
def P17591523759951073208.Spec : Prop :=
  ∀ n, P17591523759951073208.a n = A047245 (n + 1)

end A047245

/-! ## A047245.P2501165597604026612

`comp[2*n-(n+1)%3]`
-/

namespace A047245.P2501165597604026612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (((n + 1) % 3 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047245.P2501165597604026612

namespace A047245

/-- `comp[2*n-(n+1)%3]` -/
def P2501165597604026612.Spec : Prop :=
  ∀ n, (P2501165597604026612.a n : ℤ) = A047245 (n + 1)

end A047245

/-! ## A047245.P9920091034206305785

`comp[(2*n)%3+2*n]`
-/

namespace A047245.P9920091034206305785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % 3 + 2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047245.P9920091034206305785

namespace A047245

/-- `comp[(2*n)%3+2*n]` -/
def P9920091034206305785.Spec : Prop :=
  ∀ n, (P9920091034206305785.a n : ℤ) = A047245 (n + 1)

end A047245

/-! ## A047245.P13615842864381736456

`∑[((2-∑[n+1])%3)²]`
-/

namespace A047245.P13615842864381736456
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) 3 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047245.P13615842864381736456

namespace A047245

/-- `∑[((2-∑[n+1])%3)²]` -/
def P13615842864381736456.Spec : Prop :=
  ∀ n, P13615842864381736456.a n = A047245 (n + 1)

end A047245

/-! ## A047245.P16525546875528782596

`∑[(char[lcm(3, n+1)]+1)²]`
-/

namespace A047245.P16525546875528782596
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0) + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047245.P16525546875528782596

namespace A047245

/-- `∑[(char[lcm(3, n+1)]+1)²]` -/
def P16525546875528782596.Spec : Prop :=
  ∀ n, (P16525546875528782596.a n : ℤ) = A047245 (n + 1)

end A047245

/-! ## A047245.P3457421555507703271

`comp[3*n-a(n-2)]` with `a(0)=0, a(1)=4`
-/

namespace A047245.P3457421555507703271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  (3 * n : ℤ) - f1 (n - 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047245.P3457421555507703271

namespace A047245

/-- `comp[3*n-a(n-2)]` -/
def P3457421555507703271.Spec : Prop :=
  ∀ n, (P3457421555507703271.a n : ℤ) = A047245 (n + 1)

end A047245

/-!
# A047246: Numbers that are congruent to {0, 1, 2, 3} mod 6.

The programs for A047246, the canonical program `A047246.P8842605921146798613` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047246 has offset 1).

The definition of A047246 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047246.P8842605921146798613

`a(n-4)+6` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047246

/-- `a(n-4)+6` -/
def P8842605921146798613.Spec : Prop :=
  ∀ n, (P8842605921146798613.a n : ℤ) = A047246 (n + 1)

theorem P8842605921146798613.correct : P8842605921146798613.Spec := by
  intro n
  simp only [A047246, Nat.add_sub_cancel]

end A047246

/-! ## A047246.P5753563708015739604

`comp[xor(1, 3*n)+3]`
-/

namespace A047246.P5753563708015739604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047246.P5753563708015739604

namespace A047246

/-- `comp[xor(1, 3*n)+3]` -/
def P5753563708015739604.Spec : Prop :=
  ∀ n, (P5753563708015739604.a n : ℤ) = A047246 (n + 1)

end A047246

/-! ## A047246.P3034696415042940176

`and(n, -4)/2+n`
-/

namespace A047246.P3034696415042940176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-4) : ℚ) / 2 + (n : ℚ)

end

end A047246.P3034696415042940176

namespace A047246

/-- `and(n, -4)/2+n` -/
def P3034696415042940176.Spec : Prop :=
  ∀ n, P3034696415042940176.a n = (A047246 (n + 1) : ℚ)

end A047246

/-! ## A047246.P9528612399376789476

`2*floor(n/4)+n`
-/

namespace A047246.P9528612399376789476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℚ) / 4⌋ + (n : ℤ)

end

end A047246.P9528612399376789476

namespace A047246

/-- `2*floor(n/4)+n` -/
def P9528612399376789476.Spec : Prop :=
  ∀ n, P9528612399376789476.a n = A047246 (n + 1)

end A047246

/-! ## A047246.P17107637123008658310

`comp[4*xor(1, n)-n]`
-/

namespace A047246.P17107637123008658310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.xor 1 n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047246.P17107637123008658310

namespace A047246

/-- `comp[4*xor(1, n)-n]` -/
def P17107637123008658310.Spec : Prop :=
  ∀ n, (P17107637123008658310.a n : ℤ) = A047246 (n + 1)

end A047246

/-! ## A047246.P8635022204148744195

`(comp[or(4, n)]+n)/2`
-/

namespace A047246.P8635022204148744195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n : ℚ) / 2

end

end A047246.P8635022204148744195

namespace A047246

/-- `(comp[or(4, n)]+n)/2` -/
def P8635022204148744195.Spec : Prop :=
  ∀ n, P8635022204148744195.a n = (A047246 (n + 1) : ℚ)

end A047246

/-! ## A047246.P9122275099143795260

`comp[or(5, 4*n)-n]`
-/

namespace A047246.P9122275099143795260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 (4 * n) : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047246.P9122275099143795260

namespace A047246

/-- `comp[or(5, 4*n)-n]` -/
def P9122275099143795260.Spec : Prop :=
  ∀ n, (P9122275099143795260.a n : ℤ) = A047246 (n + 1)

end A047246

/-! ## A047246.P11130830884144052252

`comp[a(n-2)+6]` with `a(0)=4, a(1)=5`
-/

namespace A047246.P11130830884144052252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 5] fun n f1 =>
  f1 (n - 2) + 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047246.P11130830884144052252

namespace A047246

/-- `comp[a(n-2)+6]` -/
def P11130830884144052252.Spec : Prop :=
  ∀ n, (P11130830884144052252.a n : ℤ) = A047246 (n + 1)

end A047246

/-! ## A047246.P1044446813678845010

`(3*n-n%4)/2`
-/

namespace A047246.P1044446813678845010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) - ((n % 4 : ℕ) : ℤ) : ℚ) / 2

end

end A047246.P1044446813678845010

namespace A047246

/-- `(3*n-n%4)/2` -/
def P1044446813678845010.Spec : Prop :=
  ∀ n, P1044446813678845010.a n = (A047246 (n + 1) : ℚ)

end A047246

/-! ## A047246.P10110789936555308063

`ceil(or(2, 3*(n-1))/2)`
-/

namespace A047246.P10110789936555308063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor 2 (3 * ((n : ℤ) - 1)) : ℚ) / 2⌉

end

end A047246.P10110789936555308063

namespace A047246

/-- `ceil(or(2, 3*(n-1))/2)` -/
def P10110789936555308063.Spec : Prop :=
  ∀ n, P10110789936555308063.a n = A047246 (n + 1)

end A047246

/-! ## A047246.P6349950646349707347

`floor(or(2, n)/2+n-1)`
-/

namespace A047246.P6349950646349707347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 2 n : ℚ) / 2 + ((n : ℤ) - 1 : ℚ)⌋

end

end A047246.P6349950646349707347

namespace A047246

/-- `floor(or(2, n)/2+n-1)` -/
def P6349950646349707347.Spec : Prop :=
  ∀ n, P6349950646349707347.a n = A047246 (n + 1)

end A047246

/-! ## A047246.P15056541226396538689

`ceil(or(3, n)/2+n-2)`
-/

namespace A047246.P15056541226396538689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 3 n : ℚ) / 2 + ((n : ℤ) - 2 : ℚ)⌉

end

end A047246.P15056541226396538689

namespace A047246

/-- `ceil(or(3, n)/2+n-2)` -/
def P15056541226396538689.Spec : Prop :=
  ∀ n, P15056541226396538689.a n = A047246 (n + 1)

end A047246

/-! ## A047246.P18039103655652508341

`comp[2*or(1, n)+n+2]`
-/

namespace A047246.P18039103655652508341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 1 n + (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047246.P18039103655652508341

namespace A047246

/-- `comp[2*or(1, n)+n+2]` -/
def P18039103655652508341.Spec : Prop :=
  ∀ n, (P18039103655652508341.a n : ℤ) = A047246 (n + 1)

end A047246

/-! ## A047246.P13235646645687920743

`∑[abs(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=3`
-/

namespace A047246.P13235646645687920743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047246.P13235646645687920743

namespace A047246

/-- `∑[abs(a(n-4))]` -/
def P13235646645687920743.Spec : Prop :=
  ∀ n, (P13235646645687920743.a n : ℤ) = A047246 (n + 1)

end A047246

/-! ## A047246.P9125335471680232144

`∑[gcd(3, a(n-4))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A047246.P9125335471680232144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1] fun n f1 =>
  Nat.gcd 3 (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047246.P9125335471680232144

namespace A047246

/-- `∑[gcd(3, a(n-4))]` -/
def P9125335471680232144.Spec : Prop :=
  ∀ n, (P9125335471680232144.a n : ℤ) = A047246 (n + 1)

end A047246

/-! ## A047246.P9258619004354491208

`∑[dr(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=3`
-/

namespace A047246.P9258619004354491208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047246.P9258619004354491208

namespace A047246

/-- `∑[dr(a(n-4))]` -/
def P9258619004354491208.Spec : Prop :=
  ∀ n, (P9258619004354491208.a n : ℤ) = A047246 (n + 1)

end A047246

/-! ## A047246.P12856444242697617150

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047246.P12856444242697617150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047246.P12856444242697617150

namespace A047246

/-- `∑[floor(a(n-4))]` -/
def P12856444242697617150.Spec : Prop :=
  ∀ n, (P12856444242697617150.a n : ℤ) = A047246 (n + 1)

end A047246

/-! ## A047246.P9653987215078492561

`∑[ceil(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A047246.P9653987215078492561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047246.P9653987215078492561

namespace A047246

/-- `∑[ceil(a(n-4))]` -/
def P9653987215078492561.Spec : Prop :=
  ∀ n, (P9653987215078492561.a n : ℤ) = A047246 (n + 1)

end A047246

/-! ## A047246.P8360251273428860111

`∑[round(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=3`

`round` is left out, it is the identity on integers.
-/

namespace A047246.P8360251273428860111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047246.P8360251273428860111

namespace A047246

/-- `∑[round(a(n-4))]` -/
def P8360251273428860111.Spec : Prop :=
  ∀ n, (P8360251273428860111.a n : ℤ) = A047246 (n + 1)

end A047246

/-! ## A047246.P3163406172822861715

`∑[a(n-4)%4]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=3`
-/

namespace A047246.P3163406172822861715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 3] fun n f1 =>
  f1 (n - 4) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047246.P3163406172822861715

namespace A047246

/-- `∑[a(n-4)%4]` -/
def P3163406172822861715.Spec : Prop :=
  ∀ n, (P3163406172822861715.a n : ℤ) = A047246 (n + 1)

end A047246

/-!
# A047247: Numbers that are congruent to {2, 3, 4, 5} (mod 6).

The programs for A047247, the canonical program `A047247.P1831666042334594370` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047247 has offset 1).

The definition of A047247 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047247.P1831666042334594370

`a(n-4)+6` with `a(0)=2, a(1)=3, a(2)=4, a(3)=5`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047247

/-- `a(n-4)+6` -/
def P1831666042334594370.Spec : Prop :=
  ∀ n, (P1831666042334594370.a n : ℤ) = A047247 (n + 1)

theorem P1831666042334594370.correct : P1831666042334594370.Spec := by
  intro n
  simp only [A047247, Nat.add_sub_cancel]

end A047247

/-! ## A047247.P624226679761416094

`A047227(n+1)+1`
-/

namespace A047247.P624226679761416094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047227 (n + 1) + 1

end

end A047247.P624226679761416094

namespace A047247

/-- `A047227(n+1)+1` -/
def P624226679761416094.Spec : Prop :=
  ∀ n, P624226679761416094.a n = A047247 (n + 1)

end A047247

/-! ## A047247.P6478038279709331084

`A047246(n+1)+2`
-/

namespace A047247.P6478038279709331084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047246 (n + 1) + 2

end

end A047247.P6478038279709331084

namespace A047247

/-- `A047246(n+1)+2` -/
def P6478038279709331084.Spec : Prop :=
  ∀ n, P6478038279709331084.a n = A047247 (n + 1)

end A047247

/-! ## A047247.P17186288537074283688

`lt[n, n*n%6]`
-/

namespace A047247.P17186288537074283688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047247.P17186288537074283688

namespace A047247

/-- `lt[n, n*n%6]` -/
def P17186288537074283688.Spec : Prop :=
  ∀ n, (P17186288537074283688.a n : ℤ) = A047247 (n + 1)

end A047247

/-! ## A047247.P12069716780981957774

`comp[record[and(n, -6)]-n]`
-/

namespace A047247.P12069716780981957774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047247.P12069716780981957774

namespace A047247

/-- `comp[record[and(n, -6)]-n]` -/
def P12069716780981957774.Spec : Prop :=
  ∀ n, (P12069716780981957774.a n : ℤ) = A047247 (n + 1)

end A047247

/-! ## A047247.P17110378831242356527

`comp[xor(1, 3*n)-1]`
-/

namespace A047247.P17110378831242356527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (3 * n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047247.P17110378831242356527

namespace A047247

/-- `comp[xor(1, 3*n)-1]` -/
def P17110378831242356527.Spec : Prop :=
  ∀ n, (P17110378831242356527.a n : ℤ) = A047247 (n + 1)

end A047247

/-! ## A047247.P18163897263638009098

`ceil(or(3, n)/2+n)`
-/

namespace A047247.P18163897263638009098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 3 n : ℚ) / 2 + (n : ℚ)⌉

end

end A047247.P18163897263638009098

namespace A047247

/-- `ceil(or(3, n)/2+n)` -/
def P18163897263638009098.Spec : Prop :=
  ∀ n, P18163897263638009098.a n = A047247 (n + 1)

end A047247

/-! ## A047247.P6473355771840834674

`round(or(3, n)/2+n)`
-/

namespace A047247.P6473355771840834674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 3 n : ℚ) / 2 + (n : ℚ))

end

end A047247.P6473355771840834674

namespace A047247

/-- `round(or(3, n)/2+n)` -/
def P6473355771840834674.Spec : Prop :=
  ∀ n, P6473355771840834674.a n = A047247 (n + 1)

end A047247

/-! ## A047247.P12696682032443912953

`2*comp[5*n]-n`
-/

namespace A047247.P12696682032443912953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A047247.P12696682032443912953

namespace A047247

/-- `2*comp[5*n]-n` -/
def P12696682032443912953.Spec : Prop :=
  ∀ n, P12696682032443912953.a n = A047247 (n + 1)

end A047247

/-! ## A047247.P1170594720656757039

`(record[or(4, n)]+n)/2`
-/

namespace A047247.P1170594720656757039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n : ℚ) / 2

end

end A047247.P1170594720656757039

namespace A047247

/-- `(record[or(4, n)]+n)/2` -/
def P1170594720656757039.Spec : Prop :=
  ∀ n, P1170594720656757039.a n = (A047247 (n + 1) : ℚ)

end A047247

/-! ## A047247.P13676862478371312871

`(record[xor(4, n)]+n)/2`
-/

namespace A047247.P13676862478371312871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n : ℚ) / 2

end

end A047247.P13676862478371312871

namespace A047247

/-- `(record[xor(4, n)]+n)/2` -/
def P13676862478371312871.Spec : Prop :=
  ∀ n, P13676862478371312871.a n = (A047247 (n + 1) : ℚ)

end A047247

/-! ## A047247.P6501369703585689976

`comp[a(n-2)+6]` with `a(0)=0, a(1)=1`
-/

namespace A047247.P6501369703585689976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047247.P6501369703585689976

namespace A047247

/-- `comp[a(n-2)+6]` -/
def P6501369703585689976.Spec : Prop :=
  ∀ n, (P6501369703585689976.a n : ℤ) = A047247 (n + 1)

end A047247

/-! ## A047247.P15282748799821531658

`comp[∑[C(5, a(n-1))]]` with `a(0)=0`
-/

namespace A047247.P15282748799821531658
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Nat.choose 5 (f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047247.P15282748799821531658

namespace A047247

/-- `comp[∑[C(5, a(n-1))]]` -/
def P15282748799821531658.Spec : Prop :=
  ∀ n, (P15282748799821531658.a n : ℤ) = A047247 (n + 1)

end A047247

/-! ## A047247.P14312851192859800336

`floor(or(2, n)/2+n+1)`
-/

namespace A047247.P14312851192859800336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 2 n : ℚ) / 2 + (n + 1 : ℚ)⌋

end

end A047247.P14312851192859800336

namespace A047247

/-- `floor(or(2, n)/2+n+1)` -/
def P14312851192859800336.Spec : Prop :=
  ∀ n, P14312851192859800336.a n = A047247 (n + 1)

end A047247

/-! ## A047247.P5027153387288238647

`∑[abs(a(n-4))]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=1, a(4)=3`
-/

namespace A047247.P5027153387288238647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1, 1, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047247.P5027153387288238647

namespace A047247

/-- `∑[abs(a(n-4))]` -/
def P5027153387288238647.Spec : Prop :=
  ∀ n, (P5027153387288238647.a n : ℤ) = A047247 (n + 1)

end A047247

/-! ## A047247.P10430235941000219630

`∑[or(1, a(n-4))]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A047247.P10430235941000219630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1, 1] fun n f1 =>
  Nat.lor 1 (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047247.P10430235941000219630

namespace A047247

/-- `∑[or(1, a(n-4))]` -/
def P10430235941000219630.Spec : Prop :=
  ∀ n, (P10430235941000219630.a n : ℤ) = A047247 (n + 1)

end A047247

/-! ## A047247.P11137308264043875078

`∑[dr(a(n-4))]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=1, a(4)=3`
-/

namespace A047247.P11137308264043875078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1, 1, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047247.P11137308264043875078

namespace A047247

/-- `∑[dr(a(n-4))]` -/
def P11137308264043875078.Spec : Prop :=
  ∀ n, (P11137308264043875078.a n : ℤ) = A047247 (n + 1)

end A047247

/-! ## A047247.P11136552973653919585

`∑[floor(a(n-4))]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=1, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047247.P11136552973653919585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1, 1, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047247.P11136552973653919585

namespace A047247

/-- `∑[floor(a(n-4))]` -/
def P11136552973653919585.Spec : Prop :=
  ∀ n, (P11136552973653919585.a n : ℤ) = A047247 (n + 1)

end A047247

/-! ## A047247.P3295026788409591953

`∑[ceil(a(n-4))]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=1, a(4)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A047247.P3295026788409591953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1, 1, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047247.P3295026788409591953

namespace A047247

/-- `∑[ceil(a(n-4))]` -/
def P3295026788409591953.Spec : Prop :=
  ∀ n, (P3295026788409591953.a n : ℤ) = A047247 (n + 1)

end A047247

/-! ## A047247.P2146258433701562676

`∑[round(a(n-4))]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=1, a(4)=3`

`round` is left out, it is the identity on integers.
-/

namespace A047247.P2146258433701562676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1, 1, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047247.P2146258433701562676

namespace A047247

/-- `∑[round(a(n-4))]` -/
def P2146258433701562676.Spec : Prop :=
  ∀ n, (P2146258433701562676.a n : ℤ) = A047247 (n + 1)

end A047247

/-!
# A047248: Numbers that are congruent to {0, 2, 3, 4, 5} (mod 6).

The programs for A047248, the canonical program `A047248.P11378365063847660584` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047248 has offset 1).

The definition of A047248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047248.P11378365063847660584

`ceil(6*n/5)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047248

/-- `ceil(6*n/5)` -/
def P11378365063847660584.Spec : Prop :=
  ∀ n, P11378365063847660584.a n = A047248 (n + 1)

theorem P11378365063847660584.correct : P11378365063847660584.Spec := by
  intro n
  simp only [A047248, Nat.add_sub_cancel]

end A047248

/-! ## A047248.P5540953050266667163

`comp[lcm(6, n)+1]`
-/

namespace A047248.P5540953050266667163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047248.P5540953050266667163

namespace A047248

/-- `comp[lcm(6, n)+1]` -/
def P5540953050266667163.Spec : Prop :=
  ∀ n, (P5540953050266667163.a n : ℤ) = A047248 (n + 1)

end A047248

/-! ## A047248.P503545385688976142

`comp[or(1, 6*n)]`
-/

namespace A047248.P503545385688976142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (6 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047248.P503545385688976142

namespace A047248

/-- `comp[or(1, 6*n)]` -/
def P503545385688976142.Spec : Prop :=
  ∀ n, (P503545385688976142.a n : ℤ) = A047248 (n + 1)

end A047248

/-! ## A047248.P8016594507573587391

`comp[xor(1, 6*n)]`
-/

namespace A047248.P8016594507573587391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (6 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047248.P8016594507573587391

namespace A047248

/-- `comp[xor(1, 6*n)]` -/
def P8016594507573587391.Spec : Prop :=
  ∀ n, (P8016594507573587391.a n : ℤ) = A047248 (n + 1)

end A047248

/-! ## A047248.P11097846815724753580

`eq[0, val(n+5, 6)]`
-/

namespace A047248.P11097846815724753580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 5) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047248.P11097846815724753580

namespace A047248

/-- `eq[0, val(n+5, 6)]` -/
def P11097846815724753580.Spec : Prop :=
  ∀ n, (P11097846815724753580.a n : ℤ) = A047248 (n + 1)

end A047248

/-! ## A047248.P17524607307445668740

`lt[val(n+5, 6), 1]`
-/

namespace A047248.P17524607307445668740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 5) 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047248.P17524607307445668740

namespace A047248

/-- `lt[val(n+5, 6), 1]` -/
def P17524607307445668740.Spec : Prop :=
  ∀ n, (P17524607307445668740.a n : ℤ) = A047248 (n + 1)

end A047248

/-! ## A047248.P297972082172713716

`comp[a(n-1)+6]` with `a(0)=1`
-/

namespace A047248.P297972082172713716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047248.P297972082172713716

namespace A047248

/-- `comp[a(n-1)+6]` -/
def P297972082172713716.Spec : Prop :=
  ∀ n, (P297972082172713716.a n : ℤ) = A047248 (n + 1)

end A047248

/-! ## A047248.P10892089325888768081

`comp[1-n%6+n]`
-/

namespace A047248.P10892089325888768081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n % 6 : ℕ) : ℤ) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047248.P10892089325888768081

namespace A047248

/-- `comp[1-n%6+n]` -/
def P10892089325888768081.Spec : Prop :=
  ∀ n, (P10892089325888768081.a n : ℤ) = A047248 (n + 1)

end A047248

/-! ## A047248.P3114697164272134424

`∪[2*n, ∑[gcd(2, n)]]`
-/

namespace A047248.P3114697164272134424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A047248.P3114697164272134424

namespace A047248

/-- `∪[2*n, ∑[gcd(2, n)]]` -/
def P3114697164272134424.Spec : Prop :=
  ∀ n, (P3114697164272134424.a n : ℤ) = A047248 (n + 1)

end A047248

/-! ## A047248.P9453995412474678015

`∑[ceil(acot((n-1)%5))]`
-/

namespace A047248.P9453995412474678015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (Int.tmod ((n : ℤ) - 1) 5 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047248.P9453995412474678015

namespace A047248

/-- `∑[ceil(acot((n-1)%5))]` -/
def P9453995412474678015.Spec : Prop :=
  ∀ n, P9453995412474678015.a n = A047248 (n + 1)

end A047248

/-! ## A047248.P14441405586489479364

`∪[2*n, round(3*n/2)]`
-/

namespace A047248.P14441405586489479364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((n : ℚ) / 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A047248.P14441405586489479364

namespace A047248

/-- `∪[2*n, round(3*n/2)]` -/
def P14441405586489479364.Spec : Prop :=
  ∀ n, (P14441405586489479364.a n : ℤ) = A047248 (n + 1)

end A047248

/-! ## A047248.P601780784788572792

`a(n-5)+6` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A047248.P601780784788572792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 4, 5] fun n a =>
  a (n - 5) + 6

end

end A047248.P601780784788572792

namespace A047248

/-- `a(n-5)+6` -/
def P601780784788572792.Spec : Prop :=
  ∀ n, (P601780784788572792.a n : ℤ) = A047248 (n + 1)

end A047248

/-! ## A047248.P7269800662267169363

`∑[a(n-5)!]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A047248.P7269800662267169363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 1, 1] fun n f1 =>
  Nat.factorial (f1 (n - 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047248.P7269800662267169363

namespace A047248

/-- `∑[a(n-5)!]` -/
def P7269800662267169363.Spec : Prop :=
  ∀ n, (P7269800662267169363.a n : ℤ) = A047248 (n + 1)

end A047248

/-! ## A047248.P2606099876897493582

`lt[acot(n-1), (1-n)²%6]`
-/

namespace A047248.P2606099876897493582
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((1 - (n : ℤ)) ^ 2) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A047248.P2606099876897493582

namespace A047248

/-- `lt[acot(n-1), (1-n)²%6]` -/
def P2606099876897493582.Spec : Prop :=
  ∀ n, (P2606099876897493582.a n : ℤ) = A047248 (n + 1)

end A047248

/-! ## A047248.P921896314701643959

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=1, a(4)=1, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047248.P921896314701643959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 1, 1, 1] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047248.P921896314701643959

namespace A047248

/-- `∑[floor(a(n-5))]` -/
def P921896314701643959.Spec : Prop :=
  ∀ n, (P921896314701643959.a n : ℤ) = A047248 (n + 1)

end A047248

/-! ## A047248.P15506222559344146817

`round(xor(1, 3*(2*n+1))/5)`
-/

namespace A047248.P15506222559344146817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (3 * (2 * n + 1)) : ℚ) / 5)

end

end A047248.P15506222559344146817

namespace A047248

/-- `round(xor(1, 3*(2*n+1))/5)` -/
def P15506222559344146817.Spec : Prop :=
  ∀ n, P15506222559344146817.a n = A047248 (n + 1)

end A047248

/-! ## A047248.P10239821317279746829

`floor(C(n+1, n)+(n-1)/5)`
-/

namespace A047248.P10239821317279746829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) n : ℚ) + ((n : ℤ) - 1 : ℚ) / 5⌋

end

end A047248.P10239821317279746829

namespace A047248

/-- `floor(C(n+1, n)+(n-1)/5)` -/
def P10239821317279746829.Spec : Prop :=
  ∀ n, P10239821317279746829.a n = A047248 (n + 1)

end A047248

/-! ## A047248.P11649809789512679239

`∑[a(n-5)^a(n-1)]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=1, a(4)=1, a(5)=1`
-/

namespace A047248.P11649809789512679239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 1, 1, 1] fun n f1 =>
  f1 (n - 5) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047248.P11649809789512679239

namespace A047248

/-- `∑[a(n-5)^a(n-1)]` -/
def P11649809789512679239.Spec : Prop :=
  ∀ n, (P11649809789512679239.a n : ℤ) = A047248 (n + 1)

end A047248

/-! ## A047248.P12618877903640879131

`comp[A016921(n)]`
-/

namespace A047248.P12618877903640879131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047248.P12618877903640879131

namespace A047248

/-- `comp[A016921(n)]` -/
def P12618877903640879131.Spec : Prop :=
  ∀ n, (P12618877903640879131.a n : ℤ) = A047248 (n + 1)

end A047248

/-! ## A047248.P5275742795282777196

`comp[A256255(n)]`
-/

namespace A047248.P5275742795282777196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256255 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047248.P5275742795282777196

namespace A047248

/-- `comp[A256255(n)]` -/
def P5275742795282777196.Spec : Prop :=
  ∀ n, (P5275742795282777196.a n : ℤ) = A047248 (n + 1)

end A047248

/-!
# A047249: Numbers that are congruent to {3, 4, 5} mod 6.

The programs for A047249, the canonical program `A047249.P13199548698468958868` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047249 has offset 1).

The definition of A047249 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047249.P13199548698468958868

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=3, a(1)=4, a(2)=5, a(3)=9`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047249

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P13199548698468958868.Spec : Prop :=
  ∀ n, P13199548698468958868.a n = A047249 (n + 1)

theorem P13199548698468958868.correct : P13199548698468958868.Spec := by
  intro n
  simp only [A047249, Nat.add_sub_cancel]

end A047249

/-! ## A047249.P6892792600114986179

`comp[2*n-n%3]`
-/

namespace A047249.P6892792600114986179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n % 3 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047249.P6892792600114986179

namespace A047249

/-- `comp[2*n-n%3]` -/
def P6892792600114986179.Spec : Prop :=
  ∀ n, (P6892792600114986179.a n : ℤ) = A047249 (n + 1)

end A047249

/-! ## A047249.P17279699280041932893

`∑[C(gcd(3, n), 2)]+n`
-/

namespace A047249.P17279699280041932893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.gcd 3 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047249.P17279699280041932893

namespace A047249

/-- `∑[C(gcd(3, n), 2)]+n` -/
def P17279699280041932893.Spec : Prop :=
  ∀ n, (P17279699280041932893.a n : ℤ) = A047249 (n + 1)

end A047249

/-! ## A047249.P13177498764322271347

`a(n-3)+6` with `a(0)=3, a(1)=4, a(2)=5`
-/

namespace A047249.P13177498764322271347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 5] fun n a =>
  a (n - 3) + 6

end

end A047249.P13177498764322271347

namespace A047249

/-- `a(n-3)+6` -/
def P13177498764322271347.Spec : Prop :=
  ∀ n, (P13177498764322271347.a n : ℤ) = A047249 (n + 1)

end A047249

/-! ## A047249.P18324384300103431057

`∑[gcd(4, n²%3)]-1`
-/

namespace A047249.P18324384300103431057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (n ^ 2 % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047249.P18324384300103431057

namespace A047249

/-- `∑[gcd(4, n²%3)]-1` -/
def P18324384300103431057.Spec : Prop :=
  ∀ n, P18324384300103431057.a n = A047249 (n + 1)

end A047249

/-! ## A047249.P12471033465932805473

`comp[-n%3+2*n]`
-/

namespace A047249.P12471033465932805473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(n : ℤ)) 3 + (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047249.P12471033465932805473

namespace A047249

/-- `comp[-n%3+2*n]` -/
def P12471033465932805473.Spec : Prop :=
  ∀ n, (P12471033465932805473.a n : ℤ) = A047249 (n + 1)

end A047249

/-! ## A047249.P1031129988395010468

`3*∑[char[3*n]]+n`
-/

namespace A047249.P1031129988395010468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) + n

end

end A047249.P1031129988395010468

namespace A047249

/-- `3*∑[char[3*n]]+n` -/
def P1031129988395010468.Spec : Prop :=
  ∀ n, (P1031129988395010468.a n : ℤ) = A047249 (n + 1)

end A047249

/-! ## A047249.P2768964212871886833

`∑[abs(a(n-3))]` with `a(0)=3, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A047249.P2768964212871886833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 1, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047249.P2768964212871886833

namespace A047249

/-- `∑[abs(a(n-3))]` -/
def P2768964212871886833.Spec : Prop :=
  ∀ n, (P2768964212871886833.a n : ℤ) = A047249 (n + 1)

end A047249

/-! ## A047249.P11908383074026459862

`∑[dr(a(n-3))]` with `a(0)=3, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A047249.P11908383074026459862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 1, 4] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047249.P11908383074026459862

namespace A047249

/-- `∑[dr(a(n-3))]` -/
def P11908383074026459862.Spec : Prop :=
  ∀ n, (P11908383074026459862.a n : ℤ) = A047249 (n + 1)

end A047249

/-! ## A047249.P18006239784747274370

`∑[floor(a(n-3))]` with `a(0)=3, a(1)=1, a(2)=1, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A047249.P18006239784747274370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 1, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047249.P18006239784747274370

namespace A047249

/-- `∑[floor(a(n-3))]` -/
def P18006239784747274370.Spec : Prop :=
  ∀ n, (P18006239784747274370.a n : ℤ) = A047249 (n + 1)

end A047249

/-! ## A047249.P1624777828034895788

`∑[ceil(a(n-3))]` with `a(0)=3, a(1)=1, a(2)=1, a(3)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A047249.P1624777828034895788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 1, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047249.P1624777828034895788

namespace A047249

/-- `∑[ceil(a(n-3))]` -/
def P1624777828034895788.Spec : Prop :=
  ∀ n, (P1624777828034895788.a n : ℤ) = A047249 (n + 1)

end A047249

/-! ## A047249.P379841834688493828

`∑[round(a(n-3))]` with `a(0)=3, a(1)=1, a(2)=1, a(3)=4`

`round` is left out, it is the identity on integers.
-/

namespace A047249.P379841834688493828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 1, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047249.P379841834688493828

namespace A047249

/-- `∑[round(a(n-3))]` -/
def P379841834688493828.Spec : Prop :=
  ∀ n, (P379841834688493828.a n : ℤ) = A047249 (n + 1)

end A047249

/-! ## A047249.P2378942955175567640

`∑[a(n-3)%5]` with `a(0)=3, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A047249.P2378942955175567640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 1, 4] fun n f1 =>
  f1 (n - 3) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047249.P2378942955175567640

namespace A047249

/-- `∑[a(n-3)%5]` -/
def P2378942955175567640.Spec : Prop :=
  ∀ n, (P2378942955175567640.a n : ℤ) = A047249 (n + 1)

end A047249

/-! ## A047249.P16435402775950453574

`record[3*n-a(n-2)]` with `a(0)=3, a(1)=4`
-/

namespace A047249.P16435402775950453574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  (3 * n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047249.P16435402775950453574

namespace A047249

/-- `record[3*n-a(n-2)]` -/
def P16435402775950453574.Spec : Prop :=
  ∀ n, P16435402775950453574.a n = A047249 (n + 1)

end A047249

/-! ## A047249.P16624008680835494084

`∑[(2-a(n-3))²]` with `a(0)=3, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A047249.P16624008680835494084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 1, 4] fun n f1 =>
  (2 - f1 (n - 3)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047249.P16624008680835494084

namespace A047249

/-- `∑[(2-a(n-3))²]` -/
def P16624008680835494084.Spec : Prop :=
  ∀ n, P16624008680835494084.a n = A047249 (n + 1)

end A047249

/-! ## A047249.P4412720303326916355

`∑[4/(5-a(n-3))]` with `a(0)=3, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A047249.P4412720303326916355
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 1, 1, 4] fun n f1 =>
  4 / (5 - f1 (n - 3))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047249.P4412720303326916355

namespace A047249

/-- `∑[4/(5-a(n-3))]` -/
def P4412720303326916355.Spec : Prop :=
  ∀ n, P4412720303326916355.a n = (A047249 (n + 1) : ℚ)

end A047249

/-! ## A047249.P16112026927030796609

`lt[n, 2*n-a(n-3)]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A047249.P16112026927030796609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f2 =>
  (2 * n : ℤ) - f2 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A047249.P16112026927030796609

namespace A047249

/-- `lt[n, 2*n-a(n-3)]` -/
def P16112026927030796609.Spec : Prop :=
  ∀ n, (P16112026927030796609.a n : ℤ) = A047249 (n + 1)

end A047249

/-! ## A047249.P11023425489386661248

`eq[n, 2*n-a(n-3)]` with `a(0)=3, a(1)=4, a(2)=5`
-/

namespace A047249.P11023425489386661248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 5] fun n f2 =>
  (2 * n : ℤ) - f2 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047249.P11023425489386661248

namespace A047249

/-- `eq[n, 2*n-a(n-3)]` -/
def P11023425489386661248.Spec : Prop :=
  ∀ n, (P11023425489386661248.a n : ℤ) = A047249 (n + 1)

end A047249

/-!
# A047250: Numbers that are congruent to {0, 3, 4, 5} (mod 6).

The programs for A047250, the canonical program `A047250.P17730186097441094621` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047250 has offset 1).

The definition of A047250 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047250.P17730186097441094621

`a(n-4)+6` with `a(0)=0, a(1)=3, a(2)=4, a(3)=5`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047250

/-- `a(n-4)+6` -/
def P17730186097441094621.Spec : Prop :=
  ∀ n, (P17730186097441094621.a n : ℤ) = A047250 (n + 1)

theorem P17730186097441094621.correct : P17730186097441094621.Spec := by
  intro n
  simp only [A047250, Nat.add_sub_cancel]

end A047250

/-! ## A047250.P15942709040066593656

`comp[xor(1, 3*n)]`
-/

namespace A047250.P15942709040066593656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047250.P15942709040066593656

namespace A047250

/-- `comp[xor(1, 3*n)]` -/
def P15942709040066593656.Spec : Prop :=
  ∀ n, (P15942709040066593656.a n : ℤ) = A047250 (n + 1)

end A047250

/-! ## A047250.P10868722501842234963

`2*ceil(n/4)+n`
-/

namespace A047250.P10868722501842234963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(n : ℚ) / 4⌉ + (n : ℤ)

end

end A047250.P10868722501842234963

namespace A047250

/-- `2*ceil(n/4)+n` -/
def P10868722501842234963.Spec : Prop :=
  ∀ n, P10868722501842234963.a n = A047250 (n + 1)

end A047250

/-! ## A047250.P10160990178644079282

`comp[xor(1, n)+n+n]`
-/

namespace A047250.P10160990178644079282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047250.P10160990178644079282

namespace A047250

/-- `comp[xor(1, n)+n+n]` -/
def P10160990178644079282.Spec : Prop :=
  ∀ n, (P10160990178644079282.a n : ℤ) = A047250 (n + 1)

end A047250

/-! ## A047250.P1362375883268891309

`comp[a(n-2)+6]` with `a(0)=1, a(1)=2`
-/

namespace A047250.P1362375883268891309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047250.P1362375883268891309

namespace A047250

/-- `comp[a(n-2)+6]` -/
def P1362375883268891309.Spec : Prop :=
  ∀ n, (P1362375883268891309.a n : ℤ) = A047250 (n + 1)

end A047250

/-! ## A047250.P10159216887348475391

`comp[record[or(5, n)-4]-n]`
-/

namespace A047250.P10159216887348475391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℤ) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047250.P10159216887348475391

namespace A047250

/-- `comp[record[or(5, n)-4]-n]` -/
def P10159216887348475391.Spec : Prop :=
  ∀ n, (P10159216887348475391.a n : ℤ) = A047250 (n + 1)

end A047250

/-! ## A047250.P10773523443156841779

`comp[∑[6-a(n-1)]]` with `a(0)=1, a(1)=1`
-/

namespace A047250.P10773523443156841779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  6 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047250.P10773523443156841779

namespace A047250

/-- `comp[∑[6-a(n-1)]]` -/
def P10773523443156841779.Spec : Prop :=
  ∀ n, (P10773523443156841779.a n : ℤ) = A047250 (n + 1)

end A047250

/-! ## A047250.P17960980370214232848

`ceil(or(3, n-1)/2+n)`
-/

namespace A047250.P17960980370214232848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor 3 ((n : ℤ) - 1) : ℚ) / 2 + (n : ℚ)⌉

end

end A047250.P17960980370214232848

namespace A047250

/-- `ceil(or(3, n-1)/2+n)` -/
def P17960980370214232848.Spec : Prop :=
  ∀ n, P17960980370214232848.a n = A047250 (n + 1)

end A047250

/-! ## A047250.P4082957661387062191

`comp[2*or(1, n)+n-1]`
-/

namespace A047250.P4082957661387062191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℤ) + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047250.P4082957661387062191

namespace A047250

/-- `comp[2*or(1, n)+n-1]` -/
def P4082957661387062191.Spec : Prop :=
  ∀ n, (P4082957661387062191.a n : ℤ) = A047250 (n + 1)

end A047250

/-! ## A047250.P7155199725045615691

`(comp[or(4, n)-3]+n)/2`
-/

namespace A047250.P7155199725045615691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 4 n : ℤ) - 3

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n : ℚ) / 2

end

end A047250.P7155199725045615691

namespace A047250

/-- `(comp[or(4, n)-3]+n)/2` -/
def P7155199725045615691.Spec : Prop :=
  ∀ n, P7155199725045615691.a n = (A047250 (n + 1) : ℚ)

end A047250

/-! ## A047250.P2333384733940563277

`∑[abs(a(n-4))]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A047250.P2333384733940563277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 1, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047250.P2333384733940563277

namespace A047250

/-- `∑[abs(a(n-4))]` -/
def P2333384733940563277.Spec : Prop :=
  ∀ n, (P2333384733940563277.a n : ℤ) = A047250 (n + 1)

end A047250

/-! ## A047250.P18001011874568860942

`∑[or(1, a(n-4))]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=1`
-/

namespace A047250.P18001011874568860942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 1] fun n f1 =>
  Nat.lor 1 (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047250.P18001011874568860942

namespace A047250

/-- `∑[or(1, a(n-4))]` -/
def P18001011874568860942.Spec : Prop :=
  ∀ n, (P18001011874568860942.a n : ℤ) = A047250 (n + 1)

end A047250

/-! ## A047250.P3644316371984046147

`∑[dr(a(n-4))]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A047250.P3644316371984046147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 1, 1] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047250.P3644316371984046147

namespace A047250

/-- `∑[dr(a(n-4))]` -/
def P3644316371984046147.Spec : Prop :=
  ∀ n, (P3644316371984046147.a n : ℤ) = A047250 (n + 1)

end A047250

/-! ## A047250.P16000433397037464591

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=1, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047250.P16000433397037464591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 1, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047250.P16000433397037464591

namespace A047250

/-- `∑[floor(a(n-4))]` -/
def P16000433397037464591.Spec : Prop :=
  ∀ n, (P16000433397037464591.a n : ℤ) = A047250 (n + 1)

end A047250

/-! ## A047250.P12009364126684366440

`∑[ceil(a(n-4))]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=1, a(4)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A047250.P12009364126684366440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 1, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047250.P12009364126684366440

namespace A047250

/-- `∑[ceil(a(n-4))]` -/
def P12009364126684366440.Spec : Prop :=
  ∀ n, (P12009364126684366440.a n : ℤ) = A047250 (n + 1)

end A047250

/-! ## A047250.P5929078207527035617

`∑[round(a(n-4))]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=1, a(4)=1`

`round` is left out, it is the identity on integers.
-/

namespace A047250.P5929078207527035617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 1, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047250.P5929078207527035617

namespace A047250

/-- `∑[round(a(n-4))]` -/
def P5929078207527035617.Spec : Prop :=
  ∀ n, (P5929078207527035617.a n : ℤ) = A047250 (n + 1)

end A047250

/-! ## A047250.P5990407556726795987

`((3*n)%4+3*n)/2`
-/

namespace A047250.P5990407556726795987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n % 4 + 3 * n : ℕ) : ℚ) / 2

end

end A047250.P5990407556726795987

namespace A047250

/-- `((3*n)%4+3*n)/2` -/
def P5990407556726795987.Spec : Prop :=
  ∀ n, P5990407556726795987.a n = (A047250 (n + 1) : ℚ)

end A047250

/-! ## A047250.P8550169016041649619

`lt[n, (n-1)*(n-1)%6]`
-/

namespace A047250.P8550169016041649619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * Int.tmod ((n : ℤ) - 1) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A047250.P8550169016041649619

namespace A047250

/-- `lt[n, (n-1)*(n-1)%6]` -/
def P8550169016041649619.Spec : Prop :=
  ∀ n, (P8550169016041649619.a n : ℤ) = A047250 (n + 1)

end A047250

/-! ## A047250.P8978669118000396739

`∑[a(n-4)%4]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A047250.P8978669118000396739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 1, 1] fun n f1 =>
  f1 (n - 4) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047250.P8978669118000396739

namespace A047250

/-- `∑[a(n-4)%4]` -/
def P8978669118000396739.Spec : Prop :=
  ∀ n, (P8978669118000396739.a n : ℤ) = A047250 (n + 1)

end A047250

/-! ## A047250.P10014952916224512785

`(and(n+3, -4)+2*n)/2`
-/

namespace A047250.P10014952916224512785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n + 3 : ℤ) (-4) + (2 * n : ℤ) : ℚ) / 2

end

end A047250.P10014952916224512785

namespace A047250

/-- `(and(n+3, -4)+2*n)/2` -/
def P10014952916224512785.Spec : Prop :=
  ∀ n, P10014952916224512785.a n = (A047250 (n + 1) : ℚ)

end A047250

/-!
# A047251: Numbers that are congruent to {1, 3, 4, 5} (mod 6).

The programs for A047251, the canonical program `A047251.P12400982931357912050` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047251 has offset 1).

The definition of A047251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047251.P12400982931357912050

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=5`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047251

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P12400982931357912050.Spec : Prop :=
  ∀ n, P12400982931357912050.a n = A047251 (n + 1)

theorem P12400982931357912050.correct : P12400982931357912050.Spec := by
  intro n
  simp only [A047251, Nat.add_sub_cancel]

end A047251

/-! ## A047251.P2442974327324767978

`comp[and(3*n, -2)]`
-/

namespace A047251.P2442974327324767978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n : ℤ) (-2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047251.P2442974327324767978

namespace A047251

/-- `comp[and(3*n, -2)]` -/
def P2442974327324767978.Spec : Prop :=
  ∀ n, (P2442974327324767978.a n : ℤ) = A047251 (n + 1)

end A047251

/-! ## A047251.P12907070370603459568

`comp[∑[2*n%3]]`
-/

namespace A047251.P12907070370603459568
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047251.P12907070370603459568

namespace A047251

/-- `comp[∑[2*n%3]]` -/
def P12907070370603459568.Spec : Prop :=
  ∀ n, (P12907070370603459568.a n : ℤ) = A047251 (n + 1)

end A047251

/-! ## A047251.P12448912417429338061

`comp[n²%6+n]`
-/

namespace A047251.P12448912417429338061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 6 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047251.P12448912417429338061

namespace A047251

/-- `comp[n²%6+n]` -/
def P12448912417429338061.Spec : Prop :=
  ∀ n, (P12448912417429338061.a n : ℤ) = A047251 (n + 1)

end A047251

/-! ## A047251.P10538908782234938534

`comp[comp[or(2, n)]+n]`
-/

namespace A047251.P10538908782234938534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047251.P10538908782234938534

namespace A047251

/-- `comp[comp[or(2, n)]+n]` -/
def P10538908782234938534.Spec : Prop :=
  ∀ n, (P10538908782234938534.a n : ℤ) = A047251 (n + 1)

end A047251

/-! ## A047251.P10047657652065680453

`∑[char[and(n, -3)]]+n`
-/

namespace A047251.P10047657652065680453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047251.P10047657652065680453

namespace A047251

/-- `∑[char[and(n, -3)]]+n` -/
def P10047657652065680453.Spec : Prop :=
  ∀ n, (P10047657652065680453.a n : ℤ) = A047251 (n + 1)

end A047251

/-! ## A047251.P3874980423032080260

`comp[or(1, 3*n)-1]`
-/

namespace A047251.P3874980423032080260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (3 * n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047251.P3874980423032080260

namespace A047251

/-- `comp[or(1, 3*n)-1]` -/
def P3874980423032080260.Spec : Prop :=
  ∀ n, (P3874980423032080260.a n : ℤ) = A047251 (n + 1)

end A047251

/-! ## A047251.P16558091629896737552

`∑[gcd(2, C(n, 2))]-1`
-/

namespace A047251.P16558091629896737552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047251.P16558091629896737552

namespace A047251

/-- `∑[gcd(2, C(n, 2))]-1` -/
def P16558091629896737552.Spec : Prop :=
  ∀ n, P16558091629896737552.a n = A047251 (n + 1)

end A047251

/-! ## A047251.P13819906871414223995

`comp[xor(1, or(1, 3*n))]`
-/

namespace A047251.P13819906871414223995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 (3 * n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047251.P13819906871414223995

namespace A047251

/-- `comp[xor(1, or(1, 3*n))]` -/
def P13819906871414223995.Spec : Prop :=
  ∀ n, (P13819906871414223995.a n : ℤ) = A047251 (n + 1)

end A047251

/-! ## A047251.P8847968100131250520

`comp[lcm(3, n)-(n+2)]`
-/

namespace A047251.P8847968100131250520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 n : ℤ) - (n + 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047251.P8847968100131250520

namespace A047251

/-- `comp[lcm(3, n)-(n+2)]` -/
def P8847968100131250520.Spec : Prop :=
  ∀ n, (P8847968100131250520.a n : ℤ) = A047251 (n + 1)

end A047251

/-! ## A047251.P9924251231232914512

`comp[2*(n-gcd(3, n))]`
-/

namespace A047251.P9924251231232914512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - (Nat.gcd 3 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047251.P9924251231232914512

namespace A047251

/-- `comp[2*(n-gcd(3, n))]` -/
def P9924251231232914512.Spec : Prop :=
  ∀ n, (P9924251231232914512.a n : ℤ) = A047251 (n + 1)

end A047251

/-! ## A047251.P11907969469681397410

`comp[lcm(2*n, dr(∑[n]))]`
-/

namespace A047251.P11907969469681397410
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n) (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047251.P11907969469681397410

namespace A047251

/-- `comp[lcm(2*n, dr(∑[n]))]` -/
def P11907969469681397410.Spec : Prop :=
  ∀ n, (P11907969469681397410.a n : ℤ) = A047251 (n + 1)

end A047251

/-! ## A047251.P3139215111192036092

`comp[a(n-2)+6]` with `a(0)=0, a(1)=2`
-/

namespace A047251.P3139215111192036092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) + 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047251.P3139215111192036092

namespace A047251

/-- `comp[a(n-2)+6]` -/
def P3139215111192036092.Spec : Prop :=
  ∀ n, (P3139215111192036092.a n : ℤ) = A047251 (n + 1)

end A047251

/-! ## A047251.P12960661905015172566

`lt[lcm(6, 1-n), 3*n]`
-/

namespace A047251.P12960661905015172566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (1 - (n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047251.P12960661905015172566

namespace A047251

/-- `lt[lcm(6, 1-n), 3*n]` -/
def P12960661905015172566.Spec : Prop :=
  ∀ n, (P12960661905015172566.a n : ℤ) = A047251 (n + 1)

end A047251

/-! ## A047251.P784027992318335002

`∑[and(2, n+2)!]-1`
-/

namespace A047251.P784027992318335002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 2 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047251.P784027992318335002

namespace A047251

/-- `∑[and(2, n+2)!]-1` -/
def P784027992318335002.Spec : Prop :=
  ∀ n, P784027992318335002.a n = A047251 (n + 1)

end A047251

/-! ## A047251.P9005619385061813841

`∪[2*n, 3*n]+1`
-/

namespace A047251.P9005619385061813841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n + 1

end

end A047251.P9005619385061813841

namespace A047251

/-- `∪[2*n, 3*n]+1` -/
def P9005619385061813841.Spec : Prop :=
  ∀ n, (P9005619385061813841.a n : ℤ) = A047251 (n + 1)

end A047251

/-! ## A047251.P15005257596501935046

`lt[n, n*gcd(6, 1-n)]`
-/

namespace A047251.P15005257596501935046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd 6 (1 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047251.P15005257596501935046

namespace A047251

/-- `lt[n, n*gcd(6, 1-n)]` -/
def P15005257596501935046.Spec : Prop :=
  ∀ n, (P15005257596501935046.a n : ℤ) = A047251 (n + 1)

end A047251

/-! ## A047251.P5110297917787808681

`∑[C(2, and(2, n)²)]+n`
-/

namespace A047251.P5110297917787808681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land 2 n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047251.P5110297917787808681

namespace A047251

/-- `∑[C(2, and(2, n)²)]+n` -/
def P5110297917787808681.Spec : Prop :=
  ∀ n, (P5110297917787808681.a n : ℤ) = A047251 (n + 1)

end A047251

/-! ## A047251.P8184950776904891237

`∑[∑[n+1]%2]+n`
-/

namespace A047251.P8184950776904891237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047251.P8184950776904891237

namespace A047251

/-- `∑[∑[n+1]%2]+n` -/
def P8184950776904891237.Spec : Prop :=
  ∀ n, (P8184950776904891237.a n : ℤ) = A047251 (n + 1)

end A047251

/-! ## A047251.P16971525021042063082

`∑[and(1, ∑[n+1])]+n`
-/

namespace A047251.P16971525021042063082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047251.P16971525021042063082

namespace A047251

/-- `∑[and(1, ∑[n+1])]+n` -/
def P16971525021042063082.Spec : Prop :=
  ∀ n, (P16971525021042063082.a n : ℤ) = A047251 (n + 1)

end A047251

/-!
# A047252: Numbers that are congruent to {0, 1, 3, 4, 5} mod 6.

The programs for A047252, the canonical program `A047252.P1494296195459283499` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047252 has offset 1).

The definition of A047252 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047252.P1494296195459283499

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4, a(4)=5, a(5)=6`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047252

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P1494296195459283499.Spec : Prop :=
  ∀ n, P1494296195459283499.a n = A047252 (n + 1)

theorem P1494296195459283499.correct : P1494296195459283499.Spec := by
  intro n
  simp only [A047252, Nat.add_sub_cancel]

end A047252

/-! ## A047252.P16939062243135365139

`comp[6*n+2]`
-/

namespace A047252.P16939062243135365139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047252.P16939062243135365139

namespace A047252

/-- `comp[6*n+2]` -/
def P16939062243135365139.Spec : Prop :=
  ∀ n, (P16939062243135365139.a n : ℤ) = A047252 (n + 1)

end A047252

/-! ## A047252.P2056956911463235287

`eq[0, val(n+4, 6)]`
-/

namespace A047252.P2056956911463235287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 4) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047252.P2056956911463235287

namespace A047252

/-- `eq[0, val(n+4, 6)]` -/
def P2056956911463235287.Spec : Prop :=
  ∀ n, (P2056956911463235287.a n : ℤ) = A047252 (n + 1)

end A047252

/-! ## A047252.P15864265785762527559

`lt[val(n+4, 6), 1]`
-/

namespace A047252.P15864265785762527559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 4) 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047252.P15864265785762527559

namespace A047252

/-- `lt[val(n+4, 6), 1]` -/
def P15864265785762527559.Spec : Prop :=
  ∀ n, (P15864265785762527559.a n : ℤ) = A047252 (n + 1)

end A047252

/-! ## A047252.P7316625257998745217

`lt[n, lcm(6, 2-n)]`
-/

namespace A047252.P7316625257998745217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (2 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047252.P7316625257998745217

namespace A047252

/-- `lt[n, lcm(6, 2-n)]` -/
def P7316625257998745217.Spec : Prop :=
  ∀ n, (P7316625257998745217.a n : ℤ) = A047252 (n + 1)

end A047252

/-! ## A047252.P3939411908827748783

`round(or(1, 6*n)/5)`
-/

namespace A047252.P3939411908827748783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (6 * n) : ℚ) / 5)

end

end A047252.P3939411908827748783

namespace A047252

/-- `round(or(1, 6*n)/5)` -/
def P3939411908827748783.Spec : Prop :=
  ∀ n, P3939411908827748783.a n = A047252 (n + 1)

end A047252

/-! ## A047252.P7293422316669632928

`round(xor(1, 6*n)/5)`
-/

namespace A047252.P7293422316669632928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (6 * n) : ℚ) / 5)

end

end A047252.P7293422316669632928

namespace A047252

/-- `round(xor(1, 6*n)/5)` -/
def P7293422316669632928.Spec : Prop :=
  ∀ n, P7293422316669632928.a n = A047252 (n + 1)

end A047252

/-! ## A047252.P8821900071494643879

`floor(3*or(1, 2*n)/5)`
-/

namespace A047252.P8821900071494643879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((Nat.lor 1 (2 * n) : ℚ) / 5)⌋

end

end A047252.P8821900071494643879

namespace A047252

/-- `floor(3*or(1, 2*n)/5)` -/
def P8821900071494643879.Spec : Prop :=
  ∀ n, P8821900071494643879.a n = A047252 (n + 1)

end A047252

/-! ## A047252.P2427329936190953533

`floor(3*xor(1, 2*n)/5)`
-/

namespace A047252.P2427329936190953533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((Nat.xor 1 (2 * n) : ℚ) / 5)⌋

end

end A047252.P2427329936190953533

namespace A047252

/-- `floor(3*xor(1, 2*n)/5)` -/
def P2427329936190953533.Spec : Prop :=
  ∀ n, P2427329936190953533.a n = A047252 (n + 1)

end A047252

/-! ## A047252.P11198489931377662180

`ceil(a(n-1)/6+n)` with `a(0)=0`
-/

namespace A047252.P11198489931377662180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(a (n - 1) : ℚ) / 6 + (n : ℚ)⌉

end

end A047252.P11198489931377662180

namespace A047252

/-- `ceil(a(n-1)/6+n)` -/
def P11198489931377662180.Spec : Prop :=
  ∀ n, P11198489931377662180.a n = A047252 (n + 1)

end A047252

/-! ## A047252.P16662670786051620220

`round(C(n+1, n)/5+n)`
-/

namespace A047252.P16662670786051620220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 1) n : ℚ) / 5 + (n : ℚ))

end

end A047252.P16662670786051620220

namespace A047252

/-- `round(C(n+1, n)/5+n)` -/
def P16662670786051620220.Spec : Prop :=
  ∀ n, P16662670786051620220.a n = A047252 (n + 1)

end A047252

/-! ## A047252.P6661064078703854856

`a(n-5)+6` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A047252.P6661064078703854856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 4, 5] fun n a =>
  a (n - 5) + 6

end

end A047252.P6661064078703854856

namespace A047252

/-- `a(n-5)+6` -/
def P6661064078703854856.Spec : Prop :=
  ∀ n, (P6661064078703854856.a n : ℤ) = A047252 (n + 1)

end A047252

/-! ## A047252.P13593054928756721019

`∑[a(n-5)!]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1, a(4)=1`
-/

namespace A047252.P13593054928756721019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 1, 1] fun n f1 =>
  Nat.factorial (f1 (n - 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047252.P13593054928756721019

namespace A047252

/-- `∑[a(n-5)!]` -/
def P13593054928756721019.Spec : Prop :=
  ∀ n, (P13593054928756721019.a n : ℤ) = A047252 (n + 1)

end A047252

/-! ## A047252.P1148634050022696901

`lt[0, (n-2)*(n-2)%6]`
-/

namespace A047252.P1148634050022696901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * Int.tmod ((n : ℤ) - 2) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A047252.P1148634050022696901

namespace A047252

/-- `lt[0, (n-2)*(n-2)%6]` -/
def P1148634050022696901.Spec : Prop :=
  ∀ n, (P1148634050022696901.a n : ℤ) = A047252 (n + 1)

end A047252

/-! ## A047252.P15665408297409539907

`floor(3/(5*acot(2*n+1)))`
-/

namespace A047252.P15665408297409539907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / (5 * SequenceMachineLib.acot (2 * n + 1 : ℝ))⌋

end

end A047252.P15665408297409539907

namespace A047252

/-- `floor(3/(5*acot(2*n+1)))` -/
def P15665408297409539907.Spec : Prop :=
  ∀ n, P15665408297409539907.a n = A047252 (n + 1)

end A047252

/-! ## A047252.P2111897010012628327

`lt[lcm(n+1, n%3), n+2]`
-/

namespace A047252.P2111897010012628327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (n % 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047252.P2111897010012628327

namespace A047252

/-- `lt[lcm(n+1, n%3), n+2]` -/
def P2111897010012628327.Spec : Prop :=
  ∀ n, (P2111897010012628327.a n : ℤ) = A047252 (n + 1)

end A047252

/-! ## A047252.P10524099978189837939

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1, a(4)=1, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047252.P10524099978189837939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 1, 1, 1] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047252.P10524099978189837939

namespace A047252

/-- `∑[floor(a(n-5))]` -/
def P10524099978189837939.Spec : Prop :=
  ∀ n, (P10524099978189837939.a n : ℤ) = A047252 (n + 1)

end A047252

/-! ## A047252.P9953471977146815000

`∑[a(n-5)^a(n-1)]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1, a(4)=1, a(5)=1`
-/

namespace A047252.P9953471977146815000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 1, 1, 1] fun n f1 =>
  f1 (n - 5) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047252.P9953471977146815000

namespace A047252

/-- `∑[a(n-5)^a(n-1)]` -/
def P9953471977146815000.Spec : Prop :=
  ∀ n, (P9953471977146815000.a n : ℤ) = A047252 (n + 1)

end A047252

/-! ## A047252.P924614624363815628

`n-floor((a(n-1)/2-a(n-1))/3)` with `a(0)=0`
-/

namespace A047252.P924614624363815628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - ⌊((a (n - 1) : ℚ) / 2 - (a (n - 1) : ℚ)) / 3⌋

end

end A047252.P924614624363815628

namespace A047252

/-- `n-floor((a(n-1)/2-a(n-1))/3)` -/
def P924614624363815628.Spec : Prop :=
  ∀ n, P924614624363815628.a n = A047252 (n + 1)

end A047252

/-! ## A047252.P8740674721209670956

`∑[A130782(n)]-1`
-/

namespace A047252.P8740674721209670956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A047252.P8740674721209670956

namespace A047252

/-- `∑[A130782(n)]-1` -/
def P8740674721209670956.Spec : Prop :=
  ∀ n, P8740674721209670956.a n = A047252 (n + 1)

end A047252

/-!
# A047253: Numbers that are congruent to {1, 2, 3, 4, 5} mod 6.

The programs for A047253, the canonical program `A047253.P4561467761092434612` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047253 has offset 1).

The definition of A047253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047253.P1600118352976661330

`comp[6*n]`
-/

namespace A047253.P1600118352976661330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047253.P1600118352976661330

namespace A047253

/-- `comp[6*n]` -/
def P1600118352976661330.Spec : Prop :=
  ∀ n, (P1600118352976661330.a n : ℤ) = A047253 (n + 1)

end A047253

/-! ## A047253.P4561467761092434612

`lt[n, lcm(6, n)]`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047253

/-- `lt[n, lcm(6, n)]` -/
def P4561467761092434612.Spec : Prop :=
  ∀ n, (P4561467761092434612.a n : ℤ) = A047253 (n + 1)

theorem P4561467761092434612.correct : P4561467761092434612.Spec := by
  intro n
  simp only [A047253, Nat.add_sub_cancel]

end A047253

/-! ## A047253.P13377037874941425625

`eq[0, val(n+6, 6)]`
-/

namespace A047253.P13377037874941425625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 6) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047253.P13377037874941425625

namespace A047253

/-- `eq[0, val(n+6, 6)]` -/
def P13377037874941425625.Spec : Prop :=
  ∀ n, (P13377037874941425625.a n : ℤ) = A047253 (n + 1)

end A047253

/-! ## A047253.P8069069125165760172

`lt[val(n+6, 6), 1]`
-/

namespace A047253.P8069069125165760172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 6) 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047253.P8069069125165760172

namespace A047253

/-- `lt[val(n+6, 6), 1]` -/
def P8069069125165760172.Spec : Prop :=
  ∀ n, (P8069069125165760172.a n : ℤ) = A047253 (n + 1)

end A047253

/-! ## A047253.P14921855558996419871

`lt[0, n*n%6]`
-/

namespace A047253.P14921855558996419871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047253.P14921855558996419871

namespace A047253

/-- `lt[0, n*n%6]` -/
def P14921855558996419871.Spec : Prop :=
  ∀ n, (P14921855558996419871.a n : ℤ) = A047253 (n + 1)

end A047253

/-! ## A047253.P18017332657227395364

`ceil(6/(5*acot(n)))`
-/

namespace A047253.P18017332657227395364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈6 / (5 * SequenceMachineLib.acot (n : ℝ))⌉

end

end A047253.P18017332657227395364

namespace A047253

/-- `ceil(6/(5*acot(n)))` -/
def P18017332657227395364.Spec : Prop :=
  ∀ n, P18017332657227395364.a n = A047253 (n + 1)

end A047253

/-! ## A047253.P4734451410383893213

`ceil(or(1, 6*n)/5)`
-/

namespace A047253.P4734451410383893213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (6 * n) : ℚ) / 5⌉

end

end A047253.P4734451410383893213

namespace A047253

/-- `ceil(or(1, 6*n)/5)` -/
def P4734451410383893213.Spec : Prop :=
  ∀ n, P4734451410383893213.a n = A047253 (n + 1)

end A047253

/-! ## A047253.P13730988837068382846

`∑[gcd(5, n)%3]-1`
-/

namespace A047253.P13730988837068382846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 n % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047253.P13730988837068382846

namespace A047253

/-- `∑[gcd(5, n)%3]-1` -/
def P13730988837068382846.Spec : Prop :=
  ∀ n, P13730988837068382846.a n = A047253 (n + 1)

end A047253

/-! ## A047253.P1757568007849800434

`ceil(xor(1, 3*2*n)/5)`
-/

namespace A047253.P1757568007849800434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (3 * (2 * n)) : ℚ) / 5⌉

end

end A047253.P1757568007849800434

namespace A047253

/-- `ceil(xor(1, 3*2*n)/5)` -/
def P1757568007849800434.Spec : Prop :=
  ∀ n, P1757568007849800434.a n = A047253 (n + 1)

end A047253

/-! ## A047253.P13908378514279283249

`round(3*or(1, 2*n)/5)`
-/

namespace A047253.P13908378514279283249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((Nat.lor 1 (2 * n) : ℚ) / 5))

end

end A047253.P13908378514279283249

namespace A047253

/-- `round(3*or(1, 2*n)/5)` -/
def P13908378514279283249.Spec : Prop :=
  ∀ n, P13908378514279283249.a n = A047253 (n + 1)

end A047253

/-! ## A047253.P10780143013576502628

`round(3*xor(1, 2*n)/5)`
-/

namespace A047253.P10780143013576502628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((Nat.xor 1 (2 * n) : ℚ) / 5))

end

end A047253.P10780143013576502628

namespace A047253

/-- `round(3*xor(1, 2*n)/5)` -/
def P10780143013576502628.Spec : Prop :=
  ∀ n, P10780143013576502628.a n = A047253 (n + 1)

end A047253

/-! ## A047253.P8680242607606131304

`∑[2-(n^4)%5]-1`
-/

namespace A047253.P8680242607606131304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n ^ 4 % 5 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A047253.P8680242607606131304

namespace A047253

/-- `∑[2-(n^4)%5]-1` -/
def P8680242607606131304.Spec : Prop :=
  ∀ n, P8680242607606131304.a n = A047253 (n + 1)

end A047253

/-! ## A047253.P4972528451794571193

`6+a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A047253.P4972528451794571193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4, 5] fun n a =>
  6 + a (n - 5)

end

end A047253.P4972528451794571193

namespace A047253

/-- `6+a(n-5)` -/
def P4972528451794571193.Spec : Prop :=
  ∀ n, (P4972528451794571193.a n : ℤ) = A047253 (n + 1)

end A047253

/-! ## A047253.P9341372510785273313

`∑[floor(a(n-5))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A047253.P9341372510785273313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 2] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047253.P9341372510785273313

namespace A047253

/-- `∑[floor(a(n-5))]` -/
def P9341372510785273313.Spec : Prop :=
  ∀ n, (P9341372510785273313.a n : ℤ) = A047253 (n + 1)

end A047253

/-! ## A047253.P10301850939984728387

`∑[a(n-5)^a(n-1)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=2`
-/

namespace A047253.P10301850939984728387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 2] fun n f1 =>
  f1 (n - 5) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047253.P10301850939984728387

namespace A047253

/-- `∑[a(n-5)^a(n-1)]` -/
def P10301850939984728387.Spec : Prop :=
  ∀ n, (P10301850939984728387.a n : ℤ) = A047253 (n + 1)

end A047253

/-! ## A047253.P1074498200645789845

`∑[abs(A280569(n))]`
-/

namespace A047253.P1074498200645789845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A280569 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047253.P1074498200645789845

namespace A047253

/-- `∑[abs(A280569(n))]` -/
def P1074498200645789845.Spec : Prop :=
  ∀ n, P1074498200645789845.a n = A047253 (n + 1)

end A047253

/-! ## A047253.P15309793008991587781

`∑[dr(A040789(n))]`
-/

namespace A047253.P15309793008991587781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040789 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047253.P15309793008991587781

namespace A047253

/-- `∑[dr(A040789(n))]` -/
def P15309793008991587781.Spec : Prop :=
  ∀ n, (P15309793008991587781.a n : ℤ) = A047253 (n + 1)

end A047253

/-! ## A047253.P8483454348436080826

`∑[dr(A040807(n))]`
-/

namespace A047253.P8483454348436080826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040807 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047253.P8483454348436080826

namespace A047253

/-- `∑[dr(A040807(n))]` -/
def P8483454348436080826.Spec : Prop :=
  ∀ n, (P8483454348436080826.a n : ℤ) = A047253 (n + 1)

end A047253

/-! ## A047253.P3245540411076332056

`comp[A016969(n)]+1`
-/

namespace A047253.P3245540411076332056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A047253.P3245540411076332056

namespace A047253

/-- `comp[A016969(n)]+1` -/
def P3245540411076332056.Spec : Prop :=
  ∀ n, (P3245540411076332056.a n : ℤ) = A047253 (n + 1)

end A047253

/-!
# A047254: Numbers that are congruent to {2, 3, 5} mod 6.

The programs for A047254, the canonical program `A047254.P975492896153018350` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047254 has offset 1).

The definition of A047254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047254.P975492896153018350

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=8`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047254

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P975492896153018350.Spec : Prop :=
  ∀ n, P975492896153018350.a n = A047254 (n + 1)

theorem P975492896153018350.correct : P975492896153018350.Spec := by
  intro n
  simp only [A047254, Nat.add_sub_cancel]

end A047254

/-! ## A047254.P11348684881651137125

`∑[(n+2)%3]+n`
-/

namespace A047254.P11348684881651137125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047254.P11348684881651137125

namespace A047254

/-- `∑[(n+2)%3]+n` -/
def P11348684881651137125.Spec : Prop :=
  ∀ n, (P11348684881651137125.a n : ℤ) = A047254 (n + 1)

end A047254

/-! ## A047254.P6685700429532164168

`comp[n*(2-n%3)]`
-/

namespace A047254.P6685700429532164168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - ((n % 3 : ℕ) : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047254.P6685700429532164168

namespace A047254

/-- `comp[n*(2-n%3)]` -/
def P6685700429532164168.Spec : Prop :=
  ∀ n, (P6685700429532164168.a n : ℤ) = A047254 (n + 1)

end A047254

/-! ## A047254.P4732956253945648298

`Δ[ceil(n/3)+n²]`
-/

namespace A047254.P4732956253945648298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉ + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047254.P4732956253945648298

namespace A047254

/-- `Δ[ceil(n/3)+n²]` -/
def P4732956253945648298.Spec : Prop :=
  ∀ n, P4732956253945648298.a n = A047254 (n + 1)

end A047254

/-! ## A047254.P16650647087154458681

`a(n-3)+6` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A047254.P16650647087154458681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5] fun n a =>
  a (n - 3) + 6

end

end A047254.P16650647087154458681

namespace A047254

/-- `a(n-3)+6` -/
def P16650647087154458681.Spec : Prop :=
  ∀ n, (P16650647087154458681.a n : ℤ) = A047254 (n + 1)

end A047254

/-! ## A047254.P13500456735468300991

`∑[dr(3*n)/3]+2`
-/

namespace A047254.P13500456735468300991
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (3 * n : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A047254.P13500456735468300991

namespace A047254

/-- `∑[dr(3*n)/3]+2` -/
def P13500456735468300991.Spec : Prop :=
  ∀ n, P13500456735468300991.a n = (A047254 (n + 1) : ℚ)

end A047254

/-! ## A047254.P3256523252325327992

`∑[abs(a(n-3))]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A047254.P3256523252325327992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047254.P3256523252325327992

namespace A047254

/-- `∑[abs(a(n-3))]` -/
def P3256523252325327992.Spec : Prop :=
  ∀ n, (P3256523252325327992.a n : ℤ) = A047254 (n + 1)

end A047254

/-! ## A047254.P16875393679944030706

`∑[dr(a(n-3))]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A047254.P16875393679944030706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047254.P16875393679944030706

namespace A047254

/-- `∑[dr(a(n-3))]` -/
def P16875393679944030706.Spec : Prop :=
  ∀ n, (P16875393679944030706.a n : ℤ) = A047254 (n + 1)

end A047254

/-! ## A047254.P7063314745928507236

`∑[floor(a(n-3))]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047254.P7063314745928507236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047254.P7063314745928507236

namespace A047254

/-- `∑[floor(a(n-3))]` -/
def P7063314745928507236.Spec : Prop :=
  ∀ n, (P7063314745928507236.a n : ℤ) = A047254 (n + 1)

end A047254

/-! ## A047254.P13328263831361150178

`∑[ceil(a(n-3))]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A047254.P13328263831361150178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047254.P13328263831361150178

namespace A047254

/-- `∑[ceil(a(n-3))]` -/
def P13328263831361150178.Spec : Prop :=
  ∀ n, (P13328263831361150178.a n : ℤ) = A047254 (n + 1)

end A047254

/-! ## A047254.P2268025935473913021

`∑[round(a(n-3))]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=3`

`round` is left out, it is the identity on integers.
-/

namespace A047254.P2268025935473913021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047254.P2268025935473913021

namespace A047254

/-- `∑[round(a(n-3))]` -/
def P2268025935473913021.Spec : Prop :=
  ∀ n, (P2268025935473913021.a n : ℤ) = A047254 (n + 1)

end A047254

/-! ## A047254.P4540295900445269743

`∑[3-(2*n)%3]-1`
-/

namespace A047254.P4540295900445269743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((2 * n % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A047254.P4540295900445269743

namespace A047254

/-- `∑[3-(2*n)%3]-1` -/
def P4540295900445269743.Spec : Prop :=
  ∀ n, P4540295900445269743.a n = A047254 (n + 1)

end A047254

/-! ## A047254.P4142204201284799444

`2*(n+1)-n²%3`
-/

namespace A047254.P4142204201284799444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A047254.P4142204201284799444

namespace A047254

/-- `2*(n+1)-n²%3` -/
def P4142204201284799444.Spec : Prop :=
  ∀ n, P4142204201284799444.a n = A047254 (n + 1)

end A047254

/-! ## A047254.P16804857210734125030

`(gcd(3, n)-1)!+2*n`
-/

namespace A047254.P16804857210734125030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((Nat.gcd 3 n : ℤ) - 1).toNat + 2 * n

end

end A047254.P16804857210734125030

namespace A047254

/-- `(gcd(3, n)-1)!+2*n` -/
def P16804857210734125030.Spec : Prop :=
  ∀ n, (P16804857210734125030.a n : ℤ) = A047254 (n + 1)

end A047254

/-! ## A047254.P690459307994442413

`comp[n*(2*(n+1))%3]`
-/

namespace A047254.P690459307994442413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * (n + 1) % 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047254.P690459307994442413

namespace A047254

/-- `comp[n*(2*(n+1))%3]` -/
def P690459307994442413.Spec : Prop :=
  ∀ n, (P690459307994442413.a n : ℤ) = A047254 (n + 1)

end A047254

/-! ## A047254.P2032926368582956244

`char[lcm(3, n)]+n+1+n`
-/

namespace A047254.P2032926368582956244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (n + 1 + n)

end

end A047254.P2032926368582956244

namespace A047254

/-- `char[lcm(3, n)]+n+1+n` -/
def P2032926368582956244.Spec : Prop :=
  ∀ n, (P2032926368582956244.a n : ℤ) = A047254 (n + 1)

end A047254

/-! ## A047254.P18052128259366262187

`∑[and(3, a(n-3))]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A047254.P18052128259366262187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 3] fun n f1 =>
  Nat.land 3 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047254.P18052128259366262187

namespace A047254

/-- `∑[and(3, a(n-3))]` -/
def P18052128259366262187.Spec : Prop :=
  ∀ n, (P18052128259366262187.a n : ℤ) = A047254 (n + 1)

end A047254

/-!
# A047255: Numbers that are congruent to {1, 2, 3, 5} mod 6.

The programs for A047255, the canonical program `A047255.P1071511240433996966` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047255 has offset 1).

The definition of A047255 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047255.P1071511240433996966

`a(n-4)+6` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047255

/-- `a(n-4)+6` -/
def P1071511240433996966.Spec : Prop :=
  ∀ n, (P1071511240433996966.a n : ℤ) = A047255 (n + 1)

theorem P1071511240433996966.correct : P1071511240433996966.Spec := by
  intro n
  simp only [A047255, Nat.add_sub_cancel]

end A047255

/-! ## A047255.P329824456771098298

`A047237(n+1)+1`
-/

namespace A047255.P329824456771098298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047237 (n + 1) + 1

end

end A047255.P329824456771098298

namespace A047255

/-- `A047237(n+1)+1` -/
def P329824456771098298.Spec : Prop :=
  ∀ n, P329824456771098298.a n = A047255 (n + 1)

end A047255

/-! ## A047255.P3737730025234990620

`∑[gcd(2, ∑[n])]-1`
-/

namespace A047255.P3737730025234990620
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047255.P3737730025234990620

namespace A047255

/-- `∑[gcd(2, ∑[n])]-1` -/
def P3737730025234990620.Spec : Prop :=
  ∀ n, P3737730025234990620.a n = A047255 (n + 1)

end A047255

/-! ## A047255.P3473734336583860353

`comp[n-n²%6]`
-/

namespace A047255.P3473734336583860353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n ^ 2 % 6 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047255.P3473734336583860353

namespace A047255

/-- `comp[n-n²%6]` -/
def P3473734336583860353.Spec : Prop :=
  ∀ n, (P3473734336583860353.a n : ℤ) = A047255 (n + 1)

end A047255

/-! ## A047255.P17094396126038500809

`comp[or(1, 3*n)-3]`
-/

namespace A047255.P17094396126038500809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (3 * n) : ℤ) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047255.P17094396126038500809

namespace A047255

/-- `comp[or(1, 3*n)-3]` -/
def P17094396126038500809.Spec : Prop :=
  ∀ n, (P17094396126038500809.a n : ℤ) = A047255 (n + 1)

end A047255

/-! ## A047255.P5688592535428772132

`comp[n%2+3*n]`
-/

namespace A047255.P5688592535428772132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047255.P5688592535428772132

namespace A047255

/-- `comp[n%2+3*n]` -/
def P5688592535428772132.Spec : Prop :=
  ∀ n, (P5688592535428772132.a n : ℤ) = A047255 (n + 1)

end A047255

/-! ## A047255.P8252174424089381447

`comp[and(1, n)+3*n]`
-/

namespace A047255.P8252174424089381447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047255.P8252174424089381447

namespace A047255

/-- `comp[and(1, n)+3*n]` -/
def P8252174424089381447.Spec : Prop :=
  ∀ n, (P8252174424089381447.a n : ℤ) = A047255 (n + 1)

end A047255

/-! ## A047255.P329227298006437682

`∑[and(2, abs(1-n))!]`
-/

namespace A047255.P329227298006437682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land 2 |1 - (n : ℤ)|).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047255.P329227298006437682

namespace A047255

/-- `∑[and(2, abs(1-n))!]` -/
def P329227298006437682.Spec : Prop :=
  ∀ n, (P329227298006437682.a n : ℤ) = A047255 (n + 1)

end A047255

/-! ## A047255.P12086826188090941364

`comp[a(n-2)+6]` with `a(0)=0, a(1)=4`
-/

namespace A047255.P12086826188090941364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  f1 (n - 2) + 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047255.P12086826188090941364

namespace A047255

/-- `comp[a(n-2)+6]` -/
def P12086826188090941364.Spec : Prop :=
  ∀ n, (P12086826188090941364.a n : ℤ) = A047255 (n + 1)

end A047255

/-! ## A047255.P3636236415782423130

`∑[and(2, n-1)!]-1`
-/

namespace A047255.P3636236415782423130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land 2 ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047255.P3636236415782423130

namespace A047255

/-- `∑[and(2, n-1)!]-1` -/
def P3636236415782423130.Spec : Prop :=
  ∀ n, P3636236415782423130.a n = A047255 (n + 1)

end A047255

/-! ## A047255.P8487396717263689901

`∑[2-and(1, ∑[n])]-1`
-/

namespace A047255.P8487396717263689901
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A047255.P8487396717263689901

namespace A047255

/-- `∑[2-and(1, ∑[n])]-1` -/
def P8487396717263689901.Spec : Prop :=
  ∀ n, P8487396717263689901.a n = A047255 (n + 1)

end A047255

/-! ## A047255.P7870140561347323093

`Δ[ceil(C(3*n, 2)/6)]`
-/

namespace A047255.P7870140561347323093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (3 * n) 2 : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047255.P7870140561347323093

namespace A047255

/-- `Δ[ceil(C(3*n, 2)/6)]` -/
def P7870140561347323093.Spec : Prop :=
  ∀ n, P7870140561347323093.a n = A047255 (n + 1)

end A047255

/-! ## A047255.P5092093834378727258

`comp[2*comp[3*n+1]]`
-/

namespace A047255.P5092093834378727258
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047255.P5092093834378727258

namespace A047255

/-- `comp[2*comp[3*n+1]]` -/
def P5092093834378727258.Spec : Prop :=
  ∀ n, (P5092093834378727258.a n : ℤ) = A047255 (n + 1)

end A047255

/-! ## A047255.P12952111428100009076

`lt[n, n*gcd(6, n+1)]`
-/

namespace A047255.P12952111428100009076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 6 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047255.P12952111428100009076

namespace A047255

/-- `lt[n, n*gcd(6, n+1)]` -/
def P12952111428100009076.Spec : Prop :=
  ∀ n, (P12952111428100009076.a n : ℤ) = A047255 (n + 1)

end A047255

/-! ## A047255.P8837726855609296973

`lt[C(n, 3)%(n+1), n]`
-/

namespace A047255.P8837726855609296973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 % (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047255.P8837726855609296973

namespace A047255

/-- `lt[C(n, 3)%(n+1), n]` -/
def P8837726855609296973.Spec : Prop :=
  ∀ n, (P8837726855609296973.a n : ℤ) = A047255 (n + 1)

end A047255

/-! ## A047255.P8100746024807482463

`∑[(∑[n]+1)%2]+n`
-/

namespace A047255.P8100746024807482463
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047255.P8100746024807482463

namespace A047255

/-- `∑[(∑[n]+1)%2]+n` -/
def P8100746024807482463.Spec : Prop :=
  ∀ n, (P8100746024807482463.a n : ℤ) = A047255 (n + 1)

end A047255

/-! ## A047255.P11458154762327143968

`∑[and(1, ∑[n]+1)]+n`
-/

namespace A047255.P11458154762327143968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047255.P11458154762327143968

namespace A047255

/-- `∑[and(1, ∑[n]+1)]+n` -/
def P11458154762327143968.Spec : Prop :=
  ∀ n, (P11458154762327143968.a n : ℤ) = A047255 (n + 1)

end A047255

/-! ## A047255.P17989573943857363928

`∑[3-a(n-2)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A047255.P17989573943857363928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  3 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047255.P17989573943857363928

namespace A047255

/-- `∑[3-a(n-2)]` -/
def P17989573943857363928.Spec : Prop :=
  ∀ n, P17989573943857363928.a n = A047255 (n + 1)

end A047255

/-! ## A047255.P2916722934731534243

`lt[lcm(6, n+1), 3*(n+2)]`
-/

namespace A047255.P2916722934731534243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047255.P2916722934731534243

namespace A047255

/-- `lt[lcm(6, n+1), 3*(n+2)]` -/
def P2916722934731534243.Spec : Prop :=
  ∀ n, (P2916722934731534243.a n : ℤ) = A047255 (n + 1)

end A047255

/-! ## A047255.P17249708775630346566

`∪[2*n+1, 3*n+2]`
-/

namespace A047255.P17249708775630346566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A047255.P17249708775630346566

namespace A047255

/-- `∪[2*n+1, 3*n+2]` -/
def P17249708775630346566.Spec : Prop :=
  ∀ n, (P17249708775630346566.a n : ℤ) = A047255 (n + 1)

end A047255

/-!
# A047256: Numbers that are congruent to {0, 1, 2, 3, 5} mod 6.

The programs for A047256, the canonical program `A047256.P16489505909603463795` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047256 has offset 1).

The definition of A047256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047256.P18112887342387000812

`comp[6*n-2]`
-/

namespace A047256.P18112887342387000812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047256.P18112887342387000812

namespace A047256

/-- `comp[6*n-2]` -/
def P18112887342387000812.Spec : Prop :=
  ∀ n, (P18112887342387000812.a n : ℤ) = A047256 (n + 1)

end A047256

/-! ## A047256.P16489505909603463795

`eq[0, val(n+2, 6)]`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047256

/-- `eq[0, val(n+2, 6)]` -/
def P16489505909603463795.Spec : Prop :=
  ∀ n, (P16489505909603463795.a n : ℤ) = A047256 (n + 1)

theorem P16489505909603463795.correct : P16489505909603463795.Spec := by
  intro n
  simp only [A047256, Nat.add_sub_cancel]

end A047256

/-! ## A047256.P16296700084276701988

`lt[val(n+2, 6), 1]`
-/

namespace A047256.P16296700084276701988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047256.P16296700084276701988

namespace A047256

/-- `lt[val(n+2, 6), 1]` -/
def P16296700084276701988.Spec : Prop :=
  ∀ n, (P16296700084276701988.a n : ℤ) = A047256 (n + 1)

end A047256

/-! ## A047256.P14635316596202509192

`floor(or(1, 6*n)/5)`
-/

namespace A047256.P14635316596202509192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (6 * n) : ℚ) / 5⌋

end

end A047256.P14635316596202509192

namespace A047256

/-- `floor(or(1, 6*n)/5)` -/
def P14635316596202509192.Spec : Prop :=
  ∀ n, P14635316596202509192.a n = A047256 (n + 1)

end A047256

/-! ## A047256.P10138192693520938030

`floor(xor(1, 6*n)/5)`
-/

namespace A047256.P10138192693520938030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 (6 * n) : ℚ) / 5⌋

end

end A047256.P10138192693520938030

namespace A047256

/-- `floor(xor(1, 6*n)/5)` -/
def P10138192693520938030.Spec : Prop :=
  ∀ n, P10138192693520938030.a n = A047256 (n + 1)

end A047256

/-! ## A047256.P8269972582878479774

`record[n-val(n+2, 6)]`
-/

namespace A047256.P8269972582878479774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (n + 2) 6 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047256.P8269972582878479774

namespace A047256

/-- `record[n-val(n+2, 6)]` -/
def P8269972582878479774.Spec : Prop :=
  ∀ n, P8269972582878479774.a n = A047256 (n + 1)

end A047256

/-! ## A047256.P10775991961304957851

`record[gcd(n, val(n+2, 6))]`
-/

namespace A047256.P10775991961304957851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (SequenceMachineLib.valuation (n + 2) 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047256.P10775991961304957851

namespace A047256

/-- `record[gcd(n, val(n+2, 6))]` -/
def P10775991961304957851.Spec : Prop :=
  ∀ n, (P10775991961304957851.a n : ℤ) = A047256 (n + 1)

end A047256

/-! ## A047256.P18443354248841247963

`record[xor(n, val(n+2, 6))]`
-/

namespace A047256.P18443354248841247963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (SequenceMachineLib.valuation (n + 2) 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047256.P18443354248841247963

namespace A047256

/-- `record[xor(n, val(n+2, 6))]` -/
def P18443354248841247963.Spec : Prop :=
  ∀ n, (P18443354248841247963.a n : ℤ) = A047256 (n + 1)

end A047256

/-! ## A047256.P16164869585174521625

`lt[n+2, lcm(6, n+2)]`
-/

namespace A047256.P16164869585174521625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047256.P16164869585174521625

namespace A047256

/-- `lt[n+2, lcm(6, n+2)]` -/
def P16164869585174521625.Spec : Prop :=
  ∀ n, (P16164869585174521625.a n : ℤ) = A047256 (n + 1)

end A047256

/-! ## A047256.P5902789371170705568

`lt[C(2, n), (n+2)%6]`
-/

namespace A047256.P5902789371170705568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047256.P5902789371170705568

namespace A047256

/-- `lt[C(2, n), (n+2)%6]` -/
def P5902789371170705568.Spec : Prop :=
  ∀ n, (P5902789371170705568.a n : ℤ) = A047256 (n + 1)

end A047256

/-! ## A047256.P7478141273958339735

`∑[gcd(5, n+1)%3]-1`
-/

namespace A047256.P7478141273958339735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 (n + 1) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047256.P7478141273958339735

namespace A047256

/-- `∑[gcd(5, n+1)%3]-1` -/
def P7478141273958339735.Spec : Prop :=
  ∀ n, P7478141273958339735.a n = A047256 (n + 1)

end A047256

/-! ## A047256.P1049422224444232191

`round(a(n-1)/6+n)` with `a(0)=0`
-/

namespace A047256.P1049422224444232191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / 6 + (n : ℚ))

end

end A047256.P1049422224444232191

namespace A047256

/-- `round(a(n-1)/6+n)` -/
def P1049422224444232191.Spec : Prop :=
  ∀ n, P1049422224444232191.a n = A047256 (n + 1)

end A047256

/-! ## A047256.P7768266758933517289

`floor(C(n+1, n)/5+n)`
-/

namespace A047256.P7768266758933517289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) n : ℚ) / 5 + (n : ℚ)⌋

end

end A047256.P7768266758933517289

namespace A047256

/-- `floor(C(n+1, n)/5+n)` -/
def P7768266758933517289.Spec : Prop :=
  ∀ n, P7768266758933517289.a n = A047256 (n + 1)

end A047256

/-! ## A047256.P11462218860420155251

`a(n-5)+6` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=5`
-/

namespace A047256.P11462218860420155251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 5] fun n a =>
  a (n - 5) + 6

end

end A047256.P11462218860420155251

namespace A047256

/-- `a(n-5)+6` -/
def P11462218860420155251.Spec : Prop :=
  ∀ n, (P11462218860420155251.a n : ℤ) = A047256 (n + 1)

end A047256

/-! ## A047256.P13217086005680461859

`∑[a(n-5)!]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A047256.P13217086005680461859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 2] fun n f1 =>
  Nat.factorial (f1 (n - 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047256.P13217086005680461859

namespace A047256

/-- `∑[a(n-5)!]` -/
def P13217086005680461859.Spec : Prop :=
  ∀ n, (P13217086005680461859.a n : ℤ) = A047256 (n + 1)

end A047256

/-! ## A047256.P16565345295935587342

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047256.P16565345295935587342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 2, 1] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047256.P16565345295935587342

namespace A047256

/-- `∑[floor(a(n-5))]` -/
def P16565345295935587342.Spec : Prop :=
  ∀ n, (P16565345295935587342.a n : ℤ) = A047256 (n + 1)

end A047256

/-! ## A047256.P10769337393885101802

`n-floor((2-a(n-1))/6)` with `a(0)=0`
-/

namespace A047256.P10769337393885101802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - ⌊(2 - a (n - 1) : ℚ) / 6⌋

end

end A047256.P10769337393885101802

namespace A047256

/-- `n-floor((2-a(n-1))/6)` -/
def P10769337393885101802.Spec : Prop :=
  ∀ n, P10769337393885101802.a n = A047256 (n + 1)

end A047256

/-! ## A047256.P12980529788170997369

`∪[2*n+1, and(3*n, -2)]`
-/

namespace A047256.P12980529788170997369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n : ℤ) (-2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A047256.P12980529788170997369

namespace A047256

/-- `∪[2*n+1, and(3*n, -2)]` -/
def P12980529788170997369.Spec : Prop :=
  ∀ n, (P12980529788170997369.a n : ℤ) = A047256 (n + 1)

end A047256

/-! ## A047256.P8127705325658302114

`∪[2*n+1, ceil(3*n/2)]`
-/

namespace A047256.P8127705325658302114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((n : ℚ) / 2)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A047256.P8127705325658302114

namespace A047256

/-- `∪[2*n+1, ceil(3*n/2)]` -/
def P8127705325658302114.Spec : Prop :=
  ∀ n, (P8127705325658302114.a n : ℤ) = A047256 (n + 1)

end A047256

/-! ## A047256.P7333838501663312355

`∑[a(n-5)^a(n-1)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=1`
-/

namespace A047256.P7333838501663312355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 2, 1] fun n f1 =>
  f1 (n - 5) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047256.P7333838501663312355

namespace A047256

/-- `∑[a(n-5)^a(n-1)]` -/
def P7333838501663312355.Spec : Prop :=
  ∀ n, (P7333838501663312355.a n : ℤ) = A047256 (n + 1)

end A047256

/-!
# A047257: Numbers that are congruent to {4, 5} mod 6.

The programs for A047257, the canonical program `A047257.P14073669044794803457` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047257 has offset 1).

The definition of A047257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047257.P14073669044794803457

`4+6*floor(n/2)+n%2`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047257

/-- `4+6*floor(n/2)+n%2` -/
def P14073669044794803457.Spec : Prop :=
  ∀ n, P14073669044794803457.a n = A047257 (n + 1)

theorem P14073669044794803457.correct : P14073669044794803457.Spec := by
  intro n
  simp only [A047257, Nat.add_sub_cancel]

end A047257

/-! ## A047257.P10124690004275523464

`xor(1, 3*n)+3`
-/

namespace A047257.P10124690004275523464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n) + 3

end

end A047257.P10124690004275523464

namespace A047257

/-- `xor(1, 3*n)+3` -/
def P10124690004275523464.Spec : Prop :=
  ∀ n, (P10124690004275523464.a n : ℤ) = A047257 (n + 1)

end A047257

/-! ## A047257.P4942680466739997378

`a(n-2)+6` with `a(0)=4, a(1)=5`
-/

namespace A047257.P4942680466739997378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 5] fun n a =>
  a (n - 2) + 6

end

end A047257.P4942680466739997378

namespace A047257

/-- `a(n-2)+6` -/
def P4942680466739997378.Spec : Prop :=
  ∀ n, (P4942680466739997378.a n : ℤ) = A047257 (n + 1)

end A047257

/-! ## A047257.P12017611698643262597

`2-xor(3*n, -2)`
-/

namespace A047257.P12017611698643262597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor (3 * n : ℤ) (-2)

end

end A047257.P12017611698643262597

namespace A047257

/-- `2-xor(3*n, -2)` -/
def P12017611698643262597.Spec : Prop :=
  ∀ n, P12017611698643262597.a n = A047257 (n + 1)

end A047257

/-! ## A047257.P10111596057906188668

`∑[gcd(5, n%2)]-1`
-/

namespace A047257.P10111596057906188668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047257.P10111596057906188668

namespace A047257

/-- `∑[gcd(5, n%2)]-1` -/
def P10111596057906188668.Spec : Prop :=
  ∀ n, P10111596057906188668.a n = A047257 (n + 1)

end A047257

/-! ## A047257.P1811414555636312326

`record[2*or(2, n)]-n`
-/

namespace A047257.P1811414555636312326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n : ℤ)

end

end A047257.P1811414555636312326

namespace A047257

/-- `record[2*or(2, n)]-n` -/
def P1811414555636312326.Spec : Prop :=
  ∀ n, P1811414555636312326.a n = A047257 (n + 1)

end A047257

/-! ## A047257.P10846945980278061570

`record[or(5, n)]-(n+1)`
-/

namespace A047257.P10846945980278061570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n + 1 : ℤ)

end

end A047257.P10846945980278061570

namespace A047257

/-- `record[or(5, n)]-(n+1)` -/
def P10846945980278061570.Spec : Prop :=
  ∀ n, P10846945980278061570.a n = A047257 (n + 1)

end A047257

/-! ## A047257.P9921547928060302065

`record[2*xor(2, n)]-n`
-/

namespace A047257.P9921547928060302065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n : ℤ)

end

end A047257.P9921547928060302065

namespace A047257

/-- `record[2*xor(2, n)]-n` -/
def P9921547928060302065.Spec : Prop :=
  ∀ n, P9921547928060302065.a n = A047257 (n + 1)

end A047257

/-! ## A047257.P11443652428461684481

`record[or(5, n)-1]-n`
-/

namespace A047257.P11443652428461684481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A047257.P11443652428461684481

namespace A047257

/-- `record[or(5, n)-1]-n` -/
def P11443652428461684481.Spec : Prop :=
  ∀ n, P11443652428461684481.a n = A047257 (n + 1)

end A047257

/-! ## A047257.P10763031029785967712

`record[xor(5, n)]-(n+1)`
-/

namespace A047257.P10763031029785967712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n + 1 : ℤ)

end

end A047257.P10763031029785967712

namespace A047257

/-- `record[xor(5, n)]-(n+1)` -/
def P10763031029785967712.Spec : Prop :=
  ∀ n, P10763031029785967712.a n = A047257 (n + 1)

end A047257

/-! ## A047257.P6833569786569763869

`record[xor(5, n)-1]-n`
-/

namespace A047257.P6833569786569763869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 5 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A047257.P6833569786569763869

namespace A047257

/-- `record[xor(5, n)-1]-n` -/
def P6833569786569763869.Spec : Prop :=
  ∀ n, P6833569786569763869.a n = A047257 (n + 1)

end A047257

/-! ## A047257.P5338107729777336738

`∑[6-a(n-1)]` with `a(0)=4, a(1)=1`
-/

namespace A047257.P5338107729777336738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047257.P5338107729777336738

namespace A047257

/-- `∑[6-a(n-1)]` -/
def P5338107729777336738.Spec : Prop :=
  ∀ n, P5338107729777336738.a n = A047257 (n + 1)

end A047257

/-! ## A047257.P5416168990100301169

`2*gcd(2, n)+3*n`
-/

namespace A047257.P5416168990100301169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd 2 n + 3 * n

end

end A047257.P5416168990100301169

namespace A047257

/-- `2*gcd(2, n)+3*n` -/
def P5416168990100301169.Spec : Prop :=
  ∀ n, (P5416168990100301169.a n : ℤ) = A047257 (n + 1)

end A047257

/-! ## A047257.P11377359295394342151

`2*or(1, n)+2+n`
-/

namespace A047257.P11377359295394342151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 1 n + 2 + n

end

end A047257.P11377359295394342151

namespace A047257

/-- `2*or(1, n)+2+n` -/
def P11377359295394342151.Spec : Prop :=
  ∀ n, (P11377359295394342151.a n : ℤ) = A047257 (n + 1)

end A047257

/-! ## A047257.P2917846070096836809

`lcm(2, or(1, n))+n+2`
-/

namespace A047257.P2917846070096836809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.lor 1 n) + (n + 2)

end

end A047257.P2917846070096836809

namespace A047257

/-- `lcm(2, or(1, n))+n+2` -/
def P2917846070096836809.Spec : Prop :=
  ∀ n, (P2917846070096836809.a n : ℤ) = A047257 (n + 1)

end A047257

/-! ## A047257.P312330671577466659

`xor(1, n)+n+3+n`
-/

namespace A047257.P312330671577466659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + (n + 3) + n

end

end A047257.P312330671577466659

namespace A047257

/-- `xor(1, n)+n+3+n` -/
def P312330671577466659.Spec : Prop :=
  ∀ n, (P312330671577466659.a n : ℤ) = A047257 (n + 1)

end A047257

/-! ## A047257.P2177612286807765066

`Δ[or(1, (n+1)²)]+n`
-/

namespace A047257.P2177612286807765066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)

end

end A047257.P2177612286807765066

namespace A047257

/-- `Δ[or(1, (n+1)²)]+n` -/
def P2177612286807765066.Spec : Prop :=
  ∀ n, P2177612286807765066.a n = A047257 (n + 1)

end A047257

/-! ## A047257.P7935810302293754843

`eq[n+1, or(5, n)]-n`
-/

namespace A047257.P7935810302293754843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n : ℤ)

end

end A047257.P7935810302293754843

namespace A047257

/-- `eq[n+1, or(5, n)]-n` -/
def P7935810302293754843.Spec : Prop :=
  ∀ n, P7935810302293754843.a n = A047257 (n + 1)

end A047257

/-! ## A047257.P295527052163635080

`(-1)^n+3*(n+1)`
-/

namespace A047257.P295527052163635080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + (3 * (n + 1) : ℤ)

end

end A047257.P295527052163635080

namespace A047257

/-- `(-1)^n+3*(n+1)` -/
def P295527052163635080.Spec : Prop :=
  ∀ n, P295527052163635080.a n = A047257 (n + 1)

end A047257

/-!
# A047258: Numbers that are congruent to {0, 4, 5} mod 6.

The programs for A047258, the canonical program `A047258.P9073791806533743364` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047258 has offset 1).

The definition of A047258 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047258.P9073791806533743364

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=5, a(3)=6`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047258

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P9073791806533743364.Spec : Prop :=
  ∀ n, P9073791806533743364.a n = A047258 (n + 1)

theorem P9073791806533743364.correct : P9073791806533743364.Spec := by
  intro n
  simp only [A047258, Nat.add_sub_cancel]

end A047258

/-! ## A047258.P11045161780281393045

`∑[and(5, dr(6*n))]`
-/

namespace A047258.P11045161780281393045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 5 (SequenceMachineLib.digitalRoot (6 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047258.P11045161780281393045

namespace A047258

/-- `∑[and(5, dr(6*n))]` -/
def P11045161780281393045.Spec : Prop :=
  ∀ n, (P11045161780281393045.a n : ℤ) = A047258 (n + 1)

end A047258

/-! ## A047258.P9751546546405060734

`3*ceil(n/3)+n`
-/

namespace A047258.P9751546546405060734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈(n : ℚ) / 3⌉ + (n : ℤ)

end

end A047258.P9751546546405060734

namespace A047258

/-- `3*ceil(n/3)+n` -/
def P9751546546405060734.Spec : Prop :=
  ∀ n, P9751546546405060734.a n = A047258 (n + 1)

end A047258

/-! ## A047258.P16811095206684415976

`comp[floor(xor(2, n)/2+n)]`
-/

namespace A047258.P16811095206684415976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 2 n : ℚ) / 2 + (n : ℚ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047258.P16811095206684415976

namespace A047258

/-- `comp[floor(xor(2, n)/2+n)]` -/
def P16811095206684415976.Spec : Prop :=
  ∀ n, (P16811095206684415976.a n : ℤ) = A047258 (n + 1)

end A047258

/-! ## A047258.P12438712759230340108

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=4, a(2)=1, a(3)=1`
-/

namespace A047258.P12438712759230340108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 1, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047258.P12438712759230340108

namespace A047258

/-- `∑[abs(a(n-3))]` -/
def P12438712759230340108.Spec : Prop :=
  ∀ n, (P12438712759230340108.a n : ℤ) = A047258 (n + 1)

end A047258

/-! ## A047258.P499640529570239836

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=4, a(2)=1, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047258.P499640529570239836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 1, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047258.P499640529570239836

namespace A047258

/-- `∑[floor(a(n-3))]` -/
def P499640529570239836.Spec : Prop :=
  ∀ n, (P499640529570239836.a n : ℤ) = A047258 (n + 1)

end A047258

/-! ## A047258.P17008718985007683259

`comp[2*n+1-n%3]`
-/

namespace A047258.P17008718985007683259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (1 - ((n % 3 : ℕ) : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047258.P17008718985007683259

namespace A047258

/-- `comp[2*n+1-n%3]` -/
def P17008718985007683259.Spec : Prop :=
  ∀ n, (P17008718985007683259.a n : ℤ) = A047258 (n + 1)

end A047258

/-! ## A047258.P13293433003384116228

`∑[gcd(4, a(n-3))]` with `a(0)=0, a(1)=4, a(2)=1, a(3)=1`
-/

namespace A047258.P13293433003384116228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 1, 1] fun n f1 =>
  Nat.gcd 4 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047258.P13293433003384116228

namespace A047258

/-- `∑[gcd(4, a(n-3))]` -/
def P13293433003384116228.Spec : Prop :=
  ∀ n, (P13293433003384116228.a n : ℤ) = A047258 (n + 1)

end A047258

/-! ## A047258.P14855944783157905955

`∑[(2-a(n-3))²]` with `a(0)=0, a(1)=4, a(2)=1, a(3)=1`
-/

namespace A047258.P14855944783157905955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 1, 1] fun n f1 =>
  (2 - f1 (n - 3)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047258.P14855944783157905955

namespace A047258

/-- `∑[(2-a(n-3))²]` -/
def P14855944783157905955.Spec : Prop :=
  ∀ n, P14855944783157905955.a n = A047258 (n + 1)

end A047258

/-! ## A047258.P8031500515762346696

`record[2*n-a(n-3)]` with `a(0)=0, a(1)=4, a(2)=5`
-/

namespace A047258.P8031500515762346696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 5] fun n f1 =>
  (2 * n : ℤ) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047258.P8031500515762346696

namespace A047258

/-- `record[2*n-a(n-3)]` -/
def P8031500515762346696.Spec : Prop :=
  ∀ n, P8031500515762346696.a n = A047258 (n + 1)

end A047258

/-! ## A047258.P10218363331403724063

`∑[4/(5-a(n-3))]` with `a(0)=0, a(1)=4, a(2)=1, a(3)=1`
-/

namespace A047258.P10218363331403724063
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 4, 1, 1] fun n f1 =>
  4 / (5 - f1 (n - 3))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047258.P10218363331403724063

namespace A047258

/-- `∑[4/(5-a(n-3))]` -/
def P10218363331403724063.Spec : Prop :=
  ∀ n, P10218363331403724063.a n = (A047258 (n + 1) : ℚ)

end A047258

/-! ## A047258.P7058489848679670160

`lt[n, 2*n-a(n-3)]` with `a(0)=3, a(1)=0, a(2)=0`
-/

namespace A047258.P7058489848679670160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 0] fun n f2 =>
  (2 * n : ℤ) - f2 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A047258.P7058489848679670160

namespace A047258

/-- `lt[n, 2*n-a(n-3)]` -/
def P7058489848679670160.Spec : Prop :=
  ∀ n, (P7058489848679670160.a n : ℤ) = A047258 (n + 1)

end A047258

/-! ## A047258.P9477620262850793179

`eq[n, 2*n-a(n-3)]` with `a(0)=0, a(1)=4, a(2)=5`
-/

namespace A047258.P9477620262850793179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 5] fun n f2 =>
  (2 * n : ℤ) - f2 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047258.P9477620262850793179

namespace A047258

/-- `eq[n, 2*n-a(n-3)]` -/
def P9477620262850793179.Spec : Prop :=
  ∀ n, (P9477620262850793179.a n : ℤ) = A047258 (n + 1)

end A047258

/-! ## A047258.P7550333795459554225

`lt[2*n, (n-1)*(n-1)%6]`
-/

namespace A047258.P7550333795459554225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * Int.tmod ((n : ℤ) - 1) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A047258.P7550333795459554225

namespace A047258

/-- `lt[2*n, (n-1)*(n-1)%6]` -/
def P7550333795459554225.Spec : Prop :=
  ∀ n, (P7550333795459554225.a n : ℤ) = A047258 (n + 1)

end A047258

/-! ## A047258.P4002528298514843581

`Δ[n²-gcd(n+2, n-1)/2]`
-/

namespace A047258.P4002528298514843581
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) - (Int.gcd (n + 2 : ℤ) ((n : ℤ) - 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047258.P4002528298514843581

namespace A047258

/-- `Δ[n²-gcd(n+2, n-1)/2]` -/
def P4002528298514843581.Spec : Prop :=
  ∀ n, P4002528298514843581.a n = (A047258 (n + 1) : ℚ)

end A047258

/-! ## A047258.P7312286508415556386

`∑[a(n-3)^a(n-1)]` with `a(0)=0, a(1)=4, a(2)=1, a(3)=1`
-/

namespace A047258.P7312286508415556386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 1, 1] fun n f1 =>
  f1 (n - 3) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047258.P7312286508415556386

namespace A047258

/-- `∑[a(n-3)^a(n-1)]` -/
def P7312286508415556386.Spec : Prop :=
  ∀ n, (P7312286508415556386.a n : ℤ) = A047258 (n + 1)

end A047258

/-! ## A047258.P7984106937382113875

`∑[5-a(n-1)*a(n-2)]` with `a(0)=0, a(1)=4, a(2)=1`
-/

namespace A047258.P7984106937382113875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 1] fun n f1 =>
  5 - f1 (n - 1) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047258.P7984106937382113875

namespace A047258

/-- `∑[5-a(n-1)*a(n-2)]` -/
def P7984106937382113875.Spec : Prop :=
  ∀ n, P7984106937382113875.a n = A047258 (n + 1)

end A047258

/-! ## A047258.P4436164624164374802

`∑[6-a(n-1)-a(n-2)]` with `a(0)=0, a(1)=4, a(2)=1`
-/

namespace A047258.P4436164624164374802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 1] fun n f1 =>
  6 - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047258.P4436164624164374802

namespace A047258

/-- `∑[6-a(n-1)-a(n-2)]` -/
def P4436164624164374802.Spec : Prop :=
  ∀ n, P4436164624164374802.a n = A047258 (n + 1)

end A047258

/-! ## A047258.P17106100508545454447

`floor(a(n-1)-4/(gcd(3, a(n-1))-4))` with `a(0)=0`
-/

namespace A047258.P17106100508545454447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) - 4 / ((Int.gcd 3 (a (n - 1)) : ℤ) - 4 : ℚ)⌋

end

end A047258.P17106100508545454447

namespace A047258

/-- `floor(a(n-1)-4/(gcd(3, a(n-1))-4))` -/
def P17106100508545454447.Spec : Prop :=
  ∀ n, P17106100508545454447.a n = A047258 (n + 1)

end A047258

/-!
# A047259: Numbers that are congruent to {1, 4, 5} mod 6.

The programs for A047259, the canonical program `A047259.P9768234234403488961` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047259 has offset 1).

The definition of A047259 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047259.P9768234234403488961

`a(n-3)+6` with `a(0)=1, a(1)=4, a(2)=5`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047259

/-- `a(n-3)+6` -/
def P9768234234403488961.Spec : Prop :=
  ∀ n, (P9768234234403488961.a n : ℤ) = A047259 (n + 1)

theorem P9768234234403488961.correct : P9768234234403488961.Spec := by
  intro n
  simp only [A047259, Nat.add_sub_cancel]

end A047259

/-! ## A047259.P10227024954034246202

`eq[1, gcd(n, n%3)]`
-/

namespace A047259.P10227024954034246202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047259.P10227024954034246202

namespace A047259

/-- `eq[1, gcd(n, n%3)]` -/
def P10227024954034246202.Spec : Prop :=
  ∀ n, (P10227024954034246202.a n : ℤ) = A047259 (n + 1)

end A047259

/-! ## A047259.P478044620341442168

`∑[(n+1)%3]+n`
-/

namespace A047259.P478044620341442168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047259.P478044620341442168

namespace A047259

/-- `∑[(n+1)%3]+n` -/
def P478044620341442168.Spec : Prop :=
  ∀ n, (P478044620341442168.a n : ℤ) = A047259 (n + 1)

end A047259

/-! ## A047259.P17683775830185160480

`Δ[round((1/6+n)²)]`
-/

namespace A047259.P17683775830185160480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((1 : ℚ) / 6 + (n : ℚ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047259.P17683775830185160480

namespace A047259

/-- `Δ[round((1/6+n)²)]` -/
def P17683775830185160480.Spec : Prop :=
  ∀ n, P17683775830185160480.a n = A047259 (n + 1)

end A047259

/-! ## A047259.P4027609038441512745

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=2`
-/

namespace A047259.P4027609038441512745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047259.P4027609038441512745

namespace A047259

/-- `∑[abs(a(n-3))]` -/
def P4027609038441512745.Spec : Prop :=
  ∀ n, (P4027609038441512745.a n : ℤ) = A047259 (n + 1)

end A047259

/-! ## A047259.P12329260959644920133

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=2`
-/

namespace A047259.P12329260959644920133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047259.P12329260959644920133

namespace A047259

/-- `∑[dr(a(n-3))]` -/
def P12329260959644920133.Spec : Prop :=
  ∀ n, (P12329260959644920133.a n : ℤ) = A047259 (n + 1)

end A047259

/-! ## A047259.P2364298385810092668

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A047259.P2364298385810092668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047259.P2364298385810092668

namespace A047259

/-- `∑[floor(a(n-3))]` -/
def P2364298385810092668.Spec : Prop :=
  ∀ n, (P2364298385810092668.a n : ℤ) = A047259 (n + 1)

end A047259

/-! ## A047259.P14743453969004021012

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A047259.P14743453969004021012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047259.P14743453969004021012

namespace A047259

/-- `∑[ceil(a(n-3))]` -/
def P14743453969004021012.Spec : Prop :=
  ∀ n, (P14743453969004021012.a n : ℤ) = A047259 (n + 1)

end A047259

/-! ## A047259.P8737445072204246701

`∑[round(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=2`

`round` is left out, it is the identity on integers.
-/

namespace A047259.P8737445072204246701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047259.P8737445072204246701

namespace A047259

/-- `∑[round(a(n-3))]` -/
def P8737445072204246701.Spec : Prop :=
  ∀ n, (P8737445072204246701.a n : ℤ) = A047259 (n + 1)

end A047259

/-! ## A047259.P5128592036764463839

`((2*n)%3)!+2*n`
-/

namespace A047259.P5128592036764463839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n % 3) + 2 * n

end

end A047259.P5128592036764463839

namespace A047259

/-- `((2*n)%3)!+2*n` -/
def P5128592036764463839.Spec : Prop :=
  ∀ n, (P5128592036764463839.a n : ℤ) = A047259 (n + 1)

end A047259

/-! ## A047259.P4400938758616185725

`comp[(n+1)*(n+2)%3]`
-/

namespace A047259.P4400938758616185725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((n + 2) % 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047259.P4400938758616185725

namespace A047259

/-- `comp[(n+1)*(n+2)%3]` -/
def P4400938758616185725.Spec : Prop :=
  ∀ n, (P4400938758616185725.a n : ℤ) = A047259 (n + 1)

end A047259

/-! ## A047259.P6542207551322900358

`dr(∑[n]²+1)+2*n`
-/

namespace A047259.P6542207551322900358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 : ℕ) : ℤ) + 2 * n

end

end A047259.P6542207551322900358

namespace A047259

/-- `dr(∑[n]²+1)+2*n` -/
def P6542207551322900358.Spec : Prop :=
  ∀ n, (P6542207551322900358.a n : ℤ) = A047259 (n + 1)

end A047259

/-! ## A047259.P4025032039196191208

`∑[and(3, a(n-3))]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=2`
-/

namespace A047259.P4025032039196191208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 2] fun n f1 =>
  Nat.land 3 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047259.P4025032039196191208

namespace A047259

/-- `∑[and(3, a(n-3))]` -/
def P4025032039196191208.Spec : Prop :=
  ∀ n, (P4025032039196191208.a n : ℤ) = A047259 (n + 1)

end A047259

/-! ## A047259.P758001509935409916

`∑[a(n-3)%n]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=2`
-/

namespace A047259.P758001509935409916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 2] fun n f1 =>
  f1 (n - 3) % n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047259.P758001509935409916

namespace A047259

/-- `∑[a(n-3)%n]` -/
def P758001509935409916.Spec : Prop :=
  ∀ n, (P758001509935409916.a n : ℤ) = A047259 (n + 1)

end A047259

/-! ## A047259.P7576683010824460788

`C(2, (n+3)%3)+2*n`
-/

namespace A047259.P7576683010824460788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((n + 3) % 3) + 2 * n

end

end A047259.P7576683010824460788

namespace A047259

/-- `C(2, (n+3)%3)+2*n` -/
def P7576683010824460788.Spec : Prop :=
  ∀ n, (P7576683010824460788.a n : ℤ) = A047259 (n + 1)

end A047259

/-!
# A047260: Numbers that are congruent to {0, 1, 4, 5} mod 6.

The programs for A047260, the canonical program `A047260.P13222535487743843889` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047260 has offset 1).

The definition of A047260 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047260.P13222535487743843889

`a(n-4)+6` with `a(0)=0, a(1)=1, a(2)=4, a(3)=5`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047260

/-- `a(n-4)+6` -/
def P13222535487743843889.Spec : Prop :=
  ∀ n, (P13222535487743843889.a n : ℤ) = A047260 (n + 1)

theorem P13222535487743843889.correct : P13222535487743843889.Spec := by
  intro n
  simp only [A047260, Nat.add_sub_cancel]

end A047260

/-! ## A047260.P3321961007680804267

`comp[abs(xor(3*n, -2))]`
-/

namespace A047260.P3321961007680804267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (3 * n : ℤ) (-2)|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047260.P3321961007680804267

namespace A047260

/-- `comp[abs(xor(3*n, -2))]` -/
def P3321961007680804267.Spec : Prop :=
  ∀ n, (P3321961007680804267.a n : ℤ) = A047260 (n + 1)

end A047260

/-! ## A047260.P12860267860471239278

`comp[xor(1, 3*n)+1]`
-/

namespace A047260.P12860267860471239278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047260.P12860267860471239278

namespace A047260

/-- `comp[xor(1, 3*n)+1]` -/
def P12860267860471239278.Spec : Prop :=
  ∀ n, (P12860267860471239278.a n : ℤ) = A047260 (n + 1)

end A047260

/-! ## A047260.P4391640850633087214

`2*round(n/4)+n`
-/

namespace A047260.P4391640850633087214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway ((n : ℚ) / 4) + (n : ℤ)

end

end A047260.P4391640850633087214

namespace A047260

/-- `2*round(n/4)+n` -/
def P4391640850633087214.Spec : Prop :=
  ∀ n, P4391640850633087214.a n = A047260 (n + 1)

end A047260

/-! ## A047260.P15570118193294937164

`comp[2*or(1, n)+n]`
-/

namespace A047260.P15570118193294937164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 1 n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047260.P15570118193294937164

namespace A047260

/-- `comp[2*or(1, n)+n]` -/
def P15570118193294937164.Spec : Prop :=
  ∀ n, (P15570118193294937164.a n : ℤ) = A047260 (n + 1)

end A047260

/-! ## A047260.P13424515213825309639

`comp[Δ[n²]+xor(1, n)]`
-/

namespace A047260.P13424515213825309639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (Nat.xor 1 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047260.P13424515213825309639

namespace A047260

/-- `comp[Δ[n²]+xor(1, n)]` -/
def P13424515213825309639.Spec : Prop :=
  ∀ n, (P13424515213825309639.a n : ℤ) = A047260 (n + 1)

end A047260

/-! ## A047260.P11237735726887011937

`comp[a(n-2)+6]` with `a(0)=2, a(1)=3`
-/

namespace A047260.P11237735726887011937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 2) + 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047260.P11237735726887011937

namespace A047260

/-- `comp[a(n-2)+6]` -/
def P11237735726887011937.Spec : Prop :=
  ∀ n, (P11237735726887011937.a n : ℤ) = A047260 (n + 1)

end A047260

/-! ## A047260.P11877921284372519560

`comp[∑[6-a(n-1)]]` with `a(0)=2, a(1)=1`
-/

namespace A047260.P11877921284372519560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  6 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047260.P11877921284372519560

namespace A047260

/-- `comp[∑[6-a(n-1)]]` -/
def P11877921284372519560.Spec : Prop :=
  ∀ n, (P11877921284372519560.a n : ℤ) = A047260 (n + 1)

end A047260

/-! ## A047260.P14832071174221028493

`floor((and(2, n)+3*n)/2)`
-/

namespace A047260.P14832071174221028493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 2 n + 3 * n : ℚ) / 2⌋

end

end A047260.P14832071174221028493

namespace A047260

/-- `floor((and(2, n)+3*n)/2)` -/
def P14832071174221028493.Spec : Prop :=
  ∀ n, P14832071174221028493.a n = A047260 (n + 1)

end A047260

/-! ## A047260.P14310271787201446513

`ceil(or(3, n-2)/2+n)`
-/

namespace A047260.P14310271787201446513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor 3 ((n : ℤ) - 2) : ℚ) / 2 + (n : ℚ)⌉

end

end A047260.P14310271787201446513

namespace A047260

/-- `ceil(or(3, n-2)/2+n)` -/
def P14310271787201446513.Spec : Prop :=
  ∀ n, P14310271787201446513.a n = A047260 (n + 1)

end A047260

/-! ## A047260.P1396893199826812928

`(comp[or(4, n)-2]+n)/2`
-/

namespace A047260.P1396893199826812928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 4 n : ℤ) - 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n : ℚ) / 2

end

end A047260.P1396893199826812928

namespace A047260

/-- `(comp[or(4, n)-2]+n)/2` -/
def P1396893199826812928.Spec : Prop :=
  ∀ n, P1396893199826812928.a n = (A047260 (n + 1) : ℚ)

end A047260

/-! ## A047260.P13955075984009362279

`comp[xor(1, n)+n+1+n]`
-/

namespace A047260.P13955075984009362279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + (n + 1) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047260.P13955075984009362279

namespace A047260

/-- `comp[xor(1, n)+n+1+n]` -/
def P13955075984009362279.Spec : Prop :=
  ∀ n, (P13955075984009362279.a n : ℤ) = A047260 (n + 1)

end A047260

/-! ## A047260.P8082611977054067219

`∑[3^a(∑[n]²%n)]` with `a(0)=0`
-/

namespace A047260.P8082611977054067219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  3 ^ f1 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 % n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047260.P8082611977054067219

namespace A047260

/-- `∑[3^a(∑[n]²%n)]` -/
def P8082611977054067219.Spec : Prop :=
  ∀ n, (P8082611977054067219.a n : ℤ) = A047260 (n + 1)

end A047260

/-! ## A047260.P3831385615614451139

`∑[abs(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=1, a(4)=1`
-/

namespace A047260.P3831385615614451139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 1, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047260.P3831385615614451139

namespace A047260

/-- `∑[abs(a(n-4))]` -/
def P3831385615614451139.Spec : Prop :=
  ∀ n, (P3831385615614451139.a n : ℤ) = A047260 (n + 1)

end A047260

/-! ## A047260.P6318655170381891207

`∑[or(1, a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=1`
-/

namespace A047260.P6318655170381891207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 1] fun n f1 =>
  Nat.lor 1 (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047260.P6318655170381891207

namespace A047260

/-- `∑[or(1, a(n-4))]` -/
def P6318655170381891207.Spec : Prop :=
  ∀ n, (P6318655170381891207.a n : ℤ) = A047260 (n + 1)

end A047260

/-! ## A047260.P13321852547886226949

`∑[dr(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=1, a(4)=1`
-/

namespace A047260.P13321852547886226949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 1, 1] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047260.P13321852547886226949

namespace A047260

/-- `∑[dr(a(n-4))]` -/
def P13321852547886226949.Spec : Prop :=
  ∀ n, (P13321852547886226949.a n : ℤ) = A047260 (n + 1)

end A047260

/-! ## A047260.P617780736035796434

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=1, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047260.P617780736035796434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 1, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047260.P617780736035796434

namespace A047260

/-- `∑[floor(a(n-4))]` -/
def P617780736035796434.Spec : Prop :=
  ∀ n, (P617780736035796434.a n : ℤ) = A047260 (n + 1)

end A047260

/-! ## A047260.P11256624302635289473

`∑[ceil(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=1, a(4)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A047260.P11256624302635289473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 1, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047260.P11256624302635289473

namespace A047260

/-- `∑[ceil(a(n-4))]` -/
def P11256624302635289473.Spec : Prop :=
  ∀ n, (P11256624302635289473.a n : ℤ) = A047260 (n + 1)

end A047260

/-! ## A047260.P4656444352008245661

`∑[round(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=1, a(4)=1`

`round` is left out, it is the identity on integers.
-/

namespace A047260.P4656444352008245661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 1, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047260.P4656444352008245661

namespace A047260

/-- `∑[round(a(n-4))]` -/
def P4656444352008245661.Spec : Prop :=
  ∀ n, (P4656444352008245661.a n : ℤ) = A047260 (n + 1)

end A047260

/-! ## A047260.P8451686643238734558

`∑[gcd(3, a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=1, a(4)=1`
-/

namespace A047260.P8451686643238734558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 1, 1] fun n f1 =>
  Nat.gcd 3 (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047260.P8451686643238734558

namespace A047260

/-- `∑[gcd(3, a(n-4))]` -/
def P8451686643238734558.Spec : Prop :=
  ∀ n, (P8451686643238734558.a n : ℤ) = A047260 (n + 1)

end A047260

/-!
# A047261: Numbers that are congruent to {2, 4, 5} mod 6.

The programs for A047261, the canonical program `A047261.P2974273248751901373` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047261 has offset 1).

The definition of A047261 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047261.P2974273248751901373

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=4, a(2)=5, a(3)=8`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047261

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P2974273248751901373.Spec : Prop :=
  ∀ n, P2974273248751901373.a n = A047261 (n + 1)

theorem P2974273248751901373.correct : P2974273248751901373.Spec := by
  intro n
  simp only [A047261, Nat.add_sub_cancel]

end A047261

/-! ## A047261.P14496240731454769953

`∑[3-n%3]-1`
-/

namespace A047261.P14496240731454769953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((n % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A047261.P14496240731454769953

namespace A047261

/-- `∑[3-n%3]-1` -/
def P14496240731454769953.Spec : Prop :=
  ∀ n, P14496240731454769953.a n = A047261 (n + 1)

end A047261

/-! ## A047261.P17380684610954266833

`a(n-3)+6` with `a(0)=2, a(1)=4, a(2)=5`
-/

namespace A047261.P17380684610954266833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 5] fun n a =>
  a (n - 3) + 6

end

end A047261.P17380684610954266833

namespace A047261

/-- `a(n-3)+6` -/
def P17380684610954266833.Spec : Prop :=
  ∀ n, (P17380684610954266833.a n : ℤ) = A047261 (n + 1)

end A047261

/-! ## A047261.P8782085662700705688

`∑[dr(6*n)/3]+2`
-/

namespace A047261.P8782085662700705688
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (6 * n : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A047261.P8782085662700705688

namespace A047261

/-- `∑[dr(6*n)/3]+2` -/
def P8782085662700705688.Spec : Prop :=
  ∀ n, P8782085662700705688.a n = (A047261 (n + 1) : ℚ)

end A047261

/-! ## A047261.P2495454008564263022

`lt[1, gcd(n, (n+1)%3)]`
-/

namespace A047261.P2495454008564263022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n ((n + 1) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047261.P2495454008564263022

namespace A047261

/-- `lt[1, gcd(n, (n+1)%3)]` -/
def P2495454008564263022.Spec : Prop :=
  ∀ n, (P2495454008564263022.a n : ℤ) = A047261 (n + 1)

end A047261

/-! ## A047261.P11145531167979586356

`comp[2*n-n²%3]`
-/

namespace A047261.P11145531167979586356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n ^ 2 % 3 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047261.P11145531167979586356

namespace A047261

/-- `comp[2*n-n²%3]` -/
def P11145531167979586356.Spec : Prop :=
  ∀ n, (P11145531167979586356.a n : ℤ) = A047261 (n + 1)

end A047261

/-! ## A047261.P1014732813025758938

`∑[abs(a(n-3))]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=3`
-/

namespace A047261.P1014732813025758938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047261.P1014732813025758938

namespace A047261

/-- `∑[abs(a(n-3))]` -/
def P1014732813025758938.Spec : Prop :=
  ∀ n, (P1014732813025758938.a n : ℤ) = A047261 (n + 1)

end A047261

/-! ## A047261.P9875844033261550598

`∑[dr(a(n-3))]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=3`
-/

namespace A047261.P9875844033261550598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047261.P9875844033261550598

namespace A047261

/-- `∑[dr(a(n-3))]` -/
def P9875844033261550598.Spec : Prop :=
  ∀ n, (P9875844033261550598.a n : ℤ) = A047261 (n + 1)

end A047261

/-! ## A047261.P11336144766125260633

`∑[floor(a(n-3))]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047261.P11336144766125260633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047261.P11336144766125260633

namespace A047261

/-- `∑[floor(a(n-3))]` -/
def P11336144766125260633.Spec : Prop :=
  ∀ n, (P11336144766125260633.a n : ℤ) = A047261 (n + 1)

end A047261

/-! ## A047261.P14724840016505126298

`∑[ceil(a(n-3))]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A047261.P14724840016505126298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047261.P14724840016505126298

namespace A047261

/-- `∑[ceil(a(n-3))]` -/
def P14724840016505126298.Spec : Prop :=
  ∀ n, (P14724840016505126298.a n : ℤ) = A047261 (n + 1)

end A047261

/-! ## A047261.P14336813821093889892

`∑[round(a(n-3))]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=3`

`round` is left out, it is the identity on integers.
-/

namespace A047261.P14336813821093889892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047261.P14336813821093889892

namespace A047261

/-- `∑[round(a(n-3))]` -/
def P14336813821093889892.Spec : Prop :=
  ∀ n, (P14336813821093889892.a n : ℤ) = A047261 (n + 1)

end A047261

/-! ## A047261.P13261746070402189766

`∑[(2*(n+1))%3]+n`
-/

namespace A047261.P13261746070402189766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047261.P13261746070402189766

namespace A047261

/-- `∑[(2*(n+1))%3]+n` -/
def P13261746070402189766.Spec : Prop :=
  ∀ n, (P13261746070402189766.a n : ℤ) = A047261 (n + 1)

end A047261

/-! ## A047261.P10551078515954297342

`Δ[n²]+(n+1)²%3`
-/

namespace A047261.P10551078515954297342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (((n + 1) ^ 2 % 3 : ℕ) : ℤ)

end

end A047261.P10551078515954297342

namespace A047261

/-- `Δ[n²]+(n+1)²%3` -/
def P10551078515954297342.Spec : Prop :=
  ∀ n, P10551078515954297342.a n = A047261 (n + 1)

end A047261

/-! ## A047261.P14961428707702133562

`Δ[ceil(2*n/3)+n²]`
-/

namespace A047261.P14961428707702133562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((n : ℚ) / 3)⌉ + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047261.P14961428707702133562

namespace A047261

/-- `Δ[ceil(2*n/3)+n²]` -/
def P14961428707702133562.Spec : Prop :=
  ∀ n, P14961428707702133562.a n = A047261 (n + 1)

end A047261

/-! ## A047261.P13739052550534753776

`∑[gcd(6, a(n-3))]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=3`
-/

namespace A047261.P13739052550534753776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1, 3] fun n f1 =>
  Nat.gcd 6 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047261.P13739052550534753776

namespace A047261

/-- `∑[gcd(6, a(n-3))]` -/
def P13739052550534753776.Spec : Prop :=
  ∀ n, (P13739052550534753776.a n : ℤ) = A047261 (n + 1)

end A047261

/-! ## A047261.P2656662562628600616

`∑[and(3, a(n-3))]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=3`
-/

namespace A047261.P2656662562628600616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1, 3] fun n f1 =>
  Nat.land 3 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047261.P2656662562628600616

namespace A047261

/-- `∑[and(3, a(n-3))]` -/
def P2656662562628600616.Spec : Prop :=
  ∀ n, (P2656662562628600616.a n : ℤ) = A047261 (n + 1)

end A047261

/-! ## A047261.P4768760083235784428

`∑[4-a(a(n-2))]` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A047261.P4768760083235784428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 1] fun n f1 =>
  4 - f1 (f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047261.P4768760083235784428

namespace A047261

/-- `∑[4-a(a(n-2))]` -/
def P4768760083235784428.Spec : Prop :=
  ∀ n, P4768760083235784428.a n = A047261 (n + 1)

end A047261

/-! ## A047261.P13352792591869131334

`gcd(2, (n+2)%3)+2*n`
-/

namespace A047261.P13352792591869131334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 ((n + 2) % 3) + 2 * n

end

end A047261.P13352792591869131334

namespace A047261

/-- `gcd(2, (n+2)%3)+2*n` -/
def P13352792591869131334.Spec : Prop :=
  ∀ n, (P13352792591869131334.a n : ℤ) = A047261 (n + 1)

end A047261

/-!
# A047262: Numbers that are congruent to {0, 2, 4, 5} mod 6.

The programs for A047262, the canonical program `A047262.P17301446676815896594` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047262 has offset 1).

The definition of A047262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047262.P17301446676815896594

`a(n-4)+6` with `a(0)=0, a(1)=2, a(2)=4, a(3)=5`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047262

/-- `a(n-4)+6` -/
def P17301446676815896594.Spec : Prop :=
  ∀ n, (P17301446676815896594.a n : ℤ) = A047262 (n + 1)

theorem P17301446676815896594.correct : P17301446676815896594.Spec := by
  intro n
  simp only [A047262, Nat.add_sub_cancel]

end A047262

/-! ## A047262.P12821055205883448725

`comp[or(1, 3*n)]`
-/

namespace A047262.P12821055205883448725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047262.P12821055205883448725

namespace A047262

/-- `comp[or(1, 3*n)]` -/
def P12821055205883448725.Spec : Prop :=
  ∀ n, (P12821055205883448725.a n : ℤ) = A047262 (n + 1)

end A047262

/-! ## A047262.P12058432065095359845

`∑[∑[n]%2]+n`
-/

namespace A047262.P12058432065095359845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047262.P12058432065095359845

namespace A047262

/-- `∑[∑[n]%2]+n` -/
def P12058432065095359845.Spec : Prop :=
  ∀ n, (P12058432065095359845.a n : ℤ) = A047262 (n + 1)

end A047262

/-! ## A047262.P13415952402826474122

`∑[and(1, ∑[n])]+n`
-/

namespace A047262.P13415952402826474122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047262.P13415952402826474122

namespace A047262

/-- `∑[and(1, ∑[n])]+n` -/
def P13415952402826474122.Spec : Prop :=
  ∀ n, (P13415952402826474122.a n : ℤ) = A047262 (n + 1)

end A047262

/-! ## A047262.P7567657202392566128

`comp[lcm(3, n)-(n+1)]`
-/

namespace A047262.P7567657202392566128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 n : ℤ) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047262.P7567657202392566128

namespace A047262

/-- `comp[lcm(3, n)-(n+1)]` -/
def P7567657202392566128.Spec : Prop :=
  ∀ n, (P7567657202392566128.a n : ℤ) = A047262 (n + 1)

end A047262

/-! ## A047262.P2690295951973664760

`comp[2*n-gcd(3, n)]`
-/

namespace A047262.P2690295951973664760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.gcd 3 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047262.P2690295951973664760

namespace A047262

/-- `comp[2*n-gcd(3, n)]` -/
def P2690295951973664760.Spec : Prop :=
  ∀ n, (P2690295951973664760.a n : ℤ) = A047262 (n + 1)

end A047262

/-! ## A047262.P4951087901098124831

`∑[and(2, -n)!]-1`
-/

namespace A047262.P4951087901098124831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land 2 (-(n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047262.P4951087901098124831

namespace A047262

/-- `∑[and(2, -n)!]-1` -/
def P4951087901098124831.Spec : Prop :=
  ∀ n, P4951087901098124831.a n = A047262 (n + 1)

end A047262

/-! ## A047262.P3042003325229751034

`comp[or(1, n)+n+n]`
-/

namespace A047262.P3042003325229751034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047262.P3042003325229751034

namespace A047262

/-- `comp[or(1, n)+n+n]` -/
def P3042003325229751034.Spec : Prop :=
  ∀ n, (P3042003325229751034.a n : ℤ) = A047262 (n + 1)

end A047262

/-! ## A047262.P10600748252257363284

`n-∑[∑[-n]%2]`
-/

namespace A047262.P10600748252257363284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047262.P10600748252257363284

namespace A047262

/-- `n-∑[∑[-n]%2]` -/
def P10600748252257363284.Spec : Prop :=
  ∀ n, P10600748252257363284.a n = A047262 (n + 1)

end A047262

/-! ## A047262.P12405604197232392385

`comp[a(n-2)+6]` with `a(0)=1, a(1)=3`
-/

namespace A047262.P12405604197232392385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 2) + 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047262.P12405604197232392385

namespace A047262

/-- `comp[a(n-2)+6]` -/
def P12405604197232392385.Spec : Prop :=
  ∀ n, (P12405604197232392385.a n : ℤ) = A047262 (n + 1)

end A047262

/-! ## A047262.P15454585433417009095

`∪[2*n, 3*n+2]`
-/

namespace A047262.P15454585433417009095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A047262.P15454585433417009095

namespace A047262

/-- `∪[2*n, 3*n+2]` -/
def P15454585433417009095.Spec : Prop :=
  ∀ n, (P15454585433417009095.a n : ℤ) = A047262 (n + 1)

end A047262

/-! ## A047262.P7514430836287562440

`∑[gcd(2, ∑[n]+1)]-1`
-/

namespace A047262.P7514430836287562440
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047262.P7514430836287562440

namespace A047262

/-- `∑[gcd(2, ∑[n]+1)]-1` -/
def P7514430836287562440.Spec : Prop :=
  ∀ n, P7514430836287562440.a n = A047262 (n + 1)

end A047262

/-! ## A047262.P1471005887572910876

`record[and(n, -(2*n)%3)]`
-/

namespace A047262.P1471005887572910876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-((2 * n % 3 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047262.P1471005887572910876

namespace A047262

/-- `record[and(n, -(2*n)%3)]` -/
def P1471005887572910876.Spec : Prop :=
  ∀ n, P1471005887572910876.a n = A047262 (n + 1)

end A047262

/-! ## A047262.P9673105296458994151

`∑[3-a(n-2)]` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A047262.P9673105296458994151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n f1 =>
  3 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047262.P9673105296458994151

namespace A047262

/-- `∑[3-a(n-2)]` -/
def P9673105296458994151.Spec : Prop :=
  ∀ n, P9673105296458994151.a n = A047262 (n + 1)

end A047262

/-! ## A047262.P9195913528649853891

`comp[(n+1)%2+3*n]`
-/

namespace A047262.P9195913528649853891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 + 3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047262.P9195913528649853891

namespace A047262

/-- `comp[(n+1)%2+3*n]` -/
def P9195913528649853891.Spec : Prop :=
  ∀ n, (P9195913528649853891.a n : ℤ) = A047262 (n + 1)

end A047262

/-! ## A047262.P3221846430941856946

`comp[and(1, n+1)+3*n]`
-/

namespace A047262.P3221846430941856946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1) + 3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047262.P3221846430941856946

namespace A047262

/-- `comp[and(1, n+1)+3*n]` -/
def P3221846430941856946.Spec : Prop :=
  ∀ n, (P3221846430941856946.a n : ℤ) = A047262 (n + 1)

end A047262

/-! ## A047262.P14819828854339519406

`comp[gcd(9, n+1)+2*n]`
-/

namespace A047262.P14819828854339519406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 9 (n + 1) + 2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047262.P14819828854339519406

namespace A047262

/-- `comp[gcd(9, n+1)+2*n]` -/
def P14819828854339519406.Spec : Prop :=
  ∀ n, (P14819828854339519406.a n : ℤ) = A047262 (n + 1)

end A047262

/-! ## A047262.P7247101465507306822

`n-∑[floor((-1)^∑[n]/2)]`
-/

namespace A047262.P7247101465507306822
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047262.P7247101465507306822

namespace A047262

/-- `n-∑[floor((-1)^∑[n]/2)]` -/
def P7247101465507306822.Spec : Prop :=
  ∀ n, P7247101465507306822.a n = A047262 (n + 1)

end A047262

/-!
# A047263: Numbers that are congruent to {0, 1, 2, 4, 5} mod 6.

The programs for A047263, the canonical program `A047263.P2695951990793518206` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047263 has offset 1).

The definition of A047263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047263.P2695951990793518206

`a(n-5)+6` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=5`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047263

/-- `a(n-5)+6` -/
def P2695951990793518206.Spec : Prop :=
  ∀ n, (P2695951990793518206.a n : ℤ) = A047263 (n + 1)

theorem P2695951990793518206.correct : P2695951990793518206.Spec := by
  intro n
  simp only [A047263, Nat.add_sub_cancel]

end A047263

/-! ## A047263.P7779075532917622716

`comp[Δ[lcm(3, n)]]`
-/

namespace A047263.P7779075532917622716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047263.P7779075532917622716

namespace A047263

/-- `comp[Δ[lcm(3, n)]]` -/
def P7779075532917622716.Spec : Prop :=
  ∀ n, (P7779075532917622716.a n : ℤ) = A047263 (n + 1)

end A047263

/-! ## A047263.P10018185500996350934

`round(6*n/5)`
-/

namespace A047263.P10018185500996350934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (6 * ((n : ℚ) / 5))

end

end A047263.P10018185500996350934

namespace A047263

/-- `round(6*n/5)` -/
def P10018185500996350934.Spec : Prop :=
  ∀ n, P10018185500996350934.a n = A047263 (n + 1)

end A047263

/-! ## A047263.P6800641231335497202

`comp[3*or(1, n)]`
-/

namespace A047263.P6800641231335497202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.lor 1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047263.P6800641231335497202

namespace A047263

/-- `comp[3*or(1, n)]` -/
def P6800641231335497202.Spec : Prop :=
  ∀ n, (P6800641231335497202.a n : ℤ) = A047263 (n + 1)

end A047263

/-! ## A047263.P1036754559111196416

`eq[0, val(n+3, 6)]`
-/

namespace A047263.P1036754559111196416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 3) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047263.P1036754559111196416

namespace A047263

/-- `eq[0, val(n+3, 6)]` -/
def P1036754559111196416.Spec : Prop :=
  ∀ n, (P1036754559111196416.a n : ℤ) = A047263 (n + 1)

end A047263

/-! ## A047263.P5033922501091718525

`lt[val(n+3, 6), 1]`
-/

namespace A047263.P5033922501091718525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 3) 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047263.P5033922501091718525

namespace A047263

/-- `lt[val(n+3, 6), 1]` -/
def P5033922501091718525.Spec : Prop :=
  ∀ n, (P5033922501091718525.a n : ℤ) = A047263 (n + 1)

end A047263

/-! ## A047263.P13666010229326423488

`comp[lcm(6, 1-n)+3]`
-/

namespace A047263.P13666010229326423488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (1 - (n : ℤ)) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047263.P13666010229326423488

namespace A047263

/-- `comp[lcm(6, 1-n)+3]` -/
def P13666010229326423488.Spec : Prop :=
  ∀ n, (P13666010229326423488.a n : ℤ) = A047263 (n + 1)

end A047263

/-! ## A047263.P11688573592087583257

`comp[3*xor(1, 2*n)]`
-/

namespace A047263.P11688573592087583257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.xor 1 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047263.P11688573592087583257

namespace A047263

/-- `comp[3*xor(1, 2*n)]` -/
def P11688573592087583257.Spec : Prop :=
  ∀ n, (P11688573592087583257.a n : ℤ) = A047263 (n + 1)

end A047263

/-! ## A047263.P226498234113250837

`comp[a(n-1)+6]` with `a(0)=3`
-/

namespace A047263.P226498234113250837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047263.P226498234113250837

namespace A047263

/-- `comp[a(n-1)+6]` -/
def P226498234113250837.Spec : Prop :=
  ∀ n, (P226498234113250837.a n : ℤ) = A047263 (n + 1)

end A047263

/-! ## A047263.P7791163611413523693

`comp[n+3-n%6]`
-/

namespace A047263.P7791163611413523693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - ((n % 6 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047263.P7791163611413523693

namespace A047263

/-- `comp[n+3-n%6]` -/
def P7791163611413523693.Spec : Prop :=
  ∀ n, (P7791163611413523693.a n : ℤ) = A047263 (n + 1)

end A047263

/-! ## A047263.P9889239537906402628

`record[n-val(n+3, 6)]`
-/

namespace A047263.P9889239537906402628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (n + 3) 6 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047263.P9889239537906402628

namespace A047263

/-- `record[n-val(n+3, 6)]` -/
def P9889239537906402628.Spec : Prop :=
  ∀ n, P9889239537906402628.a n = A047263 (n + 1)

end A047263

/-! ## A047263.P9548397963554489770

`record[gcd(n, val(n+3, 6))]`
-/

namespace A047263.P9548397963554489770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (SequenceMachineLib.valuation (n + 3) 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047263.P9548397963554489770

namespace A047263

/-- `record[gcd(n, val(n+3, 6))]` -/
def P9548397963554489770.Spec : Prop :=
  ∀ n, (P9548397963554489770.a n : ℤ) = A047263 (n + 1)

end A047263

/-! ## A047263.P16330359962956828260

`∪[2*n, comp[3*n]]`
-/

namespace A047263.P16330359962956828260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A047263.P16330359962956828260

namespace A047263

/-- `∪[2*n, comp[3*n]]` -/
def P16330359962956828260.Spec : Prop :=
  ∀ n, (P16330359962956828260.a n : ℤ) = A047263 (n + 1)

end A047263

/-! ## A047263.P10934880588479293119

`comp[lcm(2*n+1, 6/2)]`
-/

namespace A047263.P10934880588479293119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (SequenceMachineLib.roundAway ((6 : ℚ) / 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047263.P10934880588479293119

namespace A047263

/-- `comp[lcm(2*n+1, 6/2)]` -/
def P10934880588479293119.Spec : Prop :=
  ∀ n, (P10934880588479293119.a n : ℤ) = A047263 (n + 1)

end A047263

/-! ## A047263.P17272415002208870614

`floor((2*n+1)*tanh(log(2)))`
-/

namespace A047263.P17272415002208870614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) * Real.tanh (Real.log (2 : ℝ))⌋

end

end A047263.P17272415002208870614

namespace A047263

/-- `floor((2*n+1)*tanh(log(2)))` -/
def P17272415002208870614.Spec : Prop :=
  ∀ n, P17272415002208870614.a n = A047263 (n + 1)

end A047263

/-! ## A047263.P18322914699674319935

`∑[a(n-5)!]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=1`
-/

namespace A047263.P18322914699674319935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2, 1] fun n f1 =>
  Nat.factorial (f1 (n - 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047263.P18322914699674319935

namespace A047263

/-- `∑[a(n-5)!]` -/
def P18322914699674319935.Spec : Prop :=
  ∀ n, (P18322914699674319935.a n : ℤ) = A047263 (n + 1)

end A047263

/-! ## A047263.P9770281455502009017

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=1, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047263.P9770281455502009017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2, 1, 1] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047263.P9770281455502009017

namespace A047263

/-- `∑[floor(a(n-5))]` -/
def P9770281455502009017.Spec : Prop :=
  ∀ n, (P9770281455502009017.a n : ℤ) = A047263 (n + 1)

end A047263

/-! ## A047263.P3032838880864686417

`n-floor((1-a(n-1))/6)` with `a(0)=0`
-/

namespace A047263.P3032838880864686417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - ⌊(1 - a (n - 1) : ℚ) / 6⌋

end

end A047263.P3032838880864686417

namespace A047263

/-- `n-floor((1-a(n-1))/6)` -/
def P3032838880864686417.Spec : Prop :=
  ∀ n, P3032838880864686417.a n = A047263 (n + 1)

end A047263

/-! ## A047263.P7224424095434399141

`∑[a(n-5)^a(n-1)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=1, a(5)=1`
-/

namespace A047263.P7224424095434399141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2, 1, 1] fun n f1 =>
  f1 (n - 5) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047263.P7224424095434399141

namespace A047263

/-- `∑[a(n-5)^a(n-1)]` -/
def P7224424095434399141.Spec : Prop :=
  ∀ n, (P7224424095434399141.a n : ℤ) = A047263 (n + 1)

end A047263

/-! ## A047263.P2623934696282147680

`comp[A016945(n)]`
-/

namespace A047263.P2623934696282147680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047263.P2623934696282147680

namespace A047263

/-- `comp[A016945(n)]` -/
def P2623934696282147680.Spec : Prop :=
  ∀ n, (P2623934696282147680.a n : ℤ) = A047263 (n + 1)

end A047263

/-!
# A047264: Numbers that are congruent to 0 or 5 mod 6.

The programs for A047264, the canonical program `A047264.P3404533912891200745` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047264 has offset 1).

The definition of A047264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047264.P3404533912891200745

`xor(1, 3*n+1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047264

/-- `xor(1, 3*n+1)` -/
def P3404533912891200745.Spec : Prop :=
  ∀ n, (P3404533912891200745.a n : ℤ) = A047264 (n + 1)

theorem P3404533912891200745.correct : P3404533912891200745.Spec := by
  intro n
  simp only [A047264, Nat.add_sub_cancel]

end A047264

/-! ## A047264.P12349413365618610044

`Δ[or(1, n²)]+n`
-/

namespace A047264.P12349413365618610044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)

end

end A047264.P12349413365618610044

namespace A047264

/-- `Δ[or(1, n²)]+n` -/
def P12349413365618610044.Spec : Prop :=
  ∀ n, P12349413365618610044.a n = A047264 (n + 1)

end A047264

/-! ## A047264.P5429079073645446792

`a(n-2)+6` with `a(0)=0, a(1)=5`
-/

namespace A047264.P5429079073645446792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n a =>
  a (n - 2) + 6

end

end A047264.P5429079073645446792

namespace A047264

/-- `a(n-2)+6` -/
def P5429079073645446792.Spec : Prop :=
  ∀ n, (P5429079073645446792.a n : ℤ) = A047264 (n + 1)

end A047264

/-! ## A047264.P7650664225303153730

`1-xor(1, -3*n)`
-/

namespace A047264.P7650664225303153730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.xor 1 (-(3 * n : ℤ))

end

end A047264.P7650664225303153730

namespace A047264

/-- `1-xor(1, -3*n)` -/
def P7650664225303153730.Spec : Prop :=
  ∀ n, P7650664225303153730.a n = A047264 (n + 1)

end A047264

/-! ## A047264.P12593377466506363271

`∑[5^(n%2)]-1`
-/

namespace A047264.P12593377466506363271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047264.P12593377466506363271

namespace A047264

/-- `∑[5^(n%2)]-1` -/
def P12593377466506363271.Spec : Prop :=
  ∀ n, P12593377466506363271.a n = A047264 (n + 1)

end A047264

/-! ## A047264.P9341132204498641752

`∑[5^and(1, n)]-1`
-/

namespace A047264.P9341132204498641752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047264.P9341132204498641752

namespace A047264

/-- `∑[5^and(1, n)]-1` -/
def P9341132204498641752.Spec : Prop :=
  ∀ n, P9341132204498641752.a n = A047264 (n + 1)

end A047264

/-! ## A047264.P434405284559388826

`4*ceil(n/2)+n`
-/

namespace A047264.P434405284559388826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌈(n : ℚ) / 2⌉ + (n : ℤ)

end

end A047264.P434405284559388826

namespace A047264

/-- `4*ceil(n/2)+n` -/
def P434405284559388826.Spec : Prop :=
  ∀ n, P434405284559388826.a n = A047264 (n + 1)

end A047264

/-! ## A047264.P3243747386078533271

`n*(ratio[or(1, n)]+2)`
-/

namespace A047264.P3243747386078533271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ) + 2)

end

end A047264.P3243747386078533271

namespace A047264

/-- `n*(ratio[or(1, n)]+2)` -/
def P3243747386078533271.Spec : Prop :=
  ∀ n, P3243747386078533271.a n = (A047264 (n + 1) : ℚ)

end A047264

/-! ## A047264.P15395642188436234355

`comp[xor(n, gcd(3, 1-n))]`
-/

namespace A047264.P15395642188436234355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Int.gcd 3 (1 - (n : ℤ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047264.P15395642188436234355

namespace A047264

/-- `comp[xor(n, gcd(3, 1-n))]` -/
def P15395642188436234355.Spec : Prop :=
  ∀ n, (P15395642188436234355.a n : ℤ) = A047264 (n + 1)

end A047264

/-! ## A047264.P2401016208013472145

`∑[abs(a(n-2))]` with `a(0)=0, a(1)=5, a(2)=1`
-/

namespace A047264.P2401016208013472145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 1] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047264.P2401016208013472145

namespace A047264

/-- `∑[abs(a(n-2))]` -/
def P2401016208013472145.Spec : Prop :=
  ∀ n, (P2401016208013472145.a n : ℤ) = A047264 (n + 1)

end A047264

/-! ## A047264.P10177443182167105742

`∑[6-a(n-1)]` with `a(0)=0, a(1)=5`
-/

namespace A047264.P10177443182167105742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047264.P10177443182167105742

namespace A047264

/-- `∑[6-a(n-1)]` -/
def P10177443182167105742.Spec : Prop :=
  ∀ n, P10177443182167105742.a n = A047264 (n + 1)

end A047264

/-! ## A047264.P15640973069879564409

`abs(xor(1, 4*n-(n-1)))`
-/

namespace A047264.P15640973069879564409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((4 * n : ℤ) - ((n : ℤ) - 1))|

end

end A047264.P15640973069879564409

namespace A047264

/-- `abs(xor(1, 4*n-(n-1)))` -/
def P15640973069879564409.Spec : Prop :=
  ∀ n, P15640973069879564409.a n = A047264 (n + 1)

end A047264

/-! ## A047264.P16621325701498522834

`record[3*n-a(n-2)]` with `a(0)=0, a(1)=5`
-/

namespace A047264.P16621325701498522834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  (3 * n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047264.P16621325701498522834

namespace A047264

/-- `record[3*n-a(n-2)]` -/
def P16621325701498522834.Spec : Prop :=
  ∀ n, P16621325701498522834.a n = A047264 (n + 1)

end A047264

/-! ## A047264.P7113271141360670405

`eq[0, C(n, a(n-2)²)]` with `a(0)=0, a(1)=1`
-/

namespace A047264.P7113271141360670405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  Nat.choose n (f2 (n - 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047264.P7113271141360670405

namespace A047264

/-- `eq[0, C(n, a(n-2)²)]` -/
def P7113271141360670405.Spec : Prop :=
  ∀ n, (P7113271141360670405.a n : ℤ) = A047264 (n + 1)

end A047264

/-! ## A047264.P821256818145637773

`abs(2*or(1, -n)-(n+2))`
-/

namespace A047264.P821256818145637773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * Int.lor 1 (-(n : ℤ)) - (n + 2 : ℤ)|

end

end A047264.P821256818145637773

namespace A047264

/-- `abs(2*or(1, -n)-(n+2))` -/
def P821256818145637773.Spec : Prop :=
  ∀ n, P821256818145637773.a n = A047264 (n + 1)

end A047264

/-! ## A047264.P5656190386347709654

`lt[(n+1)%6+n, n+2]`
-/

namespace A047264.P5656190386347709654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 6 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047264.P5656190386347709654

namespace A047264

/-- `lt[(n+1)%6+n, n+2]` -/
def P5656190386347709654.Spec : Prop :=
  ∀ n, (P5656190386347709654.a n : ℤ) = A047264 (n + 1)

end A047264

/-! ## A047264.P9297722509332036879

`eq[0, 2*C(n, a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A047264.P9297722509332036879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  2 * Nat.choose n (f2 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047264.P9297722509332036879

namespace A047264

/-- `eq[0, 2*C(n, a(n-2))]` -/
def P9297722509332036879.Spec : Prop :=
  ∀ n, (P9297722509332036879.a n : ℤ) = A047264 (n + 1)

end A047264

/-! ## A047264.P8609061222078108011

`floor(6*n-1-a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A047264.P8609061222078108011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (6 * n : ℤ) - 1 - a (n - 1)

end

end A047264.P8609061222078108011

namespace A047264

/-- `floor(6*n-1-a(n-1))` -/
def P8609061222078108011.Spec : Prop :=
  ∀ n, P8609061222078108011.a n = A047264 (n + 1)

end A047264

/-!
# A047265: Triangle T(n,k), for n >= 1, 1 <= k <= n, read by rows, giving coefficient of x^n in expansion of (Product_{j>=1} (1-(-x)^j) - 1 )^k.

The programs for A047265, there is no canonical definition to state claims against.
-/

/-! ## A047265.P4564686072094918183

`A097807(n)*A341418(n+1)`
-/

namespace A047265.P4564686072094918183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A341418 (n + 1)

end

end A047265.P4564686072094918183

/-! ## A047265.P387295603610105626

`A014815(A025581(n))*A341418(n+1)`
-/

namespace A047265.P387295603610105626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014815 (A025581 n).toNat * A341418 (n + 1)

end

end A047265.P387295603610105626

/-! ## A047265.P8015355583504851265

`A015343(A051162(n))*A341418(n+1)`
-/

namespace A047265.P8015355583504851265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015343 (A051162 n).toNat * A341418 (n + 1)

end

end A047265.P8015355583504851265

/-! ## A047265.P8516341228770374867

`A014815(A067731(n))*A341418(n+1)`
-/

namespace A047265.P8516341228770374867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014815 (A067731 n).toNat * A341418 (n + 1)

end

end A047265.P8516341228770374867

/-! ## A047265.P7916426905034575629

`A009531(A099375(n))*A341418(n+1)`
-/

namespace A047265.P7916426905034575629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A341418 (n + 1)

end

end A047265.P7916426905034575629

/-! ## A047265.P403750581128197465

`A008836(A130321(n))*A341418(n+1)`
-/

namespace A047265.P403750581128197465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A130321 n).toNat * A341418 (n + 1)

end

end A047265.P403750581128197465

/-! ## A047265.P18357404818306578820

`A341418(A000027(n+1))/A097807(n)`
-/

namespace A047265.P18357404818306578820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341418 (A000027 (n + 1)).toNat : ℚ) / (A097807 n : ℚ)

end

end A047265.P18357404818306578820

/-! ## A047265.P4858248896579783635

`A062157(A004736(n+1))*A341418(n+1)`
-/

namespace A047265.P4858248896579783635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat * A341418 (n + 1)

end

end A047265.P4858248896579783635

/-! ## A047265.P15431041488367870964

`A062157(A092543(n+1))*A341418(n+1)`
-/

namespace A047265.P15431041488367870964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A092543 (n + 1)).toNat * A341418 (n + 1)

end

end A047265.P15431041488367870964

/-! ## A047265.P639119307414821409

`A341418(n+1)%A157826(n+1)/A097807(n)`
-/

namespace A047265.P639119307414821409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A341418 (n + 1)) (A157826 (n + 1)) : ℚ) / (A097807 n : ℚ)

end

end A047265.P639119307414821409

/-!
# A047266: Numbers that are congruent to {0, 1, 5} mod 6.

The programs for A047266, the canonical program `A047266.P2940400626504877787` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047266 has offset 1).

The definition of A047266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047266.P2940400626504877787

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=6`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047266

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P2940400626504877787.Spec : Prop :=
  ∀ n, P2940400626504877787.a n = A047266 (n + 1)

theorem P2940400626504877787.correct : P2940400626504877787.Spec := by
  intro n
  simp only [A047266, Nat.add_sub_cancel]

end A047266

/-! ## A047266.P17170336583407779682

`∑[and(5, dr(3*n))]`
-/

namespace A047266.P17170336583407779682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 5 (SequenceMachineLib.digitalRoot (3 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047266.P17170336583407779682

namespace A047266

/-- `∑[and(5, dr(3*n))]` -/
def P17170336583407779682.Spec : Prop :=
  ∀ n, (P17170336583407779682.a n : ℤ) = A047266 (n + 1)

end A047266

/-! ## A047266.P2900072827225178375

`3*round(n/3)+n`
-/

namespace A047266.P2900072827225178375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway ((n : ℚ) / 3) + (n : ℤ)

end

end A047266.P2900072827225178375

namespace A047266

/-- `3*round(n/3)+n` -/
def P2900072827225178375.Spec : Prop :=
  ∀ n, P2900072827225178375.a n = A047266 (n + 1)

end A047266

/-! ## A047266.P16606840566721448091

`comp[floor(n/2)+or(2, n)]`
-/

namespace A047266.P16606840566721448091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + (Nat.lor 2 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047266.P16606840566721448091

namespace A047266

/-- `comp[floor(n/2)+or(2, n)]` -/
def P16606840566721448091.Spec : Prop :=
  ∀ n, (P16606840566721448091.a n : ℤ) = A047266 (n + 1)

end A047266

/-! ## A047266.P15842632230164950463

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=1`
-/

namespace A047266.P15842632230164950463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047266.P15842632230164950463

namespace A047266

/-- `∑[abs(a(n-3))]` -/
def P15842632230164950463.Spec : Prop :=
  ∀ n, (P15842632230164950463.a n : ℤ) = A047266 (n + 1)

end A047266

/-! ## A047266.P6140130867629919103

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047266.P6140130867629919103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047266.P6140130867629919103

namespace A047266

/-- `∑[floor(a(n-3))]` -/
def P6140130867629919103.Spec : Prop :=
  ∀ n, (P6140130867629919103.a n : ℤ) = A047266 (n + 1)

end A047266

/-! ## A047266.P10994185957186463244

`∑[ceil(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A047266.P10994185957186463244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047266.P10994185957186463244

namespace A047266

/-- `∑[ceil(a(n-3))]` -/
def P10994185957186463244.Spec : Prop :=
  ∀ n, (P10994185957186463244.a n : ℤ) = A047266 (n + 1)

end A047266

/-! ## A047266.P12537817821050548928

`∑[round(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=1`

`round` is left out, it is the identity on integers.
-/

namespace A047266.P12537817821050548928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047266.P12537817821050548928

namespace A047266

/-- `∑[round(a(n-3))]` -/
def P12537817821050548928.Spec : Prop :=
  ∀ n, (P12537817821050548928.a n : ℤ) = A047266 (n + 1)

end A047266

/-! ## A047266.P3519622013990937177

`comp[2*(n+1)-n%3]`
-/

namespace A047266.P3519622013990937177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - ((n % 3 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047266.P3519622013990937177

namespace A047266

/-- `comp[2*(n+1)-n%3]` -/
def P3519622013990937177.Spec : Prop :=
  ∀ n, (P3519622013990937177.a n : ℤ) = A047266 (n + 1)

end A047266

/-! ## A047266.P8443292691721543928

`∑[9%dr(2*n+n-1)]`
-/

namespace A047266.P8443292691721543928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 % SequenceMachineLib.digitalRoot ((2 * n : ℤ) + ((n : ℤ) - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047266.P8443292691721543928

namespace A047266

/-- `∑[9%dr(2*n+n-1)]` -/
def P8443292691721543928.Spec : Prop :=
  ∀ n, (P8443292691721543928.a n : ℤ) = A047266 (n + 1)

end A047266

/-! ## A047266.P3419221661497858654

`round(2*n-sin((2*n)%6))`
-/

namespace A047266.P3419221661497858654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℝ) - Real.sin ((2 * n % 6 : ℕ) : ℝ))

end

end A047266.P3419221661497858654

namespace A047266

/-- `round(2*n-sin((2*n)%6))` -/
def P3419221661497858654.Spec : Prop :=
  ∀ n, P3419221661497858654.a n = A047266 (n + 1)

end A047266

/-! ## A047266.P16225219383058899248

`∑[(2-a(n-3))²]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=1`
-/

namespace A047266.P16225219383058899248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 1] fun n f1 =>
  (2 - f1 (n - 3)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047266.P16225219383058899248

namespace A047266

/-- `∑[(2-a(n-3))²]` -/
def P16225219383058899248.Spec : Prop :=
  ∀ n, P16225219383058899248.a n = A047266 (n + 1)

end A047266

/-! ## A047266.P1766364059883739948

`record[2*n-a(n-3)]` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A047266.P1766364059883739948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n f1 =>
  (2 * n : ℤ) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047266.P1766364059883739948

namespace A047266

/-- `record[2*n-a(n-3)]` -/
def P1766364059883739948.Spec : Prop :=
  ∀ n, P1766364059883739948.a n = A047266 (n + 1)

end A047266

/-! ## A047266.P15788794264657737552

`abs((n+1)%3-(2*n+1))`
-/

namespace A047266.P15788794264657737552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((n + 1) % 3 : ℕ) : ℤ) - (2 * n + 1 : ℤ)|

end

end A047266.P15788794264657737552

namespace A047266

/-- `abs((n+1)%3-(2*n+1))` -/
def P15788794264657737552.Spec : Prop :=
  ∀ n, P15788794264657737552.a n = A047266 (n + 1)

end A047266

/-! ## A047266.P16332707950637277319

`∑[4/(5-a(n-3))]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=1`
-/

namespace A047266.P16332707950637277319
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 4, 1] fun n f1 =>
  4 / (5 - f1 (n - 3))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047266.P16332707950637277319

namespace A047266

/-- `∑[4/(5-a(n-3))]` -/
def P16332707950637277319.Spec : Prop :=
  ∀ n, P16332707950637277319.a n = (A047266 (n + 1) : ℚ)

end A047266

/-! ## A047266.P16760737735680988528

`eq[n, 2*n-a(n-3)]` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A047266.P16760737735680988528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n f2 =>
  (2 * n : ℤ) - f2 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047266.P16760737735680988528

namespace A047266

/-- `eq[n, 2*n-a(n-3)]` -/
def P16760737735680988528.Spec : Prop :=
  ∀ n, (P16760737735680988528.a n : ℤ) = A047266 (n + 1)

end A047266

/-! ## A047266.P983327559086286491

`lt[n, 2*n-a(n-3)]` with `a(0)=3, a(1)=4, a(2)=0`
-/

namespace A047266.P983327559086286491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 0] fun n f2 =>
  (2 * n : ℤ) - f2 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A047266.P983327559086286491

namespace A047266

/-- `lt[n, 2*n-a(n-3)]` -/
def P983327559086286491.Spec : Prop :=
  ∀ n, (P983327559086286491.a n : ℤ) = A047266 (n + 1)

end A047266

/-! ## A047266.P13594620482279382695

`∑[a(n-3)^a(n-1)]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=1`
-/

namespace A047266.P13594620482279382695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 1] fun n f1 =>
  f1 (n - 3) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047266.P13594620482279382695

namespace A047266

/-- `∑[a(n-3)^a(n-1)]` -/
def P13594620482279382695.Spec : Prop :=
  ∀ n, (P13594620482279382695.a n : ℤ) = A047266 (n + 1)

end A047266

/-! ## A047266.P15935517043207518779

`∑[5-a(n-1)*a(n-2)]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A047266.P15935517043207518779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n f1 =>
  5 - f1 (n - 1) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047266.P15935517043207518779

namespace A047266

/-- `∑[5-a(n-1)*a(n-2)]` -/
def P15935517043207518779.Spec : Prop :=
  ∀ n, P15935517043207518779.a n = A047266 (n + 1)

end A047266

/-!
# A047267: Numbers that are congruent to {0, 2, 5} mod 6.

The programs for A047267, the canonical program `A047267.P9445888636316524669` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047267 has offset 1).

The definition of A047267 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047267.P9445888636316524669

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=6`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047267

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P9445888636316524669.Spec : Prop :=
  ∀ n, P9445888636316524669.a n = A047267 (n + 1)

theorem P9445888636316524669.correct : P9445888636316524669.Spec := by
  intro n
  simp only [A047267, Nat.add_sub_cancel]

end A047267

/-! ## A047267.P2799435514944459268

`∑[n%3]+n`
-/

namespace A047267.P2799435514944459268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047267.P2799435514944459268

namespace A047267

/-- `∑[n%3]+n` -/
def P2799435514944459268.Spec : Prop :=
  ∀ n, (P2799435514944459268.a n : ℤ) = A047267 (n + 1)

end A047267

/-! ## A047267.P7382187908337048812

`∑[dr(6*n)%4]`
-/

namespace A047267.P7382187908337048812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (6 * n : ℤ) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047267.P7382187908337048812

namespace A047267

/-- `∑[dr(6*n)%4]` -/
def P7382187908337048812.Spec : Prop :=
  ∀ n, (P7382187908337048812.a n : ℤ) = A047267 (n + 1)

end A047267

/-! ## A047267.P2550279610485439903

`∑[and(3, dr(6*n))]`
-/

namespace A047267.P2550279610485439903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (SequenceMachineLib.digitalRoot (6 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047267.P2550279610485439903

namespace A047267

/-- `∑[and(3, dr(6*n))]` -/
def P2550279610485439903.Spec : Prop :=
  ∀ n, (P2550279610485439903.a n : ℤ) = A047267 (n + 1)

end A047267

/-! ## A047267.P8840476826718744716

`n-∑[-n%3]`
-/

namespace A047267.P8840476826718744716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(n : ℤ)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047267.P8840476826718744716

namespace A047267

/-- `n-∑[-n%3]` -/
def P8840476826718744716.Spec : Prop :=
  ∀ n, P8840476826718744716.a n = A047267 (n + 1)

end A047267

/-! ## A047267.P5646621325649247061

`Δ[floor((1/3-n)²)]`
-/

namespace A047267.P5646621325649247061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 : ℚ) / 3 - (n : ℚ)) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047267.P5646621325649247061

namespace A047267

/-- `Δ[floor((1/3-n)²)]` -/
def P5646621325649247061.Spec : Prop :=
  ∀ n, P5646621325649247061.a n = A047267 (n + 1)

end A047267

/-! ## A047267.P18311906019244864375

`record[n-dr(n²)]-n`
-/

namespace A047267.P18311906019244864375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.digitalRoot (n ^ 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A047267.P18311906019244864375

namespace A047267

/-- `record[n-dr(n²)]-n` -/
def P18311906019244864375.Spec : Prop :=
  ∀ n, P18311906019244864375.a n = A047267 (n + 1)

end A047267

/-! ## A047267.P10372016673915878850

`a(n-3)+6` with `a(0)=0, a(1)=2, a(2)=5`
-/

namespace A047267.P10372016673915878850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 5] fun n a =>
  a (n - 3) + 6

end

end A047267.P10372016673915878850

namespace A047267

/-- `a(n-3)+6` -/
def P10372016673915878850.Spec : Prop :=
  ∀ n, (P10372016673915878850.a n : ℤ) = A047267 (n + 1)

end A047267

/-! ## A047267.P918547958086076546

`C(n, 2)%3+2*n`
-/

namespace A047267.P918547958086076546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 % 3 + 2 * n

end

end A047267.P918547958086076546

namespace A047267

/-- `C(n, 2)%3+2*n` -/
def P918547958086076546.Spec : Prop :=
  ∀ n, (P918547958086076546.a n : ℤ) = A047267 (n + 1)

end A047267

/-! ## A047267.P4082940032060910673

`eq[n, lcm(n, (n-1)%3)]`
-/

namespace A047267.P4082940032060910673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (Int.tmod ((n : ℤ) - 1) 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047267.P4082940032060910673

namespace A047267

/-- `eq[n, lcm(n, (n-1)%3)]` -/
def P4082940032060910673.Spec : Prop :=
  ∀ n, (P4082940032060910673.a n : ℤ) = A047267 (n + 1)

end A047267

/-! ## A047267.P17173147855236097918

`record[and(n, -(n+2)%3)]`
-/

namespace A047267.P17173147855236097918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(((n + 2) % 3 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047267.P17173147855236097918

namespace A047267

/-- `record[and(n, -(n+2)%3)]` -/
def P17173147855236097918.Spec : Prop :=
  ∀ n, P17173147855236097918.a n = A047267 (n + 1)

end A047267

/-! ## A047267.P5811409649118977670

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=1`
-/

namespace A047267.P5811409649118977670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047267.P5811409649118977670

namespace A047267

/-- `∑[abs(a(n-3))]` -/
def P5811409649118977670.Spec : Prop :=
  ∀ n, (P5811409649118977670.a n : ℤ) = A047267 (n + 1)

end A047267

/-! ## A047267.P17507121961101245948

`∑[dr(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=1`
-/

namespace A047267.P17507121961101245948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 1] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047267.P17507121961101245948

namespace A047267

/-- `∑[dr(a(n-3))]` -/
def P17507121961101245948.Spec : Prop :=
  ∀ n, (P17507121961101245948.a n : ℤ) = A047267 (n + 1)

end A047267

/-! ## A047267.P18337407802593042118

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047267.P18337407802593042118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047267.P18337407802593042118

namespace A047267

/-- `∑[floor(a(n-3))]` -/
def P18337407802593042118.Spec : Prop :=
  ∀ n, (P18337407802593042118.a n : ℤ) = A047267 (n + 1)

end A047267

/-! ## A047267.P8203758582607612825

`∑[ceil(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A047267.P8203758582607612825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047267.P8203758582607612825

namespace A047267

/-- `∑[ceil(a(n-3))]` -/
def P8203758582607612825.Spec : Prop :=
  ∀ n, (P8203758582607612825.a n : ℤ) = A047267 (n + 1)

end A047267

/-! ## A047267.P12681743630206856389

`∑[round(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=1`

`round` is left out, it is the identity on integers.
-/

namespace A047267.P12681743630206856389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047267.P12681743630206856389

namespace A047267

/-- `∑[round(a(n-3))]` -/
def P12681743630206856389.Spec : Prop :=
  ∀ n, (P12681743630206856389.a n : ℤ) = A047267 (n + 1)

end A047267

/-! ## A047267.P5956756247602080977

`comp[n*(n+1)%3+1]`
-/

namespace A047267.P5956756247602080977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((n + 1) % 3) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047267.P5956756247602080977

namespace A047267

/-- `comp[n*(n+1)%3+1]` -/
def P5956756247602080977.Spec : Prop :=
  ∀ n, (P5956756247602080977.a n : ℤ) = A047267 (n + 1)

end A047267

/-! ## A047267.P6464405756851215866

`2*n-(n-∑[n])%3`
-/

namespace A047267.P6464405756851215866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.tmod ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) 3

end

end A047267.P6464405756851215866

namespace A047267

/-- `2*n-(n-∑[n])%3` -/
def P6464405756851215866.Spec : Prop :=
  ∀ n, P6464405756851215866.a n = A047267 (n + 1)

end A047267

/-! ## A047267.P1151696278226030582

`∑[and(3, a(n-3))]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=1`
-/

namespace A047267.P1151696278226030582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 1] fun n f1 =>
  Nat.land 3 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047267.P1151696278226030582

namespace A047267

/-- `∑[and(3, a(n-3))]` -/
def P1151696278226030582.Spec : Prop :=
  ∀ n, (P1151696278226030582.a n : ℤ) = A047267 (n + 1)

end A047267

/-! ## A047267.P3088028311326251533

`∑[a(n-3)%n]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=1`
-/

namespace A047267.P3088028311326251533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 1] fun n f1 =>
  f1 (n - 3) % n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047267.P3088028311326251533

namespace A047267

/-- `∑[a(n-3)%n]` -/
def P3088028311326251533.Spec : Prop :=
  ∀ n, (P3088028311326251533.a n : ℤ) = A047267 (n + 1)

end A047267

/-!
# A047268: Numbers that are congruent to {1, 2, 5} mod 6.

The programs for A047268, the canonical program `A047268.P1846918975062122750` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047268 has offset 1).

The definition of A047268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047268.P1846918975062122750

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=7`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047268

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P1846918975062122750.Spec : Prop :=
  ∀ n, P1846918975062122750.a n = A047268 (n + 1)

theorem P1846918975062122750.correct : P1846918975062122750.Spec := by
  intro n
  simp only [A047268, Nat.add_sub_cancel]

end A047268

/-! ## A047268.P3172941456738432246

`Δ[round((1/6-n)²)]`
-/

namespace A047268.P3172941456738432246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((1 : ℚ) / 6 - (n : ℚ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047268.P3172941456738432246

namespace A047268

/-- `Δ[round((1/6-n)²)]` -/
def P3172941456738432246.Spec : Prop :=
  ∀ n, P3172941456738432246.a n = A047268 (n + 1)

end A047268

/-! ## A047268.P1850722144537507116

`∑[Δ[n²]%3]+n`
-/

namespace A047268.P1850722144537507116
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A047268.P1850722144537507116

namespace A047268

/-- `∑[Δ[n²]%3]+n` -/
def P1850722144537507116.Spec : Prop :=
  ∀ n, P1850722144537507116.a n = A047268 (n + 1)

end A047268

/-! ## A047268.P17165097388897242071

`Δ[n²]-∑[n]%3`
-/

namespace A047268.P17165097388897242071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j) % 3 : ℕ) : ℤ)

end

end A047268.P17165097388897242071

namespace A047268

/-- `Δ[n²]-∑[n]%3` -/
def P17165097388897242071.Spec : Prop :=
  ∀ n, P17165097388897242071.a n = A047268 (n + 1)

end A047268

/-! ## A047268.P5957069627926610552

`a(n-3)+6` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A047268.P5957069627926610552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 3) + 6

end

end A047268.P5957069627926610552

namespace A047268

/-- `a(n-3)+6` -/
def P5957069627926610552.Spec : Prop :=
  ∀ n, (P5957069627926610552.a n : ℤ) = A047268 (n + 1)

end A047268

/-! ## A047268.P10057720610675561468

`eq[1, gcd(n, (2*n)%3)]`
-/

namespace A047268.P10057720610675561468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * n % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047268.P10057720610675561468

namespace A047268

/-- `eq[1, gcd(n, (2*n)%3)]` -/
def P10057720610675561468.Spec : Prop :=
  ∀ n, (P10057720610675561468.a n : ℤ) = A047268 (n + 1)

end A047268

/-! ## A047268.P1106068675055088580

`lt[val(n+2, 6), n%3]`
-/

namespace A047268.P1106068675055088580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047268.P1106068675055088580

namespace A047268

/-- `lt[val(n+2, 6), n%3]` -/
def P1106068675055088580.Spec : Prop :=
  ∀ n, (P1106068675055088580.a n : ℤ) = A047268 (n + 1)

end A047268

/-! ## A047268.P3825186557232858539

`record[xor(n, (n+1)²%3)]`
-/

namespace A047268.P3825186557232858539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n ((n + 1) ^ 2 % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047268.P3825186557232858539

namespace A047268

/-- `record[xor(n, (n+1)²%3)]` -/
def P3825186557232858539.Spec : Prop :=
  ∀ n, (P3825186557232858539.a n : ℤ) = A047268 (n + 1)

end A047268

/-! ## A047268.P5530297518685059554

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A047268.P5530297518685059554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047268.P5530297518685059554

namespace A047268

/-- `∑[abs(a(n-3))]` -/
def P5530297518685059554.Spec : Prop :=
  ∀ n, (P5530297518685059554.a n : ℤ) = A047268 (n + 1)

end A047268

/-! ## A047268.P15261131108329113261

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A047268.P15261131108329113261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047268.P15261131108329113261

namespace A047268

/-- `∑[dr(a(n-3))]` -/
def P15261131108329113261.Spec : Prop :=
  ∀ n, (P15261131108329113261.a n : ℤ) = A047268 (n + 1)

end A047268

/-! ## A047268.P9498980169804772799

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A047268.P9498980169804772799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047268.P9498980169804772799

namespace A047268

/-- `∑[floor(a(n-3))]` -/
def P9498980169804772799.Spec : Prop :=
  ∀ n, (P9498980169804772799.a n : ℤ) = A047268 (n + 1)

end A047268

/-! ## A047268.P16231974337911493400

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A047268.P16231974337911493400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047268.P16231974337911493400

namespace A047268

/-- `∑[ceil(a(n-3))]` -/
def P16231974337911493400.Spec : Prop :=
  ∀ n, (P16231974337911493400.a n : ℤ) = A047268 (n + 1)

end A047268

/-! ## A047268.P8900845475991270430

`∑[round(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=2`

`round` is left out, it is the identity on integers.
-/

namespace A047268.P8900845475991270430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047268.P8900845475991270430

namespace A047268

/-- `∑[round(a(n-3))]` -/
def P8900845475991270430.Spec : Prop :=
  ∀ n, (P8900845475991270430.a n : ℤ) = A047268 (n + 1)

end A047268

/-! ## A047268.P6860255482152346045

`∑[3-(n+1)%3]-1`
-/

namespace A047268.P6860255482152346045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (((n + 1) % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A047268.P6860255482152346045

namespace A047268

/-- `∑[3-(n+1)%3]-1` -/
def P6860255482152346045.Spec : Prop :=
  ∀ n, P6860255482152346045.a n = A047268 (n + 1)

end A047268

/-! ## A047268.P9263758432569463478

`(1-n)²%3+2*n`
-/

namespace A047268.P9263758432569463478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((1 - (n : ℤ)) ^ 2) 3 + (2 * n : ℤ)

end

end A047268.P9263758432569463478

namespace A047268

/-- `(1-n)²%3+2*n` -/
def P9263758432569463478.Spec : Prop :=
  ∀ n, P9263758432569463478.a n = A047268 (n + 1)

end A047268

/-! ## A047268.P17632896577159118245

`or(2*n, (n+2)²%3)`
-/

namespace A047268.P17632896577159118245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) ((n + 2) ^ 2 % 3)

end

end A047268.P17632896577159118245

namespace A047268

/-- `or(2*n, (n+2)²%3)` -/
def P17632896577159118245.Spec : Prop :=
  ∀ n, (P17632896577159118245.a n : ℤ) = A047268 (n + 1)

end A047268

/-! ## A047268.P1953081048009842726

`xor(Δ[n²], char[3*n+1])`
-/

namespace A047268.P1953081048009842726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A047268.P1953081048009842726

namespace A047268

/-- `xor(Δ[n²], char[3*n+1])` -/
def P1953081048009842726.Spec : Prop :=
  ∀ n, P1953081048009842726.a n = A047268 (n + 1)

end A047268

/-! ## A047268.P12723242009041780770

`∑[and(3, a(n-3))]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A047268.P12723242009041780770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 2] fun n f1 =>
  Nat.land 3 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047268.P12723242009041780770

namespace A047268

/-- `∑[and(3, a(n-3))]` -/
def P12723242009041780770.Spec : Prop :=
  ∀ n, (P12723242009041780770.a n : ℤ) = A047268 (n + 1)

end A047268

/-! ## A047268.P8152656672674057239

`∑[a(n-3)%n]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A047268.P8152656672674057239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 2] fun n f1 =>
  f1 (n - 3) % n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047268.P8152656672674057239

namespace A047268

/-- `∑[a(n-3)%n]` -/
def P8152656672674057239.Spec : Prop :=
  ∀ n, (P8152656672674057239.a n : ℤ) = A047268 (n + 1)

end A047268

/-! ## A047268.P10602397001477643617

`gcd(3, 1-n)%3+n+n`
-/

namespace A047268.P10602397001477643617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (1 - (n : ℤ)) % 3 + n + n

end

end A047268.P10602397001477643617

namespace A047268

/-- `gcd(3, 1-n)%3+n+n` -/
def P10602397001477643617.Spec : Prop :=
  ∀ n, (P10602397001477643617.a n : ℤ) = A047268 (n + 1)

end A047268

/-!
# A047269: Numbers that are congruent to {0, 1, 2, 5} mod 6.

The programs for A047269, the canonical program `A047269.P4043394418920252992` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047269 has offset 1).

The definition of A047269 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047269.P4043394418920252992

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5, a(4)=6`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047269

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P4043394418920252992.Spec : Prop :=
  ∀ n, P4043394418920252992.a n = A047269 (n + 1)

theorem P4043394418920252992.correct : P4043394418920252992.Spec := by
  intro n
  simp only [A047269, Nat.add_sub_cancel]

end A047269

/-! ## A047269.P12258993213235605386

`comp[xor(1, 3*n-1)]`
-/

namespace A047269.P12258993213235605386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((3 * n : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047269.P12258993213235605386

namespace A047269

/-- `comp[xor(1, 3*n-1)]` -/
def P12258993213235605386.Spec : Prop :=
  ∀ n, (P12258993213235605386.a n : ℤ) = A047269 (n + 1)

end A047269

/-! ## A047269.P14762539974466196635

`comp[xor(1, 3*n)+2]`
-/

namespace A047269.P14762539974466196635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047269.P14762539974466196635

namespace A047269

/-- `comp[xor(1, 3*n)+2]` -/
def P14762539974466196635.Spec : Prop :=
  ∀ n, (P14762539974466196635.a n : ℤ) = A047269 (n + 1)

end A047269

/-! ## A047269.P83648429716689074

`∑[and(2, n^3)]+n`
-/

namespace A047269.P83648429716689074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n ^ 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047269.P83648429716689074

namespace A047269

/-- `∑[and(2, n^3)]+n` -/
def P83648429716689074.Spec : Prop :=
  ∀ n, (P83648429716689074.a n : ℤ) = A047269 (n + 1)

end A047269

/-! ## A047269.P6829962749465008908

`comp[or(3, 2*n)+n]`
-/

namespace A047269.P6829962749465008908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (2 * n) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047269.P6829962749465008908

namespace A047269

/-- `comp[or(3, 2*n)+n]` -/
def P6829962749465008908.Spec : Prop :=
  ∀ n, (P6829962749465008908.a n : ℤ) = A047269 (n + 1)

end A047269

/-! ## A047269.P10229240022170580486

`∑[abs(Δ[or(2, n)])]-1`
-/

namespace A047269.P10229240022170580486
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A047269.P10229240022170580486

namespace A047269

/-- `∑[abs(Δ[or(2, n)])]-1` -/
def P10229240022170580486.Spec : Prop :=
  ∀ n, P10229240022170580486.a n = A047269 (n + 1)

end A047269

/-! ## A047269.P4311898408567895238

`comp[a(n-2)+6]` with `a(0)=3, a(1)=4`
-/

namespace A047269.P4311898408567895238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  f1 (n - 2) + 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047269.P4311898408567895238

namespace A047269

/-- `comp[a(n-2)+6]` -/
def P4311898408567895238.Spec : Prop :=
  ∀ n, (P4311898408567895238.a n : ℤ) = A047269 (n + 1)

end A047269

/-! ## A047269.P16961444481071834938

`a(n-4)+6` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A047269.P16961444481071834938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 5] fun n a =>
  a (n - 4) + 6

end

end A047269.P16961444481071834938

namespace A047269

/-- `a(n-4)+6` -/
def P16961444481071834938.Spec : Prop :=
  ∀ n, (P16961444481071834938.a n : ℤ) = A047269 (n + 1)

end A047269

/-! ## A047269.P3904117600021440826

`and(n+1, -4)/2+n`
-/

namespace A047269.P3904117600021440826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n + 1 : ℤ) (-4) : ℚ) / 2 + (n : ℚ)

end

end A047269.P3904117600021440826

namespace A047269

/-- `and(n+1, -4)/2+n` -/
def P3904117600021440826.Spec : Prop :=
  ∀ n, P3904117600021440826.a n = (A047269 (n + 1) : ℚ)

end A047269

/-! ## A047269.P16255452704748493178

`2*floor((n+1)/4)+n`
-/

namespace A047269.P16255452704748493178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n + 1 : ℚ) / 4⌋ + (n : ℤ)

end

end A047269.P16255452704748493178

namespace A047269

/-- `2*floor((n+1)/4)+n` -/
def P16255452704748493178.Spec : Prop :=
  ∀ n, P16255452704748493178.a n = A047269 (n + 1)

end A047269

/-! ## A047269.P14449636192800910184

`ceil(or(3, n-3)/2+n)`
-/

namespace A047269.P14449636192800910184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor 3 ((n : ℤ) - 3) : ℚ) / 2 + (n : ℚ)⌉

end

end A047269.P14449636192800910184

namespace A047269

/-- `ceil(or(3, n-3)/2+n)` -/
def P14449636192800910184.Spec : Prop :=
  ∀ n, P14449636192800910184.a n = A047269 (n + 1)

end A047269

/-! ## A047269.P11934673966495398428

`∑[abs(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3, a(4)=1`
-/

namespace A047269.P11934673966495398428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 3, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047269.P11934673966495398428

namespace A047269

/-- `∑[abs(a(n-4))]` -/
def P11934673966495398428.Spec : Prop :=
  ∀ n, (P11934673966495398428.a n : ℤ) = A047269 (n + 1)

end A047269

/-! ## A047269.P18001035471031226141

`∑[or(1, a(n-4))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A047269.P18001035471031226141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 3] fun n f1 =>
  Nat.lor 1 (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047269.P18001035471031226141

namespace A047269

/-- `∑[or(1, a(n-4))]` -/
def P18001035471031226141.Spec : Prop :=
  ∀ n, (P18001035471031226141.a n : ℤ) = A047269 (n + 1)

end A047269

/-! ## A047269.P5479859924346270968

`∑[dr(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3, a(4)=1`
-/

namespace A047269.P5479859924346270968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 3, 1] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047269.P5479859924346270968

namespace A047269

/-- `∑[dr(a(n-4))]` -/
def P5479859924346270968.Spec : Prop :=
  ∀ n, (P5479859924346270968.a n : ℤ) = A047269 (n + 1)

end A047269

/-! ## A047269.P12560663634771623904

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047269.P12560663634771623904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 3, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047269.P12560663634771623904

namespace A047269

/-- `∑[floor(a(n-4))]` -/
def P12560663634771623904.Spec : Prop :=
  ∀ n, (P12560663634771623904.a n : ℤ) = A047269 (n + 1)

end A047269

/-! ## A047269.P10976346154643163668

`∑[ceil(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3, a(4)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A047269.P10976346154643163668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 3, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047269.P10976346154643163668

namespace A047269

/-- `∑[ceil(a(n-4))]` -/
def P10976346154643163668.Spec : Prop :=
  ∀ n, (P10976346154643163668.a n : ℤ) = A047269 (n + 1)

end A047269

/-! ## A047269.P12789486931494518075

`∑[round(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3, a(4)=1`

`round` is left out, it is the identity on integers.
-/

namespace A047269.P12789486931494518075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 3, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047269.P12789486931494518075

namespace A047269

/-- `∑[round(a(n-4))]` -/
def P12789486931494518075.Spec : Prop :=
  ∀ n, (P12789486931494518075.a n : ℤ) = A047269 (n + 1)

end A047269

/-! ## A047269.P2157761171599569979

`(lt[n, xor(4, n+1)]+n)/2`
-/

namespace A047269.P2157761171599569979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + n : ℚ) / 2

end

end A047269.P2157761171599569979

namespace A047269

/-- `(lt[n, xor(4, n+1)]+n)/2` -/
def P2157761171599569979.Spec : Prop :=
  ∀ n, P2157761171599569979.a n = (A047269 (n + 1) : ℚ)

end A047269

/-! ## A047269.P12349631922200840766

`floor(or(2, n+1)/2+n-1)`
-/

namespace A047269.P12349631922200840766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 2 (n + 1) : ℚ) / 2 + ((n : ℤ) - 1 : ℚ)⌋

end

end A047269.P12349631922200840766

namespace A047269

/-- `floor(or(2, n+1)/2+n-1)` -/
def P12349631922200840766.Spec : Prop :=
  ∀ n, P12349631922200840766.a n = A047269 (n + 1)

end A047269

/-! ## A047269.P14369229775112337890

`floor(2*n-or(2, n-1)/2)`
-/

namespace A047269.P14369229775112337890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) - (Int.lor 2 ((n : ℤ) - 1) : ℚ) / 2⌋

end

end A047269.P14369229775112337890

namespace A047269

/-- `floor(2*n-or(2, n-1)/2)` -/
def P14369229775112337890.Spec : Prop :=
  ∀ n, P14369229775112337890.a n = A047269 (n + 1)

end A047269

/-!
# A047270: Numbers that are congruent to {3, 5} mod 6.

The programs for A047270, the canonical program `A047270.P15727693448876190263` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047270 has offset 1).

The definition of A047270 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047270.P15727693448876190263

`a(n-2)+6` with `a(0)=3, a(1)=5`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047270

/-- `a(n-2)+6` -/
def P15727693448876190263.Spec : Prop :=
  ∀ n, (P15727693448876190263.a n : ℤ) = A047270 (n + 1)

theorem P15727693448876190263.correct : P15727693448876190263.Spec := by
  intro n
  simp only [A047270, Nat.add_sub_cancel]

end A047270

/-! ## A047270.P181502700731773229

`2*A001651(n+1)+1`
-/

namespace A047270.P181502700731773229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001651 (n + 1) + 1

end

end A047270.P181502700731773229

namespace A047270

/-- `2*A001651(n+1)+1` -/
def P181502700731773229.Spec : Prop :=
  ∀ n, P181502700731773229.a n = A047270 (n + 1)

end A047270

/-! ## A047270.P8568231749387551659

`or(1, 3*n+2)`
-/

namespace A047270.P8568231749387551659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n + 2)

end

end A047270.P8568231749387551659

namespace A047270

/-- `or(1, 3*n+2)` -/
def P8568231749387551659.Spec : Prop :=
  ∀ n, (P8568231749387551659.a n : ℤ) = A047270 (n + 1)

end A047270

/-! ## A047270.P4618858629394055813

`and(3*n, -2)+3`
-/

namespace A047270.P4618858629394055813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n : ℤ) (-2) + 3

end

end A047270.P4618858629394055813

namespace A047270

/-- `and(3*n, -2)+3` -/
def P4618858629394055813.Spec : Prop :=
  ∀ n, P4618858629394055813.a n = A047270 (n + 1)

end A047270

/-! ## A047270.P11831513389199201193

`2*comp[3*n]+1`
-/

namespace A047270.P11831513389199201193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A047270.P11831513389199201193

namespace A047270

/-- `2*comp[3*n]+1` -/
def P11831513389199201193.Spec : Prop :=
  ∀ n, (P11831513389199201193.a n : ℤ) = A047270 (n + 1)

end A047270

/-! ## A047270.P12865314784360910036

`xor(1, 2*comp[3*n])`
-/

namespace A047270.P12865314784360910036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A047270.P12865314784360910036

namespace A047270

/-- `xor(1, 2*comp[3*n])` -/
def P12865314784360910036.Spec : Prop :=
  ∀ n, (P12865314784360910036.a n : ℤ) = A047270 (n + 1)

end A047270

/-! ## A047270.P6257515291143518712

`record[lcm(3, n+1)-n]`
-/

namespace A047270.P6257515291143518712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (n + 1) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047270.P6257515291143518712

namespace A047270

/-- `record[lcm(3, n+1)-n]` -/
def P6257515291143518712.Spec : Prop :=
  ∀ n, P6257515291143518712.a n = A047270 (n + 1)

end A047270

/-! ## A047270.P15734176864318613239

`∑[6-a(n-1)]` with `a(0)=3, a(1)=2`
-/

namespace A047270.P15734176864318613239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047270.P15734176864318613239

namespace A047270

/-- `∑[6-a(n-1)]` -/
def P15734176864318613239.Spec : Prop :=
  ∀ n, P15734176864318613239.a n = A047270 (n + 1)

end A047270

/-! ## A047270.P17682974578982208002

`abs(3*(n+1)-n%2)`
-/

namespace A047270.P17682974578982208002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * (n + 1) : ℤ) - ((n % 2 : ℕ) : ℤ)|

end

end A047270.P17682974578982208002

namespace A047270

/-- `abs(3*(n+1)-n%2)` -/
def P17682974578982208002.Spec : Prop :=
  ∀ n, P17682974578982208002.a n = A047270 (n + 1)

end A047270

/-! ## A047270.P225770168479253148

`3*((gcd(2, n)+1)/3+n)`
-/

namespace A047270.P225770168479253148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((Nat.gcd 2 n + 1 : ℚ) / 3 + (n : ℚ))

end

end A047270.P225770168479253148

namespace A047270

/-- `3*((gcd(2, n)+1)/3+n)` -/
def P225770168479253148.Spec : Prop :=
  ∀ n, P225770168479253148.a n = (A047270 (n + 1) : ℚ)

end A047270

/-! ## A047270.P18252350615221167193

`record[3*n-a(n-2)]` with `a(0)=3, a(1)=5`
-/

namespace A047270.P18252350615221167193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  (3 * n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047270.P18252350615221167193

namespace A047270

/-- `record[3*n-a(n-2)]` -/
def P18252350615221167193.Spec : Prop :=
  ∀ n, P18252350615221167193.a n = A047270 (n + 1)

end A047270

/-! ## A047270.P9373058693255115994

`floor(6*n-(a(n-1)-2))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047270.P9373058693255115994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (6 * n : ℤ) - (a (n - 1) - 2)

end

end A047270.P9373058693255115994

namespace A047270

/-- `floor(6*n-(a(n-1)-2))` -/
def P9373058693255115994.Spec : Prop :=
  ∀ n, P9373058693255115994.a n = A047270 (n + 1)

end A047270

/-! ## A047270.P8908395510940851305

`record[a(n-1)-(a(n-2)-n)]` with `a(0)=3, a(1)=5`
-/

namespace A047270.P8908395510940851305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  f1 (n - 1) - (f1 (n - 2) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047270.P8908395510940851305

namespace A047270

/-- `record[a(n-1)-(a(n-2)-n)]` -/
def P8908395510940851305.Spec : Prop :=
  ∀ n, P8908395510940851305.a n = A047270 (n + 1)

end A047270

/-! ## A047270.P16778730817512853662

`floor(a(n-1)-((3-a(n-1))%3-2))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047270.P16778730817512853662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) - (Int.tmod (3 - a (n - 1)) 3 - 2)

end

end A047270.P16778730817512853662

namespace A047270

/-- `floor(a(n-1)-((3-a(n-1))%3-2))` -/
def P16778730817512853662.Spec : Prop :=
  ∀ n, P16778730817512853662.a n = A047270 (n + 1)

end A047270

/-! ## A047270.P621306151653056419

`eq[n+1, C(n+1, gcd(n+2, (n-1)*(n-2)))]`
-/

namespace A047270.P621306151653056419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (Int.gcd (n + 2 : ℤ) (((n : ℤ) - 1) * ((n : ℤ) - 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047270.P621306151653056419

namespace A047270

/-- `eq[n+1, C(n+1, gcd(n+2, (n-1)*(n-2)))]` -/
def P621306151653056419.Spec : Prop :=
  ∀ n, (P621306151653056419.a n : ℤ) = A047270 (n + 1)

end A047270

/-! ## A047270.P9124196878779543348

`eq[0, A358840(n)]`
-/

namespace A047270.P9124196878779543348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358840 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047270.P9124196878779543348

namespace A047270

/-- `eq[0, A358840(n)]` -/
def P9124196878779543348.Spec : Prop :=
  ∀ n, (P9124196878779543348.a n : ℤ) = A047270 (n + 1)

end A047270

/-! ## A047270.P17721935488351030225

`lt[2, A328570(n)]`
-/

namespace A047270.P17721935488351030225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A047270.P17721935488351030225

namespace A047270

/-- `lt[2, A328570(n)]` -/
def P17721935488351030225.Spec : Prop :=
  ∀ n, (P17721935488351030225.a n : ℤ) = A047270 (n + 1)

end A047270

/-!
# A047271: Numbers that are congruent to {0, 3, 5} mod 6.

The programs for A047271, the canonical program `A047271.P4758711387469422698` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047271 has offset 1).

The definition of A047271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047271.P4758711387469422698

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=5, a(3)=6`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047271

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P4758711387469422698.Spec : Prop :=
  ∀ n, P4758711387469422698.a n = A047271 (n + 1)

theorem P4758711387469422698.correct : P4758711387469422698.Spec := by
  intro n
  simp only [A047271, Nat.add_sub_cancel]

end A047271

/-! ## A047271.P2913980614479608941

`∑[dr(3*n)%4]`
-/

namespace A047271.P2913980614479608941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * n : ℤ) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047271.P2913980614479608941

namespace A047271

/-- `∑[dr(3*n)%4]` -/
def P2913980614479608941.Spec : Prop :=
  ∀ n, (P2913980614479608941.a n : ℤ) = A047271 (n + 1)

end A047271

/-! ## A047271.P605536137854164582

`∑[and(3, dr(3*n))]`
-/

namespace A047271.P605536137854164582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (SequenceMachineLib.digitalRoot (3 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047271.P605536137854164582

namespace A047271

/-- `∑[and(3, dr(3*n))]` -/
def P605536137854164582.Spec : Prop :=
  ∀ n, (P605536137854164582.a n : ℤ) = A047271 (n + 1)

end A047271

/-! ## A047271.P7624820099716777118

`record[xor(n, n²%3)]`
-/

namespace A047271.P7624820099716777118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n ^ 2 % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047271.P7624820099716777118

namespace A047271

/-- `record[xor(n, n²%3)]` -/
def P7624820099716777118.Spec : Prop :=
  ∀ n, (P7624820099716777118.a n : ℤ) = A047271 (n + 1)

end A047271

/-! ## A047271.P10194096309840530101

`∑[(2*n)%3]+n`
-/

namespace A047271.P10194096309840530101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047271.P10194096309840530101

namespace A047271

/-- `∑[(2*n)%3]+n` -/
def P10194096309840530101.Spec : Prop :=
  ∀ n, (P10194096309840530101.a n : ℤ) = A047271 (n + 1)

end A047271

/-! ## A047271.P13872179794460395627

`Δ[floor((1/6-n)²)]`
-/

namespace A047271.P13872179794460395627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 : ℚ) / 6 - (n : ℚ)) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047271.P13872179794460395627

namespace A047271

/-- `Δ[floor((1/6-n)²)]` -/
def P13872179794460395627.Spec : Prop :=
  ∀ n, P13872179794460395627.a n = A047271 (n + 1)

end A047271

/-! ## A047271.P1744541752098525156

`a(n-3)+6` with `a(0)=0, a(1)=3, a(2)=5`
-/

namespace A047271.P1744541752098525156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 5] fun n a =>
  a (n - 3) + 6

end

end A047271.P1744541752098525156

namespace A047271

/-- `a(n-3)+6` -/
def P1744541752098525156.Spec : Prop :=
  ∀ n, (P1744541752098525156.a n : ℤ) = A047271 (n + 1)

end A047271

/-! ## A047271.P11633441647571430020

`(n^4)%3+2*n`
-/

namespace A047271.P11633441647571430020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 3 + 2 * n

end

end A047271.P11633441647571430020

namespace A047271

/-- `(n^4)%3+2*n` -/
def P11633441647571430020.Spec : Prop :=
  ∀ n, (P11633441647571430020.a n : ℤ) = A047271 (n + 1)

end A047271

/-! ## A047271.P10852875882963499295

`or(2*n, (n^6)%3)`
-/

namespace A047271.P10852875882963499295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (n ^ 6 % 3)

end

end A047271.P10852875882963499295

namespace A047271

/-- `or(2*n, (n^6)%3)` -/
def P10852875882963499295.Spec : Prop :=
  ∀ n, (P10852875882963499295.a n : ℤ) = A047271 (n + 1)

end A047271

/-! ## A047271.P16929591291999435377

`xor(2*n, (n^8)%3)`
-/

namespace A047271.P16929591291999435377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) (n ^ 8 % 3)

end

end A047271.P16929591291999435377

namespace A047271

/-- `xor(2*n, (n^8)%3)` -/
def P16929591291999435377.Spec : Prop :=
  ∀ n, (P16929591291999435377.a n : ℤ) = A047271 (n + 1)

end A047271

/-! ## A047271.P11371496561820482640

`lt[1, gcd(n+3, n%3)]`
-/

namespace A047271.P11371496561820482640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 3) (n % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047271.P11371496561820482640

namespace A047271

/-- `lt[1, gcd(n+3, n%3)]` -/
def P11371496561820482640.Spec : Prop :=
  ∀ n, (P11371496561820482640.a n : ℤ) = A047271 (n + 1)

end A047271

/-! ## A047271.P346461328992644968

`2*n--n²%3`
-/

namespace A047271.P346461328992644968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.tmod (-(n ^ 2 : ℤ)) 3

end

end A047271.P346461328992644968

namespace A047271

/-- `2*n--n²%3` -/
def P346461328992644968.Spec : Prop :=
  ∀ n, P346461328992644968.a n = A047271 (n + 1)

end A047271

/-! ## A047271.P15877140740088329318

`n-∑[-2*n%3]`
-/

namespace A047271.P15877140740088329318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(2 * n : ℤ)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047271.P15877140740088329318

namespace A047271

/-- `n-∑[-2*n%3]` -/
def P15877140740088329318.Spec : Prop :=
  ∀ n, P15877140740088329318.a n = A047271 (n + 1)

end A047271

/-! ## A047271.P17799343162003715126

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=1`
-/

namespace A047271.P17799343162003715126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047271.P17799343162003715126

namespace A047271

/-- `∑[abs(a(n-3))]` -/
def P17799343162003715126.Spec : Prop :=
  ∀ n, (P17799343162003715126.a n : ℤ) = A047271 (n + 1)

end A047271

/-! ## A047271.P17488452202492971859

`∑[dr(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=1`
-/

namespace A047271.P17488452202492971859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 1] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047271.P17488452202492971859

namespace A047271

/-- `∑[dr(a(n-3))]` -/
def P17488452202492971859.Spec : Prop :=
  ∀ n, (P17488452202492971859.a n : ℤ) = A047271 (n + 1)

end A047271

/-! ## A047271.P2193209950632273485

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047271.P2193209950632273485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047271.P2193209950632273485

namespace A047271

/-- `∑[floor(a(n-3))]` -/
def P2193209950632273485.Spec : Prop :=
  ∀ n, (P2193209950632273485.a n : ℤ) = A047271 (n + 1)

end A047271

/-! ## A047271.P13718337650367677792

`∑[ceil(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A047271.P13718337650367677792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047271.P13718337650367677792

namespace A047271

/-- `∑[ceil(a(n-3))]` -/
def P13718337650367677792.Spec : Prop :=
  ∀ n, (P13718337650367677792.a n : ℤ) = A047271 (n + 1)

end A047271

/-! ## A047271.P13970071946167629410

`∑[round(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=1`

`round` is left out, it is the identity on integers.
-/

namespace A047271.P13970071946167629410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047271.P13970071946167629410

namespace A047271

/-- `∑[round(a(n-3))]` -/
def P13970071946167629410.Spec : Prop :=
  ∀ n, (P13970071946167629410.a n : ℤ) = A047271 (n + 1)

end A047271

/-! ## A047271.P8347824019743270443

`∑[3-(n+2)%3]-1`
-/

namespace A047271.P8347824019743270443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (((n + 2) % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A047271.P8347824019743270443

namespace A047271

/-- `∑[3-(n+2)%3]-1` -/
def P8347824019743270443.Spec : Prop :=
  ∀ n, P8347824019743270443.a n = A047271 (n + 1)

end A047271

/-! ## A047271.P10332221359021159525

`floor(1/gcd(3, n)+2*n)`
-/

namespace A047271.P10332221359021159525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (Nat.gcd 3 n : ℚ) + (2 * n : ℚ)⌋

end

end A047271.P10332221359021159525

namespace A047271

/-- `floor(1/gcd(3, n)+2*n)` -/
def P10332221359021159525.Spec : Prop :=
  ∀ n, P10332221359021159525.a n = A047271 (n + 1)

end A047271

/-!
# A047272: Primes p such that p == 1 (mod 4) and Fibonacci((p-1)/4) is divisible by p.

The programs for A047272, there is no canonical definition to state claims against.
-/

/-! ## A047272.P7887739312126327213

`∪[A107192(n+1), A107191(n+2)]`
-/

namespace A047272.P7887739312126327213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107191 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A047272.P7887739312126327213

/-! ## A047272.P13112031720600975592

`p?[gcd(A020484(n), A096748(n))]`
-/

namespace A047272.P13112031720600975592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020484 n) (A096748 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A047272.P13112031720600975592

/-! ## A047272.P6219706388553950388

`p?[gcd(A103609(n), A159482(n+1))]`
-/

namespace A047272.P6219706388553950388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103609 n) (A159482 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A047272.P6219706388553950388

/-! ## A047272.P2089346183224728641

`p?[gcd(A053602(n), A276717(n+1))]`
-/

namespace A047272.P2089346183224728641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053602 n) (A276717 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A047272.P2089346183224728641

/-! ## A047272.P13576918488985062621

`p?[gcd(A118753(n), A324969(n+1))]`
-/

namespace A047272.P13576918488985062621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A118753 n) (A324969 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A047272.P13576918488985062621

/-!
# A047273: Numbers that are congruent to {0, 1, 3, 5} mod 6.

The programs for A047273, the canonical program `A047273.P5050912492785340480` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047273 has offset 1).

The definition of A047273 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047273.P5050912492785340480

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047273

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P5050912492785340480.Spec : Prop :=
  ∀ n, P5050912492785340480.a n = A047273 (n + 1)

theorem P5050912492785340480.correct : P5050912492785340480.Spec := by
  intro n
  simp only [A047273, Nat.add_sub_cancel]

end A047273

/-! ## A047273.P17152455049461520476

`n+A004524(n+1)`
-/

namespace A047273.P17152455049461520476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A004524 (n + 1)

end

end A047273.P17152455049461520476

namespace A047273

/-- `n+A004524(n+1)` -/
def P17152455049461520476.Spec : Prop :=
  ∀ n, P17152455049461520476.a n = A047273 (n + 1)

end A047273

/-! ## A047273.P9754605830939494059

`∑[and(2, n)!]-1`
-/

namespace A047273.P9754605830939494059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047273.P9754605830939494059

namespace A047273

/-- `∑[and(2, n)!]-1` -/
def P9754605830939494059.Spec : Prop :=
  ∀ n, P9754605830939494059.a n = A047273 (n + 1)

end A047273

/-! ## A047273.P14117545181556027594

`comp[2*comp[3*n]]`
-/

namespace A047273.P14117545181556027594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047273.P14117545181556027594

namespace A047273

/-- `comp[2*comp[3*n]]` -/
def P14117545181556027594.Spec : Prop :=
  ∀ n, (P14117545181556027594.a n : ℤ) = A047273 (n + 1)

end A047273

/-! ## A047273.P9265119715401742836

`∑[char[or(2, n)]]+n`
-/

namespace A047273.P9265119715401742836
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047273.P9265119715401742836

namespace A047273

/-- `∑[char[or(2, n)]]+n` -/
def P9265119715401742836.Spec : Prop :=
  ∀ n, (P9265119715401742836.a n : ℤ) = A047273 (n + 1)

end A047273

/-! ## A047273.P6257575145818180254

`∪[3*n, Δ[n²]]`
-/

namespace A047273.P6257575145818180254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A047273.P6257575145818180254

namespace A047273

/-- `∪[3*n, Δ[n²]]` -/
def P6257575145818180254.Spec : Prop :=
  ∀ n, (P6257575145818180254.a n : ℤ) = A047273 (n + 1)

end A047273

/-! ## A047273.P10457837196445144043

`∑[and(2, n)/2]+n`
-/

namespace A047273.P10457837196445144043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)

end

end A047273.P10457837196445144043

namespace A047273

/-- `∑[and(2, n)/2]+n` -/
def P10457837196445144043.Spec : Prop :=
  ∀ n, P10457837196445144043.a n = (A047273 (n + 1) : ℚ)

end A047273

/-! ## A047273.P4328124278757065019

`∑[C(n, 2)%2]+n`
-/

namespace A047273.P4328124278757065019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047273.P4328124278757065019

namespace A047273

/-- `∑[C(n, 2)%2]+n` -/
def P4328124278757065019.Spec : Prop :=
  ∀ n, (P4328124278757065019.a n : ℤ) = A047273 (n + 1)

end A047273

/-! ## A047273.P8730377949371886137

`∑[and(1, C(n, 2))]+n`
-/

namespace A047273.P8730377949371886137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.choose n 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047273.P8730377949371886137

namespace A047273

/-- `∑[and(1, C(n, 2))]+n` -/
def P8730377949371886137.Spec : Prop :=
  ∀ n, (P8730377949371886137.a n : ℤ) = A047273 (n + 1)

end A047273

/-! ## A047273.P5653911185726313882

`∑[C(n, or(2, n))]+n`
-/

namespace A047273.P5653911185726313882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.lor 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047273.P5653911185726313882

namespace A047273

/-- `∑[C(n, or(2, n))]+n` -/
def P5653911185726313882.Spec : Prop :=
  ∀ n, (P5653911185726313882.a n : ℤ) = A047273 (n + 1)

end A047273

/-! ## A047273.P17521181888740319304

`∑[gcd(2, ∑[n+1])]-1`
-/

namespace A047273.P17521181888740319304
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047273.P17521181888740319304

namespace A047273

/-- `∑[gcd(2, ∑[n+1])]-1` -/
def P17521181888740319304.Spec : Prop :=
  ∀ n, P17521181888740319304.a n = A047273 (n + 1)

end A047273

/-! ## A047273.P9623340657358358607

`lt[n%3, xor(n, n+1)]`
-/

namespace A047273.P9623340657358358607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047273.P9623340657358358607

namespace A047273

/-- `lt[n%3, xor(n, n+1)]` -/
def P9623340657358358607.Spec : Prop :=
  ∀ n, (P9623340657358358607.a n : ℤ) = A047273 (n + 1)

end A047273

/-! ## A047273.P17069577928687391424

`Δ[floor(C(n, 2)/2)]+n`
-/

namespace A047273.P17069577928687391424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A047273.P17069577928687391424

namespace A047273

/-- `Δ[floor(C(n, 2)/2)]+n` -/
def P17069577928687391424.Spec : Prop :=
  ∀ n, P17069577928687391424.a n = A047273 (n + 1)

end A047273

/-! ## A047273.P8574292314092905990

`∑[and(1, ∑[n]+n)]+n`
-/

namespace A047273.P8574292314092905990
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047273.P8574292314092905990

namespace A047273

/-- `∑[and(1, ∑[n]+n)]+n` -/
def P8574292314092905990.Spec : Prop :=
  ∀ n, (P8574292314092905990.a n : ℤ) = A047273 (n + 1)

end A047273

/-! ## A047273.P14289096257587426505

`a(n-4)+6` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A047273.P14289096257587426505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 5] fun n a =>
  a (n - 4) + 6

end

end A047273.P14289096257587426505

namespace A047273

/-- `a(n-4)+6` -/
def P14289096257587426505.Spec : Prop :=
  ∀ n, (P14289096257587426505.a n : ℤ) = A047273 (n + 1)

end A047273

/-! ## A047273.P14234577409243239244

`∑[3-a(n-2)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A047273.P14234577409243239244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  3 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047273.P14234577409243239244

namespace A047273

/-- `∑[3-a(n-2)]` -/
def P14234577409243239244.Spec : Prop :=
  ∀ n, P14234577409243239244.a n = A047273 (n + 1)

end A047273

/-! ## A047273.P19865041496299455

`lt[lcm(6, n+3), 4*(n+3)]`
-/

namespace A047273.P19865041496299455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047273.P19865041496299455

namespace A047273

/-- `lt[lcm(6, n+3), 4*(n+3)]` -/
def P19865041496299455.Spec : Prop :=
  ∀ n, (P19865041496299455.a n : ℤ) = A047273 (n + 1)

end A047273

/-! ## A047273.P17593464160738166592

`lt[1, gcd(n+3, (2*n)^8)]`
-/

namespace A047273.P17593464160738166592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 3) ((2 * n) ^ 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047273.P17593464160738166592

namespace A047273

/-- `lt[1, gcd(n+3, (2*n)^8)]` -/
def P17593464160738166592.Spec : Prop :=
  ∀ n, (P17593464160738166592.a n : ℤ) = A047273 (n + 1)

end A047273

/-! ## A047273.P11146271097719422208

`∑[2-and(1, ∑[n-1])]-1`
-/

namespace A047273.P11146271097719422208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A047273.P11146271097719422208

namespace A047273

/-- `∑[2-and(1, ∑[n-1])]-1` -/
def P11146271097719422208.Spec : Prop :=
  ∀ n, P11146271097719422208.a n = A047273 (n + 1)

end A047273

/-!
# A047274: Numbers that are congruent to {0, 1} mod 7.

The programs for A047274, the canonical program `A047274.P2560831960516894838` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047274 has offset 1).

The definition of A047274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047274.P10886486535733290430

`record[n/(n%7)!]`
-/

namespace A047274.P10886486535733290430
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial (n % 7) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047274.P10886486535733290430

namespace A047274

/-- `record[n/(n%7)!]` -/
def P10886486535733290430.Spec : Prop :=
  ∀ n, P10886486535733290430.a n = (A047274 (n + 1) : ℚ)

end A047274

/-! ## A047274.P2560831960516894838

`7+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047274

/-- `7+a(n-2)` -/
def P2560831960516894838.Spec : Prop :=
  ∀ n, (P2560831960516894838.a n : ℤ) = A047274 (n + 1)

theorem P2560831960516894838.correct : P2560831960516894838.Spec := by
  intro n
  simp only [A047274, Nat.add_sub_cancel]

end A047274

/-! ## A047274.P797336202772015951

`∑[C(6, a(n-1))]` with `a(0)=0`
-/

namespace A047274.P797336202772015951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.choose 6 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047274.P797336202772015951

namespace A047274

/-- `∑[C(6, a(n-1))]` -/
def P797336202772015951.Spec : Prop :=
  ∀ n, (P797336202772015951.a n : ℤ) = A047274 (n + 1)

end A047274

/-! ## A047274.P4205719352903252305

`5*floor(n/2)+n`
-/

namespace A047274.P4205719352903252305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ⌊(n : ℚ) / 2⌋ + (n : ℤ)

end

end A047274.P4205719352903252305

namespace A047274

/-- `5*floor(n/2)+n` -/
def P4205719352903252305.Spec : Prop :=
  ∀ n, P4205719352903252305.a n = A047274 (n + 1)

end A047274

/-! ## A047274.P14097260714893722775

`∑[7-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A047274.P14097260714893722775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047274.P14097260714893722775

namespace A047274

/-- `∑[7-a(n-1)]` -/
def P14097260714893722775.Spec : Prop :=
  ∀ n, P14097260714893722775.a n = A047274 (n + 1)

end A047274

/-! ## A047274.P17726025949993688555

`∑[floor(6^((n-1)%2))]`
-/

namespace A047274.P17726025949993688555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) 2 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047274.P17726025949993688555

namespace A047274

/-- `∑[floor(6^((n-1)%2))]` -/
def P17726025949993688555.Spec : Prop :=
  ∀ n, P17726025949993688555.a n = A047274 (n + 1)

end A047274

/-! ## A047274.P1963023547784621763

`floor(7*n-6-a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A047274.P1963023547784621763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (7 * n : ℤ) - 6 - a (n - 1)

end

end A047274.P1963023547784621763

namespace A047274

/-- `floor(7*n-6-a(n-1))` -/
def P1963023547784621763.Spec : Prop :=
  ∀ n, P1963023547784621763.a n = A047274 (n + 1)

end A047274

/-! ## A047274.P5751045960960264900

`2*(4-(1-a(n-2))/2)` with `a(0)=0, a(1)=1`
-/

namespace A047274.P5751045960960264900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (4 - (1 - a (n - 2)) / 2)

end

end A047274.P5751045960960264900

namespace A047274

/-- `2*(4-(1-a(n-2))/2)` -/
def P5751045960960264900.Spec : Prop :=
  ∀ n, P5751045960960264900.a n = (A047274 (n + 1) : ℚ)

end A047274

/-! ## A047274.P156896470204003402

`floor(a(n-1)-(a(n-3)-a(n-2)))` with `a(0)=0, a(1)=1, a(2)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A047274.P156896470204003402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 7] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 2))

end

end A047274.P156896470204003402

namespace A047274

/-- `floor(a(n-1)-(a(n-3)-a(n-2)))` -/
def P156896470204003402.Spec : Prop :=
  ∀ n, P156896470204003402.a n = A047274 (n + 1)

end A047274

/-! ## A047274.P14771786418399620237

`A147832(n+1)/2`
-/

namespace A047274.P14771786418399620237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147832 (n + 1) : ℚ) / 2

end

end A047274.P14771786418399620237

namespace A047274

/-- `A147832(n+1)/2` -/
def P14771786418399620237.Spec : Prop :=
  ∀ n, P14771786418399620237.a n = (A047274 (n + 1) : ℚ)

end A047274

/-! ## A047274.P8224734434607696164

`abs(1-A047353(n+1))`
-/

namespace A047274.P8224734434607696164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A047353 (n + 1)|

end

end A047274.P8224734434607696164

namespace A047274

/-- `abs(1-A047353(n+1))` -/
def P8224734434607696164.Spec : Prop :=
  ∀ n, P8224734434607696164.a n = A047274 (n + 1)

end A047274

/-! ## A047274.P9232264260124126150

`abs(2-A047358(n+1))`
-/

namespace A047274.P9232264260124126150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A047358 (n + 1)|

end

end A047274.P9232264260124126150

namespace A047274

/-- `abs(2-A047358(n+1))` -/
def P9232264260124126150.Spec : Prop :=
  ∀ n, P9232264260124126150.a n = A047274 (n + 1)

end A047274

/-! ## A047274.P17521069702560182793

`abs(3-A047341(n+1))`
-/

namespace A047274.P17521069702560182793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A047341 (n + 1)|

end

end A047274.P17521069702560182793

namespace A047274

/-- `abs(3-A047341(n+1))` -/
def P17521069702560182793.Spec : Prop :=
  ∀ n, P17521069702560182793.a n = A047274 (n + 1)

end A047274

/-! ## A047274.P11434406821024049456

`abs(4-A047374(n+1))`
-/

namespace A047274.P11434406821024049456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A047374 (n + 1)|

end

end A047274.P11434406821024049456

namespace A047274

/-- `abs(4-A047374(n+1))` -/
def P11434406821024049456.Spec : Prop :=
  ∀ n, P11434406821024049456.a n = A047274 (n + 1)

end A047274

/-! ## A047274.P7493884993537059801

`∑[xor(2, A134451(n)+2)]`
-/

namespace A047274.P7493884993537059801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A134451 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047274.P7493884993537059801

namespace A047274

/-- `∑[xor(2, A134451(n)+2)]` -/
def P7493884993537059801.Spec : Prop :=
  ∀ n, P7493884993537059801.a n = A047274 (n + 1)

end A047274

/-! ## A047274.P9895674334239014462

`∑[A002950(a(n-1))]` with `a(0)=0`
-/

namespace A047274.P9895674334239014462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A002950 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047274.P9895674334239014462

namespace A047274

/-- `∑[A002950(a(n-1))]` -/
def P9895674334239014462.Spec : Prop :=
  ∀ n, P9895674334239014462.a n = A047274 (n + 1)

end A047274

/-! ## A047274.P18420317704357763432

`∑[A010687(a(n-1))]` with `a(0)=0`
-/

namespace A047274.P18420317704357763432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A010687 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047274.P18420317704357763432

namespace A047274

/-- `∑[A010687(a(n-1))]` -/
def P18420317704357763432.Spec : Prop :=
  ∀ n, P18420317704357763432.a n = A047274 (n + 1)

end A047274

/-! ## A047274.P9380258030023933537

`∑[A070399(a(n-1))]` with `a(0)=0`
-/

namespace A047274.P9380258030023933537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A070399 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047274.P9380258030023933537

namespace A047274

/-- `∑[A070399(a(n-1))]` -/
def P9380258030023933537.Spec : Prop :=
  ∀ n, P9380258030023933537.a n = A047274 (n + 1)

end A047274

/-!
# A047275: Numbers that are congruent to {0, 1, 6} mod 7.

The programs for A047275, the canonical program `A047275.P5945346147382635457` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047275 has offset 1).

The definition of A047275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047275.P5945346147382635457

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=7`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047275

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P5945346147382635457.Spec : Prop :=
  ∀ n, P5945346147382635457.a n = A047275 (n + 1)

theorem P5945346147382635457.correct : P5945346147382635457.Spec := by
  intro n
  simp only [A047275, Nat.add_sub_cancel]

end A047275

/-! ## A047275.P12767711412379765612

`4*round(n/3)+n`
-/

namespace A047275.P12767711412379765612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.roundAway ((n : ℚ) / 3) + (n : ℤ)

end

end A047275.P12767711412379765612

namespace A047275

/-- `4*round(n/3)+n` -/
def P12767711412379765612.Spec : Prop :=
  ∀ n, P12767711412379765612.a n = A047275 (n + 1)

end A047275

/-! ## A047275.P10697171822422148552

`∑[or(1, a(n-3))]` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A047275.P10697171822422148552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5] fun n f1 =>
  Nat.lor 1 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047275.P10697171822422148552

namespace A047275

/-- `∑[or(1, a(n-3))]` -/
def P10697171822422148552.Spec : Prop :=
  ∀ n, (P10697171822422148552.a n : ℤ) = A047275 (n + 1)

end A047275

/-! ## A047275.P1105279372606755272

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=5, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047275.P1105279372606755272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047275.P1105279372606755272

namespace A047275

/-- `∑[floor(a(n-3))]` -/
def P1105279372606755272.Spec : Prop :=
  ∀ n, (P1105279372606755272.a n : ℤ) = A047275 (n + 1)

end A047275

/-! ## A047275.P15255312351022708831

`∑[a(n-3)%6]` with `a(0)=0, a(1)=1, a(2)=5, a(3)=1`
-/

namespace A047275.P15255312351022708831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5, 1] fun n f1 =>
  f1 (n - 3) % 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047275.P15255312351022708831

namespace A047275

/-- `∑[a(n-3)%6]` -/
def P15255312351022708831.Spec : Prop :=
  ∀ n, (P15255312351022708831.a n : ℤ) = A047275 (n + 1)

end A047275

/-! ## A047275.P12762854966470809765

`lt[(n+1)%7+n, n+3]`
-/

namespace A047275.P12762854966470809765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 7 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047275.P12762854966470809765

namespace A047275

/-- `lt[(n+1)%7+n, n+3]` -/
def P12762854966470809765.Spec : Prop :=
  ∀ n, (P12762854966470809765.a n : ℤ) = A047275 (n + 1)

end A047275

/-! ## A047275.P17535157076402503902

`∑[a(n-3)^a(n-1)]` with `a(0)=0, a(1)=1, a(2)=5, a(3)=1`
-/

namespace A047275.P17535157076402503902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5, 1] fun n f1 =>
  f1 (n - 3) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047275.P17535157076402503902

namespace A047275

/-- `∑[a(n-3)^a(n-1)]` -/
def P17535157076402503902.Spec : Prop :=
  ∀ n, (P17535157076402503902.a n : ℤ) = A047275 (n + 1)

end A047275

/-! ## A047275.P11264918945703424805

`∑[6-a(n-1)*a(n-2)]` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A047275.P11264918945703424805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n f1 =>
  6 - f1 (n - 1) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047275.P11264918945703424805

namespace A047275

/-- `∑[6-a(n-1)*a(n-2)]` -/
def P11264918945703424805.Spec : Prop :=
  ∀ n, P11264918945703424805.a n = A047275 (n + 1)

end A047275

/-! ## A047275.P12284242451435261349

`∑[7-a(n-1)-a(n-2)]` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A047275.P12284242451435261349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n f1 =>
  7 - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047275.P12284242451435261349

namespace A047275

/-- `∑[7-a(n-1)-a(n-2)]` -/
def P12284242451435261349.Spec : Prop :=
  ∀ n, P12284242451435261349.a n = A047275 (n + 1)

end A047275

/-! ## A047275.P13285761231120052714

`(7*n-a(n-1))%(a(n-2)+7)` with `a(0)=0, a(1)=1`
-/

namespace A047275.P13285761231120052714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.tmod ((7 * n : ℤ) - a (n - 1)) (a (n - 2) + 7)

end

end A047275.P13285761231120052714

namespace A047275

/-- `(7*n-a(n-1))%(a(n-2)+7)` -/
def P13285761231120052714.Spec : Prop :=
  ∀ n, P13285761231120052714.a n = A047275 (n + 1)

end A047275

/-! ## A047275.P6885164467619872325

`∑[A194716(n)%6]`
-/

namespace A047275.P6885164467619872325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194716 n) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047275.P6885164467619872325

namespace A047275

/-- `∑[A194716(n)%6]` -/
def P6885164467619872325.Spec : Prop :=
  ∀ n, P6885164467619872325.a n = A047275 (n + 1)

end A047275

/-! ## A047275.P13081134851205501638

`(A112654(n+1)+n)/2`
-/

namespace A047275.P13081134851205501638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112654 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A047275.P13081134851205501638

namespace A047275

/-- `(A112654(n+1)+n)/2` -/
def P13081134851205501638.Spec : Prop :=
  ∀ n, P13081134851205501638.a n = (A047275 (n + 1) : ℚ)

end A047275

/-! ## A047275.P1614934325030596353

`∑[A006530(a(n-3)!)]` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A047275.P1614934325030596353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n f1 =>
  A006530 (Nat.factorial (f1 (n - 3)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047275.P1614934325030596353

namespace A047275

/-- `∑[A006530(a(n-3)!)]` -/
def P1614934325030596353.Spec : Prop :=
  ∀ n, P1614934325030596353.a n = A047275 (n + 1)

end A047275

/-! ## A047275.P9576940566202314377

`A008603(n)%A301298(n)`
-/

namespace A047275.P9576940566202314377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008603 n) (A301298 n)

end

end A047275.P9576940566202314377

namespace A047275

/-- `A008603(n)%A301298(n)` -/
def P9576940566202314377.Spec : Prop :=
  ∀ n, P9576940566202314377.a n = A047275 (n + 1)

end A047275

/-! ## A047275.P17131177882144102127

`A008595(n)%A301694(n)`
-/

namespace A047275.P17131177882144102127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008595 n) (A301694 n)

end

end A047275.P17131177882144102127

namespace A047275

/-- `A008595(n)%A301694(n)` -/
def P17131177882144102127.Spec : Prop :=
  ∀ n, P17131177882144102127.a n = A047275 (n + 1)

end A047275

/-! ## A047275.P450564032040962961

`∪[A047336(n+1), A008589(n)]`
-/

namespace A047275.P450564032040962961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A047275.P450564032040962961

namespace A047275

/-- `∪[A047336(n+1), A008589(n)]` -/
def P450564032040962961.Spec : Prop :=
  ∀ n, (P450564032040962961.a n : ℤ) = A047275 (n + 1)

end A047275

/-! ## A047275.P14812355249610331781

`∪[A047274(n+1), A017053(n)]`
-/

namespace A047275.P14812355249610331781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A047275.P14812355249610331781

namespace A047275

/-- `∪[A047274(n+1), A017053(n)]` -/
def P14812355249610331781.Spec : Prop :=
  ∀ n, (P14812355249610331781.a n : ℤ) = A047275 (n + 1)

end A047275

/-! ## A047275.P11346754399608300036

`∪[A047335(n+1), A016993(n)]`
-/

namespace A047275.P11346754399608300036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A047275.P11346754399608300036

namespace A047275

/-- `∪[A047335(n+1), A016993(n)]` -/
def P11346754399608300036.Spec : Prop :=
  ∀ n, (P11346754399608300036.a n : ℤ) = A047275 (n + 1)

end A047275

/-! ## A047275.P15793127866988923599

`∪[A047335(n+1), A047274(n+1)]`
-/

namespace A047275.P15793127866988923599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A047275.P15793127866988923599

namespace A047275

/-- `∪[A047335(n+1), A047274(n+1)]` -/
def P15793127866988923599.Spec : Prop :=
  ∀ n, (P15793127866988923599.a n : ℤ) = A047275 (n + 1)

end A047275

/-!
# A047276: Numbers that are congruent to {2, 6} mod 7.

The programs for A047276, the canonical program `A047276.P9306124217950747511` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047276 has offset 1).

The definition of A047276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047276.P9306124217950747511

`a(n-2)+7` with `a(0)=2, a(1)=6`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047276

/-- `a(n-2)+7` -/
def P9306124217950747511.Spec : Prop :=
  ∀ n, (P9306124217950747511.a n : ℤ) = A047276 (n + 1)

theorem P9306124217950747511.correct : P9306124217950747511.Spec := by
  intro n
  simp only [A047276, Nat.add_sub_cancel]

end A047276

/-! ## A047276.P12773803138666019930

`ceil(7*n/2)+2`
-/

namespace A047276.P12773803138666019930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈7 * ((n : ℚ) / 2)⌉ + 2

end

end A047276.P12773803138666019930

namespace A047276

/-- `ceil(7*n/2)+2` -/
def P12773803138666019930.Spec : Prop :=
  ∀ n, P12773803138666019930.a n = A047276 (n + 1)

end A047276

/-! ## A047276.P14922816780904394995

`∑[3-floor(cos(2)^n)]`
-/

namespace A047276.P14922816780904394995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ⌊Real.cos (2 : ℝ) ^ n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047276.P14922816780904394995

namespace A047276

/-- `∑[3-floor(cos(2)^n)]` -/
def P14922816780904394995.Spec : Prop :=
  ∀ n, P14922816780904394995.a n = A047276 (n + 1)

end A047276

/-! ## A047276.P5293847955116287769

`∑[3-floor(tan(3)^n)]`
-/

namespace A047276.P5293847955116287769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ⌊Real.tan (3 : ℝ) ^ n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047276.P5293847955116287769

namespace A047276

/-- `∑[3-floor(tan(3)^n)]` -/
def P5293847955116287769.Spec : Prop :=
  ∀ n, P5293847955116287769.a n = A047276 (n + 1)

end A047276

/-! ## A047276.P14963819306686942408

`∑[3-floor(cot(2)^n)]`
-/

namespace A047276.P14963819306686942408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ⌊Real.cot (2 : ℝ) ^ n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047276.P14963819306686942408

namespace A047276

/-- `∑[3-floor(cot(2)^n)]` -/
def P14963819306686942408.Spec : Prop :=
  ∀ n, P14963819306686942408.a n = A047276 (n + 1)

end A047276

/-! ## A047276.P14502653864003557912

`∑[abs(a(n-2))]` with `a(0)=2, a(1)=4, a(2)=3`
-/

namespace A047276.P14502653864003557912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 3] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047276.P14502653864003557912

namespace A047276

/-- `∑[abs(a(n-2))]` -/
def P14502653864003557912.Spec : Prop :=
  ∀ n, (P14502653864003557912.a n : ℤ) = A047276 (n + 1)

end A047276

/-! ## A047276.P9820748764595218016

`∑[7-a(n-1)]` with `a(0)=2, a(1)=4`
-/

namespace A047276.P9820748764595218016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047276.P9820748764595218016

namespace A047276

/-- `∑[7-a(n-1)]` -/
def P9820748764595218016.Spec : Prop :=
  ∀ n, P9820748764595218016.a n = A047276 (n + 1)

end A047276

/-! ## A047276.P8953802959159863417

`record[(n+1)²%7+n+1]`
-/

namespace A047276.P8953802959159863417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % 7 + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047276.P8953802959159863417

namespace A047276

/-- `record[(n+1)²%7+n+1]` -/
def P8953802959159863417.Spec : Prop :=
  ∀ n, (P8953802959159863417.a n : ℤ) = A047276 (n + 1)

end A047276

/-! ## A047276.P5489935515253117697

`record[n+3-((2*n)%7)!]`
-/

namespace A047276.P5489935515253117697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (Nat.factorial (2 * n % 7) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047276.P5489935515253117697

namespace A047276

/-- `record[n+3-((2*n)%7)!]` -/
def P5489935515253117697.Spec : Prop :=
  ∀ n, P5489935515253117697.a n = A047276 (n + 1)

end A047276

/-! ## A047276.P12350269564310988314

`floor(A017041(n)/2)`
-/

namespace A047276.P12350269564310988314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017041 n : ℚ) / 2⌋

end

end A047276.P12350269564310988314

namespace A047276

/-- `floor(A017041(n)/2)` -/
def P12350269564310988314.Spec : Prop :=
  ∀ n, P12350269564310988314.a n = A047276 (n + 1)

end A047276

/-! ## A047276.P13992132405996141644

`ceil(A017029(n)/2)`
-/

namespace A047276.P13992132405996141644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017029 n : ℚ) / 2⌉

end

end A047276.P13992132405996141644

namespace A047276

/-- `ceil(A017029(n)/2)` -/
def P13992132405996141644.Spec : Prop :=
  ∀ n, P13992132405996141644.a n = A047276 (n + 1)

end A047276

/-! ## A047276.P12768873842531229562

`Δ[A006578(n)+n²]`
-/

namespace A047276.P12768873842531229562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047276.P12768873842531229562

namespace A047276

/-- `Δ[A006578(n)+n²]` -/
def P12768873842531229562.Spec : Prop :=
  ∀ n, P12768873842531229562.a n = A047276 (n + 1)

end A047276

/-! ## A047276.P2579513311251090885

`∑[A008777(a(n-1))]` with `a(0)=2`
-/

namespace A047276.P2579513311251090885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A008777 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047276.P2579513311251090885

namespace A047276

/-- `∑[A008777(a(n-1))]` -/
def P2579513311251090885.Spec : Prop :=
  ∀ n, P2579513311251090885.a n = A047276 (n + 1)

end A047276

/-! ## A047276.P15885880317295981143

`∑[A151846(a(n-1))]` with `a(0)=2`
-/

namespace A047276.P15885880317295981143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A151846 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047276.P15885880317295981143

namespace A047276

/-- `∑[A151846(a(n-1))]` -/
def P15885880317295981143.Spec : Prop :=
  ∀ n, P15885880317295981143.a n = A047276 (n + 1)

end A047276

/-! ## A047276.P13262160796123236255

`∪[A017005(n), A017053(n)]`
-/

namespace A047276.P13262160796123236255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A047276.P13262160796123236255

namespace A047276

/-- `∪[A017005(n), A017053(n)]` -/
def P13262160796123236255.Spec : Prop :=
  ∀ n, (P13262160796123236255.a n : ℤ) = A047276 (n + 1)

end A047276

/-! ## A047276.P3020754192960325985

`A017221(n)%A299647(n+1)`
-/

namespace A047276.P3020754192960325985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017221 n) (A299647 (n + 1))

end

end A047276.P3020754192960325985

namespace A047276

/-- `A017221(n)%A299647(n+1)` -/
def P3020754192960325985.Spec : Prop :=
  ∀ n, P3020754192960325985.a n = A047276 (n + 1)

end A047276

/-!
# A047277: Numbers that are congruent to {0, 2, 6} mod 7.

The programs for A047277, the canonical program `A047277.P1341365108916588062` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047277 has offset 1).

The definition of A047277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047277.P1341365108916588062

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=7`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047277

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P1341365108916588062.Spec : Prop :=
  ∀ n, P1341365108916588062.a n = A047277 (n + 1)

theorem P1341365108916588062.correct : P1341365108916588062.Spec := by
  intro n
  simp only [A047277, Nat.add_sub_cancel]

end A047277

/-! ## A047277.P10075979186631044916

`∑[2^(n%3)]-1`
-/

namespace A047277.P10075979186631044916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047277.P10075979186631044916

namespace A047277

/-- `∑[2^(n%3)]-1` -/
def P10075979186631044916.Spec : Prop :=
  ∀ n, P10075979186631044916.a n = A047277 (n + 1)

end A047277

/-! ## A047277.P8283486310638416

`∑[floor(ratio[gcd(3, n)])]+n`
-/

namespace A047277.P8283486310638416
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (n + 1) : ℚ) / (f2 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A047277.P8283486310638416

namespace A047277

/-- `∑[floor(ratio[gcd(3, n)])]+n` -/
def P8283486310638416.Spec : Prop :=
  ∀ n, P8283486310638416.a n = A047277 (n + 1)

end A047277

/-! ## A047277.P3572284800253093783

`a(n-3)+7` with `a(0)=0, a(1)=2, a(2)=6`
-/

namespace A047277.P3572284800253093783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 6] fun n a =>
  a (n - 3) + 7

end

end A047277.P3572284800253093783

namespace A047277

/-- `a(n-3)+7` -/
def P3572284800253093783.Spec : Prop :=
  ∀ n, (P3572284800253093783.a n : ℤ) = A047277 (n + 1)

end A047277

/-! ## A047277.P15484702445548381945

`∑[(4*dr(3*n))%5]`
-/

namespace A047277.P15484702445548381945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.digitalRoot (3 * n : ℤ) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047277.P15484702445548381945

namespace A047277

/-- `∑[(4*dr(3*n))%5]` -/
def P15484702445548381945.Spec : Prop :=
  ∀ n, (P15484702445548381945.a n : ℤ) = A047277 (n + 1)

end A047277

/-! ## A047277.P4557330753025336805

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=4, a(3)=1`
-/

namespace A047277.P4557330753025336805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047277.P4557330753025336805

namespace A047277

/-- `∑[abs(a(n-3))]` -/
def P4557330753025336805.Spec : Prop :=
  ∀ n, (P4557330753025336805.a n : ℤ) = A047277 (n + 1)

end A047277

/-! ## A047277.P12261690829341831877

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=4, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047277.P12261690829341831877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047277.P12261690829341831877

namespace A047277

/-- `∑[floor(a(n-3))]` -/
def P12261690829341831877.Spec : Prop :=
  ∀ n, (P12261690829341831877.a n : ℤ) = A047277 (n + 1)

end A047277

/-! ## A047277.P12983362747334905549

`∑[ceil(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=4, a(3)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A047277.P12983362747334905549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047277.P12983362747334905549

namespace A047277

/-- `∑[ceil(a(n-3))]` -/
def P12983362747334905549.Spec : Prop :=
  ∀ n, (P12983362747334905549.a n : ℤ) = A047277 (n + 1)

end A047277

/-! ## A047277.P13944859307243138898

`∑[gcd(4, (n+1)%3)]-1`
-/

namespace A047277.P13944859307243138898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 ((n + 1) % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047277.P13944859307243138898

namespace A047277

/-- `∑[gcd(4, (n+1)%3)]-1` -/
def P13944859307243138898.Spec : Prop :=
  ∀ n, P13944859307243138898.a n = A047277 (n + 1)

end A047277

/-! ## A047277.P8830149805482275252

`∑[a(n-3)%5]` with `a(0)=0, a(1)=2, a(2)=4, a(3)=1`
-/

namespace A047277.P8830149805482275252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 1] fun n f1 =>
  f1 (n - 3) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047277.P8830149805482275252

namespace A047277

/-- `∑[a(n-3)%5]` -/
def P8830149805482275252.Spec : Prop :=
  ∀ n, (P8830149805482275252.a n : ℤ) = A047277 (n + 1)

end A047277

/-! ## A047277.P15610960638121455493

`∑[2^and(3, a(n-1))]` with `a(0)=0, a(1)=2`
-/

namespace A047277.P15610960638121455493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  2 ^ Nat.land 3 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047277.P15610960638121455493

namespace A047277

/-- `∑[2^and(3, a(n-1))]` -/
def P15610960638121455493.Spec : Prop :=
  ∀ n, (P15610960638121455493.a n : ℤ) = A047277 (n + 1)

end A047277

/-! ## A047277.P5684020244451530566

`∑[7-a(n-1)-a(n-2)]` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A047277.P5684020244451530566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4] fun n f1 =>
  7 - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047277.P5684020244451530566

namespace A047277

/-- `∑[7-a(n-1)-a(n-2)]` -/
def P5684020244451530566.Spec : Prop :=
  ∀ n, P5684020244451530566.a n = A047277 (n + 1)

end A047277

/-! ## A047277.P8394916201123839836

`2*n-Δ[a(n-3)-(n-1)]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A047277.P8394916201123839836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  f1 (n - 3) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (f1 (n + 1) - f1 n)

end

end A047277.P8394916201123839836

namespace A047277

/-- `2*n-Δ[a(n-3)-(n-1)]` -/
def P8394916201123839836.Spec : Prop :=
  ∀ n, P8394916201123839836.a n = A047277 (n + 1)

end A047277

/-! ## A047277.P6589006988831559030

`∑[A069705(n)]-1`
-/

namespace A047277.P6589006988831559030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A047277.P6589006988831559030

namespace A047277

/-- `∑[A069705(n)]-1` -/
def P6589006988831559030.Spec : Prop :=
  ∀ n, P6589006988831559030.a n = A047277 (n + 1)

end A047277

/-! ## A047277.P10340156212678826520

`∑[A101000(n)]+n`
-/

namespace A047277.P10340156212678826520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A047277.P10340156212678826520

namespace A047277

/-- `∑[A101000(n)]+n` -/
def P10340156212678826520.Spec : Prop :=
  ∀ n, P10340156212678826520.a n = A047277 (n + 1)

end A047277

/-! ## A047277.P9747549736604624900

`5*n-A047458(n+1)`
-/

namespace A047277.P9747549736604624900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - A047458 (n + 1)

end

end A047277.P9747549736604624900

namespace A047277

/-- `5*n-A047458(n+1)` -/
def P9747549736604624900.Spec : Prop :=
  ∀ n, P9747549736604624900.a n = A047277 (n + 1)

end A047277

/-! ## A047277.P13070389453556017053

`∑[4/A153727(∑{digits}[n+1, #])]-1`
-/

namespace A047277.P13070389453556017053
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (A153727 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A047277.P13070389453556017053

namespace A047277

/-- `∑[4/A153727(∑{digits}[n+1, #])]-1` -/
def P13070389453556017053.Spec : Prop :=
  ∀ n, P13070389453556017053.a n = (A047277 (n + 1) : ℚ)

end A047277

/-! ## A047277.P1350639647244184920

`A004773(A130481(n))+n`
-/

namespace A047277.P1350639647244184920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A130481 n).toNat + (n : ℤ)

end

end A047277.P1350639647244184920

namespace A047277

/-- `A004773(A130481(n))+n` -/
def P1350639647244184920.Spec : Prop :=
  ∀ n, P1350639647244184920.a n = A047277 (n + 1)

end A047277

/-!
# A047278: Numbers that are congruent to {1, 2, 6} mod 7.

The programs for A047278, the canonical program `A047278.P7475150621032027988` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047278 has offset 1).

The definition of A047278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047278.P7475150621032027988

`∑[xor(1, n%3)]+n`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047278

/-- `∑[xor(1, n%3)]+n` -/
def P7475150621032027988.Spec : Prop :=
  ∀ n, (P7475150621032027988.a n : ℤ) = A047278 (n + 1)

theorem P7475150621032027988.correct : P7475150621032027988.Spec := by
  intro n
  simp only [A047278, Nat.add_sub_cancel]

end A047278

/-! ## A047278.P5598904917583047867

`∑[dr(round(cosh(dr(3*n))))]`
-/

namespace A047278.P5598904917583047867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (Real.cosh (SequenceMachineLib.digitalRoot (3 * n : ℤ) : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047278.P5598904917583047867

namespace A047278

/-- `∑[dr(round(cosh(dr(3*n))))]` -/
def P5598904917583047867.Spec : Prop :=
  ∀ n, (P5598904917583047867.a n : ℤ) = A047278 (n + 1)

end A047278

/-! ## A047278.P7008384727733254091

`a(n-3)+7` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A047278.P7008384727733254091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  a (n - 3) + 7

end

end A047278.P7008384727733254091

namespace A047278

/-- `a(n-3)+7` -/
def P7008384727733254091.Spec : Prop :=
  ∀ n, (P7008384727733254091.a n : ℤ) = A047278 (n + 1)

end A047278

/-! ## A047278.P3962134908246505991

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=4, a(3)=2`
-/

namespace A047278.P3962134908246505991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047278.P3962134908246505991

namespace A047278

/-- `∑[abs(a(n-3))]` -/
def P3962134908246505991.Spec : Prop :=
  ∀ n, (P3962134908246505991.a n : ℤ) = A047278 (n + 1)

end A047278

/-! ## A047278.P8540804392672091391

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=4, a(3)=2`
-/

namespace A047278.P8540804392672091391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047278.P8540804392672091391

namespace A047278

/-- `∑[dr(a(n-3))]` -/
def P8540804392672091391.Spec : Prop :=
  ∀ n, (P8540804392672091391.a n : ℤ) = A047278 (n + 1)

end A047278

/-! ## A047278.P3244920333110296801

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=4, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A047278.P3244920333110296801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047278.P3244920333110296801

namespace A047278

/-- `∑[floor(a(n-3))]` -/
def P3244920333110296801.Spec : Prop :=
  ∀ n, (P3244920333110296801.a n : ℤ) = A047278 (n + 1)

end A047278

/-! ## A047278.P8735233885325377809

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=4, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A047278.P8735233885325377809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047278.P8735233885325377809

namespace A047278

/-- `∑[ceil(a(n-3))]` -/
def P8735233885325377809.Spec : Prop :=
  ∀ n, (P8735233885325377809.a n : ℤ) = A047278 (n + 1)

end A047278

/-! ## A047278.P14093715494644988571

`∑[round(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=4, a(3)=2`

`round` is left out, it is the identity on integers.
-/

namespace A047278.P14093715494644988571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047278.P14093715494644988571

namespace A047278

/-- `∑[round(a(n-3))]` -/
def P14093715494644988571.Spec : Prop :=
  ∀ n, (P14093715494644988571.a n : ℤ) = A047278 (n + 1)

end A047278

/-! ## A047278.P15262866897040754109

`∑[a(n-3)%5]` with `a(0)=1, a(1)=1, a(2)=4, a(3)=2`
-/

namespace A047278.P15262866897040754109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4, 2] fun n f1 =>
  f1 (n - 3) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047278.P15262866897040754109

namespace A047278

/-- `∑[a(n-3)%5]` -/
def P15262866897040754109.Spec : Prop :=
  ∀ n, (P15262866897040754109.a n : ℤ) = A047278 (n + 1)

end A047278

/-! ## A047278.P17296180097310727697

`∑[2^(2-(n+1)%3)]-1`
-/

namespace A047278.P17296180097310727697
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (2 - (((n + 1) % 3 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A047278.P17296180097310727697

namespace A047278

/-- `∑[2^(2-(n+1)%3)]-1` -/
def P17296180097310727697.Spec : Prop :=
  ∀ n, P17296180097310727697.a n = (A047278 (n + 1) : ℚ)

end A047278

/-! ## A047278.P9804197150868211880

`2*n-Δ[a(n-3)-n]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A047278.P9804197150868211880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  f1 (n - 3) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (f1 (n + 1) - f1 n)

end

end A047278.P9804197150868211880

namespace A047278

/-- `2*n-Δ[a(n-3)-n]` -/
def P9804197150868211880.Spec : Prop :=
  ∀ n, P9804197150868211880.a n = A047278 (n + 1)

end A047278

/-! ## A047278.P7412892332757971518

`∑[7-a(n-1)-a(n-2)]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A047278.P7412892332757971518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n f1 =>
  7 - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047278.P7412892332757971518

namespace A047278

/-- `∑[7-a(n-1)-a(n-2)]` -/
def P7412892332757971518.Spec : Prop :=
  ∀ n, P7412892332757971518.a n = A047278 (n + 1)

end A047278

/-! ## A047278.P9602296581734029503

`∑[A136619(n+1)]`
-/

namespace A047278.P9602296581734029503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047278.P9602296581734029503

namespace A047278

/-- `∑[A136619(n+1)]` -/
def P9602296581734029503.Spec : Prop :=
  ∀ n, P9602296581734029503.a n = A047278 (n + 1)

end A047278

/-! ## A047278.P13158267754791797074

`A047384(n+1)+1`
-/

namespace A047278.P13158267754791797074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047384 (n + 1) + 1

end

end A047278.P13158267754791797074

namespace A047278

/-- `A047384(n+1)+1` -/
def P13158267754791797074.Spec : Prop :=
  ∀ n, P13158267754791797074.a n = A047278 (n + 1)

end A047278

/-! ## A047278.P14303310232448257012

`∑[xor(1, A010872(n))]+n`
-/

namespace A047278.P14303310232448257012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A010872 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A047278.P14303310232448257012

namespace A047278

/-- `∑[xor(1, A010872(n))]+n` -/
def P14303310232448257012.Spec : Prop :=
  ∀ n, P14303310232448257012.a n = A047278 (n + 1)

end A047278

/-! ## A047278.P16982036794965048293

`A168056(n)+A130481(n)`
-/

namespace A047278.P16982036794965048293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168056 n + A130481 n

end

end A047278.P16982036794965048293

namespace A047278

/-- `A168056(n)+A130481(n)` -/
def P16982036794965048293.Spec : Prop :=
  ∀ n, P16982036794965048293.a n = A047278 (n + 1)

end A047278

/-! ## A047278.P7487517490522921167

`A016789(n)-A130727(n)`
-/

namespace A047278.P7487517490522921167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A130727 n

end

end A047278.P7487517490522921167

namespace A047278

/-- `A016789(n)-A130727(n)` -/
def P7487517490522921167.Spec : Prop :=
  ∀ n, P7487517490522921167.a n = A047278 (n + 1)

end A047278

/-! ## A047278.P3676160943296156727

`A016777(n)-A131380(n)`
-/

namespace A047278.P3676160943296156727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - A131380 n

end

end A047278.P3676160943296156727

namespace A047278

/-- `A016777(n)-A131380(n)` -/
def P3676160943296156727.Spec : Prop :=
  ∀ n, P3676160943296156727.a n = A047278 (n + 1)

end A047278

/-!
# A047279: Numbers that are congruent to {0, 1, 2, 6} mod 7.

The programs for A047279, the canonical program `A047279.P18291416891113894150` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047279 has offset 1).

The definition of A047279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047279.P18291416891113894150

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6, a(4)=7`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047279

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P18291416891113894150.Spec : Prop :=
  ∀ n, P18291416891113894150.a n = A047279 (n + 1)

theorem P18291416891113894150.correct : P18291416891113894150.Spec := by
  intro n
  simp only [A047279, Nat.add_sub_cancel]

end A047279

/-! ## A047279.P1107414116472015435

`A047361(n+2)-1`
-/

namespace A047279.P1107414116472015435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047361 (n + 2) - 1

end

end A047279.P1107414116472015435

namespace A047279

/-- `A047361(n+2)-1` -/
def P1107414116472015435.Spec : Prop :=
  ∀ n, P1107414116472015435.a n = A047279 (n + 1)

end A047279

/-! ## A047279.P3494243507428097356

`a(n-4)+7` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A047279.P3494243507428097356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 6] fun n a =>
  a (n - 4) + 7

end

end A047279.P3494243507428097356

namespace A047279

/-- `a(n-4)+7` -/
def P3494243507428097356.Spec : Prop :=
  ∀ n, (P3494243507428097356.a n : ℤ) = A047279 (n + 1)

end A047279

/-! ## A047279.P8860700089878258247

`3*floor((n+1)/4)+n`
-/

namespace A047279.P8860700089878258247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(n + 1 : ℚ) / 4⌋ + (n : ℤ)

end

end A047279.P8860700089878258247

namespace A047279

/-- `3*floor((n+1)/4)+n` -/
def P8860700089878258247.Spec : Prop :=
  ∀ n, P8860700089878258247.a n = A047279 (n + 1)

end A047279

/-! ## A047279.P795056282452174777

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047279.P795056282452174777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 4, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047279.P795056282452174777

namespace A047279

/-- `∑[floor(a(n-4))]` -/
def P795056282452174777.Spec : Prop :=
  ∀ n, (P795056282452174777.a n : ℤ) = A047279 (n + 1)

end A047279

/-! ## A047279.P7019682711176169102

`comp[∑[2*gcd(3, n)]-3-n]`
-/

namespace A047279.P7019682711176169102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 3 - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047279.P7019682711176169102

namespace A047279

/-- `comp[∑[2*gcd(3, n)]-3-n]` -/
def P7019682711176169102.Spec : Prop :=
  ∀ n, (P7019682711176169102.a n : ℤ) = A047279 (n + 1)

end A047279

/-! ## A047279.P2425652405238710096

`abs(1-∑[gcd(1-n, ∑[n])²])`
-/

namespace A047279.P2425652405238710096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A047279.P2425652405238710096

namespace A047279

/-- `abs(1-∑[gcd(1-n, ∑[n])²])` -/
def P2425652405238710096.Spec : Prop :=
  ∀ n, P2425652405238710096.a n = A047279 (n + 1)

end A047279

/-! ## A047279.P8624618610575861760

`∑[a(n-4)%5]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4, a(4)=1`
-/

namespace A047279.P8624618610575861760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 4, 1] fun n f1 =>
  f1 (n - 4) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047279.P8624618610575861760

namespace A047279

/-- `∑[a(n-4)%5]` -/
def P8624618610575861760.Spec : Prop :=
  ∀ n, (P8624618610575861760.a n : ℤ) = A047279 (n + 1)

end A047279

/-! ## A047279.P1078714675442250870

`∑[(2-a(n-4))²]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4, a(4)=1`
-/

namespace A047279.P1078714675442250870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 4, 1] fun n f1 =>
  (2 - f1 (n - 4)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047279.P1078714675442250870

namespace A047279

/-- `∑[(2-a(n-4))²]` -/
def P1078714675442250870.Spec : Prop :=
  ∀ n, P1078714675442250870.a n = A047279 (n + 1)

end A047279

/-! ## A047279.P12253765125813486423

`lt[(n+1)%7+n-1, n+3]`
-/

namespace A047279.P12253765125813486423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 7 : ℕ) : ℤ) + ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A047279.P12253765125813486423

namespace A047279

/-- `lt[(n+1)%7+n-1, n+3]` -/
def P12253765125813486423.Spec : Prop :=
  ∀ n, (P12253765125813486423.a n : ℤ) = A047279 (n + 1)

end A047279

/-! ## A047279.P8348980820381597850

`∑[a(n-4)^a(n-1)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4, a(4)=1`
-/

namespace A047279.P8348980820381597850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 4, 1] fun n f1 =>
  f1 (n - 4) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047279.P8348980820381597850

namespace A047279

/-- `∑[a(n-4)^a(n-1)]` -/
def P8348980820381597850.Spec : Prop :=
  ∀ n, (P8348980820381597850.a n : ℤ) = A047279 (n + 1)

end A047279

/-! ## A047279.P8755539428891431163

`abs(2*n-(n%4)%3-floor(n/4))`
-/

namespace A047279.P8755539428891431163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - ((n % 4 % 3 : ℕ) : ℤ) - ⌊(n : ℚ) / 4⌋|

end

end A047279.P8755539428891431163

namespace A047279

/-- `abs(2*n-(n%4)%3-floor(n/4))` -/
def P8755539428891431163.Spec : Prop :=
  ∀ n, P8755539428891431163.a n = A047279 (n + 1)

end A047279

/-! ## A047279.P12951503544040208780

`∑[a(a(n-1))*a(n-4)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4, a(4)=1`
-/

namespace A047279.P12951503544040208780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 4, 1] fun n f1 =>
  f1 (f1 (n - 1)) * f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047279.P12951503544040208780

namespace A047279

/-- `∑[a(a(n-1))*a(n-4)]` -/
def P12951503544040208780.Spec : Prop :=
  ∀ n, (P12951503544040208780.a n : ℤ) = A047279 (n + 1)

end A047279

/-! ## A047279.P17565905955470735263

`∑[a(n-4)/a(a(n-1))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4, a(4)=1`
-/

namespace A047279.P17565905955470735263
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 1, 4, 1] fun n f1 =>
  f1 (n - 4) / f1 (SequenceMachineLib.roundAway (f1 (n - 1))).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047279.P17565905955470735263

namespace A047279

/-- `∑[a(n-4)/a(a(n-1))]` -/
def P17565905955470735263.Spec : Prop :=
  ∀ n, P17565905955470735263.a n = (A047279 (n + 1) : ℚ)

end A047279

/-! ## A047279.P6481986894739915482

`comp[A047364(n+1)]`
-/

namespace A047279.P6481986894739915482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047279.P6481986894739915482

namespace A047279

/-- `comp[A047364(n+1)]` -/
def P6481986894739915482.Spec : Prop :=
  ∀ n, (P6481986894739915482.a n : ℤ) = A047279 (n + 1)

end A047279

/-! ## A047279.P11831985465535504726

`comp[A047339(n+1)+1]`
-/

namespace A047279.P11831985465535504726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047339 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047279.P11831985465535504726

namespace A047279

/-- `comp[A047339(n+1)+1]` -/
def P11831985465535504726.Spec : Prop :=
  ∀ n, (P11831985465535504726.a n : ℤ) = A047279 (n + 1)

end A047279

/-! ## A047279.P6596283312366516440

`comp[A047311(n+1)-1]`
-/

namespace A047279.P6596283312366516440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047311 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047279.P6596283312366516440

namespace A047279

/-- `comp[A047311(n+1)-1]` -/
def P6596283312366516440.Spec : Prop :=
  ∀ n, (P6596283312366516440.a n : ℤ) = A047279 (n + 1)

end A047279

/-! ## A047279.P16968868673703448176

`comp[A047360(n+1)+2]`
-/

namespace A047279.P16968868673703448176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047360 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047279.P16968868673703448176

namespace A047279

/-- `comp[A047360(n+1)+2]` -/
def P16968868673703448176.Spec : Prop :=
  ∀ n, (P16968868673703448176.a n : ℤ) = A047279 (n + 1)

end A047279

/-! ## A047279.P6659049742770954014

`comp[A047320(n+1)-2]`
-/

namespace A047279.P6659049742770954014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047320 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047279.P6659049742770954014

namespace A047279

/-- `comp[A047320(n+1)-2]` -/
def P6659049742770954014.Spec : Prop :=
  ∀ n, (P6659049742770954014.a n : ℤ) = A047279 (n + 1)

end A047279

/-! ## A047279.P3891806160554804078

`comp[comp[A047322(n+1)]+1]`
-/

namespace A047279.P3891806160554804078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047322 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047279.P3891806160554804078

namespace A047279

/-- `comp[comp[A047322(n+1)]+1]` -/
def P3891806160554804078.Spec : Prop :=
  ∀ n, (P3891806160554804078.a n : ℤ) = A047279 (n + 1)

end A047279

/-!
# A047280: Numbers that are congruent to {3, 6} mod 7.

The programs for A047280, the canonical program `A047280.P9672479361568097411` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047280 has offset 1).

The definition of A047280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047280.P9672479361568097411

`a(n-2)+7` with `a(0)=3, a(1)=6`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047280

/-- `a(n-2)+7` -/
def P9672479361568097411.Spec : Prop :=
  ∀ n, (P9672479361568097411.a n : ℤ) = A047280 (n + 1)

theorem P9672479361568097411.correct : P9672479361568097411.Spec := by
  intro n
  simp only [A047280, Nat.add_sub_cancel]

end A047280

/-! ## A047280.P1165349940832054417

`floor(7*n/2)+3`
-/

namespace A047280.P1165349940832054417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊7 * ((n : ℚ) / 2)⌋ + 3

end

end A047280.P1165349940832054417

namespace A047280

/-- `floor(7*n/2)+3` -/
def P1165349940832054417.Spec : Prop :=
  ∀ n, P1165349940832054417.a n = A047280 (n + 1)

end A047280

/-! ## A047280.P10953981509454875570

`∑[4-(n%2)^n]`
-/

namespace A047280.P10953981509454875570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (((n % 2) ^ n : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047280.P10953981509454875570

namespace A047280

/-- `∑[4-(n%2)^n]` -/
def P10953981509454875570.Spec : Prop :=
  ∀ n, P10953981509454875570.a n = A047280 (n + 1)

end A047280

/-! ## A047280.P10746030695365023706

`∑[∑{p}[n, val(#, 2)]+3]`
-/

namespace A047280.P10746030695365023706
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 2 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047280.P10746030695365023706

namespace A047280

/-- `∑[∑{p}[n, val(#, 2)]+3]` -/
def P10746030695365023706.Spec : Prop :=
  ∀ n, (P10746030695365023706.a n : ℤ) = A047280 (n + 1)

end A047280

/-! ## A047280.P12657247584871988196

`∑[val(∏{p}[n, #], 2)+3]`
-/

namespace A047280.P12657247584871988196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p) 2 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047280.P12657247584871988196

namespace A047280

/-- `∑[val(∏{p}[n, #], 2)+3]` -/
def P12657247584871988196.Spec : Prop :=
  ∀ n, (P12657247584871988196.a n : ℤ) = A047280 (n + 1)

end A047280

/-! ## A047280.P989523318310718382

`∑[∑{p}[n, C(2, #)]+3]`
-/

namespace A047280.P989523318310718382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose 2 p + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047280.P989523318310718382

namespace A047280

/-- `∑[∑{p}[n, C(2, #)]+3]` -/
def P989523318310718382.Spec : Prop :=
  ∀ n, (P989523318310718382.a n : ℤ) = A047280 (n + 1)

end A047280

/-! ## A047280.P15213501065673559389

`∑[7-a(n-1)]` with `a(0)=3, a(1)=3`
-/

namespace A047280.P15213501065673559389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047280.P15213501065673559389

namespace A047280

/-- `∑[7-a(n-1)]` -/
def P15213501065673559389.Spec : Prop :=
  ∀ n, P15213501065673559389.a n = A047280 (n + 1)

end A047280

/-! ## A047280.P5027885635771532186

`record[n+3-(2*n)%7]`
-/

namespace A047280.P5027885635771532186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - ((2 * n % 7 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047280.P5027885635771532186

namespace A047280

/-- `record[n+3-(2*n)%7]` -/
def P5027885635771532186.Spec : Prop :=
  ∀ n, P5027885635771532186.a n = A047280 (n + 1)

end A047280

/-! ## A047280.P1299650226009009772

`comp[n-a(a(n-2))]` with `a(0)=2, a(1)=0, a(2)=1`
-/

namespace A047280.P1299650226009009772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 1] fun n f1 =>
  (n : ℤ) - f1 (f1 (n - 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047280.P1299650226009009772

namespace A047280

/-- `comp[n-a(a(n-2))]` -/
def P1299650226009009772.Spec : Prop :=
  ∀ n, (P1299650226009009772.a n : ℤ) = A047280 (n + 1)

end A047280

/-! ## A047280.P9059400973007557961

`record[(n+2)²%7+n-1]`
-/

namespace A047280.P9059400973007557961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2 % 7 : ℕ) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047280.P9059400973007557961

namespace A047280

/-- `record[(n+2)²%7+n-1]` -/
def P9059400973007557961.Spec : Prop :=
  ∀ n, P9059400973007557961.a n = A047280 (n + 1)

end A047280

/-! ## A047280.P18138372341827065971

`floor(7*n-(a(n-1)-2))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047280.P18138372341827065971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (7 * n : ℤ) - (a (n - 1) - 2)

end

end A047280.P18138372341827065971

namespace A047280

/-- `floor(7*n-(a(n-1)-2))` -/
def P18138372341827065971.Spec : Prop :=
  ∀ n, P18138372341827065971.a n = A047280 (n + 1)

end A047280

/-! ## A047280.P9433837157549127406

`∑[log2(A040057(n))]`
-/

namespace A047280.P9433837157549127406
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A040057 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047280.P9433837157549127406

namespace A047280

/-- `∑[log2(A040057(n))]` -/
def P9433837157549127406.Spec : Prop :=
  ∀ n, P9433837157549127406.a n = (A047280 (n + 1) : ℝ)

end A047280

/-! ## A047280.P10974055615638911960

`floor(A017053(n)/2)`
-/

namespace A047280.P10974055615638911960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017053 n : ℚ) / 2⌋

end

end A047280.P10974055615638911960

namespace A047280

/-- `floor(A017053(n)/2)` -/
def P10974055615638911960.Spec : Prop :=
  ∀ n, P10974055615638911960.a n = A047280 (n + 1)

end A047280

/-! ## A047280.P685130916114653307

`∑[A040001(n)+2]`
-/

namespace A047280.P685130916114653307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047280.P685130916114653307

namespace A047280

/-- `∑[A040001(n)+2]` -/
def P685130916114653307.Spec : Prop :=
  ∀ n, P685130916114653307.a n = A047280 (n + 1)

end A047280

/-! ## A047280.P7845962337248604339

`∑[abs(A280193(n))+2]`
-/

namespace A047280.P7845962337248604339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A280193 n| + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047280.P7845962337248604339

namespace A047280

/-- `∑[abs(A280193(n))+2]` -/
def P7845962337248604339.Spec : Prop :=
  ∀ n, P7845962337248604339.a n = A047280 (n + 1)

end A047280

/-! ## A047280.P12121559662368102309

`∑[log2(A040003(n))+2]`
-/

namespace A047280.P12121559662368102309
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A040003 n : ℝ) + 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047280.P12121559662368102309

namespace A047280

/-- `∑[log2(A040003(n))+2]` -/
def P12121559662368102309.Spec : Prop :=
  ∀ n, P12121559662368102309.a n = (A047280 (n + 1) : ℝ)

end A047280

/-! ## A047280.P10733398555330241563

`∪[A017017(n), A017053(n)]`
-/

namespace A047280.P10733398555330241563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A047280.P10733398555330241563

namespace A047280

/-- `∪[A017017(n), A017053(n)]` -/
def P10733398555330241563.Spec : Prop :=
  ∀ n, (P10733398555330241563.a n : ℤ) = A047280 (n + 1)

end A047280

/-! ## A047280.P2257102216584159972

`A017605(n)%A155095(n+1)`
-/

namespace A047280.P2257102216584159972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017605 n) (A155095 (n + 1))

end

end A047280.P2257102216584159972

namespace A047280

/-- `A017605(n)%A155095(n+1)` -/
def P2257102216584159972.Spec : Prop :=
  ∀ n, P2257102216584159972.a n = A047280 (n + 1)

end A047280

/-!
# A047281: Numbers that are congruent to {0, 3, 6} mod 7.

The programs for A047281, the canonical program `A047281.P516580499956932432` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047281 has offset 1).

The definition of A047281 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047281.P516580499956932432

`3*n-2*floor(n/3)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047281

/-- `3*n-2*floor(n/3)` -/
def P516580499956932432.Spec : Prop :=
  ∀ n, P516580499956932432.a n = A047281 (n + 1)

theorem P516580499956932432.correct : P516580499956932432.Spec := by
  intro n
  simp only [A047281, Nat.add_sub_cancel]

end A047281

/-! ## A047281.P1864076910991794469

`∑[and(3, dr(3*n²))]`
-/

namespace A047281.P1864076910991794469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (SequenceMachineLib.digitalRoot (3 * n ^ 2 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047281.P1864076910991794469

namespace A047281

/-- `∑[and(3, dr(3*n²))]` -/
def P1864076910991794469.Spec : Prop :=
  ∀ n, (P1864076910991794469.a n : ℤ) = A047281 (n + 1)

end A047281

/-! ## A047281.P13313991490647219338

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=3, a(3)=1`
-/

namespace A047281.P13313991490647219338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 3, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047281.P13313991490647219338

namespace A047281

/-- `∑[abs(a(n-3))]` -/
def P13313991490647219338.Spec : Prop :=
  ∀ n, (P13313991490647219338.a n : ℤ) = A047281 (n + 1)

end A047281

/-! ## A047281.P13400148001462345863

`∑[or(1, a(n-3))]` with `a(0)=0, a(1)=3, a(2)=3`
-/

namespace A047281.P13400148001462345863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 3] fun n f1 =>
  Nat.lor 1 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047281.P13400148001462345863

namespace A047281

/-- `∑[or(1, a(n-3))]` -/
def P13400148001462345863.Spec : Prop :=
  ∀ n, (P13400148001462345863.a n : ℤ) = A047281 (n + 1)

end A047281

/-! ## A047281.P17470892524496243714

`∑[dr(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=3, a(3)=1`
-/

namespace A047281.P17470892524496243714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 3, 1] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047281.P17470892524496243714

namespace A047281

/-- `∑[dr(a(n-3))]` -/
def P17470892524496243714.Spec : Prop :=
  ∀ n, (P17470892524496243714.a n : ℤ) = A047281 (n + 1)

end A047281

/-! ## A047281.P12098235035946054734

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=3, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047281.P12098235035946054734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 3, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047281.P12098235035946054734

namespace A047281

/-- `∑[floor(a(n-3))]` -/
def P12098235035946054734.Spec : Prop :=
  ∀ n, (P12098235035946054734.a n : ℤ) = A047281 (n + 1)

end A047281

/-! ## A047281.P16084260582393002726

`∑[ceil(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=3, a(3)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A047281.P16084260582393002726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 3, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047281.P16084260582393002726

namespace A047281

/-- `∑[ceil(a(n-3))]` -/
def P16084260582393002726.Spec : Prop :=
  ∀ n, (P16084260582393002726.a n : ℤ) = A047281 (n + 1)

end A047281

/-! ## A047281.P16315182807104679855

`∑[round(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=3, a(3)=1`

`round` is left out, it is the identity on integers.
-/

namespace A047281.P16315182807104679855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 3, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047281.P16315182807104679855

namespace A047281

/-- `∑[round(a(n-3))]` -/
def P16315182807104679855.Spec : Prop :=
  ∀ n, (P16315182807104679855.a n : ℤ) = A047281 (n + 1)

end A047281

/-! ## A047281.P1791374491780933062

`∑[a(n-3)%4]` with `a(0)=0, a(1)=3, a(2)=3, a(3)=1`
-/

namespace A047281.P1791374491780933062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 3, 1] fun n f1 =>
  f1 (n - 3) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047281.P1791374491780933062

namespace A047281

/-- `∑[a(n-3)%4]` -/
def P1791374491780933062.Spec : Prop :=
  ∀ n, (P1791374491780933062.a n : ℤ) = A047281 (n + 1)

end A047281

/-! ## A047281.P4717779146366319068

`∑[and(3, a(n-3))]` with `a(0)=0, a(1)=3, a(2)=3, a(3)=1`
-/

namespace A047281.P4717779146366319068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 3, 1] fun n f1 =>
  Nat.land 3 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047281.P4717779146366319068

namespace A047281

/-- `∑[and(3, a(n-3))]` -/
def P4717779146366319068.Spec : Prop :=
  ∀ n, (P4717779146366319068.a n : ℤ) = A047281 (n + 1)

end A047281

/-! ## A047281.P14049002966672082873

`∑[char[3]+a(n-3)]` with `a(0)=0, a(1)=3, a(2)=3`
-/

namespace A047281.P14049002966672082873
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 3] fun n f1 =>
  (if ∃ j, f2 j = n then 1 else 0) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047281.P14049002966672082873

namespace A047281

/-- `∑[char[3]+a(n-3)]` -/
def P14049002966672082873.Spec : Prop :=
  ∀ n, (P14049002966672082873.a n : ℤ) = A047281 (n + 1)

end A047281

/-! ## A047281.P11116207345827988883

`floor(a(n-1)-(gcd(3, n)-4))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A047281.P11116207345827988883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ((Nat.gcd 3 n : ℤ) - 4)

end

end A047281.P11116207345827988883

namespace A047281

/-- `floor(a(n-1)-(gcd(3, n)-4))` -/
def P11116207345827988883.Spec : Prop :=
  ∀ n, P11116207345827988883.a n = A047281 (n + 1)

end A047281

/-! ## A047281.P13745112604159771751

`∑[a(n-3)^a(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=3`
-/

namespace A047281.P13745112604159771751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 3] fun n f1 =>
  f1 (n - 3) ^ f1 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047281.P13745112604159771751

namespace A047281

/-- `∑[a(n-3)^a(a(n-3))]` -/
def P13745112604159771751.Spec : Prop :=
  ∀ n, (P13745112604159771751.a n : ℤ) = A047281 (n + 1)

end A047281

/-! ## A047281.P12123568748299060313

`∑[dr(A040350(n))-1]`
-/

namespace A047281.P12123568748299060313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A040350 n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047281.P12123568748299060313

namespace A047281

/-- `∑[dr(A040350(n))-1]` -/
def P12123568748299060313.Spec : Prop :=
  ∀ n, P12123568748299060313.a n = A047281 (n + 1)

end A047281

/-! ## A047281.P11410649450239625813

`Δ[A058212(n)+n²]`
-/

namespace A047281.P11410649450239625813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058212 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047281.P11410649450239625813

namespace A047281

/-- `Δ[A058212(n)+n²]` -/
def P11410649450239625813.Spec : Prop :=
  ∀ n, P11410649450239625813.a n = A047281 (n + 1)

end A047281

/-! ## A047281.P10133107015396278663

`∑[A005117(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=3, a(3)=1`
-/

namespace A047281.P10133107015396278663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 3, 1] fun n f1 =>
  A005117 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047281.P10133107015396278663

namespace A047281

/-- `∑[A005117(a(n-3))]` -/
def P10133107015396278663.Spec : Prop :=
  ∀ n, P10133107015396278663.a n = A047281 (n + 1)

end A047281

/-! ## A047281.P16755900369003176903

`∑[A006530(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=3, a(3)=1`
-/

namespace A047281.P16755900369003176903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 3, 1] fun n f1 =>
  A006530 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047281.P16755900369003176903

namespace A047281

/-- `∑[A006530(a(n-3))]` -/
def P16755900369003176903.Spec : Prop :=
  ∀ n, P16755900369003176903.a n = A047281 (n + 1)

end A047281

/-! ## A047281.P15324815454905636789

`A016885(n)%A047484(n+1)`
-/

namespace A047281.P15324815454905636789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016885 n) (A047484 (n + 1))

end

end A047281.P15324815454905636789

namespace A047281

/-- `A016885(n)%A047484(n+1)` -/
def P15324815454905636789.Spec : Prop :=
  ∀ n, P15324815454905636789.a n = A047281 (n + 1)

end A047281

/-! ## A047281.P16266358662572730336

`A063099(n+1)%A016777(n)`
-/

namespace A047281.P16266358662572730336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063099 (n + 1)) (A016777 n)

end

end A047281.P16266358662572730336

namespace A047281

/-- `A063099(n+1)%A016777(n)` -/
def P16266358662572730336.Spec : Prop :=
  ∀ n, P16266358662572730336.a n = A047281 (n + 1)

end A047281

/-!
# A047282: Numbers that are congruent to {1, 3, 6} mod 7.

The programs for A047282, the canonical program `A047282.P17006837386692765319` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047282 has offset 1).

The definition of A047282 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047282.P17006837386692765319

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=8`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047282

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P17006837386692765319.Spec : Prop :=
  ∀ n, P17006837386692765319.a n = A047282 (n + 1)

theorem P17006837386692765319.correct : P17006837386692765319.Spec := by
  intro n
  simp only [A047282, Nat.add_sub_cancel]

end A047282

/-! ## A047282.P4283091026287798079

`∑[(n%3)!]+n`
-/

namespace A047282.P4283091026287798079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047282.P4283091026287798079

namespace A047282

/-- `∑[(n%3)!]+n` -/
def P4283091026287798079.Spec : Prop :=
  ∀ n, (P4283091026287798079.a n : ℤ) = A047282 (n + 1)

end A047282

/-! ## A047282.P12499261018050445554

`round(7*n/3)+1`
-/

namespace A047282.P12499261018050445554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (7 * ((n : ℚ) / 3)) + 1

end

end A047282.P12499261018050445554

namespace A047282

/-- `round(7*n/3)+1` -/
def P12499261018050445554.Spec : Prop :=
  ∀ n, P12499261018050445554.a n = A047282 (n + 1)

end A047282

/-! ## A047282.P3278039179211170318

`round(record[xor(3, n)]/3+n)`
-/

namespace A047282.P3278039179211170318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 3 + (n : ℚ))

end

end A047282.P3278039179211170318

namespace A047282

/-- `round(record[xor(3, n)]/3+n)` -/
def P3278039179211170318.Spec : Prop :=
  ∀ n, P3278039179211170318.a n = A047282 (n + 1)

end A047282

/-! ## A047282.P4367064584934732260

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=2`
-/

namespace A047282.P4367064584934732260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047282.P4367064584934732260

namespace A047282

/-- `∑[abs(a(n-3))]` -/
def P4367064584934732260.Spec : Prop :=
  ∀ n, (P4367064584934732260.a n : ℤ) = A047282 (n + 1)

end A047282

/-! ## A047282.P12532766097630340421

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=2`
-/

namespace A047282.P12532766097630340421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047282.P12532766097630340421

namespace A047282

/-- `∑[dr(a(n-3))]` -/
def P12532766097630340421.Spec : Prop :=
  ∀ n, (P12532766097630340421.a n : ℤ) = A047282 (n + 1)

end A047282

/-! ## A047282.P5781419103173292354

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A047282.P5781419103173292354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047282.P5781419103173292354

namespace A047282

/-- `∑[floor(a(n-3))]` -/
def P5781419103173292354.Spec : Prop :=
  ∀ n, (P5781419103173292354.a n : ℤ) = A047282 (n + 1)

end A047282

/-! ## A047282.P10771953347457427894

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A047282.P10771953347457427894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047282.P10771953347457427894

namespace A047282

/-- `∑[ceil(a(n-3))]` -/
def P10771953347457427894.Spec : Prop :=
  ∀ n, (P10771953347457427894.a n : ℤ) = A047282 (n + 1)

end A047282

/-! ## A047282.P3676496414719481239

`∑[round(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=2`

`round` is left out, it is the identity on integers.
-/

namespace A047282.P3676496414719481239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047282.P3676496414719481239

namespace A047282

/-- `∑[round(a(n-3))]` -/
def P3676496414719481239.Spec : Prop :=
  ∀ n, (P3676496414719481239.a n : ℤ) = A047282 (n + 1)

end A047282

/-! ## A047282.P10848746994103112560

`∑[((n-1)%3)%2+2]`
-/

namespace A047282.P10848746994103112560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod ((n : ℤ) - 1) 3) 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047282.P10848746994103112560

namespace A047282

/-- `∑[((n-1)%3)%2+2]` -/
def P10848746994103112560.Spec : Prop :=
  ∀ n, P10848746994103112560.a n = A047282 (n + 1)

end A047282

/-! ## A047282.P18194959317436130882

`∑[gcd(6, (1-n)%3-2)]`
-/

namespace A047282.P18194959317436130882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (Int.tmod (1 - (n : ℤ)) 3 - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047282.P18194959317436130882

namespace A047282

/-- `∑[gcd(6, (1-n)%3-2)]` -/
def P18194959317436130882.Spec : Prop :=
  ∀ n, (P18194959317436130882.a n : ℤ) = A047282 (n + 1)

end A047282

/-! ## A047282.P15342219885035931986

`∑[or(2, a(n-3))]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=2`
-/

namespace A047282.P15342219885035931986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 2] fun n f1 =>
  Nat.lor 2 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047282.P15342219885035931986

namespace A047282

/-- `∑[or(2, a(n-3))]` -/
def P15342219885035931986.Spec : Prop :=
  ∀ n, (P15342219885035931986.a n : ℤ) = A047282 (n + 1)

end A047282

/-! ## A047282.P7678398509547941568

`∑[and(3, a(n-3))]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=2`
-/

namespace A047282.P7678398509547941568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 2] fun n f1 =>
  Nat.land 3 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047282.P7678398509547941568

namespace A047282

/-- `∑[and(3, a(n-3))]` -/
def P7678398509547941568.Spec : Prop :=
  ∀ n, (P7678398509547941568.a n : ℤ) = A047282 (n + 1)

end A047282

/-! ## A047282.P9254467578590400509

`∑[a(n-3)%n]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=2`
-/

namespace A047282.P9254467578590400509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 2] fun n f1 =>
  f1 (n - 3) % n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047282.P9254467578590400509

namespace A047282

/-- `∑[a(n-3)%n]` -/
def P9254467578590400509.Spec : Prop :=
  ∀ n, (P9254467578590400509.a n : ℤ) = A047282 (n + 1)

end A047282

/-! ## A047282.P18385632763592667563

`∑[char[3]+a(n-3)]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A047282.P18385632763592667563
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  (if ∃ j, f2 j = n then 1 else 0) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047282.P18385632763592667563

namespace A047282

/-- `∑[char[3]+a(n-3)]` -/
def P18385632763592667563.Spec : Prop :=
  ∀ n, (P18385632763592667563.a n : ℤ) = A047282 (n + 1)

end A047282

/-! ## A047282.P17732702870953671633

`record[(2*n+1)²%7+n]`
-/

namespace A047282.P17732702870953671633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 % 7 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047282.P17732702870953671633

namespace A047282

/-- `record[(2*n+1)²%7+n]` -/
def P17732702870953671633.Spec : Prop :=
  ∀ n, (P17732702870953671633.a n : ℤ) = A047282 (n + 1)

end A047282

/-! ## A047282.P13416864403809834165

`floor((record[xor(3, n)]+1)/3+n)`
-/

namespace A047282.P13416864403809834165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 : ℚ) / 3 + (n : ℚ)⌋

end

end A047282.P13416864403809834165

namespace A047282

/-- `floor((record[xor(3, n)]+1)/3+n)` -/
def P13416864403809834165.Spec : Prop :=
  ∀ n, P13416864403809834165.a n = A047282 (n + 1)

end A047282

/-! ## A047282.P6151290159917262287

`ceil(cot(3/(n+2))+2*n)`
-/

namespace A047282.P6151290159917262287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (3 / (n + 2 : ℚ) : ℝ) + (2 * n : ℝ)⌉

end

end A047282.P6151290159917262287

namespace A047282

/-- `ceil(cot(3/(n+2))+2*n)` -/
def P6151290159917262287.Spec : Prop :=
  ∀ n, P6151290159917262287.a n = A047282 (n + 1)

end A047282

/-! ## A047282.P9053542287284278559

`ceil(lcm(2, 2*n+1)/3+n)`
-/

namespace A047282.P9053542287284278559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 2 (2 * n + 1) : ℚ) / 3 + (n : ℚ)⌉

end

end A047282.P9053542287284278559

namespace A047282

/-- `ceil(lcm(2, 2*n+1)/3+n)` -/
def P9053542287284278559.Spec : Prop :=
  ∀ n, P9053542287284278559.a n = A047282 (n + 1)

end A047282

/-!
# A047283: Numbers that are congruent to {0, 1, 3, 6} mod 7.

The programs for A047283, the canonical program `A047283.P17203923763404339811` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047283 has offset 1).

The definition of A047283 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047283.P17203923763404339811

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=7`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047283

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P17203923763404339811.Spec : Prop :=
  ∀ n, P17203923763404339811.a n = A047283 (n + 1)

theorem P17203923763404339811.correct : P17203923763404339811.Spec := by
  intro n
  simp only [A047283, Nat.add_sub_cancel]

end A047283

/-! ## A047283.P6698562221894278112

`floor(∑[n%4/2]+n)`
-/

namespace A047283.P6698562221894278112
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 4 : ℕ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)⌋

end

end A047283.P6698562221894278112

namespace A047283

/-- `floor(∑[n%4/2]+n)` -/
def P6698562221894278112.Spec : Prop :=
  ∀ n, P6698562221894278112.a n = A047283 (n + 1)

end A047283

/-! ## A047283.P8486478016584606990

`a(n-4)+7` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6`
-/

namespace A047283.P8486478016584606990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 6] fun n a =>
  a (n - 4) + 7

end

end A047283.P8486478016584606990

namespace A047283

/-- `a(n-4)+7` -/
def P8486478016584606990.Spec : Prop :=
  ∀ n, (P8486478016584606990.a n : ℤ) = A047283 (n + 1)

end A047283

/-! ## A047283.P668783311042567228

`∑[((n-1)%4)%3+1]`
-/

namespace A047283.P668783311042567228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod ((n : ℤ) - 1) 4) 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047283.P668783311042567228

namespace A047283

/-- `∑[((n-1)%4)%3+1]` -/
def P668783311042567228.Spec : Prop :=
  ∀ n, P668783311042567228.a n = A047283 (n + 1)

end A047283

/-! ## A047283.P9762575927450476093

`∑[1-((1-n)%4)%3]`
-/

namespace A047283.P9762575927450476093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (Int.tmod (1 - (n : ℤ)) 4) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047283.P9762575927450476093

namespace A047283

/-- `∑[1-((1-n)%4)%3]` -/
def P9762575927450476093.Spec : Prop :=
  ∀ n, P9762575927450476093.a n = A047283 (n + 1)

end A047283

/-! ## A047283.P12091810296367136051

`∑[((n+3)%4)%3]+n`
-/

namespace A047283.P12091810296367136051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) % 4 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047283.P12091810296367136051

namespace A047283

/-- `∑[((n+3)%4)%3]+n` -/
def P12091810296367136051.Spec : Prop :=
  ∀ n, (P12091810296367136051.a n : ℤ) = A047283 (n + 1)

end A047283

/-! ## A047283.P5195973684379374481

`∑[abs(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=1`
-/

namespace A047283.P5195973684379374481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047283.P5195973684379374481

namespace A047283

/-- `∑[abs(a(n-4))]` -/
def P5195973684379374481.Spec : Prop :=
  ∀ n, (P5195973684379374481.a n : ℤ) = A047283 (n + 1)

end A047283

/-! ## A047283.P16907753167988872525

`∑[dr(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=1`
-/

namespace A047283.P16907753167988872525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 1] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047283.P16907753167988872525

namespace A047283

/-- `∑[dr(a(n-4))]` -/
def P16907753167988872525.Spec : Prop :=
  ∀ n, (P16907753167988872525.a n : ℤ) = A047283 (n + 1)

end A047283

/-! ## A047283.P5875661510045651084

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047283.P5875661510045651084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047283.P5875661510045651084

namespace A047283

/-- `∑[floor(a(n-4))]` -/
def P5875661510045651084.Spec : Prop :=
  ∀ n, (P5875661510045651084.a n : ℤ) = A047283 (n + 1)

end A047283

/-! ## A047283.P8720701425998953233

`∑[ceil(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A047283.P8720701425998953233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047283.P8720701425998953233

namespace A047283

/-- `∑[ceil(a(n-4))]` -/
def P8720701425998953233.Spec : Prop :=
  ∀ n, (P8720701425998953233.a n : ℤ) = A047283 (n + 1)

end A047283

/-! ## A047283.P9430397807907099132

`∑[round(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=1`

`round` is left out, it is the identity on integers.
-/

namespace A047283.P9430397807907099132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047283.P9430397807907099132

namespace A047283

/-- `∑[round(a(n-4))]` -/
def P9430397807907099132.Spec : Prop :=
  ∀ n, (P9430397807907099132.a n : ℤ) = A047283 (n + 1)

end A047283

/-! ## A047283.P328585850730524402

`floor(2*n-xor(2, n-1)/4)`
-/

namespace A047283.P328585850730524402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) - (Int.xor 2 ((n : ℤ) - 1) : ℚ) / 4⌋

end

end A047283.P328585850730524402

namespace A047283

/-- `floor(2*n-xor(2, n-1)/4)` -/
def P328585850730524402.Spec : Prop :=
  ∀ n, P328585850730524402.a n = A047283 (n + 1)

end A047283

/-! ## A047283.P6627517629441478605

`2*n-ceil(xor(2, n-1)/4)`
-/

namespace A047283.P6627517629441478605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ⌈(Int.xor 2 ((n : ℤ) - 1) : ℚ) / 4⌉

end

end A047283.P6627517629441478605

namespace A047283

/-- `2*n-ceil(xor(2, n-1)/4)` -/
def P6627517629441478605.Spec : Prop :=
  ∀ n, P6627517629441478605.a n = A047283 (n + 1)

end A047283

/-! ## A047283.P2364103934381488795

`∑[a(n-4)^a(n-2)]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=1`
-/

namespace A047283.P2364103934381488795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 1] fun n f1 =>
  f1 (n - 4) ^ f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047283.P2364103934381488795

namespace A047283

/-- `∑[a(n-4)^a(n-2)]` -/
def P2364103934381488795.Spec : Prop :=
  ∀ n, (P2364103934381488795.a n : ℤ) = A047283 (n + 1)

end A047283

/-! ## A047283.P14875298391929678510

`comp[A047378(n+1)]`
-/

namespace A047283.P14875298391929678510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047283.P14875298391929678510

namespace A047283

/-- `comp[A047378(n+1)]` -/
def P14875298391929678510.Spec : Prop :=
  ∀ n, (P14875298391929678510.a n : ℤ) = A047283 (n + 1)

end A047283

/-! ## A047283.P6837545060522864023

`comp[A047343(n+1)+1]`
-/

namespace A047283.P6837545060522864023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047343 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047283.P6837545060522864023

namespace A047283

/-- `comp[A047343(n+1)+1]` -/
def P6837545060522864023.Spec : Prop :=
  ∀ n, (P6837545060522864023.a n : ℤ) = A047283 (n + 1)

end A047283

/-! ## A047283.P7952159835874345888

`comp[A047327(n+1)-1]`
-/

namespace A047283.P7952159835874345888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047327 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047283.P7952159835874345888

namespace A047283

/-- `comp[A047327(n+1)-1]` -/
def P7952159835874345888.Spec : Prop :=
  ∀ n, (P7952159835874345888.a n : ℤ) = A047283 (n + 1)

end A047283

/-! ## A047283.P8200576198693746486

`comp[A047359(n+1)+2]`
-/

namespace A047283.P8200576198693746486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047359 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047283.P8200576198693746486

namespace A047283

/-- `comp[A047359(n+1)+2]` -/
def P8200576198693746486.Spec : Prop :=
  ∀ n, (P8200576198693746486.a n : ℤ) = A047283 (n + 1)

end A047283

/-! ## A047283.P16328812381201615973

`comp[A047289(n+1)-2]`
-/

namespace A047283.P16328812381201615973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047289 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047283.P16328812381201615973

namespace A047283

/-- `comp[A047289(n+1)-2]` -/
def P16328812381201615973.Spec : Prop :=
  ∀ n, (P16328812381201615973.a n : ℤ) = A047283 (n + 1)

end A047283

/-! ## A047283.P323657294337282422

`(A266297(n+1)+n)/2`
-/

namespace A047283.P323657294337282422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266297 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A047283.P323657294337282422

namespace A047283

/-- `(A266297(n+1)+n)/2` -/
def P323657294337282422.Spec : Prop :=
  ∀ n, P323657294337282422.a n = (A047283 (n + 1) : ℚ)

end A047283

/-!
# A047284: Numbers that are congruent to {2, 3, 6} mod 7.

The programs for A047284, the canonical program `A047284.P9390719853575627462` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047284 has offset 1).

The definition of A047284 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047284.P9390719853575627462

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=6, a(3)=9`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047284

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P9390719853575627462.Spec : Prop :=
  ∀ n, P9390719853575627462.a n = A047284 (n + 1)

theorem P9390719853575627462.correct : P9390719853575627462.Spec := by
  intro n
  simp only [A047284, Nat.add_sub_cancel]

end A047284

/-! ## A047284.P12593833986403673823

`∑[gcd(3, ∑[n])]-1`
-/

namespace A047284.P12593833986403673823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047284.P12593833986403673823

namespace A047284

/-- `∑[gcd(3, ∑[n])]-1` -/
def P12593833986403673823.Spec : Prop :=
  ∀ n, P12593833986403673823.a n = A047284 (n + 1)

end A047284

/-! ## A047284.P6222709844404354681

`∑[3-C(2, dr(∑[n]))]`
-/

namespace A047284.P6222709844404354681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.choose 2 (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047284.P6222709844404354681

namespace A047284

/-- `∑[3-C(2, dr(∑[n]))]` -/
def P6222709844404354681.Spec : Prop :=
  ∀ n, P6222709844404354681.a n = A047284 (n + 1)

end A047284

/-! ## A047284.P10830199689257065208

`∑[sqrt(dr(∑[n]²))]+2`
-/

namespace A047284.P10830199689257065208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.digitalRoot (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A047284.P10830199689257065208

namespace A047284

/-- `∑[sqrt(dr(∑[n]²))]+2` -/
def P10830199689257065208.Spec : Prop :=
  ∀ n, P10830199689257065208.a n = (A047284 (n + 1) : ℝ)

end A047284

/-! ## A047284.P11415180330501480931

`a(n-3)+7` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A047284.P11415180330501480931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 6] fun n a =>
  a (n - 3) + 7

end

end A047284.P11415180330501480931

namespace A047284

/-- `a(n-3)+7` -/
def P11415180330501480931.Spec : Prop :=
  ∀ n, (P11415180330501480931.a n : ℤ) = A047284 (n + 1)

end A047284

/-! ## A047284.P6871224442813979241

`∑[(∑[n]+2)%3]+n`
-/

namespace A047284.P6871224442813979241
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 2) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047284.P6871224442813979241

namespace A047284

/-- `∑[(∑[n]+2)%3]+n` -/
def P6871224442813979241.Spec : Prop :=
  ∀ n, (P6871224442813979241.a n : ℤ) = A047284 (n + 1)

end A047284

/-! ## A047284.P2880074885328093399

`∑[abs(a(n-3))]` with `a(0)=2, a(1)=1, a(2)=3, a(3)=3`
-/

namespace A047284.P2880074885328093399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 3, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047284.P2880074885328093399

namespace A047284

/-- `∑[abs(a(n-3))]` -/
def P2880074885328093399.Spec : Prop :=
  ∀ n, (P2880074885328093399.a n : ℤ) = A047284 (n + 1)

end A047284

/-! ## A047284.P4236000799906586372

`∑[or(1, a(n-3))]` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A047284.P4236000799906586372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 3] fun n f1 =>
  Nat.lor 1 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047284.P4236000799906586372

namespace A047284

/-- `∑[or(1, a(n-3))]` -/
def P4236000799906586372.Spec : Prop :=
  ∀ n, (P4236000799906586372.a n : ℤ) = A047284 (n + 1)

end A047284

/-! ## A047284.P649443534685542352

`∑[dr(a(n-3))]` with `a(0)=2, a(1)=1, a(2)=3, a(3)=3`
-/

namespace A047284.P649443534685542352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 3, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047284.P649443534685542352

namespace A047284

/-- `∑[dr(a(n-3))]` -/
def P649443534685542352.Spec : Prop :=
  ∀ n, (P649443534685542352.a n : ℤ) = A047284 (n + 1)

end A047284

/-! ## A047284.P4527251560804419456

`∑[floor(a(n-3))]` with `a(0)=2, a(1)=1, a(2)=3, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047284.P4527251560804419456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 3, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047284.P4527251560804419456

namespace A047284

/-- `∑[floor(a(n-3))]` -/
def P4527251560804419456.Spec : Prop :=
  ∀ n, (P4527251560804419456.a n : ℤ) = A047284 (n + 1)

end A047284

/-! ## A047284.P3787573524276400038

`∑[ceil(a(n-3))]` with `a(0)=2, a(1)=1, a(2)=3, a(3)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A047284.P3787573524276400038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 3, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047284.P3787573524276400038

namespace A047284

/-- `∑[ceil(a(n-3))]` -/
def P3787573524276400038.Spec : Prop :=
  ∀ n, (P3787573524276400038.a n : ℤ) = A047284 (n + 1)

end A047284

/-! ## A047284.P12984827721233500921

`∑[round(a(n-3))]` with `a(0)=2, a(1)=1, a(2)=3, a(3)=3`

`round` is left out, it is the identity on integers.
-/

namespace A047284.P12984827721233500921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 3, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047284.P12984827721233500921

namespace A047284

/-- `∑[round(a(n-3))]` -/
def P12984827721233500921.Spec : Prop :=
  ∀ n, (P12984827721233500921.a n : ℤ) = A047284 (n + 1)

end A047284

/-! ## A047284.P17628868218234009671

`or(1, comp[or(3, n)])+n+1`
-/

namespace A047284.P17628868218234009671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + (n + 1)

end

end A047284.P17628868218234009671

namespace A047284

/-- `or(1, comp[or(3, n)])+n+1` -/
def P17628868218234009671.Spec : Prop :=
  ∀ n, (P17628868218234009671.a n : ℤ) = A047284 (n + 1)

end A047284

/-! ## A047284.P17947568139785750954

`∑[a(n-3)%4]` with `a(0)=2, a(1)=1, a(2)=3, a(3)=3`
-/

namespace A047284.P17947568139785750954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 3, 3] fun n f1 =>
  f1 (n - 3) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047284.P17947568139785750954

namespace A047284

/-- `∑[a(n-3)%4]` -/
def P17947568139785750954.Spec : Prop :=
  ∀ n, (P17947568139785750954.a n : ℤ) = A047284 (n + 1)

end A047284

/-! ## A047284.P6706634666767781621

`∑[and(3, a(n-3))]` with `a(0)=2, a(1)=1, a(2)=3, a(3)=3`
-/

namespace A047284.P6706634666767781621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 3, 3] fun n f1 =>
  Nat.land 3 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047284.P6706634666767781621

namespace A047284

/-- `∑[and(3, a(n-3))]` -/
def P6706634666767781621.Spec : Prop :=
  ∀ n, (P6706634666767781621.a n : ℤ) = A047284 (n + 1)

end A047284

/-! ## A047284.P18386815937066534006

`lt[n+3, (2*n)%7+n]`
-/

namespace A047284.P18386815937066534006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % 7 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047284.P18386815937066534006

namespace A047284

/-- `lt[n+3, (2*n)%7+n]` -/
def P18386815937066534006.Spec : Prop :=
  ∀ n, (P18386815937066534006.a n : ℤ) = A047284 (n + 1)

end A047284

/-! ## A047284.P11971940398900539265

`2*ceil((2*n+1)/3)+n`
-/

namespace A047284.P11971940398900539265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(2 * n + 1 : ℚ) / 3⌉ + (n : ℤ)

end

end A047284.P11971940398900539265

namespace A047284

/-- `2*ceil((2*n+1)/3)+n` -/
def P11971940398900539265.Spec : Prop :=
  ∀ n, P11971940398900539265.a n = A047284 (n + 1)

end A047284

/-! ## A047284.P13384958452989864398

`∑[3/(4-a(n-3))]` with `a(0)=2, a(1)=1, a(2)=3, a(3)=3`
-/

namespace A047284.P13384958452989864398
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1, 3, 3] fun n f1 =>
  3 / (4 - f1 (n - 3))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047284.P13384958452989864398

namespace A047284

/-- `∑[3/(4-a(n-3))]` -/
def P13384958452989864398.Spec : Prop :=
  ∀ n, P13384958452989864398.a n = (A047284 (n + 1) : ℚ)

end A047284

/-! ## A047284.P1655376924502831109

`∑[7-a(n-1)-a(n-2)]` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A047284.P1655376924502831109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n f1 =>
  7 - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047284.P1655376924502831109

namespace A047284

/-- `∑[7-a(n-1)-a(n-2)]` -/
def P1655376924502831109.Spec : Prop :=
  ∀ n, P1655376924502831109.a n = A047284 (n + 1)

end A047284

/-!
# A047285: Numbers that are congruent to {0, 2, 3, 6} mod 7.

The programs for A047285, the canonical program `A047285.P368478031323496740` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047285 has offset 1).

The definition of A047285 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047285.P368478031323496740

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=6, a(4)=7`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047285

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P368478031323496740.Spec : Prop :=
  ∀ n, P368478031323496740.a n = A047285 (n + 1)

theorem P368478031323496740.correct : P368478031323496740.Spec := by
  intro n
  simp only [A047285, Nat.add_sub_cancel]

end A047285

/-! ## A047285.P15954588891525536273

`comp[∑[4-gcd(3, n)]-3]`
-/

namespace A047285.P15954588891525536273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (Nat.gcd 3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047285.P15954588891525536273

namespace A047285

/-- `comp[∑[4-gcd(3, n)]-3]` -/
def P15954588891525536273.Spec : Prop :=
  ∀ n, (P15954588891525536273.a n : ℤ) = A047285 (n + 1)

end A047285

/-! ## A047285.P2273842115246429400

`∑[log2(gcd(4, n+1))]+n`
-/

namespace A047285.P2273842115246429400
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 4 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)

end

end A047285.P2273842115246429400

namespace A047285

/-- `∑[log2(gcd(4, n+1))]+n` -/
def P2273842115246429400.Spec : Prop :=
  ∀ n, P2273842115246429400.a n = (A047285 (n + 1) : ℝ)

end A047285

/-! ## A047285.P8202064772526470671

`comp[or(1, comp[4*n])+n]`
-/

namespace A047285.P8202064772526470671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047285.P8202064772526470671

namespace A047285

/-- `comp[or(1, comp[4*n])+n]` -/
def P8202064772526470671.Spec : Prop :=
  ∀ n, (P8202064772526470671.a n : ℤ) = A047285 (n + 1)

end A047285

/-! ## A047285.P3560977401185742102

`a(n-4)+7` with `a(0)=0, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A047285.P3560977401185742102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 6] fun n a =>
  a (n - 4) + 7

end

end A047285.P3560977401185742102

namespace A047285

/-- `a(n-4)+7` -/
def P3560977401185742102.Spec : Prop :=
  ∀ n, (P3560977401185742102.a n : ℤ) = A047285 (n + 1)

end A047285

/-! ## A047285.P4561326481463487262

`round(2*n-xor(1, n)/4)`
-/

namespace A047285.P4561326481463487262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℚ) - (Nat.xor 1 n : ℚ) / 4)

end

end A047285.P4561326481463487262

namespace A047285

/-- `round(2*n-xor(1, n)/4)` -/
def P4561326481463487262.Spec : Prop :=
  ∀ n, P4561326481463487262.a n = A047285 (n + 1)

end A047285

/-! ## A047285.P12462318213480795973

`∑[abs(a(n-4))]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=3, a(4)=1`
-/

namespace A047285.P12462318213480795973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 3, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047285.P12462318213480795973

namespace A047285

/-- `∑[abs(a(n-4))]` -/
def P12462318213480795973.Spec : Prop :=
  ∀ n, (P12462318213480795973.a n : ℤ) = A047285 (n + 1)

end A047285

/-! ## A047285.P1088256156591158053

`∑[dr(a(n-4))]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=3, a(4)=1`
-/

namespace A047285.P1088256156591158053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 3, 1] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047285.P1088256156591158053

namespace A047285

/-- `∑[dr(a(n-4))]` -/
def P1088256156591158053.Spec : Prop :=
  ∀ n, (P1088256156591158053.a n : ℤ) = A047285 (n + 1)

end A047285

/-! ## A047285.P8219128369814264593

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=3, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047285.P8219128369814264593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 3, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047285.P8219128369814264593

namespace A047285

/-- `∑[floor(a(n-4))]` -/
def P8219128369814264593.Spec : Prop :=
  ∀ n, (P8219128369814264593.a n : ℤ) = A047285 (n + 1)

end A047285

/-! ## A047285.P12298555873032715349

`∑[ceil(a(n-4))]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=3, a(4)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A047285.P12298555873032715349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 3, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047285.P12298555873032715349

namespace A047285

/-- `∑[ceil(a(n-4))]` -/
def P12298555873032715349.Spec : Prop :=
  ∀ n, (P12298555873032715349.a n : ℤ) = A047285 (n + 1)

end A047285

/-! ## A047285.P15360608503075725708

`∑[round(a(n-4))]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=3, a(4)=1`

`round` is left out, it is the identity on integers.
-/

namespace A047285.P15360608503075725708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 3, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047285.P15360608503075725708

namespace A047285

/-- `∑[round(a(n-4))]` -/
def P15360608503075725708.Spec : Prop :=
  ∀ n, (P15360608503075725708.a n : ℤ) = A047285 (n + 1)

end A047285

/-! ## A047285.P16628126952240304741

`∑[a(n-4)%4]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=3, a(4)=1`
-/

namespace A047285.P16628126952240304741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 3, 1] fun n f1 =>
  f1 (n - 4) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047285.P16628126952240304741

namespace A047285

/-- `∑[a(n-4)%4]` -/
def P16628126952240304741.Spec : Prop :=
  ∀ n, (P16628126952240304741.a n : ℤ) = A047285 (n + 1)

end A047285

/-! ## A047285.P10320233775553418588

`floor(2*n-xor(1, n-2)/4)`
-/

namespace A047285.P10320233775553418588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) - (Int.xor 1 ((n : ℤ) - 2) : ℚ) / 4⌋

end

end A047285.P10320233775553418588

namespace A047285

/-- `floor(2*n-xor(1, n-2)/4)` -/
def P10320233775553418588.Spec : Prop :=
  ∀ n, P10320233775553418588.a n = A047285 (n + 1)

end A047285

/-! ## A047285.P3569787183226115824

`2*n-ceil(xor(1, n-2)/4)`
-/

namespace A047285.P3569787183226115824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ⌈(Int.xor 1 ((n : ℤ) - 2) : ℚ) / 4⌉

end

end A047285.P3569787183226115824

namespace A047285

/-- `2*n-ceil(xor(1, n-2)/4)` -/
def P3569787183226115824.Spec : Prop :=
  ∀ n, P3569787183226115824.a n = A047285 (n + 1)

end A047285

/-! ## A047285.P2884560297207495244

`round(2*n-or(2, n-1)/4)`
-/

namespace A047285.P2884560297207495244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℚ) - (Int.lor 2 ((n : ℤ) - 1) : ℚ) / 4)

end

end A047285.P2884560297207495244

namespace A047285

/-- `round(2*n-or(2, n-1)/4)` -/
def P2884560297207495244.Spec : Prop :=
  ∀ n, P2884560297207495244.a n = A047285 (n + 1)

end A047285

/-! ## A047285.P12614511353588602862

`∑[∑[2/a(n-2)]]` with `a(0)=0, a(1)=2, a(2)=-1, a(3)=2`
-/

namespace A047285.P12614511353588602862
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0, 2, -1, 2] fun n f2 =>
  2 / f2 (n - 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047285.P12614511353588602862

namespace A047285

/-- `∑[∑[2/a(n-2)]]` -/
def P12614511353588602862.Spec : Prop :=
  ∀ n, P12614511353588602862.a n = (A047285 (n + 1) : ℚ)

end A047285

/-! ## A047285.P4188968875619417522

`∑[4-a(4-a(n-2))]` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A047285.P4188968875619417522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n f1 =>
  4 - f1 (4 - f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047285.P4188968875619417522

namespace A047285

/-- `∑[4-a(4-a(n-2))]` -/
def P4188968875619417522.Spec : Prop :=
  ∀ n, P4188968875619417522.a n = A047285 (n + 1)

end A047285

/-! ## A047285.P11875704075926156493

`comp[A047376(n+1)]`
-/

namespace A047285.P11875704075926156493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047285.P11875704075926156493

namespace A047285

/-- `comp[A047376(n+1)]` -/
def P11875704075926156493.Spec : Prop :=
  ∀ n, (P11875704075926156493.a n : ℤ) = A047285 (n + 1)

end A047285

/-!
# A047286: Numbers that are congruent to {1, 2, 3, 6} mod 7.

The programs for A047286, the canonical program `A047286.P1797588909138045173` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047286 has offset 1).

The definition of A047286 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047286.P1797588909138045173

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6, a(4)=8`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047286

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P1797588909138045173.Spec : Prop :=
  ∀ n, P1797588909138045173.a n = A047286 (n + 1)

theorem P1797588909138045173.correct : P1797588909138045173.Spec := by
  intro n
  simp only [A047286, Nat.add_sub_cancel]

end A047286

/-! ## A047286.P3673751049417358890

`record[n+1-n²%7]`
-/

namespace A047286.P3673751049417358890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((n ^ 2 % 7 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047286.P3673751049417358890

namespace A047286

/-- `record[n+1-n²%7]` -/
def P3673751049417358890.Spec : Prop :=
  ∀ n, P3673751049417358890.a n = A047286 (n + 1)

end A047286

/-! ## A047286.P6830642320067321733

`a(n-4)+7` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A047286.P6830642320067321733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 6] fun n a =>
  a (n - 4) + 7

end

end A047286.P6830642320067321733

namespace A047286

/-- `a(n-4)+7` -/
def P6830642320067321733.Spec : Prop :=
  ∀ n, (P6830642320067321733.a n : ℤ) = A047286 (n + 1)

end A047286

/-! ## A047286.P14828023703745855483

`∑[and(3, 1-n)%3]+n`
-/

namespace A047286.P14828023703745855483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land 3 (1 - (n : ℤ))) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A047286.P14828023703745855483

namespace A047286

/-- `∑[and(3, 1-n)%3]+n` -/
def P14828023703745855483.Spec : Prop :=
  ∀ n, P14828023703745855483.a n = A047286 (n + 1)

end A047286

/-! ## A047286.P8775118942533955774

`∑[abs(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=2`
-/

namespace A047286.P8775118942533955774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047286.P8775118942533955774

namespace A047286

/-- `∑[abs(a(n-4))]` -/
def P8775118942533955774.Spec : Prop :=
  ∀ n, (P8775118942533955774.a n : ℤ) = A047286 (n + 1)

end A047286

/-! ## A047286.P12534114157952286678

`∑[dr(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=2`
-/

namespace A047286.P12534114157952286678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047286.P12534114157952286678

namespace A047286

/-- `∑[dr(a(n-4))]` -/
def P12534114157952286678.Spec : Prop :=
  ∀ n, (P12534114157952286678.a n : ℤ) = A047286 (n + 1)

end A047286

/-! ## A047286.P449145325808409444

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A047286.P449145325808409444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047286.P449145325808409444

namespace A047286

/-- `∑[floor(a(n-4))]` -/
def P449145325808409444.Spec : Prop :=
  ∀ n, (P449145325808409444.a n : ℤ) = A047286 (n + 1)

end A047286

/-! ## A047286.P6337741006534568374

`∑[ceil(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A047286.P6337741006534568374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047286.P6337741006534568374

namespace A047286

/-- `∑[ceil(a(n-4))]` -/
def P6337741006534568374.Spec : Prop :=
  ∀ n, (P6337741006534568374.a n : ℤ) = A047286 (n + 1)

end A047286

/-! ## A047286.P17267697279460922128

`∑[round(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=2`

`round` is left out, it is the identity on integers.
-/

namespace A047286.P17267697279460922128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047286.P17267697279460922128

namespace A047286

/-- `∑[round(a(n-4))]` -/
def P17267697279460922128.Spec : Prop :=
  ∀ n, (P17267697279460922128.a n : ℤ) = A047286 (n + 1)

end A047286

/-! ## A047286.P11375932056383453349

`∑[a(n-4)%4]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=2`
-/

namespace A047286.P11375932056383453349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3, 2] fun n f1 =>
  f1 (n - 4) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047286.P11375932056383453349

namespace A047286

/-- `∑[a(n-4)%4]` -/
def P11375932056383453349.Spec : Prop :=
  ∀ n, (P11375932056383453349.a n : ℤ) = A047286 (n + 1)

end A047286

/-! ## A047286.P6889522122730190299

`∑[gcd(6, a(n-4))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=2`
-/

namespace A047286.P6889522122730190299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3, 2] fun n f1 =>
  Nat.gcd 6 (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047286.P6889522122730190299

namespace A047286

/-- `∑[gcd(6, a(n-4))]` -/
def P6889522122730190299.Spec : Prop :=
  ∀ n, (P6889522122730190299.a n : ℤ) = A047286 (n + 1)

end A047286

/-! ## A047286.P6949820513128872118

`round(2*n-xor(2, n-1)/4)`
-/

namespace A047286.P6949820513128872118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℚ) - (Int.xor 2 ((n : ℤ) - 1) : ℚ) / 4)

end

end A047286.P6949820513128872118

namespace A047286

/-- `round(2*n-xor(2, n-1)/4)` -/
def P6949820513128872118.Spec : Prop :=
  ∀ n, P6949820513128872118.a n = A047286 (n + 1)

end A047286

/-! ## A047286.P17114923534549712902

`∑[a(n-4)^a(n-2)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=2`
-/

namespace A047286.P17114923534549712902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3, 2] fun n f1 =>
  f1 (n - 4) ^ f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047286.P17114923534549712902

namespace A047286

/-- `∑[a(n-4)^a(n-2)]` -/
def P17114923534549712902.Spec : Prop :=
  ∀ n, (P17114923534549712902.a n : ℤ) = A047286 (n + 1)

end A047286

/-! ## A047286.P14775522040598980236

`comp[A047375(n+1)]`
-/

namespace A047286.P14775522040598980236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047286.P14775522040598980236

namespace A047286

/-- `comp[A047375(n+1)]` -/
def P14775522040598980236.Spec : Prop :=
  ∀ n, (P14775522040598980236.a n : ℤ) = A047286 (n + 1)

end A047286

/-! ## A047286.P15181073446151538481

`A047388(n+1)+1`
-/

namespace A047286.P15181073446151538481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047388 (n + 1) + 1

end

end A047286.P15181073446151538481

namespace A047286

/-- `A047388(n+1)+1` -/
def P15181073446151538481.Spec : Prop :=
  ∀ n, P15181073446151538481.a n = A047286 (n + 1)

end A047286

/-! ## A047286.P1146050544500305877

`∑[A003485(n)]-n²`
-/

namespace A047286.P1146050544500305877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A047286.P1146050544500305877

namespace A047286

/-- `∑[A003485(n)]-n²` -/
def P1146050544500305877.Spec : Prop :=
  ∀ n, P1146050544500305877.a n = A047286 (n + 1)

end A047286

/-! ## A047286.P6437031917361318606

`comp[A047296(n+1)]+1`
-/

namespace A047286.P6437031917361318606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A047286.P6437031917361318606

namespace A047286

/-- `comp[A047296(n+1)]+1` -/
def P6437031917361318606.Spec : Prop :=
  ∀ n, (P6437031917361318606.a n : ℤ) = A047286 (n + 1)

end A047286

/-! ## A047286.P6402273833380229276

`comp[A047321(n+1)-1]`
-/

namespace A047286.P6402273833380229276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047321 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047286.P6402273833380229276

namespace A047286

/-- `comp[A047321(n+1)-1]` -/
def P6402273833380229276.Spec : Prop :=
  ∀ n, (P6402273833380229276.a n : ℤ) = A047286 (n + 1)

end A047286

/-! ## A047286.P15166629135074995059

`comp[A047277(n+1)-2]`
-/

namespace A047286.P15166629135074995059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047277 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047286.P15166629135074995059

namespace A047286

/-- `comp[A047277(n+1)-2]` -/
def P15166629135074995059.Spec : Prop :=
  ∀ n, (P15166629135074995059.a n : ℤ) = A047286 (n + 1)

end A047286

/-!
# A047287: Numbers that are congruent to {0, 1, 2, 3, 6} mod 7.

The programs for A047287, the canonical program `A047287.P1044627375723699757` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047287 has offset 1).

The definition of A047287 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047287.P1044627375723699757

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=6, a(5)=7`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047287

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P1044627375723699757.Spec : Prop :=
  ∀ n, P1044627375723699757.a n = A047287 (n + 1)

theorem P1044627375723699757.correct : P1044627375723699757.Spec := by
  intro n
  simp only [A047287, Nat.add_sub_cancel]

end A047287

/-! ## A047287.P2627336624400711418

`comp[a(n-2)+7]` with `a(0)=4, a(1)=5`
-/

namespace A047287.P2627336624400711418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 5] fun n f1 =>
  f1 (n - 2) + 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047287.P2627336624400711418

namespace A047287

/-- `comp[a(n-2)+7]` -/
def P2627336624400711418.Spec : Prop :=
  ∀ n, (P2627336624400711418.a n : ℤ) = A047287 (n + 1)

end A047287

/-! ## A047287.P13740703482225463156

`comp[∑[7-a(n-1)]]` with `a(0)=4, a(1)=1`
-/

namespace A047287.P13740703482225463156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  7 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047287.P13740703482225463156

namespace A047287

/-- `comp[∑[7-a(n-1)]]` -/
def P13740703482225463156.Spec : Prop :=
  ∀ n, (P13740703482225463156.a n : ℤ) = A047287 (n + 1)

end A047287

/-! ## A047287.P17664535078390432349

`2*floor((1+n)/5)+n`
-/

namespace A047287.P17664535078390432349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(1 + n : ℚ) / 5⌋ + (n : ℤ)

end

end A047287.P17664535078390432349

namespace A047287

/-- `2*floor((1+n)/5)+n` -/
def P17664535078390432349.Spec : Prop :=
  ∀ n, P17664535078390432349.a n = A047287 (n + 1)

end A047287

/-! ## A047287.P473960297394684764

`lt[n+1, (n+3)%7+n]`
-/

namespace A047287.P473960297394684764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) % 7 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047287.P473960297394684764

namespace A047287

/-- `lt[n+1, (n+3)%7+n]` -/
def P473960297394684764.Spec : Prop :=
  ∀ n, (P473960297394684764.a n : ℤ) = A047287 (n + 1)

end A047287

/-! ## A047287.P11402532576967426392

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=3, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047287.P11402532576967426392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 3, 1] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047287.P11402532576967426392

namespace A047287

/-- `∑[floor(a(n-5))]` -/
def P11402532576967426392.Spec : Prop :=
  ∀ n, (P11402532576967426392.a n : ℤ) = A047287 (n + 1)

end A047287

/-! ## A047287.P16792463807320579371

`(∑[gcd(5, n+1)]+n-1)/2`
-/

namespace A047287.P16792463807320579371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - 1) : ℚ) / 2

end

end A047287.P16792463807320579371

namespace A047287

/-- `(∑[gcd(5, n+1)]+n-1)/2` -/
def P16792463807320579371.Spec : Prop :=
  ∀ n, P16792463807320579371.a n = (A047287 (n + 1) : ℚ)

end A047287

/-! ## A047287.P9543729031458447099

`∑[gcd(3, a(n-5))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=3, a(5)=1`
-/

namespace A047287.P9543729031458447099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 3, 1] fun n f1 =>
  Nat.gcd 3 (f1 (n - 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047287.P9543729031458447099

namespace A047287

/-- `∑[gcd(3, a(n-5))]` -/
def P9543729031458447099.Spec : Prop :=
  ∀ n, (P9543729031458447099.a n : ℤ) = A047287 (n + 1)

end A047287

/-! ## A047287.P5854087781638782581

`∑[a(n-5)%4]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=3, a(5)=1`
-/

namespace A047287.P5854087781638782581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 3, 1] fun n f1 =>
  f1 (n - 5) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047287.P5854087781638782581

namespace A047287

/-- `∑[a(n-5)%4]` -/
def P5854087781638782581.Spec : Prop :=
  ∀ n, (P5854087781638782581.a n : ℤ) = A047287 (n + 1)

end A047287

/-! ## A047287.P13550701220164712579

`∑[a(n-5)^a(n-1)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=3, a(5)=1`
-/

namespace A047287.P13550701220164712579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 3, 1] fun n f1 =>
  f1 (n - 5) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047287.P13550701220164712579

namespace A047287

/-- `∑[a(n-5)^a(n-1)]` -/
def P13550701220164712579.Spec : Prop :=
  ∀ n, (P13550701220164712579.a n : ℤ) = A047287 (n + 1)

end A047287

/-! ## A047287.P3213404277238825315

`comp[A047374(n+1)]`
-/

namespace A047287.P3213404277238825315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047287.P3213404277238825315

namespace A047287

/-- `comp[A047374(n+1)]` -/
def P3213404277238825315.Spec : Prop :=
  ∀ n, (P3213404277238825315.a n : ℤ) = A047287 (n + 1)

end A047287

/-! ## A047287.P17329790125953391103

`comp[A047341(n+1)+1]`
-/

namespace A047287.P17329790125953391103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047341 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047287.P17329790125953391103

namespace A047287

/-- `comp[A047341(n+1)+1]` -/
def P17329790125953391103.Spec : Prop :=
  ∀ n, (P17329790125953391103.a n : ℤ) = A047287 (n + 1)

end A047287

/-! ## A047287.P39794140737652977

`comp[A047319(n+1)-1]`
-/

namespace A047287.P39794140737652977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047319 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047287.P39794140737652977

namespace A047287

/-- `comp[A047319(n+1)-1]` -/
def P39794140737652977.Spec : Prop :=
  ∀ n, (P39794140737652977.a n : ℤ) = A047287 (n + 1)

end A047287

/-! ## A047287.P6713060122199644655

`comp[A047358(n+1)+2]`
-/

namespace A047287.P6713060122199644655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047358 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047287.P6713060122199644655

namespace A047287

/-- `comp[A047358(n+1)+2]` -/
def P6713060122199644655.Spec : Prop :=
  ∀ n, (P6713060122199644655.a n : ℤ) = A047287 (n + 1)

end A047287

/-! ## A047287.P16509010188264222975

`comp[A047335(n+1)-2]`
-/

namespace A047287.P16509010188264222975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047335 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047287.P16509010188264222975

namespace A047287

/-- `comp[A047335(n+1)-2]` -/
def P16509010188264222975.Spec : Prop :=
  ∀ n, (P16509010188264222975.a n : ℤ) = A047287 (n + 1)

end A047287

/-! ## A047287.P9003799620937251348

`comp[comp[A047314(n+1)]+2]`
-/

namespace A047287.P9003799620937251348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047314 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047287.P9003799620937251348

namespace A047287

/-- `comp[comp[A047314(n+1)]+2]` -/
def P9003799620937251348.Spec : Prop :=
  ∀ n, (P9003799620937251348.a n : ℤ) = A047287 (n + 1)

end A047287

/-! ## A047287.P13663790642458474653

`comp[A047366(or(2, n+1))+1]`
-/

namespace A047287.P13663790642458474653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047366 (Nat.lor 2 (n + 1)) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047287.P13663790642458474653

namespace A047287

/-- `comp[A047366(or(2, n+1))+1]` -/
def P13663790642458474653.Spec : Prop :=
  ∀ n, (P13663790642458474653.a n : ℤ) = A047287 (n + 1)

end A047287

/-! ## A047287.P10257710203206853823

`comp[A168411(n+1)-(n+2)]`
-/

namespace A047287.P10257710203206853823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168411 (n + 1) - (n + 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047287.P10257710203206853823

namespace A047287

/-- `comp[A168411(n+1)-(n+2)]` -/
def P10257710203206853823.Spec : Prop :=
  ∀ n, (P10257710203206853823.a n : ℤ) = A047287 (n + 1)

end A047287

/-!
# A047288: Numbers that are congruent to {4, 6} mod 7.

The programs for A047288, the canonical program `A047288.P18372578862577035975` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047288 has offset 1).

The definition of A047288 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047288.P18372578862577035975

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=4, a(1)=6, a(2)=11`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047288

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P18372578862577035975.Spec : Prop :=
  ∀ n, P18372578862577035975.a n = A047288 (n + 1)

theorem P18372578862577035975.correct : P18372578862577035975.Spec := by
  intro n
  simp only [A047288, Nat.add_sub_cancel]

end A047288

/-! ## A047288.P4442972700382463008

`∑[gcd(2, n)²]+n`
-/

namespace A047288.P4442972700382463008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047288.P4442972700382463008

namespace A047288

/-- `∑[gcd(2, n)²]+n` -/
def P4442972700382463008.Spec : Prop :=
  ∀ n, (P4442972700382463008.a n : ℤ) = A047288 (n + 1)

end A047288

/-! ## A047288.P5423231459311070228

`7+a(n-2)` with `a(0)=4, a(1)=6`
-/

namespace A047288.P5423231459311070228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 6] fun n a =>
  7 + a (n - 2)

end

end A047288.P5423231459311070228

namespace A047288

/-- `7+a(n-2)` -/
def P5423231459311070228.Spec : Prop :=
  ∀ n, (P5423231459311070228.a n : ℤ) = A047288 (n + 1)

end A047288

/-! ## A047288.P12682705480378535899

`∑[gcd(4, n^3)]+n`
-/

namespace A047288.P12682705480378535899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (n ^ 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047288.P12682705480378535899

namespace A047288

/-- `∑[gcd(4, n^3)]+n` -/
def P12682705480378535899.Spec : Prop :=
  ∀ n, (P12682705480378535899.a n : ℤ) = A047288 (n + 1)

end A047288

/-! ## A047288.P17265110517088690231

`∑[or(n, -2)²]+n`
-/

namespace A047288.P17265110517088690231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A047288.P17265110517088690231

namespace A047288

/-- `∑[or(n, -2)²]+n` -/
def P17265110517088690231.Spec : Prop :=
  ∀ n, P17265110517088690231.a n = A047288 (n + 1)

end A047288

/-! ## A047288.P17853538741011324149

`∑[7-a(n-1)]` with `a(0)=4, a(1)=2`
-/

namespace A047288.P17853538741011324149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047288.P17853538741011324149

namespace A047288

/-- `∑[7-a(n-1)]` -/
def P17853538741011324149.Spec : Prop :=
  ∀ n, P17853538741011324149.a n = A047288 (n + 1)

end A047288

/-! ## A047288.P13096538153601324905

`∑[(and(1, n)-2)²]+n`
-/

namespace A047288.P13096538153601324905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 n : ℤ) - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A047288.P13096538153601324905

namespace A047288

/-- `∑[(and(1, n)-2)²]+n` -/
def P13096538153601324905.Spec : Prop :=
  ∀ n, P13096538153601324905.a n = A047288 (n + 1)

end A047288

/-! ## A047288.P6093290113242853237

`∑[4^∑[(-1)^n]]+n`
-/

namespace A047288.P6093290113242853237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)

end

end A047288.P6093290113242853237

namespace A047288

/-- `∑[4^∑[(-1)^n]]+n` -/
def P6093290113242853237.Spec : Prop :=
  ∀ n, P6093290113242853237.a n = (A047288 (n + 1) : ℚ)

end A047288

/-! ## A047288.P14341380834679920029

`∑[log2(A040247(n))]`
-/

namespace A047288.P14341380834679920029
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A040247 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047288.P14341380834679920029

namespace A047288

/-- `∑[log2(A040247(n))]` -/
def P14341380834679920029.Spec : Prop :=
  ∀ n, P14341380834679920029.a n = (A047288 (n + 1) : ℝ)

end A047288

/-! ## A047288.P13047556931041648937

`∑[A280193(n)+3]`
-/

namespace A047288.P13047556931041648937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047288.P13047556931041648937

namespace A047288

/-- `∑[A280193(n)+3]` -/
def P13047556931041648937.Spec : Prop :=
  ∀ n, P13047556931041648937.a n = A047288 (n + 1)

end A047288

/-! ## A047288.P16717385385868373918

`∑[floor(sqrt(A040243(n)))]`
-/

namespace A047288.P16717385385868373918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A040243 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047288.P16717385385868373918

namespace A047288

/-- `∑[floor(sqrt(A040243(n)))]` -/
def P16717385385868373918.Spec : Prop :=
  ∀ n, P16717385385868373918.a n = A047288 (n + 1)

end A047288

/-! ## A047288.P17434408535739247177

`∑[A033330(a(n-1))]` with `a(0)=4`
-/

namespace A047288.P17434408535739247177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A033330 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047288.P17434408535739247177

namespace A047288

/-- `∑[A033330(a(n-1))]` -/
def P17434408535739247177.Spec : Prop :=
  ∀ n, P17434408535739247177.a n = A047288 (n + 1)

end A047288

/-! ## A047288.P1372729356251496511

`∑[A033331(a(n-1))]` with `a(0)=4`
-/

namespace A047288.P1372729356251496511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A033331 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047288.P1372729356251496511

namespace A047288

/-- `∑[A033331(a(n-1))]` -/
def P1372729356251496511.Spec : Prop :=
  ∀ n, P1372729356251496511.a n = A047288 (n + 1)

end A047288

/-! ## A047288.P3235923553803542268

`∑[A052038(a(n-1))]` with `a(0)=4`
-/

namespace A047288.P3235923553803542268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A052038 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047288.P3235923553803542268

namespace A047288

/-- `∑[A052038(a(n-1))]` -/
def P3235923553803542268.Spec : Prop :=
  ∀ n, P3235923553803542268.a n = A047288 (n + 1)

end A047288

/-! ## A047288.P17644071631935464792

`∑[A075790(a(n-1))]` with `a(0)=4`
-/

namespace A047288.P17644071631935464792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A075790 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047288.P17644071631935464792

namespace A047288

/-- `∑[A075790(a(n-1))]` -/
def P17644071631935464792.Spec : Prop :=
  ∀ n, P17644071631935464792.a n = A047288 (n + 1)

end A047288

/-! ## A047288.P3842884909069357178

`∑[A078375(a(n-1))]` with `a(0)=4`
-/

namespace A047288.P3842884909069357178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A078375 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047288.P3842884909069357178

namespace A047288

/-- `∑[A078375(a(n-1))]` -/
def P3842884909069357178.Spec : Prop :=
  ∀ n, P3842884909069357178.a n = A047288 (n + 1)

end A047288

/-! ## A047288.P13183062654580417235

`∑[A106592(a(n-1))]` with `a(0)=4`
-/

namespace A047288.P13183062654580417235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A106592 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047288.P13183062654580417235

namespace A047288

/-- `∑[A106592(a(n-1))]` -/
def P13183062654580417235.Spec : Prop :=
  ∀ n, P13183062654580417235.a n = A047288 (n + 1)

end A047288

/-! ## A047288.P14380332257629264664

`(A113805(n+1)+3)/2`
-/

namespace A047288.P14380332257629264664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113805 (n + 1) + 3 : ℚ) / 2

end

end A047288.P14380332257629264664

namespace A047288

/-- `(A113805(n+1)+3)/2` -/
def P14380332257629264664.Spec : Prop :=
  ∀ n, P14380332257629264664.a n = (A047288 (n + 1) : ℚ)

end A047288

/-!
# A047289: Numbers that are congruent to {0, 4, 6} mod 7.

The programs for A047289, the canonical program `A047289.P5125561655512386469` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047289 has offset 1).

The definition of A047289 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047289.P5125561655512386469

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=6, a(3)=7`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047289

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P5125561655512386469.Spec : Prop :=
  ∀ n, P5125561655512386469.a n = A047289 (n + 1)

theorem P5125561655512386469.correct : P5125561655512386469.Spec := by
  intro n
  simp only [A047289, Nat.add_sub_cancel]

end A047289

/-! ## A047289.P10747797256283920516

`a(n-3)+7` with `a(0)=0, a(1)=4, a(2)=6`
-/

namespace A047289.P10747797256283920516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 6] fun n a =>
  a (n - 3) + 7

end

end A047289.P10747797256283920516

namespace A047289

/-- `a(n-3)+7` -/
def P10747797256283920516.Spec : Prop :=
  ∀ n, (P10747797256283920516.a n : ℤ) = A047289 (n + 1)

end A047289

/-! ## A047289.P11020792223328137725

`∑[(4^dr(n))%7]-1`
-/

namespace A047289.P11020792223328137725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ SequenceMachineLib.digitalRoot (n : ℤ) % 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047289.P11020792223328137725

namespace A047289

/-- `∑[(4^dr(n))%7]-1` -/
def P11020792223328137725.Spec : Prop :=
  ∀ n, P11020792223328137725.a n = A047289 (n + 1)

end A047289

/-! ## A047289.P8667487250986419801

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=4, a(2)=2, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047289.P8667487250986419801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 2, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047289.P8667487250986419801

namespace A047289

/-- `∑[floor(a(n-3))]` -/
def P8667487250986419801.Spec : Prop :=
  ∀ n, (P8667487250986419801.a n : ℤ) = A047289 (n + 1)

end A047289

/-! ## A047289.P2361590642929820912

`∑[2^((2*n)%3)]-1`
-/

namespace A047289.P2361590642929820912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (2 * n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047289.P2361590642929820912

namespace A047289

/-- `∑[2^((2*n)%3)]-1` -/
def P2361590642929820912.Spec : Prop :=
  ∀ n, P2361590642929820912.a n = A047289 (n + 1)

end A047289

/-! ## A047289.P12466162394716571571

`∑[4/gcd(4, n%3)]-1`
-/

namespace A047289.P12466162394716571571
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (Nat.gcd 4 (n % 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A047289.P12466162394716571571

namespace A047289

/-- `∑[4/gcd(4, n%3)]-1` -/
def P12466162394716571571.Spec : Prop :=
  ∀ n, P12466162394716571571.a n = (A047289 (n + 1) : ℚ)

end A047289

/-! ## A047289.P5810674551014454331

`∑[xor(1, (n+1)%3)]+n`
-/

namespace A047289.P5810674551014454331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((n + 1) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047289.P5810674551014454331

namespace A047289

/-- `∑[xor(1, (n+1)%3)]+n` -/
def P5810674551014454331.Spec : Prop :=
  ∀ n, (P5810674551014454331.a n : ℤ) = A047289 (n + 1)

end A047289

/-! ## A047289.P17792717363224699282

`∑[a(n-3)%5]` with `a(0)=0, a(1)=4, a(2)=2, a(3)=1`
-/

namespace A047289.P17792717363224699282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 2, 1] fun n f1 =>
  f1 (n - 3) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047289.P17792717363224699282

namespace A047289

/-- `∑[a(n-3)%5]` -/
def P17792717363224699282.Spec : Prop :=
  ∀ n, (P17792717363224699282.a n : ℤ) = A047289 (n + 1)

end A047289

/-! ## A047289.P12978788785477246715

`∑[abs(a(n-3))]-1` with `a(0)=1, a(1)=4, a(2)=2`
-/

namespace A047289.P12978788785477246715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047289.P12978788785477246715

namespace A047289

/-- `∑[abs(a(n-3))]-1` -/
def P12978788785477246715.Spec : Prop :=
  ∀ n, P12978788785477246715.a n = A047289 (n + 1)

end A047289

/-! ## A047289.P106925753858215413

`5*n-∑[dr(6*n)%5]`
-/

namespace A047289.P106925753858215413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (6 * n : ℤ) % 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A047289.P106925753858215413

namespace A047289

/-- `5*n-∑[dr(6*n)%5]` -/
def P106925753858215413.Spec : Prop :=
  ∀ n, P106925753858215413.a n = A047289 (n + 1)

end A047289

/-! ## A047289.P9614324798110577117

`∑[2^a(4-a(n-2))]` with `a(0)=0, a(1)=4, a(2)=2`
-/

namespace A047289.P9614324798110577117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 2] fun n f1 =>
  2 ^ f1 (4 - f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047289.P9614324798110577117

namespace A047289

/-- `∑[2^a(4-a(n-2))]` -/
def P9614324798110577117.Spec : Prop :=
  ∀ n, (P9614324798110577117.a n : ℤ) = A047289 (n + 1)

end A047289

/-! ## A047289.P14270819915431758713

`record[n+1-(2*n+1)²%7]`
-/

namespace A047289.P14270819915431758713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (((2 * n + 1) ^ 2 % 7 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047289.P14270819915431758713

namespace A047289

/-- `record[n+1-(2*n+1)²%7]` -/
def P14270819915431758713.Spec : Prop :=
  ∀ n, P14270819915431758713.a n = A047289 (n + 1)

end A047289

/-! ## A047289.P17233051835708640196

`∑[7-a(n-1)-a(n-2)]` with `a(0)=0, a(1)=4, a(2)=2`
-/

namespace A047289.P17233051835708640196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 2] fun n f1 =>
  7 - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047289.P17233051835708640196

namespace A047289

/-- `∑[7-a(n-1)-a(n-2)]` -/
def P17233051835708640196.Spec : Prop :=
  ∀ n, P17233051835708640196.a n = A047289 (n + 1)

end A047289

/-! ## A047289.P16783896845848651299

`comp[4*n+1]-char[3*n]+1+n`
-/

namespace A047289.P16783896845848651299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + 1 + (n : ℤ)

end

end A047289.P16783896845848651299

namespace A047289

/-- `comp[4*n+1]-char[3*n]+1+n` -/
def P16783896845848651299.Spec : Prop :=
  ∀ n, P16783896845848651299.a n = A047289 (n + 1)

end A047289

/-! ## A047289.P17619902740588530265

`abs(∑[A153727(n)]-1)`
-/

namespace A047289.P17619902740588530265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A047289.P17619902740588530265

namespace A047289

/-- `abs(∑[A153727(n)]-1)` -/
def P17619902740588530265.Spec : Prop :=
  ∀ n, P17619902740588530265.a n = A047289 (n + 1)

end A047289

/-! ## A047289.P8695351697010365298

`abs(∑[C(A080425(n)+1, 2)+1]-1)`
-/

namespace A047289.P8695351697010365298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A080425 n + 1).toNat 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1|

end

end A047289.P8695351697010365298

namespace A047289

/-- `abs(∑[C(A080425(n)+1, 2)+1]-1)` -/
def P8695351697010365298.Spec : Prop :=
  ∀ n, P8695351697010365298.a n = A047289 (n + 1)

end A047289

/-! ## A047289.P2980601698670074612

`∪[A047288(n+1), A008589(n)]`
-/

namespace A047289.P2980601698670074612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A047289.P2980601698670074612

namespace A047289

/-- `∪[A047288(n+1), A008589(n)]` -/
def P2980601698670074612.Spec : Prop :=
  ∀ n, (P2980601698670074612.a n : ℤ) = A047289 (n + 1)

end A047289

/-! ## A047289.P11938766078561090340

`∪[A047335(n+1), A017029(n)]`
-/

namespace A047289.P11938766078561090340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A047289.P11938766078561090340

namespace A047289

/-- `∪[A047335(n+1), A017029(n)]` -/
def P11938766078561090340.Spec : Prop :=
  ∀ n, (P11938766078561090340.a n : ℤ) = A047289 (n + 1)

end A047289

/-!
# A047290: Numbers that are congruent to {1, 4, 6} mod 7.

The programs for A047290, the canonical program `A047290.P11639142767701479755` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047290 has offset 1).

The definition of A047290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047290.P11639142767701479755

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=6, a(3)=8`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047290

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P11639142767701479755.Spec : Prop :=
  ∀ n, P11639142767701479755.a n = A047290 (n + 1)

theorem P11639142767701479755.correct : P11639142767701479755.Spec := by
  intro n
  simp only [A047290, Nat.add_sub_cancel]

end A047290

/-! ## A047290.P1460987194279209837

`comp[record[lcm(2, n)]]+n`
-/

namespace A047290.P1460987194279209837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n

end

end A047290.P1460987194279209837

namespace A047290

/-- `comp[record[lcm(2, n)]]+n` -/
def P1460987194279209837.Spec : Prop :=
  ∀ n, (P1460987194279209837.a n : ℤ) = A047290 (n + 1)

end A047290

/-! ## A047290.P5119826967865304960

`ceil(7*n/3)+1`
-/

namespace A047290.P5119826967865304960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈7 * ((n : ℚ) / 3)⌉ + 1

end

end A047290.P5119826967865304960

namespace A047290

/-- `ceil(7*n/3)+1` -/
def P5119826967865304960.Spec : Prop :=
  ∀ n, P5119826967865304960.a n = A047290 (n + 1)

end A047290

/-! ## A047290.P16320178087908951704

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=2`
-/

namespace A047290.P16320178087908951704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047290.P16320178087908951704

namespace A047290

/-- `∑[abs(a(n-3))]` -/
def P16320178087908951704.Spec : Prop :=
  ∀ n, (P16320178087908951704.a n : ℤ) = A047290 (n + 1)

end A047290

/-! ## A047290.P14532251642542742351

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=2`
-/

namespace A047290.P14532251642542742351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047290.P14532251642542742351

namespace A047290

/-- `∑[dr(a(n-3))]` -/
def P14532251642542742351.Spec : Prop :=
  ∀ n, (P14532251642542742351.a n : ℤ) = A047290 (n + 1)

end A047290

/-! ## A047290.P13775804784483550754

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A047290.P13775804784483550754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047290.P13775804784483550754

namespace A047290

/-- `∑[floor(a(n-3))]` -/
def P13775804784483550754.Spec : Prop :=
  ∀ n, (P13775804784483550754.a n : ℤ) = A047290 (n + 1)

end A047290

/-! ## A047290.P5200166531442519629

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A047290.P5200166531442519629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047290.P5200166531442519629

namespace A047290

/-- `∑[ceil(a(n-3))]` -/
def P5200166531442519629.Spec : Prop :=
  ∀ n, (P5200166531442519629.a n : ℤ) = A047290 (n + 1)

end A047290

/-! ## A047290.P5607177919644803771

`∑[round(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=2`

`round` is left out, it is the identity on integers.
-/

namespace A047290.P5607177919644803771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047290.P5607177919644803771

namespace A047290

/-- `∑[round(a(n-3))]` -/
def P5607177919644803771.Spec : Prop :=
  ∀ n, (P5607177919644803771.a n : ℤ) = A047290 (n + 1)

end A047290

/-! ## A047290.P18120845930525820282

`∑[a(n-3)%4]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=2`
-/

namespace A047290.P18120845930525820282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 2] fun n f1 =>
  f1 (n - 3) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047290.P18120845930525820282

namespace A047290

/-- `∑[a(n-3)%4]` -/
def P18120845930525820282.Spec : Prop :=
  ∀ n, (P18120845930525820282.a n : ℤ) = A047290 (n + 1)

end A047290

/-! ## A047290.P9631448548483529336

`∑[gcd(6, a(n-3))]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=2`
-/

namespace A047290.P9631448548483529336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 2] fun n f1 =>
  Nat.gcd 6 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047290.P9631448548483529336

namespace A047290

/-- `∑[gcd(6, a(n-3))]` -/
def P9631448548483529336.Spec : Prop :=
  ∀ n, (P9631448548483529336.a n : ℤ) = A047290 (n + 1)

end A047290

/-! ## A047290.P16112681461965020598

`∑[or(2, a(n-3))]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=2`
-/

namespace A047290.P16112681461965020598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 2] fun n f1 =>
  Nat.lor 2 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047290.P16112681461965020598

namespace A047290

/-- `∑[or(2, a(n-3))]` -/
def P16112681461965020598.Spec : Prop :=
  ∀ n, (P16112681461965020598.a n : ℤ) = A047290 (n + 1)

end A047290

/-! ## A047290.P2226928895089088828

`∑[and(3, a(n-3))]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=2`
-/

namespace A047290.P2226928895089088828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 2] fun n f1 =>
  Nat.land 3 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047290.P2226928895089088828

namespace A047290

/-- `∑[and(3, a(n-3))]` -/
def P2226928895089088828.Spec : Prop :=
  ∀ n, (P2226928895089088828.a n : ℤ) = A047290 (n + 1)

end A047290

/-! ## A047290.P8574595210036665061

`∑[char[3]+a(n-3)]` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A047290.P8574595210036665061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2] fun n f1 =>
  (if ∃ j, f2 j = n then 1 else 0) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047290.P8574595210036665061

namespace A047290

/-- `∑[char[3]+a(n-3)]` -/
def P8574595210036665061.Spec : Prop :=
  ∀ n, (P8574595210036665061.a n : ℤ) = A047290 (n + 1)

end A047290

/-! ## A047290.P14427153850837992860

`round(7/(6*acot(2*n+1)))`
-/

namespace A047290.P14427153850837992860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (7 / (6 * SequenceMachineLib.acot (2 * n + 1 : ℝ)))

end

end A047290.P14427153850837992860

namespace A047290

/-- `round(7/(6*acot(2*n+1)))` -/
def P14427153850837992860.Spec : Prop :=
  ∀ n, P14427153850837992860.a n = A047290 (n + 1)

end A047290

/-! ## A047290.P3645164153350496321

`∑[A323156(2*n+1)]`
-/

namespace A047290.P3645164153350496321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323156 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047290.P3645164153350496321

namespace A047290

/-- `∑[A323156(2*n+1)]` -/
def P3645164153350496321.Spec : Prop :=
  ∀ n, P3645164153350496321.a n = A047290 (n + 1)

end A047290

/-! ## A047290.P11526806397256940878

`∑[A005117(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=2`
-/

namespace A047290.P11526806397256940878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2, 2] fun n f1 =>
  A005117 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047290.P11526806397256940878

namespace A047290

/-- `∑[A005117(a(n-3))]` -/
def P11526806397256940878.Spec : Prop :=
  ∀ n, P11526806397256940878.a n = A047290 (n + 1)

end A047290

/-! ## A047290.P9910049088938267499

`∑[A006530(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=2`
-/

namespace A047290.P9910049088938267499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2, 2] fun n f1 =>
  A006530 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047290.P9910049088938267499

namespace A047290

/-- `∑[A006530(a(n-3))]` -/
def P9910049088938267499.Spec : Prop :=
  ∀ n, P9910049088938267499.a n = A047290 (n + 1)

end A047290

/-! ## A047290.P7010543190263995704

`∑[A020639(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=2`
-/

namespace A047290.P7010543190263995704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2, 2] fun n f1 =>
  A020639 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047290.P7010543190263995704

namespace A047290

/-- `∑[A020639(a(n-3))]` -/
def P7010543190263995704.Spec : Prop :=
  ∀ n, P7010543190263995704.a n = A047290 (n + 1)

end A047290

/-! ## A047290.P12415005522001603536

`∑[A000005(a(n-3)+1)]` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A047290.P12415005522001603536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n f1 =>
  A000005 (f1 (n - 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047290.P12415005522001603536

namespace A047290

/-- `∑[A000005(a(n-3)+1)]` -/
def P12415005522001603536.Spec : Prop :=
  ∀ n, P12415005522001603536.a n = A047290 (n + 1)

end A047290

/-!
# A047291: Numbers that are congruent to {0, 1, 4, 6} mod 7.

The programs for A047291, the canonical program `A047291.P10386418737795824372` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047291 has offset 1).

The definition of A047291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047291.P10386418737795824372

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=6, a(4)=7`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047291

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P10386418737795824372.Spec : Prop :=
  ∀ n, P10386418737795824372.a n = A047291 (n + 1)

theorem P10386418737795824372.correct : P10386418737795824372.Spec := by
  intro n
  simp only [A047291, Nat.add_sub_cancel]

end A047291

/-! ## A047291.P4280570147829581173

`∑[and(3, -n)%3]+n`
-/

namespace A047291.P4280570147829581173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land 3 (-(n : ℤ))) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A047291.P4280570147829581173

namespace A047291

/-- `∑[and(3, -n)%3]+n` -/
def P4280570147829581173.Spec : Prop :=
  ∀ n, P4280570147829581173.a n = A047291 (n + 1)

end A047291

/-! ## A047291.P9574386228984549275

`a(n-4)+7` with `a(0)=0, a(1)=1, a(2)=4, a(3)=6`
-/

namespace A047291.P9574386228984549275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 6] fun n a =>
  a (n - 4) + 7

end

end A047291.P9574386228984549275

namespace A047291

/-- `a(n-4)+7` -/
def P9574386228984549275.Spec : Prop :=
  ∀ n, (P9574386228984549275.a n : ℤ) = A047291 (n + 1)

end A047291

/-! ## A047291.P10659092423542779510

`∑[((3*n)%4)%3]+n`
-/

namespace A047291.P10659092423542779510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n % 4 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047291.P10659092423542779510

namespace A047291

/-- `∑[((3*n)%4)%3]+n` -/
def P10659092423542779510.Spec : Prop :=
  ∀ n, (P10659092423542779510.a n : ℤ) = A047291 (n + 1)

end A047291

/-! ## A047291.P14408153764869562145

`∑[abs(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2, a(4)=1`
-/

namespace A047291.P14408153764869562145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047291.P14408153764869562145

namespace A047291

/-- `∑[abs(a(n-4))]` -/
def P14408153764869562145.Spec : Prop :=
  ∀ n, (P14408153764869562145.a n : ℤ) = A047291 (n + 1)

end A047291

/-! ## A047291.P3503098381024121325

`∑[dr(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2, a(4)=1`
-/

namespace A047291.P3503098381024121325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2, 1] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047291.P3503098381024121325

namespace A047291

/-- `∑[dr(a(n-4))]` -/
def P3503098381024121325.Spec : Prop :=
  ∀ n, (P3503098381024121325.a n : ℤ) = A047291 (n + 1)

end A047291

/-! ## A047291.P15315103285731325780

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047291.P15315103285731325780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047291.P15315103285731325780

namespace A047291

/-- `∑[floor(a(n-4))]` -/
def P15315103285731325780.Spec : Prop :=
  ∀ n, (P15315103285731325780.a n : ℤ) = A047291 (n + 1)

end A047291

/-! ## A047291.P8505447267119627434

`∑[ceil(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2, a(4)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A047291.P8505447267119627434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047291.P8505447267119627434

namespace A047291

/-- `∑[ceil(a(n-4))]` -/
def P8505447267119627434.Spec : Prop :=
  ∀ n, (P8505447267119627434.a n : ℤ) = A047291 (n + 1)

end A047291

/-! ## A047291.P14907310215935367736

`∑[round(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2, a(4)=1`

`round` is left out, it is the identity on integers.
-/

namespace A047291.P14907310215935367736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047291.P14907310215935367736

namespace A047291

/-- `∑[round(a(n-4))]` -/
def P14907310215935367736.Spec : Prop :=
  ∀ n, (P14907310215935367736.a n : ℤ) = A047291 (n + 1)

end A047291

/-! ## A047291.P8629917777663596785

`record[n+2-(n+3)²%7]`
-/

namespace A047291.P8629917777663596785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (((n + 3) ^ 2 % 7 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047291.P8629917777663596785

namespace A047291

/-- `record[n+2-(n+3)²%7]` -/
def P8629917777663596785.Spec : Prop :=
  ∀ n, P8629917777663596785.a n = A047291 (n + 1)

end A047291

/-! ## A047291.P14783955771061398019

`∑[and(n, and(2, n+1)!)]+n`
-/

namespace A047291.P14783955771061398019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (Nat.factorial (Nat.land 2 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047291.P14783955771061398019

namespace A047291

/-- `∑[and(n, and(2, n+1)!)]+n` -/
def P14783955771061398019.Spec : Prop :=
  ∀ n, (P14783955771061398019.a n : ℤ) = A047291 (n + 1)

end A047291

/-! ## A047291.P6097134508313958877

`∑[a(n-4)%4]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2, a(4)=1`
-/

namespace A047291.P6097134508313958877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2, 1] fun n f1 =>
  f1 (n - 4) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047291.P6097134508313958877

namespace A047291

/-- `∑[a(n-4)%4]` -/
def P6097134508313958877.Spec : Prop :=
  ∀ n, (P6097134508313958877.a n : ℤ) = A047291 (n + 1)

end A047291

/-! ## A047291.P9008625034519959904

`∑[gcd(6, a(n-4))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2, a(4)=1`
-/

namespace A047291.P9008625034519959904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2, 1] fun n f1 =>
  Nat.gcd 6 (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047291.P9008625034519959904

namespace A047291

/-- `∑[gcd(6, a(n-4))]` -/
def P9008625034519959904.Spec : Prop :=
  ∀ n, (P9008625034519959904.a n : ℤ) = A047291 (n + 1)

end A047291

/-! ## A047291.P4982901792043353705

`∑[a(n-4)^a(n-2)]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2, a(4)=1`
-/

namespace A047291.P4982901792043353705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2, 1] fun n f1 =>
  f1 (n - 4) ^ f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047291.P4982901792043353705

namespace A047291

/-- `∑[a(n-4)^a(n-2)]` -/
def P4982901792043353705.Spec : Prop :=
  ∀ n, (P4982901792043353705.a n : ℤ) = A047291 (n + 1)

end A047291

/-! ## A047291.P13700314526677905473

`comp[A047370(n+1)]`
-/

namespace A047291.P13700314526677905473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047291.P13700314526677905473

namespace A047291

/-- `comp[A047370(n+1)]` -/
def P13700314526677905473.Spec : Prop :=
  ∀ n, (P13700314526677905473.a n : ℤ) = A047291 (n + 1)

end A047291

/-! ## A047291.P15224877960268936525

`comp[A047350(n+1)+1]`
-/

namespace A047291.P15224877960268936525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047350 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047291.P15224877960268936525

namespace A047291

/-- `comp[A047350(n+1)+1]` -/
def P15224877960268936525.Spec : Prop :=
  ∀ n, (P15224877960268936525.a n : ℤ) = A047291 (n + 1)

end A047291

/-! ## A047291.P14451629249964648329

`comp[A047296(n+1)-1]`
-/

namespace A047291.P14451629249964648329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047296 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047291.P14451629249964648329

namespace A047291

/-- `comp[A047296(n+1)-1]` -/
def P14451629249964648329.Spec : Prop :=
  ∀ n, (P14451629249964648329.a n : ℤ) = A047291 (n + 1)

end A047291

/-! ## A047291.P17315816138082276289

`comp[A047357(n+1)+2]`
-/

namespace A047291.P17315816138082276289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047357 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047291.P17315816138082276289

namespace A047291

/-- `comp[A047357(n+1)+2]` -/
def P17315816138082276289.Spec : Prop :=
  ∀ n, (P17315816138082276289.a n : ℤ) = A047291 (n + 1)

end A047291

/-! ## A047291.P11923954499478757373

`comp[A047375(n+1)-2]`
-/

namespace A047291.P11923954499478757373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047375 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047291.P11923954499478757373

namespace A047291

/-- `comp[A047375(n+1)-2]` -/
def P11923954499478757373.Spec : Prop :=
  ∀ n, (P11923954499478757373.a n : ℤ) = A047291 (n + 1)

end A047291

/-! ## A047291.P16666738119934178119

`A047351(n+1)+and(2, n)`
-/

namespace A047291.P16666738119934178119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047351 (n + 1) + (Nat.land 2 n : ℤ)

end

end A047291.P16666738119934178119

namespace A047291

/-- `A047351(n+1)+and(2, n)` -/
def P16666738119934178119.Spec : Prop :=
  ∀ n, P16666738119934178119.a n = A047291 (n + 1)

end A047291

/-!
# A047292: Numbers that are congruent to {2, 4, 6} mod 7.

The programs for A047292, the canonical program `A047292.P7676826140015462783` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047292 has offset 1).

The definition of A047292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047292.P7676826140015462783

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=4, a(2)=6, a(3)=9`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047292

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P7676826140015462783.Spec : Prop :=
  ∀ n, P7676826140015462783.a n = A047292 (n + 1)

theorem P7676826140015462783.correct : P7676826140015462783.Spec := by
  intro n
  simp only [A047292, Nat.add_sub_cancel]

end A047292

/-! ## A047292.P1500162551971289015

`floor(7*n/3)+2`
-/

namespace A047292.P1500162551971289015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊7 * ((n : ℚ) / 3)⌋ + 2

end

end A047292.P1500162551971289015

namespace A047292

/-- `floor(7*n/3)+2` -/
def P1500162551971289015.Spec : Prop :=
  ∀ n, P1500162551971289015.a n = A047292 (n + 1)

end A047292

/-! ## A047292.P13024790501410181445

`∑[∑{p}[n, val(#, 3)]+2]`
-/

namespace A047292.P13024790501410181445
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 3 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047292.P13024790501410181445

namespace A047292

/-- `∑[∑{p}[n, val(#, 3)]+2]` -/
def P13024790501410181445.Spec : Prop :=
  ∀ n, (P13024790501410181445.a n : ℤ) = A047292 (n + 1)

end A047292

/-! ## A047292.P9339736065454552468

`∑[val(∏{p}[n, #], 3)+2]`
-/

namespace A047292.P9339736065454552468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p) 3 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047292.P9339736065454552468

namespace A047292

/-- `∑[val(∏{p}[n, #], 3)+2]` -/
def P9339736065454552468.Spec : Prop :=
  ∀ n, (P9339736065454552468.a n : ℤ) = A047292 (n + 1)

end A047292

/-! ## A047292.P17256600064230634474

`∑[xor(2, char[3*(n+1)])]`
-/

namespace A047292.P17256600064230634474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047292.P17256600064230634474

namespace A047292

/-- `∑[xor(2, char[3*(n+1)])]` -/
def P17256600064230634474.Spec : Prop :=
  ∀ n, (P17256600064230634474.a n : ℤ) = A047292 (n + 1)

end A047292

/-! ## A047292.P8160485475173387369

`∑[floor(a(n-3))]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047292.P8160485475173387369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047292.P8160485475173387369

namespace A047292

/-- `∑[floor(a(n-3))]` -/
def P8160485475173387369.Spec : Prop :=
  ∀ n, (P8160485475173387369.a n : ℤ) = A047292 (n + 1)

end A047292

/-! ## A047292.P12587027022191114556

`∑[a(n-3)%4]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=3`
-/

namespace A047292.P12587027022191114556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2, 3] fun n f1 =>
  f1 (n - 3) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047292.P12587027022191114556

namespace A047292

/-- `∑[a(n-3)%4]` -/
def P12587027022191114556.Spec : Prop :=
  ∀ n, (P12587027022191114556.a n : ℤ) = A047292 (n + 1)

end A047292

/-! ## A047292.P8627135493390890509

`∑[gcd(6, a(n-3))]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=3`
-/

namespace A047292.P8627135493390890509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2, 3] fun n f1 =>
  Nat.gcd 6 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047292.P8627135493390890509

namespace A047292

/-- `∑[gcd(6, a(n-3))]` -/
def P8627135493390890509.Spec : Prop :=
  ∀ n, (P8627135493390890509.a n : ℤ) = A047292 (n + 1)

end A047292

/-! ## A047292.P15155222059664693758

`ceil(or(1, 2*n)+(n+1)/3)`
-/

namespace A047292.P15155222059664693758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (2 * n) : ℚ) + (n + 1 : ℚ) / 3⌉

end

end A047292.P15155222059664693758

namespace A047292

/-- `ceil(or(1, 2*n)+(n+1)/3)` -/
def P15155222059664693758.Spec : Prop :=
  ∀ n, P15155222059664693758.a n = A047292 (n + 1)

end A047292

/-! ## A047292.P2078314283558428933

`ceil(xor(1, 2*n)+(n+1)/3)`
-/

namespace A047292.P2078314283558428933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (2 * n) : ℚ) + (n + 1 : ℚ) / 3⌉

end

end A047292.P2078314283558428933

namespace A047292

/-- `ceil(xor(1, 2*n)+(n+1)/3)` -/
def P2078314283558428933.Spec : Prop :=
  ∀ n, P2078314283558428933.a n = A047292 (n + 1)

end A047292

/-! ## A047292.P13604324131560437854

`round(or(1, 2*n)+(n+2)/3)`
-/

namespace A047292.P13604324131560437854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (2 * n) : ℚ) + (n + 2 : ℚ) / 3)

end

end A047292.P13604324131560437854

namespace A047292

/-- `round(or(1, 2*n)+(n+2)/3)` -/
def P13604324131560437854.Spec : Prop :=
  ∀ n, P13604324131560437854.a n = A047292 (n + 1)

end A047292

/-! ## A047292.P167841293865917376

`round(xor(1, 2*n)+(n+2)/3)`
-/

namespace A047292.P167841293865917376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (2 * n) : ℚ) + (n + 2 : ℚ) / 3)

end

end A047292.P167841293865917376

namespace A047292

/-- `round(xor(1, 2*n)+(n+2)/3)` -/
def P167841293865917376.Spec : Prop :=
  ∀ n, P167841293865917376.a n = A047292 (n + 1)

end A047292

/-! ## A047292.P9999405417417103089

`floor(a(n-1)+3-n²%3)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A047292.P9999405417417103089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (3 - ((n ^ 2 % 3 : ℕ) : ℤ))

end

end A047292.P9999405417417103089

namespace A047292

/-- `floor(a(n-1)+3-n²%3)` -/
def P9999405417417103089.Spec : Prop :=
  ∀ n, P9999405417417103089.a n = A047292 (n + 1)

end A047292

/-! ## A047292.P8293050434896939008

`∑[(1/a(n-3))^(-1)]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=3`
-/

namespace A047292.P8293050434896939008
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 2, 2, 3] fun n f1 =>
  (1 / f1 (n - 3)) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047292.P8293050434896939008

namespace A047292

/-- `∑[(1/a(n-3))^(-1)]` -/
def P8293050434896939008.Spec : Prop :=
  ∀ n, P8293050434896939008.a n = (A047292 (n + 1) : ℚ)

end A047292

/-! ## A047292.P1755030987058057133

`∑[∑[a(n-3)^3]]` with `a(0)=2, a(1)=0, a(2)=0, a(3)=1, a(4)=-1`
-/

namespace A047292.P1755030987058057133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 0, 1, -1] fun n f2 =>
  f2 (n - 3) ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047292.P1755030987058057133

namespace A047292

/-- `∑[∑[a(n-3)^3]]` -/
def P1755030987058057133.Spec : Prop :=
  ∀ n, P1755030987058057133.a n = A047292 (n + 1)

end A047292

/-! ## A047292.P4883619420485483376

`round(lcm(2, 2*n+1)/3+n+1)`
-/

namespace A047292.P4883619420485483376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm 2 (2 * n + 1) : ℚ) / 3 + (n + 1 : ℚ))

end

end A047292.P4883619420485483376

namespace A047292

/-- `round(lcm(2, 2*n+1)/3+n+1)` -/
def P4883619420485483376.Spec : Prop :=
  ∀ n, P4883619420485483376.a n = A047292 (n + 1)

end A047292

/-! ## A047292.P5060123631778035723

`floor(gcd(3, n)/2+a(n-1)+2)` with `a(0)=2`
-/

namespace A047292.P5060123631778035723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(Nat.gcd 3 n : ℚ) / 2 + (a (n - 1) + 2 : ℚ)⌋

end

end A047292.P5060123631778035723

namespace A047292

/-- `floor(gcd(3, n)/2+a(n-1)+2)` -/
def P5060123631778035723.Spec : Prop :=
  ∀ n, P5060123631778035723.a n = A047292 (n + 1)

end A047292

/-! ## A047292.P5748867739524037907

`floor(a(n-1)+3-n%3/2)` with `a(0)=2`
-/

namespace A047292.P5748867739524037907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(a (n - 1) : ℚ) + (3 - ((n % 3 : ℕ) : ℚ) / 2)⌋

end

end A047292.P5748867739524037907

namespace A047292

/-- `floor(a(n-1)+3-n%3/2)` -/
def P5748867739524037907.Spec : Prop :=
  ∀ n, P5748867739524037907.a n = A047292 (n + 1)

end A047292

/-! ## A047292.P9535252938828742182

`ceil(C(n+1, n)/3+2*n+1)`
-/

namespace A047292.P9535252938828742182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 1) n : ℚ) / 3 + (2 * n + 1 : ℚ)⌉

end

end A047292.P9535252938828742182

namespace A047292

/-- `ceil(C(n+1, n)/3+2*n+1)` -/
def P9535252938828742182.Spec : Prop :=
  ∀ n, P9535252938828742182.a n = A047292 (n + 1)

end A047292

/-!
# A047293: Numbers that are congruent to {0, 2, 4, 6} mod 7.

The programs for A047293, the canonical program `A047293.P14738419033984554259` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047293 has offset 1).

The definition of A047293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047293.P14738419033984554259

`floor(ceil((7*n+2)/2)/2)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047293

/-- `floor(ceil((7*n+2)/2)/2)` -/
def P14738419033984554259.Spec : Prop :=
  ∀ n, P14738419033984554259.a n = A047293 (n + 1)

theorem P14738419033984554259.correct : P14738419033984554259.Spec := by
  intro n
  simp only [A047293, Nat.add_sub_cancel]

end A047293

/-! ## A047293.P18107228942131173616

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=6, a(4)=7`
-/

namespace A047293.P18107228942131173616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4, 6, 7] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047293.P18107228942131173616

namespace A047293

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P18107228942131173616.Spec : Prop :=
  ∀ n, P18107228942131173616.a n = A047293 (n + 1)

end A047293

/-! ## A047293.P17274853704841013404

`∑[floor(sqrt(n%4))]+n`
-/

namespace A047293.P17274853704841013404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (n % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047293.P17274853704841013404

namespace A047293

/-- `∑[floor(sqrt(n%4))]+n` -/
def P17274853704841013404.Spec : Prop :=
  ∀ n, (P17274853704841013404.a n : ℤ) = A047293 (n + 1)

end A047293

/-! ## A047293.P17423413783279056852

`∑[floor(sqrt(and(3, n)))]+n`
-/

namespace A047293.P17423413783279056852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.land 3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047293.P17423413783279056852

namespace A047293

/-- `∑[floor(sqrt(and(3, n)))]+n` -/
def P17423413783279056852.Spec : Prop :=
  ∀ n, (P17423413783279056852.a n : ℤ) = A047293 (n + 1)

end A047293

/-! ## A047293.P10594434369702884451

`∑[(lcm(2, n)%4)!]-1`
-/

namespace A047293.P10594434369702884451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.lcm 2 n % 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047293.P10594434369702884451

namespace A047293

/-- `∑[(lcm(2, n)%4)!]-1` -/
def P10594434369702884451.Spec : Prop :=
  ∀ n, P10594434369702884451.a n = A047293 (n + 1)

end A047293

/-! ## A047293.P1202943553513812663

`∑[(n²%8)%3]+n`
-/

namespace A047293.P1202943553513812663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 8 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047293.P1202943553513812663

namespace A047293

/-- `∑[(n²%8)%3]+n` -/
def P1202943553513812663.Spec : Prop :=
  ∀ n, (P1202943553513812663.a n : ℤ) = A047293 (n + 1)

end A047293

/-! ## A047293.P8361739222683446138

`comp[or(1, n)]-floor(n/4)`
-/

namespace A047293.P8361739222683446138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ⌊(n : ℚ) / 4⌋

end

end A047293.P8361739222683446138

namespace A047293

/-- `comp[or(1, n)]-floor(n/4)` -/
def P8361739222683446138.Spec : Prop :=
  ∀ n, P8361739222683446138.a n = A047293 (n + 1)

end A047293

/-! ## A047293.P13766307446828464160

`comp[comp[or(3, n)]+n+1]`
-/

namespace A047293.P13766307446828464160
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047293.P13766307446828464160

namespace A047293

/-- `comp[comp[or(3, n)]+n+1]` -/
def P13766307446828464160.Spec : Prop :=
  ∀ n, (P13766307446828464160.a n : ℤ) = A047293 (n + 1)

end A047293

/-! ## A047293.P12301112891200085528

`a(n-4)+7` with `a(0)=0, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A047293.P12301112891200085528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 6] fun n a =>
  a (n - 4) + 7

end

end A047293.P12301112891200085528

namespace A047293

/-- `a(n-4)+7` -/
def P12301112891200085528.Spec : Prop :=
  ∀ n, (P12301112891200085528.a n : ℤ) = A047293 (n + 1)

end A047293

/-! ## A047293.P7362891056963606507

`∑[a(n-4)!]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A047293.P7362891056963606507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 2] fun n f1 =>
  Nat.factorial (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047293.P7362891056963606507

namespace A047293

/-- `∑[a(n-4)!]` -/
def P7362891056963606507.Spec : Prop :=
  ∀ n, (P7362891056963606507.a n : ℤ) = A047293 (n + 1)

end A047293

/-! ## A047293.P4486402968640322730

`ceil(∑[3/a(n-1)])` with `a(0)=0, a(1)=2`
-/

namespace A047293.P4486402968640322730
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A047293.P4486402968640322730

namespace A047293

/-- `ceil(∑[3/a(n-1)])` -/
def P4486402968640322730.Spec : Prop :=
  ∀ n, P4486402968640322730.a n = A047293 (n + 1)

end A047293

/-! ## A047293.P8376101787511559498

`round(∑[3/a(n-1)])` with `a(0)=0, a(1)=2`
-/

namespace A047293.P8376101787511559498
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047293.P8376101787511559498

namespace A047293

/-- `round(∑[3/a(n-1)])` -/
def P8376101787511559498.Spec : Prop :=
  ∀ n, P8376101787511559498.a n = A047293 (n + 1)

end A047293

/-! ## A047293.P14917299299886304729

`2*n-and(n, -4)/4`
-/

namespace A047293.P14917299299886304729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) - (Int.land (n : ℤ) (-4) : ℚ) / 4

end

end A047293.P14917299299886304729

namespace A047293

/-- `2*n-and(n, -4)/4` -/
def P14917299299886304729.Spec : Prop :=
  ∀ n, P14917299299886304729.a n = (A047293 (n + 1) : ℚ)

end A047293

/-! ## A047293.P12214344066377710425

`2*n-floor(or(1, n)/4)`
-/

namespace A047293.P12214344066377710425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ⌊(Nat.lor 1 n : ℚ) / 4⌋

end

end A047293.P12214344066377710425

namespace A047293

/-- `2*n-floor(or(1, n)/4)` -/
def P12214344066377710425.Spec : Prop :=
  ∀ n, P12214344066377710425.a n = A047293 (n + 1)

end A047293

/-! ## A047293.P10610326971472849406

`2*n-floor(xor(1, n)/4)`
-/

namespace A047293.P10610326971472849406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ⌊(Nat.xor 1 n : ℚ) / 4⌋

end

end A047293.P10610326971472849406

namespace A047293

/-- `2*n-floor(xor(1, n)/4)` -/
def P10610326971472849406.Spec : Prop :=
  ∀ n, P10610326971472849406.a n = A047293 (n + 1)

end A047293

/-! ## A047293.P14189390192420151748

`record[(n+3)%7+n-3]`
-/

namespace A047293.P14189390192420151748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 3) % 7 : ℕ) : ℤ) + ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047293.P14189390192420151748

namespace A047293

/-- `record[(n+3)%7+n-3]` -/
def P14189390192420151748.Spec : Prop :=
  ∀ n, P14189390192420151748.a n = A047293 (n + 1)

end A047293

/-! ## A047293.P15258285956787252917

`∑[gcd(2, ∑[∑[n+1]])]-1`
-/

namespace A047293.P15258285956787252917
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047293.P15258285956787252917

namespace A047293

/-- `∑[gcd(2, ∑[∑[n+1]])]-1` -/
def P15258285956787252917.Spec : Prop :=
  ∀ n, P15258285956787252917.a n = A047293 (n + 1)

end A047293

/-! ## A047293.P12837087076420597177

`∑[abs(a(n-4))]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=2, a(4)=1`
-/

namespace A047293.P12837087076420597177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 2, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047293.P12837087076420597177

namespace A047293

/-- `∑[abs(a(n-4))]` -/
def P12837087076420597177.Spec : Prop :=
  ∀ n, (P12837087076420597177.a n : ℤ) = A047293 (n + 1)

end A047293

/-! ## A047293.P12116552094292391580

`∑[dr(a(n-4))]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=2, a(4)=1`
-/

namespace A047293.P12116552094292391580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 2, 1] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047293.P12116552094292391580

namespace A047293

/-- `∑[dr(a(n-4))]` -/
def P12116552094292391580.Spec : Prop :=
  ∀ n, (P12116552094292391580.a n : ℤ) = A047293 (n + 1)

end A047293

/-! ## A047293.P4204719481598782038

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=2, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047293.P4204719481598782038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 2, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047293.P4204719481598782038

namespace A047293

/-- `∑[floor(a(n-4))]` -/
def P4204719481598782038.Spec : Prop :=
  ∀ n, (P4204719481598782038.a n : ℤ) = A047293 (n + 1)

end A047293

/-!
# A047294: Numbers that are congruent to {1, 2, 4, 6} mod 7.

The programs for A047294, the canonical program `A047294.P7003508793639367296` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047294 has offset 1).

The definition of A047294 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047294.P7003508793639367296

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6, a(4)=8`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047294

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P7003508793639367296.Spec : Prop :=
  ∀ n, P7003508793639367296.a n = A047294 (n + 1)

theorem P7003508793639367296.correct : P7003508793639367296.Spec := by
  intro n
  simp only [A047294, Nat.add_sub_cancel]

end A047294

/-! ## A047294.P9448737881496309777

`comp[ceil(7*n/3)]`
-/

namespace A047294.P9448737881496309777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈7 * ((n : ℚ) / 3)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047294.P9448737881496309777

namespace A047294

/-- `comp[ceil(7*n/3)]` -/
def P9448737881496309777.Spec : Prop :=
  ∀ n, (P9448737881496309777.a n : ℤ) = A047294 (n + 1)

end A047294

/-! ## A047294.P6001429295961399238

`∑[gcd(2, ∑[∑[n]])]-1`
-/

namespace A047294.P6001429295961399238
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047294.P6001429295961399238

namespace A047294

/-- `∑[gcd(2, ∑[∑[n]])]-1` -/
def P6001429295961399238.Spec : Prop :=
  ∀ n, P6001429295961399238.a n = A047294 (n + 1)

end A047294

/-! ## A047294.P6874313568610866323

`ceil(7/(8*acot(2*n)))`
-/

namespace A047294.P6874313568610866323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈7 / (8 * SequenceMachineLib.acot (2 * n : ℝ))⌉

end

end A047294.P6874313568610866323

namespace A047294

/-- `ceil(7/(8*acot(2*n)))` -/
def P6874313568610866323.Spec : Prop :=
  ∀ n, P6874313568610866323.a n = A047294 (n + 1)

end A047294

/-! ## A047294.P6301390898119033049

`a(n-4)+7` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A047294.P6301390898119033049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 6] fun n a =>
  a (n - 4) + 7

end

end A047294.P6301390898119033049

namespace A047294

/-- `a(n-4)+7` -/
def P6301390898119033049.Spec : Prop :=
  ∀ n, (P6301390898119033049.a n : ℤ) = A047294 (n + 1)

end A047294

/-! ## A047294.P10166851349274243874

`floor((or(1, 7*n)+3)/4)`
-/

namespace A047294.P10166851349274243874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (7 * n) + 3 : ℚ) / 4⌋

end

end A047294.P10166851349274243874

namespace A047294

/-- `floor((or(1, 7*n)+3)/4)` -/
def P10166851349274243874.Spec : Prop :=
  ∀ n, P10166851349274243874.a n = A047294 (n + 1)

end A047294

/-! ## A047294.P16284909065683327707

`or(1, 2*n)-ceil(n/4)`
-/

namespace A047294.P16284909065683327707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 * n) : ℤ) - ⌈(n : ℚ) / 4⌉

end

end A047294.P16284909065683327707

namespace A047294

/-- `or(1, 2*n)-ceil(n/4)` -/
def P16284909065683327707.Spec : Prop :=
  ∀ n, P16284909065683327707.a n = A047294 (n + 1)

end A047294

/-! ## A047294.P3242104180382013498

`xor(1, 2*n)-ceil(n/4)`
-/

namespace A047294.P3242104180382013498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (2 * n) : ℤ) - ⌈(n : ℚ) / 4⌉

end

end A047294.P3242104180382013498

namespace A047294

/-- `xor(1, 2*n)-ceil(n/4)` -/
def P3242104180382013498.Spec : Prop :=
  ∀ n, P3242104180382013498.a n = A047294 (n + 1)

end A047294

/-! ## A047294.P11331730648383686650

`∑[(∑[∑[n]]+1)%2]+n`
-/

namespace A047294.P11331730648383686650
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047294.P11331730648383686650

namespace A047294

/-- `∑[(∑[∑[n]]+1)%2]+n` -/
def P11331730648383686650.Spec : Prop :=
  ∀ n, (P11331730648383686650.a n : ℤ) = A047294 (n + 1)

end A047294

/-! ## A047294.P11279295761268951703

`∑[abs(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=2`
-/

namespace A047294.P11279295761268951703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 2, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047294.P11279295761268951703

namespace A047294

/-- `∑[abs(a(n-4))]` -/
def P11279295761268951703.Spec : Prop :=
  ∀ n, (P11279295761268951703.a n : ℤ) = A047294 (n + 1)

end A047294

/-! ## A047294.P846104375250673557

`∑[a(n-4)!]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=2`
-/

namespace A047294.P846104375250673557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 2, 2] fun n f1 =>
  Nat.factorial (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047294.P846104375250673557

namespace A047294

/-- `∑[a(n-4)!]` -/
def P846104375250673557.Spec : Prop :=
  ∀ n, (P846104375250673557.a n : ℤ) = A047294 (n + 1)

end A047294

/-! ## A047294.P18292904832250868273

`∑[dr(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=2`
-/

namespace A047294.P18292904832250868273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 2, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047294.P18292904832250868273

namespace A047294

/-- `∑[dr(a(n-4))]` -/
def P18292904832250868273.Spec : Prop :=
  ∀ n, (P18292904832250868273.a n : ℤ) = A047294 (n + 1)

end A047294

/-! ## A047294.P6502485776647676559

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A047294.P6502485776647676559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 2, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047294.P6502485776647676559

namespace A047294

/-- `∑[floor(a(n-4))]` -/
def P6502485776647676559.Spec : Prop :=
  ∀ n, (P6502485776647676559.a n : ℤ) = A047294 (n + 1)

end A047294

/-! ## A047294.P9258268832645194404

`∑[ceil(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A047294.P9258268832645194404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 2, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047294.P9258268832645194404

namespace A047294

/-- `∑[ceil(a(n-4))]` -/
def P9258268832645194404.Spec : Prop :=
  ∀ n, (P9258268832645194404.a n : ℤ) = A047294 (n + 1)

end A047294

/-! ## A047294.P14818963133223015251

`∑[round(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=2`

`round` is left out, it is the identity on integers.
-/

namespace A047294.P14818963133223015251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 2, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047294.P14818963133223015251

namespace A047294

/-- `∑[round(a(n-4))]` -/
def P14818963133223015251.Spec : Prop :=
  ∀ n, (P14818963133223015251.a n : ℤ) = A047294 (n + 1)

end A047294

/-! ## A047294.P2544906815577910513

`∑[2-n%a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A047294.P2544906815577910513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 - Int.tmod (n : ℤ) (f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047294.P2544906815577910513

namespace A047294

/-- `∑[2-n%a(n-2)]` -/
def P2544906815577910513.Spec : Prop :=
  ∀ n, P2544906815577910513.a n = A047294 (n + 1)

end A047294

/-! ## A047294.P15861140397678665055

`2*n-and(n-1, -4)/4`
-/

namespace A047294.P15861140397678665055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) - (Int.land ((n : ℤ) - 1) (-4) : ℚ) / 4

end

end A047294.P15861140397678665055

namespace A047294

/-- `2*n-and(n-1, -4)/4` -/
def P15861140397678665055.Spec : Prop :=
  ∀ n, P15861140397678665055.a n = (A047294 (n + 1) : ℚ)

end A047294

/-! ## A047294.P12675714619480484215

`lcm(2, 2*n)-floor((n-1)/4)`
-/

namespace A047294.P12675714619480484215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (2 * n) : ℤ) - ⌊((n : ℤ) - 1 : ℚ) / 4⌋

end

end A047294.P12675714619480484215

namespace A047294

/-- `lcm(2, 2*n)-floor((n-1)/4)` -/
def P12675714619480484215.Spec : Prop :=
  ∀ n, P12675714619480484215.a n = A047294 (n + 1)

end A047294

/-! ## A047294.P15446803220219930037

`2*n-floor(or(1, n-1)/4)`
-/

namespace A047294.P15446803220219930037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ⌊(Int.lor 1 ((n : ℤ) - 1) : ℚ) / 4⌋

end

end A047294.P15446803220219930037

namespace A047294

/-- `2*n-floor(or(1, n-1)/4)` -/
def P15446803220219930037.Spec : Prop :=
  ∀ n, P15446803220219930037.a n = A047294 (n + 1)

end A047294

/-! ## A047294.P3744429441811899073

`2*n-floor(xor(1, n-1)/4)`
-/

namespace A047294.P3744429441811899073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ⌊(Int.xor 1 ((n : ℤ) - 1) : ℚ) / 4⌋

end

end A047294.P3744429441811899073

namespace A047294

/-- `2*n-floor(xor(1, n-1)/4)` -/
def P3744429441811899073.Spec : Prop :=
  ∀ n, P3744429441811899073.a n = A047294 (n + 1)

end A047294

/-!
# A047295: Numbers that are congruent to {0, 1, 2, 4, 6} mod 7.

The programs for A047295, the canonical program `A047295.P16891616264724125785` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047295 has offset 1).

The definition of A047295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047295.P10691860250363134264

`comp[a(n-2)+7]` with `a(0)=3, a(1)=5`
-/

namespace A047295.P10691860250363134264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  f1 (n - 2) + 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047295.P10691860250363134264

namespace A047295

/-- `comp[a(n-2)+7]` -/
def P10691860250363134264.Spec : Prop :=
  ∀ n, (P10691860250363134264.a n : ℤ) = A047295 (n + 1)

end A047295

/-! ## A047295.P16891616264724125785

`∑[floor(n%5/3)]+n`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047295

/-- `∑[floor(n%5/3)]+n` -/
def P16891616264724125785.Spec : Prop :=
  ∀ n, P16891616264724125785.a n = A047295 (n + 1)

theorem P16891616264724125785.correct : P16891616264724125785.Spec := by
  intro n
  simp only [A047295, Nat.add_sub_cancel]

end A047295

/-! ## A047295.P647647899844991655

`comp[3*comp[3*n]-n]`
-/

namespace A047295.P647647899844991655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047295.P647647899844991655

namespace A047295

/-- `comp[3*comp[3*n]-n]` -/
def P647647899844991655.Spec : Prop :=
  ∀ n, (P647647899844991655.a n : ℤ) = A047295 (n + 1)

end A047295

/-! ## A047295.P6999016718961062324

`a(n-5)+7` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=6`
-/

namespace A047295.P6999016718961062324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 4, 6] fun n a =>
  a (n - 5) + 7

end

end A047295.P6999016718961062324

namespace A047295

/-- `a(n-5)+7` -/
def P6999016718961062324.Spec : Prop :=
  ∀ n, (P6999016718961062324.a n : ℤ) = A047295 (n + 1)

end A047295

/-! ## A047295.P1161290173721475329

`∑[a(n-5)!]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=2`
-/

namespace A047295.P1161290173721475329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2, 2] fun n f1 =>
  Nat.factorial (f1 (n - 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047295.P1161290173721475329

namespace A047295

/-- `∑[a(n-5)!]` -/
def P1161290173721475329.Spec : Prop :=
  ∀ n, (P1161290173721475329.a n : ℤ) = A047295 (n + 1)

end A047295

/-! ## A047295.P3392609963080718873

`comp[or(n, n+3)]-floor(n/5)`
-/

namespace A047295.P3392609963080718873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ⌊(n : ℚ) / 5⌋

end

end A047295.P3392609963080718873

namespace A047295

/-- `comp[or(n, n+3)]-floor(n/5)` -/
def P3392609963080718873.Spec : Prop :=
  ∀ n, P3392609963080718873.a n = A047295 (n + 1)

end A047295

/-! ## A047295.P5997588890578002682

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047295.P5997588890578002682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2, 2, 1] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047295.P5997588890578002682

namespace A047295

/-- `∑[floor(a(n-5))]` -/
def P5997588890578002682.Spec : Prop :=
  ∀ n, (P5997588890578002682.a n : ℤ) = A047295 (n + 1)

end A047295

/-! ## A047295.P13568779239166294971

`∑[a(n-5)^a(n-2)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=1`
-/

namespace A047295.P13568779239166294971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2, 2, 1] fun n f1 =>
  f1 (n - 5) ^ f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047295.P13568779239166294971

namespace A047295

/-- `∑[a(n-5)^a(n-2)]` -/
def P13568779239166294971.Spec : Prop :=
  ∀ n, (P13568779239166294971.a n : ℤ) = A047295 (n + 1)

end A047295

/-! ## A047295.P7157693128168111084

`∑[A011658(n)]+n`
-/

namespace A047295.P7157693128168111084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A047295.P7157693128168111084

namespace A047295

/-- `∑[A011658(n)]+n` -/
def P7157693128168111084.Spec : Prop :=
  ∀ n, P7157693128168111084.a n = A047295 (n + 1)

end A047295

/-! ## A047295.P706617327525365154

`eq[0, A277143(n+1)]`
-/

namespace A047295.P706617327525365154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277143 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047295.P706617327525365154

namespace A047295

/-- `eq[0, A277143(n+1)]` -/
def P706617327525365154.Spec : Prop :=
  ∀ n, (P706617327525365154.a n : ℤ) = A047295 (n + 1)

end A047295

/-! ## A047295.P2607023201722821148

`3*n-A047434(n+1)`
-/

namespace A047295.P2607023201722821148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A047434 (n + 1)

end

end A047295.P2607023201722821148

namespace A047295

/-- `3*n-A047434(n+1)` -/
def P2607023201722821148.Spec : Prop :=
  ∀ n, P2607023201722821148.a n = A047295 (n + 1)

end A047295

/-! ## A047295.P13277011751449623052

`3*(n+1)-A229838(n+1)`
-/

namespace A047295.P13277011751449623052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A229838 (n + 1)

end

end A047295.P13277011751449623052

namespace A047295

/-- `3*(n+1)-A229838(n+1)` -/
def P13277011751449623052.Spec : Prop :=
  ∀ n, P13277011751449623052.a n = A047295 (n + 1)

end A047295

/-! ## A047295.P1338153131249035260

`A187318(n)-A288156(n)`
-/

namespace A047295.P1338153131249035260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187318 n - A288156 n

end

end A047295.P1338153131249035260

namespace A047295

/-- `A187318(n)-A288156(n)` -/
def P1338153131249035260.Spec : Prop :=
  ∀ n, P1338153131249035260.a n = A047295 (n + 1)

end A047295

/-! ## A047295.P8095662699639105992

`A047373(n+1)+A011658(n)`
-/

namespace A047295.P8095662699639105992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047373 (n + 1) + A011658 n

end

end A047295.P8095662699639105992

namespace A047295

/-- `A047373(n+1)+A011658(n)` -/
def P8095662699639105992.Spec : Prop :=
  ∀ n, P8095662699639105992.a n = A047295 (n + 1)

end A047295

/-! ## A047295.P950077923857479500

`A047412(n+1)-A002266(n)`
-/

namespace A047295.P950077923857479500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047412 (n + 1) - A002266 n

end

end A047295.P950077923857479500

namespace A047295

/-- `A047412(n+1)-A002266(n)` -/
def P950077923857479500.Spec : Prop :=
  ∀ n, P950077923857479500.a n = A047295 (n + 1)

end A047295

/-! ## A047295.P5705141407805437630

`A016777(n)-A047584(n+1)`
-/

namespace A047295.P5705141407805437630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - A047584 (n + 1)

end

end A047295.P5705141407805437630

namespace A047295

/-- `A016777(n)-A047584(n+1)` -/
def P5705141407805437630.Spec : Prop :=
  ∀ n, P5705141407805437630.a n = A047295 (n + 1)

end A047295

/-! ## A047295.P2301354324761558882

`∪[A047294(n+1), A008589(n)]`
-/

namespace A047295.P2301354324761558882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A047295.P2301354324761558882

namespace A047295

/-- `∪[A047294(n+1), A008589(n)]` -/
def P2301354324761558882.Spec : Prop :=
  ∀ n, (P2301354324761558882.a n : ℤ) = A047295 (n + 1)

end A047295

/-! ## A047295.P8493461482874426788

`∪[A047293(n+1), A016993(n)]`
-/

namespace A047295.P8493461482874426788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A047295.P8493461482874426788

namespace A047295

/-- `∪[A047293(n+1), A016993(n)]` -/
def P8493461482874426788.Spec : Prop :=
  ∀ n, (P8493461482874426788.a n : ℤ) = A047295 (n + 1)

end A047295

/-! ## A047295.P8436280362388164200

`∪[A047291(n+1), A017005(n)]`
-/

namespace A047295.P8436280362388164200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A047295.P8436280362388164200

namespace A047295

/-- `∪[A047291(n+1), A017005(n)]` -/
def P8436280362388164200.Spec : Prop :=
  ∀ n, (P8436280362388164200.a n : ℤ) = A047295 (n + 1)

end A047295

/-! ## A047295.P2242530420741608185

`∪[A047279(n+1), A017029(n)]`
-/

namespace A047295.P2242530420741608185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A047295.P2242530420741608185

namespace A047295

/-- `∪[A047279(n+1), A017029(n)]` -/
def P2242530420741608185.Spec : Prop :=
  ∀ n, (P2242530420741608185.a n : ℤ) = A047295 (n + 1)

end A047295

/-!
# A047296: Numbers that are congruent to {3, 4, 6} mod 7.

The programs for A047296, the canonical program `A047296.P14236419836244817206` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047296 has offset 1).

The definition of A047296 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047296.P14236419836244817206

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=3, a(1)=4, a(2)=6, a(3)=10`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047296

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P14236419836244817206.Spec : Prop :=
  ∀ n, P14236419836244817206.a n = A047296 (n + 1)

theorem P14236419836244817206.correct : P14236419836244817206.Spec := by
  intro n
  simp only [A047296, Nat.add_sub_cancel]

end A047296

/-! ## A047296.P14106593742612687200

`∑[gcd(4, n%3)]-1`
-/

namespace A047296.P14106593742612687200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047296.P14106593742612687200

namespace A047296

/-- `∑[gcd(4, n%3)]-1` -/
def P14106593742612687200.Spec : Prop :=
  ∀ n, P14106593742612687200.a n = A047296 (n + 1)

end A047296

/-! ## A047296.P82086705605841720

`a(n-3)+7` with `a(0)=3, a(1)=4, a(2)=6`
-/

namespace A047296.P82086705605841720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 6] fun n a =>
  a (n - 3) + 7

end

end A047296.P82086705605841720

namespace A047296

/-- `a(n-3)+7` -/
def P82086705605841720.Spec : Prop :=
  ∀ n, (P82086705605841720.a n : ℤ) = A047296 (n + 1)

end A047296

/-! ## A047296.P5011338865198289926

`∑[floor(cosh(tan(a(n-1))))]` with `a(0)=3`
-/

namespace A047296.P5011338865198289926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  ⌊Real.cosh (Real.tan (f1 (n - 1) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047296.P5011338865198289926

namespace A047296

/-- `∑[floor(cosh(tan(a(n-1))))]` -/
def P5011338865198289926.Spec : Prop :=
  ∀ n, P5011338865198289926.a n = A047296 (n + 1)

end A047296

/-! ## A047296.P15567883333269749219

`∑[abs(a(n-3))]` with `a(0)=3, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A047296.P15567883333269749219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 2, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047296.P15567883333269749219

namespace A047296

/-- `∑[abs(a(n-3))]` -/
def P15567883333269749219.Spec : Prop :=
  ∀ n, (P15567883333269749219.a n : ℤ) = A047296 (n + 1)

end A047296

/-! ## A047296.P5928288551381070347

`∑[dr(a(n-3))]` with `a(0)=3, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A047296.P5928288551381070347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 2, 4] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047296.P5928288551381070347

namespace A047296

/-- `∑[dr(a(n-3))]` -/
def P5928288551381070347.Spec : Prop :=
  ∀ n, (P5928288551381070347.a n : ℤ) = A047296 (n + 1)

end A047296

/-! ## A047296.P15981160405052545168

`∑[floor(a(n-3))]` with `a(0)=3, a(1)=1, a(2)=2, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A047296.P15981160405052545168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 2, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047296.P15981160405052545168

namespace A047296

/-- `∑[floor(a(n-3))]` -/
def P15981160405052545168.Spec : Prop :=
  ∀ n, (P15981160405052545168.a n : ℤ) = A047296 (n + 1)

end A047296

/-! ## A047296.P16539658504886136393

`∑[ceil(a(n-3))]` with `a(0)=3, a(1)=1, a(2)=2, a(3)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A047296.P16539658504886136393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 2, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047296.P16539658504886136393

namespace A047296

/-- `∑[ceil(a(n-3))]` -/
def P16539658504886136393.Spec : Prop :=
  ∀ n, (P16539658504886136393.a n : ℤ) = A047296 (n + 1)

end A047296

/-! ## A047296.P1750279383251109010

`∑[2^((n+2)%3)]-1`
-/

namespace A047296.P1750279383251109010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ ((n + 2) % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047296.P1750279383251109010

namespace A047296

/-- `∑[2^((n+2)%3)]-1` -/
def P1750279383251109010.Spec : Prop :=
  ∀ n, P1750279383251109010.a n = A047296 (n + 1)

end A047296

/-! ## A047296.P14073661368373272951

`∑[ceil(cosh((n-1)%3))]+1`
-/

namespace A047296.P14073661368373272951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Int.tmod ((n : ℤ) - 1) 3 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A047296.P14073661368373272951

namespace A047296

/-- `∑[ceil(cosh((n-1)%3))]+1` -/
def P14073661368373272951.Spec : Prop :=
  ∀ n, P14073661368373272951.a n = A047296 (n + 1)

end A047296

/-! ## A047296.P9655013023683479379

`∑[a(n-3)%5]` with `a(0)=3, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A047296.P9655013023683479379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 2, 4] fun n f1 =>
  f1 (n - 3) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047296.P9655013023683479379

namespace A047296

/-- `∑[a(n-3)%5]` -/
def P9655013023683479379.Spec : Prop :=
  ∀ n, (P9655013023683479379.a n : ℤ) = A047296 (n + 1)

end A047296

/-! ## A047296.P13427215299850052413

`∑[2^and(3, a(n-1))]` with `a(0)=3, a(1)=1`
-/

namespace A047296.P13427215299850052413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  2 ^ Nat.land 3 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047296.P13427215299850052413

namespace A047296

/-- `∑[2^and(3, a(n-1))]` -/
def P13427215299850052413.Spec : Prop :=
  ∀ n, (P13427215299850052413.a n : ℤ) = A047296 (n + 1)

end A047296

/-! ## A047296.P8760351889947517513

`∑[5-a(a(n-1)-1)]` with `a(0)=3, a(1)=1`
-/

namespace A047296.P8760351889947517513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  5 - f1 (f1 (n - 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047296.P8760351889947517513

namespace A047296

/-- `∑[5-a(a(n-1)-1)]` -/
def P8760351889947517513.Spec : Prop :=
  ∀ n, P8760351889947517513.a n = A047296 (n + 1)

end A047296

/-! ## A047296.P9025190422219428637

`A047370(n+1)+1`
-/

namespace A047296.P9025190422219428637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047370 (n + 1) + 1

end

end A047296.P9025190422219428637

namespace A047296

/-- `A047370(n+1)+1` -/
def P9025190422219428637.Spec : Prop :=
  ∀ n, P9025190422219428637.a n = A047296 (n + 1)

end A047296

/-! ## A047296.P7221696618865599896

`A047350(n+1)+2`
-/

namespace A047296.P7221696618865599896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047350 (n + 1) + 2

end

end A047296.P7221696618865599896

namespace A047296

/-- `A047350(n+1)+2` -/
def P7221696618865599896.Spec : Prop :=
  ∀ n, P7221696618865599896.a n = A047296 (n + 1)

end A047296

/-! ## A047296.P8629574620797696394

`A047357(n+1)+3`
-/

namespace A047296.P8629574620797696394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047357 (n + 1) + 3

end

end A047296.P8629574620797696394

namespace A047296

/-- `A047357(n+1)+3` -/
def P8629574620797696394.Spec : Prop :=
  ∀ n, P8629574620797696394.a n = A047296 (n + 1)

end A047296

/-! ## A047296.P5728542214200768890

`∑[4/A153727(n)]-1`
-/

namespace A047296.P5728542214200768890
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (A153727 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A047296.P5728542214200768890

namespace A047296

/-- `∑[4/A153727(n)]-1` -/
def P5728542214200768890.Spec : Prop :=
  ∀ n, P5728542214200768890.a n = (A047296 (n + 1) : ℚ)

end A047296

/-! ## A047296.P15514236379991826048

`∑[A010741(a(n-1))]` with `a(0)=3`
-/

namespace A047296.P15514236379991826048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A010741 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047296.P15514236379991826048

namespace A047296

/-- `∑[A010741(a(n-1))]` -/
def P15514236379991826048.Spec : Prop :=
  ∀ n, P15514236379991826048.a n = A047296 (n + 1)

end A047296

/-!
# A047297: Numbers that are congruent to {0, 3, 4, 6} mod 7.

The programs for A047297, the canonical program `A047297.P6545727981941344053` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047297 has offset 1).

The definition of A047297 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047297.P6545727981941344053

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=3, a(2)=4, a(3)=6, a(4)=7`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047297

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P6545727981941344053.Spec : Prop :=
  ∀ n, P6545727981941344053.a n = A047297 (n + 1)

theorem P6545727981941344053.correct : P6545727981941344053.Spec := by
  intro n
  simp only [A047297, Nat.add_sub_cancel]

end A047297

/-! ## A047297.P16273859098865254680

`comp[∑[gcd(3, ∑[n])]-2]`
-/

namespace A047297.P16273859098865254680
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047297.P16273859098865254680

namespace A047297

/-- `comp[∑[gcd(3, ∑[n])]-2]` -/
def P16273859098865254680.Spec : Prop :=
  ∀ n, (P16273859098865254680.a n : ℤ) = A047297 (n + 1)

end A047297

/-! ## A047297.P6122375532994580901

`∑[log2(gcd(4, 1-n))]+n`
-/

namespace A047297.P6122375532994580901
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 4 (1 - (n : ℤ)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)

end

end A047297.P6122375532994580901

namespace A047297

/-- `∑[log2(gcd(4, 1-n))]+n` -/
def P6122375532994580901.Spec : Prop :=
  ∀ n, P6122375532994580901.a n = (A047297 (n + 1) : ℝ)

end A047297

/-! ## A047297.P1847248415616274294

`comp[or(1, comp[or(3, n)])+n]`
-/

namespace A047297.P1847248415616274294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047297.P1847248415616274294

namespace A047297

/-- `comp[or(1, comp[or(3, n)])+n]` -/
def P1847248415616274294.Spec : Prop :=
  ∀ n, (P1847248415616274294.a n : ℤ) = A047297 (n + 1)

end A047297

/-! ## A047297.P15395891188203370354

`a(n-4)+7` with `a(0)=0, a(1)=3, a(2)=4, a(3)=6`
-/

namespace A047297.P15395891188203370354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4, 6] fun n a =>
  a (n - 4) + 7

end

end A047297.P15395891188203370354

namespace A047297

/-- `a(n-4)+7` -/
def P15395891188203370354.Spec : Prop :=
  ∀ n, (P15395891188203370354.a n : ℤ) = A047297 (n + 1)

end A047297

/-! ## A047297.P4838176853650000653

`ceil(xor(1, 7*n+1)/4)`
-/

namespace A047297.P4838176853650000653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (7 * n + 1) : ℚ) / 4⌉

end

end A047297.P4838176853650000653

namespace A047297

/-- `ceil(xor(1, 7*n+1)/4)` -/
def P4838176853650000653.Spec : Prop :=
  ∀ n, P4838176853650000653.a n = A047297 (n + 1)

end A047297

/-! ## A047297.P10603859001081964305

`record[n-and(2, (n+1)%7)]`
-/

namespace A047297.P10603859001081964305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land 2 ((n + 1) % 7) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047297.P10603859001081964305

namespace A047297

/-- `record[n-and(2, (n+1)%7)]` -/
def P10603859001081964305.Spec : Prop :=
  ∀ n, P10603859001081964305.a n = A047297 (n + 1)

end A047297

/-! ## A047297.P15319227204068096958

`∑[abs(a(n-4))]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=2, a(4)=1`
-/

namespace A047297.P15319227204068096958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 2, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047297.P15319227204068096958

namespace A047297

/-- `∑[abs(a(n-4))]` -/
def P15319227204068096958.Spec : Prop :=
  ∀ n, (P15319227204068096958.a n : ℤ) = A047297 (n + 1)

end A047297

/-! ## A047297.P3186029010422939120

`∑[dr(a(n-4))]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=2, a(4)=1`
-/

namespace A047297.P3186029010422939120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 2, 1] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047297.P3186029010422939120

namespace A047297

/-- `∑[dr(a(n-4))]` -/
def P3186029010422939120.Spec : Prop :=
  ∀ n, (P3186029010422939120.a n : ℤ) = A047297 (n + 1)

end A047297

/-! ## A047297.P1542482265879116132

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=2, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047297.P1542482265879116132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 2, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047297.P1542482265879116132

namespace A047297

/-- `∑[floor(a(n-4))]` -/
def P1542482265879116132.Spec : Prop :=
  ∀ n, (P1542482265879116132.a n : ℤ) = A047297 (n + 1)

end A047297

/-! ## A047297.P5809723326151533861

`∑[ceil(a(n-4))]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=2, a(4)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A047297.P5809723326151533861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 2, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047297.P5809723326151533861

namespace A047297

/-- `∑[ceil(a(n-4))]` -/
def P5809723326151533861.Spec : Prop :=
  ∀ n, (P5809723326151533861.a n : ℤ) = A047297 (n + 1)

end A047297

/-! ## A047297.P14277508177411579095

`∑[round(a(n-4))]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=2, a(4)=1`

`round` is left out, it is the identity on integers.
-/

namespace A047297.P14277508177411579095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 2, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047297.P14277508177411579095

namespace A047297

/-- `∑[round(a(n-4))]` -/
def P14277508177411579095.Spec : Prop :=
  ∀ n, (P14277508177411579095.a n : ℤ) = A047297 (n + 1)

end A047297

/-! ## A047297.P10834686787051204628

`∑[a(n-4)%4]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=2, a(4)=1`
-/

namespace A047297.P10834686787051204628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 2, 1] fun n f1 =>
  f1 (n - 4) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047297.P10834686787051204628

namespace A047297

/-- `∑[a(n-4)%4]` -/
def P10834686787051204628.Spec : Prop :=
  ∀ n, (P10834686787051204628.a n : ℤ) = A047297 (n + 1)

end A047297

/-! ## A047297.P12617694577874366909

`∑[4-a(a(n-2))]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=2`
-/

namespace A047297.P12617694577874366909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 1, 2] fun n f1 =>
  4 - f1 (f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047297.P12617694577874366909

namespace A047297

/-- `∑[4-a(a(n-2))]` -/
def P12617694577874366909.Spec : Prop :=
  ∀ n, P12617694577874366909.a n = A047297 (n + 1)

end A047297

/-! ## A047297.P15248721382960306528

`floor(2*n+1-xor(1, n)/4)`
-/

namespace A047297.P15248721382960306528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℚ) - (Nat.xor 1 n : ℚ) / 4⌋

end

end A047297.P15248721382960306528

namespace A047297

/-- `floor(2*n+1-xor(1, n)/4)` -/
def P15248721382960306528.Spec : Prop :=
  ∀ n, P15248721382960306528.a n = A047297 (n + 1)

end A047297

/-! ## A047297.P7539966973862732984

`round(2*n-xor(1, n-2)/4)`
-/

namespace A047297.P7539966973862732984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℚ) - (Int.xor 1 ((n : ℤ) - 2) : ℚ) / 4)

end

end A047297.P7539966973862732984

namespace A047297

/-- `round(2*n-xor(1, n-2)/4)` -/
def P7539966973862732984.Spec : Prop :=
  ∀ n, P7539966973862732984.a n = A047297 (n + 1)

end A047297

/-! ## A047297.P8827034565629142026

`round(2*n-or(2, n-3)/4)`
-/

namespace A047297.P8827034565629142026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℚ) - (Int.lor 2 ((n : ℤ) - 3) : ℚ) / 4)

end

end A047297.P8827034565629142026

namespace A047297

/-- `round(2*n-or(2, n-3)/4)` -/
def P8827034565629142026.Spec : Prop :=
  ∀ n, P8827034565629142026.a n = A047297 (n + 1)

end A047297

/-! ## A047297.P5431379602716178285

`∑[floor(gcd(n+3, n-1)/2)]+n`
-/

namespace A047297.P5431379602716178285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.gcd (n + 3 : ℤ) ((n : ℤ) - 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A047297.P5431379602716178285

namespace A047297

/-- `∑[floor(gcd(n+3, n-1)/2)]+n` -/
def P5431379602716178285.Spec : Prop :=
  ∀ n, P5431379602716178285.a n = A047297 (n + 1)

end A047297

/-!
# A047298: Numbers that are congruent to {1, 3, 4, 6} mod 7.

The programs for A047298, the canonical program `A047298.P550719812268701662` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047298 has offset 1).

The definition of A047298 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047298.P550719812268701662

`ceil(ceil((7*n+2)/2)/2)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047298

/-- `ceil(ceil((7*n+2)/2)/2)` -/
def P550719812268701662.Spec : Prop :=
  ∀ n, P550719812268701662.a n = A047298 (n + 1)

theorem P550719812268701662.correct : P550719812268701662.Spec := by
  intro n
  simp only [A047298, Nat.add_sub_cancel]

end A047298

/-! ## A047298.P11577430574390521734

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=6, a(4)=8`
-/

namespace A047298.P11577430574390521734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 6, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047298.P11577430574390521734

namespace A047298

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P11577430574390521734.Spec : Prop :=
  ∀ n, P11577430574390521734.a n = A047298 (n + 1)

end A047298

/-! ## A047298.P3642412983176593574

`∑[ceil(cot(gcd(4, n)))]+n`
-/

namespace A047298.P3642412983176593574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (Nat.gcd 4 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A047298.P3642412983176593574

namespace A047298

/-- `∑[ceil(cot(gcd(4, n)))]+n` -/
def P3642412983176593574.Spec : Prop :=
  ∀ n, P3642412983176593574.a n = A047298 (n + 1)

end A047298

/-! ## A047298.P13662885522027076680

`comp[5*n]+∑[n%2]`
-/

namespace A047298.P13662885522027076680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A047298.P13662885522027076680

namespace A047298

/-- `comp[5*n]+∑[n%2]` -/
def P13662885522027076680.Spec : Prop :=
  ∀ n, (P13662885522027076680.a n : ℤ) = A047298 (n + 1)

end A047298

/-! ## A047298.P13580616513399833994

`a(n-4)+7` with `a(0)=1, a(1)=3, a(2)=4, a(3)=6`
-/

namespace A047298.P13580616513399833994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4, 6] fun n a =>
  a (n - 4) + 7

end

end A047298.P13580616513399833994

namespace A047298

/-- `a(n-4)+7` -/
def P13580616513399833994.Spec : Prop :=
  ∀ n, (P13580616513399833994.a n : ℤ) = A047298 (n + 1)

end A047298

/-! ## A047298.P8976901264953447552

`round(or(1, 7*n+3)/4)`
-/

namespace A047298.P8976901264953447552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (7 * n + 3) : ℚ) / 4)

end

end A047298.P8976901264953447552

namespace A047298

/-- `round(or(1, 7*n+3)/4)` -/
def P8976901264953447552.Spec : Prop :=
  ∀ n, P8976901264953447552.a n = A047298 (n + 1)

end A047298

/-! ## A047298.P3679569076591731681

`∑[gcd(2, C(n+1, 3))]-1`
-/

namespace A047298.P3679569076591731681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (Nat.choose (n + 1) 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047298.P3679569076591731681

namespace A047298

/-- `∑[gcd(2, C(n+1, 3))]-1` -/
def P3679569076591731681.Spec : Prop :=
  ∀ n, P3679569076591731681.a n = A047298 (n + 1)

end A047298

/-! ## A047298.P5952436453978814094

`floor(∑[3/a(n-1)])` with `a(0)=1, a(1)=2`
-/

namespace A047298.P5952436453978814094
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A047298.P5952436453978814094

namespace A047298

/-- `floor(∑[3/a(n-1)])` -/
def P5952436453978814094.Spec : Prop :=
  ∀ n, P5952436453978814094.a n = A047298 (n + 1)

end A047298

/-! ## A047298.P4291678021029712595

`or(1, 2*n)-round(n/4)`
-/

namespace A047298.P4291678021029712595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 * n) : ℤ) - SequenceMachineLib.roundAway ((n : ℚ) / 4)

end

end A047298.P4291678021029712595

namespace A047298

/-- `or(1, 2*n)-round(n/4)` -/
def P4291678021029712595.Spec : Prop :=
  ∀ n, P4291678021029712595.a n = A047298 (n + 1)

end A047298

/-! ## A047298.P11816858064038415823

`xor(1, 2*n)-round(n/4)`
-/

namespace A047298.P11816858064038415823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (2 * n) : ℤ) - SequenceMachineLib.roundAway ((n : ℚ) / 4)

end

end A047298.P11816858064038415823

namespace A047298

/-- `xor(1, 2*n)-round(n/4)` -/
def P11816858064038415823.Spec : Prop :=
  ∀ n, P11816858064038415823.a n = A047298 (n + 1)

end A047298

/-! ## A047298.P1852681678960755926

`∑[and(1, n^and(2, n))]+n`
-/

namespace A047298.P1852681678960755926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n ^ Nat.land 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047298.P1852681678960755926

namespace A047298

/-- `∑[and(1, n^and(2, n))]+n` -/
def P1852681678960755926.Spec : Prop :=
  ∀ n, (P1852681678960755926.a n : ℤ) = A047298 (n + 1)

end A047298

/-! ## A047298.P16706644557820252678

`∑[abs(a(n-4))]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2, a(4)=2`
-/

namespace A047298.P16706644557820252678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 2, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047298.P16706644557820252678

namespace A047298

/-- `∑[abs(a(n-4))]` -/
def P16706644557820252678.Spec : Prop :=
  ∀ n, (P16706644557820252678.a n : ℤ) = A047298 (n + 1)

end A047298

/-! ## A047298.P51485581097410075

`∑[a(n-4)!]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2, a(4)=2`
-/

namespace A047298.P51485581097410075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 2, 2] fun n f1 =>
  Nat.factorial (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047298.P51485581097410075

namespace A047298

/-- `∑[a(n-4)!]` -/
def P51485581097410075.Spec : Prop :=
  ∀ n, (P51485581097410075.a n : ℤ) = A047298 (n + 1)

end A047298

/-! ## A047298.P15382609589457095410

`∑[dr(a(n-4))]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2, a(4)=2`
-/

namespace A047298.P15382609589457095410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 2, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047298.P15382609589457095410

namespace A047298

/-- `∑[dr(a(n-4))]` -/
def P15382609589457095410.Spec : Prop :=
  ∀ n, (P15382609589457095410.a n : ℤ) = A047298 (n + 1)

end A047298

/-! ## A047298.P17768316425480228908

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A047298.P17768316425480228908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 2, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047298.P17768316425480228908

namespace A047298

/-- `∑[floor(a(n-4))]` -/
def P17768316425480228908.Spec : Prop :=
  ∀ n, (P17768316425480228908.a n : ℤ) = A047298 (n + 1)

end A047298

/-! ## A047298.P1370423945404236514

`∑[ceil(a(n-4))]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2, a(4)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A047298.P1370423945404236514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 2, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047298.P1370423945404236514

namespace A047298

/-- `∑[ceil(a(n-4))]` -/
def P1370423945404236514.Spec : Prop :=
  ∀ n, (P1370423945404236514.a n : ℤ) = A047298 (n + 1)

end A047298

/-! ## A047298.P7363711958322580794

`∑[round(a(n-4))]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2, a(4)=2`

`round` is left out, it is the identity on integers.
-/

namespace A047298.P7363711958322580794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 2, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047298.P7363711958322580794

namespace A047298

/-- `∑[round(a(n-4))]` -/
def P7363711958322580794.Spec : Prop :=
  ∀ n, (P7363711958322580794.a n : ℤ) = A047298 (n + 1)

end A047298

/-! ## A047298.P10543186395819292168

`∑[a(n-4)%3]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2, a(4)=2`
-/

namespace A047298.P10543186395819292168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 2, 2] fun n f1 =>
  f1 (n - 4) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047298.P10543186395819292168

namespace A047298

/-- `∑[a(n-4)%3]` -/
def P10543186395819292168.Spec : Prop :=
  ∀ n, (P10543186395819292168.a n : ℤ) = A047298 (n + 1)

end A047298

/-! ## A047298.P1643957095845795070

`floor(or(1, 2*n)-(n-1)/4)`
-/

namespace A047298.P1643957095845795070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (2 * n) : ℚ) - ((n : ℤ) - 1 : ℚ) / 4⌋

end

end A047298.P1643957095845795070

namespace A047298

/-- `floor(or(1, 2*n)-(n-1)/4)` -/
def P1643957095845795070.Spec : Prop :=
  ∀ n, P1643957095845795070.a n = A047298 (n + 1)

end A047298

/-! ## A047298.P3666094758736499259

`∑[3-a(a(n-4))]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2, a(4)=2`
-/

namespace A047298.P3666094758736499259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, 2, 2] fun n f1 =>
  3 - f1 (f1 (n - 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047298.P3666094758736499259

namespace A047298

/-- `∑[3-a(a(n-4))]` -/
def P3666094758736499259.Spec : Prop :=
  ∀ n, P3666094758736499259.a n = A047298 (n + 1)

end A047298

/-!
# A047299: Numbers that are congruent to {0, 1, 3, 4, 6} mod 7.

The programs for A047299, the canonical program `A047299.P1626073966181830394` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047299 has offset 1).

The definition of A047299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047299.P1626073966181830394

`round(7*n/5)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A047299

/-- `round(7*n/5)` -/
def P1626073966181830394.Spec : Prop :=
  ∀ n, P1626073966181830394.a n = A047299 (n + 1)

theorem P1626073966181830394.correct : P1626073966181830394.Spec := by
  intro n
  simp only [A047299, Nat.add_sub_cancel]

end A047299

/-! ## A047299.P1765322621704916113

`eq[0, val(n²+3, 7)]`
-/

namespace A047299.P1765322621704916113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n ^ 2 + 3) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047299.P1765322621704916113

namespace A047299

/-- `eq[0, val(n²+3, 7)]` -/
def P1765322621704916113.Spec : Prop :=
  ∀ n, (P1765322621704916113.a n : ℤ) = A047299 (n + 1)

end A047299

/-! ## A047299.P6003952887814074910

`comp[a(n-2)+7]` with `a(0)=2, a(1)=5`
-/

namespace A047299.P6003952887814074910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n f1 =>
  f1 (n - 2) + 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047299.P6003952887814074910

namespace A047299

/-- `comp[a(n-2)+7]` -/
def P6003952887814074910.Spec : Prop :=
  ∀ n, (P6003952887814074910.a n : ℤ) = A047299 (n + 1)

end A047299

/-! ## A047299.P8061077788776606841

`comp[∑[gcd(2, n)]+n+n]`
-/

namespace A047299.P8061077788776606841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047299.P8061077788776606841

namespace A047299

/-- `comp[∑[gcd(2, n)]+n+n]` -/
def P8061077788776606841.Spec : Prop :=
  ∀ n, (P8061077788776606841.a n : ℤ) = A047299 (n + 1)

end A047299

/-! ## A047299.P12083984289394695072

`comp[∑[7-a(n-1)]]` with `a(0)=2, a(1)=3`
-/

namespace A047299.P12083984289394695072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  7 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047299.P12083984289394695072

namespace A047299

/-- `comp[∑[7-a(n-1)]]` -/
def P12083984289394695072.Spec : Prop :=
  ∀ n, (P12083984289394695072.a n : ℤ) = A047299 (n + 1)

end A047299

/-! ## A047299.P944967369989802800

`a(n-5)+7` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4, a(4)=6`
-/

namespace A047299.P944967369989802800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 4, 6] fun n a =>
  a (n - 5) + 7

end

end A047299.P944967369989802800

namespace A047299

/-- `a(n-5)+7` -/
def P944967369989802800.Spec : Prop :=
  ∀ n, (P944967369989802800.a n : ℤ) = A047299 (n + 1)

end A047299

/-! ## A047299.P14189595785743454391

`∑[a(n-5)!]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1, a(4)=2`
-/

namespace A047299.P14189595785743454391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 1, 2] fun n f1 =>
  Nat.factorial (f1 (n - 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047299.P14189595785743454391

namespace A047299

/-- `∑[a(n-5)!]` -/
def P14189595785743454391.Spec : Prop :=
  ∀ n, (P14189595785743454391.a n : ℤ) = A047299 (n + 1)

end A047299

/-! ## A047299.P4089325528488715945

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1, a(4)=2, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A047299.P4089325528488715945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 1, 2, 1] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047299.P4089325528488715945

namespace A047299

/-- `∑[floor(a(n-5))]` -/
def P4089325528488715945.Spec : Prop :=
  ∀ n, (P4089325528488715945.a n : ℤ) = A047299 (n + 1)

end A047299

/-! ## A047299.P5766756581290345066

`comp[∑[(n-1)%2+3]]%Δ[n²]`
-/

namespace A047299.P5766756581290345066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 2 + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

end

end A047299.P5766756581290345066

namespace A047299

/-- `comp[∑[(n-1)%2+3]]%Δ[n²]` -/
def P5766756581290345066.Spec : Prop :=
  ∀ n, P5766756581290345066.a n = A047299 (n + 1)

end A047299

/-! ## A047299.P14400878005708041949

`floor((lcm(4, 2*n+1)-(n+2))/5)`
-/

namespace A047299.P14400878005708041949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lcm 4 (2 * n + 1) : ℤ) - (n + 2 : ℤ) : ℚ) / 5⌋

end

end A047299.P14400878005708041949

namespace A047299

/-- `floor((lcm(4, 2*n+1)-(n+2))/5)` -/
def P14400878005708041949.Spec : Prop :=
  ∀ n, P14400878005708041949.a n = A047299 (n + 1)

end A047299

/-! ## A047299.P11953453806451177656

`n-floor(a(n-1)/(1/2-4))` with `a(0)=0`
-/

namespace A047299.P11953453806451177656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - ⌊(a (n - 1) : ℚ) / ((1 : ℚ) / 2 - 4)⌋

end

end A047299.P11953453806451177656

namespace A047299

/-- `n-floor(a(n-1)/(1/2-4))` -/
def P11953453806451177656.Spec : Prop :=
  ∀ n, P11953453806451177656.a n = A047299 (n + 1)

end A047299

/-! ## A047299.P17777488739718030223

`∑[a(n-5)^a(n-1)]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1, a(4)=2, a(5)=1`
-/

namespace A047299.P17777488739718030223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 1, 2, 1] fun n f1 =>
  f1 (n - 5) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047299.P17777488739718030223

namespace A047299

/-- `∑[a(n-5)^a(n-1)]` -/
def P17777488739718030223.Spec : Prop :=
  ∀ n, (P17777488739718030223.a n : ℤ) = A047299 (n + 1)

end A047299

/-! ## A047299.P8952332325930976968

`comp[A047385(n+1)]`
-/

namespace A047299.P8952332325930976968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047299.P8952332325930976968

namespace A047299

/-- `comp[A047385(n+1)]` -/
def P8952332325930976968.Spec : Prop :=
  ∀ n, (P8952332325930976968.a n : ℤ) = A047299 (n + 1)

end A047299

/-! ## A047299.P9607947695605818420

`Δ[A011858(n)]+n`
-/

namespace A047299.P9607947695605818420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A047299.P9607947695605818420

namespace A047299

/-- `Δ[A011858(n)]+n` -/
def P9607947695605818420.Spec : Prop :=
  ∀ n, P9607947695605818420.a n = A047299 (n + 1)

end A047299

/-! ## A047299.P13379839868859479594

`comp[A047346(n+1)+1]`
-/

namespace A047299.P13379839868859479594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047346 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047299.P13379839868859479594

namespace A047299

/-- `comp[A047346(n+1)+1]` -/
def P13379839868859479594.Spec : Prop :=
  ∀ n, (P13379839868859479594.a n : ℤ) = A047299 (n + 1)

end A047299

/-! ## A047299.P4563327097703325632

`comp[A047280(n+1)-1]`
-/

namespace A047299.P4563327097703325632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047280 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047299.P4563327097703325632

namespace A047299

/-- `comp[A047280(n+1)-1]` -/
def P4563327097703325632.Spec : Prop :=
  ∀ n, (P4563327097703325632.a n : ℤ) = A047299 (n + 1)

end A047299

/-! ## A047299.P15385978984516667285

`comp[A047355(n+1)+2]`
-/

namespace A047299.P15385978984516667285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047355 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047299.P15385978984516667285

namespace A047299

/-- `comp[A047355(n+1)+2]` -/
def P15385978984516667285.Spec : Prop :=
  ∀ n, (P15385978984516667285.a n : ℤ) = A047299 (n + 1)

end A047299

/-! ## A047299.P12634441168412605688

`comp[A047345(n+1)-2]`
-/

namespace A047299.P12634441168412605688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047345 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047299.P12634441168412605688

namespace A047299

/-- `comp[A047345(n+1)-2]` -/
def P12634441168412605688.Spec : Prop :=
  ∀ n, (P12634441168412605688.a n : ℤ) = A047299 (n + 1)

end A047299

/-! ## A047299.P4901521646475789372

`comp[A047372(2*(n+1))]`
-/

namespace A047299.P4901521646475789372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047372 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047299.P4901521646475789372

namespace A047299

/-- `comp[A047372(2*(n+1))]` -/
def P4901521646475789372.Spec : Prop :=
  ∀ n, (P4901521646475789372.a n : ℤ) = A047299 (n + 1)

end A047299

