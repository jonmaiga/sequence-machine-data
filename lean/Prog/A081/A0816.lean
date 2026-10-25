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
import Seq.B000.C038
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A081600: Let n = 10x + y where 0 <= y <= 9, x >= 0. Then a(n) = 9x+y.

The programs for A081600, the canonical program `A081600.P18279744681221534616` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081600 has offset 0).

The definition of A081600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081600.P18279744681221534616

`n-floor(n/10)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081600

/-- `n-floor(n/10)` -/
def P18279744681221534616.Spec : Prop :=
  ∀ n, P18279744681221534616.a n = A081600 n

theorem P18279744681221534616.correct : P18279744681221534616.Spec := by
  intro n
  simp only [A081600]

end A081600

/-! ## A081600.P15919286691803345869

`∑[round(atan(n%10))]`
-/

namespace A081600.P15919286691803345869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan ((n % 10 : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081600.P15919286691803345869

namespace A081600

/-- `∑[round(atan(n%10))]` -/
def P15919286691803345869.Spec : Prop :=
  ∀ n, P15919286691803345869.a n = A081600 n

end A081600

/-! ## A081600.P10875885007118934146

`∑[char[comp[lcm(10, n)]]]`
-/

namespace A081600.P10875885007118934146
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 10 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081600.P10875885007118934146

namespace A081600

/-- `∑[char[comp[lcm(10, n)]]]` -/
def P10875885007118934146.Spec : Prop :=
  ∀ n, (P10875885007118934146.a n : ℤ) = A081600 n

end A081600

/-! ## A081600.P6949592607983988424

`∑[xor(1, char[10*n])]`
-/

namespace A081600.P6949592607983988424
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081600.P6949592607983988424

namespace A081600

/-- `∑[xor(1, char[10*n])]` -/
def P6949592607983988424.Spec : Prop :=
  ∀ n, (P6949592607983988424.a n : ℤ) = A081600 n

end A081600

/-! ## A081600.P10942677688144347829

`∑[and(1, char[comp[10*n]])]`
-/

namespace A081600.P10942677688144347829
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081600.P10942677688144347829

namespace A081600

/-- `∑[and(1, char[comp[10*n]])]` -/
def P10942677688144347829.Spec : Prop :=
  ∀ n, (P10942677688144347829.a n : ℤ) = A081600 n

end A081600

/-! ## A081600.P1586142048510769489

`Δ[n²]%comp[11*n]`
-/

namespace A081600.P1586142048510769489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

end

end A081600.P1586142048510769489

namespace A081600

/-- `Δ[n²]%comp[11*n]` -/
def P1586142048510769489.Spec : Prop :=
  ∀ n, P1586142048510769489.a n = A081600 n

end A081600

/-! ## A081600.P11635808224685574030

`floor(xor(1, 9*(n+1))/10)`
-/

namespace A081600.P11635808224685574030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 (9 * (n + 1)) : ℚ) / 10⌋

end

end A081600.P11635808224685574030

namespace A081600

/-- `floor(xor(1, 9*(n+1))/10)` -/
def P11635808224685574030.Spec : Prop :=
  ∀ n, P11635808224685574030.a n = A081600 n

end A081600

/-! ## A081600.P5676625841984865801

`∑[(n^(4*(n+1)%2))%5]`
-/

namespace A081600.P5676625841984865801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (4 * ((n + 1) % 2)) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081600.P5676625841984865801

namespace A081600

/-- `∑[(n^(4*(n+1)%2))%5]` -/
def P5676625841984865801.Spec : Prop :=
  ∀ n, (P5676625841984865801.a n : ℤ) = A081600 n

end A081600

/-! ## A081600.P1254981806728461523

`∑[A168184(n)]`
-/

namespace A081600.P1254981806728461523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081600.P1254981806728461523

namespace A081600

/-- `∑[A168184(n)]` -/
def P1254981806728461523.Spec : Prop :=
  ∀ n, P1254981806728461523.a n = A081600 n

end A081600

/-! ## A081600.P18303527878708043362

`∑[A010208(n)%2]`
-/

namespace A081600.P18303527878708043362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010208 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081600.P18303527878708043362

namespace A081600

/-- `∑[A010208(n)%2]` -/
def P18303527878708043362.Spec : Prop :=
  ∀ n, P18303527878708043362.a n = A081600 n

end A081600

/-! ## A081600.P5501167606553683406

`∑[char[comp[A008592(n)]]]`
-/

namespace A081600.P5501167606553683406
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081600.P5501167606553683406

namespace A081600

/-- `∑[char[comp[A008592(n)]]]` -/
def P5501167606553683406.Spec : Prop :=
  ∀ n, (P5501167606553683406.a n : ℤ) = A081600 n

end A081600

/-! ## A081600.P13282171936329449254

`(A081599(n)+n)/2`
-/

namespace A081600.P13282171936329449254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081599 n + (n : ℤ) : ℚ) / 2

end

end A081600.P13282171936329449254

namespace A081600

/-- `(A081599(n)+n)/2` -/
def P13282171936329449254.Spec : Prop :=
  ∀ n, P13282171936329449254.a n = (A081600 n : ℚ)

theorem P13282171936329449254.correct : P13282171936329449254.Spec := by
  intro n
  simp only [A081600, Nat.add_sub_cancel, A081600.P13282171936329449254.a, A081600.P18279744681221534616.a, A081599, A081599.P12036139868710074620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081600

/-! ## A081600.P1876686719659494037

`∑[char[A004086(n+1)]]`
-/

namespace A081600.P1876686719659494037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081600.P1876686719659494037

namespace A081600

/-- `∑[char[A004086(n+1)]]` -/
def P1876686719659494037.Spec : Prop :=
  ∀ n, (P1876686719659494037.a n : ℤ) = A081600 n

end A081600

/-! ## A081600.P10046842954909442161

`Δ[A033442(n)]`
-/

namespace A081600.P10046842954909442161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081600.P10046842954909442161

namespace A081600

/-- `Δ[A033442(n)]` -/
def P10046842954909442161.Spec : Prop :=
  ∀ n, P10046842954909442161.a n = A081600 n

end A081600

/-! ## A081600.P9669419318870126977

`A004526(A187318(n+1))`
-/

namespace A081600.P9669419318870126977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A187318 (n + 1)).toNat

end

end A081600.P9669419318870126977

namespace A081600

/-- `A004526(A187318(n+1))` -/
def P9669419318870126977.Spec : Prop :=
  ∀ n, P9669419318870126977.a n = A081600 n

end A081600

/-! ## A081600.P1599591555491177312

`∑[char[A338191(n+1)]]`
-/

namespace A081600.P1599591555491177312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338191 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081600.P1599591555491177312

namespace A081600

/-- `∑[char[A338191(n+1)]]` -/
def P1599591555491177312.Spec : Prop :=
  ∀ n, (P1599591555491177312.a n : ℤ) = A081600 n

end A081600

/-! ## A081600.P3577459763369235973

`∑[char[A199343(n)]]`
-/

namespace A081600.P3577459763369235973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081600.P3577459763369235973

namespace A081600

/-- `∑[char[A199343(n)]]` -/
def P3577459763369235973.Spec : Prop :=
  ∀ n, (P3577459763369235973.a n : ℤ) = A081600 n

end A081600

/-! ## A081600.P8865310926900795663

`∑[char[A199344(n)]]`
-/

namespace A081600.P8865310926900795663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199344 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081600.P8865310926900795663

namespace A081600

/-- `∑[char[A199344(n)]]` -/
def P8865310926900795663.Spec : Prop :=
  ∀ n, (P8865310926900795663.a n : ℤ) = A081600 n

end A081600

/-! ## A081600.P4057324912631786718

`∑[char[A004151(n+1)]]`
-/

namespace A081600.P4057324912631786718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081600.P4057324912631786718

namespace A081600

/-- `∑[char[A004151(n+1)]]` -/
def P4057324912631786718.Spec : Prop :=
  ∀ n, (P4057324912631786718.a n : ℤ) = A081600 n

end A081600

/-! ## A081600.P502738385660775139

`A057360(A081032(n+1))`
-/

namespace A081600.P502738385660775139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (A081032 (n + 1)).toNat

end

end A081600.P502738385660775139

namespace A081600

/-- `A057360(A081032(n+1))` -/
def P502738385660775139.Spec : Prop :=
  ∀ n, P502738385660775139.a n = A081600 n

end A081600

/-!
# A081601: Numbers m such that 3 does not divide Sum_{k=0..m} binomial(2k,k) = A006134(m).

The programs for A081601, the canonical program `A081601.P7694742959722061994` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081601 has offset 1).

The definition of A081601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081601.P7694742959722061994

`3*A005836(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081601

/-- `3*A005836(n+1)` -/
def P7694742959722061994.Spec : Prop :=
  ∀ n, P7694742959722061994.a n = A081601 (n + 1)

theorem P7694742959722061994.correct : P7694742959722061994.Spec := by
  intro n
  simp only [A081601, Nat.add_sub_cancel]

end A081601

/-! ## A081601.P1784539657974975595

`3*(a(floor(n/2))+n%2)` with `a(0)=0`
-/

namespace A081601.P1784539657974975595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 * (a ⌊(n : ℚ) / 2⌋.toNat + n % 2)

end

end A081601.P1784539657974975595

namespace A081601

/-- `3*(a(floor(n/2))+n%2)` -/
def P1784539657974975595.Spec : Prop :=
  ∀ n, (P1784539657974975595.a n : ℤ) = A081601 (n + 1)

end A081601

/-! ## A081601.P322928185735299645

`3*(a(floor(n/2))+and(1, n))` with `a(0)=0`
-/

namespace A081601.P322928185735299645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 * (a ⌊(n : ℚ) / 2⌋.toNat + Nat.land 1 n)

end

end A081601.P322928185735299645

namespace A081601

/-- `3*(a(floor(n/2))+and(1, n))` -/
def P322928185735299645.Spec : Prop :=
  ∀ n, (P322928185735299645.a n : ℤ) = A081601 (n + 1)

end A081601

/-! ## A081601.P6147388353121164853

`∑[3*a(∑[n]%n)-3]-2` with `a(0)=2`
-/

namespace A081601.P6147388353121164853
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  3 * f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A081601.P6147388353121164853

namespace A081601

/-- `∑[3*a(∑[n]%n)-3]-2` -/
def P6147388353121164853.Spec : Prop :=
  ∀ n, P6147388353121164853.a n = A081601 (n + 1)

end A081601

/-! ## A081601.P1405362492683395337

`3*(a(floor(n/2))+2-gcd(2, n))` with `a(0)=0`
-/

namespace A081601.P1405362492683395337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * (a ⌊(n : ℚ) / 2⌋.toNat + (2 - (Nat.gcd 2 n : ℤ)))

end

end A081601.P1405362492683395337

namespace A081601

/-- `3*(a(floor(n/2))+2-gcd(2, n))` -/
def P1405362492683395337.Spec : Prop :=
  ∀ n, P1405362492683395337.a n = A081601 (n + 1)

end A081601

/-! ## A081601.P4333561408892101501

`3*(a(floor(n/2))+C(n, or(1, n)))` with `a(0)=0`
-/

namespace A081601.P4333561408892101501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 * (a ⌊(n : ℚ) / 2⌋.toNat + Nat.choose n (Nat.lor 1 n))

end

end A081601.P4333561408892101501

namespace A081601

/-- `3*(a(floor(n/2))+C(n, or(1, n)))` -/
def P4333561408892101501.Spec : Prop :=
  ∀ n, (P4333561408892101501.a n : ℤ) = A081601 (n + 1)

end A081601

/-! ## A081601.P2061154006176836490

`3*(∑[and(n, -n)^log2(3)]+n)/2`
-/

namespace A081601.P2061154006176836490
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * ((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) / 2)

end

end A081601.P2061154006176836490

namespace A081601

/-- `3*(∑[and(n, -n)^log2(3)]+n)/2` -/
def P2061154006176836490.Spec : Prop :=
  ∀ n, P2061154006176836490.a n = (A081601 (n + 1) : ℝ)

end A081601

/-! ## A081601.P1465123921575528332

`3*(a(floor(n/2))+val(n²+1, 2))` with `a(0)=0`
-/

namespace A081601.P1465123921575528332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 * (a ⌊(n : ℚ) / 2⌋.toNat + SequenceMachineLib.valuation (n ^ 2 + 1) 2)

end

end A081601.P1465123921575528332

namespace A081601

/-- `3*(a(floor(n/2))+val(n²+1, 2))` -/
def P1465123921575528332.Spec : Prop :=
  ∀ n, (P1465123921575528332.a n : ℤ) = A081601 (n + 1)

end A081601

/-! ## A081601.P6069511263095173910

`3*(a(floor(n/2))-(or(1, n)-(n+1)))` with `a(0)=0`
-/

namespace A081601.P6069511263095173910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * (a ⌊(n : ℚ) / 2⌋.toNat - ((Nat.lor 1 n : ℤ) - (n + 1 : ℤ)))

end

end A081601.P6069511263095173910

namespace A081601

/-- `3*(a(floor(n/2))-(or(1, n)-(n+1)))` -/
def P6069511263095173910.Spec : Prop :=
  ∀ n, P6069511263095173910.a n = A081601 (n + 1)

end A081601

/-! ## A081601.P15897285115320251075

`a(and(n-1, -(n+1)))+a(n-1)+3` with `a(0)=0`
-/

namespace A081601.P15897285115320251075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (Int.land ((n : ℤ) - 1) (-(n + 1 : ℤ))).toNat + a (n - 1) + 3

end

end A081601.P15897285115320251075

namespace A081601

/-- `a(and(n-1, -(n+1)))+a(n-1)+3` -/
def P15897285115320251075.Spec : Prop :=
  ∀ n, (P15897285115320251075.a n : ℤ) = A081601 (n + 1)

end A081601

/-! ## A081601.P2524937758233333409

`A191107(n+1)-1`
-/

namespace A081601.P2524937758233333409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191107 (n + 1) - 1

end

end A081601.P2524937758233333409

namespace A081601

/-- `A191107(n+1)-1` -/
def P2524937758233333409.Spec : Prop :=
  ∀ n, P2524937758233333409.a n = A081601 (n + 1)

end A081601

/-! ## A081601.P16681463399886571693

`A356426(n+1)-2`
-/

namespace A081601.P16681463399886571693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356426 (n + 1) - 2

end

end A081601.P16681463399886571693

namespace A081601

/-- `A356426(n+1)-2` -/
def P16681463399886571693.Spec : Prop :=
  ∀ n, P16681463399886571693.a n = A081601 (n + 1)

end A081601

/-! ## A081601.P11439898063409753542

`(A062548(n)-2)/4`
-/

namespace A081601.P11439898063409753542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062548 n - 2 : ℚ) / 4

end

end A081601.P11439898063409753542

namespace A081601

/-- `(A062548(n)-2)/4` -/
def P11439898063409753542.Spec : Prop :=
  ∀ n, P11439898063409753542.a n = (A081601 (n + 1) : ℚ)

end A081601

/-! ## A081601.P5441064261225264550

`(A055246(n+1)-1)/2`
-/

namespace A081601.P5441064261225264550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055246 (n + 1) - 1 : ℚ) / 2

end

end A081601.P5441064261225264550

namespace A081601

/-- `(A055246(n+1)-1)/2` -/
def P5441064261225264550.Spec : Prop :=
  ∀ n, P5441064261225264550.a n = (A081601 (n + 1) : ℚ)

theorem P5441064261225264550.correct : P5441064261225264550.Spec := by
  intro n
  simp only [A081601, Nat.add_sub_cancel, A081601.P5441064261225264550.a, A081601.P7694742959722061994.a, A005836, A005836.P12367569128854000442.a, A055246, A055246.P17023893520990019210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081601

/-! ## A081601.P9986265427756728617

`A190640(n+1)/2-1`
-/

namespace A081601.P9986265427756728617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190640 (n + 1) : ℚ) / 2 - 1

end

end A081601.P9986265427756728617

namespace A081601

/-- `A190640(n+1)/2-1` -/
def P9986265427756728617.Spec : Prop :=
  ∀ n, P9986265427756728617.a n = (A081601 (n + 1) : ℚ)

end A081601

/-! ## A081601.P11218588479045984833

`(A265100(n+1)-5)/3`
-/

namespace A081601.P11218588479045984833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265100 (n + 1) - 5 : ℚ) / 3

end

end A081601.P11218588479045984833

namespace A081601

/-- `(A265100(n+1)-5)/3` -/
def P11218588479045984833.Spec : Prop :=
  ∀ n, P11218588479045984833.a n = (A081601 (n + 1) : ℚ)

theorem P11218588479045984833.correct : P11218588479045984833.Spec := by
  intro n
  simp only [A081601, Nat.add_sub_cancel, A081601.P11218588479045984833.a, A081601.P7694742959722061994.a, A005836, A005836.P12367569128854000442.a, A265100, A265100.P11859098700391126980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081601

/-! ## A081601.P9689755362606050395

`A074938(n)-A010059(n)`
-/

namespace A081601.P9689755362606050395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 n - A010059 n

end

end A081601.P9689755362606050395

namespace A081601

/-- `A074938(n)-A010059(n)` -/
def P9689755362606050395.Spec : Prop :=
  ∀ n, P9689755362606050395.a n = A081601 (n + 1)

end A081601

/-! ## A081601.P6597548155718229424

`A074939(n)-A010060(n)`
-/

namespace A081601.P6597548155718229424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074939 n - A010060 n

end

end A081601.P6597548155718229424

namespace A081601

/-- `A074939(n)-A010060(n)` -/
def P6597548155718229424.Spec : Prop :=
  ∀ n, P6597548155718229424.a n = A081601 (n + 1)

end A081601

/-! ## A081601.P18216906418169821627

`A005836(n+1)+A005823(n+1)`
-/

namespace A081601.P18216906418169821627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + A005823 (n + 1)

end

end A081601.P18216906418169821627

namespace A081601

/-- `A005836(n+1)+A005823(n+1)` -/
def P18216906418169821627.Spec : Prop :=
  ∀ n, P18216906418169821627.a n = A081601 (n + 1)

theorem P18216906418169821627.correct : P18216906418169821627.Spec := by
  intro n
  simp only [A081601, Nat.add_sub_cancel, A081601.P18216906418169821627.a, A081601.P7694742959722061994.a, A005823, A005823.P15253501149959078210.a, A005836, A005836.P12367569128854000442.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081601

/-! ## A081601.P12137333534085573306

`A191108(n+1)-A003278(n+1)`
-/

namespace A081601.P12137333534085573306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191108 (n + 1) - A003278 (n + 1)

end

end A081601.P12137333534085573306

namespace A081601

/-- `A191108(n+1)-A003278(n+1)` -/
def P12137333534085573306.Spec : Prop :=
  ∀ n, P12137333534085573306.a n = A081601 (n + 1)

end A081601

/-!
# A081603: Number of 2's in ternary representation of n.

The programs for A081603, the canonical program `A081603.P9418366050176887204` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081603 has offset 0).

The definition of A081603 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062756, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A081603.P9418366050176887204

`(A053735(n)-A062756(n))/2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A081603

/-- `(A053735(n)-A062756(n))/2` -/
def P9418366050176887204.Spec : Prop :=
  ∀ n, P9418366050176887204.a n = (A081603 n : ℚ)

end A081603

/-! ## A081603.P15012763475143245396

`log2(A117592(n))`
-/

namespace A081603.P15012763475143245396
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A117592 n : ℝ)

end

end A081603.P15012763475143245396

namespace A081603

/-- `log2(A117592(n))` -/
def P15012763475143245396.Spec : Prop :=
  ∀ n, P15012763475143245396.a n = (A081603 n : ℝ)

end A081603

/-! ## A081603.P15353617574609606514

`val(A120879(n), 2)`
-/

namespace A081603.P15353617574609606514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A120879 n).toNat 2

end

end A081603.P15353617574609606514

namespace A081603

/-- `val(A120879(n), 2)` -/
def P15353617574609606514.Spec : Prop :=
  ∀ n, (P15353617574609606514.a n : ℤ) = A081603 n

end A081603

/-! ## A081603.P5852051064883080519

`val(A006047(n), 3)`
-/

namespace A081603.P5852051064883080519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006047 n).toNat 3

end

end A081603.P5852051064883080519

namespace A081603

/-- `val(A006047(n), 3)` -/
def P5852051064883080519.Spec : Prop :=
  ∀ n, (P5852051064883080519.a n : ℤ) = A081603 n

end A081603

/-! ## A081603.P14086753708513864965

`log2(abs(A117942(n)))`
-/

namespace A081603.P14086753708513864965
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (|A117942 n| : ℝ)

end

end A081603.P14086753708513864965

namespace A081603

/-- `log2(abs(A117942(n)))` -/
def P14086753708513864965.Spec : Prop :=
  ∀ n, P14086753708513864965.a n = (A081603 n : ℝ)

end A081603

/-! ## A081603.P2473630612588812726

`∑{e}[A290092(n), #]`
-/

namespace A081603.P2473630612588812726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290092 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A081603.P2473630612588812726

namespace A081603

/-- `∑{e}[A290092(n), #]` -/
def P2473630612588812726.Spec : Prop :=
  ∀ n, (P2473630612588812726.a n : ℤ) = A081603 n

end A081603

/-! ## A081603.P8183949963564634010

`∑{digits}[A007089(n), C(#, 2)]`
-/

namespace A081603.P8183949963564634010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.choose x 2).sum

end

end A081603.P8183949963564634010

namespace A081603

/-- `∑{digits}[A007089(n), C(#, 2)]` -/
def P8183949963564634010.Spec : Prop :=
  ∀ n, (P8183949963564634010.a n : ℤ) = A081603 n

end A081603

/-! ## A081603.P7010438701996518372

`A007949(A006047(n))`
-/

namespace A081603.P7010438701996518372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A006047 n).toNat

end

end A081603.P7010438701996518372

namespace A081603

/-- `A007949(A006047(n))` -/
def P7010438701996518372.Spec : Prop :=
  ∀ n, P7010438701996518372.a n = A081603 n

end A081603

/-! ## A081603.P10127103682651156908

`A000120(A289814(n))`
-/

namespace A081603.P10127103682651156908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A289814 n).toNat

end

end A081603.P10127103682651156908

namespace A081603

/-- `A000120(A289814(n))` -/
def P10127103682651156908.Spec : Prop :=
  ∀ n, P10127103682651156908.a n = A081603 n

end A081603

/-! ## A081603.P9783806000211096561

`A001222(A290092(n))`
-/

namespace A081603.P9783806000211096561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A290092 n).toNat

end

end A081603.P9783806000211096561

namespace A081603

/-- `A001222(A290092(n))` -/
def P9783806000211096561.Spec : Prop :=
  ∀ n, P9783806000211096561.a n = A081603 n

end A081603

/-! ## A081603.P15164378585214441557

`A000989(A300222(n))`
-/

namespace A081603.P15164378585214441557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (A300222 n).toNat

end

end A081603.P15164378585214441557

namespace A081603

/-- `A000989(A300222(n))` -/
def P15164378585214441557.Spec : Prop :=
  ∀ n, P15164378585214441557.a n = A081603 n

end A081603

/-! ## A081603.P10156510694170127732

`A273513(A038574(n))`
-/

namespace A081603.P10156510694170127732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273513 (A038574 n).toNat

end

end A081603.P10156510694170127732

namespace A081603

/-- `A273513(A038574(n))` -/
def P10156510694170127732.Spec : Prop :=
  ∀ n, P10156510694170127732.a n = A081603 n

end A081603

/-! ## A081603.P8709810981140380026

`A001222(abs(A117942(n)))`
-/

namespace A081603.P8709810981140380026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |A117942 n|.toNat

end

end A081603.P8709810981140380026

namespace A081603

/-- `A001222(abs(A117942(n)))` -/
def P8709810981140380026.Spec : Prop :=
  ∀ n, P8709810981140380026.a n = A081603 n

end A081603

/-! ## A081603.P671904732955301975

`A000120(A117592(n)-1)`
-/

namespace A081603.P671904732955301975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A117592 n - 1).toNat

end

end A081603.P671904732955301975

namespace A081603

/-- `A000120(A117592(n)-1)` -/
def P671904732955301975.Spec : Prop :=
  ∀ n, P671904732955301975.a n = A081603 n

end A081603

/-! ## A081603.P8179789541799576612

`A004718(A117592(n)-1)`
-/

namespace A081603.P8179789541799576612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A117592 n - 1).toNat

end

end A081603.P8179789541799576612

namespace A081603

/-- `A004718(A117592(n)-1)` -/
def P8179789541799576612.Spec : Prop :=
  ∀ n, P8179789541799576612.a n = A081603 n

end A081603

/-! ## A081603.P1865200756452632256

`A331410(2*A006047(n))`
-/

namespace A081603.P1865200756452632256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (2 * A006047 n).toNat

end

end A081603.P1865200756452632256

namespace A081603

/-- `A331410(2*A006047(n))` -/
def P1865200756452632256.Spec : Prop :=
  ∀ n, P1865200756452632256.a n = A081603 n

end A081603

/-! ## A081603.P5130738569093360361

`A252736(2*A290092(n))`
-/

namespace A081603.P5130738569093360361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (2 * A290092 n).toNat

end

end A081603.P5130738569093360361

namespace A081603

/-- `A252736(2*A290092(n))` -/
def P5130738569093360361.Spec : Prop :=
  ∀ n, P5130738569093360361.a n = A081603 n

end A081603

/-! ## A081603.P13446757521914941457

`A053735(A300222(n)/2)`
-/

namespace A081603.P13446757521914941457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (SequenceMachineLib.roundAway ((A300222 n : ℚ) / 2)).toNat

end

end A081603.P13446757521914941457

namespace A081603

/-- `A053735(A300222(n)/2)` -/
def P13446757521914941457.Spec : Prop :=
  ∀ n, P13446757521914941457.a n = A081603 n

end A081603

/-! ## A081603.P2088165564175621674

`A005812(n-A117966(n))`
-/

namespace A081603.P2088165564175621674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 ((n : ℤ) - A117966 n).toNat

end

end A081603.P2088165564175621674

namespace A081603

/-- `A005812(n-A117966(n))` -/
def P2088165564175621674.Spec : Prop :=
  ∀ n, P2088165564175621674.a n = A081603 n

end A081603

/-! ## A081603.P3645798371925052949

`A053735(n-A117966(n))`
-/

namespace A081603.P3645798371925052949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 ((n : ℤ) - A117966 n).toNat

end

end A081603.P3645798371925052949

namespace A081603

/-- `A053735(n-A117966(n))` -/
def P3645798371925052949.Spec : Prop :=
  ∀ n, P3645798371925052949.a n = A081603 n

end A081603

/-!
# A081604: Number of digits in ternary representation of n.

The programs for A081604, the canonical program `A081604.P18292398813705475602` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081604 has offset 0).

The definition of A081604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081604.P18292398813705475602

`a(floor(n/3))+1` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081604

/-- `a(floor(n/3))+1` -/
def P18292398813705475602.Spec : Prop :=
  ∀ n, (P18292398813705475602.a n : ℤ) = A081604 n

theorem P18292398813705475602.correct : P18292398813705475602.Spec := by
  intro n
  simp only [A081604]

end A081604

/-! ## A081604.P10195617742496006764

`A077267(n)+A062756(n)+A081603(n)`
-/

namespace A081604.P10195617742496006764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n + A062756 n + A081603 n

end

end A081604.P10195617742496006764

namespace A081604

/-- `A077267(n)+A062756(n)+A081603(n)` -/
def P10195617742496006764.Spec : Prop :=
  ∀ n, P10195617742496006764.a n = A081604 n

end A081604

/-! ## A081604.P11061231579970901610

`∑[char[record[∑{e}[n, 3^#]]]]`
-/

namespace A081604.P11061231579970901610
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), 3 ^ Nat.factorization (f4 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081604.P11061231579970901610

namespace A081604

/-- `∑[char[record[∑{e}[n, 3^#]]]]` -/
def P11061231579970901610.Spec : Prop :=
  ∀ n, (P11061231579970901610.a n : ℤ) = A081604 n

end A081604

/-! ## A081604.P12552411208206971122

`∑[char[3^(n+1)]]+1`
-/

namespace A081604.P12552411208206971122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A081604.P12552411208206971122

namespace A081604

/-- `∑[char[3^(n+1)]]+1` -/
def P12552411208206971122.Spec : Prop :=
  ∀ n, (P12552411208206971122.a n : ℤ) = A081604 n

end A081604

/-! ## A081604.P14002451341501415597

`∑[char[3*a(n-1)]]` with `a(0)=0, a(1)=3`
-/

namespace A081604.P14002451341501415597
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  3 * f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081604.P14002451341501415597

namespace A081604

/-- `∑[char[3*a(n-1)]]` -/
def P14002451341501415597.Spec : Prop :=
  ∀ n, (P14002451341501415597.a n : ℤ) = A081604 n

end A081604

/-! ## A081604.P13213984670656348640

`A134021(ceil(n/2))`
-/

namespace A081604.P13213984670656348640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 ⌈(n : ℚ) / 2⌉.toNat

end

end A081604.P13213984670656348640

namespace A081604

/-- `A134021(ceil(n/2))` -/
def P13213984670656348640.Spec : Prop :=
  ∀ n, P13213984670656348640.a n = A081604 n

end A081604

/-! ## A081604.P17896794356394347406

`∑[char[Δ[A074324(n)]]]`
-/

namespace A081604.P17896794356394347406
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081604.P17896794356394347406

namespace A081604

/-- `∑[char[Δ[A074324(n)]]]` -/
def P17896794356394347406.Spec : Prop :=
  ∀ n, (P17896794356394347406.a n : ℤ) = A081604 n

end A081604

/-! ## A081604.P9785127788667747789

`∏{e}[A064235(n+1), #]`
-/

namespace A081604.P9785127788667747789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064235 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A081604.P9785127788667747789

namespace A081604

/-- `∏{e}[A064235(n+1), #]` -/
def P9785127788667747789.Spec : Prop :=
  ∀ n, (P9785127788667747789.a n : ℤ) = A081604 n

end A081604

/-! ## A081604.P17380087091762659571

`∑[char[A254006(n+1)]]`
-/

namespace A081604.P17380087091762659571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081604.P17380087091762659571

namespace A081604

/-- `∑[char[A254006(n+1)]]` -/
def P17380087091762659571.Spec : Prop :=
  ∀ n, (P17380087091762659571.a n : ℤ) = A081604 n

end A081604

/-! ## A081604.P14866142401781894311

`∑[char[A061393(2*n)-1]]`
-/

namespace A081604.P14866142401781894311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 (2 * n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081604.P14866142401781894311

namespace A081604

/-- `∑[char[A061393(2*n)-1]]` -/
def P14866142401781894311.Spec : Prop :=
  ∀ n, (P14866142401781894311.a n : ℤ) = A081604 n

end A081604

/-! ## A081604.P17694505146272840272

`∑[char[3^n-A017877(n)]]`
-/

namespace A081604.P17694505146272840272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A017877 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081604.P17694505146272840272

namespace A081604

/-- `∑[char[3^n-A017877(n)]]` -/
def P17694505146272840272.Spec : Prop :=
  ∀ n, (P17694505146272840272.a n : ℤ) = A081604 n

end A081604

/-! ## A081604.P14254493918738518874

`∑[char[3^n*A057427(n)]]`
-/

namespace A081604.P14254493918738518874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A057427 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081604.P14254493918738518874

namespace A081604

/-- `∑[char[3^n*A057427(n)]]` -/
def P14254493918738518874.Spec : Prop :=
  ∀ n, (P14254493918738518874.a n : ℤ) = A081604 n

end A081604

/-! ## A081604.P7882396573780583008

`∏{d}[∑[char[3^n]], A014963(#)]`
-/

namespace A081604.P7882396573780583008
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A014963 d

end

end A081604.P7882396573780583008

namespace A081604

/-- `∏{d}[∑[char[3^n]], A014963(#)]` -/
def P7882396573780583008.Spec : Prop :=
  ∀ n, P7882396573780583008.a n = A081604 n

end A081604

/-! ## A081604.P3944137773814806892

`A064099(A054861(n))`
-/

namespace A081604.P3944137773814806892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 (A054861 n).toNat

end

end A081604.P3944137773814806892

namespace A081604

/-- `A064099(A054861(n))` -/
def P3944137773814806892.Spec : Prop :=
  ∀ n, P3944137773814806892.a n = A081604 n

end A081604

/-! ## A081604.P3847837841039762606

`A070939(A060585(n))`
-/

namespace A081604.P3847837841039762606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A060585 n).toNat

end

end A081604.P3847837841039762606

namespace A081604

/-- `A070939(A060585(n))` -/
def P3847837841039762606.Spec : Prop :=
  ∀ n, P3847837841039762606.a n = A081604 n

end A081604

/-! ## A081604.P587539093536361650

`A080342(A028310(n)+1)`
-/

namespace A081604.P587539093536361650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (A028310 n + 1).toNat

end

end A081604.P587539093536361650

namespace A081604

/-- `A080342(A028310(n)+1)` -/
def P587539093536361650.Spec : Prop :=
  ∀ n, P587539093536361650.a n = A081604 n

end A081604

/-! ## A081604.P1864017880167051923

`A070939(A081611(n)-1)`
-/

namespace A081604.P1864017880167051923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A081611 n - 1).toNat

end

end A081604.P1864017880167051923

namespace A081604

/-- `A070939(A081611(n)-1)` -/
def P1864017880167051923.Spec : Prop :=
  ∀ n, P1864017880167051923.a n = A081604 n

end A081604

/-! ## A081604.P5743355848769714084

`A064099(A004128(n)-n)`
-/

namespace A081604.P5743355848769714084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 (A004128 n - (n : ℤ)).toNat

end

end A081604.P5743355848769714084

namespace A081604

/-- `A064099(A004128(n)-n)` -/
def P5743355848769714084.Spec : Prop :=
  ∀ n, P5743355848769714084.a n = A081604 n

end A081604

/-! ## A081604.P2191647266690975778

`∑{digits}[A007089(n), A015643(#)²]`
-/

namespace A081604.P2191647266690975778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015643 x ^ 2).sum

end

end A081604.P2191647266690975778

namespace A081604

/-- `∑{digits}[A007089(n), A015643(#)²]` -/
def P2191647266690975778.Spec : Prop :=
  ∀ n, P2191647266690975778.a n = A081604 n

end A081604

/-! ## A081604.P9344377814876161383

`A008729(a(A002264(n)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A081604.P9344377814876161383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A008729 (a (A002264 n).toNat).toNat

end

end A081604.P9344377814876161383

namespace A081604

/-- `A008729(a(A002264(n)))` -/
def P9344377814876161383.Spec : Prop :=
  ∀ n, P9344377814876161383.a n = A081604 n

end A081604

/-!
# A081605: Numbers having at least one 0 in their ternary representation.

The programs for A081605, the canonical program `A081605.P3535045395729995710` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081605 has offset 1).

The definition of A081605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081605.P3535045395729995710

`comp[A032924(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A081605

/-- `comp[A032924(n+1)]` -/
def P3535045395729995710.Spec : Prop :=
  ∀ n, (P3535045395729995710.a n : ℤ) = A081605 (n + 1)

theorem P3535045395729995710.correct : P3535045395729995710.Spec := by
  intro n
  simp only [A081605, Nat.add_sub_cancel]

end A081605

/-! ## A081605.P17098868921798757976

`eq[0, A290825(n)]`
-/

namespace A081605.P17098868921798757976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290825 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081605.P17098868921798757976

namespace A081605

/-- `eq[0, A290825(n)]` -/
def P17098868921798757976.Spec : Prop :=
  ∀ n, (P17098868921798757976.a n : ℤ) = A081605 (n + 1)

end A081605

/-! ## A081605.P3314187122259937855

`eq[0, A309953(n)]`
-/

namespace A081605.P3314187122259937855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081605.P3314187122259937855

namespace A081605

/-- `eq[0, A309953(n)]` -/
def P3314187122259937855.Spec : Prop :=
  ∀ n, (P3314187122259937855.a n : ℤ) = A081605 (n + 1)

end A081605

/-! ## A081605.P13332901387162604817

`lt[0, A077267(n)]`
-/

namespace A081605.P13332901387162604817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A081605.P13332901387162604817

namespace A081605

/-- `lt[0, A077267(n)]` -/
def P13332901387162604817.Spec : Prop :=
  ∀ n, (P13332901387162604817.a n : ℤ) = A081605 (n + 1)

end A081605

/-! ## A081605.P9882095660525102669

`lt[0, A212193(n)]`
-/

namespace A081605.P9882095660525102669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212193 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A081605.P9882095660525102669

namespace A081605

/-- `lt[0, A212193(n)]` -/
def P9882095660525102669.Spec : Prop :=
  ∀ n, (P9882095660525102669.a n : ℤ) = A081605 (n + 1)

end A081605

/-! ## A081605.P1422973262093216733

`lt[2*A038574(n), n+1]`
-/

namespace A081605.P1422973262093216733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038574 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A081605.P1422973262093216733

namespace A081605

/-- `lt[2*A038574(n), n+1]` -/
def P1422973262093216733.Spec : Prop :=
  ∀ n, (P1422973262093216733.a n : ℤ) = A081605 (n + 1)

end A081605

/-! ## A081605.P7810321524900061274

`eq[A037897(n), A190592(n)]`
-/

namespace A081605.P7810321524900061274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081605.P7810321524900061274

namespace A081605

/-- `eq[A037897(n), A190592(n)]` -/
def P7810321524900061274.Spec : Prop :=
  ∀ n, (P7810321524900061274.a n : ℤ) = A081605 (n + 1)

end A081605

/-! ## A081605.P14897420844971581143

`lt[A117966(A171960(n)), A171960(n)]`
-/

namespace A081605.P14897420844971581143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A171960 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A081605.P14897420844971581143

namespace A081605

/-- `lt[A117966(A171960(n)), A171960(n)]` -/
def P14897420844971581143.Spec : Prop :=
  ∀ n, (P14897420844971581143.a n : ℤ) = A081605 (n + 1)

end A081605

/-! ## A081605.P17154005793139648128

`eq[0, A371222(n)]`
-/

namespace A081605.P17154005793139648128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081605.P17154005793139648128

namespace A081605

/-- `eq[0, A371222(n)]` -/
def P17154005793139648128.Spec : Prop :=
  ∀ n, (P17154005793139648128.a n : ℤ) = A081605 (n + 1)

end A081605

/-! ## A081605.P12998042594093158010

`eq[0, A319651(n)%3]`
-/

namespace A081605.P12998042594093158010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319651 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081605.P12998042594093158010

namespace A081605

/-- `eq[0, A319651(n)%3]` -/
def P12998042594093158010.Spec : Prop :=
  ∀ n, (P12998042594093158010.a n : ℤ) = A081605 (n + 1)

end A081605

/-! ## A081605.P12360541359640745760

`lt[A319651(n), A004277(A164993(n))]`
-/

namespace A081605.P12360541359640745760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319651 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A164993 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A081605.P12360541359640745760

namespace A081605

/-- `lt[A319651(n), A004277(A164993(n))]` -/
def P12360541359640745760.Spec : Prop :=
  ∀ n, (P12360541359640745760.a n : ℤ) = A081605 (n + 1)

end A081605

/-! ## A081605.P8081477204321078591

`eq[A212193(3*n), A212193(n)]`
-/

namespace A081605.P8081477204321078591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212193 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212193 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081605.P8081477204321078591

namespace A081605

/-- `eq[A212193(3*n), A212193(n)]` -/
def P8081477204321078591.Spec : Prop :=
  ∀ n, (P8081477204321078591.a n : ℤ) = A081605 (n + 1)

end A081605

/-! ## A081605.P16599974287483730893

`comp[A348706(n+1)]`
-/

namespace A081605.P16599974287483730893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081605.P16599974287483730893

namespace A081605

/-- `comp[A348706(n+1)]` -/
def P16599974287483730893.Spec : Prop :=
  ∀ n, (P16599974287483730893.a n : ℤ) = A081605 (n + 1)

end A081605

/-!
# A081606: Numbers having at least one 1 in their ternary representation.

The programs for A081606, the canonical program `A081606.P16879851232945815977` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081606 has offset 1).

The definition of A081606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081606.P16879851232945815977

`eq[0, and(n+1, a(floor(n/3)))]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081606

/-- `eq[0, and(n+1, a(floor(n/3)))]` -/
def P16879851232945815977.Spec : Prop :=
  ∀ n, (P16879851232945815977.a n : ℤ) = A081606 (n + 1)

theorem P16879851232945815977.correct : P16879851232945815977.Spec := by
  intro n
  simp only [A081606, Nat.add_sub_cancel]

end A081606

/-! ## A081606.P6478311176410543897

`lt[and(n+1, a(floor(n/3))), 1]` with `a(0)=1`
-/

namespace A081606.P6478311176410543897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.land (n + 1) (f1 ⌊(n : ℚ) / 3⌋.toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A081606.P6478311176410543897

namespace A081606

/-- `lt[and(n+1, a(floor(n/3))), 1]` -/
def P6478311176410543897.Spec : Prop :=
  ∀ n, (P6478311176410543897.a n : ℤ) = A081606 (n + 1)

end A081606

/-! ## A081606.P243964504496500454

`eq[1, gcd(n%2, a(floor(n/3)))]` with `a(0)=0`
-/

namespace A081606.P243964504496500454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Nat.gcd (n % 2) (f2 ⌊(n : ℚ) / 3⌋.toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081606.P243964504496500454

namespace A081606

/-- `eq[1, gcd(n%2, a(floor(n/3)))]` -/
def P243964504496500454.Spec : Prop :=
  ∀ n, (P243964504496500454.a n : ℤ) = A081606 (n + 1)

end A081606

/-! ## A081606.P8168481096345041049

`lt[0, xor(2^val(n, 3), a(n-1))]` with `a(0)=0`
-/

namespace A081606.P8168481096345041049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Nat.xor (2 ^ SequenceMachineLib.valuation n 3) (f2 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A081606.P8168481096345041049

namespace A081606

/-- `lt[0, xor(2^val(n, 3), a(n-1))]` -/
def P8168481096345041049.Spec : Prop :=
  ∀ n, (P8168481096345041049.a n : ℤ) = A081606 (n + 1)

end A081606

/-! ## A081606.P342910475794994971

`eq[1, a(floor(n/3))^a(n-1)]` with `a(0)=0`
-/

namespace A081606.P342910475794994971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 3⌋.toNat ^ f2 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081606.P342910475794994971

namespace A081606

/-- `eq[1, a(floor(n/3))^a(n-1)]` -/
def P342910475794994971.Spec : Prop :=
  ∀ n, (P342910475794994971.a n : ℤ) = A081606 (n + 1)

end A081606

/-! ## A081606.P13080421306333492416

`comp[A167878(n)]`
-/

namespace A081606.P13080421306333492416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167878 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081606.P13080421306333492416

namespace A081606

/-- `comp[A167878(n)]` -/
def P13080421306333492416.Spec : Prop :=
  ∀ n, (P13080421306333492416.a n : ℤ) = A081606 (n + 1)

end A081606

/-! ## A081606.P9009466240232673516

`comp[A300222(n)]`
-/

namespace A081606.P9009466240232673516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081606.P9009466240232673516

namespace A081606

/-- `comp[A300222(n)]` -/
def P9009466240232673516.Spec : Prop :=
  ∀ n, (P9009466240232673516.a n : ℤ) = A081606 (n + 1)

end A081606

/-! ## A081606.P3223450640763402948

`eq[0, A088917(n)]`
-/

namespace A081606.P3223450640763402948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081606.P3223450640763402948

namespace A081606

/-- `eq[0, A088917(n)]` -/
def P3223450640763402948.Spec : Prop :=
  ∀ n, (P3223450640763402948.a n : ℤ) = A081606 (n + 1)

end A081606

/-! ## A081606.P10201639804525180594

`eq[0, A117980(n)]`
-/

namespace A081606.P10201639804525180594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117980 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081606.P10201639804525180594

namespace A081606

/-- `eq[0, A117980(n)]` -/
def P10201639804525180594.Spec : Prop :=
  ∀ n, (P10201639804525180594.a n : ℤ) = A081606 (n + 1)

end A081606

/-! ## A081606.P9185311803169346698

`eq[1, A316829(n)]`
-/

namespace A081606.P9185311803169346698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081606.P9185311803169346698

namespace A081606

/-- `eq[1, A316829(n)]` -/
def P9185311803169346698.Spec : Prop :=
  ∀ n, (P9185311803169346698.a n : ℤ) = A081606 (n + 1)

end A081606

/-! ## A081606.P889017230211073657

`lt[1, A105220(n)]`
-/

namespace A081606.P889017230211073657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A081606.P889017230211073657

namespace A081606

/-- `lt[1, A105220(n)]` -/
def P889017230211073657.Spec : Prop :=
  ∀ n, (P889017230211073657.a n : ℤ) = A081606 (n + 1)

end A081606

/-! ## A081606.P7614593090436193082

`lt[1, A290091(n)]`
-/

namespace A081606.P7614593090436193082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A081606.P7614593090436193082

namespace A081606

/-- `lt[1, A290091(n)]` -/
def P7614593090436193082.Spec : Prop :=
  ∀ n, (P7614593090436193082.a n : ℤ) = A081606 (n + 1)

end A081606

/-! ## A081606.P14911883328790449393

`comp[record[A004488(n)]]`
-/

namespace A081606.P14911883328790449393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081606.P14911883328790449393

namespace A081606

/-- `comp[record[A004488(n)]]` -/
def P14911883328790449393.Spec : Prop :=
  ∀ n, (P14911883328790449393.a n : ℤ) = A081606 (n + 1)

end A081606

/-! ## A081606.P6227341856238543779

`comp[A005823(n+1)]`
-/

namespace A081606.P6227341856238543779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081606.P6227341856238543779

namespace A081606

/-- `comp[A005823(n+1)]` -/
def P6227341856238543779.Spec : Prop :=
  ∀ n, (P6227341856238543779.a n : ℤ) = A081606 (n + 1)

end A081606

/-! ## A081606.P4146543842006793613

`comp[2*A060372(n)]`
-/

namespace A081606.P4146543842006793613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060372 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081606.P4146543842006793613

namespace A081606

/-- `comp[2*A060372(n)]` -/
def P4146543842006793613.Spec : Prop :=
  ∀ n, (P4146543842006793613.a n : ℤ) = A081606 (n + 1)

end A081606

/-! ## A081606.P15233904126592946785

`comp[2*A060373(n)]`
-/

namespace A081606.P15233904126592946785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060373 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081606.P15233904126592946785

namespace A081606

/-- `comp[2*A060373(n)]` -/
def P15233904126592946785.Spec : Prop :=
  ∀ n, (P15233904126592946785.a n : ℤ) = A081606 (n + 1)

end A081606

/-! ## A081606.P8320028872933145069

`comp[2*A060374(n)]`
-/

namespace A081606.P8320028872933145069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060374 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081606.P8320028872933145069

namespace A081606

/-- `comp[2*A060374(n)]` -/
def P8320028872933145069.Spec : Prop :=
  ∀ n, (P8320028872933145069.a n : ℤ) = A081606 (n + 1)

end A081606

/-! ## A081606.P14834529495939378406

`comp[A167877(n)+n]`
-/

namespace A081606.P14834529495939378406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167877 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081606.P14834529495939378406

namespace A081606

/-- `comp[A167877(n)+n]` -/
def P14834529495939378406.Spec : Prop :=
  ∀ n, (P14834529495939378406.a n : ℤ) = A081606 (n + 1)

end A081606

/-! ## A081606.P11151801850186886681

`lt[n, 2*A330740(n)]`
-/

namespace A081606.P11151801850186886681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A330740 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A081606.P11151801850186886681

namespace A081606

/-- `lt[n, 2*A330740(n)]` -/
def P11151801850186886681.Spec : Prop :=
  ∀ n, (P11151801850186886681.a n : ℤ) = A081606 (n + 1)

end A081606

/-!
# A081607: Number of numbers <= n having at least one 0 in their ternary representation.

The programs for A081607, the canonical program `A081607.P12536140067758024536` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081607 has offset 0).

The definition of A081607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081607.P12536140067758024536

`1-A081608(n)+n`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081607

/-- `1-A081608(n)+n` -/
def P12536140067758024536.Spec : Prop :=
  ∀ n, P12536140067758024536.a n = A081607 n

theorem P12536140067758024536.correct : P12536140067758024536.Spec := by
  intro n
  simp only [A081607]

end A081607

/-! ## A081607.P16769580080165970584

`∑[char[A081605(n+1)]]`
-/

namespace A081607.P16769580080165970584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081605 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081607.P16769580080165970584

namespace A081607

/-- `∑[char[A081605(n+1)]]` -/
def P16769580080165970584.Spec : Prop :=
  ∀ n, (P16769580080165970584.a n : ℤ) = A081607 n

end A081607

/-! ## A081607.P11105906424529205409

`∑[char[eq[0, A290825(n)]]]`
-/

namespace A081607.P11105906424529205409
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290825 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081607.P11105906424529205409

namespace A081607

/-- `∑[char[eq[0, A290825(n)]]]` -/
def P11105906424529205409.Spec : Prop :=
  ∀ n, (P11105906424529205409.a n : ℤ) = A081607 n

end A081607

/-! ## A081607.P10490725308961582693

`∑[C(2, A309953(n)+2)]`
-/

namespace A081607.P10490725308961582693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A309953 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081607.P10490725308961582693

namespace A081607

/-- `∑[C(2, A309953(n)+2)]` -/
def P10490725308961582693.Spec : Prop :=
  ∀ n, (P10490725308961582693.a n : ℤ) = A081607 n

end A081607

/-! ## A081607.P4210235753004479321

`∑[char[comp[A032924(n+1)]]]`
-/

namespace A081607.P4210235753004479321
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081607.P4210235753004479321

namespace A081607

/-- `∑[char[comp[A032924(n+1)]]]` -/
def P4210235753004479321.Spec : Prop :=
  ∀ n, (P4210235753004479321.a n : ℤ) = A081607 n

end A081607

/-! ## A081607.P9514095825928230526

`∑[1-floor(acot(A077267(n)))]`
-/

namespace A081607.P9514095825928230526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊SequenceMachineLib.acot (A077267 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081607.P9514095825928230526

namespace A081607

/-- `∑[1-floor(acot(A077267(n)))]` -/
def P9514095825928230526.Spec : Prop :=
  ∀ n, P9514095825928230526.a n = A081607 n

end A081607

/-! ## A081607.P15333373063529262279

`∑[1-floor(acot(A212193(n)))]`
-/

namespace A081607.P15333373063529262279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊SequenceMachineLib.acot (A212193 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081607.P15333373063529262279

namespace A081607

/-- `∑[1-floor(acot(A212193(n)))]` -/
def P15333373063529262279.Spec : Prop :=
  ∀ n, P15333373063529262279.a n = A081607 n

end A081607

/-! ## A081607.P13752388470358344641

`∑[A178333(A309953(n)+1)]`
-/

namespace A081607.P13752388470358344641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 (A309953 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081607.P13752388470358344641

namespace A081607

/-- `∑[A178333(A309953(n)+1)]` -/
def P13752388470358344641.Spec : Prop :=
  ∀ n, P13752388470358344641.a n = A081607 n

end A081607

/-! ## A081607.P9245198813009080175

`∑[A309953(C(3, A309953(n)))]`
-/

namespace A081607.P9245198813009080175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309953 (Nat.choose 3 (A309953 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081607.P9245198813009080175

namespace A081607

/-- `∑[A309953(C(3, A309953(n)))]` -/
def P9245198813009080175.Spec : Prop :=
  ∀ n, P9245198813009080175.a n = A081607 n

end A081607

/-! ## A081607.P551702633205248087

`∑[A309953(A309953(n)+1)%2]`
-/

namespace A081607.P551702633205248087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309953 (A309953 n + 1).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081607.P551702633205248087

namespace A081607

/-- `∑[A309953(A309953(n)+1)%2]` -/
def P551702633205248087.Spec : Prop :=
  ∀ n, P551702633205248087.a n = A081607 n

end A081607

/-! ## A081607.P13443228938211291778

`∑[1-A039966(A171960(n))]`
-/

namespace A081607.P13443228938211291778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A039966 (A171960 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081607.P13443228938211291778

namespace A081607

/-- `∑[1-A039966(A171960(n))]` -/
def P13443228938211291778.Spec : Prop :=
  ∀ n, P13443228938211291778.a n = A081607 n

end A081607

/-!
# A081608: Number of numbers <= n having no 0 in their ternary representation.

The programs for A081608, the canonical program `A081608.P15390097405478188448` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081608 has offset 0).

The definition of A081608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081608.P15390097405478188448

`∑[a(floor(n/3))*a(n%3)]` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081608

/-- `∑[a(floor(n/3))*a(n%3)]` -/
def P15390097405478188448.Spec : Prop :=
  ∀ n, (P15390097405478188448.a n : ℤ) = A081608 n

theorem P15390097405478188448.correct : P15390097405478188448.Spec := by
  intro n
  simp only [A081608]

end A081608

/-! ## A081608.P16567787638261314434

`∑[floor(sqrt(A290825(n)))]`
-/

namespace A081608.P16567787638261314434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A290825 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081608.P16567787638261314434

namespace A081608

/-- `∑[floor(sqrt(A290825(n)))]` -/
def P16567787638261314434.Spec : Prop :=
  ∀ n, P16567787638261314434.a n = A081608 n

end A081608

/-! ## A081608.P1519975194834391014

`∑[floor(acot(A077267(n)))]`
-/

namespace A081608.P1519975194834391014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A077267 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081608.P1519975194834391014

namespace A081608

/-- `∑[floor(acot(A077267(n)))]` -/
def P1519975194834391014.Spec : Prop :=
  ∀ n, P1519975194834391014.a n = A081608 n

end A081608

/-! ## A081608.P18017051636890567881

`∑[floor(acot(A212193(n)))]`
-/

namespace A081608.P18017051636890567881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A212193 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081608.P18017051636890567881

namespace A081608

/-- `∑[floor(acot(A212193(n)))]` -/
def P18017051636890567881.Spec : Prop :=
  ∀ n, P18017051636890567881.a n = A081608 n

end A081608

/-! ## A081608.P10450022734666712256

`1-A081607(n)+n`
-/

namespace A081608.P10450022734666712256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A081607 n + (n : ℤ)

end

end A081608.P10450022734666712256

namespace A081608

/-- `1-A081607(n)+n` -/
def P10450022734666712256.Spec : Prop :=
  ∀ n, P10450022734666712256.a n = A081608 n

theorem P10450022734666712256.correct : P10450022734666712256.Spec := by
  intro n
  simp only [A081608, Nat.add_sub_cancel, A081608.P10450022734666712256.a, A081608.P15390097405478188448.f1, A081608.P15390097405478188448.a, A081607, A081607.P12536140067758024536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081608

/-! ## A081608.P2298058482558109007

`∑[A319651(n)²%3]`
-/

namespace A081608.P2298058482558109007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319651 n ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081608.P2298058482558109007

namespace A081608

/-- `∑[A319651(n)²%3]` -/
def P2298058482558109007.Spec : Prop :=
  ∀ n, P2298058482558109007.a n = A081608 n

end A081608

/-! ## A081608.P2783742332310593882

`∑[char[A032924(n+1)]]`
-/

namespace A081608.P2783742332310593882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081608.P2783742332310593882

namespace A081608

/-- `∑[char[A032924(n+1)]]` -/
def P2783742332310593882.Spec : Prop :=
  ∀ n, (P2783742332310593882.a n : ℤ) = A081608 n

end A081608

/-! ## A081608.P5527038754117352012

`∑[1-char[A081605(n+1)]]`
-/

namespace A081608.P5527038754117352012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081605 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081608.P5527038754117352012

namespace A081608

/-- `∑[1-char[A081605(n+1)]]` -/
def P5527038754117352012.Spec : Prop :=
  ∀ n, P5527038754117352012.a n = A081608 n

end A081608

/-! ## A081608.P16158163549022000096

`A081611(A132141(n+1))-2`
-/

namespace A081608.P16158163549022000096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 (A132141 (n + 1)).toNat - 2

end

end A081608.P16158163549022000096

namespace A081608

/-- `A081611(A132141(n+1))-2` -/
def P16158163549022000096.Spec : Prop :=
  ∀ n, P16158163549022000096.a n = A081608 n

end A081608

/-! ## A081608.P16224162878406427630

`∑[A039966(A171960(n))]`
-/

namespace A081608.P16224162878406427630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 (A171960 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081608.P16224162878406427630

namespace A081608

/-- `∑[A039966(A171960(n))]` -/
def P16224162878406427630.Spec : Prop :=
  ∀ n, P16224162878406427630.a n = A081608 n

end A081608

/-! ## A081608.P12239348446730897327

`∑[A290825(n*A290825(n))]`
-/

namespace A081608.P12239348446730897327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290825 ((n : ℤ) * A290825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081608.P12239348446730897327

namespace A081608

/-- `∑[A290825(n*A290825(n))]` -/
def P12239348446730897327.Spec : Prop :=
  ∀ n, P12239348446730897327.a n = A081608 n

end A081608

/-! ## A081608.P10729037242886241702

`∑[char[A348706(n+1)]]`
-/

namespace A081608.P10729037242886241702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348706 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081608.P10729037242886241702

namespace A081608

/-- `∑[char[A348706(n+1)]]` -/
def P10729037242886241702.Spec : Prop :=
  ∀ n, (P10729037242886241702.a n : ℤ) = A081608 n

end A081608

/-! ## A081608.P892440433851436704

`∑[char[A244591(n+2)]]`
-/

namespace A081608.P892440433851436704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244591 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081608.P892440433851436704

namespace A081608

/-- `∑[char[A244591(n+2)]]` -/
def P892440433851436704.Spec : Prop :=
  ∀ n, (P892440433851436704.a n : ℤ) = A081608 n

end A081608

/-!
# A081609: Number of numbers <= n having at least one 1 in their ternary representation.

The programs for A081609, the canonical program `A081609.P7355338956108389472` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081609 has offset 0).

The definition of A081609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081609.P16470605495186998395

`∑[a(floor(n/3))^val(n, 2)]` with `a(0)=0`
-/

namespace A081609.P16470605495186998395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 3⌋.toNat ^ SequenceMachineLib.valuation n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081609.P16470605495186998395

namespace A081609

/-- `∑[a(floor(n/3))^val(n, 2)]` -/
def P16470605495186998395.Spec : Prop :=
  ∀ n, (P16470605495186998395.a n : ℤ) = A081609 n

end A081609

/-! ## A081609.P7355338956108389472

`∑[gcd(n%2, a(floor(n/3)))]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081609

/-- `∑[gcd(n%2, a(floor(n/3)))]` -/
def P7355338956108389472.Spec : Prop :=
  ∀ n, (P7355338956108389472.a n : ℤ) = A081609 n

theorem P7355338956108389472.correct : P7355338956108389472.Spec := by
  intro n
  simp only [A081609]

end A081609

/-! ## A081609.P10222771550940339913

`∑[a(floor(n/3))^a(n-1)]` with `a(0)=0`
-/

namespace A081609.P10222771550940339913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 3⌋.toNat ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081609.P10222771550940339913

namespace A081609

/-- `∑[a(floor(n/3))^a(n-1)]` -/
def P10222771550940339913.Spec : Prop :=
  ∀ n, (P10222771550940339913.a n : ℤ) = A081609 n

end A081609

/-! ## A081609.P2090282592894886376

`∑[a(floor(n/3))^((n+1)%2)]` with `a(0)=0`
-/

namespace A081609.P2090282592894886376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 3⌋.toNat ^ ((n + 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081609.P2090282592894886376

namespace A081609

/-- `∑[a(floor(n/3))^((n+1)%2)]` -/
def P2090282592894886376.Spec : Prop :=
  ∀ n, (P2090282592894886376.a n : ℤ) = A081609 n

end A081609

/-! ## A081609.P7179775185927721145

`∑[a(floor(n/3))^and(1, n+1)]` with `a(0)=0`
-/

namespace A081609.P7179775185927721145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 3⌋.toNat ^ Nat.land 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081609.P7179775185927721145

namespace A081609

/-- `∑[a(floor(n/3))^and(1, n+1)]` -/
def P7179775185927721145.Spec : Prop :=
  ∀ n, (P7179775185927721145.a n : ℤ) = A081609 n

end A081609

/-! ## A081609.P11127575144319096380

`∑[abs(a(floor(n/(a(n-1)+2))))]` with `a(0)=0, a(1)=1`
-/

namespace A081609.P11127575144319096380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / (f1 (n - 1) + 2 : ℚ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081609.P11127575144319096380

namespace A081609

/-- `∑[abs(a(floor(n/(a(n-1)+2))))]` -/
def P11127575144319096380.Spec : Prop :=
  ∀ n, (P11127575144319096380.a n : ℤ) = A081609 n

end A081609

/-! ## A081609.P9921095296439763120

`∑[a(floor(n/(a(n-1)+2)))²]` with `a(0)=0, a(1)=1`
-/

namespace A081609.P9921095296439763120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / (f1 (n - 1) + 2 : ℚ)⌋.toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081609.P9921095296439763120

namespace A081609

/-- `∑[a(floor(n/(a(n-1)+2)))²]` -/
def P9921095296439763120.Spec : Prop :=
  ∀ n, (P9921095296439763120.a n : ℤ) = A081609 n

end A081609

/-! ## A081609.P11666150998688737885

`∑[sqrt(a(floor(n/(a(n-1)+2))))]` with `a(0)=0, a(1)=1`
-/

namespace A081609.P11666150998688737885
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Real.sqrt (f1 ⌊(n : ℝ) / (f1 (n - 1) + 2)⌋.toNat)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081609.P11666150998688737885

namespace A081609

/-- `∑[sqrt(a(floor(n/(a(n-1)+2))))]` -/
def P11666150998688737885.Spec : Prop :=
  ∀ n, P11666150998688737885.a n = (A081609 n : ℝ)

end A081609

/-! ## A081609.P5582261560327984595

`∑[dr(a(floor(n/(a(n-1)+2))))]` with `a(0)=0, a(1)=1`
-/

namespace A081609.P5582261560327984595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 ⌊(n : ℚ) / (f1 (n - 1) + 2 : ℚ)⌋.toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081609.P5582261560327984595

namespace A081609

/-- `∑[dr(a(floor(n/(a(n-1)+2))))]` -/
def P5582261560327984595.Spec : Prop :=
  ∀ n, (P5582261560327984595.a n : ℤ) = A081609 n

end A081609

/-! ## A081609.P6354467613289590899

`∑[A316829(n)]`
-/

namespace A081609.P6354467613289590899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081609.P6354467613289590899

namespace A081609

/-- `∑[A316829(n)]` -/
def P6354467613289590899.Spec : Prop :=
  ∀ n, P6354467613289590899.a n = A081609 n

end A081609

/-! ## A081609.P6687147691479345982

`∑[log2(A105220(n))]`
-/

namespace A081609.P6687147691479345982
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A105220 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081609.P6687147691479345982

namespace A081609

/-- `∑[log2(A105220(n))]` -/
def P6687147691479345982.Spec : Prop :=
  ∀ n, P6687147691479345982.a n = (A081609 n : ℝ)

end A081609

/-! ## A081609.P13092692929191318280

`∑[1-A088917(n)]`
-/

namespace A081609.P13092692929191318280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A088917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081609.P13092692929191318280

namespace A081609

/-- `∑[1-A088917(n)]` -/
def P13092692929191318280.Spec : Prop :=
  ∀ n, P13092692929191318280.a n = A081609 n

end A081609

/-! ## A081609.P16111710045060731595

`∑[round(atan(A062756(n)))]`
-/

namespace A081609.P16111710045060731595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A062756 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081609.P16111710045060731595

namespace A081609

/-- `∑[round(atan(A062756(n)))]` -/
def P16111710045060731595.Spec : Prop :=
  ∀ n, P16111710045060731595.a n = A081609 n

end A081609

/-! ## A081609.P6425886603693449152

`∑[char[comp[A167878(n)]]]`
-/

namespace A081609.P6425886603693449152
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167878 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081609.P6425886603693449152

namespace A081609

/-- `∑[char[comp[A167878(n)]]]` -/
def P6425886603693449152.Spec : Prop :=
  ∀ n, (P6425886603693449152.a n : ℤ) = A081609 n

end A081609

/-! ## A081609.P6069387478654811556

`∑[char[A081606(n+1)]]`
-/

namespace A081609.P6069387478654811556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081606 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081609.P6069387478654811556

namespace A081609

/-- `∑[char[A081606(n+1)]]` -/
def P6069387478654811556.Spec : Prop :=
  ∀ n, (P6069387478654811556.a n : ℤ) = A081609 n

end A081609

/-! ## A081609.P10201120885326129137

`∑[and(1, A006047(n)+1)]`
-/

namespace A081609.P10201120885326129137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A006047 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081609.P10201120885326129137

namespace A081609

/-- `∑[and(1, A006047(n)+1)]` -/
def P10201120885326129137.Spec : Prop :=
  ∀ n, P10201120885326129137.a n = A081609 n

end A081609

/-! ## A081609.P6972474247435265749

`∑[char[comp[A005823(n+1)]]]`
-/

namespace A081609.P6972474247435265749
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081609.P6972474247435265749

namespace A081609

/-- `∑[char[comp[A005823(n+1)]]]` -/
def P6972474247435265749.Spec : Prop :=
  ∀ n, (P6972474247435265749.a n : ℤ) = A081609 n

end A081609

/-! ## A081609.P6895844140449954016

`∑[A001221(A120880(n))]`
-/

namespace A081609.P6895844140449954016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A120880 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081609.P6895844140449954016

namespace A081609

/-- `∑[A001221(A120880(n))]` -/
def P6895844140449954016.Spec : Prop :=
  ∀ n, P6895844140449954016.a n = A081609 n

end A081609

/-! ## A081609.P15552685743573590997

`∑[A117980(A117980(n))]`
-/

namespace A081609.P15552685743573590997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117980 (A117980 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081609.P15552685743573590997

namespace A081609

/-- `∑[A117980(A117980(n))]` -/
def P15552685743573590997.Spec : Prop :=
  ∀ n, P15552685743573590997.a n = A081609 n

end A081609

/-! ## A081609.P11024119377192606993

`1-A061392(n+1)+n`
-/

namespace A081609.P11024119377192606993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A061392 (n + 1) + (n : ℤ)

end

end A081609.P11024119377192606993

namespace A081609

/-- `1-A061392(n+1)+n` -/
def P11024119377192606993.Spec : Prop :=
  ∀ n, P11024119377192606993.a n = A081609 n

end A081609

/-!
# A081610: Number of numbers <= n having at least one 2 in their ternary representation.

The programs for A081610, the canonical program `A081610.P55257795083380857` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081610 has offset 0).

The definition of A081610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081610.P13528623420666904692

`A190941(n)-n`
-/

namespace A081610.P13528623420666904692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190941 n - (n : ℤ)

end

end A081610.P13528623420666904692

namespace A081610

/-- `A190941(n)-n` -/
def P13528623420666904692.Spec : Prop :=
  ∀ n, P13528623420666904692.a n = A081610 n

theorem P13528623420666904692.correct : P13528623420666904692.Spec := by
  intro n
  simp only [A081610, Nat.add_sub_cancel, A081610.P13528623420666904692.a, A081610.P55257795083380857.f1, A081610.P55257795083380857.a, A039966, A039966.P2983732039827484293.a, A190941, A190941.P10346162016489397206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081610

/-! ## A081610.P11228910786543430278

`∑[A189820(n+1)]`
-/

namespace A081610.P11228910786543430278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081610.P11228910786543430278

namespace A081610

/-- `∑[A189820(n+1)]` -/
def P11228910786543430278.Spec : Prop :=
  ∀ n, P11228910786543430278.a n = A081610 n

end A081610

/-! ## A081610.P55257795083380857

`∑[1-A039966(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081610

/-- `∑[1-A039966(n)]` -/
def P55257795083380857.Spec : Prop :=
  ∀ n, P55257795083380857.a n = A081610 n

theorem P55257795083380857.correct : P55257795083380857.Spec := by
  intro n
  simp only [A081610]

end A081610

/-! ## A081610.P13506029894876749005

`∑[A190592(n)]-n`
-/

namespace A081610.P13506029894876749005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A081610.P13506029894876749005

namespace A081610

/-- `∑[A190592(n)]-n` -/
def P13506029894876749005.Spec : Prop :=
  ∀ n, P13506029894876749005.a n = A081610 n

end A081610

/-! ## A081610.P4365112016355577474

`∑[round(atan(A081603(n)))]`
-/

namespace A081610.P4365112016355577474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A081603 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081610.P4365112016355577474

namespace A081610

/-- `∑[round(atan(A081603(n)))]` -/
def P4365112016355577474.Spec : Prop :=
  ∀ n, P4365112016355577474.a n = A081610 n

end A081610

/-! ## A081610.P4932611658386955830

`1-A081611(n)+n`
-/

namespace A081610.P4932611658386955830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A081611 n + (n : ℤ)

end

end A081610.P4932611658386955830

namespace A081610

/-- `1-A081611(n)+n` -/
def P4932611658386955830.Spec : Prop :=
  ∀ n, P4932611658386955830.a n = A081610 n

end A081610

/-! ## A081610.P3503348171490128021

`∑[char[A074940(n+1)]]`
-/

namespace A081610.P3503348171490128021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074940 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081610.P3503348171490128021

namespace A081610

/-- `∑[char[A074940(n+1)]]` -/
def P3503348171490128021.Spec : Prop :=
  ∀ n, (P3503348171490128021.a n : ℤ) = A081610 n

end A081610

/-! ## A081610.P4729762152764498174

`∑[1-A088917(2*n)]`
-/

namespace A081610.P4729762152764498174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A088917 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081610.P4729762152764498174

namespace A081610

/-- `∑[1-A088917(2*n)]` -/
def P4729762152764498174.Spec : Prop :=
  ∀ n, P4729762152764498174.a n = A081610 n

end A081610

/-! ## A081610.P332422682508408191

`∑[1-C(2, A273515(n))]`
-/

namespace A081610.P332422682508408191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose 2 (A273515 n).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081610.P332422682508408191

namespace A081610

/-- `∑[1-C(2, A273515(n))]` -/
def P332422682508408191.Spec : Prop :=
  ∀ n, P332422682508408191.a n = A081610 n

end A081610

/-! ## A081610.P1677295644304722350

`∑[A038574(n)%3]-n`
-/

namespace A081610.P1677295644304722350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038574 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A081610.P1677295644304722350

namespace A081610

/-- `∑[A038574(n)%3]-n` -/
def P1677295644304722350.Spec : Prop :=
  ∀ n, P1677295644304722350.a n = A081610 n

end A081610

/-! ## A081610.P1722674488317409048

`∑[1-C(A167877(n), n)]`
-/

namespace A081610.P1722674488317409048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (A167877 n).toNat n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081610.P1722674488317409048

namespace A081610

/-- `∑[1-C(A167877(n), n)]` -/
def P1722674488317409048.Spec : Prop :=
  ∀ n, P1722674488317409048.a n = A081610 n

end A081610

/-! ## A081610.P1917299932487510221

`∑[char[comp[A005836(n+1)]]]`
-/

namespace A081610.P1917299932487510221
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081610.P1917299932487510221

namespace A081610

/-- `∑[char[comp[A005836(n+1)]]]` -/
def P1917299932487510221.Spec : Prop :=
  ∀ n, (P1917299932487510221.a n : ℤ) = A081610 n

end A081610

/-! ## A081610.P8148619079303011165

`∑[1-char[A107681(n+1)]]`
-/

namespace A081610.P8148619079303011165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107681 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081610.P8148619079303011165

namespace A081610

/-- `∑[1-char[A107681(n+1)]]` -/
def P8148619079303011165.Spec : Prop :=
  ∀ n, P8148619079303011165.a n = A081610 n

end A081610

/-! ## A081610.P7357803700983353952

`∑[A001221(A117592(n))]`
-/

namespace A081610.P7357803700983353952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A117592 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081610.P7357803700983353952

namespace A081610

/-- `∑[A001221(A117592(n))]` -/
def P7357803700983353952.Spec : Prop :=
  ∀ n, P7357803700983353952.a n = A081610 n

end A081610

/-! ## A081610.P17237353156194517341

`∑[A002487(A273514(n))]`
-/

namespace A081610.P17237353156194517341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A273514 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081610.P17237353156194517341

namespace A081610

/-- `∑[A002487(A273514(n))]` -/
def P17237353156194517341.Spec : Prop :=
  ∀ n, P17237353156194517341.a n = A081610 n

end A081610

/-! ## A081610.P12443481134516934091

`A190941(n)%A028310(n)`
-/

namespace A081610.P12443481134516934091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190941 n) (A028310 n)

end

end A081610.P12443481134516934091

namespace A081610

/-- `A190941(n)%A028310(n)` -/
def P12443481134516934091.Spec : Prop :=
  ∀ n, P12443481134516934091.a n = A081610 n

end A081610

/-! ## A081610.P306388979681623774

`∑[A001221(abs(A117942(n)))]`
-/

namespace A081610.P306388979681623774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 |A117942 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081610.P306388979681623774

namespace A081610

/-- `∑[A001221(abs(A117942(n)))]` -/
def P306388979681623774.Spec : Prop :=
  ∀ n, P306388979681623774.a n = A081610 n

end A081610

/-! ## A081610.P2536335215752839603

`∑[A001221(A117942(n)²)]`
-/

namespace A081610.P2536335215752839603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A117942 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081610.P2536335215752839603

namespace A081610

/-- `∑[A001221(A117942(n)²)]` -/
def P2536335215752839603.Spec : Prop :=
  ∀ n, P2536335215752839603.a n = A081610 n

end A081610

/-! ## A081610.P16015962777461671234

`∑[A117980(A117980(2*n))]`
-/

namespace A081610.P16015962777461671234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117980 (A117980 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081610.P16015962777461671234

namespace A081610

/-- `∑[A117980(A117980(2*n))]` -/
def P16015962777461671234.Spec : Prop :=
  ∀ n, P16015962777461671234.a n = A081610 n

end A081610

/-! ## A081610.P9799855557014663076

`∑[A316829(2*n)]`
-/

namespace A081610.P9799855557014663076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081610.P9799855557014663076

namespace A081610

/-- `∑[A316829(2*n)]` -/
def P9799855557014663076.Spec : Prop :=
  ∀ n, P9799855557014663076.a n = A081610 n

end A081610

/-!
# A081611: Number of numbers <= n having no 2 in their ternary representation.

The programs for A081611, the canonical program `A081611.P15437231046551581943` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081611 has offset 0).

The definition of A081611 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039966, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A081611.P15437231046551581943

`a(n-1)+A039966(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081611

/-- `a(n-1)+A039966(n)` -/
def P15437231046551581943.Spec : Prop :=
  ∀ n, P15437231046551581943.a n = A081611 n

theorem P15437231046551581943.correct : P15437231046551581943.Spec := by
  intro n
  simp only [A081611]

end A081611

/-! ## A081611.P1922775016740115633

`∑[a(floor(n/3))*a(n%3)]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A081611.P1922775016740115633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  f1 ⌊(n : ℚ) / 3⌋.toNat * f1 (n % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081611.P1922775016740115633

namespace A081611

/-- `∑[a(floor(n/3))*a(n%3)]` -/
def P1922775016740115633.Spec : Prop :=
  ∀ n, (P1922775016740115633.a n : ℤ) = A081611 n

end A081611

/-! ## A081611.P6826966430575750011

`∑[A039966(n)]`
-/

namespace A081611.P6826966430575750011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081611.P6826966430575750011

namespace A081611

/-- `∑[A039966(n)]` -/
def P6826966430575750011.Spec : Prop :=
  ∀ n, P6826966430575750011.a n = A081611 n

end A081611

/-! ## A081611.P4734661120465483154

`∑[A088917(2*n)]`
-/

namespace A081611.P4734661120465483154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081611.P4734661120465483154

namespace A081611

/-- `∑[A088917(2*n)]` -/
def P4734661120465483154.Spec : Prop :=
  ∀ n, P4734661120465483154.a n = A081611 n

end A081611

/-! ## A081611.P17395554310243947293

`∑[A117592(n)%2]`
-/

namespace A081611.P17395554310243947293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117592 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081611.P17395554310243947293

namespace A081611

/-- `∑[A117592(n)%2]` -/
def P17395554310243947293.Spec : Prop :=
  ∀ n, P17395554310243947293.a n = A081611 n

end A081611

/-! ## A081611.P9307197690723617063

`∑[A151672(n)%3]`
-/

namespace A081611.P9307197690723617063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151672 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081611.P9307197690723617063

namespace A081611

/-- `∑[A151672(n)%3]` -/
def P9307197690723617063.Spec : Prop :=
  ∀ n, P9307197690723617063.a n = A081611 n

end A081611

/-! ## A081611.P11410182550353639638

`∑[C(2, A273515(n))]`
-/

namespace A081611.P11410182550353639638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A273515 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081611.P11410182550353639638

namespace A081611

/-- `∑[C(2, A273515(n))]` -/
def P11410182550353639638.Spec : Prop :=
  ∀ n, (P11410182550353639638.a n : ℤ) = A081611 n

end A081611

/-! ## A081611.P13034917774937400508

`∑[C(A167877(n), n)]`
-/

namespace A081611.P13034917774937400508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A167877 n).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081611.P13034917774937400508

namespace A081611

/-- `∑[C(A167877(n), n)]` -/
def P13034917774937400508.Spec : Prop :=
  ∀ n, (P13034917774937400508.a n : ℤ) = A081611 n

end A081611

/-! ## A081611.P10489219624439423381

`1-A081610(n)+n`
-/

namespace A081611.P10489219624439423381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A081610 n + (n : ℤ)

end

end A081611.P10489219624439423381

namespace A081611

/-- `1-A081610(n)+n` -/
def P10489219624439423381.Spec : Prop :=
  ∀ n, P10489219624439423381.a n = A081611 n

end A081611

/-! ## A081611.P2793680800573860139

`∑[char[A005836(n+1)]]`
-/

namespace A081611.P2793680800573860139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081611.P2793680800573860139

namespace A081611

/-- `∑[char[A005836(n+1)]]` -/
def P2793680800573860139.Spec : Prop :=
  ∀ n, (P2793680800573860139.a n : ℤ) = A081611 n

end A081611

/-! ## A081611.P1741368082590422539

`∑[char[A083904(n+1)]]`
-/

namespace A081611.P1741368082590422539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083904 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081611.P1741368082590422539

namespace A081611

/-- `∑[char[A083904(n+1)]]` -/
def P1741368082590422539.Spec : Prop :=
  ∀ n, (P1741368082590422539.a n : ℤ) = A081611 n

end A081611

/-! ## A081611.P10874463932123928199

`∑[char[A107681(n+1)]]`
-/

namespace A081611.P10874463932123928199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107681 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081611.P10874463932123928199

namespace A081611

/-- `∑[char[A107681(n+1)]]` -/
def P10874463932123928199.Spec : Prop :=
  ∀ n, (P10874463932123928199.a n : ℤ) = A081611 n

end A081611

/-! ## A081611.P17137557171233151212

`Δ[n²]-A190941(n)`
-/

namespace A081611.P17137557171233151212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A190941 n

end

end A081611.P17137557171233151212

namespace A081611

/-- `Δ[n²]-A190941(n)` -/
def P17137557171233151212.Spec : Prop :=
  ∀ n, P17137557171233151212.a n = A081611 n

end A081611

/-! ## A081611.P11428702381201261034

`∑[1-A189820(n+1)]`
-/

namespace A081611.P11428702381201261034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A189820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081611.P11428702381201261034

namespace A081611

/-- `∑[1-A189820(n+1)]` -/
def P11428702381201261034.Spec : Prop :=
  ∀ n, P11428702381201261034.a n = A081611 n

end A081611

/-! ## A081611.P1862882419457442014

`∑[2-A190592(n)]-1`
-/

namespace A081611.P1862882419457442014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A190592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A081611.P1862882419457442014

namespace A081611

/-- `∑[2-A190592(n)]-1` -/
def P1862882419457442014.Spec : Prop :=
  ∀ n, P1862882419457442014.a n = A081611 n

end A081611

/-! ## A081611.P16250695109350719263

`∑[1-round(atan(A081603(n)))]`
-/

namespace A081611.P16250695109350719263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - SequenceMachineLib.roundAway (Real.arctan (A081603 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081611.P16250695109350719263

namespace A081611

/-- `∑[1-round(atan(A081603(n)))]` -/
def P16250695109350719263.Spec : Prop :=
  ∀ n, P16250695109350719263.a n = A081611 n

end A081611

/-! ## A081611.P11016589677273118887

`A004396(A088564(n))`
-/

namespace A081611.P11016589677273118887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A088564 n).toNat

end

end A081611.P11016589677273118887

namespace A081611

/-- `A004396(A088564(n))` -/
def P11016589677273118887.Spec : Prop :=
  ∀ n, P11016589677273118887.a n = A081611 n

end A081611

/-! ## A081611.P1323491905299531663

`∑[char[A060372(n)]]`
-/

namespace A081611.P1323491905299531663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081611.P1323491905299531663

namespace A081611

/-- `∑[char[A060372(n)]]` -/
def P1323491905299531663.Spec : Prop :=
  ∀ n, (P1323491905299531663.a n : ℤ) = A081611 n

end A081611

/-! ## A081611.P12573040377808251602

`∑[char[A060374(n)]]`
-/

namespace A081611.P12573040377808251602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060374 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081611.P12573040377808251602

namespace A081611

/-- `∑[char[A060374(n)]]` -/
def P12573040377808251602.Spec : Prop :=
  ∀ n, (P12573040377808251602.a n : ℤ) = A081611 n

end A081611

/-!
# A081612: First column of A082827.

The programs for A081612, there is no canonical definition to state claims against.
-/

/-! ## A081612.P14619666771510900843

`A082827(∑[n]+1)`
-/

namespace A081612.P14619666771510900843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082827 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A081612.P14619666771510900843

/-! ## A081612.P3037691462257403390

`A000124(n)-∑[A023532(A049032(n+1))]`
-/

namespace A081612.P3037691462257403390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A049032 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081612.P3037691462257403390

/-! ## A081612.P7026908102116645183

`∑[A028310(n)-A023532(A049032(n+1))]`
-/

namespace A081612.P7026908102116645183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A023532 (A049032 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081612.P7026908102116645183

/-! ## A081612.P6800214295380803326

`∑[abs(A030190(A094816(2*(n+1)))-n)]`
-/

namespace A081612.P6800214295380803326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A030190 (A094816 (2 * (n + 1))).toNat - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081612.P6800214295380803326

/-! ## A081612.P3900609315912430859

`∑[abs(A212793(A174216(n+1))-n)]`
-/

namespace A081612.P3900609315912430859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A212793 (A174216 (n + 1)).toNat - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081612.P3900609315912430859

/-!
# A081613: Length of iteration list when Collatz-function is iterated with initial value n!.

The programs for A081613, there is no canonical definition to state claims against.
-/

/-! ## A081613.P1885794564464594507

`A070974(floor(acot(n)+n))+1`
-/

namespace A081613.P1885794564464594507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070974 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + 1

end

end A081613.P1885794564464594507

/-! ## A081613.P8989473026510318798

`A070974(floor(sqrt(n²+1)))+1`
-/

namespace A081613.P8989473026510318798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070974 (Nat.sqrt (n ^ 2 + 1)) + 1

end

end A081613.P8989473026510318798

/-! ## A081613.P5428021139795965689

`xor(2, xor(2, A070974(A028310(n))+1))`
-/

namespace A081613.P5428021139795965689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.xor 2 (A070974 (A028310 n).toNat + 1))

end

end A081613.P5428021139795965689

/-! ## A081613.P4664511501224556263

`A070974(A028310(n))-A000010(((-1)^n)²)+2`
-/

namespace A081613.P4664511501224556263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070974 (A028310 n).toNat - A000010 (((-1) ^ n) ^ 2).toNat + 2

end

end A081613.P4664511501224556263

/-! ## A081613.P3218784997937984438

`char[A057163(n)]*A070974(A028310(n))+1`
-/

namespace A081613.P3218784997937984438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A070974 (A028310 n).toNat + 1

end

end A081613.P3218784997937984438

/-! ## A081613.P1668843187612043571

`(A070974(A028310(n))+1)%A295615(n)`
-/

namespace A081613.P1668843187612043571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070974 (A028310 n).toNat + 1) (A295615 n)

end

end A081613.P1668843187612043571

/-! ## A081613.P5578347855751299914

`A008619(2*A070974(A028310(n)))`
-/

namespace A081613.P5578347855751299914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A070974 (A028310 n).toNat).toNat

end

end A081613.P5578347855751299914

/-! ## A081613.P5927957709594561494

`A151909(n)!*A070974(A028310(n))+1`
-/

namespace A081613.P5927957709594561494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151909 n).toNat : ℤ) * A070974 (A028310 n).toNat + 1

end

end A081613.P5927957709594561494

/-!
# A081614: Subsequence of A005428 with state = 1.

The programs for A081614, the canonical program `A081614.P12122110504523754094` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081614 has offset 0).

The definition of A081614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081614.P17914168640993486334

`A005428(eq[1, A205083(n+2)+1])`
-/

namespace A081614.P17914168640993486334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005428 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081614.P17914168640993486334

namespace A081614

/-- `A005428(eq[1, A205083(n+2)+1])` -/
def P17914168640993486334.Spec : Prop :=
  ∀ n, P17914168640993486334.a n = A081614 n

end A081614

/-! ## A081614.P3495075611118020863

`A073941(eq[1, A205083(n+1)+1]+1)`
-/

namespace A081614.P3495075611118020863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A081614.P3495075611118020863

namespace A081614

/-- `A073941(eq[1, A205083(n+1)+1]+1)` -/
def P3495075611118020863.Spec : Prop :=
  ∀ n, P3495075611118020863.a n = A081614 n

end A081614

/-! ## A081614.P10633272098499003150

`record[A005428((A205083(n+2)+n)%(n+1))]`
-/

namespace A081614.P10633272098499003150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005428 (Int.tmod (A205083 (n + 2) + (n : ℤ)) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081614.P10633272098499003150

namespace A081614

/-- `record[A005428((A205083(n+2)+n)%(n+1))]` -/
def P10633272098499003150.Spec : Prop :=
  ∀ n, P10633272098499003150.a n = A081614 n

end A081614

/-! ## A081614.P12122110504523754094

`A005428(eq[1, and(1, A006999(n))])`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A081614

/-- `A005428(eq[1, and(1, A006999(n))])` -/
def P12122110504523754094.Spec : Prop :=
  ∀ n, P12122110504523754094.a n = A081614 n

theorem P12122110504523754094.correct : P12122110504523754094.Spec := by
  intro n
  simp only [A081614]

end A081614

/-! ## A081614.P1882134279669652421

`record[gcd(A005428(n), A061419(n+1))]`
-/

namespace A081614.P1882134279669652421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005428 n) (A061419 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081614.P1882134279669652421

namespace A081614

/-- `record[gcd(A005428(n), A061419(n+1))]` -/
def P1882134279669652421.Spec : Prop :=
  ∀ n, (P1882134279669652421.a n : ℤ) = A081614 n

end A081614

/-! ## A081614.P11096124048619245301

`A005428(eq[1, A081848(n+2)-A006999(n+1)])`
-/

namespace A081614.P11096124048619245301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081848 (n + 2) - A006999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005428 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081614.P11096124048619245301

namespace A081614

/-- `A005428(eq[1, A081848(n+2)-A006999(n+1)])` -/
def P11096124048619245301.Spec : Prop :=
  ∀ n, P11096124048619245301.a n = A081614 n

end A081614

/-!
# A081615: Subsequence of A005428 where state = 2.

The programs for A081615, the canonical program `A081615.P1987069733094205732` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081615 has offset 0).

The definition of A081615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081615.P726889997172680190

`A005428(eq[1, A205083(n+2)])`
-/

namespace A081615.P726889997172680190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005428 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081615.P726889997172680190

namespace A081615

/-- `A005428(eq[1, A205083(n+2)])` -/
def P726889997172680190.Spec : Prop :=
  ∀ n, P726889997172680190.a n = A081615 n

end A081615

/-! ## A081615.P802342721638179871

`A005428(eq[1, A304273(n+2)])`
-/

namespace A081615.P802342721638179871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304273 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005428 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081615.P802342721638179871

namespace A081615

/-- `A005428(eq[1, A304273(n+2)])` -/
def P802342721638179871.Spec : Prop :=
  ∀ n, P802342721638179871.a n = A081615 n

end A081615

/-! ## A081615.P9777893017104724103

`A005428(record[n*A205083(n+2)])`
-/

namespace A081615.P9777893017104724103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A205083 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005428 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081615.P9777893017104724103

namespace A081615

/-- `A005428(record[n*A205083(n+2)])` -/
def P9777893017104724103.Spec : Prop :=
  ∀ n, P9777893017104724103.a n = A081615 n

end A081615

/-! ## A081615.P12543053391194152623

`A005428(record[n*A304273(n+2)])`
-/

namespace A081615.P12543053391194152623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A304273 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005428 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081615.P12543053391194152623

namespace A081615

/-- `A005428(record[n*A304273(n+2)])` -/
def P12543053391194152623.Spec : Prop :=
  ∀ n, P12543053391194152623.a n = A081615 n

end A081615

/-! ## A081615.P15415755042727216339

`record[A073941(n+1)*A205083(n+1)]`
-/

namespace A081615.P15415755042727216339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073941 (n + 1) * A205083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081615.P15415755042727216339

namespace A081615

/-- `record[A073941(n+1)*A205083(n+1)]` -/
def P15415755042727216339.Spec : Prop :=
  ∀ n, P15415755042727216339.a n = A081615 n

end A081615

/-! ## A081615.P12948475699546648538

`record[A073941(n+2)*A304273(n+2)]`
-/

namespace A081615.P12948475699546648538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073941 (n + 2) * A304273 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081615.P12948475699546648538

namespace A081615

/-- `record[A073941(n+2)*A304273(n+2)]` -/
def P12948475699546648538.Spec : Prop :=
  ∀ n, P12948475699546648538.a n = A081615 n

end A081615

/-! ## A081615.P13965742844793497395

`record[A073941(n%(A205083(n+1)+n)+1)]`
-/

namespace A081615.P13965742844793497395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073941 (Int.tmod (n : ℤ) (A205083 (n + 1) + (n : ℤ)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081615.P13965742844793497395

namespace A081615

/-- `record[A073941(n%(A205083(n+1)+n)+1)]` -/
def P13965742844793497395.Spec : Prop :=
  ∀ n, P13965742844793497395.a n = A081615 n

end A081615

/-! ## A081615.P1987069733094205732

`record[gcd(A005428(n), A061418(n+1))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A081615

/-- `record[gcd(A005428(n), A061418(n+1))]` -/
def P1987069733094205732.Spec : Prop :=
  ∀ n, (P1987069733094205732.a n : ℤ) = A081615 n

theorem P1987069733094205732.correct : P1987069733094205732.Spec := by
  intro n
  simp only [A081615]

end A081615

/-! ## A081615.P13331308178970476189

`record[A003312(n+1)%(A005428(n)+1)]`
-/

namespace A081615.P13331308178970476189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003312 (n + 1)) (A005428 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081615.P13331308178970476189

namespace A081615

/-- `record[A003312(n+1)%(A005428(n)+1)]` -/
def P13331308178970476189.Spec : Prop :=
  ∀ n, P13331308178970476189.a n = A081615 n

end A081615

/-! ## A081615.P12506636756582303144

`record[A061419(n+1)%A005428(n)+1]`
-/

namespace A081615.P12506636756582303144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061419 (n + 1)) (A005428 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081615.P12506636756582303144

namespace A081615

/-- `record[A061419(n+1)%A005428(n)+1]` -/
def P12506636756582303144.Spec : Prop :=
  ∀ n, P12506636756582303144.a n = A081615 n

end A081615

/-! ## A081615.P2230723732204769790

`record[ceil(A061419(n+1)/3)*A205083(n+1)]`
-/

namespace A081615.P2230723732204769790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A061419 (n + 1) : ℚ) / 3⌉ * A205083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081615.P2230723732204769790

namespace A081615

/-- `record[ceil(A061419(n+1)/3)*A205083(n+1)]` -/
def P2230723732204769790.Spec : Prop :=
  ∀ n, P2230723732204769790.a n = A081615 n

end A081615

/-! ## A081615.P6293827131955360002

`record[round(A061418(n+1)/3)*A205083(n+1)]`
-/

namespace A081615.P6293827131955360002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A061418 (n + 1) : ℚ) / 3) * A205083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081615.P6293827131955360002

namespace A081615

/-- `record[round(A061418(n+1)/3)*A205083(n+1)]` -/
def P6293827131955360002.Spec : Prop :=
  ∀ n, P6293827131955360002.a n = A081615 n

end A081615

/-! ## A081615.P4622383362398798192

`record[A061419(n+1)²%3*A073941(n+1)]`
-/

namespace A081615.P4622383362398798192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061419 (n + 1) ^ 2) 3 * A073941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081615.P4622383362398798192

namespace A081615

/-- `record[A061419(n+1)²%3*A073941(n+1)]` -/
def P4622383362398798192.Spec : Prop :=
  ∀ n, P4622383362398798192.a n = A081615 n

end A081615

/-!
# A081616: Sequence of constants appearing in formula for expected number of inversions after a sequence of random adjacent transpositions.

The programs for A081616, there is no canonical definition to state claims against.
-/

/-! ## A081616.P18104621469862040270

`A240851(A363607(n+1))`
-/

namespace A081616.P18104621469862040270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240851 (A363607 (n + 1)).toNat

end

end A081616.P18104621469862040270

/-! ## A081616.P13501398972115790930

`∑[∑[A230198(A307568(n))]]`
-/

namespace A081616.P13501398972115790930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230198 (A307568 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081616.P13501398972115790930

/-! ## A081616.P4612345781285221093

`A219652(A092492(n+3)²)`
-/

namespace A081616.P4612345781285221093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 (A092492 (n + 3) ^ 2).toNat

end

end A081616.P4612345781285221093

/-!
# A081617: Smallest k such that (product of first n primes)*k+1 is divisible by the (n+1)-th prime. Also (A075306(n)-1)/A002110(n).

The programs for A081617, there is no canonical definition to state claims against.
-/

/-! ## A081617.P2011111336408750024

`p?[2*n+1]-A079276(n+2)`
-/

namespace A081617.P2011111336408750024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - A079276 (n + 2)

end

end A081617.P2011111336408750024

/-! ## A081617.P15018217149977680899

`A065091(n+1)-A079276(n+2)`
-/

namespace A081617.P15018217149977680899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A079276 (n + 2)

end

end A081617.P15018217149977680899

/-! ## A081617.P17930447093066872534

`A000040(n+2)-A079276(n+2)`
-/

namespace A081617.P17930447093066872534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A079276 (n + 2)

end

end A081617.P17930447093066872534

/-! ## A081617.P5070355923310147206

`A069830(n+1)+A077005(n+2)-A079276(n+2)`
-/

namespace A081617.P5070355923310147206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069830 (n + 1) + (A077005 (n + 2) - A079276 (n + 2))

end

end A081617.P5070355923310147206

/-! ## A081617.P15483910561512672908

`A073603(n+2)/A069830(n+2)-A079276(n+2)`
-/

namespace A081617.P15483910561512672908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073603 (n + 2) : ℚ) / (A069830 (n + 2) : ℚ) - (A079276 (n + 2) : ℚ)

end

end A081617.P15483910561512672908

/-! ## A081617.P15943982711273808015

`A194367(n+2)+A087454(n+3)-A079276(n+2)`
-/

namespace A081617.P15943982711273808015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194367 (n + 2) + (A087454 (n + 3) - A079276 (n + 2))

end

end A081617.P15943982711273808015

/-! ## A081617.P16184945569899478051

`record[A006530(n+3)]-A079276(n+2)`
-/

namespace A081617.P16184945569899478051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A079276 (n + 2)

end

end A081617.P16184945569899478051

/-! ## A081617.P2557636887821213286

`record[A020639(n+3)]-A079276(n+2)`
-/

namespace A081617.P2557636887821213286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A079276 (n + 2)

end

end A081617.P2557636887821213286

/-! ## A081617.P16787298243530966753

`record[A089026(n+3)]-A079276(n+2)`
-/

namespace A081617.P16787298243530966753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A079276 (n + 2)

end

end A081617.P16787298243530966753

/-! ## A081617.P14584072226172985274

`(A075306(n+1)-1)/A002110(n+1)`
-/

namespace A081617.P14584072226172985274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075306 (n + 1) - 1 : ℚ) / (A002110 (n + 1) : ℚ)

end

end A081617.P14584072226172985274

/-!
# A081619: Numbers whose divisors can be arranged as equilateral triangle.

The programs for A081619, the canonical program `A081619.P7456844298066121194` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081619 has offset 1).

The definition of A081619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8353 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081619.P8232362075331552052

`record[(n+1)/A013611(A000005(n+1))]`
-/

namespace A081619.P8232362075331552052
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A013611 (A000005 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081619.P8232362075331552052

namespace A081619

/-- `record[(n+1)/A013611(A000005(n+1))]` -/
def P8232362075331552052.Spec : Prop :=
  ∀ n, P8232362075331552052.a n = (A081619 (n + 1) : ℚ)

end A081619

/-! ## A081619.P1658723715659064968

`record[(n+1)/A038243(A000005(n+1)-1)]`
-/

namespace A081619.P1658723715659064968
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A038243 (A000005 (n + 1) - 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081619.P1658723715659064968

namespace A081619

/-- `record[(n+1)/A038243(A000005(n+1)-1)]` -/
def P1658723715659064968.Spec : Prop :=
  ∀ n, P1658723715659064968.a n = (A081619 (n + 1) : ℚ)

end A081619

/-! ## A081619.P7456844298066121194

`record[(n+1)*A005369(2*A000005(n+1))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A081619

/-- `record[(n+1)*A005369(2*A000005(n+1))]` -/
def P7456844298066121194.Spec : Prop :=
  ∀ n, P7456844298066121194.a n = A081619 (n + 1)

theorem P7456844298066121194.correct : P7456844298066121194.Spec := by
  intro n
  simp only [A081619, Nat.add_sub_cancel]

end A081619

/-! ## A081619.P3546756947383537132

`record[(n+1)/A000005(A002260(A000005(n+1)+1)²)]`
-/

namespace A081619.P3546756947383537132
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000005 (A002260 (A000005 (n + 1) + 1).toNat ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081619.P3546756947383537132

namespace A081619

/-- `record[(n+1)/A000005(A002260(A000005(n+1)+1)²)]` -/
def P3546756947383537132.Spec : Prop :=
  ∀ n, P3546756947383537132.a n = (A081619 (n + 1) : ℚ)

end A081619

/-! ## A081619.P2196508518699802752

`eq[1, A004736(A000005(n+1))]+1`
-/

namespace A081619.P2196508518699802752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081619.P2196508518699802752

namespace A081619

/-- `eq[1, A004736(A000005(n+1))]+1` -/
def P2196508518699802752.Spec : Prop :=
  ∀ n, (P2196508518699802752.a n : ℤ) = A081619 (n + 1)

end A081619

/-! ## A081619.P3197945438209965026

`lt[A288108(A000005(abs(1-n)+1)), 1]`
-/

namespace A081619.P3197945438209965026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288108 (A000005 (|1 - (n : ℤ)| + 1).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A081619.P3197945438209965026

namespace A081619

/-- `lt[A288108(A000005(abs(1-n)+1)), 1]` -/
def P3197945438209965026.Spec : Prop :=
  ∀ n, (P3197945438209965026.a n : ℤ) = A081619 (n + 1)

end A081619

/-! ## A081619.P12901597168125302217

`eq[1, A002260(A000005(n+1)+1)]+1`
-/

namespace A081619.P12901597168125302217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A000005 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081619.P12901597168125302217

namespace A081619

/-- `eq[1, A002260(A000005(n+1)+1)]+1` -/
def P12901597168125302217.Spec : Prop :=
  ∀ n, (P12901597168125302217.a n : ℤ) = A081619 (n + 1)

end A081619

/-! ## A081619.P8516998235748522637

`eq[1, A003982(A145154(n))]`
-/

namespace A081619.P8516998235748522637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081619.P8516998235748522637

namespace A081619

/-- `eq[1, A003982(A145154(n))]` -/
def P8516998235748522637.Spec : Prop :=
  ∀ n, (P8516998235748522637.a n : ℤ) = A081619 (n + 1)

end A081619

/-! ## A081619.P15055780601633080422

`eq[1, A002260(Δ[A006218(n)]+1)]+1`
-/

namespace A081619.P15055780601633080422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (f3 (n + 1) - f3 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081619.P15055780601633080422

namespace A081619

/-- `eq[1, A002260(Δ[A006218(n)]+1)]+1` -/
def P15055780601633080422.Spec : Prop :=
  ∀ n, (P15055780601633080422.a n : ℤ) = A081619 (n + 1)

end A081619

/-! ## A081619.P5862043208337910803

`eq[2, A210535(Δ[A006218(n)]+1)]+1`
-/

namespace A081619.P5862043208337910803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210535 (f3 (n + 1) - f3 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081619.P5862043208337910803

namespace A081619

/-- `eq[2, A210535(Δ[A006218(n)]+1)]+1` -/
def P5862043208337910803.Spec : Prop :=
  ∀ n, (P5862043208337910803.a n : ℤ) = A081619 (n + 1)

end A081619

/-!
# A081620: Least m with n*(n+1)/2 divisors.

The programs for A081620, there is no canonical definition to state claims against.
-/

/-! ## A081620.P17489021472496305867

`A005179((n+1)*(n+2)/2)`
-/

namespace A081620.P17489021472496305867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (SequenceMachineLib.roundAway (((n + 1) * (n + 2) : ℚ) / 2)).toNat

end

end A081620.P17489021472496305867

/-! ## A081620.P16392026189537299775

`A037019(∑[n+1])`
-/

namespace A081620.P16392026189537299775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081620.P16392026189537299775

/-! ## A081620.P3872281040124274521

`∑{d}[∑[n+1], A130113(#)]`
-/

namespace A081620.P3872281040124274521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130113 d

end

end A081620.P3872281040124274521

/-! ## A081620.P5817281165139267976

`A181821(A290641(∑[n+1]))`
-/

namespace A081620.P5817281165139267976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A290641 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A081620.P5817281165139267976

/-! ## A081620.P954801665556362697

`A081532(A002817(n+1))`
-/

namespace A081620.P954801665556362697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (A002817 (n + 1)).toNat

end

end A081620.P954801665556362697

/-!
# A081622: Number of 6-core partitions of n.

The programs for A081622, there is no canonical definition to state claims against.
-/

/-! ## A081622.P9788734000526257049

`A175595(A056000(n+3)+3)`
-/

namespace A081622.P9788734000526257049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A056000 (n + 3) + 3).toNat

end

end A081622.P9788734000526257049

/-! ## A081622.P12258206567165831652

`A175595(A055999(n+4)-1)`
-/

namespace A081622.P12258206567165831652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A055999 (n + 4) - 1).toNat

end

end A081622.P12258206567165831652

/-! ## A081622.P17278941710904563265

`A175595(A052905(n+4)-2)`
-/

namespace A081622.P17278941710904563265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A052905 (n + 4) - 2).toNat

end

end A081622.P17278941710904563265

/-! ## A081622.P6121103933658034634

`A175595(A046691(n+5)-3)`
-/

namespace A081622.P6121103933658034634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A046691 (n + 5) - 3).toNat

end

end A081622.P6121103933658034634

/-! ## A081622.P3700444599406572657

`A175595(A034856(n+6)-5)`
-/

namespace A081622.P3700444599406572657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A034856 (n + 6) - 5).toNat

end

end A081622.P3700444599406572657

/-! ## A081622.P9952586711171895377

`A175595(A000217(n+7)-7)`
-/

namespace A081622.P9952586711171895377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A000217 (n + 7) - 7).toNat

end

end A081622.P9952586711171895377

/-! ## A081622.P15647608759872965618

`A175595(A000124(n+7)-8)`
-/

namespace A081622.P15647608759872965618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A000124 (n + 7) - 8).toNat

end

end A081622.P15647608759872965618

/-! ## A081622.P9808677213478983474

`A175595(Δ[Δ[A055832(n+5)]])`
-/

namespace A081622.P9808677213478983474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055832 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (f1 (n + 1) - f1 n).toNat

end

end A081622.P9808677213478983474

/-! ## A081622.P7027014058335194836

`A175595(Δ[A023551(n+2)]-1)`
-/

namespace A081622.P7027014058335194836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (f1 (n + 1) - f1 n - 1).toNat

end

end A081622.P7027014058335194836

/-! ## A081622.P17936730640204019

`A175595(A000096(n+5)+n+1)`
-/

namespace A081622.P17936730640204019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A000096 (n + 5) + (n + 1 : ℤ)).toNat

end

end A081622.P17936730640204019

/-! ## A081622.P2722846440900557013

`A175595(2*n+A000217(n+5)+6)`
-/

namespace A081622.P2722846440900557013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 ((2 * n : ℤ) + (A000217 (n + 5) + 6)).toNat

end

end A081622.P2722846440900557013

/-! ## A081622.P9271288423304268429

`A175595(2*n+A046691(n+3)+10)`
-/

namespace A081622.P9271288423304268429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 ((2 * n : ℤ) + (A046691 (n + 3) + 10)).toNat

end

end A081622.P9271288423304268429

/-! ## A081622.P14887223094608565500

`A175595(A020742(n)+A000096(n+4))`
-/

namespace A081622.P14887223094608565500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A020742 n + A000096 (n + 4)).toNat

end

end A081622.P14887223094608565500

/-! ## A081622.P16736975389294869942

`A175595(eq[6, A025581(n)])`
-/

namespace A081622.P16736975389294869942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081622.P16736975389294869942

/-! ## A081622.P3462528913673173153

`A175595(eq[7, A004736(n+1)])`
-/

namespace A081622.P3462528913673173153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081622.P3462528913673173153

/-!
# A081623: Number of ways in which the points on an n X n square lattice can be equally occupied with spin "up" and spin "down" particles. If n is odd, we arbitrarily take the lattice to contain one more spin "up" particle than the number of spin "down" particles.

The programs for A081623, the canonical program `A081623.P1137806294321831011` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081623 has offset 0).

The definition of A081623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081623.P1137806294321831011

`C(n², floor(n²/2))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081623

/-- `C(n², floor(n²/2))` -/
def P1137806294321831011.Spec : Prop :=
  ∀ n, (P1137806294321831011.a n : ℤ) = A081623 n

theorem P1137806294321831011.correct : P1137806294321831011.Spec := by
  intro n
  simp only [A081623]

end A081623

/-! ## A081623.P13096639950254626168

`A001405(n²)`
-/

namespace A081623.P13096639950254626168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n ^ 2)

end

end A081623.P13096639950254626168

namespace A081623

/-- `A001405(n²)` -/
def P13096639950254626168.Spec : Prop :=
  ∀ n, P13096639950254626168.a n = A081623 n

theorem P13096639950254626168.correct : P13096639950254626168.Spec := by
  intro n
  simp only [A081623, Nat.add_sub_cancel, A081623.P13096639950254626168.a, A081623.P1137806294321831011.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A081623

/-! ## A081623.P11835135847913421676

`abs(A126930(n²))`
-/

namespace A081623.P11835135847913421676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126930 (n ^ 2)|

end

end A081623.P11835135847913421676

namespace A081623

/-- `abs(A126930(n²))` -/
def P11835135847913421676.Spec : Prop :=
  ∀ n, P11835135847913421676.a n = A081623 n

end A081623

/-! ## A081623.P15032983672552602418

`A014495(n²)+1`
-/

namespace A081623.P15032983672552602418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (n ^ 2) + 1

end

end A081623.P15032983672552602418

namespace A081623

/-- `A014495(n²)+1` -/
def P15032983672552602418.Spec : Prop :=
  ∀ n, P15032983672552602418.a n = A081623 n

theorem P15032983672552602418.correct : P15032983672552602418.Spec := by
  intro n
  simp only [A081623, Nat.add_sub_cancel, A081623.P15032983672552602418.a, A081623.P1137806294321831011.a, A014495, A014495.P8648755420632744383.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A081623

/-! ## A081623.P5213698552264030674

`A210736(n²+1)`
-/

namespace A081623.P5213698552264030674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n ^ 2 + 1)

end

end A081623.P5213698552264030674

namespace A081623

/-- `A210736(n²+1)` -/
def P5213698552264030674.Spec : Prop :=
  ∀ n, P5213698552264030674.a n = A081623 n

end A081623

/-!
# A081624: Number of 8-level labeled rooted trees with n leaves.

The programs for A081624, there is no canonical definition to state claims against.
-/

/-! ## A081624.P17410503972470344814

`A144150(A155212(n+4))`
-/

namespace A081624.P17410503972470344814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (A155212 (n + 4)).toNat

end

end A081624.P17410503972470344814

/-! ## A081624.P16355373679600173914

`A144150(eq[7, A025581(n)])`
-/

namespace A081624.P16355373679600173914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081624.P16355373679600173914

/-! ## A081624.P16540367644277456549

`A144150(eq[8, A193739(n)])`
-/

namespace A081624.P16540367644277456549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081624.P16540367644277456549

/-! ## A081624.P18186419139676777008

`A144150(eq[15, A099375(n)])`
-/

namespace A081624.P18186419139676777008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081624.P18186419139676777008

/-! ## A081624.P4925418708339602403

`A144150(eq[8, A004736(n+1)])`
-/

namespace A081624.P4925418708339602403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081624.P4925418708339602403

/-!
# A081625: a(n) = 2*5^n - 3^n.

The programs for A081625, the canonical program `A081625.P15993094883941142123` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081625 has offset 0).

The definition of A081625 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*5^n-3^n` (program `A081625.P15993094883941142123`, by `A081625.P15993094883941142123.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081625.P15993094883941142123

`2*5^n-3^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081625

/-- `2*5^n-3^n` -/
def P15993094883941142123.Spec : Prop :=
  ∀ n, P15993094883941142123.a n = A081625 n

theorem P15993094883941142123.correct : P15993094883941142123.Spec := by
  intro n
  simp only [A081625]

end A081625

/-! ## A081625.P2606695936981344194

`ogf((1-x)/(1-8x+15x^2))`
-/

namespace A081625.P2606695936981344194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -8, 15] n

end

end A081625.P2606695936981344194

namespace A081625

/-- `ogf((1-x)/(1-8x+15x^2))` -/
def P2606695936981344194.Spec : Prop :=
  ∀ n, P2606695936981344194.a n = A081625 n

end A081625

/-! ## A081625.P17296342193134187414

`or(1, Δ[(5^n-3^n)/2])`
-/

namespace A081625.P17296342193134187414
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ n : ℤ) - (3 ^ n : ℤ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n))

end

end A081625.P17296342193134187414

namespace A081625

/-- `or(1, Δ[(5^n-3^n)/2])` -/
def P17296342193134187414.Spec : Prop :=
  ∀ n, P17296342193134187414.a n = A081625 n

end A081625

/-! ## A081625.P15347913634084150622

`Δ[xor(2, (5^n-3^n)/2)]`
-/

namespace A081625.P15347913634084150622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (SequenceMachineLib.roundAway (((5 ^ n : ℤ) - (3 ^ n : ℤ) : ℚ) / 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081625.P15347913634084150622

namespace A081625

/-- `Δ[xor(2, (5^n-3^n)/2)]` -/
def P15347913634084150622.Spec : Prop :=
  ∀ n, P15347913634084150622.a n = A081625 n

end A081625

/-! ## A081625.P10138631065042991196

`Δ[((5^n-3^n)/2)%(5^n)]`
-/

namespace A081625.P10138631065042991196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((5 ^ n : ℤ) - (3 ^ n : ℤ) : ℚ) / 2)) (5 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081625.P10138631065042991196

namespace A081625

/-- `Δ[((5^n-3^n)/2)%(5^n)]` -/
def P10138631065042991196.Spec : Prop :=
  ∀ n, P10138631065042991196.a n = A081625 n

end A081625

/-! ## A081625.P14369075006235544000

`Δ[gcd(5^n-3^n, (5^n-3^n)/2)]`
-/

namespace A081625.P14369075006235544000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((5 ^ n : ℤ) - (3 ^ n : ℤ)) (SequenceMachineLib.roundAway (((5 ^ n : ℤ) - (3 ^ n : ℤ) : ℚ) / 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A081625.P14369075006235544000

namespace A081625

/-- `Δ[gcd(5^n-3^n, (5^n-3^n)/2)]` -/
def P14369075006235544000.Spec : Prop :=
  ∀ n, P14369075006235544000.a n = A081625 n

end A081625

/-! ## A081625.P602147112145255429

`Δ[A005059(n)]`
-/

namespace A081625.P602147112145255429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081625.P602147112145255429

namespace A081625

/-- `Δ[A005059(n)]` -/
def P602147112145255429.Spec : Prop :=
  ∀ n, P602147112145255429.a n = A081625 n

end A081625

/-! ## A081625.P11062038369760994879

`Δ[A005058(n)/2]`
-/

namespace A081625.P11062038369760994879
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005058 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081625.P11062038369760994879

namespace A081625

/-- `Δ[A005058(n)/2]` -/
def P11062038369760994879.Spec : Prop :=
  ∀ n, P11062038369760994879.a n = (A081625 n : ℚ)

theorem P11062038369760994879.correct : P11062038369760994879.Spec := by
  intro n
  simp only [A081625, Nat.add_sub_cancel, A081625.P11062038369760994879.f1, A081625.P11062038369760994879.a, A081625.P15993094883941142123.a, A005058, A005058.P12301898712341759211.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081625

/-! ## A081625.P12193017324482661008

`Δ[A155610(n)/2]`
-/

namespace A081625.P12193017324482661008
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155610 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081625.P12193017324482661008

namespace A081625

/-- `Δ[A155610(n)/2]` -/
def P12193017324482661008.Spec : Prop :=
  ∀ n, P12193017324482661008.a n = (A081625 n : ℚ)

theorem P12193017324482661008.correct : P12193017324482661008.Spec := by
  intro n
  simp only [A081625, Nat.add_sub_cancel, A081625.P12193017324482661008.f1, A081625.P12193017324482661008.a, A081625.P15993094883941142123.a, A155610, A155610.P9765612093744409874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081625

/-! ## A081625.P8691962137567787188

`Δ[A007798(n)+A003463(n)]`
-/

namespace A081625.P8691962137567787188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007798 n + A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081625.P8691962137567787188

namespace A081625

/-- `Δ[A007798(n)+A003463(n)]` -/
def P8691962137567787188.Spec : Prop :=
  ∀ n, P8691962137567787188.a n = A081625 n

end A081625

/-! ## A081625.P2885588598890843689

`Δ[A047850(n)+A007798(n)]`
-/

namespace A081625.P2885588598890843689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047850 n + A007798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081625.P2885588598890843689

namespace A081625

/-- `Δ[A047850(n)+A007798(n)]` -/
def P2885588598890843689.Spec : Prop :=
  ∀ n, P2885588598890843689.a n = A081625 n

end A081625

/-! ## A081625.P15450722212474718663

`Δ[A034478(n)-A003462(n)]`
-/

namespace A081625.P15450722212474718663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n - A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081625.P15450722212474718663

namespace A081625

/-- `Δ[A034478(n)-A003462(n)]` -/
def P15450722212474718663.Spec : Prop :=
  ∀ n, P15450722212474718663.a n = A081625 n

end A081625

/-! ## A081625.P8531532738148813698

`Δ[A034478(n)-A007051(n)]`
-/

namespace A081625.P8531532738148813698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n - A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081625.P8531532738148813698

namespace A081625

/-- `Δ[A034478(n)-A007051(n)]` -/
def P8531532738148813698.Spec : Prop :=
  ∀ n, P8531532738148813698.a n = A081625 n

end A081625

/-! ## A081625.P17370430359286755640

`Δ[A081186(n)-A000244(n)]`
-/

namespace A081625.P17370430359286755640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081186 n - A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081625.P17370430359286755640

namespace A081625

/-- `Δ[A081186(n)-A000244(n)]` -/
def P17370430359286755640.Spec : Prop :=
  ∀ n, P17370430359286755640.a n = A081625 n

end A081625

/-! ## A081625.P9818266264469794276

`Δ[A000351(n)-A081186(n)]`
-/

namespace A081625.P9818266264469794276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n - A081186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081625.P9818266264469794276

namespace A081625

/-- `Δ[A000351(n)-A081186(n)]` -/
def P9818266264469794276.Spec : Prop :=
  ∀ n, P9818266264469794276.a n = A081625 n

end A081625

/-! ## A081625.P9269929593824934320

`Δ[A034474(n)-A081186(n)]`
-/

namespace A081625.P9269929593824934320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034474 n - A081186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081625.P9269929593824934320

namespace A081625

/-- `Δ[A034474(n)-A081186(n)]` -/
def P9269929593824934320.Spec : Prop :=
  ∀ n, P9269929593824934320.a n = A081625 n

end A081625

/-! ## A081625.P7906974087596203036

`Δ[A081186(n)-A034472(n)]`
-/

namespace A081625.P7906974087596203036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081186 n - A034472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081625.P7906974087596203036

namespace A081625

/-- `Δ[A081186(n)-A034472(n)]` -/
def P7906974087596203036.Spec : Prop :=
  ∀ n, P7906974087596203036.a n = A081625 n

end A081625

/-! ## A081625.P12085291874929817024

`Δ[A132079(n)-A007051(n)]`
-/

namespace A081625.P12085291874929817024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132079 n - A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081625.P12085291874929817024

namespace A081625

/-- `Δ[A132079(n)-A007051(n)]` -/
def P12085291874929817024.Spec : Prop :=
  ∀ n, P12085291874929817024.a n = A081625 n

end A081625

/-! ## A081625.P10854065974419451787

`Δ[A137410(n)-A003462(n)]`
-/

namespace A081625.P10854065974419451787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137410 n - A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081625.P10854065974419451787

namespace A081625

/-- `Δ[A137410(n)-A003462(n)]` -/
def P10854065974419451787.Spec : Prop :=
  ∀ n, P10854065974419451787.a n = A081625 n

end A081625

/-! ## A081625.P4834131882999940117

`Δ[A034478(n)-A115098(n)]`
-/

namespace A081625.P4834131882999940117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n - A115098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081625.P4834131882999940117

namespace A081625

/-- `Δ[A034478(n)-A115098(n)]` -/
def P4834131882999940117.Spec : Prop :=
  ∀ n, P4834131882999940117.a n = A081625 n

end A081625

/-!
# A081626: a(n) = 2*6^n-4^n.

The programs for A081626, the canonical program `A081626.P782236688567834801` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081626 has offset 0).

The definition of A081626 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*6^n-4^n` (program `A081626.P782236688567834801`, by `A081626.P782236688567834801.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081626.P782236688567834801

`2*6^n-4^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081626

/-- `2*6^n-4^n` -/
def P782236688567834801.Spec : Prop :=
  ∀ n, P782236688567834801.a n = A081626 n

theorem P782236688567834801.correct : P782236688567834801.Spec := by
  intro n
  simp only [A081626]

end A081626

/-! ## A081626.P2960120161206512156

`ogf((1-2x)/(1-10x+24x^2))`
-/

namespace A081626.P2960120161206512156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -10, 24] n

end

end A081626.P2960120161206512156

namespace A081626

/-- `ogf((1-2x)/(1-10x+24x^2))` -/
def P2960120161206512156.Spec : Prop :=
  ∀ n, P2960120161206512156.a n = A081626 n

end A081626

/-! ## A081626.P6096372480067425541

`2^n*A027649(n)`
-/

namespace A081626.P6096372480067425541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A027649 n

end

end A081626.P6096372480067425541

namespace A081626

/-- `2^n*A027649(n)` -/
def P6096372480067425541.Spec : Prop :=
  ∀ n, P6096372480067425541.a n = A081626 n

end A081626

/-! ## A081626.P1581288330171184729

`2^n*∑[A053581(n)]`
-/

namespace A081626.P1581288330171184729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081626.P1581288330171184729

namespace A081626

/-- `2^n*∑[A053581(n)]` -/
def P1581288330171184729.Spec : Prop :=
  ∀ n, P1581288330171184729.a n = A081626 n

end A081626

/-! ## A081626.P3704067851026196869

`2^n*Δ[A001047(n)]`
-/

namespace A081626.P3704067851026196869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A081626.P3704067851026196869

namespace A081626

/-- `2^n*Δ[A001047(n)]` -/
def P3704067851026196869.Spec : Prop :=
  ∀ n, P3704067851026196869.a n = A081626 n

end A081626

/-! ## A081626.P8597629431780587008

`2^n*Δ[A083323(n)]`
-/

namespace A081626.P8597629431780587008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A081626.P8597629431780587008

namespace A081626

/-- `2^n*Δ[A083323(n)]` -/
def P8597629431780587008.Spec : Prop :=
  ∀ n, P8597629431780587008.a n = A081626 n

end A081626

/-! ## A081626.P7020075094458988472

`abs(A155627(n)+6^n-1)`
-/

namespace A081626.P7020075094458988472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155627 n + ((6 ^ n : ℤ) - 1)|

end

end A081626.P7020075094458988472

namespace A081626

/-- `abs(A155627(n)+6^n-1)` -/
def P7020075094458988472.Spec : Prop :=
  ∀ n, P7020075094458988472.a n = A081626 n

end A081626

/-! ## A081626.P8700979331606786524

`2^n*Δ[A304973(Δ[n²])]`
-/

namespace A081626.P8700979331606786524
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304973 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A081626.P8700979331606786524

namespace A081626

/-- `2^n*Δ[A304973(Δ[n²])]` -/
def P8700979331606786524.Spec : Prop :=
  ∀ n, P8700979331606786524.a n = A081626 n

end A081626

/-! ## A081626.P3567630108367101214

`∑[A053581(n)]*A000079(n)`
-/

namespace A081626.P3567630108367101214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A081626.P3567630108367101214

namespace A081626

/-- `∑[A053581(n)]*A000079(n)` -/
def P3567630108367101214.Spec : Prop :=
  ∀ n, P3567630108367101214.a n = A081626 n

end A081626

/-! ## A081626.P12034879563801150598

`Δ[A001047(n)]*A000079(n)`
-/

namespace A081626.P12034879563801150598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A081626.P12034879563801150598

namespace A081626

/-- `Δ[A001047(n)]*A000079(n)` -/
def P12034879563801150598.Spec : Prop :=
  ∀ n, P12034879563801150598.a n = A081626 n

end A081626

/-! ## A081626.P17691814327525571174

`A083313(n)*A151821(n+1)`
-/

namespace A081626.P17691814327525571174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083313 n * A151821 (n + 1)

end

end A081626.P17691814327525571174

namespace A081626

/-- `A083313(n)*A151821(n+1)` -/
def P17691814327525571174.Spec : Prop :=
  ∀ n, P17691814327525571174.a n = A081626 n

end A081626

/-! ## A081626.P6057220868353855654

`A027649(n)*A034008(n+2)`
-/

namespace A081626.P6057220868353855654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n * A034008 (n + 2)

end

end A081626.P6057220868353855654

namespace A081626

/-- `A027649(n)*A034008(n+2)` -/
def P6057220868353855654.Spec : Prop :=
  ∀ n, P6057220868353855654.a n = A081626 n

end A081626

/-! ## A081626.P12096578168178945124

`Δ[A001047(n)]*Δ[A168616(n)]`
-/

namespace A081626.P12096578168178945124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A081626.P12096578168178945124

namespace A081626

/-- `Δ[A001047(n)]*Δ[A168616(n)]` -/
def P12096578168178945124.Spec : Prop :=
  ∀ n, P12096578168178945124.a n = A081626 n

end A081626

/-! ## A081626.P14636166640097886762

`Δ[A001047(n)]*A060546(2*n)`
-/

namespace A081626.P14636166640097886762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A060546 (2 * n)

end

end A081626.P14636166640097886762

namespace A081626

/-- `Δ[A001047(n)]*A060546(2*n)` -/
def P14636166640097886762.Spec : Prop :=
  ∀ n, P14636166640097886762.a n = A081626 n

end A081626

/-! ## A081626.P6927184119626094711

`Δ[A304973(2*n+1)]*A000079(n)`
-/

namespace A081626.P6927184119626094711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304973 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A081626.P6927184119626094711

namespace A081626

/-- `Δ[A304973(2*n+1)]*A000079(n)` -/
def P6927184119626094711.Spec : Prop :=
  ∀ n, P6927184119626094711.a n = A081626 n

end A081626

/-! ## A081626.P6743991613702268633

`Δ[Δ[A260217(n+1)/4]]*A000079(n)`
-/

namespace A081626.P6743991613702268633
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260217 (n + 1) : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A000079 n : ℚ)

end

end A081626.P6743991613702268633

namespace A081626

/-- `Δ[Δ[A260217(n+1)/4]]*A000079(n)` -/
def P6743991613702268633.Spec : Prop :=
  ∀ n, P6743991613702268633.a n = (A081626 n : ℚ)

end A081626

/-! ## A081626.P6517280883170816147

`(A001047(n)+A000244(n))*A000079(n)`
-/

namespace A081626.P6517280883170816147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001047 n + A000244 n) * A000079 n

end

end A081626.P6517280883170816147

namespace A081626

/-- `(A001047(n)+A000244(n))*A000079(n)` -/
def P6517280883170816147.Spec : Prop :=
  ∀ n, P6517280883170816147.a n = A081626 n

end A081626

/-! ## A081626.P10751573116106891930

`(A002783(n)+A000225(n))*A000079(n)`
-/

namespace A081626.P10751573116106891930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002783 n + A000225 n) * A000079 n

end

end A081626.P10751573116106891930

namespace A081626

/-- `(A002783(n)+A000225(n))*A000079(n)` -/
def P10751573116106891930.Spec : Prop :=
  ∀ n, P10751573116106891930.a n = A081626 n

end A081626

/-! ## A081626.P15965539837712322124

`(A008776(n)-A000079(n))*A000079(n)`
-/

namespace A081626.P15965539837712322124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008776 n - A000079 n) * A000079 n

end

end A081626.P15965539837712322124

namespace A081626

/-- `(A008776(n)-A000079(n))*A000079(n)` -/
def P15965539837712322124.Spec : Prop :=
  ∀ n, P15965539837712322124.a n = A081626 n

end A081626

/-! ## A081626.P10616217563490823151

`lcm(A027649(n)*A122803(n), A027649(n))`
-/

namespace A081626.P10616217563490823151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027649 n * A122803 n) (A027649 n)

end

end A081626.P10616217563490823151

namespace A081626

/-- `lcm(A027649(n)*A122803(n), A027649(n))` -/
def P10616217563490823151.Spec : Prop :=
  ∀ n, (P10616217563490823151.a n : ℤ) = A081626 n

end A081626

/-!
# A081627: a(n) = 2*7^n-5^n.

The programs for A081627, the canonical program `A081627.P9773240573481008031` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081627 has offset 0).

The definition of A081627 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*7^n-5^n` (program `A081627.P9773240573481008031`, by `A081627.P9773240573481008031.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081627.P9773240573481008031

`2*7^n-5^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081627

/-- `2*7^n-5^n` -/
def P9773240573481008031.Spec : Prop :=
  ∀ n, P9773240573481008031.a n = A081627 n

theorem P9773240573481008031.correct : P9773240573481008031.Spec := by
  intro n
  simp only [A081627]

end A081627

/-! ## A081627.P16384226316010197825

`(A198686(n)-A081655(n))/2`
-/

namespace A081627.P16384226316010197825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198686 n - A081655 n : ℚ) / 2

end

end A081627.P16384226316010197825

namespace A081627

/-- `(A198686(n)-A081655(n))/2` -/
def P16384226316010197825.Spec : Prop :=
  ∀ n, P16384226316010197825.a n = (A081627 n : ℚ)

theorem P16384226316010197825.correct : P16384226316010197825.Spec := by
  intro n
  simp only [A081627, Nat.add_sub_cancel, A081627.P16384226316010197825.a, A081627.P9773240573481008031.a, A081655, A081655.P14712545280012633479.a, A198686, A198686.P16801955039865335109.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081627

/-! ## A081627.P1315491239668454060

`or(1, A121213(n)+A000420(n))`
-/

namespace A081627.P1315491239668454060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A121213 n + A000420 n)

end

end A081627.P1315491239668454060

namespace A081627

/-- `or(1, A121213(n)+A000420(n))` -/
def P1315491239668454060.Spec : Prop :=
  ∀ n, P1315491239668454060.a n = A081627 n

end A081627

/-! ## A081627.P17543501712743270182

`Δ[A125725(n+1)-A003463(n)]`
-/

namespace A081627.P17543501712743270182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125725 (n + 1) - A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081627.P17543501712743270182

namespace A081627

/-- `Δ[A125725(n+1)-A003463(n)]` -/
def P17543501712743270182.Spec : Prop :=
  ∀ n, P17543501712743270182.a n = A081627 n

end A081627

/-! ## A081627.P17439685913797406564

`∑[2*A055272(n)-A005054(n)]`
-/

namespace A081627.P17439685913797406564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055272 n - A005054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081627.P17439685913797406564

namespace A081627

/-- `∑[2*A055272(n)-A005054(n)]` -/
def P17439685913797406564.Spec : Prop :=
  ∀ n, P17439685913797406564.a n = A081627 n

end A081627

/-! ## A081627.P5543131933840879259

`Δ[2*A023000(n)-A003463(n)]`
-/

namespace A081627.P5543131933840879259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023000 n - A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081627.P5543131933840879259

namespace A081627

/-- `Δ[2*A023000(n)-A003463(n)]` -/
def P5543131933840879259.Spec : Prop :=
  ∀ n, P5543131933840879259.a n = A081627 n

end A081627

/-! ## A081627.P4953891720490070791

`xor(A121213(n)+A000420(n), A000007(n+1))`
-/

namespace A081627.P4953891720490070791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A121213 n + A000420 n) (A000007 (n + 1))

end

end A081627.P4953891720490070791

namespace A081627

/-- `xor(A121213(n)+A000420(n), A000007(n+1))` -/
def P4953891720490070791.Spec : Prop :=
  ∀ n, P4953891720490070791.a n = A081627 n

end A081627

/-! ## A081627.P4341558916491252935

`(A121213(n)+A000420(n))*char[A055396(n+1)]`
-/

namespace A081627.P4341558916491252935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A121213 n + A000420 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A081627.P4341558916491252935

namespace A081627

/-- `(A121213(n)+A000420(n))*char[A055396(n+1)]` -/
def P4341558916491252935.Spec : Prop :=
  ∀ n, P4341558916491252935.a n = A081627 n

end A081627

/-! ## A081627.P17516174473084839885

`(A121213(n)+A000420(n))*A007318(A000096(n))`
-/

namespace A081627.P17516174473084839885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A121213 n + A000420 n) * A007318 (A000096 n).toNat

end

end A081627.P17516174473084839885

namespace A081627

/-- `(A121213(n)+A000420(n))*A007318(A000096(n))` -/
def P17516174473084839885.Spec : Prop :=
  ∀ n, P17516174473084839885.a n = A081627 n

end A081627

/-! ## A081627.P4586242793003045552

`(A121213(n)+A000420(n))*A032742(A000040(n+1))`
-/

namespace A081627.P4586242793003045552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A121213 n + A000420 n) * A032742 (A000040 (n + 1)).toNat

end

end A081627.P4586242793003045552

namespace A081627

/-- `(A121213(n)+A000420(n))*A032742(A000040(n+1))` -/
def P4586242793003045552.Spec : Prop :=
  ∀ n, P4586242793003045552.a n = A081627 n

end A081627

/-! ## A081627.P10771119895704966487

`Δ[A081033(n)/12]`
-/

namespace A081627.P10771119895704966487
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081033 n : ℚ) / 12

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081627.P10771119895704966487

namespace A081627

/-- `Δ[A081033(n)/12]` -/
def P10771119895704966487.Spec : Prop :=
  ∀ n, P10771119895704966487.a n = (A081627 n : ℚ)

theorem P10771119895704966487.correct : P10771119895704966487.Spec := by
  intro n
  simp only [A081627, Nat.add_sub_cancel, A081627.P10771119895704966487.f1, A081627.P10771119895704966487.a, A081627.P9773240573481008031.a, A081033, A081033.P6880637387556337734.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081627

/-!
# A081628: a(n) = 2*(-1)^n - (-5)^n.

The programs for A081628, the canonical program `A081628.P7090773527536399181` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081628 has offset 0).

The definition of A081628 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(-1)^n-(-5)^n` (program `A081628.P7090773527536399181`, by `A081628.P7090773527536399181.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081628.P7090773527536399181

`2*(-1)^n-(-5)^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081628

/-- `2*(-1)^n-(-5)^n` -/
def P7090773527536399181.Spec : Prop :=
  ∀ n, P7090773527536399181.a n = A081628 n

theorem P7090773527536399181.correct : P7090773527536399181.Spec := by
  intro n
  simp only [A081628]

end A081628

/-! ## A081628.P8490205405881439292

`A033999(n)*(2-A000351(n))`
-/

namespace A081628.P8490205405881439292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * (2 - A000351 n)

end

end A081628.P8490205405881439292

namespace A081628

/-- `A033999(n)*(2-A000351(n))` -/
def P8490205405881439292.Spec : Prop :=
  ∀ n, P8490205405881439292.a n = A081628 n

end A081628

/-! ## A081628.P2219190190729509889

`ogf((1+9x)/(1+6x+5x^2))`
-/

namespace A081628.P2219190190729509889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9] [1, 6, 5] n

end

end A081628.P2219190190729509889

namespace A081628

/-- `ogf((1+9x)/(1+6x+5x^2))` -/
def P2219190190729509889.Spec : Prop :=
  ∀ n, P2219190190729509889.a n = A081628 n

end A081628

/-! ## A081628.P13952111869698663762

`xor(-A024049(n), (-1)^n)`
-/

namespace A081628.P13952111869698663762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A024049 n) ((-1) ^ n)

end

end A081628.P13952111869698663762

namespace A081628

/-- `xor(-A024049(n), (-1)^n)` -/
def P13952111869698663762.Spec : Prop :=
  ∀ n, P13952111869698663762.a n = A081628 n

end A081628

/-! ## A081628.P12912086118541050669

`xor(3-A000351(n), A174971(n))`
-/

namespace A081628.P12912086118541050669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (3 - A000351 n) (A174971 n)

end

end A081628.P12912086118541050669

namespace A081628

/-- `xor(3-A000351(n), A174971(n))` -/
def P12912086118541050669.Spec : Prop :=
  ∀ n, P12912086118541050669.a n = A081628 n

end A081628

/-!
# A081629: Number of 9-level labeled rooted trees with n leaves.

The programs for A081629, there is no canonical definition to state claims against.
-/

/-! ## A081629.P17196735338259543486

`A144150(eq[7, A116598(n)])`
-/

namespace A081629.P17196735338259543486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081629.P17196735338259543486

/-! ## A081629.P6102812571657160688

`A144150(eq[8, A025581(n)])`
-/

namespace A081629.P6102812571657160688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081629.P6102812571657160688

/-! ## A081629.P5345906490495245364

`A144150(eq[9, A193739(n)])`
-/

namespace A081629.P5345906490495245364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081629.P5345906490495245364

/-! ## A081629.P10246487741982860519

`A144150(eq[17, A099375(n)])`
-/

namespace A081629.P10246487741982860519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081629.P10246487741982860519

/-! ## A081629.P5701681571126755552

`A144150(eq[9, A004736(n+1)])`
-/

namespace A081629.P5701681571126755552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081629.P5701681571126755552

/-!
# A081630: a(n) = 2-(-3)^n.

The programs for A081630, the canonical program `A081630.P4380217740323657542` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081630 has offset 0).

The definition of A081630 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2-(-3)^n` (program `A081630.P4380217740323657542`, by `A081630.P4380217740323657542.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081630.P4380217740323657542

`2-(-3)^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081630

/-- `2-(-3)^n` -/
def P4380217740323657542.Spec : Prop :=
  ∀ n, P4380217740323657542.a n = A081630 n

theorem P4380217740323657542.correct : P4380217740323657542.Spec := by
  intro n
  simp only [A081630]

end A081630

/-! ## A081630.P13280819924091225764

`∑[ogf((1+7x)/(1+3x))]`
-/

namespace A081630.P13280819924091225764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7] [1, 3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081630.P13280819924091225764

namespace A081630

/-- `∑[ogf((1+7x)/(1+3x))]` -/
def P13280819924091225764.Spec : Prop :=
  ∀ n, P13280819924091225764.a n = A081630 n

end A081630

/-! ## A081630.P204966134064023758

`ogf((1+7x)/(1+2x-3x^2))`
-/

namespace A081630.P204966134064023758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7] [1, 2, -3] n

end

end A081630.P204966134064023758

namespace A081630

/-- `ogf((1+7x)/(1+2x-3x^2))` -/
def P204966134064023758.Spec : Prop :=
  ∀ n, P204966134064023758.a n = A081630 n

end A081630

/-! ## A081630.P4274496224779192276

`∑[-(3*a(n-1))]` with `a(0)=1, a(1)=4`
-/

namespace A081630.P4274496224779192276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  -(3 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081630.P4274496224779192276

namespace A081630

/-- `∑[-(3*a(n-1))]` -/
def P4274496224779192276.Spec : Prop :=
  ∀ n, P4274496224779192276.a n = A081630 n

end A081630

/-! ## A081630.P1396501012796522146

`xor(3, 3*(3-a(n-1)))` with `a(0)=1`
-/

namespace A081630.P1396501012796522146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 3 (3 * (3 - a (n - 1)))

end

end A081630.P1396501012796522146

namespace A081630

/-- `xor(3, 3*(3-a(n-1)))` -/
def P1396501012796522146.Spec : Prop :=
  ∀ n, P1396501012796522146.a n = A081630 n

end A081630

/-! ## A081630.P2390276152373443629

`∑[a(n-1)-4*a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A081630.P2390276152373443629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) - 4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081630.P2390276152373443629

namespace A081630

/-- `∑[a(n-1)-4*a(n-1)]` -/
def P2390276152373443629.Spec : Prop :=
  ∀ n, P2390276152373443629.a n = A081630 n

end A081630

/-! ## A081630.P10057728570591463815

`xor(A010675(n), A168589(n))`
-/

namespace A081630.P10057728570591463815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010675 n) (A168589 n)

end

end A081630.P10057728570591463815

namespace A081630

/-- `xor(A010675(n), A168589(n))` -/
def P10057728570591463815.Spec : Prop :=
  ∀ n, P10057728570591463815.a n = A081630 n

end A081630

/-!
# A081631: a(n) = 2*2^n - (-2)^n.

The programs for A081631, the canonical program `A081631.P7702862653262585980` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081631 has offset 0).

The definition of A081631 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*2^n-(-2)^n` (program `A081631.P7702862653262585980`, by `A081631.P7702862653262585980.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081631.P7702862653262585980

`2*2^n-(-2)^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081631

/-- `2*2^n-(-2)^n` -/
def P7702862653262585980.Spec : Prop :=
  ∀ n, P7702862653262585980.a n = A081631 n

theorem P7702862653262585980.correct : P7702862653262585980.Spec := by
  intro n
  simp only [A081631]

end A081631

/-! ## A081631.P7310404121026086451

`ogf((1+6x)/(1-4x^2))`
-/

namespace A081631.P7310404121026086451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, 0, -4] n

end

end A081631.P7310404121026086451

namespace A081631

/-- `ogf((1+6x)/(1-4x^2))` -/
def P7310404121026086451.Spec : Prop :=
  ∀ n, P7310404121026086451.a n = A081631 n

end A081631

/-! ## A081631.P4354879015793727691

`4*a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A081631.P4354879015793727691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  4 * a (n - 2)

end

end A081631.P4354879015793727691

namespace A081631

/-- `4*a(n-2)` -/
def P4354879015793727691.Spec : Prop :=
  ∀ n, (P4354879015793727691.a n : ℤ) = A081631 n

theorem P4354879015793727691.correct : P4354879015793727691.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081631, Nat.add_sub_cancel, A081631.P4354879015793727691.a, A081631.P7702862653262585980.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A081631, Nat.add_sub_cancel, A081631.P4354879015793727691.a, A081631.P7702862653262585980.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081631

/-! ## A081631.P13468672186552870320

`∏[4/a(n-1)]` with `a(0)=1, a(1)=6`
-/

namespace A081631.P13468672186552870320
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  4 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A081631.P13468672186552870320

namespace A081631

/-- `∏[4/a(n-1)]` -/
def P13468672186552870320.Spec : Prop :=
  ∀ n, P13468672186552870320.a n = (A081631 n : ℚ)

end A081631

/-! ## A081631.P17158807186990154928

`2^n*3^(n%2)`
-/

namespace A081631.P17158807186990154928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * 3 ^ (n % 2)

end

end A081631.P17158807186990154928

namespace A081631

/-- `2^n*3^(n%2)` -/
def P17158807186990154928.Spec : Prop :=
  ∀ n, (P17158807186990154928.a n : ℤ) = A081631 n

end A081631

/-! ## A081631.P12421653250265069871

`lcm(2^n, a(n-2))` with `a(0)=1, a(1)=6`
-/

namespace A081631.P12421653250265069871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  Nat.lcm (2 ^ n) (a (n - 2))

end

end A081631.P12421653250265069871

namespace A081631

/-- `lcm(2^n, a(n-2))` -/
def P12421653250265069871.Spec : Prop :=
  ∀ n, (P12421653250265069871.a n : ℤ) = A081631 n

end A081631

/-! ## A081631.P6428392389132920563

`2^n*gcd(3, ∑[2^n])`
-/

namespace A081631.P6428392389132920563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.gcd 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081631.P6428392389132920563

namespace A081631

/-- `2^n*gcd(3, ∑[2^n])` -/
def P6428392389132920563.Spec : Prop :=
  ∀ n, (P6428392389132920563.a n : ℤ) = A081631 n

end A081631

/-! ## A081631.P2458696964849096103

`and((-2)^n, Δ[(-2)^n])`
-/

namespace A081631.P2458696964849096103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-2) ^ n) (f1 (n + 1) - f1 n)

end

end A081631.P2458696964849096103

namespace A081631

/-- `and((-2)^n, Δ[(-2)^n])` -/
def P2458696964849096103.Spec : Prop :=
  ∀ n, P2458696964849096103.a n = A081631 n

end A081631

/-! ## A081631.P3642286730866913863

`a(n-2)/(1/2)²` with `a(0)=1, a(1)=6`
-/

namespace A081631.P3642286730866913863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A081631.P3642286730866913863

namespace A081631

/-- `a(n-2)/(1/2)²` -/
def P3642286730866913863.Spec : Prop :=
  ∀ n, P3642286730866913863.a n = (A081631 n : ℚ)

theorem P3642286730866913863.correct : P3642286730866913863.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081631, Nat.add_sub_cancel, A081631.P3642286730866913863.a, A081631.P7702862653262585980.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A081631, Nat.add_sub_cancel, A081631.P3642286730866913863.a, A081631.P7702862653262585980.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081631

/-! ## A081631.P6100552832259225979

`2^n*(2*and(1, n)+1)`
-/

namespace A081631.P6100552832259225979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (2 * Nat.land 1 n + 1)

end

end A081631.P6100552832259225979

namespace A081631

/-- `2^n*(2*and(1, n)+1)` -/
def P6100552832259225979.Spec : Prop :=
  ∀ n, (P6100552832259225979.a n : ℤ) = A081631 n

end A081631

/-! ## A081631.P3850513980066065601

`abs(Δ[A255138(n)])`
-/

namespace A081631.P3850513980066065601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A081631.P3850513980066065601

namespace A081631

/-- `abs(Δ[A255138(n)])` -/
def P3850513980066065601.Spec : Prop :=
  ∀ n, P3850513980066065601.a n = A081631 n

end A081631

/-! ## A081631.P8491928516345532254

`abs(A137444(2*n))`
-/

namespace A081631.P8491928516345532254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137444 (2 * n)|

end

end A081631.P8491928516345532254

namespace A081631

/-- `abs(A137444(2*n))` -/
def P8491928516345532254.Spec : Prop :=
  ∀ n, P8491928516345532254.a n = A081631 n

end A081631

/-! ## A081631.P12181840385335340785

`Δ[A176961(n+1)]`
-/

namespace A081631.P12181840385335340785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081631.P12181840385335340785

namespace A081631

/-- `Δ[A176961(n+1)]` -/
def P12181840385335340785.Spec : Prop :=
  ∀ n, P12181840385335340785.a n = A081631 n

end A081631

/-! ## A081631.P10689917470691651354

`A308709(2*(n+1))`
-/

namespace A081631.P10689917470691651354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308709 (2 * (n + 1))

end

end A081631.P10689917470691651354

namespace A081631

/-- `A308709(2*(n+1))` -/
def P10689917470691651354.Spec : Prop :=
  ∀ n, P10689917470691651354.a n = A081631 n

end A081631

/-! ## A081631.P6417588394197453263

`A098646(n+1)/2`
-/

namespace A081631.P6417588394197453263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098646 (n + 1) : ℚ) / 2

end

end A081631.P6417588394197453263

namespace A081631

/-- `A098646(n+1)/2` -/
def P6417588394197453263.Spec : Prop :=
  ∀ n, P6417588394197453263.a n = (A081631 n : ℚ)

end A081631

/-! ## A081631.P7062318918119325485

`2^n*A010684(n)`
-/

namespace A081631.P7062318918119325485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A010684 n

end

end A081631.P7062318918119325485

namespace A081631

/-- `2^n*A010684(n)` -/
def P7062318918119325485.Spec : Prop :=
  ∀ n, P7062318918119325485.a n = A081631 n

end A081631

/-! ## A081631.P10724984484359517980

`abs(Δ[A176965(n+1)])`
-/

namespace A081631.P10724984484359517980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A081631.P10724984484359517980

namespace A081631

/-- `abs(Δ[A176965(n+1)])` -/
def P10724984484359517980.Spec : Prop :=
  ∀ n, P10724984484359517980.a n = A081631 n

end A081631

/-! ## A081631.P3022652949066539001

`abs(Δ[A099087(2*n)])`
-/

namespace A081631.P3022652949066539001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A081631.P3022652949066539001

namespace A081631

/-- `abs(Δ[A099087(2*n)])` -/
def P3022652949066539001.Spec : Prop :=
  ∀ n, P3022652949066539001.a n = A081631 n

end A081631

/-! ## A081631.P4983515352234942201

`abs(Δ[A108520(2*n)])`
-/

namespace A081631.P4983515352234942201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A081631.P4983515352234942201

namespace A081631

/-- `abs(Δ[A108520(2*n)])` -/
def P4983515352234942201.Spec : Prop :=
  ∀ n, P4983515352234942201.a n = A081631 n

end A081631

/-! ## A081631.P10973250802039772597

`abs(Δ[A320770(2*n)])`
-/

namespace A081631.P10973250802039772597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320770 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A081631.P10973250802039772597

namespace A081631

/-- `abs(Δ[A320770(2*n)])` -/
def P10973250802039772597.Spec : Prop :=
  ∀ n, P10973250802039772597.a n = A081631 n

end A081631

/-!
# A081632: a(n) = 2*3^n-(-1)^n.

The programs for A081632, the canonical program `A081632.P10890117824861279305` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081632 has offset 0).

The definition of A081632 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*3^n-(-1)^n` (program `A081632.P10890117824861279305`, by `A081632.P10890117824861279305.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081632.P10890117824861279305

`2*3^n-(-1)^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081632

/-- `2*3^n-(-1)^n` -/
def P10890117824861279305.Spec : Prop :=
  ∀ n, P10890117824861279305.a n = A081632 n

theorem P10890117824861279305.correct : P10890117824861279305.Spec := by
  intro n
  simp only [A081632]

end A081632

/-! ## A081632.P6085101703238311430

`ogf((1+5x)/(1-2x-3x^2))`
-/

namespace A081632.P6085101703238311430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, -2, -3] n

end

end A081632.P6085101703238311430

namespace A081632

/-- `ogf((1+5x)/(1-2x-3x^2))` -/
def P6085101703238311430.Spec : Prop :=
  ∀ n, P6085101703238311430.a n = A081632 n

end A081632

/-! ## A081632.P1020247039995746883

`Δ[gcd(2, n)+3^n]`
-/

namespace A081632.P1020247039995746883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + 3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A081632.P1020247039995746883

namespace A081632

/-- `Δ[gcd(2, n)+3^n]` -/
def P1020247039995746883.Spec : Prop :=
  ∀ n, P1020247039995746883.a n = A081632 n

end A081632

/-! ## A081632.P16552902550984096092

`Δ[3^n-n%2]`
-/

namespace A081632.P16552902550984096092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081632.P16552902550984096092

namespace A081632

/-- `Δ[3^n-n%2]` -/
def P16552902550984096092.Spec : Prop :=
  ∀ n, P16552902550984096092.a n = A081632 n

end A081632

/-! ## A081632.P367758970055032904

`Δ[3^n-and(1, n)]`
-/

namespace A081632.P367758970055032904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081632.P367758970055032904

namespace A081632

/-- `Δ[3^n-and(1, n)]` -/
def P367758970055032904.Spec : Prop :=
  ∀ n, P367758970055032904.a n = A081632 n

end A081632

/-! ## A081632.P18065138278725386722

`Δ[xor(3^n, and(1, n))]`
-/

namespace A081632.P18065138278725386722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (3 ^ n) (Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A081632.P18065138278725386722

namespace A081632

/-- `Δ[xor(3^n, and(1, n))]` -/
def P18065138278725386722.Spec : Prop :=
  ∀ n, P18065138278725386722.a n = A081632 n

end A081632

/-! ## A081632.P8682971332770649213

`xor(4, 3*a(n-1))` with `a(0)=1`
-/

namespace A081632.P8682971332770649213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 4 (3 * a (n - 1))

end

end A081632.P8682971332770649213

namespace A081632

/-- `xor(4, 3*a(n-1))` -/
def P8682971332770649213.Spec : Prop :=
  ∀ n, (P8682971332770649213.a n : ℤ) = A081632 n

end A081632

/-! ## A081632.P9154718700850216739

`xor(4, lcm(3, a(n-1)))` with `a(0)=1`
-/

namespace A081632.P9154718700850216739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 4 (Nat.lcm 3 (a (n - 1)))

end

end A081632.P9154718700850216739

namespace A081632

/-- `xor(4, lcm(3, a(n-1)))` -/
def P9154718700850216739.Spec : Prop :=
  ∀ n, (P9154718700850216739.a n : ℤ) = A081632 n

end A081632

/-! ## A081632.P11055110256129265501

`Δ[(n+1)%2+3^n]`
-/

namespace A081632.P11055110256129265501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 + 3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A081632.P11055110256129265501

namespace A081632

/-- `Δ[(n+1)%2+3^n]` -/
def P11055110256129265501.Spec : Prop :=
  ∀ n, P11055110256129265501.a n = A081632 n

end A081632

/-! ## A081632.P13530313941733934181

`Δ[and(1, n+1)+3^n]`
-/

namespace A081632.P13530313941733934181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1) + 3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A081632.P13530313941733934181

namespace A081632

/-- `Δ[and(1, n+1)+3^n]` -/
def P13530313941733934181.Spec : Prop :=
  ∀ n, P13530313941733934181.a n = A081632 n

end A081632

/-! ## A081632.P4562784857184046463

`Δ[3^n-gcd(n-1, 2*n)]`
-/

namespace A081632.P4562784857184046463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (Int.gcd ((n : ℤ) - 1) (2 * n : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081632.P4562784857184046463

namespace A081632

/-- `Δ[3^n-gcd(n-1, 2*n)]` -/
def P4562784857184046463.Spec : Prop :=
  ∀ n, P4562784857184046463.a n = A081632 n

end A081632

/-! ## A081632.P3290115648607813530

`Δ[comp[or(2, n)]+3^n-2*n]`
-/

namespace A081632.P3290115648607813530
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) + ((3 ^ n : ℤ) - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081632.P3290115648607813530

namespace A081632

/-- `Δ[comp[or(2, n)]+3^n-2*n]` -/
def P3290115648607813530.Spec : Prop :=
  ∀ n, P3290115648607813530.a n = A081632 n

end A081632

/-! ## A081632.P15897933238685816107

`Δ[A052929(n)]`
-/

namespace A081632.P15897933238685816107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081632.P15897933238685816107

namespace A081632

/-- `Δ[A052929(n)]` -/
def P15897933238685816107.Spec : Prop :=
  ∀ n, P15897933238685816107.a n = A081632 n

end A081632

/-! ## A081632.P18145504042565372892

`xor(2, A174132(n+1))`
-/

namespace A081632.P18145504042565372892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A174132 (n + 1))

end

end A081632.P18145504042565372892

namespace A081632

/-- `xor(2, A174132(n+1))` -/
def P18145504042565372892.Spec : Prop :=
  ∀ n, P18145504042565372892.a n = A081632 n

end A081632

/-! ## A081632.P16069468881129697344

`A062547(A014601(n))`
-/

namespace A081632.P16069468881129697344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062547 (A014601 n).toNat

end

end A081632.P16069468881129697344

namespace A081632

/-- `A062547(A014601(n))` -/
def P16069468881129697344.Spec : Prop :=
  ∀ n, P16069468881129697344.a n = A081632 n

end A081632

/-! ## A081632.P17312008142372475934

`xor(A010673(n), A048473(n))`
-/

namespace A081632.P17312008142372475934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010673 n) (A048473 n)

end

end A081632.P17312008142372475934

namespace A081632

/-- `xor(A010673(n), A048473(n))` -/
def P17312008142372475934.Spec : Prop :=
  ∀ n, P17312008142372475934.a n = A081632 n

end A081632

/-! ## A081632.P15051946440816666490

`xor(A010684(n), A100774(n))`
-/

namespace A081632.P15051946440816666490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010684 n) (A100774 n)

end

end A081632.P15051946440816666490

namespace A081632

/-- `xor(A010684(n), A100774(n))` -/
def P15051946440816666490.Spec : Prop :=
  ∀ n, P15051946440816666490.a n = A081632 n

end A081632

/-! ## A081632.P16380064734031071523

`xor(A008776(n), A176040(n))`
-/

namespace A081632.P16380064734031071523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008776 n) (A176040 n)

end

end A081632.P16380064734031071523

namespace A081632

/-- `xor(A008776(n), A176040(n))` -/
def P16380064734031071523.Spec : Prop :=
  ∀ n, P16380064734031071523.a n = A081632 n

end A081632

/-! ## A081632.P12043513973600294317

`A062547(A042963(n+2)-2)`
-/

namespace A081632.P12043513973600294317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062547 (A042963 (n + 2) - 2).toNat

end

end A081632.P12043513973600294317

namespace A081632

/-- `A062547(A042963(n+2)-2)` -/
def P12043513973600294317.Spec : Prop :=
  ∀ n, P12043513973600294317.a n = A081632 n

end A081632

/-! ## A081632.P6428909078947879815

`A048473(n)*A052919(n+1)/A174132(n+1)`
-/

namespace A081632.P6428909078947879815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048473 n * A052919 (n + 1) : ℚ) / (A174132 (n + 1) : ℚ)

end

end A081632.P6428909078947879815

namespace A081632

/-- `A048473(n)*A052919(n+1)/A174132(n+1)` -/
def P6428909078947879815.Spec : Prop :=
  ∀ n, P6428909078947879815.a n = (A081632 n : ℚ)

end A081632

/-!
# A081642: Integers congruent to 0, 1 or 4 (mod 9) which are not squares.

The programs for A081642, the canonical program `A081642.P13471767013185929231` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081642 has offset 1).

The definition of A081642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9865 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081642.P13471767013185929231

`filter[A028837(n+1), A049240(#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081642

/-- `filter[A028837(n+1), A049240(#)]` -/
def P13471767013185929231.Spec : Prop :=
  ∀ n, P13471767013185929231.a n = A081642 (n + 1)

theorem P13471767013185929231.correct : P13471767013185929231.Spec := by
  intro n
  simp only [A081642, Nat.add_sub_cancel]

end A081642

/-! ## A081642.P5412919466440807163

`∩[A028837(n+1), A375166(n+1)]`
-/

namespace A081642.P5412919466440807163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081642.P5412919466440807163

namespace A081642

/-- `∩[A028837(n+1), A375166(n+1)]` -/
def P5412919466440807163.Spec : Prop :=
  ∀ n, (P5412919466440807163.a n : ℤ) = A081642 (n + 1)

end A081642

/-! ## A081642.P17090466447443817179

`∩[A375166(n+1), A214068(n)]`
-/

namespace A081642.P17090466447443817179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214068 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081642.P17090466447443817179

namespace A081642

/-- `∩[A375166(n+1), A214068(n)]` -/
def P17090466447443817179.Spec : Prop :=
  ∀ n, (P17090466447443817179.a n : ℤ) = A081642 (n + 1)

end A081642

/-! ## A081642.P5641174052972610067

`∩[A375166(n+1), A272574(n)]`
-/

namespace A081642.P5641174052972610067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081642.P5641174052972610067

namespace A081642

/-- `∩[A375166(n+1), A272574(n)]` -/
def P5641174052972610067.Spec : Prop :=
  ∀ n, (P5641174052972610067.a n : ℤ) = A081642 (n + 1)

end A081642

/-! ## A081642.P15845746712164731596

`∩[A028837(n+1), A174805(n)]`
-/

namespace A081642.P15845746712164731596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174805 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081642.P15845746712164731596

namespace A081642

/-- `∩[A028837(n+1), A174805(n)]` -/
def P15845746712164731596.Spec : Prop :=
  ∀ n, (P15845746712164731596.a n : ℤ) = A081642 (n + 1)

end A081642

/-! ## A081642.P4965869200877544714

`∩[∑[Δ[n²]%6], comp[n²]]`
-/

namespace A081642.P4965869200877544714
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f3 (n + 1) : ℤ) - (f3 n : ℤ)) 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f4 j = x) n

end

end A081642.P4965869200877544714

namespace A081642

/-- `∩[∑[Δ[n²]%6], comp[n²]]` -/
def P4965869200877544714.Spec : Prop :=
  ∀ n, (P4965869200877544714.a n : ℤ) = A081642 (n + 1)

end A081642

/-! ## A081642.P9287397658274318336

`∩[A000037(n+1), A028837(n+1)]`
-/

namespace A081642.P9287397658274318336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081642.P9287397658274318336

namespace A081642

/-- `∩[A000037(n+1), A028837(n+1)]` -/
def P9287397658274318336.Spec : Prop :=
  ∀ n, (P9287397658274318336.a n : ℤ) = A081642 (n + 1)

end A081642

/-! ## A081642.P8179475043865401921

`filter[A028837(n+1), A267594(#)]`
-/

namespace A081642.P8179475043865401921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A081642.P8179475043865401921

namespace A081642

/-- `filter[A028837(n+1), A267594(#)]` -/
def P8179475043865401921.Spec : Prop :=
  ∀ n, P8179475043865401921.a n = A081642 (n + 1)

end A081642

/-! ## A081642.P9170048189386990378

`filter[A028837(n+1), A267635(#)]`
-/

namespace A081642.P9170048189386990378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A081642.P9170048189386990378

namespace A081642

/-- `filter[A028837(n+1), A267635(#)]` -/
def P9170048189386990378.Spec : Prop :=
  ∀ n, P9170048189386990378.a n = A081642 (n + 1)

end A081642

/-! ## A081642.P7189458971378112311

`filter[A375166(n+1), A130630(#)]`
-/

namespace A081642.P7189458971378112311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130630 (f1 j).toNat = 1) n)

end

end A081642.P7189458971378112311

namespace A081642

/-- `filter[A375166(n+1), A130630(#)]` -/
def P7189458971378112311.Spec : Prop :=
  ∀ n, P7189458971378112311.a n = A081642 (n + 1)

end A081642

/-! ## A081642.P8423719945431880921

`lt[A000122(n), atan(A182036(2*n+1))]`
-/

namespace A081642.P8423719945431880921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A182036 (2 * n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A081642.P8423719945431880921

namespace A081642

/-- `lt[A000122(n), atan(A182036(2*n+1))]` -/
def P8423719945431880921.Spec : Prop :=
  ∀ n, (P8423719945431880921.a n : ℤ) = A081642 (n + 1)

end A081642

/-!
# A081643: Integers congruent to 0, 1, 4 or 9 (mod 16) which are not squares.

The programs for A081643, the canonical program `A081643.P14889491825710240957` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081643 has offset 1).

The definition of A081643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081643.P14889491825710240957

`eq[and(10, A323724(n)), A000122(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081643

/-- `eq[and(10, A323724(n)), A000122(n)]` -/
def P14889491825710240957.Spec : Prop :=
  ∀ n, (P14889491825710240957.a n : ℤ) = A081643 (n + 1)

theorem P14889491825710240957.correct : P14889491825710240957.Spec := by
  intro n
  simp only [A081643, Nat.add_sub_cancel]

end A081643

/-! ## A081643.P4802415272435251300

`record[A131730(A081647(n+2))]`
-/

namespace A081643.P4802415272435251300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131730 (A081647 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081643.P4802415272435251300

namespace A081643

/-- `record[A131730(A081647(n+2))]` -/
def P4802415272435251300.Spec : Prop :=
  ∀ n, P4802415272435251300.a n = A081643 (n + 1)

end A081643

/-!
# A081644: Integers congruent to 0, 1, 4, 9 or 16 (mod 25) which are not squares.

The programs for A081644, there is no canonical definition to state claims against.
-/

/-! ## A081644.P12292197772494543162

`record[A131730(A081649(n+2))]`
-/

namespace A081644.P12292197772494543162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131730 (A081649 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081644.P12292197772494543162

/-! ## A081644.P16298613232342462898

`A096521(A061127(n+1))+A061077(n+1)`
-/

namespace A081644.P16298613232342462898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096521 (A061127 (n + 1)).toNat + A061077 (n + 1)

end

end A081644.P16298613232342462898

/-! ## A081644.P6364336428285902022

`A061077(n+1)/A010686(A000079(n+4))+25`
-/

namespace A081644.P6364336428285902022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061077 (n + 1) : ℚ) / (A010686 (A000079 (n + 4)).toNat : ℚ) + 25

end

end A081644.P6364336428285902022

/-!
# A081647: Integers congruent to 0, 1, 4, 9, 16, 25, 36 or 49 (mod 64) which are not squares.

The programs for A081647, there is no canonical definition to state claims against.
-/

/-! ## A081647.P929733398980071677

`eq[8^A002828(n), A262690(n)]`
-/

namespace A081647.P929733398980071677
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A002828 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262690 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A081647.P929733398980071677

/-! ## A081647.P18342806396189256643

`A266916(A091997(n+1)²)+5`
-/

namespace A081647.P18342806396189256643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266916 (A091997 (n + 1) ^ 2).toNat + 5

end

end A081647.P18342806396189256643

/-! ## A081647.P6490646151581595467

`A072089(A000961(n+1)²)+64`
-/

namespace A081647.P6490646151581595467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (A000961 (n + 1) ^ 2).toNat + 64

end

end A081647.P6490646151581595467

/-!
# A081648: Integers congruent to 0, 1, 4, 9, 16, 25, 36, 49 or 64 (mod 81) which are not squares.

The programs for A081648, the canonical program `A081648.P17081280589634402769` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081648 has offset 1).

The definition of A081648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081648.P17081280589634402769

`filter[A080151(n+1), A049240(#)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A081648

/-- `filter[A080151(n+1), A049240(#)]` -/
def P17081280589634402769.Spec : Prop :=
  ∀ n, P17081280589634402769.a n = A081648 (n + 1)

theorem P17081280589634402769.correct : P17081280589634402769.Spec := by
  intro n
  simp only [A081648, Nat.add_sub_cancel]

end A081648

/-! ## A081648.P17055782109579874019

`∩[A080151(n+1), A375166(n+1)]`
-/

namespace A081648.P17055782109579874019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081648.P17055782109579874019

namespace A081648

/-- `∩[A080151(n+1), A375166(n+1)]` -/
def P17055782109579874019.Spec : Prop :=
  ∀ n, (P17055782109579874019.a n : ℤ) = A081648 (n + 1)

end A081648

/-! ## A081648.P2372454431969438500

`∩[A080151(n+1), A174805(n)]`
-/

namespace A081648.P2372454431969438500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174805 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081648.P2372454431969438500

namespace A081648

/-- `∩[A080151(n+1), A174805(n)]` -/
def P2372454431969438500.Spec : Prop :=
  ∀ n, (P2372454431969438500.a n : ℤ) = A081648 (n + 1)

end A081648

/-! ## A081648.P2197499307445419755

`∩[A000037(n+1), A080151(n+1)]`
-/

namespace A081648.P2197499307445419755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081648.P2197499307445419755

namespace A081648

/-- `∩[A000037(n+1), A080151(n+1)]` -/
def P2197499307445419755.Spec : Prop :=
  ∀ n, (P2197499307445419755.a n : ℤ) = A081648 (n + 1)

end A081648

/-! ## A081648.P12802124529688225460

`filter[A080151(n+1), A267594(#)]`
-/

namespace A081648.P12802124529688225460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A081648.P12802124529688225460

namespace A081648

/-- `filter[A080151(n+1), A267594(#)]` -/
def P12802124529688225460.Spec : Prop :=
  ∀ n, P12802124529688225460.a n = A081648 (n + 1)

end A081648

/-! ## A081648.P6295762150334365161

`filter[A080151(n+1), A267635(#)]`
-/

namespace A081648.P6295762150334365161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A081648.P6295762150334365161

namespace A081648

/-- `filter[A080151(n+1), A267635(#)]` -/
def P6295762150334365161.Spec : Prop :=
  ∀ n, P6295762150334365161.a n = A081648 (n + 1)

end A081648

/-!
# A081649: Integers congruent to 0, 1, 4, 9, 16, 25, 36, 49, 64 or 81 (mod 100) which are not squares.

The programs for A081649, there is no canonical definition to state claims against.
-/

/-! ## A081649.P2052839365316191578

`A353386(A046469(n)+51)`
-/

namespace A081649.P2052839365316191578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353386 (A046469 n + 51).toNat

end

end A081649.P2052839365316191578

/-! ## A081649.P11191811384991482088

`A125179(A034856(n+1))+99`
-/

namespace A081649.P11191811384991482088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125179 (A034856 (n + 1)).toNat + 99

end

end A081649.P11191811384991482088

/-! ## A081649.P13830661851967016952

`A002522(A351870(n+1))+99`
-/

namespace A081649.P13830661851967016952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A351870 (n + 1)).toNat + 99

end

end A081649.P13830661851967016952

/-! ## A081649.P1613127057962495160

`A020725((A213217(n)²+n)²)+99`
-/

namespace A081649.P1613127057962495160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 ((A213217 n ^ 2 + (n : ℤ)) ^ 2).toNat + 99

end

end A081649.P1613127057962495160

/-! ## A081649.P4059688391974684289

`A090976(A251028(n+1))+(n+1)²`
-/

namespace A081649.P4059688391974684289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090976 (A251028 (n + 1)).toNat + ((n + 1) ^ 2 : ℤ)

end

end A081649.P4059688391974684289

/-!
# A081650: Least nonsquare whose remainder modulo k^2 is a square for all 0 < k <= n.

The programs for A081650, there is no canonical definition to state claims against.
-/

/-! ## A081650.P3115976827700443344

`p?[p?[A000129(n)+1]-(-1)^n+1]`
-/

namespace A081650.P3115976827700443344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - (-1) ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081650.P3115976827700443344

/-!
# A081652: Greatest common divisor of n and sum of decimal digits of n-th prime.

The programs for A081652, the canonical program `A081652.P14238066097852759484` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081652 has offset 1).

The definition of A081652 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A081652.P14238066097852759484

`gcd(n+1, A007605(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A081652

/-- `gcd(n+1, A007605(n+1))` -/
def P14238066097852759484.Spec : Prop :=
  ∀ n, (P14238066097852759484.a n : ℤ) = A081652 (n + 1)

theorem P14238066097852759484.correct : P14238066097852759484.Spec := by
  intro n
  simp only [A081652, Nat.add_sub_cancel]

end A081652

/-! ## A081652.P16006154095564847155

`gcd(n+1, Δ[A051351(n)])`
-/

namespace A081652.P16006154095564847155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A081652.P16006154095564847155

namespace A081652

/-- `gcd(n+1, Δ[A051351(n)])` -/
def P16006154095564847155.Spec : Prop :=
  ∀ n, (P16006154095564847155.a n : ℤ) = A081652 (n + 1)

end A081652

/-! ## A081652.P10477290599377114592

`gcd(A110367(A000040(n+1)), A131738(n))`
-/

namespace A081652.P10477290599377114592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110367 (A000040 (n + 1)).toNat) (A131738 n)

end

end A081652.P10477290599377114592

namespace A081652

/-- `gcd(A110367(A000040(n+1)), A131738(n))` -/
def P10477290599377114592.Spec : Prop :=
  ∀ n, (P10477290599377114592.a n : ℤ) = A081652 (n + 1)

end A081652

/-! ## A081652.P13660897732142717662

`gcd(A007605(A008611(3*n)), A008611(3*n))`
-/

namespace A081652.P13660897732142717662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007605 (A008611 (3 * n)).toNat) (A008611 (3 * n))

end

end A081652.P13660897732142717662

namespace A081652

/-- `gcd(A007605(A008611(3*n)), A008611(3*n))` -/
def P13660897732142717662.Spec : Prop :=
  ∀ n, (P13660897732142717662.a n : ℤ) = A081652 (n + 1)

end A081652

/-! ## A081652.P139480913613879564

`gcd(A065518(A000040(n+1)), A153152(n))`
-/

namespace A081652.P139480913613879564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065518 (A000040 (n + 1)).toNat) (A153152 n)

end

end A081652.P139480913613879564

namespace A081652

/-- `gcd(A065518(A000040(n+1)), A153152(n))` -/
def P139480913613879564.Spec : Prop :=
  ∀ n, (P139480913613879564.a n : ℤ) = A081652 (n + 1)

end A081652

/-! ## A081652.P15738342922598378236

`gcd(A000027(n+1), A007953(A000040(n+1)))`
-/

namespace A081652.P15738342922598378236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A007953 (A000040 (n + 1)).toNat)

end

end A081652.P15738342922598378236

namespace A081652

/-- `gcd(A000027(n+1), A007953(A000040(n+1)))` -/
def P15738342922598378236.Spec : Prop :=
  ∀ n, (P15738342922598378236.a n : ℤ) = A081652 (n + 1)

theorem P15738342922598378236.correct : P15738342922598378236.Spec := by
  intro n
  simp only [A081652, Nat.add_sub_cancel, A081652.P15738342922598378236.a, A081652.P14238066097852759484.a, A000027, A000027.P10331202704469894836.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007605, A007605.P14521423581831153617.a, A007953, A007953.P3472751987379697826.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081652

/-! ## A081652.P15935368253494141836

`gcd(A026741(2*(n+1)), A118503(A000040(n+1)))`
-/

namespace A081652.P15935368253494141836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026741 (2 * (n + 1))) (A118503 (A000040 (n + 1)).toNat)

end

end A081652.P15935368253494141836

namespace A081652

/-- `gcd(A026741(2*(n+1)), A118503(A000040(n+1)))` -/
def P15935368253494141836.Spec : Prop :=
  ∀ n, (P15935368253494141836.a n : ℤ) = A081652 (n + 1)

end A081652

/-!
# A081653: Greatest common divisor of sums of decimal digits of n and of n-th prime.

The programs for A081653, the canonical program `A081653.P15064107216708762607` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081653 has offset 1).

The definition of A081653 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A081653.P15064107216708762607

`gcd(A007953(n+1), A007605(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A081653

/-- `gcd(A007953(n+1), A007605(n+1))` -/
def P15064107216708762607.Spec : Prop :=
  ∀ n, (P15064107216708762607.a n : ℤ) = A081653 (n + 1)

theorem P15064107216708762607.correct : P15064107216708762607.Spec := by
  intro n
  simp only [A081653, Nat.add_sub_cancel]

end A081653

/-! ## A081653.P11655215020676408394

`gcd(∑{digits}[n+1, #], A090431(n+1))`
-/

namespace A081653.P11655215020676408394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A090431 (n + 1))

end

end A081653.P11655215020676408394

namespace A081653

/-- `gcd(∑{digits}[n+1, #], A090431(n+1))` -/
def P11655215020676408394.Spec : Prop :=
  ∀ n, (P11655215020676408394.a n : ℤ) = A081653 (n + 1)

end A081653

/-! ## A081653.P12687433244256557766

`gcd(Δ[A037123(n)], A007605(n+1))`
-/

namespace A081653.P12687433244256557766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A007605 (n + 1))

end

end A081653.P12687433244256557766

namespace A081653

/-- `gcd(Δ[A037123(n)], A007605(n+1))` -/
def P12687433244256557766.Spec : Prop :=
  ∀ n, (P12687433244256557766.a n : ℤ) = A081653 (n + 1)

end A081653

/-! ## A081653.P12073650651080383876

`gcd(Δ[A239324(n)], A007953(n+1))`
-/

namespace A081653.P12073650651080383876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239324 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A007953 (n + 1))

end

end A081653.P12073650651080383876

namespace A081653

/-- `gcd(Δ[A239324(n)], A007953(n+1))` -/
def P12073650651080383876.Spec : Prop :=
  ∀ n, (P12073650651080383876.a n : ℤ) = A081653 (n + 1)

end A081653

/-! ## A081653.P11880959473377375203

`gcd(Δ[A051351(n)], A090431(n+1))`
-/

namespace A081653.P11880959473377375203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A090431 (n + 1))

end

end A081653.P11880959473377375203

namespace A081653

/-- `gcd(Δ[A051351(n)], A090431(n+1))` -/
def P11880959473377375203.Spec : Prop :=
  ∀ n, (P11880959473377375203.a n : ℤ) = A081653 (n + 1)

end A081653

/-! ## A081653.P1840638820548506532

`gcd(-A090431(n+1), A007953(A004087(n+1)))`
-/

namespace A081653.P1840638820548506532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A090431 (n + 1)) (A007953 (A004087 (n + 1)).toNat)

end

end A081653.P1840638820548506532

namespace A081653

/-- `gcd(-A090431(n+1), A007953(A004087(n+1)))` -/
def P1840638820548506532.Spec : Prop :=
  ∀ n, (P1840638820548506532.a n : ℤ) = A081653 (n + 1)

end A081653

/-!
# A081654: a(n) = 2*4^n - 0^n.

The programs for A081654, the canonical program `A081654.P4228247074488378027` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081654 has offset 0).

The definition of A081654 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*4^n-0^n` (program `A081654.P4228247074488378027`, by `A081654.P4228247074488378027.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081654.P4228247074488378027

`2*4^n-0^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081654

/-- `2*4^n-0^n` -/
def P4228247074488378027.Spec : Prop :=
  ∀ n, P4228247074488378027.a n = A081654 n

theorem P4228247074488378027.correct : P4228247074488378027.Spec := by
  intro n
  simp only [A081654]

end A081654

/-! ## A081654.P17642856559212171170

`ogf((1+4x)/(1-4x))`
-/

namespace A081654.P17642856559212171170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -4] n

end

end A081654.P17642856559212171170

namespace A081654

/-- `ogf((1+4x)/(1-4x))` -/
def P17642856559212171170.Spec : Prop :=
  ∀ n, P17642856559212171170.a n = A081654 n

end A081654

/-! ## A081654.P17199308165406137130

`4*a(n-1)` with `a(0)=1, a(1)=8`
-/

namespace A081654.P17199308165406137130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  4 * a (n - 1)

end

end A081654.P17199308165406137130

namespace A081654

/-- `4*a(n-1)` -/
def P17199308165406137130.Spec : Prop :=
  ∀ n, (P17199308165406137130.a n : ℤ) = A081654 n

theorem P17199308165406137130.correct : P17199308165406137130.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081654, Nat.add_sub_cancel, A081654.P17199308165406137130.a, A081654.P4228247074488378027.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      simp only [A081654, Nat.add_sub_cancel, A081654.P17199308165406137130.a, A081654.P4228247074488378027.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 1 < m + 2 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081654

/-! ## A081654.P17322413109830622938

`record[2^xor(1, n+1)]`
-/

namespace A081654.P17322413109830622938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.xor 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081654.P17322413109830622938

namespace A081654

/-- `record[2^xor(1, n+1)]` -/
def P17322413109830622938.Spec : Prop :=
  ∀ n, (P17322413109830622938.a n : ℤ) = A081654 n

end A081654

/-! ## A081654.P6799266710160406354

`4^n*ceil(cosh(sin(n)))`
-/

namespace A081654.P6799266710160406354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * ⌈Real.cosh (Real.sin (n : ℝ))⌉

end

end A081654.P6799266710160406354

namespace A081654

/-- `4^n*ceil(cosh(sin(n)))` -/
def P6799266710160406354.Spec : Prop :=
  ∀ n, P6799266710160406354.a n = A081654 n

end A081654

/-! ## A081654.P8844620982433557136

`4^n*gcd(2, 4^n)`
-/

namespace A081654.P8844620982433557136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * Nat.gcd 2 (4 ^ n)

end

end A081654.P8844620982433557136

namespace A081654

/-- `4^n*gcd(2, 4^n)` -/
def P8844620982433557136.Spec : Prop :=
  ∀ n, (P8844620982433557136.a n : ℤ) = A081654 n

end A081654

/-! ## A081654.P11138536627821615588

`4^n*ceil(atan(n+1))`
-/

namespace A081654.P11138536627821615588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉

end

end A081654.P11138536627821615588

namespace A081654

/-- `4^n*ceil(atan(n+1))` -/
def P11138536627821615588.Spec : Prop :=
  ∀ n, P11138536627821615588.a n = A081654 n

end A081654

/-! ## A081654.P10656221992249042100

`2^Δ[n^(2%(n+1))]`
-/

namespace A081654.P10656221992249042100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (2 % (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)

end

end A081654.P10656221992249042100

namespace A081654

/-- `2^Δ[n^(2%(n+1))]` -/
def P10656221992249042100.Spec : Prop :=
  ∀ n, P10656221992249042100.a n = (A081654 n : ℚ)

end A081654

/-! ## A081654.P8218058660332816973

`record[(and(1, n)+1)^(n+2)]`
-/

namespace A081654.P8218058660332816973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + 1) ^ (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081654.P8218058660332816973

namespace A081654

/-- `record[(and(1, n)+1)^(n+2)]` -/
def P8218058660332816973.Spec : Prop :=
  ∀ n, (P8218058660332816973.a n : ℤ) = A081654 n

end A081654

/-! ## A081654.P5811939126397932785

`2^comp[lcm(2, n+1)-n]`
-/

namespace A081654.P5811939126397932785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081654.P5811939126397932785

namespace A081654

/-- `2^comp[lcm(2, n+1)-n]` -/
def P5811939126397932785.Spec : Prop :=
  ∀ n, (P5811939126397932785.a n : ℤ) = A081654 n

end A081654

/-! ## A081654.P15820886263443771131

`record[(3-gcd(4, n))^(n+2)]`
-/

namespace A081654.P15820886263443771131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (Nat.gcd 4 n : ℤ)) ^ (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081654.P15820886263443771131

namespace A081654

/-- `record[(3-gcd(4, n))^(n+2)]` -/
def P15820886263443771131.Spec : Prop :=
  ∀ n, P15820886263443771131.a n = A081654 n

end A081654

/-! ## A081654.P8996815809912626472

`2^comp[(n+1)^(n%2)]`
-/

namespace A081654.P8996815809912626472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n % 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A081654.P8996815809912626472

namespace A081654

/-- `2^comp[(n+1)^(n%2)]` -/
def P8996815809912626472.Spec : Prop :=
  ∀ n, (P8996815809912626472.a n : ℤ) = A081654 n

end A081654

/-! ## A081654.P12419693613834394773

`2^comp[(n+1)^and(1, n)]`
-/

namespace A081654.P12419693613834394773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.land 1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A081654.P12419693613834394773

namespace A081654

/-- `2^comp[(n+1)^and(1, n)]` -/
def P12419693613834394773.Spec : Prop :=
  ∀ n, (P12419693613834394773.a n : ℤ) = A081654 n

end A081654

/-! ## A081654.P16045874281018216041

`a(n-1)/(1/2)²` with `a(0)=1, a(1)=8`
-/

namespace A081654.P16045874281018216041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A081654.P16045874281018216041

namespace A081654

/-- `a(n-1)/(1/2)²` -/
def P16045874281018216041.Spec : Prop :=
  ∀ n, P16045874281018216041.a n = (A081654 n : ℚ)

theorem P16045874281018216041.correct : P16045874281018216041.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081654, Nat.add_sub_cancel, A081654.P16045874281018216041.a, A081654.P4228247074488378027.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      simp only [A081654, Nat.add_sub_cancel, A081654.P16045874281018216041.a, A081654.P4228247074488378027.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 1 < m + 2 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081654

/-! ## A081654.P1279799036055251947

`2^record[a(n-2)+2]` with `a(0)=0, a(1)=3`
-/

namespace A081654.P1279799036055251947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081654.P1279799036055251947

namespace A081654

/-- `2^record[a(n-2)+2]` -/
def P1279799036055251947.Spec : Prop :=
  ∀ n, (P1279799036055251947.a n : ℤ) = A081654 n

end A081654

/-! ## A081654.P1104862365410951723

`2^comp[a(n-1)+2]` with `a(0)=1, a(1)=2`
-/

namespace A081654.P1104862365410951723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A081654.P1104862365410951723

namespace A081654

/-- `2^comp[a(n-1)+2]` -/
def P1104862365410951723.Spec : Prop :=
  ∀ n, (P1104862365410951723.a n : ℤ) = A081654 n

end A081654

/-! ## A081654.P13439454321815806756

`2^record[n-a(n-2)]` with `a(0)=0, a(1)=3`
-/

namespace A081654.P13439454321815806756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  (n : ℤ) - f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A081654.P13439454321815806756

namespace A081654

/-- `2^record[n-a(n-2)]` -/
def P13439454321815806756.Spec : Prop :=
  ∀ n, P13439454321815806756.a n = (A081654 n : ℚ)

end A081654

/-! ## A081654.P8640653616307704617

`ceil(atan(n+1))^(n+1+n)`
-/

namespace A081654.P8640653616307704617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ)⌉ ^ (n + 1 + n)

end

end A081654.P8640653616307704617

namespace A081654

/-- `ceil(atan(n+1))^(n+1+n)` -/
def P8640653616307704617.Spec : Prop :=
  ∀ n, P8640653616307704617.a n = A081654 n

end A081654

/-! ## A081654.P198435658908896113

`2^((2*n+1)%(n+1)²)`
-/

namespace A081654.P198435658908896113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ ((2 * n + 1) % (n + 1) ^ 2)

end

end A081654.P198435658908896113

namespace A081654

/-- `2^((2*n+1)%(n+1)²)` -/
def P198435658908896113.Spec : Prop :=
  ∀ n, (P198435658908896113.a n : ℤ) = A081654 n

end A081654

/-! ## A081654.P10637330517177493453

`record[(n+2-or(1, n))^(n+2)]`
-/

namespace A081654.P10637330517177493453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - (Nat.lor 1 n : ℤ)) ^ (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081654.P10637330517177493453

namespace A081654

/-- `record[(n+2-or(1, n))^(n+2)]` -/
def P10637330517177493453.Spec : Prop :=
  ∀ n, P10637330517177493453.a n = A081654 n

end A081654

/-!
# A081655: a(n) = 2*5^n-1.

The programs for A081655, the canonical program `A081655.P14712545280012633479` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081655 has offset 0).

The definition of A081655 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*5^n-1` (program `A081655.P14712545280012633479`, by `A081655.P14712545280012633479.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081655.P14712545280012633479

`2*5^n-1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081655

/-- `2*5^n-1` -/
def P14712545280012633479.Spec : Prop :=
  ∀ n, P14712545280012633479.a n = A081655 n

theorem P14712545280012633479.correct : P14712545280012633479.Spec := by
  intro n
  simp only [A081655]

end A081655

/-! ## A081655.P13714382864648815223

`xor(3, 2*5^n)`
-/

namespace A081655.P13714382864648815223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (2 * 5 ^ n)

end

end A081655.P13714382864648815223

namespace A081655

/-- `xor(3, 2*5^n)` -/
def P13714382864648815223.Spec : Prop :=
  ∀ n, (P13714382864648815223.a n : ℤ) = A081655 n

end A081655

/-! ## A081655.P8109720424166170370

`ogf((1+3x)/(1-6x+5x^2))`
-/

namespace A081655.P8109720424166170370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -6, 5] n

end

end A081655.P8109720424166170370

namespace A081655

/-- `ogf((1+3x)/(1-6x+5x^2))` -/
def P8109720424166170370.Spec : Prop :=
  ∀ n, P8109720424166170370.a n = A081655 n

end A081655

/-! ## A081655.P2586547398511959887

`abs(1-lcm(2, 5^n))`
-/

namespace A081655.P2586547398511959887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lcm 2 (5 ^ n) : ℤ)|

end

end A081655.P2586547398511959887

namespace A081655

/-- `abs(1-lcm(2, 5^n))` -/
def P2586547398511959887.Spec : Prop :=
  ∀ n, P2586547398511959887.a n = A081655 n

end A081655

/-! ## A081655.P1528186094410691223

`∑[5*a(n-1)]` with `a(0)=1, a(1)=8`
-/

namespace A081655.P1528186094410691223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081655.P1528186094410691223

namespace A081655

/-- `∑[5*a(n-1)]` -/
def P1528186094410691223.Spec : Prop :=
  ∀ n, (P1528186094410691223.a n : ℤ) = A081655 n

end A081655

/-! ## A081655.P14991559642903346572

`abs(5*a(n-1)+4)` with `a(0)=1`
-/

namespace A081655.P14991559642903346572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + 4

end

end A081655.P14991559642903346572

namespace A081655

/-- `abs(5*a(n-1)+4)` -/
def P14991559642903346572.Spec : Prop :=
  ∀ n, (P14991559642903346572.a n : ℤ) = A081655 n

theorem P14991559642903346572.correct : P14991559642903346572.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A081655, Nat.add_sub_cancel, A081655.P14991559642903346572.a, A081655.P14712545280012633479.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A081655, Nat.add_sub_cancel, A081655.P14991559642903346572.a, A081655.P14712545280012633479.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081655

/-! ## A081655.P6167145317960632682

`5*(a(n-1)+4/5)` with `a(0)=1`
-/

namespace A081655.P6167145317960632682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  5 * (a (n - 1) + (4 : ℚ) / 5)

end

end A081655.P6167145317960632682

namespace A081655

/-- `5*(a(n-1)+4/5)` -/
def P6167145317960632682.Spec : Prop :=
  ∀ n, P6167145317960632682.a n = (A081655 n : ℚ)

theorem P6167145317960632682.correct : P6167145317960632682.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A081655, Nat.add_sub_cancel, A081655.P6167145317960632682.a, A081655.P14712545280012633479.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A081655, Nat.add_sub_cancel, A081655.P6167145317960632682.a, A081655.P14712545280012633479.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081655

/-! ## A081655.P7716070707656478867

`or(1, 5*a(n-1)+3)` with `a(0)=1`
-/

namespace A081655.P7716070707656478867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (5 * a (n - 1) + 3)

end

end A081655.P7716070707656478867

namespace A081655

/-- `or(1, 5*a(n-1)+3)` -/
def P7716070707656478867.Spec : Prop :=
  ∀ n, (P7716070707656478867.a n : ℤ) = A081655 n

end A081655

/-! ## A081655.P12337438246849873030

`record[5*a(n-2)+4]` with `a(0)=1, a(1)=0`
-/

namespace A081655.P12337438246849873030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  5 * f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081655.P12337438246849873030

namespace A081655

/-- `record[5*a(n-2)+4]` -/
def P12337438246849873030.Spec : Prop :=
  ∀ n, (P12337438246849873030.a n : ℤ) = A081655 n

end A081655

/-! ## A081655.P13371371169141933455

`5*(1-(1/5-a(n-1)))` with `a(0)=1`
-/

namespace A081655.P13371371169141933455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  5 * (1 - ((1 : ℚ) / 5 - a (n - 1)))

end

end A081655.P13371371169141933455

namespace A081655

/-- `5*(1-(1/5-a(n-1)))` -/
def P13371371169141933455.Spec : Prop :=
  ∀ n, P13371371169141933455.a n = (A081655 n : ℚ)

theorem P13371371169141933455.correct : P13371371169141933455.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A081655, Nat.add_sub_cancel, A081655.P13371371169141933455.a, A081655.P14712545280012633479.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A081655, Nat.add_sub_cancel, A081655.P13371371169141933455.a, A081655.P14712545280012633479.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081655

/-! ## A081655.P510842340500545959

`floor(a(n-1)+4*(a(n-1)+1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A081655.P510842340500545959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 4 * (a (n - 1) + 1)

end

end A081655.P510842340500545959

namespace A081655

/-- `floor(a(n-1)+4*(a(n-1)+1))` -/
def P510842340500545959.Spec : Prop :=
  ∀ n, (P510842340500545959.a n : ℤ) = A081655 n

theorem P510842340500545959.correct : P510842340500545959.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A081655, Nat.add_sub_cancel, A081655.P510842340500545959.a, A081655.P14712545280012633479.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A081655, Nat.add_sub_cancel, A081655.P510842340500545959.a, A081655.P14712545280012633479.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081655

/-! ## A081655.P4801945791881999622

`floor(6*a(n-1)-(a(n-1)-4))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A081655.P4801945791881999622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - (a (n - 1) - 4)

end

end A081655.P4801945791881999622

namespace A081655

/-- `floor(6*a(n-1)-(a(n-1)-4))` -/
def P4801945791881999622.Spec : Prop :=
  ∀ n, P4801945791881999622.a n = A081655 n

theorem P4801945791881999622.correct : P4801945791881999622.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A081655, Nat.add_sub_cancel, A081655.P4801945791881999622.a, A081655.P14712545280012633479.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A081655, Nat.add_sub_cancel, A081655.P4801945791881999622.a, A081655.P14712545280012633479.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081655

/-! ## A081655.P14518859985964310917

`∑[A128625(n)]`
-/

namespace A081655.P14518859985964310917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081655.P14518859985964310917

namespace A081655

/-- `∑[A128625(n)]` -/
def P14518859985964310917.Spec : Prop :=
  ∀ n, P14518859985964310917.a n = A081655 n

end A081655

/-! ## A081655.P16438635436507001873

`floor(A198763(n)/2)`
-/

namespace A081655.P16438635436507001873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198763 n : ℚ) / 2⌋

end

end A081655.P16438635436507001873

namespace A081655

/-- `floor(A198763(n)/2)` -/
def P16438635436507001873.Spec : Prop :=
  ∀ n, P16438635436507001873.a n = A081655 n

end A081655

/-! ## A081655.P1812770094465989929

`∑[A138278(3*n)]`
-/

namespace A081655.P1812770094465989929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138278 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081655.P1812770094465989929

namespace A081655

/-- `∑[A138278(3*n)]` -/
def P1812770094465989929.Spec : Prop :=
  ∀ n, P1812770094465989929.a n = A081655 n

end A081655

/-! ## A081655.P2989784365899263197

`A181287(4*n+2)`
-/

namespace A081655.P2989784365899263197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181287 (4 * n + 2)

end

end A081655.P2989784365899263197

namespace A081655

/-- `A181287(4*n+2)` -/
def P2989784365899263197.Spec : Prop :=
  ∀ n, P2989784365899263197.a n = A081655 n

end A081655

/-! ## A081655.P18103697850789932207

`(A199215(n)-3)/2`
-/

namespace A081655.P18103697850789932207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199215 n - 3 : ℚ) / 2

end

end A081655.P18103697850789932207

namespace A081655

/-- `(A199215(n)-3)/2` -/
def P18103697850789932207.Spec : Prop :=
  ∀ n, P18103697850789932207.a n = (A081655 n : ℚ)

theorem P18103697850789932207.correct : P18103697850789932207.Spec := by
  intro n
  simp only [A081655, Nat.add_sub_cancel, A081655.P18103697850789932207.a, A081655.P14712545280012633479.a, A199215, A199215.P11291765218038879646.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081655

/-! ## A081655.P4246799091142038685

`abs(1-A095687(n+1))`
-/

namespace A081655.P4246799091142038685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A095687 (n + 1)|

end

end A081655.P4246799091142038685

namespace A081655

/-- `abs(1-A095687(n+1))` -/
def P4246799091142038685.Spec : Prop :=
  ∀ n, P4246799091142038685.a n = A081655 n

end A081655

/-! ## A081655.P686677305758780823

`(Δ[A024050(n)]-1)/2`
-/

namespace A081655.P686677305758780823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024050 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 1 : ℚ) / 2

end

end A081655.P686677305758780823

namespace A081655

/-- `(Δ[A024050(n)]-1)/2` -/
def P686677305758780823.Spec : Prop :=
  ∀ n, P686677305758780823.a n = (A081655 n : ℚ)

theorem P686677305758780823.correct : P686677305758780823.Spec := by
  intro n
  simp only [A081655, Nat.add_sub_cancel, A081655.P686677305758780823.f1, A081655.P686677305758780823.a, A081655.P14712545280012633479.a, A024050, A024050.P1402703180244237776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081655

/-! ## A081655.P6992008766096373565

`Δ[A024050(n)-A137410(n)]`
-/

namespace A081655.P6992008766096373565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024050 n - A137410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081655.P6992008766096373565

namespace A081655

/-- `Δ[A024050(n)-A137410(n)]` -/
def P6992008766096373565.Spec : Prop :=
  ∀ n, P6992008766096373565.a n = A081655 n

end A081655

/-!
# A081656: a(n) = 2*6^n - 2^n.

The programs for A081656, the canonical program `A081656.P9561721470180942876` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081656 has offset 0).

The definition of A081656 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*6^n-2^n` (program `A081656.P9561721470180942876`, by `A081656.P9561721470180942876.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081656.P9561721470180942876

`2*6^n-2^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081656

/-- `2*6^n-2^n` -/
def P9561721470180942876.Spec : Prop :=
  ∀ n, P9561721470180942876.a n = A081656 n

theorem P9561721470180942876.correct : P9561721470180942876.Spec := by
  intro n
  simp only [A081656]

end A081656

/-! ## A081656.P713802736655048127

`ogf((1+2x)/(1-8x+12x^2))`
-/

namespace A081656.P713802736655048127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -8, 12] n

end

end A081656.P713802736655048127

namespace A081656

/-- `ogf((1+2x)/(1-8x+12x^2))` -/
def P713802736655048127.Spec : Prop :=
  ∀ n, P713802736655048127.a n = A081656 n

end A081656

/-! ## A081656.P17393930352499381780

`lcm(1-Δ[3^n], 2^n)`
-/

namespace A081656.P17393930352499381780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) (2 ^ n : ℤ)

end

end A081656.P17393930352499381780

namespace A081656

/-- `lcm(1-Δ[3^n], 2^n)` -/
def P17393930352499381780.Spec : Prop :=
  ∀ n, (P17393930352499381780.a n : ℤ) = A081656 n

end A081656

/-! ## A081656.P9426111573536879151

`2^n*A048473(n)`
-/

namespace A081656.P9426111573536879151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A048473 n

end

end A081656.P9426111573536879151

namespace A081656

/-- `2^n*A048473(n)` -/
def P9426111573536879151.Spec : Prop :=
  ∀ n, P9426111573536879151.a n = A081656 n

end A081656

/-! ## A081656.P487232261316310811

`2^n*∑[A003946(n)]`
-/

namespace A081656.P487232261316310811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081656.P487232261316310811

namespace A081656

/-- `2^n*∑[A003946(n)]` -/
def P487232261316310811.Spec : Prop :=
  ∀ n, P487232261316310811.a n = A081656 n

end A081656

/-! ## A081656.P8498747250009724347

`(A100774(n)+1)*2^n`
-/

namespace A081656.P8498747250009724347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100774 n + 1) * (2 ^ n : ℤ)

end

end A081656.P8498747250009724347

namespace A081656

/-- `(A100774(n)+1)*2^n` -/
def P8498747250009724347.Spec : Prop :=
  ∀ n, P8498747250009724347.a n = A081656 n

end A081656

/-! ## A081656.P5831442991781010022

`(A008776(n)-1)*2^n`
-/

namespace A081656.P5831442991781010022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008776 n - 1) * (2 ^ n : ℤ)

end

end A081656.P5831442991781010022

namespace A081656

/-- `(A008776(n)-1)*2^n` -/
def P5831442991781010022.Spec : Prop :=
  ∀ n, P5831442991781010022.a n = A081656 n

end A081656

/-! ## A081656.P7665399346238422636

`2^n*A154992(n+2)`
-/

namespace A081656.P7665399346238422636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A154992 (n + 2)

end

end A081656.P7665399346238422636

namespace A081656

/-- `2^n*A154992(n+2)` -/
def P7665399346238422636.Spec : Prop :=
  ∀ n, P7665399346238422636.a n = A081656 n

end A081656

/-! ## A081656.P7758916342692095878

`2^n*A062547(2*n)`
-/

namespace A081656.P7758916342692095878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A062547 (2 * n)

end

end A081656.P7758916342692095878

namespace A081656

/-- `2^n*A062547(2*n)` -/
def P7758916342692095878.Spec : Prop :=
  ∀ n, P7758916342692095878.a n = A081656 n

end A081656

/-! ## A081656.P2841196280231874688

`abs(A155597(n)+6^n-1)`
-/

namespace A081656.P2841196280231874688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155597 n + ((6 ^ n : ℤ) - 1)|

end

end A081656.P2841196280231874688

namespace A081656

/-- `abs(A155597(n)+6^n-1)` -/
def P2841196280231874688.Spec : Prop :=
  ∀ n, P2841196280231874688.a n = A081656 n

end A081656

/-! ## A081656.P4819542805368146147

`∑[A003946(n)]*A000079(n)`
-/

namespace A081656.P4819542805368146147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A081656.P4819542805368146147

namespace A081656

/-- `∑[A003946(n)]*A000079(n)` -/
def P4819542805368146147.Spec : Prop :=
  ∀ n, P4819542805368146147.a n = A081656 n

end A081656

/-! ## A081656.P16134516470811407344

`Δ[A024024(n)]*A000079(n)`
-/

namespace A081656.P16134516470811407344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A081656.P16134516470811407344

namespace A081656

/-- `Δ[A024024(n)]*A000079(n)` -/
def P16134516470811407344.Spec : Prop :=
  ∀ n, P16134516470811407344.a n = A081656 n

end A081656

/-! ## A081656.P18435081995776161905

`A000079(n)*A060647(2*n)`
-/

namespace A081656.P18435081995776161905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A060647 (2 * n)

end

end A081656.P18435081995776161905

namespace A081656

/-- `A000079(n)*A060647(2*n)` -/
def P18435081995776161905.Spec : Prop :=
  ∀ n, P18435081995776161905.a n = A081656 n

end A081656

/-! ## A081656.P12377478415278542753

`A048473(n)*A077957(2*n)`
-/

namespace A081656.P12377478415278542753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048473 n * A077957 (2 * n)

end

end A081656.P12377478415278542753

namespace A081656

/-- `A048473(n)*A077957(2*n)` -/
def P12377478415278542753.Spec : Prop :=
  ∀ n, P12377478415278542753.a n = A081656 n

end A081656

/-! ## A081656.P3605596213695681564

`A048473(n)*A143095(2*n)`
-/

namespace A081656.P3605596213695681564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048473 n * A143095 (2 * n)

end

end A081656.P3605596213695681564

namespace A081656

/-- `A048473(n)*A143095(2*n)` -/
def P3605596213695681564.Spec : Prop :=
  ∀ n, P3605596213695681564.a n = A081656 n

end A081656

/-! ## A081656.P7447150188355637524

`(A132308(n)+n)*A000079(n)`
-/

namespace A081656.P7447150188355637524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132308 n + (n : ℤ)) * A000079 n

end

end A081656.P7447150188355637524

namespace A081656

/-- `(A132308(n)+n)*A000079(n)` -/
def P7447150188355637524.Spec : Prop :=
  ∀ n, P7447150188355637524.a n = A081656 n

end A081656

/-! ## A081656.P4777994572079751241

`Δ[A000225(n)]*Δ[A024024(n)]`
-/

namespace A081656.P4777994572079751241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A081656.P4777994572079751241

namespace A081656

/-- `Δ[A000225(n)]*Δ[A024024(n)]` -/
def P4777994572079751241.Spec : Prop :=
  ∀ n, P4777994572079751241.a n = A081656 n

end A081656

/-! ## A081656.P18150360220929144364

`A000079(n)*A023745(∑[n+2])`
-/

namespace A081656.P18150360220929144364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A023745 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081656.P18150360220929144364

namespace A081656

/-- `A000079(n)*A023745(∑[n+2])` -/
def P18150360220929144364.Spec : Prop :=
  ∀ n, P18150360220929144364.a n = A081656 n

end A081656

/-! ## A081656.P8517685717251012797

`(Δ[A000244(n)]-1)*A000079(n)`
-/

namespace A081656.P8517685717251012797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 1) * A000079 n

end

end A081656.P8517685717251012797

namespace A081656

/-- `(Δ[A000244(n)]-1)*A000079(n)` -/
def P8517685717251012797.Spec : Prop :=
  ∀ n, P8517685717251012797.a n = A081656 n

end A081656

/-! ## A081656.P93338075275069407

`(Δ[A024023(n)]-1)*A000079(n)`
-/

namespace A081656.P93338075275069407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 1) * A000079 n

end

end A081656.P93338075275069407

namespace A081656

/-- `(Δ[A024023(n)]-1)*A000079(n)` -/
def P93338075275069407.Spec : Prop :=
  ∀ n, P93338075275069407.a n = A081656 n

end A081656

/-!
# A081657: a(n) = 2*7^n-3^n.

The programs for A081657, the canonical program `A081657.P11449257467338019090` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081657 has offset 0).

The definition of A081657 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*7^n-3^n` (program `A081657.P11449257467338019090`, by `A081657.P11449257467338019090.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081657.P11449257467338019090

`2*7^n-3^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081657

/-- `2*7^n-3^n` -/
def P11449257467338019090.Spec : Prop :=
  ∀ n, P11449257467338019090.a n = A081657 n

theorem P11449257467338019090.correct : P11449257467338019090.Spec := by
  intro n
  simp only [A081657]

end A081657

/-! ## A081657.P13394878288129560542

`ogf((1+x)/(1-10x+21x^2))`
-/

namespace A081657.P13394878288129560542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -10, 21] n

end

end A081657.P13394878288129560542

namespace A081657

/-- `ogf((1+x)/(1-10x+21x^2))` -/
def P13394878288129560542.Spec : Prop :=
  ∀ n, P13394878288129560542.a n = A081657 n

end A081657

/-! ## A081657.P9140830986975106005

`ceil(10*a(n-1)-21*a(n-2))` with `a(0)=1, a(1)=11`

`ceil` is left out, it is the identity on integers.
-/

namespace A081657.P9140830986975106005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  10 * a (n - 1) - 21 * a (n - 2)

end

end A081657.P9140830986975106005

namespace A081657

/-- `ceil(10*a(n-1)-21*a(n-2))` -/
def P9140830986975106005.Spec : Prop :=
  ∀ n, P9140830986975106005.a n = A081657 n

theorem P9140830986975106005.correct : P9140830986975106005.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081657, Nat.add_sub_cancel, A081657.P9140830986975106005.a, A081657.P11449257467338019090.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081657, Nat.add_sub_cancel, A081657.P9140830986975106005.a, A081657.P11449257467338019090.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081657

/-! ## A081657.P12678598109519085917

`Δ[A109020(n)]`
-/

namespace A081657.P12678598109519085917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081657.P12678598109519085917

namespace A081657

/-- `Δ[A109020(n)]` -/
def P12678598109519085917.Spec : Prop :=
  ∀ n, P12678598109519085917.a n = A081657 n

end A081657

/-! ## A081657.P13471093119697384076

`Δ[floor(7^n/3)-A003462(n)]`
-/

namespace A081657.P13471093119697384076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 ^ n : ℚ) / 3⌋ - A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081657.P13471093119697384076

namespace A081657

/-- `Δ[floor(7^n/3)-A003462(n)]` -/
def P13471093119697384076.Spec : Prop :=
  ∀ n, P13471093119697384076.a n = A081657 n

end A081657

/-! ## A081657.P8168178003989362475

`abs(A135161(n)+2^n+5^n+7^n)`
-/

namespace A081657.P8168178003989362475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135161 n + (2 ^ n + (5 ^ n + 7 ^ n) : ℤ)|

end

end A081657.P8168178003989362475

namespace A081657

/-- `abs(A135161(n)+2^n+5^n+7^n)` -/
def P8168178003989362475.Spec : Prop :=
  ∀ n, P8168178003989362475.a n = A081657 n

end A081657

/-! ## A081657.P5168437406830807660

`or(1, A190541(n)+A000420(n))`
-/

namespace A081657.P5168437406830807660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A190541 n + A000420 n)

end

end A081657.P5168437406830807660

namespace A081657

/-- `or(1, A190541(n)+A000420(n))` -/
def P5168437406830807660.Spec : Prop :=
  ∀ n, P5168437406830807660.a n = A081657 n

end A081657

/-! ## A081657.P3809543157248969256

`abs(A109808(n+1)-A000244(n))`
-/

namespace A081657.P3809543157248969256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109808 (n + 1) - A000244 n|

end

end A081657.P3809543157248969256

namespace A081657

/-- `abs(A109808(n+1)-A000244(n))` -/
def P3809543157248969256.Spec : Prop :=
  ∀ n, P3809543157248969256.a n = A081657 n

end A081657

/-! ## A081657.P5360685916942180351

`Δ[A125725(n+1)-A007051(n)]`
-/

namespace A081657.P5360685916942180351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125725 (n + 1) - A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081657.P5360685916942180351

namespace A081657

/-- `Δ[A125725(n+1)-A007051(n)]` -/
def P5360685916942180351.Spec : Prop :=
  ∀ n, P5360685916942180351.a n = A081657 n

end A081657

/-! ## A081657.P17742679104404776688

`∑[2*A055272(n)-A025192(n)]`
-/

namespace A081657.P17742679104404776688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055272 n - A025192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081657.P17742679104404776688

namespace A081657

/-- `∑[2*A055272(n)-A025192(n)]` -/
def P17742679104404776688.Spec : Prop :=
  ∀ n, P17742679104404776688.a n = A081657 n

end A081657

/-!
# A081658: Triangle read by rows: T(n, k) = (-2)^k*binomial(n, k)*Euler(k, 1/2).

The programs for A081658, there is no canonical definition to state claims against.
-/

/-! ## A081658.P12482686898529645948

`A119879(∑[2*n]%comp[∑[n]])`
-/

namespace A081658.P12482686898529645948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119879 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A081658.P12482686898529645948

/-! ## A081658.P16485077745922206

`A119879(∑[char[∑[n]]]²-(n+1))`
-/

namespace A081658.P16485077745922206
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119879 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A081658.P16485077745922206

/-! ## A081658.P2501325137810688820

`xor(2, xor(2, A119879(A061579(n))))`
-/

namespace A081658.P2501325137810688820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.xor 2 (A119879 (A061579 n).toNat))

end

end A081658.P2501325137810688820

/-! ## A081658.P2515404804826422563

`A007318(n)*A122045(A002262(n))`
-/

namespace A081658.P2515404804826422563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A122045 (A002262 n).toNat

end

end A081658.P2515404804826422563

/-! ## A081658.P9309125669001185971

`or(A010054(n), A119879(A061579(n)))`
-/

namespace A081658.P9309125669001185971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A119879 (A061579 n).toNat)

end

end A081658.P9309125669001185971

/-! ## A081658.P5413012853997194276

`A027642(2*n+3)*A119879(A061579(n))`
-/

namespace A081658.P5413012853997194276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (2 * n + 3) * A119879 (A061579 n).toNat

end

end A081658.P5413012853997194276

/-! ## A081658.P11869921368899815585

`A363394(n)*A376583(n+1)`
-/

namespace A081658.P11869921368899815585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363394 n * A376583 (n + 1)

end

end A081658.P11869921368899815585

/-!
# A081659: a(n) = n + Fibonacci(n+1).

The programs for A081659, the canonical program `A081659.P16965953501998289372` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081659 has offset 0).

The definition of A081659 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081659.P16965953501998289372

`a(n-1)+a(n-2)-(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081659

/-- `a(n-1)+a(n-2)-(n-3)` -/
def P16965953501998289372.Spec : Prop :=
  ∀ n, P16965953501998289372.a n = A081659 n

theorem P16965953501998289372.correct : P16965953501998289372.Spec := by
  intro n
  simp only [A081659]

end A081659

/-! ## A081659.P9329235000308263196

`1+a(n-1)+A000045(n-1)` with `a(0)=1`
-/

namespace A081659.P9329235000308263196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 + (a (n - 1) + A000045 (n - 1))

end

end A081659.P9329235000308263196

namespace A081659

/-- `1+a(n-1)+A000045(n-1)` -/
def P9329235000308263196.Spec : Prop :=
  ∀ n, P9329235000308263196.a n = A081659 n

end A081659

/-! ## A081659.P5112876699603698274

`(sqrt(5)*(1+sqrt(5))^(n+1)-sqrt(5)*(1-sqrt(5))^(n+1))/(10*2^n)+n`
-/

namespace A081659.P5112876699603698274
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (5 : ℝ) * (1 + Real.sqrt (5 : ℝ)) ^ (n + 1) - Real.sqrt (5 : ℝ) * (1 - Real.sqrt (5 : ℝ)) ^ (n + 1)) / (10 * 2 ^ n : ℝ) + (n : ℝ)

end

end A081659.P5112876699603698274

namespace A081659

/-- `(sqrt(5)*(1+sqrt(5))^(n+1)-sqrt(5)*(1-sqrt(5))^(n+1))/(10*2^n)+n` -/
def P5112876699603698274.Spec : Prop :=
  ∀ n, P5112876699603698274.a n = (A081659 n : ℝ)

theorem P5112876699603698274.correct : P5112876699603698274.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A081659, Nat.add_sub_cancel, A081659.P5112876699603698274.a, A081659.P16965953501998289372.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      simp only [A081659, Nat.add_sub_cancel, A081659.P5112876699603698274.a, A081659.P16965953501998289372.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A081659

/-! ## A081659.P8743373000532621667

`ogf((1-x-x^3)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A081659.P8743373000532621667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, -1] [1, -3, 2, 1, -1] n

end

end A081659.P8743373000532621667

namespace A081659

/-- `ogf((1-x-x^3)/(1-3x+2x^2+x^3-x^4))` -/
def P8743373000532621667.Spec : Prop :=
  ∀ n, P8743373000532621667.a n = A081659 n

end A081659

/-! ## A081659.P17169746922136020767

`∑[floor(ϕ*a(n-1))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A081659.P17169746922136020767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081659.P17169746922136020767

namespace A081659

/-- `∑[floor(ϕ*a(n-1))]` -/
def P17169746922136020767.Spec : Prop :=
  ∀ n, P17169746922136020767.a n = A081659 n

end A081659

/-! ## A081659.P6221753483744177086

`∑[a(n-1)-(1-a(n-2))]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A081659.P6221753483744177086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081659.P6221753483744177086

namespace A081659

/-- `∑[a(n-1)-(1-a(n-2))]` -/
def P6221753483744177086.Spec : Prop :=
  ∀ n, P6221753483744177086.a n = A081659 n

end A081659

/-! ## A081659.P13815840754322308658

`A284122(n+2)/2`
-/

namespace A081659.P13815840754322308658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284122 (n + 2) : ℚ) / 2

end

end A081659.P13815840754322308658

namespace A081659

/-- `A284122(n+2)/2` -/
def P13815840754322308658.Spec : Prop :=
  ∀ n, P13815840754322308658.a n = (A081659 n : ℚ)

end A081659

/-! ## A081659.P18052452923288005687

`A033818(n+1)%A020695(n)`
-/

namespace A081659.P18052452923288005687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033818 (n + 1)) (A020695 n)

end

end A081659.P18052452923288005687

namespace A081659

/-- `A033818(n+1)%A020695(n)` -/
def P18052452923288005687.Spec : Prop :=
  ∀ n, P18052452923288005687.a n = A081659 n

end A081659

/-! ## A081659.P13960425469059335719

`A132919(∑[n+1])`
-/

namespace A081659.P13960425469059335719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132919 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081659.P13960425469059335719

namespace A081659

/-- `A132919(∑[n+1])` -/
def P13960425469059335719.Spec : Prop :=
  ∀ n, P13960425469059335719.a n = A081659 n

end A081659

/-! ## A081659.P6917792814375117030

`A132921(∑[n+1])`
-/

namespace A081659.P6917792814375117030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132921 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081659.P6917792814375117030

namespace A081659

/-- `A132921(∑[n+1])` -/
def P6917792814375117030.Spec : Prop :=
  ∀ n, P6917792814375117030.a n = A081659 n

end A081659

/-!
# A081660: n+A001045(n+1).

The programs for A081660, the canonical program `A081660.P3609957473961011549` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081660 has offset 0).

The definition of A081660 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+A001045(n+1)` (program `A081660.P3609957473961011549`, by `A081660.P3609957473961011549.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081660.P3609957473961011549

`n+A001045(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081660

/-- `n+A001045(n+1)` -/
def P3609957473961011549.Spec : Prop :=
  ∀ n, P3609957473961011549.a n = A081660 n

theorem P3609957473961011549.correct : P3609957473961011549.Spec := by
  intro n
  simp only [A081660]

end A081660

/-! ## A081660.P11942497376474237211

`2^(n+1)/3+n+(-1)^n/3`
-/

namespace A081660.P11942497376474237211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℚ) / 3 + (n : ℚ) + ((-1) ^ n : ℚ) / 3

end

end A081660.P11942497376474237211

namespace A081660

/-- `2^(n+1)/3+n+(-1)^n/3` -/
def P11942497376474237211.Spec : Prop :=
  ∀ n, P11942497376474237211.a n = (A081660 n : ℚ)

end A081660

/-! ## A081660.P2195567499606846593

`ogf((1-x-2x^3)/(1-3x+x^2+3x^3-2x^4))`
-/

namespace A081660.P2195567499606846593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, -2] [1, -3, 1, 3, -2] n

end

end A081660.P2195567499606846593

namespace A081660

/-- `ogf((1-x-2x^3)/(1-3x+x^2+3x^3-2x^4))` -/
def P2195567499606846593.Spec : Prop :=
  ∀ n, P2195567499606846593.a n = A081660 n

end A081660

/-! ## A081660.P485045151115503728

`xor(1, 2*a(n-1)-(n-2))` with `a(0)=1`
-/

namespace A081660.P485045151115503728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (2 * a (n - 1) - ((n : ℤ) - 2))

end

end A081660.P485045151115503728

namespace A081660

/-- `xor(1, 2*a(n-1)-(n-2))` -/
def P485045151115503728.Spec : Prop :=
  ∀ n, P485045151115503728.a n = A081660 n

end A081660

/-! ## A081660.P12440526440962435625

`∑[or(1, A005578(n))]`
-/

namespace A081660.P12440526440962435625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005578 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081660.P12440526440962435625

namespace A081660

/-- `∑[or(1, A005578(n))]` -/
def P12440526440962435625.Spec : Prop :=
  ∀ n, P12440526440962435625.a n = A081660 n

end A081660

/-! ## A081660.P15878592968263056788

`∑[or(1, A078008(n))]`
-/

namespace A081660.P15878592968263056788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A078008 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081660.P15878592968263056788

namespace A081660

/-- `∑[or(1, A078008(n))]` -/
def P15878592968263056788.Spec : Prop :=
  ∀ n, P15878592968263056788.a n = A081660 n

end A081660

/-! ## A081660.P14427516125373573219

`xor(1, A014113(n)+n)`
-/

namespace A081660.P14427516125373573219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A014113 n + (n : ℤ))

end

end A081660.P14427516125373573219

namespace A081660

/-- `xor(1, A014113(n)+n)` -/
def P14427516125373573219.Spec : Prop :=
  ∀ n, P14427516125373573219.a n = A081660 n

end A081660

/-! ## A081660.P3814730909084917729

`record[∑[A077886(n+1)]]`
-/

namespace A081660.P3814730909084917729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077886 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081660.P3814730909084917729

namespace A081660

/-- `record[∑[A077886(n+1)]]` -/
def P3814730909084917729.Spec : Prop :=
  ∀ n, P3814730909084917729.a n = A081660 n

end A081660

/-! ## A081660.P16037502329989171158

`∑[A378105(n+1)-1]`
-/

namespace A081660.P16037502329989171158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378105 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081660.P16037502329989171158

namespace A081660

/-- `∑[A378105(n+1)-1]` -/
def P16037502329989171158.Spec : Prop :=
  ∀ n, P16037502329989171158.a n = A081660 n

end A081660

/-! ## A081660.P7655831943994423822

`∑[or(1, A153772(n)+2)]`
-/

namespace A081660.P7655831943994423822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A153772 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081660.P7655831943994423822

namespace A081660

/-- `∑[or(1, A153772(n)+2)]` -/
def P7655831943994423822.Spec : Prop :=
  ∀ n, P7655831943994423822.a n = A081660 n

end A081660

/-! ## A081660.P1487468767212022192

`xor(1, A078008(n+1)+n)`
-/

namespace A081660.P1487468767212022192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A078008 (n + 1) + (n : ℤ))

end

end A081660.P1487468767212022192

namespace A081660

/-- `xor(1, A078008(n+1)+n)` -/
def P1487468767212022192.Spec : Prop :=
  ∀ n, P1487468767212022192.a n = A081660 n

end A081660

/-! ## A081660.P14265696048830320824

`xor(1, A230096(2*(n+1))+n)`
-/

namespace A081660.P14265696048830320824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A230096 (2 * (n + 1)) + (n : ℤ))

end

end A081660.P14265696048830320824

namespace A081660

/-- `xor(1, A230096(2*(n+1))+n)` -/
def P14265696048830320824.Spec : Prop :=
  ∀ n, P14265696048830320824.a n = A081660 n

end A081660

/-! ## A081660.P239556718723083932

`(2^n+2*a(n-2)+4)/2` with `a(0)=1, a(1)=2`
-/

namespace A081660.P239556718723083932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((2 ^ n : ℚ) + 2 * a (n - 2) + 4) / 2

end

end A081660.P239556718723083932

namespace A081660

/-- `(2^n+2*a(n-2)+4)/2` -/
def P239556718723083932.Spec : Prop :=
  ∀ n, P239556718723083932.a n = (A081660 n : ℚ)

end A081660

/-!
# A081661: Partial sums of A081660.

The programs for A081661, the canonical program `A081661.P12475161129001527890` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081661 has offset 0).

The definition of A081661 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081661.P12475161129001527890

`2^(n+2)/3+(n²+n-1)/2+(-1)^n/6`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081661

/-- `2^(n+2)/3+(n²+n-1)/2+(-1)^n/6` -/
def P12475161129001527890.Spec : Prop :=
  ∀ n, P12475161129001527890.a n = (A081661 n : ℚ)

end A081661

/-! ## A081661.P17549863110943984671

`∑[A081660(n)]`
-/

namespace A081661.P17549863110943984671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081661.P17549863110943984671

namespace A081661

/-- `∑[A081660(n)]` -/
def P17549863110943984671.Spec : Prop :=
  ∀ n, P17549863110943984671.a n = A081661 n

end A081661

/-! ## A081661.P17359570528762364048

`∑[A001045(n+1)+n]`
-/

namespace A081661.P17359570528762364048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081661.P17359570528762364048

namespace A081661

/-- `∑[A001045(n+1)+n]` -/
def P17359570528762364048.Spec : Prop :=
  ∀ n, P17359570528762364048.a n = A081661 n

end A081661

/-! ## A081661.P14396074034237903147

`∑[A152046(n+1)+n]`
-/

namespace A081661.P14396074034237903147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081661.P14396074034237903147

namespace A081661

/-- `∑[A152046(n+1)+n]` -/
def P14396074034237903147.Spec : Prop :=
  ∀ n, P14396074034237903147.a n = A081661 n

end A081661

/-! ## A081661.P8394529439912944836

`∑[A167167(n+1)+n]`
-/

namespace A081661.P8394529439912944836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167167 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081661.P8394529439912944836

namespace A081661

/-- `∑[A167167(n+1)+n]` -/
def P8394529439912944836.Spec : Prop :=
  ∀ n, P8394529439912944836.a n = A081661 n

end A081661

/-! ## A081661.P8521261027119454633

`∑[A167030(n+1)+n+1]`
-/

namespace A081661.P8521261027119454633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167030 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081661.P8521261027119454633

namespace A081661

/-- `∑[A167030(n+1)+n+1]` -/
def P8521261027119454633.Spec : Prop :=
  ∀ n, P8521261027119454633.a n = A081661 n

end A081661

/-!
# A081662: Partial sums of n + Fibonacci(n+1).

The programs for A081662, the canonical program `A081662.P4520606281100689105` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081662 has offset 0).

The definition of A081662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081662.P4520606281100689105

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=13, a(4)=22`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081662

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P4520606281100689105.Spec : Prop :=
  ∀ n, P4520606281100689105.a n = A081662 n

theorem P4520606281100689105.correct : P4520606281100689105.Spec := by
  intro n
  simp only [A081662]

end A081662

/-! ## A081662.P1811661869118775862

`∑[Δ[floor(ϕ*a(n-1))]+n]` with `a(0)=2`
-/

namespace A081662.P1811661869118775862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  ⌊Real.goldenRatio * (f2 (n - 1) : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081662.P1811661869118775862

namespace A081662

/-- `∑[Δ[floor(ϕ*a(n-1))]+n]` -/
def P1811661869118775862.Spec : Prop :=
  ∀ n, P1811661869118775862.a n = A081662 n

end A081662

/-! ## A081662.P8879303700917277789

`∑[ogf((1-x-x^3)/(1-3x+2x^2+x^3-x^4))]`
-/

namespace A081662.P8879303700917277789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, -1] [1, -3, 2, 1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081662.P8879303700917277789

namespace A081662

/-- `∑[ogf((1-x-x^3)/(1-3x+2x^2+x^3-x^4))]` -/
def P8879303700917277789.Spec : Prop :=
  ∀ n, P8879303700917277789.a n = A081662 n

end A081662

/-! ## A081662.P13267258726592434807

`∑[∑[a(n-1)+a(n-2)]+n]` with `a(0)=1, a(1)=0`
-/

namespace A081662.P13267258726592434807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081662.P13267258726592434807

namespace A081662

/-- `∑[∑[a(n-1)+a(n-2)]+n]` -/
def P13267258726592434807.Spec : Prop :=
  ∀ n, (P13267258726592434807.a n : ℤ) = A081662 n

end A081662

/-! ## A081662.P11278668178237368375

`∑[∑[a(n-1)-(1-a(n-2))]]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A081662.P11278668178237368375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f2 =>
  f2 (n - 1) - (1 - f2 (n - 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081662.P11278668178237368375

namespace A081662

/-- `∑[∑[a(n-1)-(1-a(n-2))]]` -/
def P11278668178237368375.Spec : Prop :=
  ∀ n, P11278668178237368375.a n = A081662 n

end A081662

/-! ## A081662.P13039216983954623160

`∑[A081659(n)]`
-/

namespace A081662.P13039216983954623160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081662.P13039216983954623160

namespace A081662

/-- `∑[A081659(n)]` -/
def P13039216983954623160.Spec : Prop :=
  ∀ n, P13039216983954623160.a n = A081662 n

end A081662

/-! ## A081662.P9456547735450850506

`∑[∑[A212804(n)]+n]`
-/

namespace A081662.P9456547735450850506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081662.P9456547735450850506

namespace A081662

/-- `∑[∑[A212804(n)]+n]` -/
def P9456547735450850506.Spec : Prop :=
  ∀ n, P9456547735450850506.a n = A081662 n

end A081662

/-! ## A081662.P17078136822687838582

`∑[A002062(n+1)-1]`
-/

namespace A081662.P17078136822687838582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081662.P17078136822687838582

namespace A081662

/-- `∑[A002062(n+1)-1]` -/
def P17078136822687838582.Spec : Prop :=
  ∀ n, P17078136822687838582.a n = A081662 n

end A081662

/-! ## A081662.P4944642780182635812

`∑[A284122(n+2)/2]`
-/

namespace A081662.P4944642780182635812
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284122 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081662.P4944642780182635812

namespace A081662

/-- `∑[A284122(n+2)/2]` -/
def P4944642780182635812.Spec : Prop :=
  ∀ n, P4944642780182635812.a n = (A081662 n : ℚ)

end A081662

/-! ## A081662.P9474314248037779273

`∑[A000045(n+1)+n]`
-/

namespace A081662.P9474314248037779273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081662.P9474314248037779273

namespace A081662

/-- `∑[A000045(n+1)+n]` -/
def P9474314248037779273.Spec : Prop :=
  ∀ n, P9474314248037779273.a n = A081662 n

end A081662

/-! ## A081662.P5903513219054549812

`∑[n]+A001911(n)+1`
-/

namespace A081662.P5903513219054549812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A001911 n + 1)

end

end A081662.P5903513219054549812

namespace A081662

/-- `∑[n]+A001911(n)+1` -/
def P5903513219054549812.Spec : Prop :=
  ∀ n, P5903513219054549812.a n = A081662 n

end A081662

/-! ## A081662.P8097593942088803663

`∑[n]+A020695(n)-1`
-/

namespace A081662.P8097593942088803663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A020695 n - 1)

end

end A081662.P8097593942088803663

namespace A081662

/-- `∑[n]+A020695(n)-1` -/
def P8097593942088803663.Spec : Prop :=
  ∀ n, P8097593942088803663.a n = A081662 n

end A081662

/-! ## A081662.P109785939749456323

`∑[A129728(n+1)-n]`
-/

namespace A081662.P109785939749456323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129728 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081662.P109785939749456323

namespace A081662

/-- `∑[A129728(n+1)-n]` -/
def P109785939749456323.Spec : Prop :=
  ∀ n, P109785939749456323.a n = A081662 n

end A081662

/-! ## A081662.P13515209248504764737

`A132922(n+1)-∑[n]`
-/

namespace A081662.P13515209248504764737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132922 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A081662.P13515209248504764737

namespace A081662

/-- `A132922(n+1)-∑[n]` -/
def P13515209248504764737.Spec : Prop :=
  ∀ n, P13515209248504764737.a n = A081662 n

end A081662

/-! ## A081662.P5665157069149259603

`∑[A324969(n+2)+n]`
-/

namespace A081662.P5665157069149259603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081662.P5665157069149259603

namespace A081662

/-- `∑[A324969(n+2)+n]` -/
def P5665157069149259603.Spec : Prop :=
  ∀ n, P5665157069149259603.a n = A081662 n

end A081662

/-! ## A081662.P6768257861149124029

`A000071(n+3)+∑[n]`
-/

namespace A081662.P6768257861149124029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A081662.P6768257861149124029

namespace A081662

/-- `A000071(n+3)+∑[n]` -/
def P6768257861149124029.Spec : Prop :=
  ∀ n, P6768257861149124029.a n = A081662 n

end A081662

/-! ## A081662.P9954940561249091616

`∑[n]+A048577(n)-2`
-/

namespace A081662.P9954940561249091616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A048577 n - 2)

end

end A081662.P9954940561249091616

namespace A081662

/-- `∑[n]+A048577(n)-2` -/
def P9954940561249091616.Spec : Prop :=
  ∀ n, P9954940561249091616.a n = A081662 n

end A081662

/-! ## A081662.P1935329235216685172

`∑[A079977(2*n)+n]`
-/

namespace A081662.P1935329235216685172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (2 * n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081662.P1935329235216685172

namespace A081662

/-- `∑[A079977(2*n)+n]` -/
def P1935329235216685172.Spec : Prop :=
  ∀ n, P1935329235216685172.a n = A081662 n

end A081662

/-! ## A081662.P12578567412451300328

`A226538(2*n)+∑[n]`
-/

namespace A081662.P12578567412451300328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226538 (2 * n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A081662.P12578567412451300328

namespace A081662

/-- `A226538(2*n)+∑[n]` -/
def P12578567412451300328.Spec : Prop :=
  ∀ n, P12578567412451300328.a n = A081662 n

end A081662

/-! ## A081662.P293751097532222598

`∑[A123231(2*n+1)+n]`
-/

namespace A081662.P293751097532222598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (2 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081662.P293751097532222598

namespace A081662

/-- `∑[A123231(2*n+1)+n]` -/
def P293751097532222598.Spec : Prop :=
  ∀ n, P293751097532222598.a n = A081662 n

end A081662

/-!
# A081663: a(n) = Fibonacci(2n+1) + n*2^(n-1).

The programs for A081663, the canonical program `A081663.P6028531516058457443` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081663 has offset 0).

The definition of A081663 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081663.P6028531516058457443

`7*a(n-1)-17*a(n-2)+16*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=25`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081663

/-- `7*a(n-1)-17*a(n-2)+16*a(n-3)-4*a(n-4)` -/
def P6028531516058457443.Spec : Prop :=
  ∀ n, P6028531516058457443.a n = A081663 n

theorem P6028531516058457443.correct : P6028531516058457443.Spec := by
  intro n
  simp only [A081663]

end A081663

/-! ## A081663.P1603002100999041302

`A000045(Δ[n²])+n*2^(n-1)`
-/

namespace A081663.P1603002100999041302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) + (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A081663.P1603002100999041302

namespace A081663

/-- `A000045(Δ[n²])+n*2^(n-1)` -/
def P1603002100999041302.Spec : Prop :=
  ∀ n, P1603002100999041302.a n = (A081663 n : ℚ)

end A081663

/-! ## A081663.P3688005763588906274

`Δ[A000045(2*n)]+n*2^(n-1)`
-/

namespace A081663.P3688005763588906274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A081663.P3688005763588906274

namespace A081663

/-- `Δ[A000045(2*n)]+n*2^(n-1)` -/
def P3688005763588906274.Spec : Prop :=
  ∀ n, P3688005763588906274.a n = (A081663 n : ℚ)

end A081663

/-! ## A081663.P17794420174175748344

`A027941(n)+A005183(n)`
-/

namespace A081663.P17794420174175748344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 n + A005183 n

end

end A081663.P17794420174175748344

namespace A081663

/-- `A027941(n)+A005183(n)` -/
def P17794420174175748344.Spec : Prop :=
  ∀ n, P17794420174175748344.a n = A081663 n

end A081663

/-! ## A081663.P14206959339949128509

`A122367(n)+A001787(n)`
-/

namespace A081663.P14206959339949128509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n + A001787 n

end

end A081663.P14206959339949128509

namespace A081663

/-- `A122367(n)+A001787(n)` -/
def P14206959339949128509.Spec : Prop :=
  ∀ n, P14206959339949128509.a n = A081663 n

end A081663

/-! ## A081663.P12243571725700451180

`A001787(n)+Δ[A001906(n)]`
-/

namespace A081663.P12243571725700451180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + (f1 (n + 1) - f1 n)

end

end A081663.P12243571725700451180

namespace A081663

/-- `A001787(n)+Δ[A001906(n)]` -/
def P12243571725700451180.Spec : Prop :=
  ∀ n, P12243571725700451180.a n = A081663 n

end A081663

/-! ## A081663.P7886133306170416478

`A001787(n)+A001519(n+1)`
-/

namespace A081663.P7886133306170416478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + A001519 (n + 1)

end

end A081663.P7886133306170416478

namespace A081663

/-- `A001787(n)+A001519(n+1)` -/
def P7886133306170416478.Spec : Prop :=
  ∀ n, P7886133306170416478.a n = A081663 n

end A081663

/-! ## A081663.P690460646555931670

`A139756(n+1)+A122367(n)`
-/

namespace A081663.P690460646555931670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (n + 1) + A122367 n

end

end A081663.P690460646555931670

namespace A081663

/-- `A139756(n+1)+A122367(n)` -/
def P690460646555931670.Spec : Prop :=
  ∀ n, P690460646555931670.a n = A081663 n

end A081663

/-! ## A081663.P8664517497215101429

`A122367(n)+n*A011782(n)`
-/

namespace A081663.P8664517497215101429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n + (n : ℤ) * A011782 n

end

end A081663.P8664517497215101429

namespace A081663

/-- `A122367(n)+n*A011782(n)` -/
def P8664517497215101429.Spec : Prop :=
  ∀ n, P8664517497215101429.a n = A081663 n

end A081663

/-! ## A081663.P394954831961774017

`A001787(n)+A000045(Δ[n²])`
-/

namespace A081663.P394954831961774017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081663.P394954831961774017

namespace A081663

/-- `A001787(n)+A000045(Δ[n²])` -/
def P394954831961774017.Spec : Prop :=
  ∀ n, P394954831961774017.a n = A081663 n

end A081663

/-! ## A081663.P4461706113308673397

`A139756(n+1)+Δ[A001906(n)]`
-/

namespace A081663.P4461706113308673397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (n + 1) + (f1 (n + 1) - f1 n)

end

end A081663.P4461706113308673397

namespace A081663

/-- `A139756(n+1)+Δ[A001906(n)]` -/
def P4461706113308673397.Spec : Prop :=
  ∀ n, P4461706113308673397.a n = A081663 n

end A081663

/-! ## A081663.P10510060719324417905

`A001787(n)+Δ[A000045(2*n)]`
-/

namespace A081663.P10510060719324417905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + (f1 (n + 1) - f1 n)

end

end A081663.P10510060719324417905

namespace A081663

/-- `A001787(n)+Δ[A000045(2*n)]` -/
def P10510060719324417905.Spec : Prop :=
  ∀ n, P10510060719324417905.a n = A081663 n

end A081663

/-! ## A081663.P8655980787090433366

`A139756(n+1)+A000045(Δ[n²])`
-/

namespace A081663.P8655980787090433366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (n + 1) + A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081663.P8655980787090433366

namespace A081663

/-- `A139756(n+1)+A000045(Δ[n²])` -/
def P8655980787090433366.Spec : Prop :=
  ∀ n, P8655980787090433366.a n = A081663 n

end A081663

/-! ## A081663.P14810676679833032758

`A139756(n+1)+Δ[A000045(2*n)]`
-/

namespace A081663.P14810676679833032758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (n + 1) + (f1 (n + 1) - f1 n)

end

end A081663.P14810676679833032758

namespace A081663

/-- `A139756(n+1)+Δ[A000045(2*n)]` -/
def P14810676679833032758.Spec : Prop :=
  ∀ n, P14810676679833032758.a n = A081663 n

end A081663

/-! ## A081663.P10525809624587554719

`A001519(n+1)+n*A166444(n+1)`
-/

namespace A081663.P10525809624587554719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) + (n : ℤ) * A166444 (n + 1)

end

end A081663.P10525809624587554719

namespace A081663

/-- `A001519(n+1)+n*A166444(n+1)` -/
def P10525809624587554719.Spec : Prop :=
  ∀ n, P10525809624587554719.a n = A081663 n

end A081663

/-! ## A081663.P8754669657765104196

`A115008(2*n)+n*A166444(n+1)`
-/

namespace A081663.P8754669657765104196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115008 (2 * n) + (n : ℤ) * A166444 (n + 1)

end

end A081663.P8754669657765104196

namespace A081663

/-- `A115008(2*n)+n*A166444(n+1)` -/
def P8754669657765104196.Spec : Prop :=
  ∀ n, P8754669657765104196.a n = A081663 n

end A081663

/-! ## A081663.P13284417305680522295

`A324969(2*(n+1))+n*A034008(n+1)`
-/

namespace A081663.P13284417305680522295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (2 * (n + 1)) + (n : ℤ) * A034008 (n + 1)

end

end A081663.P13284417305680522295

namespace A081663

/-- `A324969(2*(n+1))+n*A034008(n+1)` -/
def P13284417305680522295.Spec : Prop :=
  ∀ n, P13284417305680522295.a n = A081663 n

end A081663

/-! ## A081663.P4338162766655992162

`A007598(n+1)+A007598(n)+A001787(n)`
-/

namespace A081663.P4338162766655992162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (n + 1) + (A007598 n + A001787 n)

end

end A081663.P4338162766655992162

namespace A081663

/-- `A007598(n+1)+A007598(n)+A001787(n)` -/
def P4338162766655992162.Spec : Prop :=
  ∀ n, P4338162766655992162.a n = A081663 n

end A081663

/-! ## A081663.P10450040443201549116

`A001906(n+1)+A001787(n)-A001906(n)`
-/

namespace A081663.P10450040443201549116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) + (A001787 n - A001906 n)

end

end A081663.P10450040443201549116

namespace A081663

/-- `A001906(n+1)+A001787(n)-A001906(n)` -/
def P10450040443201549116.Spec : Prop :=
  ∀ n, P10450040443201549116.a n = A081663 n

end A081663

/-!
# A081664: For the smallest q for which there exists a fraction p/q containing n in its decimal expansion, this sequence gives the smallest p.

The programs for A081664, there is no canonical definition to state claims against.
-/

/-! ## A081664.P1379437915735493502

`A028310(and(A002231(n+1), A224926(n+1)))`
-/

namespace A081664.P1379437915735493502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.land (A002231 (n + 1)) (A224926 (n + 1))).toNat

end

end A081664.P1379437915735493502

/-! ## A081664.P11594627974742816460

`gcd(A224926(n+1), A224933(A090182(n)))`
-/

namespace A081664.P11594627974742816460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A224926 (n + 1)) (A224933 (A090182 n).toNat)

end

end A081664.P11594627974742816460

/-! ## A081664.P10588754696407965655

`and(record[A224905(2*n+1)], A224926(n+1))`
-/

namespace A081664.P10588754696407965655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224905 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A224926 (n + 1))

end

end A081664.P10588754696407965655

/-! ## A081664.P10699848913264118773

`A224926(∑[A006723(A133087(n))])`
-/

namespace A081664.P10699848913264118773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006723 (A133087 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224926 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A081664.P10699848913264118773

/-! ## A081664.P17098948209177264991

`A224926(n+1)/A075820(A179961(n))`
-/

namespace A081664.P17098948209177264991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224926 (n + 1) : ℚ) / (A075820 (A179961 n).toNat : ℚ)

end

end A081664.P17098948209177264991

/-!
# A081665: Smallest integer q for which there exists a fraction p/q containing n in its decimal expansion.

The programs for A081665, there is no canonical definition to state claims against.
-/

/-! ## A081665.P7474449941192208397

`A224927(n+1)%A294774(A185215(n))`
-/

namespace A081665.P7474449941192208397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224927 (n + 1)) (A294774 (A185215 n).toNat)

end

end A081665.P7474449941192208397

/-! ## A081665.P4672189663300755230

`gcd(A010872(A015165(n)), A224927(n+1))`
-/

namespace A081665.P4672189663300755230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010872 (A015165 n).toNat) (A224927 (n + 1))

end

end A081665.P4672189663300755230

/-!
# A081666: n*3^(n-1)+A081567(n).

The programs for A081666, the canonical program `A081666.P9890842432522954687` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081666 has offset 0).

The definition of A081666 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081666.P9890842432522954687

`n*3^(n-1)+A081567(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081666

/-- `n*3^(n-1)+A081567(n)` -/
def P9890842432522954687.Spec : Prop :=
  ∀ n, P9890842432522954687.a n = (A081666 n : ℚ)

end A081666

/-! ## A081666.P17504526946554216338

`A081567(n)+A027471(n+1)`
-/

namespace A081666.P17504526946554216338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 n + A027471 (n + 1)

end

end A081666.P17504526946554216338

namespace A081666

/-- `A081567(n)+A027471(n+1)` -/
def P17504526946554216338.Spec : Prop :=
  ∀ n, P17504526946554216338.a n = A081666 n

end A081666

/-! ## A081666.P4303434950036293114

`A027471(n+1)+∑[A052936(n)]`
-/

namespace A081666.P4303434950036293114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081666.P4303434950036293114

namespace A081666

/-- `A027471(n+1)+∑[A052936(n)]` -/
def P4303434950036293114.Spec : Prop :=
  ∀ n, P4303434950036293114.a n = A081666 n

end A081666

/-! ## A081666.P3564845241295329584

`A027471(n+1)+Δ[A093129(n)]`
-/

namespace A081666.P3564845241295329584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1) + (f1 (n + 1) - f1 n)

end

end A081666.P3564845241295329584

namespace A081666

/-- `A027471(n+1)+Δ[A093129(n)]` -/
def P3564845241295329584.Spec : Prop :=
  ∀ n, P3564845241295329584.a n = A081666 n

end A081666

/-! ## A081666.P10120710504098134287

`A178381(2*n+1)+A027471(n+1)`
-/

namespace A081666.P10120710504098134287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (2 * n + 1) + A027471 (n + 1)

end

end A081666.P10120710504098134287

namespace A081666

/-- `A178381(2*n+1)+A027471(n+1)` -/
def P10120710504098134287.Spec : Prop :=
  ∀ n, P10120710504098134287.a n = A081666 n

end A081666

/-! ## A081666.P9968992070183531523

`A027471(n+1)+record[A178381(xor(1, n+1))]`
-/

namespace A081666.P9968992070183531523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (Nat.xor 1 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081666.P9968992070183531523

namespace A081666

/-- `A027471(n+1)+record[A178381(xor(1, n+1))]` -/
def P9968992070183531523.Spec : Prop :=
  ∀ n, P9968992070183531523.a n = A081666 n

end A081666

/-! ## A081666.P16514063828524409274

`A081567(n)+A086972(n)-A007051(n)`
-/

namespace A081666.P16514063828524409274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 n + (A086972 n - A007051 n)

end

end A081666.P16514063828524409274

namespace A081666

/-- `A081567(n)+A086972(n)-A007051(n)` -/
def P16514063828524409274.Spec : Prop :=
  ∀ n, P16514063828524409274.a n = A081666 n

end A081666

/-!
# A081667: a(n) = Fibonacci(binomial(n+2,2)).

The programs for A081667, the canonical program `A081667.P13582439689550870142` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081667 has offset 0).

The definition of A081667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081667.P13582439689550870142

`A000045(A000217(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081667

/-- `A000045(A000217(n+1))` -/
def P13582439689550870142.Spec : Prop :=
  ∀ n, P13582439689550870142.a n = A081667 n

theorem P13582439689550870142.correct : P13582439689550870142.Spec := by
  intro n
  simp only [A081667]

end A081667

/-! ## A081667.P10965071211808468973

`A000045(∑[n+1])`
-/

namespace A081667.P10965071211808468973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081667.P10965071211808468973

namespace A081667

/-- `A000045(∑[n+1])` -/
def P10965071211808468973.Spec : Prop :=
  ∀ n, P10965071211808468973.a n = A081667 n

end A081667

/-! ## A081667.P16207013658494190283

`A264800(∑[n+1])`
-/

namespace A081667.P16207013658494190283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264800 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081667.P16207013658494190283

namespace A081667

/-- `A264800(∑[n+1])` -/
def P16207013658494190283.Spec : Prop :=
  ∀ n, P16207013658494190283.a n = A081667 n

end A081667

/-! ## A081667.P7442482234488207723

`A079977(n*(n+3))`
-/

namespace A081667.P7442482234488207723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (n * (n + 3))

end

end A081667.P7442482234488207723

namespace A081667

/-- `A079977(n*(n+3))` -/
def P7442482234488207723.Spec : Prop :=
  ∀ n, P7442482234488207723.a n = A081667 n

end A081667

/-!
# A081668: Expansion of 2*sinh(x) + BesselI_0(2*x).

The programs for A081668, the canonical program `A081668.P14726056176343545514` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081668 has offset 0).

The definition of A081668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081668.P2720065262046231891

`abs(1-A126869(n))+1`
-/

namespace A081668.P2720065262046231891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A126869 n| + 1

end

end A081668.P2720065262046231891

namespace A081668

/-- `abs(1-A126869(n))+1` -/
def P2720065262046231891.Spec : Prop :=
  ∀ n, P2720065262046231891.a n = A081668 n

end A081668

/-! ## A081668.P14726056176343545514

`A000984(gcd(ceil(n²/2), ∑[n]))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081668

/-- `A000984(gcd(ceil(n²/2), ∑[n]))` -/
def P14726056176343545514.Spec : Prop :=
  ∀ n, P14726056176343545514.a n = A081668 n

theorem P14726056176343545514.correct : P14726056176343545514.Spec := by
  intro n
  simp only [A081668]

end A081668

/-! ## A081668.P8236474531508418477

`A128014(n)+2-a(n-1)` with `a(0)=1`
-/

namespace A081668.P8236474531508418477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A128014 n + (2 - a (n - 1))

end

end A081668.P8236474531508418477

namespace A081668

/-- `A128014(n)+2-a(n-1)` -/
def P8236474531508418477.Spec : Prop :=
  ∀ n, P8236474531508418477.a n = A081668 n

end A081668

/-! ## A081668.P3558488614695033564

`A000984(n-((n-2)/(char[2*n]+1)+1))`
-/

namespace A081668.P3558488614695033564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (SequenceMachineLib.roundAway ((n : ℚ) - (((n : ℤ) - 2 : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ) + 1))).toNat

end

end A081668.P3558488614695033564

namespace A081668

/-- `A000984(n-((n-2)/(char[2*n]+1)+1))` -/
def P3558488614695033564.Spec : Prop :=
  ∀ n, P3558488614695033564.a n = A081668 n

end A081668

/-! ## A081668.P18406871574192275634

`A128014(A141310(n))`
-/

namespace A081668.P18406871574192275634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 (A141310 n).toNat

end

end A081668.P18406871574192275634

namespace A081668

/-- `A128014(A141310(n))` -/
def P18406871574192275634.Spec : Prop :=
  ∀ n, P18406871574192275634.a n = A081668 n

end A081668

/-! ## A081668.P15975370477263152528

`A063886(A124625(n+1))`
-/

namespace A081668.P15975370477263152528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (A124625 (n + 1)).toNat

end

end A081668.P15975370477263152528

namespace A081668

/-- `A063886(A124625(n+1))` -/
def P15975370477263152528.Spec : Prop :=
  ∀ n, P15975370477263152528.a n = A081668 n

end A081668

/-! ## A081668.P17673861089451912947

`A241543(A230089(n+1))`
-/

namespace A081668.P17673861089451912947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241543 (A230089 (n + 1)).toNat

end

end A081668.P17673861089451912947

namespace A081668

/-- `A241543(A230089(n+1))` -/
def P17673861089451912947.Spec : Prop :=
  ∀ n, P17673861089451912947.a n = A081668 n

end A081668

/-! ## A081668.P8231084676588047224

`A126869(n)+A010673(n)`
-/

namespace A081668.P8231084676588047224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n + A010673 n

end

end A081668.P8231084676588047224

namespace A081668

/-- `A126869(n)+A010673(n)` -/
def P8231084676588047224.Spec : Prop :=
  ∀ n, P8231084676588047224.a n = A081668 n

end A081668

/-! ## A081668.P16263512360559462758

`A063886(n/A093178(n))`
-/

namespace A081668.P16263512360559462758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat

end

end A081668.P16263512360559462758

namespace A081668

/-- `A063886(n/A093178(n))` -/
def P16263512360559462758.Spec : Prop :=
  ∀ n, P16263512360559462758.a n = A081668 n

end A081668

/-! ## A081668.P18296839280798448286

`gcd(A084099(n), A126869(n))`
-/

namespace A081668.P18296839280798448286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084099 n) (A126869 n)

end

end A081668.P18296839280798448286

namespace A081668

/-- `gcd(A084099(n), A126869(n))` -/
def P18296839280798448286.Spec : Prop :=
  ∀ n, (P18296839280798448286.a n : ℤ) = A081668 n

end A081668

/-! ## A081668.P1518594948979729512

`A001405(2*A057979(n+1))`
-/

namespace A081668.P1518594948979729512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * A057979 (n + 1)).toNat

end

end A081668.P1518594948979729512

namespace A081668

/-- `A001405(2*A057979(n+1))` -/
def P1518594948979729512.Spec : Prop :=
  ∀ n, P1518594948979729512.a n = A081668 n

end A081668

/-! ## A081668.P2324260889359628497

`A063886(1-A093178(n)+n)`
-/

namespace A081668.P2324260889359628497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (1 - A093178 n + (n : ℤ)).toNat

end

end A081668.P2324260889359628497

namespace A081668

/-- `A063886(1-A093178(n)+n)` -/
def P2324260889359628497.Spec : Prop :=
  ∀ n, P2324260889359628497.a n = A081668 n

end A081668

/-! ## A081668.P11149540066860668111

`A126869(n)+1-A033999(n)`
-/

namespace A081668.P11149540066860668111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n + (1 - A033999 n)

end

end A081668.P11149540066860668111

namespace A081668

/-- `A126869(n)+1-A033999(n)` -/
def P11149540066860668111.Spec : Prop :=
  ∀ n, P11149540066860668111.a n = A081668 n

end A081668

/-! ## A081668.P12572095809866902487

`A129383(1-A124625(n)+n)`
-/

namespace A081668.P12572095809866902487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129383 (1 - A124625 n + (n : ℤ)).toNat

end

end A081668.P12572095809866902487

namespace A081668

/-- `A129383(1-A124625(n)+n)` -/
def P12572095809866902487.Spec : Prop :=
  ∀ n, P12572095809866902487.a n = A081668 n

end A081668

/-! ## A081668.P18331224550991405195

`A063886(1-(A093178(n)-n))`
-/

namespace A081668.P18331224550991405195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (1 - (A093178 n - (n : ℤ))).toNat

end

end A081668.P18331224550991405195

namespace A081668

/-- `A063886(1-(A093178(n)-n))` -/
def P18331224550991405195.Spec : Prop :=
  ∀ n, P18331224550991405195.a n = A081668 n

end A081668

/-! ## A081668.P13460006448535146496

`A063886(1-(A124625(n)-n))`
-/

namespace A081668.P13460006448535146496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (1 - (A124625 n - (n : ℤ))).toNat

end

end A081668.P13460006448535146496

namespace A081668

/-- `A063886(1-(A124625(n)-n))` -/
def P13460006448535146496.Spec : Prop :=
  ∀ n, P13460006448535146496.a n = A081668 n

end A081668

/-! ## A081668.P444412810942113597

`A128014(2-A093178(n)+n)`
-/

namespace A081668.P444412810942113597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 (2 - A093178 n + (n : ℤ)).toNat

end

end A081668.P444412810942113597

namespace A081668

/-- `A128014(2-A093178(n)+n)` -/
def P444412810942113597.Spec : Prop :=
  ∀ n, P444412810942113597.a n = A081668 n

end A081668

/-! ## A081668.P3458357697682110723

`A129383(1-(A124625(n)-n))`
-/

namespace A081668.P3458357697682110723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129383 (1 - (A124625 n - (n : ℤ))).toNat

end

end A081668.P3458357697682110723

namespace A081668

/-- `A129383(1-(A124625(n)-n))` -/
def P3458357697682110723.Spec : Prop :=
  ∀ n, P3458357697682110723.a n = A081668 n

end A081668

/-! ## A081668.P17614286045700256971

`A128014(2-(A093178(n)-n))`
-/

namespace A081668.P17614286045700256971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 (2 - (A093178 n - (n : ℤ))).toNat

end

end A081668.P17614286045700256971

namespace A081668

/-- `A128014(2-(A093178(n)-n))` -/
def P17614286045700256971.Spec : Prop :=
  ∀ n, P17614286045700256971.a n = A081668 n

end A081668

/-! ## A081668.P5142505902766765306

`A128014(n/A093178(n)+1)`
-/

namespace A081668.P5142505902766765306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ) + 1)).toNat

end

end A081668.P5142505902766765306

namespace A081668

/-- `A128014(n/A093178(n)+1)` -/
def P5142505902766765306.Spec : Prop :=
  ∀ n, P5142505902766765306.a n = A081668 n

end A081668

/-!
# A081669: Expansion of exp(2x)+exp(x)BesselI_0(2x).

The programs for A081669, the canonical program `A081669.P7664105217993223069` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081669 has offset 0).

The definition of A081669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081669.P7664105217993223069

`A002426(n)+and(-2, 2^n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081669

/-- `A002426(n)+and(-2, 2^n)` -/
def P7664105217993223069.Spec : Prop :=
  ∀ n, P7664105217993223069.a n = A081669 n

theorem P7664105217993223069.correct : P7664105217993223069.Spec := by
  intro n
  simp only [A081669]

end A081669

/-! ## A081669.P2067211759969631253

`A155559(n)+A002426(n)`
-/

namespace A081669.P2067211759969631253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + A002426 n

end

end A081669.P2067211759969631253

namespace A081669

/-- `A155559(n)+A002426(n)` -/
def P2067211759969631253.Spec : Prop :=
  ∀ n, P2067211759969631253.a n = A081669 n

end A081669

/-! ## A081669.P15045769966767091227

`A002426(n)+Δ[A255047(n)]`
-/

namespace A081669.P15045769966767091227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n + (f1 (n + 1) - f1 n)

end

end A081669.P15045769966767091227

namespace A081669

/-- `A002426(n)+Δ[A255047(n)]` -/
def P15045769966767091227.Spec : Prop :=
  ∀ n, P15045769966767091227.a n = A081669 n

end A081669

/-! ## A081669.P14007932493072315476

`A002426(n)+2*A131577(n)`
-/

namespace A081669.P14007932493072315476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n + 2 * A131577 n

end

end A081669.P14007932493072315476

namespace A081669

/-- `A002426(n)+2*A131577(n)` -/
def P14007932493072315476.Spec : Prop :=
  ∀ n, P14007932493072315476.a n = A081669 n

end A081669

/-! ## A081669.P2967517117470611225

`A155559(n)+A005213(2*n)`
-/

namespace A081669.P2967517117470611225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + A005213 (2 * n)

end

end A081669.P2967517117470611225

namespace A081669

/-- `A155559(n)+A005213(2*n)` -/
def P2967517117470611225.Spec : Prop :=
  ∀ n, P2967517117470611225.a n = A081669 n

end A081669

/-! ## A081669.P1357559715409286926

`or(1, A002426(n)+A000225(n))`
-/

namespace A081669.P1357559715409286926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002426 n + A000225 n)

end

end A081669.P1357559715409286926

namespace A081669

/-- `or(1, A002426(n)+A000225(n))` -/
def P1357559715409286926.Spec : Prop :=
  ∀ n, P1357559715409286926.a n = A081669 n

end A081669

/-! ## A081669.P1818327568910372850

`A000079(n)+record[A005213(n+1)]`
-/

namespace A081669.P1818327568910372850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081669.P1818327568910372850

namespace A081669

/-- `A000079(n)+record[A005213(n+1)]` -/
def P1818327568910372850.Spec : Prop :=
  ∀ n, P1818327568910372850.a n = A081669 n

end A081669

/-! ## A081669.P12047783926148125856

`A155559(n)+2*A257520(n)-1`
-/

namespace A081669.P12047783926148125856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + (2 * A257520 n - 1)

end

end A081669.P12047783926148125856

namespace A081669

/-- `A155559(n)+2*A257520(n)-1` -/
def P12047783926148125856.Spec : Prop :=
  ∀ n, P12047783926148125856.a n = A081669 n

end A081669

/-! ## A081669.P18208317453462830853

`A155559(n)+abs(Δ[n*A099323(n)])`
-/

namespace A081669.P18208317453462830853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A099323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + |f1 (n + 1) - f1 n|

end

end A081669.P18208317453462830853

namespace A081669

/-- `A155559(n)+abs(Δ[n*A099323(n)])` -/
def P18208317453462830853.Spec : Prop :=
  ∀ n, P18208317453462830853.a n = A081669 n

end A081669

/-! ## A081669.P9715243181445260443

`record[A016116(n+1)+A005213(n+1)]`
-/

namespace A081669.P9715243181445260443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) + A005213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081669.P9715243181445260443

namespace A081669

/-- `record[A016116(n+1)+A005213(n+1)]` -/
def P9715243181445260443.Spec : Prop :=
  ∀ n, P9715243181445260443.a n = A081669 n

end A081669

/-! ## A081669.P9747494061621184315

`A002426(n)-(A000007(n)-∑[round(2^(n-1))])`
-/

namespace A081669.P9747494061621184315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n - (A000007 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081669.P9747494061621184315

namespace A081669

/-- `A002426(n)-(A000007(n)-∑[round(2^(n-1))])` -/
def P9747494061621184315.Spec : Prop :=
  ∀ n, P9747494061621184315.a n = A081669 n

end A081669

/-! ## A081669.P15978988894921088868

`A000079(n)+A002426(n)-A000007(n)`
-/

namespace A081669.P15978988894921088868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A002426 n - A000007 n)

end

end A081669.P15978988894921088868

namespace A081669

/-- `A000079(n)+A002426(n)-A000007(n)` -/
def P15978988894921088868.Spec : Prop :=
  ∀ n, P15978988894921088868.a n = A081669 n

end A081669

/-! ## A081669.P17735182747766489406

`A002426(n)+A000079(n)%A077852(n)`
-/

namespace A081669.P17735182747766489406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n + Int.tmod (A000079 n) (A077852 n)

end

end A081669.P17735182747766489406

namespace A081669

/-- `A002426(n)+A000079(n)%A077852(n)` -/
def P17735182747766489406.Spec : Prop :=
  ∀ n, P17735182747766489406.a n = A081669 n

end A081669

/-! ## A081669.P221554502230567224

`A081673(n)-A362316(n)`
-/

namespace A081669.P221554502230567224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081673 n - A362316 n

end

end A081669.P221554502230567224

namespace A081669

/-- `A081673(n)-A362316(n)` -/
def P221554502230567224.Spec : Prop :=
  ∀ n, P221554502230567224.a n = A081669 n

end A081669

/-! ## A081669.P10238272795594776243

`A000079(n)+A002426(n)%A000984(n)`
-/

namespace A081669.P10238272795594776243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + Int.tmod (A002426 n) (A000984 n)

end

end A081669.P10238272795594776243

namespace A081669

/-- `A000079(n)+A002426(n)%A000984(n)` -/
def P10238272795594776243.Spec : Prop :=
  ∀ n, P10238272795594776243.a n = A081669 n

end A081669

/-!
# A081670: a(n) = 3^n-1+C(2n,n).

The programs for A081670, the canonical program `A081670.P6689484876117185084` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081670 has offset 0).

The definition of A081670 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-1+C(2*n, n)` (program `A081670.P6689484876117185084`, by `A081670.P6689484876117185084.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081670.P4067361899818869049

`A000984(n)+2*A003462(n)`
-/

namespace A081670.P4067361899818869049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 2 * A003462 n

end

end A081670.P4067361899818869049

namespace A081670

/-- `A000984(n)+2*A003462(n)` -/
def P4067361899818869049.Spec : Prop :=
  ∀ n, P4067361899818869049.a n = A081670 n

end A081670

/-! ## A081670.P6689484876117185084

`3^n-1+C(2*n, n)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081670

/-- `3^n-1+C(2*n, n)` -/
def P6689484876117185084.Spec : Prop :=
  ∀ n, P6689484876117185084.a n = A081670 n

theorem P6689484876117185084.correct : P6689484876117185084.Spec := by
  intro n
  simp only [A081670]

end A081670

/-! ## A081670.P8983361077506991542

`A014495(2*n)+3^n`
-/

namespace A081670.P8983361077506991542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (2 * n) + (3 ^ n : ℤ)

end

end A081670.P8983361077506991542

namespace A081670

/-- `A014495(2*n)+3^n` -/
def P8983361077506991542.Spec : Prop :=
  ∀ n, P8983361077506991542.a n = A081670 n

end A081670

/-! ## A081670.P7649488895708860350

`3^n+record[A126869(n)-1]`
-/

namespace A081670.P7649488895708860350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081670.P7649488895708860350

namespace A081670

/-- `3^n+record[A126869(n)-1]` -/
def P7649488895708860350.Spec : Prop :=
  ∀ n, P7649488895708860350.a n = A081670 n

end A081670

/-! ## A081670.P15570574253806864348

`record[A126930(n)]-(1-3^n)`
-/

namespace A081670.P15570574253806864348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (1 - (3 ^ n : ℤ))

end

end A081670.P15570574253806864348

namespace A081670

/-- `record[A126930(n)]-(1-3^n)` -/
def P15570574253806864348.Spec : Prop :=
  ∀ n, P15570574253806864348.a n = A081670 n

end A081670

/-! ## A081670.P4304480850068415484

`3^n+A001405(2*n)-1`
-/

namespace A081670.P4304480850068415484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) + (A001405 (2 * n) - 1)

end

end A081670.P4304480850068415484

namespace A081670

/-- `3^n+A001405(2*n)-1` -/
def P4304480850068415484.Spec : Prop :=
  ∀ n, P4304480850068415484.a n = A081670 n

end A081670

/-! ## A081670.P11875103903110255953

`A063886(2*n)+3^n-1`
-/

namespace A081670.P11875103903110255953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n) + ((3 ^ n : ℤ) - 1)

end

end A081670.P11875103903110255953

namespace A081670

/-- `A063886(2*n)+3^n-1` -/
def P11875103903110255953.Spec : Prop :=
  ∀ n, P11875103903110255953.a n = A081670 n

end A081670

/-! ## A081670.P5484222236070399988

`A126869(2*n)+3^n-1`
-/

namespace A081670.P5484222236070399988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) + ((3 ^ n : ℤ) - 1)

end

end A081670.P5484222236070399988

namespace A081670

/-- `A126869(2*n)+3^n-1` -/
def P5484222236070399988.Spec : Prop :=
  ∀ n, P5484222236070399988.a n = A081670 n

end A081670

/-! ## A081670.P2452727685795020220

`A024023(n)+A000984(n)`
-/

namespace A081670.P2452727685795020220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n + A000984 n

end

end A081670.P2452727685795020220

namespace A081670

/-- `A024023(n)+A000984(n)` -/
def P2452727685795020220.Spec : Prop :=
  ∀ n, P2452727685795020220.a n = A081670 n

end A081670

/-! ## A081670.P1996112155734743092

`A359176(n+1)+A104743(n)`
-/

namespace A081670.P1996112155734743092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359176 (n + 1) + A104743 n

end

end A081670.P1996112155734743092

namespace A081670

/-- `A359176(n+1)+A104743(n)` -/
def P1996112155734743092.Spec : Prop :=
  ∀ n, P1996112155734743092.a n = A081670 n

end A081670

/-! ## A081670.P10888178132566498968

`A000984(n)+Δ[A007051(n)]-1`
-/

namespace A081670.P10888178132566498968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (f1 (n + 1) - f1 n - 1)

end

end A081670.P10888178132566498968

namespace A081670

/-- `A000984(n)+Δ[A007051(n)]-1` -/
def P10888178132566498968.Spec : Prop :=
  ∀ n, P10888178132566498968.a n = A081670 n

end A081670

/-! ## A081670.P13245653383398271436

`A038754(2*n)+A014495(2*n)`
-/

namespace A081670.P13245653383398271436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (2 * n) + A014495 (2 * n)

end

end A081670.P13245653383398271436

namespace A081670

/-- `A038754(2*n)+A014495(2*n)` -/
def P13245653383398271436.Spec : Prop :=
  ∀ n, P13245653383398271436.a n = A081670 n

end A081670

/-! ## A081670.P16662823198818080788

`A024023(n)+(n+1)*A000108(n)`
-/

namespace A081670.P16662823198818080788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n + (n + 1 : ℤ) * A000108 n

end

end A081670.P16662823198818080788

namespace A081670

/-- `A024023(n)+(n+1)*A000108(n)` -/
def P16662823198818080788.Spec : Prop :=
  ∀ n, P16662823198818080788.a n = A081670 n

end A081670

/-! ## A081670.P2069981977795590672

`A062318(2*n+1)+A001405(2*n)`
-/

namespace A081670.P2069981977795590672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062318 (2 * n + 1) + A001405 (2 * n)

end

end A081670.P2069981977795590672

namespace A081670

/-- `A062318(2*n+1)+A001405(2*n)` -/
def P2069981977795590672.Spec : Prop :=
  ∀ n, P2069981977795590672.a n = A081670 n

end A081670

/-! ## A081670.P2892128563681043366

`A089849(2*n)+A062318(2*n+1)`
-/

namespace A081670.P2892128563681043366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089849 (2 * n) + A062318 (2 * n + 1)

end

end A081670.P2892128563681043366

namespace A081670

/-- `A089849(2*n)+A062318(2*n+1)` -/
def P2892128563681043366.Spec : Prop :=
  ∀ n, P2892128563681043366.a n = A081670 n

end A081670

/-! ## A081670.P17411718205370797183

`A001405(2*n)+A038754(2*n)-1`
-/

namespace A081670.P17411718205370797183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) + (A038754 (2 * n) - 1)

end

end A081670.P17411718205370797183

namespace A081670

/-- `A001405(2*n)+A038754(2*n)-1` -/
def P17411718205370797183.Spec : Prop :=
  ∀ n, P17411718205370797183.a n = A081670 n

end A081670

/-! ## A081670.P16903421749045776387

`A001405(2*n)+A108411(2*n)-1`
-/

namespace A081670.P16903421749045776387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) + (A108411 (2 * n) - 1)

end

end A081670.P16903421749045776387

namespace A081670

/-- `A001405(2*n)+A108411(2*n)-1` -/
def P16903421749045776387.Spec : Prop :=
  ∀ n, P16903421749045776387.a n = A081670 n

end A081670

/-! ## A081670.P12524888787724765818

`A108411(2*n)+A128014(2*n)-1`
-/

namespace A081670.P12524888787724765818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (2 * n) + (A128014 (2 * n) - 1)

end

end A081670.P12524888787724765818

namespace A081670

/-- `A108411(2*n)+A128014(2*n)-1` -/
def P12524888787724765818.Spec : Prop :=
  ∀ n, P12524888787724765818.a n = A081670 n

end A081670

/-! ## A081670.P11875448165610187289

`(n+1)*A000108(n)+A000244(n)-1`
-/

namespace A081670.P11875448165610187289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 n + (A000244 n - 1)

end

end A081670.P11875448165610187289

namespace A081670

/-- `(n+1)*A000108(n)+A000244(n)-1` -/
def P11875448165610187289.Spec : Prop :=
  ∀ n, P11875448165610187289.a n = A081670 n

end A081670

/-! ## A081670.P11548476358801012565

`A191993(n+1)-A323229(n)`
-/

namespace A081670.P11548476358801012565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191993 (n + 1) - A323229 n

end

end A081670.P11548476358801012565

namespace A081670

/-- `A191993(n+1)-A323229(n)` -/
def P11548476358801012565.Spec : Prop :=
  ∀ n, P11548476358801012565.a n = A081670 n

end A081670

/-!
# A081671: Expansion of e.g.f. exp(4x) * I_0(2x).

The programs for A081671, there is no canonical definition to state claims against.
-/

/-! ## A081671.P9280934792697023593

`A064613(n)+n*A025228(n+1)`
-/

namespace A081671.P9280934792697023593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064613 n + (n : ℤ) * A025228 (n + 1)

end

end A081671.P9280934792697023593

/-! ## A081671.P13430857380738615591

`A098411(n)/A000079(n)`
-/

namespace A081671.P13430857380738615591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098411 n : ℚ) / (A000079 n : ℚ)

end

end A081671.P13430857380738615591

/-! ## A081671.P307742093625415039

`A098411(n)/sqrt(A000302(n))`
-/

namespace A081671.P307742093625415039
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A098411 n : ℝ) / Real.sqrt (A000302 n : ℝ)

end

end A081671.P307742093625415039

/-! ## A081671.P1020104646543817296

`A098411(n)/∑[A011782(n)]`
-/

namespace A081671.P1020104646543817296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098411 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A081671.P1020104646543817296

/-! ## A081671.P4661170752247959407

`A098411(n)/Δ[A000918(n)]`
-/

namespace A081671.P4661170752247959407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098411 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A081671.P4661170752247959407

/-! ## A081671.P12344909480068751871

`A098411(n)/A011782(n+1)`
-/

namespace A081671.P12344909480068751871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098411 n : ℚ) / (A011782 (n + 1) : ℚ)

end

end A081671.P12344909480068751871

/-! ## A081671.P978688281300452538

`A098411(n)/A038212(A000217(n))`
-/

namespace A081671.P978688281300452538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098411 n : ℚ) / (A038212 (A000217 n).toNat : ℚ)

end

end A081671.P978688281300452538

/-! ## A081671.P16245724182785380395

`A000984(n)/A059304(n)*A098411(n)`
-/

namespace A081671.P16245724182785380395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A059304 n : ℚ) * (A098411 n : ℚ)

end

end A081671.P16245724182785380395

/-! ## A081671.P14854495108096304814

`A292627(eq[4, A025581(n)])`
-/

namespace A081671.P14854495108096304814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081671.P14854495108096304814

/-! ## A081671.P16092183363834133725

`sqrt(A246876(n))`
-/

namespace A081671.P16092183363834133725
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A246876 n : ℝ)

end

end A081671.P16092183363834133725

/-!
# A081672: Expansion of exp(2x) - exp(0) + BesselI_0(2x).

The programs for A081672, the canonical program `A081672.P4891467764290445925` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081672 has offset 0).

The definition of A081672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081672.P11551897820637573917

`or(2^n, A126869(n))`
-/

namespace A081672.P11551897820637573917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) (A126869 n)

end

end A081672.P11551897820637573917

namespace A081672

/-- `or(2^n, A126869(n))` -/
def P11551897820637573917.Spec : Prop :=
  ∀ n, P11551897820637573917.a n = A081672 n

end A081672

/-! ## A081672.P195270913472981542

`A155559(n)+A126869(n)`
-/

namespace A081672.P195270913472981542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + A126869 n

end

end A081672.P195270913472981542

namespace A081672

/-- `A155559(n)+A126869(n)` -/
def P195270913472981542.Spec : Prop :=
  ∀ n, P195270913472981542.a n = A081672 n

end A081672

/-! ## A081672.P17379512584163357658

`A258143(n+1)-A047171(n)`
-/

namespace A081672.P17379512584163357658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258143 (n + 1) - A047171 n

end

end A081672.P17379512584163357658

namespace A081672

/-- `A258143(n+1)-A047171(n)` -/
def P17379512584163357658.Spec : Prop :=
  ∀ n, P17379512584163357658.a n = A081672 n

end A081672

/-! ## A081672.P4891467764290445925

`A027306(n)*A036453(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A081672

/-- `A027306(n)*A036453(n+1)` -/
def P4891467764290445925.Spec : Prop :=
  ∀ n, P4891467764290445925.a n = A081672 n

theorem P4891467764290445925.correct : P4891467764290445925.Spec := by
  intro n
  simp only [A081672]

end A081672

/-! ## A081672.P14382578046886169244

`(A057427(n)+1)*A027306(n)`
-/

namespace A081672.P14382578046886169244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A027306 n

end

end A081672.P14382578046886169244

namespace A081672

/-- `(A057427(n)+1)*A027306(n)` -/
def P14382578046886169244.Spec : Prop :=
  ∀ n, P14382578046886169244.a n = A081672 n

end A081672

/-! ## A081672.P14110399631212699774

`A126869(n)+2*A131577(n)`
-/

namespace A081672.P14110399631212699774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n + 2 * A131577 n

end

end A081672.P14110399631212699774

namespace A081672

/-- `A126869(n)+2*A131577(n)` -/
def P14110399631212699774.Spec : Prop :=
  ∀ n, P14110399631212699774.a n = A081672 n

end A081672

/-! ## A081672.P1837484394904511663

`(2-A000007(n))*A027306(n)`
-/

namespace A081672.P1837484394904511663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A027306 n

end

end A081672.P1837484394904511663

namespace A081672

/-- `(2-A000007(n))*A027306(n)` -/
def P1837484394904511663.Spec : Prop :=
  ∀ n, P1837484394904511663.a n = A081672 n

end A081672

/-! ## A081672.P14993640364033538753

`A027306(n)*A280193(2*n)`
-/

namespace A081672.P14993640364033538753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 n * A280193 (2 * n)

end

end A081672.P14993640364033538753

namespace A081672

/-- `A027306(n)*A280193(2*n)` -/
def P14993640364033538753.Spec : Prop :=
  ∀ n, P14993640364033538753.a n = A081672 n

end A081672

/-! ## A081672.P11139994352390755624

`A027306(n)*A078471(round(n/(n+1))+1)`
-/

namespace A081672.P11139994352390755624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 n * A078471 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ)) + 1).toNat

end

end A081672.P11139994352390755624

namespace A081672

/-- `A027306(n)*A078471(round(n/(n+1))+1)` -/
def P11139994352390755624.Spec : Prop :=
  ∀ n, P11139994352390755624.a n = A081672 n

end A081672

/-! ## A081672.P18095126042893377721

`A126869(A028310(n))+A000079(n)`
-/

namespace A081672.P18095126042893377721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (A028310 n).toNat + A000079 n

end

end A081672.P18095126042893377721

namespace A081672

/-- `A126869(A028310(n))+A000079(n)` -/
def P18095126042893377721.Spec : Prop :=
  ∀ n, P18095126042893377721.a n = A081672 n

end A081672

/-! ## A081672.P8369285003978809188

`(A048766(A048766(n))+1)*A027306(n)`
-/

namespace A081672.P8369285003978809188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048766 (A048766 n).toNat + 1) * A027306 n

end

end A081672.P8369285003978809188

namespace A081672

/-- `(A048766(A048766(n))+1)*A027306(n)` -/
def P8369285003978809188.Spec : Prop :=
  ∀ n, P8369285003978809188.a n = A081672 n

end A081672

/-! ## A081672.P9836421833205071443

`A000005(A284397(n+1))*A027306(n)`
-/

namespace A081672.P9836421833205071443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A284397 (n + 1)).toNat * A027306 n

end

end A081672.P9836421833205071443

namespace A081672

/-- `A000005(A284397(n+1))*A027306(n)` -/
def P9836421833205071443.Spec : Prop :=
  ∀ n, P9836421833205071443.a n = A081672 n

end A081672

/-! ## A081672.P17053331133722090581

`A014963(A303809(n+1))*A027306(n)`
-/

namespace A081672.P17053331133722090581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A303809 (n + 1)).toNat * A027306 n

end

end A081672.P17053331133722090581

namespace A081672

/-- `A014963(A303809(n+1))*A027306(n)` -/
def P17053331133722090581.Spec : Prop :=
  ∀ n, P17053331133722090581.a n = A081672 n

end A081672

/-! ## A081672.P9732690299503870854

`(A279060(A279060(n))+1)*A027306(n)`
-/

namespace A081672.P9732690299503870854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A279060 (A279060 n).toNat + 1) * A027306 n

end

end A081672.P9732690299503870854

namespace A081672

/-- `(A279060(A279060(n))+1)*A027306(n)` -/
def P9732690299503870854.Spec : Prop :=
  ∀ n, P9732690299503870854.a n = A081672 n

end A081672

/-! ## A081672.P3460440798686953062

`A005317(n/A028310(n))*A027306(n)`
-/

namespace A081672.P3460440798686953062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005317 (SequenceMachineLib.roundAway ((n : ℚ) / (A028310 n : ℚ))).toNat * A027306 n

end

end A081672.P3460440798686953062

namespace A081672

/-- `A005317(n/A028310(n))*A027306(n)` -/
def P3460440798686953062.Spec : Prop :=
  ∀ n, P3460440798686953062.a n = A081672 n

end A081672

/-! ## A081672.P3548678088202485353

`∑[A011782(n)]/A011782(n)*A027306(n)`
-/

namespace A081672.P3548678088202485353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A011782 n : ℚ) * (A027306 n : ℚ)

end

end A081672.P3548678088202485353

namespace A081672

/-- `∑[A011782(n)]/A011782(n)*A027306(n)` -/
def P3548678088202485353.Spec : Prop :=
  ∀ n, P3548678088202485353.a n = (A081672 n : ℚ)

end A081672

/-! ## A081672.P8790118400254084025

`A006928(A054353(2*n+1))*A027306(n)`
-/

namespace A081672.P8790118400254084025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A054353 (2 * n + 1)).toNat * A027306 n

end

end A081672.P8790118400254084025

namespace A081672

/-- `A006928(A054353(2*n+1))*A027306(n)` -/
def P8790118400254084025.Spec : Prop :=
  ∀ n, P8790118400254084025.a n = A081672 n

end A081672

/-! ## A081672.P99017218915974452

`A011782(n+1)/A011782(n)*A027306(n)`
-/

namespace A081672.P99017218915974452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) : ℚ) / (A011782 n : ℚ) * (A027306 n : ℚ)

end

end A081672.P99017218915974452

namespace A081672

/-- `A011782(n+1)/A011782(n)*A027306(n)` -/
def P99017218915974452.Spec : Prop :=
  ∀ n, P99017218915974452.a n = (A081672 n : ℚ)

end A081672

/-! ## A081672.P5235584674362117157

`A027306(n)+A027306(n)%A027306(n+1)`
-/

namespace A081672.P5235584674362117157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 n + Int.tmod (A027306 n) (A027306 (n + 1))

end

end A081672.P5235584674362117157

namespace A081672

/-- `A027306(n)+A027306(n)%A027306(n+1)` -/
def P5235584674362117157.Spec : Prop :=
  ∀ n, P5235584674362117157.a n = A081672 n

end A081672

/-!
# A081673: Expansion of exp(3*x) - exp(x)*(1-BesselI_0(2*x)).

The programs for A081673, the canonical program `A081673.P11586713415045764858` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081673 has offset 0).

The definition of A081673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081673.P11586713415045764858

`2*A027914(n)-1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A081673

/-- `2*A027914(n)-1` -/
def P11586713415045764858.Spec : Prop :=
  ∀ n, P11586713415045764858.a n = A081673 n

theorem P11586713415045764858.correct : P11586713415045764858.Spec := by
  intro n
  simp only [A081673]

end A081673

/-! ## A081673.P11440402558457552150

`3^n+A002426(n)-1`
-/

namespace A081673.P11440402558457552150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) + (A002426 n - 1)

end

end A081673.P11440402558457552150

namespace A081673

/-- `3^n+A002426(n)-1` -/
def P11440402558457552150.Spec : Prop :=
  ∀ n, P11440402558457552150.a n = A081673 n

end A081673

/-! ## A081673.P16827426924070654485

`A024023(n)+A002426(n)`
-/

namespace A081673.P16827426924070654485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n + A002426 n

end

end A081673.P16827426924070654485

namespace A081673

/-- `A024023(n)+A002426(n)` -/
def P16827426924070654485.Spec : Prop :=
  ∀ n, P16827426924070654485.a n = A081673 n

end A081673

/-! ## A081673.P747201620678517764

`A362316(n)+A081669(n)`
-/

namespace A081673.P747201620678517764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362316 n + A081669 n

end

end A081673.P747201620678517764

namespace A081673

/-- `A362316(n)+A081669(n)` -/
def P747201620678517764.Spec : Prop :=
  ∀ n, P747201620678517764.a n = A081673 n

end A081673

/-! ## A081673.P497088366248445896

`A002426(n)+A000244(n)-1`
-/

namespace A081673.P497088366248445896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n + (A000244 n - 1)

end

end A081673.P497088366248445896

namespace A081673

/-- `A002426(n)+A000244(n)-1` -/
def P497088366248445896.Spec : Prop :=
  ∀ n, P497088366248445896.a n = A081673 n

end A081673

/-! ## A081673.P3788931666342373841

`A002426(n)+2*A003462(n)`
-/

namespace A081673.P3788931666342373841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n + 2 * A003462 n

end

end A081673.P3788931666342373841

namespace A081673

/-- `A002426(n)+2*A003462(n)` -/
def P3788931666342373841.Spec : Prop :=
  ∀ n, P3788931666342373841.a n = A081673 n

end A081673

/-! ## A081673.P113443502419299134

`A024023(n)+A005213(2*n)`
-/

namespace A081673.P113443502419299134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n + A005213 (2 * n)

end

end A081673.P113443502419299134

namespace A081673

/-- `A024023(n)+A005213(2*n)` -/
def P113443502419299134.Spec : Prop :=
  ∀ n, P113443502419299134.a n = A081673 n

end A081673

/-! ## A081673.P14285146565048215972

`A062318(2*n+1)+A002426(n)`
-/

namespace A081673.P14285146565048215972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062318 (2 * n + 1) + A002426 n

end

end A081673.P14285146565048215972

namespace A081673

/-- `A062318(2*n+1)+A002426(n)` -/
def P14285146565048215972.Spec : Prop :=
  ∀ n, P14285146565048215972.a n = A081673 n

end A081673

/-! ## A081673.P10516992536671396848

`A000244(n)-(A071036(A246035(n))-A002426(n))`
-/

namespace A081673.P10516992536671396848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - (A071036 (A246035 n).toNat - A002426 n)

end

end A081673.P10516992536671396848

namespace A081673

/-- `A000244(n)-(A071036(A246035(n))-A002426(n))` -/
def P10516992536671396848.Spec : Prop :=
  ∀ n, P10516992536671396848.a n = A081673 n

end A081673

/-!
# A081674: Generalized Poly-Bernoulli numbers.

The programs for A081674, the canonical program `A081674.P13940095872098999332` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081674 has offset 0).

The definition of A081674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081674.P12728443391873492745

`((4^(n+1)-1)/3-3^n)/2`
-/

namespace A081674.P12728443391873492745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((4 ^ (n + 1) : ℤ) - 1 : ℚ) / 3 - (3 ^ n : ℚ)) / 2

end

end A081674.P12728443391873492745

namespace A081674

/-- `((4^(n+1)-1)/3-3^n)/2` -/
def P12728443391873492745.Spec : Prop :=
  ∀ n, P12728443391873492745.a n = (A081674 n : ℚ)

theorem P12728443391873492745.correct : P12728443391873492745.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A081674, Nat.add_sub_cancel, A081674.P12728443391873492745.a, A081674.P13940095872098999332.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A081674, Nat.add_sub_cancel, A081674.P12728443391873492745.a, A081674.P13940095872098999332.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081674

/-! ## A081674.P13940095872098999332

`8*a(n-1)-19*a(n-2)+12*a(n-3)` with `a(0)=0, a(1)=1, a(2)=6`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081674

/-- `8*a(n-1)-19*a(n-2)+12*a(n-3)` -/
def P13940095872098999332.Spec : Prop :=
  ∀ n, P13940095872098999332.a n = A081674 n

theorem P13940095872098999332.correct : P13940095872098999332.Spec := by
  intro n
  simp only [A081674]

end A081674

/-! ## A081674.P401858534906522972

`∑[A080643(n)/2]`
-/

namespace A081674.P401858534906522972
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080643 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081674.P401858534906522972

namespace A081674

/-- `∑[A080643(n)/2]` -/
def P401858534906522972.Spec : Prop :=
  ∀ n, P401858534906522972.a n = (A081674 n : ℚ)

end A081674

/-! ## A081674.P15722974125888292331

`A000773(2*(n+1))`
-/

namespace A081674.P15722974125888292331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000773 (2 * (n + 1))

end

end A081674.P15722974125888292331

namespace A081674

/-- `A000773(2*(n+1))` -/
def P15722974125888292331.Spec : Prop :=
  ∀ n, P15722974125888292331.a n = A081674 n

end A081674

/-! ## A081674.P14062900768617430086

`or(1, ∑[floor(4^n/2)])-A007051(n)`
-/

namespace A081674.P14062900768617430086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) - A007051 n

end

end A081674.P14062900768617430086

namespace A081674

/-- `or(1, ∑[floor(4^n/2)])-A007051(n)` -/
def P14062900768617430086.Spec : Prop :=
  ∀ n, P14062900768617430086.a n = A081674 n

end A081674

/-! ## A081674.P16661151731011008688

`A053154(n)+A006095(n)`
-/

namespace A081674.P16661151731011008688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053154 n + A006095 n

end

end A081674.P16661151731011008688

namespace A081674

/-- `A053154(n)+A006095(n)` -/
def P16661151731011008688.Spec : Prop :=
  ∀ n, P16661151731011008688.a n = A081674 n

end A081674

/-! ## A081674.P363575969886971744

`A007583(n)-A007051(n)`
-/

namespace A081674.P363575969886971744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 n - A007051 n

end

end A081674.P363575969886971744

namespace A081674

/-- `A007583(n)-A007051(n)` -/
def P363575969886971744.Spec : Prop :=
  ∀ n, P363575969886971744.a n = A081674 n

end A081674

/-! ## A081674.P10080512810683291649

`A020988(n)-A003462(n)`
-/

namespace A081674.P10080512810683291649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 n - A003462 n

end

end A081674.P10080512810683291649

namespace A081674

/-- `A020988(n)-A003462(n)` -/
def P10080512810683291649.Spec : Prop :=
  ∀ n, P10080512810683291649.a n = A081674 n

end A081674

/-! ## A081674.P10595388414306303382

`A000302(n)-A085282(n)`
-/

namespace A081674.P10595388414306303382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - A085282 n

end

end A081674.P10595388414306303382

namespace A081674

/-- `A000302(n)-A085282(n)` -/
def P10595388414306303382.Spec : Prop :=
  ∀ n, P10595388414306303382.a n = A081674 n

end A081674

/-! ## A081674.P17057840102719606975

`A083314(n)-A047849(n)`
-/

namespace A081674.P17057840102719606975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083314 n - A047849 n

end

end A081674.P17057840102719606975

namespace A081674

/-- `A083314(n)-A047849(n)` -/
def P17057840102719606975.Spec : Prop :=
  ∀ n, P17057840102719606975.a n = A081674 n

end A081674

/-! ## A081674.P7195615365778646074

`A140322(n)-A046717(n)`
-/

namespace A081674.P7195615365778646074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140322 n - A046717 n

end

end A081674.P7195615365778646074

namespace A081674

/-- `A140322(n)-A046717(n)` -/
def P7195615365778646074.Spec : Prop :=
  ∀ n, P7195615365778646074.a n = A081674 n

end A081674

/-! ## A081674.P2068314364303128399

`A155609(n)-A162725(n)`
-/

namespace A081674.P2068314364303128399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155609 n - A162725 n

end

end A081674.P2068314364303128399

namespace A081674

/-- `A155609(n)-A162725(n)` -/
def P2068314364303128399.Spec : Prop :=
  ∀ n, P2068314364303128399.a n = A081674 n

end A081674

/-! ## A081674.P2062897704092755191

`A000079(n)²-A085282(n)`
-/

namespace A081674.P2062897704092755191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 - A085282 n

end

end A081674.P2062897704092755191

namespace A081674

/-- `A000079(n)²-A085282(n)` -/
def P2062897704092755191.Spec : Prop :=
  ∀ n, P2062897704092755191.a n = A081674 n

end A081674

/-! ## A081674.P4799680749820071248

`A007583(n)-(A003462(n)+1)`
-/

namespace A081674.P4799680749820071248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 n - (A003462 n + 1)

end

end A081674.P4799680749820071248

namespace A081674

/-- `A007583(n)-(A003462(n)+1)` -/
def P4799680749820071248.Spec : Prop :=
  ∀ n, P4799680749820071248.a n = A081674 n

end A081674

/-! ## A081674.P14728715152322021378

`A000975(2*n)-A003462(n)`
-/

namespace A081674.P14728715152322021378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (2 * n) - A003462 n

end

end A081674.P14728715152322021378

namespace A081674

/-- `A000975(2*n)-A003462(n)` -/
def P14728715152322021378.Spec : Prop :=
  ∀ n, P14728715152322021378.a n = A081674 n

end A081674

/-! ## A081674.P18020680942549391800

`2*A002450(n)-A003462(n)`
-/

namespace A081674.P18020680942549391800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002450 n - A003462 n

end

end A081674.P18020680942549391800

namespace A081674

/-- `2*A002450(n)-A003462(n)` -/
def P18020680942549391800.Spec : Prop :=
  ∀ n, P18020680942549391800.a n = A081674 n

end A081674

/-! ## A081674.P16966461963604027821

`A000079(2*n)-A085282(n)`
-/

namespace A081674.P16966461963604027821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) - A085282 n

end

end A081674.P16966461963604027821

namespace A081674

/-- `A000079(2*n)-A085282(n)` -/
def P16966461963604027821.Spec : Prop :=
  ∀ n, P16966461963604027821.a n = A081674 n

end A081674

/-! ## A081674.P3547521576522089422

`A166752(2*n)-A007051(n)`
-/

namespace A081674.P3547521576522089422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166752 (2 * n) - A007051 n

end

end A081674.P3547521576522089422

namespace A081674

/-- `A166752(2*n)-A007051(n)` -/
def P3547521576522089422.Spec : Prop :=
  ∀ n, P3547521576522089422.a n = A081674 n

end A081674

/-! ## A081674.P3515223241690128915

`Δ[A000051(n)]²-A085282(n)`
-/

namespace A081674.P3515223241690128915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A085282 n

end

end A081674.P3515223241690128915

namespace A081674

/-- `Δ[A000051(n)]²-A085282(n)` -/
def P3515223241690128915.Spec : Prop :=
  ∀ n, P3515223241690128915.a n = A081674 n

end A081674

/-! ## A081674.P8350861970194263780

`∑[A167936(A267458(2*n))]-1`
-/

namespace A081674.P8350861970194263780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167936 (A267458 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A081674.P8350861970194263780

namespace A081674

/-- `∑[A167936(A267458(2*n))]-1` -/
def P8350861970194263780.Spec : Prop :=
  ∀ n, P8350861970194263780.a n = A081674 n

end A081674

/-!
# A081675: Generalized Poly-Bernoulli numbers.

The programs for A081675, the canonical program `A081675.P8186524642895910958` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081675 has offset 0).

The definition of A081675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081675.P2194782971140988089

`(4*5^n-3*4^n-2^n)/6`
-/

namespace A081675.P2194782971140988089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * 5 ^ n : ℤ) - (3 * 4 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / 6

end

end A081675.P2194782971140988089

namespace A081675

/-- `(4*5^n-3*4^n-2^n)/6` -/
def P2194782971140988089.Spec : Prop :=
  ∀ n, P2194782971140988089.a n = (A081675 n : ℚ)

theorem P2194782971140988089.correct : P2194782971140988089.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A081675, Nat.add_sub_cancel, A081675.P2194782971140988089.a, A081675.P8186524642895910958.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A081675, Nat.add_sub_cancel, A081675.P2194782971140988089.a, A081675.P8186524642895910958.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081675

/-! ## A081675.P8186524642895910958

`11*a(n-1)-38*a(n-2)+40*a(n-3)` with `a(0)=0, a(1)=1, a(2)=8`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081675

/-- `11*a(n-1)-38*a(n-2)+40*a(n-3)` -/
def P8186524642895910958.Spec : Prop :=
  ∀ n, P8186524642895910958.a n = A081675 n

theorem P8186524642895910958.correct : P8186524642895910958.Spec := by
  intro n
  simp only [A081675]

end A081675

/-! ## A081675.P12593916544209526684

`A082685(n)-A007582(n)`
-/

namespace A081675.P12593916544209526684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082685 n - A007582 n

end

end A081675.P12593916544209526684

namespace A081675

/-- `A082685(n)-A007582(n)` -/
def P12593916544209526684.Spec : Prop :=
  ∀ n, P12593916544209526684.a n = A081675 n

end A081675

/-! ## A081675.P13117966221898095005

`A082685(n)-Δ[A007581(n)]`
-/

namespace A081675.P13117966221898095005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082685 n - (f1 (n + 1) - f1 n)

end

end A081675.P13117966221898095005

namespace A081675

/-- `A082685(n)-Δ[A007581(n)]` -/
def P13117966221898095005.Spec : Prop :=
  ∀ n, P13117966221898095005.a n = A081675 n

end A081675

/-! ## A081675.P15262303415775226007

`5*a(n-1)+A007581(n)-A124303(n)` with `a(0)=0, a(1)=1`
-/

namespace A081675.P15262303415775226007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  5 * a (n - 1) + (A007581 n - A124303 n)

end

end A081675.P15262303415775226007

namespace A081675

/-- `5*a(n-1)+A007581(n)-A124303(n)` -/
def P15262303415775226007.Spec : Prop :=
  ∀ n, P15262303415775226007.a n = A081675 n

end A081675

/-! ## A081675.P7421101874355987900

`A074600(n)-(A247313(n)+A007582(n))`
-/

namespace A081675.P7421101874355987900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074600 n - (A247313 n + A007582 n)

end

end A081675.P7421101874355987900

namespace A081675

/-- `A074600(n)-(A247313(n)+A007582(n))` -/
def P7421101874355987900.Spec : Prop :=
  ∀ n, P7421101874355987900.a n = A081675 n

end A081675

/-! ## A081675.P9667260433524484594

`2*A247313(n)-A000079(n)-A007582(n)`
-/

namespace A081675.P9667260433524484594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247313 n - A000079 n - A007582 n

end

end A081675.P9667260433524484594

namespace A081675

/-- `2*A247313(n)-A000079(n)-A007582(n)` -/
def P9667260433524484594.Spec : Prop :=
  ∀ n, P9667260433524484594.a n = A081675 n

end A081675

/-!
# A081676: Largest perfect power <= n.

The programs for A081676, the canonical program `A081676.P13265011736225947459` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081676 has offset 1).

The definition of A081676 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069584, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A081676.P13265011736225947459

`n+1-A069584(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A081676

/-- `n+1-A069584(n+1)` -/
def P13265011736225947459.Spec : Prop :=
  ∀ n, P13265011736225947459.a n = A081676 (n + 1)

theorem P13265011736225947459.correct : P13265011736225947459.Spec := by
  intro n
  simp only [A081676, Nat.add_sub_cancel]

end A081676

/-! ## A081676.P860909331993016374

`A001597(A069623(n+1))`
-/

namespace A081676.P860909331993016374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A069623 (n + 1)).toNat

end

end A081676.P860909331993016374

namespace A081676

/-- `A001597(A069623(n+1))` -/
def P860909331993016374.Spec : Prop :=
  ∀ n, P860909331993016374.a n = A081676 (n + 1)

end A081676

/-! ## A081676.P6875472538021913528

`A001597(∑[A075802(n+1)])`
-/

namespace A081676.P6875472538021913528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A081676.P6875472538021913528

namespace A081676

/-- `A001597(∑[A075802(n+1)])` -/
def P6875472538021913528.Spec : Prop :=
  ∀ n, P6875472538021913528.a n = A081676 (n + 1)

end A081676

/-! ## A081676.P793312687069629477

`A001597(A072292(n+1)+1)`
-/

namespace A081676.P793312687069629477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A072292 (n + 1) + 1).toNat

end

end A081676.P793312687069629477

namespace A081676

/-- `A001597(A072292(n+1)+1)` -/
def P793312687069629477.Spec : Prop :=
  ∀ n, P793312687069629477.a n = A081676 (n + 1)

end A081676

/-! ## A081676.P1659503902947718477

`abs(A157985(∑[A075802(n+1)]))`
-/

namespace A081676.P1659503902947718477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157985 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A081676.P1659503902947718477

namespace A081676

/-- `abs(A157985(∑[A075802(n+1)]))` -/
def P1659503902947718477.Spec : Prop :=
  ∀ n, P1659503902947718477.a n = A081676 (n + 1)

end A081676

/-! ## A081676.P7209545681459041973

`A001597(2-A132351(n+1)+n)`
-/

namespace A081676.P7209545681459041973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (2 - A132351 (n + 1) + (n : ℤ)).toNat

end

end A081676.P7209545681459041973

namespace A081676

/-- `A001597(2-A132351(n+1)+n)` -/
def P7209545681459041973.Spec : Prop :=
  ∀ n, P7209545681459041973.a n = A081676 (n + 1)

end A081676

/-! ## A081676.P9274767671243865673

`A001597(∑[char[A001597(n+1)-1]])`
-/

namespace A081676.P9274767671243865673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081676.P9274767671243865673

namespace A081676

/-- `A001597(∑[char[A001597(n+1)-1]])` -/
def P9274767671243865673.Spec : Prop :=
  ∀ n, P9274767671243865673.a n = A081676 (n + 1)

end A081676

/-! ## A081676.P2722801663445895972

`A001597(A076411(n+2))`
-/

namespace A081676.P2722801663445895972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A076411 (n + 2)).toNat

end

end A081676.P2722801663445895972

namespace A081676

/-- `A001597(A076411(n+2))` -/
def P2722801663445895972.Spec : Prop :=
  ∀ n, P2722801663445895972.a n = A081676 (n + 1)

end A081676

/-! ## A081676.P2669393023739595615

`A001694(A076411(A377468(n+2)))`
-/

namespace A081676.P2669393023739595615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A076411 (A377468 (n + 2)).toNat).toNat

end

end A081676.P2669393023739595615

namespace A081676

/-- `A001694(A076411(A377468(n+2)))` -/
def P2669393023739595615.Spec : Prop :=
  ∀ n, P2669393023739595615.a n = A081676 (n + 1)

end A081676

/-!
# A081677: Numbers n such that 2*10^n + 3 is prime.

The programs for A081677, there is no canonical definition to state claims against.
-/

/-! ## A081677.P13352199427998315194

`A101951(round(sqrt(n²+1)))+1-A000007(n)`
-/

namespace A081677.P13352199427998315194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101951 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + (1 - A000007 n)

end

end A081677.P13352199427998315194

/-! ## A081677.P2513784013068668142

`A101951(A028310(n))+A057427(n)`
-/

namespace A081677.P2513784013068668142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101951 (A028310 n).toNat + A057427 n

end

end A081677.P2513784013068668142

/-! ## A081677.P8640628493382382767

`A178334(n)+A101951(A028310(n))`
-/

namespace A081677.P8640628493382382767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A101951 (A028310 n).toNat

end

end A081677.P8640628493382382767

/-! ## A081677.P16754533764629945886

`A101951(A028310(n))+A000040(n+1)%2`
-/

namespace A081677.P16754533764629945886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101951 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A081677.P16754533764629945886

/-! ## A081677.P16397141342338016612

`A101951(A028310(n))+A008683(2*A000040(n+1))`
-/

namespace A081677.P16397141342338016612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101951 (A028310 n).toNat + A008683 (2 * A000040 (n + 1)).toNat

end

end A081677.P16397141342338016612

/-!
# A081678: a(n) = (4*6^n - 3*5^n - 3^n)/6.

The programs for A081678, the canonical program `A081678.P12997501291029485609` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081678 has offset 0).

The definition of A081678 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*6^n-3*5^n-3^n)/6` (program `A081678.P3143693991771342373`, by `A081678.P3143693991771342373.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081678.P12997501291029485609

`14*a(n-1)-63*a(n-2)+90*a(n-3)` with `a(0)=0, a(1)=1, a(2)=10`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081678

/-- `14*a(n-1)-63*a(n-2)+90*a(n-3)` -/
def P12997501291029485609.Spec : Prop :=
  ∀ n, P12997501291029485609.a n = A081678 n

theorem P12997501291029485609.correct : P12997501291029485609.Spec := by
  intro n
  simp only [A081678]

end A081678

/-! ## A081678.P3143693991771342373

`(4*6^n-3*5^n-3^n)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081678.P3143693991771342373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * 6 ^ n : ℤ) - (3 * 5 ^ n : ℤ) - (3 ^ n : ℤ) : ℚ) / 6

end

end A081678.P3143693991771342373

namespace A081678

/-- `(4*6^n-3*5^n-3^n)/6` -/
def P3143693991771342373.Spec : Prop :=
  ∀ n, P3143693991771342373.a n = (A081678 n : ℚ)

theorem P3143693991771342373.correct : P3143693991771342373.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A081678, Nat.add_sub_cancel, A081678.P3143693991771342373.a, A081678.P12997501291029485609.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A081678, Nat.add_sub_cancel, A081678.P3143693991771342373.a, A081678.P12997501291029485609.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081678

/-! ## A081678.P1545958865878372619

`abs((5^n-3^n)/2-A060589(n))`
-/

namespace A081678.P1545958865878372619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((5 ^ n : ℤ) - (3 ^ n : ℤ) : ℚ) / 2 - (A060589 n : ℚ)|

end

end A081678.P1545958865878372619

namespace A081678

/-- `abs((5^n-3^n)/2-A060589(n))` -/
def P1545958865878372619.Spec : Prop :=
  ∀ n, P1545958865878372619.a n = (A081678 n : ℚ)

end A081678

/-!
# A081679: a(n) = (6^n - 5^n - 4^n - 3^n + 4*2^n)/2.

The programs for A081679, the canonical program `A081679.P9118097389988101916` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081679 has offset 0).

The definition of A081679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081679.P9118097389988101916

`(6^n-5^n-4^n-3^n+4*2^n)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081679

/-- `(6^n-5^n-4^n-3^n+4*2^n)/2` -/
def P9118097389988101916.Spec : Prop :=
  ∀ n, P9118097389988101916.a n = (A081679 n : ℚ)

end A081679

/-! ## A081679.P7990284777995100044

`A000079(n)+A083328(n)-A020522(n)`
-/

namespace A081679.P7990284777995100044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A083328 n - A020522 n)

end

end A081679.P7990284777995100044

namespace A081679

/-- `A000079(n)+A083328(n)-A020522(n)` -/
def P7990284777995100044.Spec : Prop :=
  ∀ n, P7990284777995100044.a n = A081679 n

end A081679

/-! ## A081679.P1703999466870524281

`∑[A011782(n)]+A083328(n)-A020522(n)`
-/

namespace A081679.P1703999466870524281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A083328 n - A020522 n)

end

end A081679.P1703999466870524281

namespace A081679

/-- `∑[A011782(n)]+A083328(n)-A020522(n)` -/
def P1703999466870524281.Spec : Prop :=
  ∀ n, P1703999466870524281.a n = A081679 n

end A081679

/-! ## A081679.P6044832966528958608

`Δ[A000051(n)]+A083328(n)-A020522(n)`
-/

namespace A081679.P6044832966528958608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A083328 n - A020522 n)

end

end A081679.P6044832966528958608

namespace A081679

/-- `Δ[A000051(n)]+A083328(n)-A020522(n)` -/
def P6044832966528958608.Spec : Prop :=
  ∀ n, P6044832966528958608.a n = A081679 n

end A081679

/-! ## A081679.P2139011164866394301

`A016116(2*n)-(A020522(n)-A083328(n))`
-/

namespace A081679.P2139011164866394301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) - (A020522 n - A083328 n)

end

end A081679.P2139011164866394301

namespace A081679

/-- `A016116(2*n)-(A020522(n)-A083328(n))` -/
def P2139011164866394301.Spec : Prop :=
  ∀ n, P2139011164866394301.a n = A081679 n

end A081679

/-!
# A081680: a(n) = (7^n - 6^n - 5^n - 4^n + 4*3^n)/2.

The programs for A081680, the canonical program `A081680.P17287901460394307067` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081680 has offset 0).

The definition of A081680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081680.P17287901460394307067

`(7^n-6^n-5^n-4^n+4*3^n)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081680

/-- `(7^n-6^n-5^n-4^n+4*3^n)/2` -/
def P17287901460394307067.Spec : Prop :=
  ∀ n, P17287901460394307067.a n = (A081680 n : ℚ)

end A081680

/-! ## A081680.P8430216792960359921

`abs((A081686(n)+A000244(n))/2)`
-/

namespace A081680.P8430216792960359921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A081686 n + A000244 n : ℚ) / 2|

end

end A081680.P8430216792960359921

namespace A081680

/-- `abs((A081686(n)+A000244(n))/2)` -/
def P8430216792960359921.Spec : Prop :=
  ∀ n, P8430216792960359921.a n = (A081680 n : ℚ)

end A081680

/-! ## A081680.P7311712498872302846

`(A081686(n)+A000244(n))/2*char[A106619(n)]`
-/

namespace A081680.P7311712498872302846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081686 n + A000244 n : ℚ) / 2 * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

end

end A081680.P7311712498872302846

namespace A081680

/-- `(A081686(n)+A000244(n))/2*char[A106619(n)]` -/
def P7311712498872302846.Spec : Prop :=
  ∀ n, P7311712498872302846.a n = (A081680 n : ℚ)

end A081680

/-! ## A081680.P10698528429664061275

`(A081686(n)+A000244(n))/2*A000108(C(2, n+2))`
-/

namespace A081680.P10698528429664061275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081686 n + A000244 n : ℚ) / 2 * (A000108 (Nat.choose 2 (n + 2)) : ℚ)

end

end A081680.P10698528429664061275

namespace A081680

/-- `(A081686(n)+A000244(n))/2*A000108(C(2, n+2))` -/
def P10698528429664061275.Spec : Prop :=
  ∀ n, P10698528429664061275.a n = (A081680 n : ℚ)

end A081680

/-! ## A081680.P2822952817410812807

`(A081686(n)+A000244(n))/2*A007318(A000217(n))`
-/

namespace A081680.P2822952817410812807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081686 n + A000244 n : ℚ) / 2 * (A007318 (A000217 n).toNat : ℚ)

end

end A081680.P2822952817410812807

namespace A081680

/-- `(A081686(n)+A000244(n))/2*A007318(A000217(n))` -/
def P2822952817410812807.Spec : Prop :=
  ∀ n, P2822952817410812807.a n = (A081680 n : ℚ)

end A081680

/-! ## A081680.P9476403364455254878

`(A081686(n)+A000244(n))/2*A001222(A205511(n+1))`
-/

namespace A081680.P9476403364455254878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081686 n + A000244 n : ℚ) / 2 * (A001222 (A205511 (n + 1)).toNat : ℚ)

end

end A081680.P9476403364455254878

namespace A081680

/-- `(A081686(n)+A000244(n))/2*A001222(A205511(n+1))` -/
def P9476403364455254878.Spec : Prop :=
  ∀ n, P9476403364455254878.a n = (A081680 n : ℚ)

end A081680

/-!
# A081681: a(n) = (8^n - 7^n - 6^n - 5^n + 4*4^n)/2.

The programs for A081681, the canonical program `A081681.P14946750708437025909` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081681 has offset 0).

The definition of A081681 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081681.P14946750708437025909

`(8^n-7^n-6^n-5^n+4*4^n)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081681

/-- `(8^n-7^n-6^n-5^n+4*4^n)/2` -/
def P14946750708437025909.Spec : Prop :=
  ∀ n, P14946750708437025909.a n = (A081681 n : ℚ)

end A081681

/-! ## A081681.P5658380215865655083

`A123108(A081687(n)+A000302(n))`
-/

namespace A081681.P5658380215865655083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A081687 n + A000302 n).toNat

end

end A081681.P5658380215865655083

namespace A081681

/-- `A123108(A081687(n)+A000302(n))` -/
def P5658380215865655083.Spec : Prop :=
  ∀ n, P5658380215865655083.a n = A081681 n

end A081681

/-!
# A081682: a(n) = (9^n - 8^n - 7^n - 6^n + 4*5^n)/2.

The programs for A081682, the canonical program `A081682.P5336194012688664758` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081682 has offset 0).

The definition of A081682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081682.P5336194012688664758

`(9^n-8^n-7^n-6^n+4*5^n)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081682

/-- `(9^n-8^n-7^n-6^n+4*5^n)/2` -/
def P5336194012688664758.Spec : Prop :=
  ∀ n, P5336194012688664758.a n = (A081682 n : ℚ)

end A081682

/-!
# A081683: a(n) = (10^n - 9^n - 8^n - 7^n + 4*6^n)/2.

The programs for A081683, the canonical program `A081683.P8900529845029785071` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081683 has offset 0).

The definition of A081683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081683.P8900529845029785071

`(10^n-9^n-8^n-7^n+4*6^n)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081683

/-- `(10^n-9^n-8^n-7^n+4*6^n)/2` -/
def P8900529845029785071.Spec : Prop :=
  ∀ n, P8900529845029785071.a n = (A081683 n : ℚ)

end A081683

/-!
# A081684: a(n) = 5^n - 4^n - 3^n - 2^n + 3.

The programs for A081684, the canonical program `A081684.P12910063701154216701` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081684 has offset 0).

The definition of A081684 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-4^n-3^n-2^n+3` (program `A081684.P12910063701154216701`, by `A081684.P12910063701154216701.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081684.P12910063701154216701

`5^n-4^n-3^n-2^n+3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081684

/-- `5^n-4^n-3^n-2^n+3` -/
def P12910063701154216701.Spec : Prop :=
  ∀ n, P12910063701154216701.a n = A081684 n

theorem P12910063701154216701.correct : P12910063701154216701.Spec := by
  intro n
  simp only [A081684]

end A081684

/-! ## A081684.P15869009190543607255

`or(1, A137787(n)+2)`
-/

namespace A081684.P15869009190543607255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A137787 n + 2)

end

end A081684.P15869009190543607255

namespace A081684

/-- `or(1, A137787(n)+2)` -/
def P15869009190543607255.Spec : Prop :=
  ∀ n, P15869009190543607255.a n = A081684 n

end A081684

/-! ## A081684.P50818235734194411

`or(1, A147976(n+1)+3)`
-/

namespace A081684.P50818235734194411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147976 (n + 1) + 3)

end

end A081684.P50818235734194411

namespace A081684

/-- `or(1, A147976(n+1)+3)` -/
def P50818235734194411.Spec : Prop :=
  ∀ n, P50818235734194411.a n = A081684 n

end A081684

/-! ## A081684.P6897049468681586215

`or(1, 2*(A083327(n)-A000244(n)+1))`
-/

namespace A081684.P6897049468681586215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * (A083327 n - A000244 n + 1))

end

end A081684.P6897049468681586215

namespace A081684

/-- `or(1, 2*(A083327(n)-A000244(n)+1))` -/
def P6897049468681586215.Spec : Prop :=
  ∀ n, P6897049468681586215.a n = A081684 n

end A081684

/-! ## A081684.P5731850244309942640

`(A137787(n)+3)%A298333(n+1)`
-/

namespace A081684.P5731850244309942640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137787 n + 3) (A298333 (n + 1))

end

end A081684.P5731850244309942640

namespace A081684

/-- `(A137787(n)+3)%A298333(n+1)` -/
def P5731850244309942640.Spec : Prop :=
  ∀ n, P5731850244309942640.a n = A081684 n

end A081684

/-! ## A081684.P12515527726865563264

`(A137787(n)+3)^A285097(A044399(n+1))`
-/

namespace A081684.P12515527726865563264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137787 n + 3 : ℚ) ^ (A285097 (A044399 (n + 1)).toNat : ℤ)

end

end A081684.P12515527726865563264

namespace A081684

/-- `(A137787(n)+3)^A285097(A044399(n+1))` -/
def P12515527726865563264.Spec : Prop :=
  ∀ n, P12515527726865563264.a n = (A081684 n : ℚ)

end A081684

/-!
# A081685: a(n) = 6^n - 5^n - 4^n - 3^n + 3*2^n.

The programs for A081685, the canonical program `A081685.P8570013956941454553` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081685 has offset 0).

The definition of A081685 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n-5^n-4^n-3^n+3*2^n` (program `A081685.P8570013956941454553`, by `A081685.P8570013956941454553.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081685.P8570013956941454553

`6^n-5^n-4^n-3^n+3*2^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081685

/-- `6^n-5^n-4^n-3^n+3*2^n` -/
def P8570013956941454553.Spec : Prop :=
  ∀ n, P8570013956941454553.a n = A081685 n

theorem P8570013956941454553.correct : P8570013956941454553.Spec := by
  intro n
  simp only [A081685]

end A081685

/-!
# A081686: a(n) = 7^n - 6^n - 5^n - 4^n + 3*3^n.

The programs for A081686, the canonical program `A081686.P542648342820146394` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081686 has offset 0).

The definition of A081686 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-6^n-5^n-4^n+3*3^n` (program `A081686.P542648342820146394`, by `A081686.P542648342820146394.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081686.P542648342820146394

`7^n-6^n-5^n-4^n+3*3^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081686

/-- `7^n-6^n-5^n-4^n+3*3^n` -/
def P542648342820146394.Spec : Prop :=
  ∀ n, P542648342820146394.a n = A081686 n

theorem P542648342820146394.correct : P542648342820146394.Spec := by
  intro n
  simp only [A081686]

end A081686

/-!
# A081687: a(n) = 8^n - 7^n - 6^n - 5^n + 3*4^n.

The programs for A081687, the canonical program `A081687.P11118698002796217626` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081687 has offset 0).

The definition of A081687 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n-7^n-6^n-5^n+3*4^n` (program `A081687.P11118698002796217626`, by `A081687.P11118698002796217626.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081687.P11118698002796217626

`8^n-7^n-6^n-5^n+3*4^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081687

/-- `8^n-7^n-6^n-5^n+3*4^n` -/
def P11118698002796217626.Spec : Prop :=
  ∀ n, P11118698002796217626.a n = A081687 n

theorem P11118698002796217626.correct : P11118698002796217626.Spec := by
  intro n
  simp only [A081687]

end A081687

/-!
# A081688: 0 followed by A030124 - 1.

The programs for A081688, there is no canonical definition to state claims against.
-/

/-! ## A081688.P419379350889985644

`comp[A081689(n+1)]`
-/

namespace A081688.P419379350889985644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081688.P419379350889985644

/-! ## A081688.P12716589627525687287

`comp[∑[A030124(n+1)]]`
-/

namespace A081688.P12716589627525687287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030124 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081688.P12716589627525687287

/-! ## A081688.P11104449706040150407

`comp[A005228(n+2)-1]`
-/

namespace A081688.P11104449706040150407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081688.P11104449706040150407

/-! ## A081688.P5601418796798085412

`comp[∑[A167151(A005408(n)+1)]]`
-/

namespace A081688.P5601418796798085412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167151 (A005408 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081688.P5601418796798085412

/-! ## A081688.P3944227793535491595

`comp[A167151(A005408(n+1))-1]`
-/

namespace A081688.P3944227793535491595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167151 (A005408 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081688.P3944227793535491595

/-! ## A081688.P10886945883323049544

`record[n*(1-A232747(n+1))]`
-/

namespace A081688.P10886945883323049544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A232747 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081688.P10886945883323049544

/-! ## A081688.P5309365808490692969

`eq[A000007(n), A232747(n+1)]`
-/

namespace A081688.P5309365808490692969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232747 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081688.P5309365808490692969

/-! ## A081688.P5724692541211138975

`eq[A151878(n), A232747(n+1)]`
-/

namespace A081688.P5724692541211138975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232747 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081688.P5724692541211138975

/-! ## A081688.P937445868611646339

`eq[A151909(n), A232747(n+1)]`
-/

namespace A081688.P937445868611646339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232747 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081688.P937445868611646339

/-! ## A081688.P13761294923314700147

`eq[A154272(n+1), A232747(n+1)]`
-/

namespace A081688.P13761294923314700147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232747 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081688.P13761294923314700147

/-!
# A081689: A005228 - 1.

The programs for A081689, there is no canonical definition to state claims against.
-/

/-! ## A081689.P8155718808131185170

`∑[A081688(n)]+n`
-/

namespace A081689.P8155718808131185170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A081689.P8155718808131185170

/-! ## A081689.P8493456320772808756

`∑[comp[Δ[A167151(n)]]]`
-/

namespace A081689.P8493456320772808756
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167151 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081689.P8493456320772808756

/-! ## A081689.P2898692524568944462

`A005228(n+1)-1`
-/

namespace A081689.P2898692524568944462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) - 1

end

end A081689.P2898692524568944462

/-! ## A081689.P13467647543582664593

`∑[comp[A167151(comp[2*n])]]`
-/

namespace A081689.P13467647543582664593
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167151 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081689.P13467647543582664593

/-! ## A081689.P2215238184011479129

`A109592(n+1)/2-1`
-/

namespace A081689.P2215238184011479129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109592 (n + 1) : ℚ) / 2 - 1

end

end A081689.P2215238184011479129

/-! ## A081689.P12214409572949683070

`A065130(n+1)+A000096(n)`
-/

namespace A081689.P12214409572949683070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065130 (n + 1) + A000096 n

end

end A081689.P12214409572949683070

/-! ## A081689.P5403555832075263158

`A061577(n+1)-A054977(n)`
-/

namespace A081689.P5403555832075263158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061577 (n + 1) - A054977 n

end

end A081689.P5403555832075263158

/-! ## A081689.P8383663269669210264

`A294397(n)-A019590(n+1)`
-/

namespace A081689.P8383663269669210264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294397 n - A019590 (n + 1)

end

end A081689.P8383663269669210264

/-! ## A081689.P11214695922589947377

`A157928(n)+A294397(n)-1`
-/

namespace A081689.P11214695922589947377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + (A294397 n - 1)

end

end A081689.P11214695922589947377

/-! ## A081689.P10991791259593501858

`∑[comp[A005228(A000027(n+1))]]`
-/

namespace A081689.P10991791259593501858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (A000027 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081689.P10991791259593501858

/-! ## A081689.P6433053873235209380

`A061577(n+1)-(A000007(n)+1)`
-/

namespace A081689.P6433053873235209380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061577 (n + 1) - (A000007 n + 1)

end

end A081689.P6433053873235209380

/-! ## A081689.P12566057746785108358

`A056738(n+1)-A225687(n+1)`
-/

namespace A081689.P12566057746785108358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056738 (n + 1) - A225687 (n + 1)

end

end A081689.P12566057746785108358

/-! ## A081689.P6033465900264145544

`A065130(n+1)+A000217(n)+n`
-/

namespace A081689.P6033465900264145544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065130 (n + 1) + (A000217 n + (n : ℤ))

end

end A081689.P6033465900264145544

/-! ## A081689.P1106094995726467460

`∑[A030124(n+1)]-A030124(n+1)`
-/

namespace A081689.P1106094995726467460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030124 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A030124 (n + 1)

end

end A081689.P1106094995726467460

/-! ## A081689.P7109778851686889462

`A061577(n+1)-A030124(n+1)/A061578(n+1)`
-/

namespace A081689.P7109778851686889462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061577 (n + 1) : ℚ) - (A030124 (n + 1) : ℚ) / (A061578 (n + 1) : ℚ)

end

end A081689.P7109778851686889462

/-! ## A081689.P13780765457534762840

`A057428(n+1)+A005228(n+1)`
-/

namespace A081689.P13780765457534762840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A005228 (n + 1)

end

end A081689.P13780765457534762840

/-! ## A081689.P13270771238864308936

`A065130(n+1)-A317301(2*n)`
-/

namespace A081689.P13270771238864308936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065130 (n + 1) - A317301 (2 * n)

end

end A081689.P13270771238864308936

/-! ## A081689.P7551263513820074722

`A061577(n+1)-A014963(4*n+2)`
-/

namespace A081689.P7551263513820074722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061577 (n + 1) - A014963 (4 * n + 2)

end

end A081689.P7551263513820074722

/-! ## A081689.P9497224520576413278

`∑[A167151(2*n)]`
-/

namespace A081689.P9497224520576413278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167151 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081689.P9497224520576413278

/-!
# A081690: From P-positions in a certain game.

The programs for A081690, the canonical program `A081690.P12557663006376812885` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081690 has offset 0).

The definition of A081690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081690.P12557663006376812885

`comp[A081691(n+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081690

/-- `comp[A081691(n+1)]` -/
def P12557663006376812885.Spec : Prop :=
  ∀ n, (P12557663006376812885.a n : ℤ) = A081690 n

theorem P12557663006376812885.correct : P12557663006376812885.Spec := by
  intro n
  simp only [A081690]

end A081690

/-! ## A081690.P3404979618265581058

`∪[n², comp[A081691(n)]]`
-/

namespace A081690.P3404979618265581058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081691 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A081690.P3404979618265581058

namespace A081690

/-- `∪[n², comp[A081691(n)]]` -/
def P3404979618265581058.Spec : Prop :=
  ∀ n, (P3404979618265581058.a n : ℤ) = A081690 n

end A081690

/-! ## A081690.P9444126545708577638

`A081691(n)-A000225(n)`
-/

namespace A081690.P9444126545708577638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081691 n - A000225 n

end

end A081690.P9444126545708577638

namespace A081690

/-- `A081691(n)-A000225(n)` -/
def P9444126545708577638.Spec : Prop :=
  ∀ n, P9444126545708577638.a n = A081690 n

end A081690

/-! ## A081690.P12090916036072808068

`floor(log2(2*∑{digits}[n, #]+(1-2^n)*(1-n)+1))`
-/

namespace A081690.P12090916036072808068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (((2 * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + ((1 - (2 ^ n : ℤ)) * (1 - (n : ℤ)) + 1)).toNat

end

end A081690.P12090916036072808068

namespace A081690

/-- `floor(log2(2*∑{digits}[n, #]+(1-2^n)*(1-n)+1))` -/
def P12090916036072808068.Spec : Prop :=
  ∀ n, (P12090916036072808068.a n : ℤ) = A081690 n

end A081690

/-! ## A081690.P16777200766586482811

`lt[A337256(A366211(n+1)), A366211(n+1)]`
-/

namespace A081690.P16777200766586482811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337256 (A366211 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366211 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A081690.P16777200766586482811

namespace A081690

/-- `lt[A337256(A366211(n+1)), A366211(n+1)]` -/
def P16777200766586482811.Spec : Prop :=
  ∀ n, (P16777200766586482811.a n : ℤ) = A081690 n

end A081690

/-!
# A081691: From P-positions in a certain game.

The programs for A081691, the canonical program `A081691.P12019189109577005136` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081691 has offset 0).

The definition of A081691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081691.P12019189109577005136

`2^n+comp[comp[2^n]+2^n-3]-1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081691

/-- `2^n+comp[comp[2^n]+2^n-3]-1` -/
def P12019189109577005136.Spec : Prop :=
  ∀ n, P12019189109577005136.a n = A081691 n

theorem P12019189109577005136.correct : P12019189109577005136.Spec := by
  intro n
  simp only [A081691]

end A081691

/-! ## A081691.P5982665169900526201

`abs(A081690(n)+2^n-1)`
-/

namespace A081691.P5982665169900526201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081690 n + ((2 ^ n : ℤ) - 1)|

end

end A081691.P5982665169900526201

namespace A081691

/-- `abs(A081690(n)+2^n-1)` -/
def P5982665169900526201.Spec : Prop :=
  ∀ n, P5982665169900526201.a n = A081691 n

end A081691

/-! ## A081691.P9471911974846023105

`comp[A081690(n+1)]`
-/

namespace A081691.P9471911974846023105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081691.P9471911974846023105

namespace A081691

/-- `comp[A081690(n+1)]` -/
def P9471911974846023105.Spec : Prop :=
  ∀ n, (P9471911974846023105.a n : ℤ) = A081691 n

end A081691

/-! ## A081691.P274004610258031111

`A289207(A000225(n)+comp[∑[n-2]]+1)`
-/

namespace A081691.P274004610258031111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A000225 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ)).toNat

end

end A081691.P274004610258031111

namespace A081691

/-- `A289207(A000225(n)+comp[∑[n-2]]+1)` -/
def P274004610258031111.Spec : Prop :=
  ∀ n, P274004610258031111.a n = A081691 n

end A081691

/-! ## A081691.P4008887891161046130

`A023443(A000079(n)+comp[comp[2^n]+2^n-3])`
-/

namespace A081691.P4008887891161046130
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) + ((2 ^ n : ℤ) - 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A000079 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)).toNat

end

end A081691.P4008887891161046130

namespace A081691

/-- `A023443(A000079(n)+comp[comp[2^n]+2^n-3])` -/
def P4008887891161046130.Spec : Prop :=
  ∀ n, P4008887891161046130.a n = A081691 n

end A081691

/-!
# A081692: Define two sequences by A_n = mex{A_i,B_i : 0 <= i < n}, B_n = B_{n-1} + (A_n-A_{n-1})(A_n-A_{n-1}+1), where the mex of a set is the smallest nonnegative integer not in the set. Sequence gives A_n. B_n is in A081693.

The programs for A081692, there is no canonical definition to state claims against.
-/

/-! ## A081692.P9172162382760980271

`comp[A081693(n+1)]`
-/

namespace A081692.P9172162382760980271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081692.P9172162382760980271

/-! ## A081692.P17767777076824795040

`comp[2*A285429(n+1)]`
-/

namespace A081692.P17767777076824795040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081692.P17767777076824795040

/-! ## A081692.P685204436132104169

`comp[A081693(n)-floor(acot(n))]`
-/

namespace A081692.P685204436132104169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081693 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081692.P685204436132104169

/-! ## A081692.P17908455889645605498

`comp[A285428(2*n+1)-n]`
-/

namespace A081692.P17908455889645605498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285428 (2 * n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081692.P17908455889645605498

/-! ## A081692.P11390668668773758398

`(comp[A285428(n+1)]+n)/2`
-/

namespace A081692.P11390668668773758398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285428 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n : ℚ) / 2

end

end A081692.P11390668668773758398

/-! ## A081692.P6064649957968168084

`eq[0, A284683(round(sqrt(n²+1)))]`
-/

namespace A081692.P6064649957968168084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284683 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081692.P6064649957968168084

/-! ## A081692.P13962288954516231894

`lt[A284683(A004277(n)-n), 1]`
-/

namespace A081692.P13962288954516231894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284683 (A004277 n - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A081692.P13962288954516231894

/-!
# A081693: Define two sequences by A_n = mex{A_i,B_i : 0 <= i < n}, B_n = B_{n-1} + (A_n-A_{n-1})(A_n-A_{n-1}+1), where the mex of a set is the smallest nonnegative integer not in the set. Sequence gives B_n. A_n is in A081692.

The programs for A081693, there is no canonical definition to state claims against.
-/

/-! ## A081693.P11009725794152067449

`2*comp[A285428(n+1)]`
-/

namespace A081693.P11009725794152067449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081693.P11009725794152067449

/-! ## A081693.P16466054579564933181

`2*(2*A081692(n)-n)`
-/

namespace A081693.P16466054579564933181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A081692 n - (n : ℤ))

end

end A081693.P16466054579564933181

/-! ## A081693.P1071602556627900439

`A005843(comp[A285428(n+1)])`
-/

namespace A081693.P1071602556627900439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285428 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A081693.P1071602556627900439

/-! ## A081693.P7784148557944483021

`A005843(2*A081692(n)-n)`
-/

namespace A081693.P7784148557944483021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (2 * A081692 n - (n : ℤ)).toNat

end

end A081693.P7784148557944483021

/-! ## A081693.P4318085739030107735

`record[A285428(n+1)-A160413(n+1)]`
-/

namespace A081693.P4318085739030107735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285428 (n + 1) - A160413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081693.P4318085739030107735

/-! ## A081693.P5886798784817161174

`comp[A081692(n+1)]`
-/

namespace A081693.P5886798784817161174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081693.P5886798784817161174

/-! ## A081693.P17864044523258234359

`record[(n+1)*A284683(n+1)]`
-/

namespace A081693.P17864044523258234359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A284683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081693.P17864044523258234359

/-! ## A081693.P14929204339239343891

`lt[n%2, A284683(round(acot(n)+n))]`
-/

namespace A081693.P14929204339239343891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284683 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A081693.P14929204339239343891

/-! ## A081693.P13637497942635699523

`A014681(record[n*A284683(n+1)])`
-/

namespace A081693.P13637497942635699523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A284683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081693.P13637497942635699523

/-!
# A081694: From P-positions in a certain game. Pile 1 tokens for select function (1+(-)^(y1+1))x1/2.

The programs for A081694, there is no canonical definition to state claims against.
-/

/-! ## A081694.P8497385276243587514

`comp[A081695(n+2)]`
-/

namespace A081694.P8497385276243587514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081695 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081694.P8497385276243587514

/-! ## A081694.P11868000014457028685

`eq[A002307(A325789(n+1)), A267773(n)]`
-/

namespace A081694.P11868000014457028685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002307 (A325789 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267773 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081694.P11868000014457028685

/-! ## A081694.P14759346208173698991

`lt[char[A081695(n+1)], A325789(n+2)]`
-/

namespace A081694.P14759346208173698991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081695 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325789 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A081694.P14759346208173698991

/-! ## A081694.P8055585226524928176

`lt[A075498(n+1), A374526(n+1)]`
-/

namespace A081694.P8055585226524928176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374526 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A081694.P8055585226524928176

/-! ## A081694.P15875772095864509273

`lt[A185734(n+1), A374526(n+1)]`
-/

namespace A081694.P15875772095864509273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374526 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A081694.P15875772095864509273

/-!
# A081695: From P-positions in a certain game. Pile 2 tokens for select function (1+(-)^(y1+1))x1/2.

The programs for A081695, there is no canonical definition to state claims against.
-/

/-! ## A081695.P13878819018968478284

`∑[gcd(A001951(n), A267391(n+1))]`
-/

namespace A081695.P13878819018968478284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001951 n) (A267391 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081695.P13878819018968478284

/-! ## A081695.P9929915016509392422

`eq[0, A334361(A214920(2*n+3))]`
-/

namespace A081695.P9929915016509392422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334361 (A214920 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081695.P9929915016509392422

/-! ## A081695.P18282945072170509273

`lt[A321044(n), xor(2, A325789(n+1))]`
-/

namespace A081695.P18282945072170509273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A325789 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A081695.P18282945072170509273

/-! ## A081695.P17906556848046799562

`lt[A374526(n+1), A250120(A287548(n+1))]`
-/

namespace A081695.P17906556848046799562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A287548 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A081695.P17906556848046799562

/-!
# A081696: Expansion of 1/(x + sqrt(1-4x)).

The programs for A081696, the canonical program `A081696.P144682512311677634` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081696 has offset 0).

The definition of A081696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081696.P2884103783386369890

`A357654(3*n)`
-/

namespace A081696.P2884103783386369890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357654 (3 * n)

end

end A081696.P2884103783386369890

namespace A081696

/-- `A357654(3*n)` -/
def P2884103783386369890.Spec : Prop :=
  ∀ n, P2884103783386369890.a n = A081696 n

end A081696

/-! ## A081696.P14887350265923174401

`2*A109262(n)-a(n-1)` with `a(0)=1`
-/

namespace A081696.P14887350265923174401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A109262 n - a (n - 1)

end

end A081696.P14887350265923174401

namespace A081696

/-- `2*A109262(n)-a(n-1)` -/
def P14887350265923174401.Spec : Prop :=
  ∀ n, P14887350265923174401.a n = A081696 n

end A081696

/-! ## A081696.P6329281457967227098

`A268407(n)-A109262(n)`
-/

namespace A081696.P6329281457967227098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268407 n - A109262 n

end

end A081696.P6329281457967227098

namespace A081696

/-- `A268407(n)-A109262(n)` -/
def P6329281457967227098.Spec : Prop :=
  ∀ n, P6329281457967227098.a n = A081696 n

theorem P6329281457967227098.correct : P6329281457967227098.Spec := by
  intro n
  simp only [A081696, Nat.add_sub_cancel, A081696.P6329281457967227098.a, A081696.P144682512311677634.a, A000984, A000984.P7946844122574426130.a, A109262, A109262.P3635105755243385556.a, A176085, A176085.P18095810620596158957.a, A268407, A268407.P14441244389955032681.a, A000108, A000108.P17551949696095299361.a, A109263, A109263.P13637171917933416295.f1, A109263.P13637171917933416295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A081696

/-! ## A081696.P16665567547343814776

`A109262(n+1)-A109263(n+1)`
-/

namespace A081696.P16665567547343814776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109262 (n + 1) - A109263 (n + 1)

end

end A081696.P16665567547343814776

namespace A081696

/-- `A109262(n+1)-A109263(n+1)` -/
def P16665567547343814776.Spec : Prop :=
  ∀ n, P16665567547343814776.a n = A081696 n

end A081696

/-! ## A081696.P144682512311677634

`A000984(n)-A176085(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081696

/-- `A000984(n)-A176085(n)` -/
def P144682512311677634.Spec : Prop :=
  ∀ n, P144682512311677634.a n = A081696 n

theorem P144682512311677634.correct : P144682512311677634.Spec := by
  intro n
  simp only [A081696]

end A081696

/-! ## A081696.P12739789128972641472

`record[A126869(n)]-A176085(n)`
-/

namespace A081696.P12739789128972641472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A176085 n

end

end A081696.P12739789128972641472

namespace A081696

/-- `record[A126869(n)]-A176085(n)` -/
def P12739789128972641472.Spec : Prop :=
  ∀ n, P12739789128972641472.a n = A081696 n

end A081696

/-! ## A081696.P9751031817545002470

`record[A126930(n)]-A176085(n)`
-/

namespace A081696.P9751031817545002470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A176085 n

end

end A081696.P9751031817545002470

namespace A081696

/-- `record[A126930(n)]-A176085(n)` -/
def P9751031817545002470.Spec : Prop :=
  ∀ n, P9751031817545002470.a n = A081696 n

end A081696

/-! ## A081696.P9404456251028736222

`A001405(2*n)-A176085(n)`
-/

namespace A081696.P9404456251028736222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) - A176085 n

end

end A081696.P9404456251028736222

namespace A081696

/-- `A001405(2*n)-A176085(n)` -/
def P9404456251028736222.Spec : Prop :=
  ∀ n, P9404456251028736222.a n = A081696 n

end A081696

/-! ## A081696.P17903786566418346492

`A126869(2*n)-A176085(n)`
-/

namespace A081696.P17903786566418346492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) - A176085 n

end

end A081696.P17903786566418346492

namespace A081696

/-- `A126869(2*n)-A176085(n)` -/
def P17903786566418346492.Spec : Prop :=
  ∀ n, P17903786566418346492.a n = A081696 n

end A081696

/-! ## A081696.P4486781355270016234

`A126930(2*n)-A176085(n)`
-/

namespace A081696.P4486781355270016234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (2 * n) - A176085 n

end

end A081696.P4486781355270016234

namespace A081696

/-- `A126930(2*n)-A176085(n)` -/
def P4486781355270016234.Spec : Prop :=
  ∀ n, P4486781355270016234.a n = A081696 n

end A081696

/-! ## A081696.P13362167847197591494

`record[A126869(n)]-A010756(A008486(n)-1)`
-/

namespace A081696.P13362167847197591494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A010756 (A008486 n - 1).toNat

end

end A081696.P13362167847197591494

namespace A081696

/-- `record[A126869(n)]-A010756(A008486(n)-1)` -/
def P13362167847197591494.Spec : Prop :=
  ∀ n, P13362167847197591494.a n = A081696 n

end A081696

/-! ## A081696.P2539966922721250335

`record[A126869(n)]-A010756(A004273(n)+n)`
-/

namespace A081696.P2539966922721250335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A010756 (A004273 n + (n : ℤ)).toNat

end

end A081696.P2539966922721250335

namespace A081696

/-- `record[A126869(n)]-A010756(A004273(n)+n)` -/
def P2539966922721250335.Spec : Prop :=
  ∀ n, P2539966922721250335.a n = A081696 n

end A081696

/-! ## A081696.P1353529650340109499

`record[A126869(n)]-A010756(A008574(n)-(n+1))`
-/

namespace A081696.P1353529650340109499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A010756 (A008574 n - (n + 1 : ℤ)).toNat

end

end A081696.P1353529650340109499

namespace A081696

/-- `record[A126869(n)]-A010756(A008574(n)-(n+1))` -/
def P1353529650340109499.Spec : Prop :=
  ∀ n, P1353529650340109499.a n = A081696 n

end A081696

/-! ## A081696.P13060646016313942288

`A108081(n)-A257838(n)`
-/

namespace A081696.P13060646016313942288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108081 n - A257838 n

end

end A081696.P13060646016313942288

namespace A081696

/-- `A108081(n)-A257838(n)` -/
def P13060646016313942288.Spec : Prop :=
  ∀ n, P13060646016313942288.a n = A081696 n

theorem P13060646016313942288.correct : P13060646016313942288.Spec := by
  intro n
  simp only [A081696, Nat.add_sub_cancel, A081696.P13060646016313942288.a, A081696.P144682512311677634.a, A000984, A000984.P7946844122574426130.a, A108081, A108081.P10199581490510874834.a, A176085, A176085.P18095810620596158957.a, A257838, A257838.P9432177341719237820.a, A028329, A028329.P2723209719397665586.a, A268407, A268407.P14441244389955032681.a, A000108, A000108.P17551949696095299361.a, A109263, A109263.P13637171917933416295.f1, A109263.P13637171917933416295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A081696

/-! ## A081696.P16591513241183968504

`A176085(n+1)-2*A257838(n)`
-/

namespace A081696.P16591513241183968504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176085 (n + 1) - 2 * A257838 n

end

end A081696.P16591513241183968504

namespace A081696

/-- `A176085(n+1)-2*A257838(n)` -/
def P16591513241183968504.Spec : Prop :=
  ∀ n, P16591513241183968504.a n = A081696 n

end A081696

/-! ## A081696.P10250564847772703090

`A026671(n)-A014445(n)`
-/

namespace A081696.P10250564847772703090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 n - A014445 n

end

end A081696.P10250564847772703090

namespace A081696

/-- `A026671(n)-A014445(n)` -/
def P10250564847772703090.Spec : Prop :=
  ∀ n, P10250564847772703090.a n = A081696 n

end A081696

/-! ## A081696.P10977001776810793090

`A176280(n)-A001076(n)`
-/

namespace A081696.P10977001776810793090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176280 n - A001076 n

end

end A081696.P10977001776810793090

namespace A081696

/-- `A176280(n)-A001076(n)` -/
def P10977001776810793090.Spec : Prop :=
  ∀ n, P10977001776810793090.a n = A081696 n

theorem P10977001776810793090.correct : P10977001776810793090.Spec := by
  intro n
  simp only [A081696, Nat.add_sub_cancel, A081696.P10977001776810793090.a, A081696.P144682512311677634.a, A000984, A000984.P7946844122574426130.a, A001076, A001076.P17701824972558233071.a, A176085, A176085.P18095810620596158957.a, A176280, A176280.P16719572012467488895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A081696

/-! ## A081696.P12349819472866465904

`A026671(n)-2*A001076(n)`
-/

namespace A081696.P12349819472866465904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 n - 2 * A001076 n

end

end A081696.P12349819472866465904

namespace A081696

/-- `A026671(n)-2*A001076(n)` -/
def P12349819472866465904.Spec : Prop :=
  ∀ n, P12349819472866465904.a n = A081696 n

theorem P12349819472866465904.correct : P12349819472866465904.Spec := by
  intro n
  simp only [A081696, Nat.add_sub_cancel, A081696.P12349819472866465904.a, A081696.P144682512311677634.a, A000984, A000984.P7946844122574426130.a, A001076, A001076.P17701824972558233071.a, A026671, A026671.P11258807246634829896.a, A176085, A176085.P18095810620596158957.a, A176280, A176280.P16719572012467488895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A081696

/-! ## A081696.P989291976692923566

`A026671(n)-A000045(3*n)`
-/

namespace A081696.P989291976692923566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 n - A000045 (3 * n)

end

end A081696.P989291976692923566

namespace A081696

/-- `A026671(n)-A000045(3*n)` -/
def P989291976692923566.Spec : Prop :=
  ∀ n, P989291976692923566.a n = A081696 n

end A081696

/-! ## A081696.P15577334446207326009

`A026742(A005408(n))-2*A001076(n)`
-/

namespace A081696.P15577334446207326009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 (A005408 n).toNat - 2 * A001076 n

end

end A081696.P15577334446207326009

namespace A081696

/-- `A026742(A005408(n))-2*A001076(n)` -/
def P15577334446207326009.Spec : Prop :=
  ∀ n, P15577334446207326009.a n = A081696 n

end A081696

/-!
# A081697: 10-level labeled rooted trees with n leaves.

The programs for A081697, there is no canonical definition to state claims against.
-/

/-! ## A081697.P6498740595875687661

`A144150(eq[8, A116598(n)])`
-/

namespace A081697.P6498740595875687661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081697.P6498740595875687661

/-! ## A081697.P11113300654711053950

`A144150(eq[9, A025581(n)])`
-/

namespace A081697.P11113300654711053950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081697.P11113300654711053950

/-! ## A081697.P8847804722211490497

`A144150(eq[10, A193739(n)])`
-/

namespace A081697.P8847804722211490497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081697.P8847804722211490497

/-! ## A081697.P17792517329026142984

`A144150(eq[19, A099375(n)])`
-/

namespace A081697.P17792517329026142984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081697.P17792517329026142984

/-! ## A081697.P1881452723354904062

`A144150(eq[10, A004736(n+1)])`
-/

namespace A081697.P1881452723354904062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081697.P1881452723354904062

/-!
# A081698: Expansion of (1 - sqrt( 1 - 4*x*sqrt( 1 + 4*x )) )/( 2*x ).

The programs for A081698, there is no canonical definition to state claims against.
-/

/-! ## A081698.P13423755034130455157

`A290103(∑[A055876(n+1)²])`
-/

namespace A081698.P13423755034130455157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055876 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A081698.P13423755034130455157

/-! ## A081698.P347771031032116671

`record[Δ[A239440(A239396(2*n+3))]]`
-/

namespace A081698.P347771031032116671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239440 (A239396 (2 * n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081698.P347771031032116671

/-!
# A081699: k-tuple abundance record-holders.

The programs for A081699, there is no canonical definition to state claims against.
-/

/-! ## A081699.P13981604133502267727

`A348715(A041703(n))`
-/

namespace A081699.P13981604133502267727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348715 (A041703 n).toNat

end

end A081699.P13981604133502267727

