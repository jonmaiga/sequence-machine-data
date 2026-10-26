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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
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
import Seq.B013.C000
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
# A077600: Number of real roots for the n-th Moebius polynomial, M(n,x), which satisfies M(n,-1)=mu(n) the Moebius function of n.

The programs for A077600, there is no canonical definition to state claims against.
-/

/-! ## A077600.P6516935288463948765

`A005811(or(A160714(n), A308975(n)))`
-/

namespace A077600.P6516935288463948765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (Int.lor (A160714 n) (A308975 n)).toNat

end

end A077600.P6516935288463948765

/-! ## A077600.P12455610671153710977

`A005811(A160714(n)-2*A308975(n))`
-/

namespace A077600.P12455610671153710977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A160714 n - 2 * A308975 n).toNat

end

end A077600.P12455610671153710977

/-! ## A077600.P8474296942958569387

`A005811(A160714(n)-A308975(n)-A308975(n))`
-/

namespace A077600.P8474296942958569387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A160714 n - A308975 n - A308975 n).toNat

end

end A077600.P8474296942958569387

/-!
# A077603: Least k >= 2 such that tau(n) divides tau(n^k), where tau(n) is the number of divisors of n, A000005.

The programs for A077603, there is no canonical definition to state claims against.
-/

/-! ## A077603.P1602545901878800565

`∏{e}[5^A077567(A046523(n+1)), #]`
-/

namespace A077603.P1602545901878800565
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A077567 (A046523 (n + 1)).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A077603.P1602545901878800565

/-! ## A077603.P5420003706049622975

`A077567(A046523(n+1)%A331008(n+1))`
-/

namespace A077603.P5420003706049622975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077567 (Int.tmod (A046523 (n + 1)) (A331008 (n + 1))).toNat

end

end A077603.P5420003706049622975

/-! ## A077603.P4155340475109082884

`A077567(A046523(n+1))*A093178(A001504(n))`
-/

namespace A077603.P4155340475109082884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077567 (A046523 (n + 1)).toNat * A093178 (A001504 n).toNat

end

end A077603.P4155340475109082884

/-! ## A077603.P3297454243551635052

`A077567(A046523(n+1))%A077699(A002033(n))`
-/

namespace A077603.P3297454243551635052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077567 (A046523 (n + 1)).toNat) (A077699 (A002033 n).toNat)

end

end A077603.P3297454243551635052

/-! ## A077603.P2311669005738299090

`A077567(A111681(n+1))`
-/

namespace A077603.P2311669005738299090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077567 (A111681 (n + 1)).toNat

end

end A077603.P2311669005738299090

/-!
# A077605: Left summing matrix, S.

The programs for A077605, the canonical program `A077605.P2697056733726363764` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077605 has offset 1).

The definition of A077605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077605.P2697056733726363764

`floor(sqrt(8*n+1))%2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077605

/-- `floor(sqrt(8*n+1))%2` -/
def P2697056733726363764.Spec : Prop :=
  ∀ n, (P2697056733726363764.a n : ℤ) = A077605 (n + 1)

theorem P2697056733726363764.correct : P2697056733726363764.Spec := by
  intro n
  simp only [A077605, Nat.add_sub_cancel]

end A077605

/-! ## A077605.P6238797420916730180

`and(1, floor(sqrt(8*n+1)))`
-/

namespace A077605.P6238797420916730180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.sqrt (8 * n + 1))

end

end A077605.P6238797420916730180

namespace A077605

/-- `and(1, floor(sqrt(8*n+1)))` -/
def P6238797420916730180.Spec : Prop :=
  ∀ n, (P6238797420916730180.a n : ℤ) = A077605 (n + 1)

theorem P6238797420916730180.correct : P6238797420916730180.Spec := by
  intro n
  simp only [A077605, Nat.add_sub_cancel, A077605.P6238797420916730180.a, A077605.P2697056733726363764.a, SequenceMachineLib.memo_apply]
  try simp

end A077605

/-! ## A077605.P14575508623984658148

`(floor(sqrt(or(1, 8*n)))%2)²`
-/

namespace A077605.P14575508623984658148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (Nat.lor 1 (8 * n)) % 2) ^ 2

end

end A077605.P14575508623984658148

namespace A077605

/-- `(floor(sqrt(or(1, 8*n)))%2)²` -/
def P14575508623984658148.Spec : Prop :=
  ∀ n, (P14575508623984658148.a n : ℤ) = A077605 (n + 1)

end A077605

/-! ## A077605.P11710398838079955154

`(floor(sqrt(xor(1, 8*n)))%2)²`
-/

namespace A077605.P11710398838079955154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (Nat.xor 1 (8 * n)) % 2) ^ 2

end

end A077605.P11710398838079955154

namespace A077605

/-- `(floor(sqrt(xor(1, 8*n)))%2)²` -/
def P11710398838079955154.Spec : Prop :=
  ∀ n, (P11710398838079955154.a n : ℤ) = A077605 (n + 1)

end A077605

/-! ## A077605.P6031388860734859865

`and(1, floor(sqrt(or(1, 8*n))))²`
-/

namespace A077605.P6031388860734859865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.sqrt (Nat.lor 1 (8 * n))) ^ 2

end

end A077605.P6031388860734859865

namespace A077605

/-- `and(1, floor(sqrt(or(1, 8*n))))²` -/
def P6031388860734859865.Spec : Prop :=
  ∀ n, (P6031388860734859865.a n : ℤ) = A077605 (n + 1)

end A077605

/-! ## A077605.P11459367467982845784

`(floor(sqrt(2)/Δ[sqrt(n)])%2)²`
-/

namespace A077605.P11459367467982845784
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.sqrt (2 : ℝ) / (f1 (n + 1) - f1 n)⌋ 2 ^ 2

end

end A077605.P11459367467982845784

namespace A077605

/-- `(floor(sqrt(2)/Δ[sqrt(n)])%2)²` -/
def P11459367467982845784.Spec : Prop :=
  ∀ n, P11459367467982845784.a n = A077605 (n + 1)

end A077605

/-! ## A077605.P4056516086512047373

`1-round(n/∑[char[∑[n]]]²)`
-/

namespace A077605.P4056516086512047373
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - SequenceMachineLib.roundAway ((n : ℚ) / (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ))

end

end A077605.P4056516086512047373

namespace A077605

/-- `1-round(n/∑[char[∑[n]]]²)` -/
def P4056516086512047373.Spec : Prop :=
  ∀ n, P4056516086512047373.a n = A077605 (n + 1)

end A077605

/-! ## A077605.P17356047217229104432

`xor(1, round(n/∑[char[∑[n]]]²))`
-/

namespace A077605.P17356047217229104432
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway ((n : ℚ) / (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ)))

end

end A077605.P17356047217229104432

namespace A077605

/-- `xor(1, round(n/∑[char[∑[n]]]²))` -/
def P17356047217229104432.Spec : Prop :=
  ∀ n, P17356047217229104432.a n = A077605 (n + 1)

end A077605

/-! ## A077605.P4119081931637515722

`char[record[A116942(n)]]`
-/

namespace A077605.P4119081931637515722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116942 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A077605.P4119081931637515722

namespace A077605

/-- `char[record[A116942(n)]]` -/
def P4119081931637515722.Spec : Prop :=
  ∀ n, (P4119081931637515722.a n : ℤ) = A077605 (n + 1)

end A077605

/-! ## A077605.P6181294128805197715

`C(2, 2*A099089(n))`
-/

namespace A077605.P6181294128805197715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A099089 n).toNat

end

end A077605.P6181294128805197715

namespace A077605

/-- `C(2, 2*A099089(n))` -/
def P6181294128805197715.Spec : Prop :=
  ∀ n, (P6181294128805197715.a n : ℤ) = A077605 (n + 1)

end A077605

/-! ## A077605.P12425179638688102631

`C(2, 2*A099097(n))`
-/

namespace A077605.P12425179638688102631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A099097 n).toNat

end

end A077605.P12425179638688102631

namespace A077605

/-- `C(2, 2*A099097(n))` -/
def P12425179638688102631.Spec : Prop :=
  ∀ n, (P12425179638688102631.a n : ℤ) = A077605 (n + 1)

end A077605

/-! ## A077605.P17791963521121001261

`C(2, 2*A112906(n))`
-/

namespace A077605.P17791963521121001261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A112906 n).toNat

end

end A077605.P17791963521121001261

namespace A077605

/-- `C(2, 2*A112906(n))` -/
def P17791963521121001261.Spec : Prop :=
  ∀ n, (P17791963521121001261.a n : ℤ) = A077605 (n + 1)

end A077605

/-! ## A077605.P8588194227122101716

`C(2, 2*A119900(n))`
-/

namespace A077605.P8588194227122101716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A119900 n).toNat

end

end A077605.P8588194227122101716

namespace A077605

/-- `C(2, 2*A119900(n))` -/
def P8588194227122101716.Spec : Prop :=
  ∀ n, (P8588194227122101716.a n : ℤ) = A077605 (n + 1)

end A077605

/-! ## A077605.P2051245201618296531

`C(2, 2*A207543(n))`
-/

namespace A077605.P2051245201618296531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A207543 n).toNat

end

end A077605.P2051245201618296531

namespace A077605

/-- `C(2, 2*A207543(n))` -/
def P2051245201618296531.Spec : Prop :=
  ∀ n, (P2051245201618296531.a n : ℤ) = A077605 (n + 1)

end A077605

/-! ## A077605.P9993980919380441176

`round(sin(atan(A077029(n+1))))`
-/

namespace A077605.P9993980919380441176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Real.arctan (A077029 (n + 1) : ℝ)))

end

end A077605.P9993980919380441176

namespace A077605

/-- `round(sin(atan(A077029(n+1))))` -/
def P9993980919380441176.Spec : Prop :=
  ∀ n, P9993980919380441176.a n = A077605 (n + 1)

end A077605

/-! ## A077605.P7675678273033809377

`ceil(dr(A052553(n)²)/(n+1))`
-/

namespace A077605.P7675678273033809377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.digitalRoot (A052553 n ^ 2) : ℚ) / (n + 1 : ℚ)⌉

end

end A077605.P7675678273033809377

namespace A077605

/-- `ceil(dr(A052553(n)²)/(n+1))` -/
def P7675678273033809377.Spec : Prop :=
  ∀ n, P7675678273033809377.a n = A077605 (n + 1)

end A077605

/-! ## A077605.P14215055919272073710

`log2(A000032(round(n/∑[char[∑[n]]]²)))`
-/

namespace A077605.P14215055919272073710
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000032 (SequenceMachineLib.roundAway ((n : ℚ) / (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ))).toNat : ℝ)

end

end A077605.P14215055919272073710

namespace A077605

/-- `log2(A000032(round(n/∑[char[∑[n]]]²)))` -/
def P14215055919272073710.Spec : Prop :=
  ∀ n, P14215055919272073710.a n = (A077605 (n + 1) : ℝ)

end A077605

/-! ## A077605.P16051565449473850349

`A080343(n+1-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A077605.P16051565449473850349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A080343 ((n + 1 : ℤ) - a (n - 1)).toNat

end

end A077605.P16051565449473850349

namespace A077605

/-- `A080343(n+1-a(n-1))` -/
def P16051565449473850349.Spec : Prop :=
  ∀ n, P16051565449473850349.a n = A077605 (n + 1)

end A077605

/-! ## A077605.P875556991191416712

`A101688(A061579(n))`
-/

namespace A077605.P875556991191416712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 (A061579 n).toNat

end

end A077605.P875556991191416712

namespace A077605

/-- `A101688(A061579(n))` -/
def P875556991191416712.Spec : Prop :=
  ∀ n, P875556991191416712.a n = A077605 (n + 1)

end A077605

/-! ## A077605.P15193077541549593778

`A052553(n)/A059674(n)`
-/

namespace A077605.P15193077541549593778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052553 n : ℚ) / (A059674 n : ℚ)

end

end A077605.P15193077541549593778

namespace A077605

/-- `A052553(n)/A059674(n)` -/
def P15193077541549593778.Spec : Prop :=
  ∀ n, P15193077541549593778.a n = (A077605 (n + 1) : ℚ)

end A077605

/-!
# A077606: Left differencing matrix, D, by antidiagonals.

The programs for A077606, the canonical program `A077606.P5269313461726877093` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077606 has offset 1).

The definition of A077606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077606.P5269313461726877093

`Δ[floor(sqrt(2*n))%2]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077606

/-- `Δ[floor(sqrt(2*n))%2]` -/
def P5269313461726877093.Spec : Prop :=
  ∀ n, P5269313461726877093.a n = A077606 (n + 1)

theorem P5269313461726877093.correct : P5269313461726877093.Spec := by
  intro n
  simp only [A077606, Nat.add_sub_cancel]

end A077606

/-! ## A077606.P13389405754995265468

`Δ[and(1, floor(sqrt(2*n)))]`
-/

namespace A077606.P13389405754995265468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.sqrt (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A077606.P13389405754995265468

namespace A077606

/-- `Δ[and(1, floor(sqrt(2*n)))]` -/
def P13389405754995265468.Spec : Prop :=
  ∀ n, P13389405754995265468.a n = A077606 (n + 1)

theorem P13389405754995265468.correct : P13389405754995265468.Spec := by
  intro n
  simp only [A077606, Nat.add_sub_cancel, A077606.P13389405754995265468.f1, A077606.P13389405754995265468.a, A077606.P5269313461726877093.f1, A077606.P5269313461726877093.a, SequenceMachineLib.memo_apply]
  try simp

end A077606

/-! ## A077606.P1943236483716611216

`Δ[or(floor(sqrt(2*n)), -2)]`
-/

namespace A077606.P1943236483716611216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.sqrt (2 * n) : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077606.P1943236483716611216

namespace A077606

/-- `Δ[or(floor(sqrt(2*n)), -2)]` -/
def P1943236483716611216.Spec : Prop :=
  ∀ n, P1943236483716611216.a n = A077606 (n + 1)

end A077606

/-! ## A077606.P3653142041399978426

`Δ[gcd(2, ceil(sqrt(2*n+1)))]`
-/

namespace A077606.P3653142041399978426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ⌈Real.sqrt (2 * n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A077606.P3653142041399978426

namespace A077606

/-- `Δ[gcd(2, ceil(sqrt(2*n+1)))]` -/
def P3653142041399978426.Spec : Prop :=
  ∀ n, P3653142041399978426.a n = A077606 (n + 1)

end A077606

/-! ## A077606.P17150208027060210793

`(-1)^n*Δ[floor(sqrt(2*n))]`
-/

namespace A077606.P17150208027060210793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A077606.P17150208027060210793

namespace A077606

/-- `(-1)^n*Δ[floor(sqrt(2*n))]` -/
def P17150208027060210793.Spec : Prop :=
  ∀ n, P17150208027060210793.a n = A077606 (n + 1)

end A077606

/-! ## A077606.P11217805667354508567

`A154955(A316272(n+1))`
-/

namespace A077606.P11217805667354508567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (A316272 (n + 1)).toNat

end

end A077606.P11217805667354508567

namespace A077606

/-- `A154955(A316272(n+1))` -/
def P11217805667354508567.Spec : Prop :=
  ∀ n, P11217805667354508567.a n = A077606 (n + 1)

end A077606

/-! ## A077606.P1605176916875657587

`A053866(2*n+1)-A379480(n+1)`
-/

namespace A077606.P1605176916875657587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (2 * n + 1) - A379480 (n + 1)

end

end A077606.P1605176916875657587

namespace A077606

/-- `A053866(2*n+1)-A379480(n+1)` -/
def P1605176916875657587.Spec : Prop :=
  ∀ n, P1605176916875657587.a n = A077606 (n + 1)

end A077606

/-! ## A077606.P10047901304831900193

`A049240(2*(n+1))-A049240(2*n+1)`
-/

namespace A077606.P10047901304831900193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (2 * (n + 1)) - A049240 (2 * n + 1)

end

end A077606.P10047901304831900193

namespace A077606

/-- `A049240(2*(n+1))-A049240(2*n+1)` -/
def P10047901304831900193.Spec : Prop :=
  ∀ n, P10047901304831900193.a n = A077606 (n + 1)

end A077606

/-! ## A077606.P11929316715159486512

`A169695(2*(n+1))-A169695(2*n+1)`
-/

namespace A077606.P11929316715159486512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (2 * (n + 1)) - A169695 (2 * n + 1)

end

end A077606.P11929316715159486512

namespace A077606

/-- `A169695(2*(n+1))-A169695(2*n+1)` -/
def P11929316715159486512.Spec : Prop :=
  ∀ n, P11929316715159486512.a n = A077606 (n + 1)

end A077606

/-! ## A077606.P12964679284270837498

`1-(A323158(2*n+1)+A323158(2*(n+1)))`
-/

namespace A077606.P12964679284270837498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A323158 (2 * n + 1) + A323158 (2 * (n + 1)))

end

end A077606.P12964679284270837498

namespace A077606

/-- `1-(A323158(2*n+1)+A323158(2*(n+1)))` -/
def P12964679284270837498.Spec : Prop :=
  ∀ n, P12964679284270837498.a n = A077606 (n + 1)

end A077606

/-! ## A077606.P2758626778501889688

`(A158387(2*(n+1))-A158387(2*n+1))/2`
-/

namespace A077606.P2758626778501889688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158387 (2 * (n + 1)) - A158387 (2 * n + 1) : ℚ) / 2

end

end A077606.P2758626778501889688

namespace A077606

/-- `(A158387(2*(n+1))-A158387(2*n+1))/2` -/
def P2758626778501889688.Spec : Prop :=
  ∀ n, P2758626778501889688.a n = (A077606 (n + 1) : ℚ)

end A077606

/-! ## A077606.P5367040691313947704

`A344617(2*(n+1))²-A344617(2*n+1)²`
-/

namespace A077606.P5367040691313947704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344617 (2 * (n + 1)) ^ 2 - A344617 (2 * n + 1) ^ 2

end

end A077606.P5367040691313947704

namespace A077606

/-- `A344617(2*(n+1))²-A344617(2*n+1)²` -/
def P5367040691313947704.Spec : Prop :=
  ∀ n, P5367040691313947704.a n = A077606 (n + 1)

end A077606

/-! ## A077606.P7437003833411723176

`A000034(A000005(2*n+1))-A000034(A000005(2*(n+1)))`
-/

namespace A077606.P7437003833411723176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000005 (2 * n + 1)).toNat - A000034 (A000005 (2 * (n + 1))).toNat

end

end A077606.P7437003833411723176

namespace A077606

/-- `A000034(A000005(2*n+1))-A000034(A000005(2*(n+1)))` -/
def P7437003833411723176.Spec : Prop :=
  ∀ n, P7437003833411723176.a n = A077606 (n + 1)

end A077606

/-! ## A077606.P18386603067917293080

`Δ[char[A165776(n)]]`
-/

namespace A077606.P18386603067917293080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165776 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A077606.P18386603067917293080

namespace A077606

/-- `Δ[char[A165776(n)]]` -/
def P18386603067917293080.Spec : Prop :=
  ∀ n, P18386603067917293080.a n = A077606 (n + 1)

end A077606

/-! ## A077606.P13833920352351713345

`Δ[A130517(n+1)]%2`
-/

namespace A077606.P13833920352351713345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A077606.P13833920352351713345

namespace A077606

/-- `Δ[A130517(n+1)]%2` -/
def P13833920352351713345.Spec : Prop :=
  ∀ n, P13833920352351713345.a n = A077606 (n + 1)

end A077606

/-! ## A077606.P8565701415344314964

`A167374(A002262(n)+n)`
-/

namespace A077606.P8565701415344314964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 (A002262 n + (n : ℤ)).toNat

end

end A077606.P8565701415344314964

namespace A077606

/-- `A167374(A002262(n)+n)` -/
def P8565701415344314964.Spec : Prop :=
  ∀ n, P8565701415344314964.a n = A077606 (n + 1)

end A077606

/-! ## A077606.P6066498584506975088

`1-A166124(A002260(n+1)+n)`
-/

namespace A077606.P6066498584506975088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A166124 (A002260 (n + 1) + (n : ℤ)).toNat

end

end A077606.P6066498584506975088

namespace A077606

/-- `1-A166124(A002260(n+1)+n)` -/
def P6066498584506975088.Spec : Prop :=
  ∀ n, P6066498584506975088.a n = A077606 (n + 1)

end A077606

/-! ## A077606.P15240223319488964041

`2*A216230(A182834(n+1))-A216230(n)`
-/

namespace A077606.P15240223319488964041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216230 (A182834 (n + 1)).toNat - A216230 n

end

end A077606.P15240223319488964041

namespace A077606

/-- `2*A216230(A182834(n+1))-A216230(n)` -/
def P15240223319488964041.Spec : Prop :=
  ∀ n, P15240223319488964041.a n = A077606 (n + 1)

end A077606

/-! ## A077606.P18126720779231655476

`A154955(A253146(n+1))`
-/

namespace A077606.P18126720779231655476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (A253146 (n + 1)).toNat

end

end A077606.P18126720779231655476

namespace A077606

/-- `A154955(A253146(n+1))` -/
def P18126720779231655476.Spec : Prop :=
  ∀ n, P18126720779231655476.a n = A077606 (n + 1)

end A077606

/-! ## A077606.P5378416304160633074

`round(1/A132460(2*n+1))`
-/

namespace A077606.P5378416304160633074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A132460 (2 * n + 1) : ℚ))

end

end A077606.P5378416304160633074

namespace A077606

/-- `round(1/A132460(2*n+1))` -/
def P5378416304160633074.Spec : Prop :=
  ∀ n, P5378416304160633074.a n = A077606 (n + 1)

end A077606

/-!
# A077607: Convolutory inverse of the factorial sequence.

The programs for A077607, there is no canonical definition to state claims against.
-/

/-! ## A077607.P10090646181526807454

`A111540(A316966(n))`
-/

namespace A077607.P10090646181526807454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111540 (A316966 n).toNat

end

end A077607.P10090646181526807454

/-! ## A077607.P12431942878975241838

`A111540(A000217(char[1]+n))`
-/

namespace A077607.P12431942878975241838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111540 (A000217 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat

end

end A077607.P12431942878975241838

/-! ## A077607.P12208933148191936739

`A111540(A000217(n))-char[1]`
-/

namespace A077607.P12208933148191936739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111540 (A000217 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A077607.P12208933148191936739

/-! ## A077607.P8786203801444614060

`A159075(n)+A111540(∑[n])`
-/

namespace A077607.P8786203801444614060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A111540 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077607.P8786203801444614060

/-! ## A077607.P16378547330021774062

`A111540(lcm(∑[n], A260196(n)))`
-/

namespace A077607.P16378547330021774062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111540 (Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A260196 n))

end

end A077607.P16378547330021774062

/-!
# A077608: Number of compositions of n into twin primes (i.e., primes that are members of a twin prime pair, like 3, 5, 7, 11, 13, but not 2 or 23).

The programs for A077608, there is no canonical definition to state claims against.
-/

/-! ## A077608.P6529591529769828663

`A163533(A251762(n))+A002124(n)`
-/

namespace A077608.P6529591529769828663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163533 (A251762 n).toNat + A002124 n

end

end A077608.P6529591529769828663

/-! ## A077608.P17384424419733352739

`A002124(n)-A163533(2*A251762(n))`
-/

namespace A077608.P17384424419733352739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002124 n - A163533 (2 * A251762 n).toNat

end

end A077608.P17384424419733352739

/-! ## A077608.P8228683551302459160

`A030217(A208333(2*n+5))+A002124(n)`
-/

namespace A077608.P8228683551302459160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030217 (A208333 (2 * n + 5)).toNat + A002124 n

end

end A077608.P8228683551302459160

/-!
# A077609: Triangle in which n-th row lists infinitary divisors of n.

The programs for A077609, there is no canonical definition to state claims against.
-/

/-! ## A077609.P17250055181096905739

`A222266(n+1)^A055642(A076303(n+1))`
-/

namespace A077609.P17250055181096905739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222266 (n + 1) : ℚ) ^ (A055642 (A076303 (n + 1)).toNat : ℤ)

end

end A077609.P17250055181096905739

/-! ## A077609.P17409477329078631384

`gcd(A222266(n+1), A328449(n))`
-/

namespace A077609.P17409477329078631384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A222266 (n + 1)) (A328449 n)

end

end A077609.P17409477329078631384

/-! ## A077609.P4604316517761704214

`A222266(n+1)%∑[A262405(n)]`
-/

namespace A077609.P4604316517761704214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222266 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077609.P4604316517761704214

/-! ## A077609.P5760753481153203100

`A222266(A108126(n+1)%2+n)`
-/

namespace A077609.P5760753481153203100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222266 (Int.tmod (A108126 (n + 1)) 2 + (n : ℤ)).toNat

end

end A077609.P5760753481153203100

/-! ## A077609.P1506704910406268419

`A222266(n+1)+A000122(A052333(n+1))`
-/

namespace A077609.P1506704910406268419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222266 (n + 1) + A000122 (A052333 (n + 1)).toNat

end

end A077609.P1506704910406268419

/-!
# A077610: Triangle in which n-th row lists unitary divisors of n.

The programs for A077610, there is no canonical definition to state claims against.
-/

/-! ## A077610.P575054228149533599

`A165430(record[A165430(n+1)+A057944(n)])`
-/

namespace A077610.P575054228149533599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165430 (n + 1) + A057944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165430 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077610.P575054228149533599

/-! ## A077610.P2717642383159468666

`gcd(A001057(A097331(n)), A295908(n+1))`
-/

namespace A077610.P2717642383159468666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001057 (A097331 n).toNat) (A295908 (n + 1))

end

end A077610.P2717642383159468666

/-! ## A077610.P9422459771919921299

`A329534(n+1)-A025468(A056473(n+1))`
-/

namespace A077610.P9422459771919921299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329534 (n + 1) - A025468 (A056473 (n + 1)).toNat

end

end A077610.P9422459771919921299

/-! ## A077610.P14615815274204721132

`A329534(n+1)-A025468(A056483(n+1))`
-/

namespace A077610.P14615815274204721132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329534 (n + 1) - A025468 (A056483 (n + 1)).toNat

end

end A077610.P14615815274204721132

/-! ## A077610.P9903940917454339092

`A077609(lt[A282647(n+1), A325102(2*n+3)])`
-/

namespace A077610.P9903940917454339092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325102 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A077610.P9903940917454339092

/-!
# A077611: Number of adjacent pairs of form (odd,odd) among all permutations of {1,2,...,n}.

The programs for A077611, the canonical program `A077611.P2806159523373815368` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077611 has offset 1).

The definition of A077611 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077611.P2806159523373815368

`n!*(2*(n+1)*n-(2*(n+1)-1)*(-1)^(n+1)-1)/8`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077611

/-- `n!*(2*(n+1)*n-(2*(n+1)-1)*(-1)^(n+1)-1)/8` -/
def P2806159523373815368.Spec : Prop :=
  ∀ n, P2806159523373815368.a n = (A077611 (n + 1) : ℚ)

end A077611

/-! ## A077611.P12596104543549616042

`2*n!*∑[n-gcd(n, ∑[n])]`
-/

namespace A077611.P12596104543549616042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A077611.P12596104543549616042

namespace A077611

/-- `2*n!*∑[n-gcd(n, ∑[n])]` -/
def P12596104543549616042.Spec : Prop :=
  ∀ n, P12596104543549616042.a n = A077611 (n + 1)

end A077611

/-! ## A077611.P13080596140566582492

`2*A152885(n+1)`
-/

namespace A077611.P13080596140566582492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152885 (n + 1)

end

end A077611.P13080596140566582492

namespace A077611

/-- `2*A152885(n+1)` -/
def P13080596140566582492.Spec : Prop :=
  ∀ n, P13080596140566582492.a n = A077611 (n + 1)

end A077611

/-! ## A077611.P13301216393986138206

`n*A199495(n+1)`
-/

namespace A077611.P13301216393986138206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A199495 (n + 1)

end

end A077611.P13301216393986138206

namespace A077611

/-- `n*A199495(n+1)` -/
def P13301216393986138206.Spec : Prop :=
  ∀ n, P13301216393986138206.a n = A077611 (n + 1)

end A077611

/-! ## A077611.P8522502844011157560

`n*(A005359(n)+a(n-1))` with `a(0)=0`
-/

namespace A077611.P8522502844011157560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (A005359 n + a (n - 1))

end

end A077611.P8522502844011157560

namespace A077611

/-- `n*(A005359(n)+a(n-1))` -/
def P8522502844011157560.Spec : Prop :=
  ∀ n, P8522502844011157560.a n = A077611 (n + 1)

end A077611

/-! ## A077611.P1104197606768884593

`2*sqrt(A000537(floor(n/2)))*n!`
-/

namespace A077611.P1104197606768884593
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * (Real.sqrt (A000537 ⌊(n : ℚ) / 2⌋.toNat : ℝ) * (Nat.factorial n : ℝ))

end

end A077611.P1104197606768884593

namespace A077611

/-- `2*sqrt(A000537(floor(n/2)))*n!` -/
def P1104197606768884593.Spec : Prop :=
  ∀ n, P1104197606768884593.a n = (A077611 (n + 1) : ℝ)

end A077611

/-! ## A077611.P6249451479616369378

`A000142(n)*A110660(n)`
-/

namespace A077611.P6249451479616369378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A110660 n

end

end A077611.P6249451479616369378

namespace A077611

/-- `A000142(n)*A110660(n)` -/
def P6249451479616369378.Spec : Prop :=
  ∀ n, P6249451479616369378.a n = A077611 (n + 1)

end A077611

/-! ## A077611.P569040963886216815

`(A004526(n)+1)*A052657(n)`
-/

namespace A077611.P569040963886216815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 n + 1) * A052657 n

end

end A077611.P569040963886216815

namespace A077611

/-- `(A004526(n)+1)*A052657(n)` -/
def P569040963886216815.Spec : Prop :=
  ∀ n, P569040963886216815.a n = A077611 (n + 1)

end A077611

/-! ## A077611.P8609391719695181685

`A000142(n)*A038714(2*n)`
-/

namespace A077611.P8609391719695181685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A038714 (2 * n)

end

end A077611.P8609391719695181685

namespace A077611

/-- `A000142(n)*A038714(2*n)` -/
def P8609391719695181685.Spec : Prop :=
  ∀ n, P8609391719695181685.a n = A077611 (n + 1)

end A077611

/-! ## A077611.P12161403095710475063

`A000142(n+1)/A141310(n)*A354280(n)`
-/

namespace A077611.P12161403095710475063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A141310 n : ℚ) * (A354280 n : ℚ)

end

end A077611.P12161403095710475063

namespace A077611

/-- `A000142(n+1)/A141310(n)*A354280(n)` -/
def P12161403095710475063.Spec : Prop :=
  ∀ n, P12161403095710475063.a n = (A077611 (n + 1) : ℚ)

end A077611

/-!
# A077612: Number of adjacent pairs of form (even,even) among all permutations of {1,2,...,n}.

The programs for A077612, there is no canonical definition to state claims against.
-/

/-! ## A077612.P8731645917236503787

`2*A152886(n+1)`
-/

namespace A077612.P8731645917236503787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152886 (n + 1)

end

end A077612.P8731645917236503787

/-! ## A077612.P14767746128504775566

`(n²-n)*A199495(n)`
-/

namespace A077612.P14767746128504775566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ)) * A199495 n

end

end A077612.P14767746128504775566

/-! ## A077612.P11949594011163823157

`2*sqrt(A000537(∑[char[2*n+3]]))*n!`
-/

namespace A077612.P11949594011163823157
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * (Real.sqrt (A000537 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ) * (Nat.factorial n : ℝ))

end

end A077612.P11949594011163823157

/-! ## A077612.P14444379620501798591

`n*A077611(A028310(n))`
-/

namespace A077612.P14444379620501798591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A077611 (A028310 n).toNat

end

end A077612.P14444379620501798591

/-! ## A077612.P17471441943072437485

`Δ[A280186(n)]*A000142(n)`
-/

namespace A077612.P17471441943072437485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000142 n

end

end A077612.P17471441943072437485

/-! ## A077612.P5742159597662611767

`n*A077611(gcd(n, A000142(n)))`
-/

namespace A077612.P5742159597662611767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A077611 (Int.gcd (n : ℤ) (A000142 n))

end

end A077612.P5742159597662611767

/-! ## A077612.P16497737742340160823

`2*(A152887(n+1)-A052591(n))`
-/

namespace A077612.P16497737742340160823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A152887 (n + 1) - A052591 n)

end

end A077612.P16497737742340160823

/-! ## A077612.P3249945315577400829

`2*A306258(n)-A077611(n+1)`
-/

namespace A077612.P3249945315577400829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A306258 n - A077611 (n + 1)

end

end A077612.P3249945315577400829

/-! ## A077612.P3894101697086111967

`A000142(n)*A008238(A004273(n))`
-/

namespace A077612.P3894101697086111967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A008238 (A004273 n).toNat

end

end A077612.P3894101697086111967

/-! ## A077612.P13820187284715095645

`(A065033(n)²-A065033(n))*A000142(n)`
-/

namespace A077612.P13820187284715095645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065033 n ^ 2 - A065033 n) * A000142 n

end

end A077612.P13820187284715095645

/-!
# A077613: Number of adjacent pairs of form (even,odd) among all permutations of {1,2,...,n}. Also, number of adjacent pairs of form (odd,even).

The programs for A077613, the canonical program `A077613.P2581561867133347700` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077613 has offset 1).

The definition of A077613 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077613.P2581561867133347700

`floor((n+1)/2)*ceil((n+1)/2)*n!`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077613

/-- `floor((n+1)/2)*ceil((n+1)/2)*n!` -/
def P2581561867133347700.Spec : Prop :=
  ∀ n, P2581561867133347700.a n = A077613 (n + 1)

theorem P2581561867133347700.correct : P2581561867133347700.Spec := by
  intro n
  simp only [A077613, Nat.add_sub_cancel]

end A077613

/-! ## A077613.P16281650100835847728

`A002620(n+1)*A000142(n)`
-/

namespace A077613.P16281650100835847728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) * A000142 n

end

end A077613.P16281650100835847728

namespace A077613

/-- `A002620(n+1)*A000142(n)` -/
def P16281650100835847728.Spec : Prop :=
  ∀ n, P16281650100835847728.a n = A077613 (n + 1)

end A077613

/-! ## A077613.P3765453937959497151

`n!*∑[ceil(n/2)]`
-/

namespace A077613.P3765453937959497151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077613.P3765453937959497151

namespace A077613

/-- `n!*∑[ceil(n/2)]` -/
def P3765453937959497151.Spec : Prop :=
  ∀ n, P3765453937959497151.a n = A077613 (n + 1)

end A077613

/-! ## A077613.P9155533422775574167

`(n/floor(n/2)+n)*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A077613.P9155533422775574167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((n : ℚ) / (⌊(n : ℚ) / 2⌋ : ℚ) + (n : ℚ)) * a (n - 1)

end

end A077613.P9155533422775574167

namespace A077613

/-- `(n/floor(n/2)+n)*a(n-1)` -/
def P9155533422775574167.Spec : Prop :=
  ∀ n, P9155533422775574167.a n = (A077613 (n + 1) : ℚ)

end A077613

/-! ## A077613.P6956292526018174046

`a(n-1)/tan(acot(n))+n!*ceil(n/2)` with `a(0)=0`
-/

namespace A077613.P6956292526018174046
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ)) + ((Nat.factorial n : ℤ) * ⌈(n : ℚ) / 2⌉ : ℝ)

end

end A077613.P6956292526018174046

namespace A077613

/-- `a(n-1)/tan(acot(n))+n!*ceil(n/2)` -/
def P6956292526018174046.Spec : Prop :=
  ∀ n, P6956292526018174046.a n = (A077613 (n + 1) : ℝ)

end A077613

/-! ## A077613.P6393790751807320459

`a(n-1)/n^-1+n!*ceil(n/2)` with `a(0)=0`
-/

namespace A077613.P6393790751807320459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) + ((Nat.factorial n : ℤ) * ⌈(n : ℚ) / 2⌉ : ℚ)

end

end A077613.P6393790751807320459

namespace A077613

/-- `a(n-1)/n^-1+n!*ceil(n/2)` -/
def P6393790751807320459.Spec : Prop :=
  ∀ n, P6393790751807320459.a n = (A077613 (n + 1) : ℚ)

end A077613

/-! ## A077613.P14016771055565939529

`n*a((2*n)%(n+1))+n!*ceil(n/2)` with `a(0)=0`
-/

namespace A077613.P14016771055565939529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * a (2 * n % (n + 1)) + (Nat.factorial n : ℤ) * ⌈(n : ℚ) / 2⌉

end

end A077613.P14016771055565939529

namespace A077613

/-- `n*a((2*n)%(n+1))+n!*ceil(n/2)` -/
def P14016771055565939529.Spec : Prop :=
  ∀ n, P14016771055565939529.a n = A077613 (n + 1)

end A077613

/-! ## A077613.P17850426552308555128

`a(n-1)/tan(acot(n))+(and(1, n)+n)*n!/2` with `a(0)=0`
-/

namespace A077613.P17850426552308555128
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ)) + ((Nat.land 1 n + n : ℚ) * ((Nat.factorial n : ℚ) / 2) : ℝ)

end

end A077613.P17850426552308555128

namespace A077613

/-- `a(n-1)/tan(acot(n))+(and(1, n)+n)*n!/2` -/
def P17850426552308555128.Spec : Prop :=
  ∀ n, P17850426552308555128.a n = (A077613 (n + 1) : ℝ)

end A077613

/-! ## A077613.P8867349392603238663

`a(n-1)/n^-1+(and(1, n)+n)*n!/2` with `a(0)=0`
-/

namespace A077613.P8867349392603238663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) + (Nat.land 1 n + n : ℚ) * ((Nat.factorial n : ℚ) / 2)

end

end A077613.P8867349392603238663

namespace A077613

/-- `a(n-1)/n^-1+(and(1, n)+n)*n!/2` -/
def P8867349392603238663.Spec : Prop :=
  ∀ n, P8867349392603238663.a n = (A077613 (n + 1) : ℚ)

end A077613

/-! ## A077613.P9383583543740475937

`record[n*A084950(n)]`
-/

namespace A077613.P9383583543740475937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A084950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077613.P9383583543740475937

namespace A077613

/-- `record[n*A084950(n)]` -/
def P9383583543740475937.Spec : Prop :=
  ∀ n, P9383583543740475937.a n = A077613 (n + 1)

end A077613

/-!
# A077616: Binomial transform of n^2*2^n/2.

The programs for A077616, the canonical program `A077616.P13494492976750996485` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077616 has offset 1).

The definition of A077616 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077616.P13494492976750996485

`3^(n-1)*(n+1)*(1+2*(n+1))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077616

/-- `3^(n-1)*(n+1)*(1+2*(n+1))` -/
def P13494492976750996485.Spec : Prop :=
  ∀ n, P13494492976750996485.a n = (A077616 (n + 1) : ℚ)

end A077616

/-! ## A077616.P14744037970299089908

`abs((n+1)*Δ[A027471(n+1)])`
-/

namespace A077616.P14744037970299089908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (f1 (n + 1) - f1 n)|

end

end A077616.P14744037970299089908

namespace A077616

/-- `abs((n+1)*Δ[A027471(n+1)])` -/
def P14744037970299089908.Spec : Prop :=
  ∀ n, P14744037970299089908.a n = A077616 (n + 1)

end A077616

/-! ## A077616.P8985103824291025484

`abs((n+1)*A081038(n)-1)+1`
-/

namespace A077616.P8985103824291025484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A081038 n - 1| + 1

end

end A077616.P8985103824291025484

namespace A077616

/-- `abs((n+1)*A081038(n)-1)+1` -/
def P8985103824291025484.Spec : Prop :=
  ∀ n, P8985103824291025484.a n = A077616 (n + 1)

end A077616

/-! ## A077616.P5652885294447753524

`A129530(n+1)+A080420(n)`
-/

namespace A077616.P5652885294447753524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129530 (n + 1) + A080420 n

end

end A077616.P5652885294447753524

namespace A077616

/-- `A129530(n+1)+A080420(n)` -/
def P5652885294447753524.Spec : Prop :=
  ∀ n, P5652885294447753524.a n = A077616 (n + 1)

end A077616

/-! ## A077616.P3873691963143675807

`A080420(n)+∑[A069515(n+1)]`
-/

namespace A077616.P3873691963143675807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080420 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077616.P3873691963143675807

namespace A077616

/-- `A080420(n)+∑[A069515(n+1)]` -/
def P3873691963143675807.Spec : Prop :=
  ∀ n, P3873691963143675807.a n = A077616 (n + 1)

end A077616

/-! ## A077616.P16470335448043380161

`A094951(n+1)-A081038(n+1)`
-/

namespace A077616.P16470335448043380161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094951 (n + 1) - A081038 (n + 1)

end

end A077616.P16470335448043380161

namespace A077616

/-- `A094951(n+1)-A081038(n+1)` -/
def P16470335448043380161.Spec : Prop :=
  ∀ n, P16470335448043380161.a n = A077616 (n + 1)

end A077616

/-! ## A077616.P7716520891856309264

`A383136(n+1)+A383136(n+1)-A027471(n+2)`
-/

namespace A077616.P7716520891856309264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383136 (n + 1) + (A383136 (n + 1) - A027471 (n + 2))

end

end A077616.P7716520891856309264

namespace A077616

/-- `A383136(n+1)+A383136(n+1)-A027471(n+2)` -/
def P7716520891856309264.Spec : Prop :=
  ∀ n, P7716520891856309264.a n = A077616 (n + 1)

end A077616

/-! ## A077616.P13008722445431305949

`A027471(n+2)+A005843(n+1)*A027471(n+1)`
-/

namespace A077616.P13008722445431305949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 2) + A005843 (n + 1) * A027471 (n + 1)

end

end A077616.P13008722445431305949

namespace A077616

/-- `A027471(n+2)+A005843(n+1)*A027471(n+1)` -/
def P13008722445431305949.Spec : Prop :=
  ∀ n, P13008722445431305949.a n = A077616 (n + 1)

end A077616

/-! ## A077616.P1676124740007316820

`A027472(n+3)+A027472(n+3)-A383136(n+1)`
-/

namespace A077616.P1676124740007316820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027472 (n + 3) + (A027472 (n + 3) - A383136 (n + 1))

end

end A077616.P1676124740007316820

namespace A077616

/-- `A027472(n+3)+A027472(n+3)-A383136(n+1)` -/
def P1676124740007316820.Spec : Prop :=
  ∀ n, P1676124740007316820.a n = A077616 (n + 1)

end A077616

/-! ## A077616.P9268898653609527509

`A062189(n+1)/2`
-/

namespace A077616.P9268898653609527509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062189 (n + 1) : ℚ) / 2

end

end A077616.P9268898653609527509

namespace A077616

/-- `A062189(n+1)/2` -/
def P9268898653609527509.Spec : Prop :=
  ∀ n, P9268898653609527509.a n = (A077616 (n + 1) : ℚ)

end A077616

/-! ## A077616.P8107402144346017477

`(n+1)*A229277(n+1)/3`
-/

namespace A077616.P8107402144346017477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A229277 (n + 1) : ℚ) / 3

end

end A077616.P8107402144346017477

namespace A077616

/-- `(n+1)*A229277(n+1)/3` -/
def P8107402144346017477.Spec : Prop :=
  ∀ n, P8107402144346017477.a n = (A077616 (n + 1) : ℚ)

end A077616

/-! ## A077616.P5180113838504887133

`(∑[A133653(n+1)]+n+2)*3^n/3`
-/

namespace A077616.P5180113838504887133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133653 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j + (n + 2 : ℤ)) * (3 ^ n : ℤ) : ℤ) : ℚ) / 3

end

end A077616.P5180113838504887133

namespace A077616

/-- `(∑[A133653(n+1)]+n+2)*3^n/3` -/
def P5180113838504887133.Spec : Prop :=
  ∀ n, P5180113838504887133.a n = (A077616 (n + 1) : ℚ)

end A077616

/-! ## A077616.P4604516448167520008

`(A086951(n+1)+A027471(n+2))/2`
-/

namespace A077616.P4604516448167520008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086951 (n + 1) + A027471 (n + 2) : ℚ) / 2

end

end A077616.P4604516448167520008

namespace A077616

/-- `(A086951(n+1)+A027471(n+2))/2` -/
def P4604516448167520008.Spec : Prop :=
  ∀ n, P4604516448167520008.a n = (A077616 (n + 1) : ℚ)

end A077616

/-! ## A077616.P6782650959445123879

`A081038(n)*A082133(n+1)/A007051(n)`
-/

namespace A077616.P6782650959445123879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081038 n * A082133 (n + 1) : ℚ) / (A007051 n : ℚ)

end

end A077616.P6782650959445123879

namespace A077616

/-- `A081038(n)*A082133(n+1)/A007051(n)` -/
def P6782650959445123879.Spec : Prop :=
  ∀ n, P6782650959445123879.a n = (A077616 (n + 1) : ℚ)

end A077616

/-! ## A077616.P15336821922455072040

`A036068(2*n)/A000244(n)`
-/

namespace A077616.P15336821922455072040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036068 (2 * n) : ℚ) / (A000244 n : ℚ)

end

end A077616.P15336821922455072040

namespace A077616

/-- `A036068(2*n)/A000244(n)` -/
def P15336821922455072040.Spec : Prop :=
  ∀ n, P15336821922455072040.a n = (A077616 (n + 1) : ℚ)

end A077616

/-! ## A077616.P8278685606847887638

`A000244(n)²*A014105(n+1)/A000244(n+1)`
-/

namespace A077616.P8278685606847887638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n ^ 2 * A014105 (n + 1) : ℚ) / (A000244 (n + 1) : ℚ)

end

end A077616.P8278685606847887638

namespace A077616

/-- `A000244(n)²*A014105(n+1)/A000244(n+1)` -/
def P8278685606847887638.Spec : Prop :=
  ∀ n, P8278685606847887638.a n = (A077616 (n + 1) : ℚ)

end A077616

/-! ## A077616.P6368889597488020690

`A000244(2*n)*A014105(n+1)/A000244(n+1)`
-/

namespace A077616.P6368889597488020690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 (2 * n) * A014105 (n + 1) : ℚ) / (A000244 (n + 1) : ℚ)

end

end A077616.P6368889597488020690

namespace A077616

/-- `A000244(2*n)*A014105(n+1)/A000244(n+1)` -/
def P6368889597488020690.Spec : Prop :=
  ∀ n, P6368889597488020690.a n = (A077616 (n + 1) : ℚ)

end A077616

/-! ## A077616.P14337538146493092858

`A084608((n+2)²-3)`
-/

namespace A077616.P14337538146493092858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084608 ((n + 2) ^ 2 - 3)

end

end A077616.P14337538146493092858

namespace A077616

/-- `A084608((n+2)²-3)` -/
def P14337538146493092858.Spec : Prop :=
  ∀ n, P14337538146493092858.a n = A077616 (n + 1)

end A077616

/-! ## A077616.P12292480120704378544

`A027472(2*(n+2))/A000244(n+2)`
-/

namespace A077616.P12292480120704378544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027472 (2 * (n + 2)) : ℚ) / (A000244 (n + 2) : ℚ)

end

end A077616.P12292480120704378544

namespace A077616

/-- `A027472(2*(n+2))/A000244(n+2)` -/
def P12292480120704378544.Spec : Prop :=
  ∀ n, P12292480120704378544.a n = (A077616 (n + 1) : ℚ)

end A077616

/-! ## A077616.P1603305616471431873

`A129530(2*n+3)/A000244(n+3)`
-/

namespace A077616.P1603305616471431873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129530 (2 * n + 3) : ℚ) / (A000244 (n + 3) : ℚ)

end

end A077616.P1603305616471431873

namespace A077616

/-- `A129530(2*n+3)/A000244(n+3)` -/
def P1603305616471431873.Spec : Prop :=
  ∀ n, P1603305616471431873.a n = (A077616 (n + 1) : ℚ)

end A077616

/-!
# A077617: Numbers k such that Omega(k) = Omega(k+1) + Omega(k+2).

The programs for A077617, the canonical program `A077617.P9486837638642226480` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077617 has offset 1).

The definition of A077617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 708 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077617.P9486837638642226480

`eq[A069904(n+1)+1, A001222(A028310(n))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A077617

/-- `eq[A069904(n+1)+1, A001222(A028310(n))]` -/
def P9486837638642226480.Spec : Prop :=
  ∀ n, (P9486837638642226480.a n : ℤ) = A077617 (n + 1)

theorem P9486837638642226480.correct : P9486837638642226480.Spec := by
  intro n
  simp only [A077617, Nat.add_sub_cancel]

end A077617

/-! ## A077617.P907852904966383405

`eq[A069904(n+1), A252736(6*A020761(n)+n)]`
-/

namespace A077617.P907852904966383405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (6 * A020761 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077617.P907852904966383405

namespace A077617

/-- `eq[A069904(n+1), A252736(6*A020761(n)+n)]` -/
def P907852904966383405.Spec : Prop :=
  ∀ n, (P907852904966383405.a n : ℤ) = A077617 (n + 1)

end A077617

/-! ## A077617.P3359111958589709873

`eq[A001222(A008458(n)), A193295(2*n+3)]`
-/

namespace A077617.P3359111958589709873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193295 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077617.P3359111958589709873

namespace A077617

/-- `eq[A001222(A008458(n)), A193295(2*n+3)]` -/
def P3359111958589709873.Spec : Prop :=
  ∀ n, (P3359111958589709873.a n : ℤ) = A077617 (n + 1)

end A077617

/-! ## A077617.P9687488899200595238

`eq[A001222(A008574(n)), A193295(2*n+3)]`
-/

namespace A077617.P9687488899200595238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193295 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077617.P9687488899200595238

namespace A077617

/-- `eq[A001222(A008574(n)), A193295(2*n+3)]` -/
def P9687488899200595238.Spec : Prop :=
  ∀ n, (P9687488899200595238.a n : ℤ) = A077617 (n + 1)

end A077617

/-! ## A077617.P41741049276975210

`eq[A001222(n+1), A001222((n+2)*(n+3))]+1`
-/

namespace A077617.P41741049276975210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 2) * (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A077617.P41741049276975210

namespace A077617

/-- `eq[A001222(n+1), A001222((n+2)*(n+3))]+1` -/
def P41741049276975210.Spec : Prop :=
  ∀ n, (P41741049276975210.a n : ℤ) = A077617 (n + 1)

end A077617

/-!
# A077618: Number of occurrences of n in A076734.

The programs for A077618, there is no canonical definition to state claims against.
-/

/-! ## A077618.P3408031240885888640

`ceil(∏{e}[n+1, C(2, #²)]/A279398(2*(n+1)))`
-/

namespace A077618.P3408031240885888640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 2 (Nat.factorization (f1 n) p ^ 2) : ℕ) : ℚ) / (A279398 (2 * (n + 1)) : ℚ)⌉

end

end A077618.P3408031240885888640

/-! ## A077618.P3945382167722417653

`char[∏{p}[n, #]-1]*A213332(A376680(3*n+1))`
-/

namespace A077618.P3945382167722417653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A213332 (A376680 (3 * n + 1)).toNat

end

end A077618.P3945382167722417653

/-! ## A077618.P2467677636461279569

`lcm(A008683(n+1), A286520(∑{d}[n+1, #]+1+n))`
-/

namespace A077618.P2467677636461279569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (n + 1)) (A286520 (∑ d ∈ Nat.divisors (f1 n), d + 1 + n))

end

end A077618.P2467677636461279569

/-! ## A077618.P7594743751949128404

`A257679(A335489(n+1)^A295540(n))`
-/

namespace A077618.P7594743751949128404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257679 (SequenceMachineLib.roundAway ((A335489 (n + 1) : ℚ) ^ (A295540 n : ℤ))).toNat

end

end A077618.P7594743751949128404

/-! ## A077618.P13133960863650590636

`gcd(A008683(A205454(n+1)), A335489(n+1))`
-/

namespace A077618.P13133960863650590636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A205454 (n + 1)).toNat) (A335489 (n + 1))

end

end A077618.P13133960863650590636

/-!
# A077619: Number of occurrences of n-th squarefree number in A076734.

The programs for A077619, there is no canonical definition to state claims against.
-/

/-! ## A077619.P8529055585049671297

`A077618(A005117(n+1))`
-/

namespace A077619.P8529055585049671297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (A005117 (n + 1)).toNat

end

end A077619.P8529055585049671297

/-! ## A077619.P10918363587049867145

`A077618(comp[A105570(n)])`
-/

namespace A077619.P10918363587049867145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A077619.P10918363587049867145

/-! ## A077619.P11151472148741616266

`A077618(record[A003967(n+1)])`
-/

namespace A077619.P11151472148741616266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077619.P11151472148741616266

/-! ## A077619.P14965857868499342039

`A077618(record[A007913(n+1)])`
-/

namespace A077619.P14965857868499342039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077619.P14965857868499342039

/-! ## A077619.P2272259280865289684

`A077618(record[A007947(n+1)])`
-/

namespace A077619.P2272259280865289684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077619.P2272259280865289684

/-! ## A077619.P5604400868694850132

`A077618(record[A055231(n+1)])`
-/

namespace A077619.P5604400868694850132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077619.P5604400868694850132

/-! ## A077619.P1605572045853819634

`A077618(eq[1, abs(A008683(n+1))]+1)`
-/

namespace A077619.P1605572045853819634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A077619.P1605572045853819634

/-! ## A077619.P11067687096527970646

`A077618(eq[0, a(A008683(n)²)²])` with `a(0)=1, a(1)=0`
-/

namespace A077619.P11067687096527970646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (A008683 n ^ 2).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A077619.P11067687096527970646

/-! ## A077619.P6642860866567526988

`A077618(record[(n+1)*A008683(2*n+1-n)²])`
-/

namespace A077619.P6642860866567526988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008683 (2 * n + 1 - n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077619.P6642860866567526988

/-! ## A077619.P6544208152471254690

`A077618(eq[A001222(n+1), A001221(n+1)]+1)`
-/

namespace A077619.P6544208152471254690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A077619.P6544208152471254690

/-! ## A077619.P7869106781518700811

`A077618(record[A347230(n+1)])`
-/

namespace A077619.P7869106781518700811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077619.P7869106781518700811

/-! ## A077619.P9453739765570114036

`A077618(eq[1, A255326(n)])`
-/

namespace A077619.P9453739765570114036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A077619.P9453739765570114036

/-! ## A077619.P2643299708438016467

`A077618(record[A015052(n+1)])`
-/

namespace A077619.P2643299708438016467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077619.P2643299708438016467

/-! ## A077619.P8562764735754413708

`A077618(record[A015053(n+1)])`
-/

namespace A077619.P8562764735754413708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077619.P8562764735754413708

/-! ## A077619.P3759611731102760932

`A077618(record[A056554(n+1)])`
-/

namespace A077619.P3759611731102760932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077619.P3759611731102760932

/-! ## A077619.P5961910456113304930

`A077618(record[A067535(n+1)%(n+2)])`
-/

namespace A077619.P5961910456113304930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067535 (n + 1)) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077619.P5961910456113304930

/-! ## A077619.P7294123039852167460

`A077618(A088610(Δ[n²]))`
-/

namespace A077619.P7294123039852167460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (A088610 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A077619.P7294123039852167460

/-!
# A077620: Numbers occurring only once in A076734.

The programs for A077620, there is no canonical definition to state claims against.
-/

/-! ## A077620.P6306581135320967885

`eq[1, A077618(n+1)]+1`
-/

namespace A077620.P6306581135320967885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A077620.P6306581135320967885

/-! ## A077620.P1010313937285749825

`record[A000027(n+1)/A000032(A077618(n+1))]`
-/

namespace A077620.P1010313937285749825
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A000032 (A077618 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077620.P1010313937285749825

/-! ## A077620.P9802600673660721810

`record[A007913(n+1)/A000032(A077618(n+1))]`
-/

namespace A077620.P9802600673660721810
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) / (A000032 (A077618 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077620.P9802600673660721810

/-! ## A077620.P16129686829344097805

`record[A007947(n+1)/A000032(A077618(n+1))]`
-/

namespace A077620.P16129686829344097805
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A000032 (A077618 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077620.P16129686829344097805

/-! ## A077620.P7997687297083060723

`record[A055231(n+1)/A000032(A077618(n+1))]`
-/

namespace A077620.P7997687297083060723
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055231 (n + 1) : ℚ) / (A000032 (A077618 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077620.P7997687297083060723

/-! ## A077620.P2072711599534595157

`record[A005117(n+1)/A077619(n+1)]`
-/

namespace A077620.P2072711599534595157
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005117 (n + 1) : ℚ) / (A077619 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077620.P2072711599534595157

/-! ## A077620.P4862345122940971142

`record[(2-A077618(n+1))*A347230(n+1)]`
-/

namespace A077620.P4862345122940971142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A077618 (n + 1)) * A347230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077620.P4862345122940971142

/-! ## A077620.P15898166113865193344

`record[A066990(n+1)/A007368(A077618(n+1))]`
-/

namespace A077620.P15898166113865193344
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066990 (n + 1) : ℚ) / (A007368 (A077618 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077620.P15898166113865193344

/-! ## A077620.P352334964673454175

`record[(n+1)/A077618(A076734(n+1))]`
-/

namespace A077620.P352334964673454175
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A077618 (A076734 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077620.P352334964673454175

/-!
# A077621: Squarefree numbers occurring more than once in A076734.

The programs for A077621, there is no canonical definition to state claims against.
-/

/-! ## A077621.P11053951500594423465

`lt[1, A077618(n+1)]+1`
-/

namespace A077621.P11053951500594423465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A077621.P11053951500594423465

/-! ## A077621.P16986380304061608448

`lt[1, A077618(n^floor(atan(n)))]`
-/

namespace A077621.P16986380304061608448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A077621.P16986380304061608448

/-! ## A077621.P935416135360551286

`lt[1, A077618(A028310(n))]`
-/

namespace A077621.P935416135360551286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A077621.P935416135360551286

/-! ## A077621.P3224444221783250464

`A020725(lt[1, A077618(n+1)])`
-/

namespace A077621.P3224444221783250464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A077621.P3224444221783250464

/-! ## A077621.P12450688472442347540

`lt[1, A077618(A233583(n+1))]`
-/

namespace A077621.P12450688472442347540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A077621.P12450688472442347540

/-!
# A077622: Number of numbers <= prime(n)# having n prime factors (with multiplicity), where prime(n)# = A002110(n) is the n-th primorial.

The programs for A077622, there is no canonical definition to state claims against.
-/

/-! ## A077622.P3860662295764136481

`A077618(A002110(n+1))`
-/

namespace A077622.P3860662295764136481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (A002110 (n + 1)).toNat

end

end A077622.P3860662295764136481

/-! ## A077622.P11393111009789734910

`A077618(∏[p?[xor(1, n)]])`
-/

namespace A077622.P11393111009789734910
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A077622.P11393111009789734910

/-!
# A077623: a(1)=1, a(2)=2, a(3)=4, a(n) = abs(a(n-1) - a(n-2) - a(n-3)).

The programs for A077623, the canonical program `A077623.P4225390659938717821` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077623 has offset 1).

The definition of A077623 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(a(n-1)-a(n-2)-a(n-3))` (program `A077623.P4225390659938717821`, by `A077623.P4225390659938717821.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077623.P4225390659938717821

`abs(a(n-1)-a(n-2)-a(n-3))` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077623

/-- `abs(a(n-1)-a(n-2)-a(n-3))` -/
def P4225390659938717821.Spec : Prop :=
  ∀ n, P4225390659938717821.a n = A077623 (n + 1)

theorem P4225390659938717821.correct : P4225390659938717821.Spec := by
  intro n
  simp only [A077623, Nat.add_sub_cancel]

end A077623

/-! ## A077623.P7514675574897363870

`A079623(n+6)-A000038(n)`
-/

namespace A077623.P7514675574897363870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079623 (n + 6) - A000038 n

end

end A077623.P7514675574897363870

namespace A077623

/-- `A079623(n+6)-A000038(n)` -/
def P7514675574897363870.Spec : Prop :=
  ∀ n, P7514675574897363870.a n = A077623 (n + 1)

end A077623

/-! ## A077623.P5613966221026008385

`A079623(n+6)%A014206(n)`
-/

namespace A077623.P5613966221026008385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079623 (n + 6)) (A014206 n)

end

end A077623.P5613966221026008385

namespace A077623

/-- `A079623(n+6)%A014206(n)` -/
def P5613966221026008385.Spec : Prop :=
  ∀ n, P5613966221026008385.a n = A077623 (n + 1)

end A077623

/-! ## A077623.P9016305127612627747

`gcd(and(1, A000122(n)), A079623(n+6))`
-/

namespace A077623.P9016305127612627747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.land 1 (A000122 n)) (A079623 (n + 6))

end

end A077623.P9016305127612627747

namespace A077623

/-- `gcd(and(1, A000122(n)), A079623(n+6))` -/
def P9016305127612627747.Spec : Prop :=
  ∀ n, (P9016305127612627747.a n : ℤ) = A077623 (n + 1)

end A077623

/-! ## A077623.P8604716478710906935

`A079623(n+6)-and(2, A002246(n+1))`
-/

namespace A077623.P8604716478710906935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079623 (n + 6) - Int.land 2 (A002246 (n + 1))

end

end A077623.P8604716478710906935

namespace A077623

/-- `A079623(n+6)-and(2, A002246(n+1))` -/
def P8604716478710906935.Spec : Prop :=
  ∀ n, P8604716478710906935.a n = A077623 (n + 1)

end A077623

/-! ## A077623.P6208954977371711964

`A079623(n+6)^A001221(A001316(n))`
-/

namespace A077623.P6208954977371711964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079623 (n + 6) : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A077623.P6208954977371711964

namespace A077623

/-- `A079623(n+6)^A001221(A001316(n))` -/
def P6208954977371711964.Spec : Prop :=
  ∀ n, P6208954977371711964.a n = (A077623 (n + 1) : ℚ)

end A077623

/-! ## A077623.P7580882208256130360

`A079623(n+6)-A000096(C(n, A000096(n)))`
-/

namespace A077623.P7580882208256130360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079623 (n + 6) - A000096 (Nat.choose n (A000096 n).toNat)

end

end A077623.P7580882208256130360

namespace A077623

/-- `A079623(n+6)-A000096(C(n, A000096(n)))` -/
def P7580882208256130360.Spec : Prop :=
  ∀ n, P7580882208256130360.a n = A077623 (n + 1)

end A077623

/-! ## A077623.P3320751445872355728

`A079623(n+6)/A014963(record[lcm(3, n+1)])`
-/

namespace A077623.P3320751445872355728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079623 (n + 6) : ℚ) / (A014963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ)

end

end A077623.P3320751445872355728

namespace A077623

/-- `A079623(n+6)/A014963(record[lcm(3, n+1)])` -/
def P3320751445872355728.Spec : Prop :=
  ∀ n, P3320751445872355728.a n = (A077623 (n + 1) : ℚ)

end A077623

/-! ## A077623.P274933415293888341

`A328447(A079623(n+6))%A072857(n+2)`
-/

namespace A077623.P274933415293888341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328447 (A079623 (n + 6)).toNat) (A072857 (n + 2))

end

end A077623.P274933415293888341

namespace A077623

/-- `A328447(A079623(n+6))%A072857(n+2)` -/
def P274933415293888341.Spec : Prop :=
  ∀ n, P274933415293888341.a n = A077623 (n + 1)

end A077623

/-!
# A077624: Largest term in periodic part of continued fraction expansion of square root of 2^n + 1 or 0 if 2^n + 1 is a square.

The programs for A077624, there is no canonical definition to state claims against.
-/

/-! ## A077624.P16343141615025206600

`A004275(A136417(n+1))%A006265(n+5)`
-/

namespace A077624.P16343141615025206600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004275 (A136417 (n + 1)).toNat) (A006265 (n + 5))

end

end A077624.P16343141615025206600

/-! ## A077624.P1090937471432905748

`A308720(2^(n+1)+1)`
-/

namespace A077624.P1090937471432905748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308720 (2 ^ (n + 1) + 1)

end

end A077624.P1090937471432905748

/-! ## A077624.P13450357085327225108

`lcm(A000700(n), A003056(A034729(n+3)))`
-/

namespace A077624.P13450357085327225108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000700 n) (A003056 (A034729 (n + 3)).toNat)

end

end A077624.P13450357085327225108

/-!
# A077625: Largest term in periodic part of continued fraction expansion of square root of -1+2^n or 0 if -1+2^n is square.

The programs for A077625, there is no canonical definition to state claims against.
-/

/-! ## A077625.P17576193455613151923

`2*floor(sqrt(∑[2^n]-1))`
-/

namespace A077625.P17576193455613151923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.sqrt (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A077625.P17576193455613151923

/-! ## A077625.P2587288039360588318

`record[2*floor(sqrt(A324865(n+1)))]`
-/

namespace A077625.P2587288039360588318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.sqrt (A324865 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077625.P2587288039360588318

/-! ## A077625.P10519262785973985422

`record[2*A116601(A158416(n))]`
-/

namespace A077625.P10519262785973985422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A116601 (A158416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077625.P10519262785973985422

/-! ## A077625.P18257852441130062151

`record[2*A116601(A318518(n+1))]`
-/

namespace A077625.P18257852441130062151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A116601 (A318518 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077625.P18257852441130062151

/-! ## A077625.P3639645065638560812

`2*A116601(n+3)-A000038(n)`
-/

namespace A077625.P3639645065638560812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A116601 (n + 3) - A000038 n

end

end A077625.P3639645065638560812

/-! ## A077625.P2040905288813155753

`(2*A116601(n+3))%A299475(3*n)`
-/

namespace A077625.P2040905288813155753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A116601 (n + 3)) (A299475 (3 * n))

end

end A077625.P2040905288813155753

/-!
# A077626: Largest term in periodic part of continued fraction expansion of square root of 1+3^n or 0 if 1+3^n is square.

The programs for A077626, the canonical program `A077626.P8190236521602997891` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077626 has offset 1).

The definition of A077626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 417 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077626.P8190236521602997891

`2*A017913(n+1)-A000038(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A077626

/-- `2*A017913(n+1)-A000038(n)` -/
def P8190236521602997891.Spec : Prop :=
  ∀ n, P8190236521602997891.a n = A077626 (n + 1)

theorem P8190236521602997891.correct : P8190236521602997891.Spec := by
  intro n
  simp only [A077626, Nat.add_sub_cancel]

end A077626

/-! ## A077626.P8775844733994280042

`(2*A017913(n+1))%∑[2*A017913(n+1)-A266777(n)]`
-/

namespace A077626.P8775844733994280042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017913 (n + 1) - A266777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A017913 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077626.P8775844733994280042

namespace A077626

/-- `(2*A017913(n+1))%∑[2*A017913(n+1)-A266777(n)]` -/
def P8775844733994280042.Spec : Prop :=
  ∀ n, P8775844733994280042.a n = A077626 (n + 1)

end A077626

/-! ## A077626.P12740391353545488

`2*floor(3*sqrt(floor(3^(n-1))))`
-/

namespace A077626.P12740391353545488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊3 * Real.sqrt (⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ : ℝ)⌋

end

end A077626.P12740391353545488

namespace A077626

/-- `2*floor(3*sqrt(floor(3^(n-1))))` -/
def P12740391353545488.Spec : Prop :=
  ∀ n, P12740391353545488.a n = A077626 (n + 1)

end A077626

/-! ## A077626.P10537983365594883835

`A017913(n+1)*A087009(2*n+1)/A087009(2*n)`
-/

namespace A077626.P10537983365594883835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017913 (n + 1) * A087009 (2 * n + 1) : ℚ) / (A087009 (2 * n) : ℚ)

end

end A077626.P10537983365594883835

namespace A077626

/-- `A017913(n+1)*A087009(2*n+1)/A087009(2*n)` -/
def P10537983365594883835.Spec : Prop :=
  ∀ n, P10537983365594883835.a n = (A077626 (n + 1) : ℚ)

end A077626

/-! ## A077626.P3888520249170645630

`A163300(A017913(n+1))`
-/

namespace A077626.P3888520249170645630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (A017913 (n + 1)).toNat

end

end A077626.P3888520249170645630

namespace A077626

/-- `A163300(A017913(n+1))` -/
def P3888520249170645630.Spec : Prop :=
  ∀ n, P3888520249170645630.a n = A077626 (n + 1)

end A077626

/-!
# A077627: Largest term in periodic part of continued fraction expansion of square root of -1+3^n.

The programs for A077627, there is no canonical definition to state claims against.
-/

/-! ## A077627.P10064290690045073457

`∑[2*Δ[A017915(n)]]`
-/

namespace A077627.P10064290690045073457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017915 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077627.P10064290690045073457

/-! ## A077627.P10549983868051571602

`2*(A017915(n+1)-1)`
-/

namespace A077627.P10549983868051571602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A017915 (n + 1) - 1)

end

end A077627.P10549983868051571602

/-! ## A077627.P4881584546926778364

`∑[2*Δ[A018053(2*n)]]`
-/

namespace A077627.P4881584546926778364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018053 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077627.P4881584546926778364

/-! ## A077627.P2880126083177059581

`2*A018053(2*(n+1))-2`
-/

namespace A077627.P2880126083177059581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018053 (2 * (n + 1)) - 2

end

end A077627.P2880126083177059581

/-! ## A077627.P8763007763936133955

`2*A017913(n+1)-2*n%2`
-/

namespace A077627.P8763007763936133955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017913 (n + 1) - ((2 * (n % 2) : ℕ) : ℤ)

end

end A077627.P8763007763936133955

/-!
# A077628: Sum of terms in periodic part of continued fraction expansion of square root of 1+2^n.

The programs for A077628, there is no canonical definition to state claims against.
-/

/-! ## A077628.P10134514276624457864

`A010340(∑[2^n]+2)`
-/

namespace A077628.P10134514276624457864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010340 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A077628.P10134514276624457864

/-! ## A077628.P15377500810589034850

`A180472(n)+A010340(A048578(n))`
-/

namespace A077628.P15377500810589034850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180472 n + A010340 (A048578 n).toNat

end

end A077628.P15377500810589034850

/-! ## A077628.P1740216776383108021

`or(A000007(n), A010340(A048578(n)))`
-/

namespace A077628.P1740216776383108021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A010340 (A048578 n).toNat)

end

end A077628.P1740216776383108021

/-! ## A077628.P3979317574917299766

`or(A000038(n), A010340(A048578(n)))`
-/

namespace A077628.P3979317574917299766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A010340 (A048578 n).toNat)

end

end A077628.P3979317574917299766

/-!
# A077629: Sum of terms in periodic part of continued fraction expansion of square root of -1+2^n.

The programs for A077629, there is no canonical definition to state claims against.
-/

/-! ## A077629.P5753829251482771119

`A010340(∑[2^n])`
-/

namespace A077629.P5753829251482771119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010340 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077629.P5753829251482771119

/-! ## A077629.P14934582554424682628

`A010340(A126646(n))+char[14]`
-/

namespace A077629.P14934582554424682628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010340 (A126646 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A077629.P14934582554424682628

/-! ## A077629.P14415205728650055156

`A180472(n)+A010340(A126646(n))`
-/

namespace A077629.P14415205728650055156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180472 n + A010340 (A126646 n).toNat

end

end A077629.P14415205728650055156

/-! ## A077629.P2742772632629148991

`A010340(A126646(n))*A269626(n)`
-/

namespace A077629.P2742772632629148991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010340 (A126646 n).toNat * A269626 n

end

end A077629.P2742772632629148991

/-! ## A077629.P2564861858517687904

`A010340(A000225(n+1))*A057427(n)`
-/

namespace A077629.P2564861858517687904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010340 (A000225 (n + 1)).toNat * A057427 n

end

end A077629.P2564861858517687904

/-!
# A077630: Sum of terms in periodic part of continued fraction expansion of square root of 1+3^n.

The programs for A077630, there is no canonical definition to state claims against.
-/

/-! ## A077630.P16871529374876345016

`A010340(3^(n+1)+1)`
-/

namespace A077630.P16871529374876345016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010340 (3 ^ (n + 1) + 1)

end

end A077630.P16871529374876345016

/-!
# A077631: Sum of terms in periodic part of continued fraction expansion of square root of -1 + 3^n.

The programs for A077631, there is no canonical definition to state claims against.
-/

/-! ## A077631.P6594776779286378965

`A010340(3^(n+1)-1)`
-/

namespace A077631.P6594776779286378965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010340 (3 ^ (n + 1) - 1)

end

end A077631.P6594776779286378965

/-! ## A077631.P2110004987971827263

`A265044(n)+A104842(A265016(n))`
-/

namespace A077631.P2110004987971827263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265044 n + A104842 (A265016 n).toNat

end

end A077631.P2110004987971827263

/-!
# A077633: LCM of terms in periodic part of continued fraction expansion of square root of -1+2^n.

The programs for A077633, there is no canonical definition to state claims against.
-/

/-! ## A077633.P16115150590712737237

`∑[2^floor(n/2)]*A258445(A164991(n+1))`
-/

namespace A077633.P16115150590712737237
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A258445 (A164991 (n + 1)).toNat : ℚ)

end

end A077633.P16115150590712737237

/-! ## A077633.P14205517291406340756

`A027383(n)*A346089(A000670(n))`
-/

namespace A077633.P14205517291406340756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n * A346089 (A000670 n).toNat

end

end A077633.P14205517291406340756

/-! ## A077633.P8531053154246200345

`lcm(A018468(A005246(n)), A027383(n))`
-/

namespace A077633.P8531053154246200345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A018468 (A005246 n).toNat) (A027383 n)

end

end A077633.P8531053154246200345

/-!
# A077635: LCM of terms in periodic part of continued fraction expansion of square root of -1+3^n.

The programs for A077635, there is no canonical definition to state claims against.
-/

/-! ## A077635.P15854690443322844531

`A366472(A022374(n))`
-/

namespace A077635.P15854690443322844531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366472 (A022374 n).toNat

end

end A077635.P15854690443322844531

/-!
# A077637: Largest term in periodic part of continued fraction expansion of square root of A051451(n), i.e., sqrt(lcm(1..x)) where x is a prime power from A000961.

The programs for A077637, there is no canonical definition to state claims against.
-/

/-! ## A077637.P6359266386427384872

`2*floor(sqrt(A208768(n+1)))`
-/

namespace A077637.P6359266386427384872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.sqrt (A208768 (n + 1))

end

end A077637.P6359266386427384872

/-! ## A077637.P8740245328893598388

`A005843(floor(sqrt(A208768(n+1))))`
-/

namespace A077637.P8740245328893598388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.sqrt (A208768 (n + 1))).toNat

end

end A077637.P8740245328893598388

/-!
# A077638: Sum of terms in periodic part of continued fraction expansion of square root of A051451(n), i.e., sqrt(lcm(1..x)) where x is a prime power from A000961.

The programs for A077638, there is no canonical definition to state claims against.
-/

/-! ## A077638.P12518092334985735448

`A010340(A051451(n+1))`
-/

namespace A077638.P12518092334985735448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010340 (A051451 (n + 1)).toNat

end

end A077638.P12518092334985735448

/-! ## A077638.P11664520590860933858

`A010340(∏[A025473(n+1)])`
-/

namespace A077638.P11664520590860933858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010340 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A077638.P11664520590860933858

/-! ## A077638.P3738301955896003272

`A010340(record[A083268(n+1)])`
-/

namespace A077638.P3738301955896003272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010340 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077638.P3738301955896003272

/-! ## A077638.P1185655260015118729

`A010340(record[A094307(n+1)])`
-/

namespace A077638.P1185655260015118729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010340 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077638.P1185655260015118729

/-!
# A077640: Smallest term of a run of at least 7 consecutive integers which are not squarefree.

The programs for A077640, there is no canonical definition to state claims against.
-/

/-! ## A077640.P12640543010341404618

`A188347(n+1)-3`
-/

namespace A077640.P12640543010341404618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188347 (n + 1) - 3

end

end A077640.P12640543010341404618

/-! ## A077640.P10600202953566741040

`record[A188347(A050603(n))-3]`
-/

namespace A077640.P10600202953566741040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188347 (A050603 n).toNat - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077640.P10600202953566741040

/-!
# A077641: Number of squarefree integers in closed interval [n, 2n-1], i.e., among n consecutive numbers beginning with n.

The programs for A077641, the canonical program `A077641.P1502103477398908800` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077641 has offset 1).

The definition of A077641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077641.P5316659805058766569

`1-A294242(n+1)+n`
-/

namespace A077641.P5316659805058766569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A294242 (n + 1) + (n : ℤ)

end

end A077641.P5316659805058766569

namespace A077641

/-- `1-A294242(n+1)+n` -/
def P5316659805058766569.Spec : Prop :=
  ∀ n, P5316659805058766569.a n = A077641 (n + 1)

theorem P5316659805058766569.correct : P5316659805058766569.Spec := by
  intro n
  simp only [A077641, Nat.add_sub_cancel, A077641.P5316659805058766569.a, A077641.P1502103477398908800.a, A262868, A262868.P4949295510980563824.f1, A262868.P4949295510980563824.a, A294242, A294242.P17936846053533156002.a, A000035, A000035.P2023072528413494694.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A110654, A110654.P360289776162656549.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077641

/-! ## A077641.P11687057339025277334

`A013928(2*(n+1))-(∑[C(∏{p}[n, #], n)]-1)`
-/

namespace A077641.P11687057339025277334
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), p) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (2 * (n + 1)) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A077641.P11687057339025277334

namespace A077641

/-- `A013928(2*(n+1))-(∑[C(∏{p}[n, #], n)]-1)` -/
def P11687057339025277334.Spec : Prop :=
  ∀ n, P11687057339025277334.a n = A077641 (n + 1)

end A077641

/-! ## A077641.P3285374063069322663

`A070544(n+1)+A008966(n+1)`
-/

namespace A077641.P3285374063069322663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070544 (n + 1) + A008966 (n + 1)

end

end A077641.P3285374063069322663

namespace A077641

/-- `A070544(n+1)+A008966(n+1)` -/
def P3285374063069322663.Spec : Prop :=
  ∀ n, P3285374063069322663.a n = A077641 (n + 1)

end A077641

/-! ## A077641.P9236560616459863469

`A013928(2*(n+1))-A013928(n+1)`
-/

namespace A077641.P9236560616459863469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (2 * (n + 1)) - A013928 (n + 1)

end

end A077641.P9236560616459863469

namespace A077641

/-- `A013928(2*(n+1))-A013928(n+1)` -/
def P9236560616459863469.Spec : Prop :=
  ∀ n, P9236560616459863469.a n = A077641 (n + 1)

end A077641

/-! ## A077641.P1533439314209035246

`A179211(n+1)-A008966(2*(n+1))`
-/

namespace A077641.P1533439314209035246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179211 (n + 1) - A008966 (2 * (n + 1))

end

end A077641.P1533439314209035246

namespace A077641

/-- `A179211(n+1)-A008966(2*(n+1))` -/
def P1533439314209035246.Spec : Prop :=
  ∀ n, P1533439314209035246.a n = A077641 (n + 1)

end A077641

/-! ## A077641.P8232514160088752795

`A107079(2*(n+1))-A107079(n+1)`
-/

namespace A077641.P8232514160088752795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (2 * (n + 1)) - A107079 (n + 1)

end

end A077641.P8232514160088752795

namespace A077641

/-- `A107079(2*(n+1))-A107079(n+1)` -/
def P8232514160088752795.Spec : Prop :=
  ∀ n, P8232514160088752795.a n = A077641 (n + 1)

end A077641

/-! ## A077641.P5026885528050497786

`A070544(n+1)+A008683(n+1)*A008683(n+1)`
-/

namespace A077641.P5026885528050497786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070544 (n + 1) + A008683 (n + 1) * A008683 (n + 1)

end

end A077641.P5026885528050497786

namespace A077641

/-- `A070544(n+1)+A008683(n+1)*A008683(n+1)` -/
def P5026885528050497786.Spec : Prop :=
  ∀ n, P5026885528050497786.a n = A077641 (n + 1)

end A077641

/-! ## A077641.P10020341677980636067

`A070544(n+1)+A013928(n+2)-A013928(n+1)`
-/

namespace A077641.P10020341677980636067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070544 (n + 1) + (A013928 (n + 2) - A013928 (n + 1))

end

end A077641.P10020341677980636067

namespace A077641

/-- `A070544(n+1)+A013928(n+2)-A013928(n+1)` -/
def P10020341677980636067.Spec : Prop :=
  ∀ n, P10020341677980636067.a n = A077641 (n + 1)

end A077641

/-! ## A077641.P1502103477398908800

`A262868(2*(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A077641

/-- `A262868(2*(n+1))` -/
def P1502103477398908800.Spec : Prop :=
  ∀ n, P1502103477398908800.a n = A077641 (n + 1)

theorem P1502103477398908800.correct : P1502103477398908800.Spec := by
  intro n
  simp only [A077641, Nat.add_sub_cancel]

end A077641

/-! ## A077641.P14200514653320535648

`n+1-A294235(2*(n+1))`
-/

namespace A077641.P14200514653320535648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A294235 (2 * (n + 1))

end

end A077641.P14200514653320535648

namespace A077641

/-- `n+1-A294235(2*(n+1))` -/
def P14200514653320535648.Spec : Prop :=
  ∀ n, P14200514653320535648.a n = A077641 (n + 1)

end A077641

/-! ## A077641.P18433423176784298742

`or(C(2, n²), A262868(Δ[n²]+1))`
-/

namespace A077641.P18433423176784298742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 (n ^ 2) : ℤ) (A262868 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat)

end

end A077641.P18433423176784298742

namespace A077641

/-- `or(C(2, n²), A262868(Δ[n²]+1))` -/
def P18433423176784298742.Spec : Prop :=
  ∀ n, P18433423176784298742.a n = A077641 (n + 1)

end A077641

/-! ## A077641.P4858110189529094823

`A000027(A262868(n+2+n))`
-/

namespace A077641.P4858110189529094823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A262868 (n + 2 + n)).toNat

end

end A077641.P4858110189529094823

namespace A077641

/-- `A000027(A262868(n+2+n))` -/
def P4858110189529094823.Spec : Prop :=
  ∀ n, P4858110189529094823.a n = A077641 (n + 1)

end A077641

/-! ## A077641.P18417869678912985772

`and(-1, A262868(A005843(n+1)))`
-/

namespace A077641.P18417869678912985772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A262868 (A005843 (n + 1)).toNat)

end

end A077641.P18417869678912985772

namespace A077641

/-- `and(-1, A262868(A005843(n+1)))` -/
def P18417869678912985772.Spec : Prop :=
  ∀ n, P18417869678912985772.a n = A077641 (n + 1)

end A077641

/-! ## A077641.P7358115670526308738

`A294233(2*(n+1))+A071068(2*(n+1))`
-/

namespace A077641.P7358115670526308738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294233 (2 * (n + 1)) + A071068 (2 * (n + 1))

end

end A077641.P7358115670526308738

namespace A077641

/-- `A294233(2*(n+1))+A071068(2*(n+1))` -/
def P7358115670526308738.Spec : Prop :=
  ∀ n, P7358115670526308738.a n = A077641 (n + 1)

end A077641

/-! ## A077641.P8278338777919630044

`A262991(2*(n+1))-A262869(2*(n+1))`
-/

namespace A077641.P8278338777919630044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262991 (2 * (n + 1)) - A262869 (2 * (n + 1))

end

end A077641.P8278338777919630044

namespace A077641

/-- `A262991(2*(n+1))-A262869(2*(n+1))` -/
def P8278338777919630044.Spec : Prop :=
  ∀ n, P8278338777919630044.a n = A077641 (n + 1)

theorem P8278338777919630044.correct : P8278338777919630044.Spec := by
  intro n
  simp only [A077641, Nat.add_sub_cancel, A077641.P8278338777919630044.a, A077641.P1502103477398908800.a, A262868, A262868.P4949295510980563824.f1, A262868.P4949295510980563824.a, A262869, A262869.P10644154218626239048.a, A262991, A262991.P2037548391319313371.a, A000035, A000035.P2023072528413494694.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, A110654, A110654.P360289776162656549.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A077641

/-! ## A077641.P11364156813793108656

`A294145(2*(n+1))-A294145(2*n+1)`
-/

namespace A077641.P11364156813793108656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294145 (2 * (n + 1)) - A294145 (2 * n + 1)

end

end A077641.P11364156813793108656

namespace A077641

/-- `A294145(2*(n+1))-A294145(2*n+1)` -/
def P11364156813793108656.Spec : Prop :=
  ∀ n, P11364156813793108656.a n = A077641 (n + 1)

end A077641

/-! ## A077641.P13014536962079805371

`A351833(2*(n+1))-A294232(2*(n+1))`
-/

namespace A077641.P13014536962079805371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351833 (2 * (n + 1)) - A294232 (2 * (n + 1))

end

end A077641.P13014536962079805371

namespace A077641

/-- `A351833(2*(n+1))-A294232(2*(n+1))` -/
def P13014536962079805371.Spec : Prop :=
  ∀ n, P13014536962079805371.a n = A077641 (n + 1)

end A077641

/-! ## A077641.P10432527857980919006

`A262869(A005408(2*n+1))-A262869(2*n+1)`
-/

namespace A077641.P10432527857980919006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (A005408 (2 * n + 1)).toNat - A262869 (2 * n + 1)

end

end A077641.P10432527857980919006

namespace A077641

/-- `A262869(A005408(2*n+1))-A262869(2*n+1)` -/
def P10432527857980919006.Spec : Prop :=
  ∀ n, P10432527857980919006.a n = A077641 (n + 1)

end A077641

/-!
# A077642: Number of squarefree integers in the closed interval [10^n, -1 + 2*10^n], i.e., among 10^n consecutive integers beginning with 10^n.

The programs for A077642, there is no canonical definition to state claims against.
-/

/-! ## A077642.P17386014649861485747

`A077641(10^n)`
-/

namespace A077642.P17386014649861485747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077641 (10 ^ n)

end

end A077642.P17386014649861485747

/-!
# A077643: Number of squarefree integers in closed interval [2^n, -1 + 2*2^n], i.e., among 2^n consecutive numbers beginning with 2^n.

The programs for A077643, there is no canonical definition to state claims against.
-/

/-! ## A077643.P1262423341871329501

`Δ[A372540(n)]`
-/

namespace A077643.P1262423341871329501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372540 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077643.P1262423341871329501

/-! ## A077643.P4365464696876493639

`char[1]+Δ[A143658(n)]`
-/

namespace A077643.P4365464696876493639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143658 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A077643.P4365464696876493639

/-! ## A077643.P10707896982964751712

`Δ[A157928(n)+A143658(n)]`
-/

namespace A077643.P10707896982964751712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + A143658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077643.P10707896982964751712

/-! ## A077643.P6866629598227460316

`Δ[A143658(n)-A141044(n)]`
-/

namespace A077643.P6866629598227460316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143658 n - A141044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077643.P6866629598227460316

/-! ## A077643.P7558739882232861657

`Δ[A143658(n)]-A159075(n)`
-/

namespace A077643.P7558739882232861657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A159075 n

end

end A077643.P7558739882232861657

/-! ## A077643.P12022386091782078308

`Δ[xor(A143658(n), A169585(n))]`
-/

namespace A077643.P12022386091782078308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A143658 n) (A169585 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077643.P12022386091782078308

/-! ## A077643.P9848473024085242334

`A372540(n+1)-A372540(n)`
-/

namespace A077643.P9848473024085242334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372540 (n + 1) - A372540 n

end

end A077643.P9848473024085242334

/-!
# A077644: Number of decimal digits of A070177(n).

The programs for A077644, there is no canonical definition to state claims against.
-/

/-! ## A077644.P8657223195254455441

`A194508(A026110(n+4)+A005325(n+5))`
-/

namespace A077644.P8657223195254455441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194508 (A026110 (n + 4) + A005325 (n + 5)).toNat

end

end A077644.P8657223195254455441

/-! ## A077644.P2094817114667155000

`A089610(A028894(n+2))`
-/

namespace A077644.P2094817114667155000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089610 (A028894 (n + 2)).toNat

end

end A077644.P2094817114667155000

/-!
# A077645: Sum of all primes having n decimal digits.

The programs for A077645, the canonical program `A077645.P129742426279453168` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077645 has offset 1).

The definition of A077645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077645.P129742426279453168

`A007504(A000720(10^(n+1)))-A007504(A000720(10^n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A077645

/-- `A007504(A000720(10^(n+1)))-A007504(A000720(10^n))` -/
def P129742426279453168.Spec : Prop :=
  ∀ n, P129742426279453168.a n = A077645 (n + 1)

theorem P129742426279453168.correct : P129742426279453168.Spec := by
  intro n
  simp only [A077645, Nat.add_sub_cancel]

end A077645

/-! ## A077645.P1581038877860056098

`Δ[A046731(n)]`
-/

namespace A077645.P1581038877860056098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077645.P1581038877860056098

namespace A077645

/-- `Δ[A046731(n)]` -/
def P1581038877860056098.Spec : Prop :=
  ∀ n, P1581038877860056098.a n = A077645 (n + 1)

end A077645

/-! ## A077645.P1651661863340407705

`A046731(n+1)-A046731(n)`
-/

namespace A077645.P1651661863340407705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046731 (n + 1) - A046731 n

end

end A077645.P1651661863340407705

namespace A077645

/-- `A046731(n+1)-A046731(n)` -/
def P1651661863340407705.Spec : Prop :=
  ∀ n, P1651661863340407705.a n = A077645 (n + 1)

end A077645

/-! ## A077645.P17548230587170732427

`A046731(A291769(n))-(A006880(2*n)-A139564(n))`
-/

namespace A077645.P17548230587170732427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046731 (A291769 n).toNat - (A006880 (2 * n) - A139564 n)

end

end A077645.P17548230587170732427

namespace A077645

/-- `A046731(A291769(n))-(A006880(2*n)-A139564(n))` -/
def P17548230587170732427.Spec : Prop :=
  ∀ n, P17548230587170732427.a n = A077645 (n + 1)

end A077645

/-! ## A077645.P1197234993369337766

`A046731(A348553(n))-(A006880(2*n)-A139564(n))`
-/

namespace A077645.P1197234993369337766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046731 (A348553 n).toNat - (A006880 (2 * n) - A139564 n)

end

end A077645.P1197234993369337766

namespace A077645

/-- `A046731(A348553(n))-(A006880(2*n)-A139564(n))` -/
def P1197234993369337766.Spec : Prop :=
  ∀ n, P1197234993369337766.a n = A077645 (n + 1)

end A077645

/-!
# A077647: Smallest term of a run of at least 8 consecutive integers which are not squarefree.

The programs for A077647, there is no canonical definition to state claims against.
-/

/-! ## A077647.P16402649272061889196

`∩[A077640(n+1)-1, A077640(n+1)]`
-/

namespace A077647.P16402649272061889196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077640 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077647.P16402649272061889196

/-!
# A077648: Initial digits of prime numbers.

The programs for A077648, the canonical program `A077648.P9186107893677974913` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077648 has offset 1).

The definition of A077648 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077648.P9186107893677974913

`A000030(A000040(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A077648

/-- `A000030(A000040(n+1))` -/
def P9186107893677974913.Spec : Prop :=
  ∀ n, P9186107893677974913.a n = A077648 (n + 1)

theorem P9186107893677974913.correct : P9186107893677974913.Spec := by
  intro n
  simp only [A077648, Nat.add_sub_cancel]

end A077648

/-! ## A077648.P13778155723304871338

`A004087(n+1)%10`
-/

namespace A077648.P13778155723304871338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004087 (n + 1)) 10

end

end A077648.P13778155723304871338

namespace A077648

/-- `A004087(n+1)%10` -/
def P13778155723304871338.Spec : Prop :=
  ∀ n, P13778155723304871338.a n = A077648 (n + 1)

end A077648

/-! ## A077648.P14256085609678523943

`A032759(n+1)%10`
-/

namespace A077648.P14256085609678523943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032759 (n + 1)) 10

end

end A077648.P14256085609678523943

namespace A077648

/-- `A032759(n+1)%10` -/
def P14256085609678523943.Spec : Prop :=
  ∀ n, P14256085609678523943.a n = A077648 (n + 1)

end A077648

/-! ## A077648.P12013084514221189660

`A067087(n+1)%10`
-/

namespace A077648.P12013084514221189660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067087 (n + 1)) 10

end

end A077648.P12013084514221189660

namespace A077648

/-- `A067087(n+1)%10` -/
def P12013084514221189660.Spec : Prop :=
  ∀ n, P12013084514221189660.a n = A077648 (n + 1)

end A077648

/-! ## A077648.P9201796187467966598

`A000030(A137589(n+1))`
-/

namespace A077648.P9201796187467966598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A137589 (n + 1)).toNat

end

end A077648.P9201796187467966598

namespace A077648

/-- `A000030(A137589(n+1))` -/
def P9201796187467966598.Spec : Prop :=
  ∀ n, P9201796187467966598.a n = A077648 (n + 1)

end A077648

/-! ## A077648.P16128489330288639730

`A088135(n+1)-A007652(n+1)`
-/

namespace A077648.P16128489330288639730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088135 (n + 1) - A007652 (n + 1)

end

end A077648.P16128489330288639730

namespace A077648

/-- `A088135(n+1)-A007652(n+1)` -/
def P16128489330288639730.Spec : Prop :=
  ∀ n, P16128489330288639730.a n = A077648 (n + 1)

theorem P16128489330288639730.correct : P16128489330288639730.Spec := by
  intro n
  simp only [A077648, Nat.add_sub_cancel, A077648.P16128489330288639730.a, A077648.P9186107893677974913.a, A000030, A000030.P4990867543733972260.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007652, A007652.P8278837090424156821.a, A088135, A088135.P872632457780307146.a, A010879, A010879.P10561743211919002802.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077648

/-! ## A077648.P12693499226237350073

`A033308(A068670(n))`
-/

namespace A077648.P12693499226237350073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (A068670 n).toNat

end

end A077648.P12693499226237350073

namespace A077648

/-- `A033308(A068670(n))` -/
def P12693499226237350073.Spec : Prop :=
  ∀ n, P12693499226237350073.a n = A077648 (n + 1)

end A077648

/-! ## A077648.P13453503244078301807

`A033308(A086049(n+1)-2)`
-/

namespace A077648.P13453503244078301807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (A086049 (n + 1) - 2).toNat

end

end A077648.P13453503244078301807

namespace A077648

/-- `A033308(A086049(n+1)-2)` -/
def P13453503244078301807.Spec : Prop :=
  ∀ n, P13453503244078301807.a n = A077648 (n + 1)

end A077648

/-! ## A077648.P10067582715704513550

`A228355(A068670(n+1)-1)`
-/

namespace A077648.P10067582715704513550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228355 (A068670 (n + 1) - 1).toNat

end

end A077648.P10067582715704513550

namespace A077648

/-- `A228355(A068670(n+1)-1)` -/
def P10067582715704513550.Spec : Prop :=
  ∀ n, P10067582715704513550.a n = A077648 (n + 1)

end A077648

/-! ## A077648.P14785936494397307483

`A010879(A032759(n+1))`
-/

namespace A077648.P14785936494397307483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A032759 (n + 1)).toNat

end

end A077648.P14785936494397307483

namespace A077648

/-- `A010879(A032759(n+1))` -/
def P14785936494397307483.Spec : Prop :=
  ∀ n, P14785936494397307483.a n = A077648 (n + 1)

end A077648

/-! ## A077648.P12982962439453750096

`A010879(A004087(n+1))`
-/

namespace A077648.P12982962439453750096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A004087 (n + 1)).toNat

end

end A077648.P12982962439453750096

namespace A077648

/-- `A010879(A004087(n+1))` -/
def P12982962439453750096.Spec : Prop :=
  ∀ n, P12982962439453750096.a n = A077648 (n + 1)

end A077648

/-! ## A077648.P13240583610525310879

`A001622(A128050(n+1))`
-/

namespace A077648.P13240583610525310879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A128050 (n + 1)).toNat + 1)

end

end A077648.P13240583610525310879

namespace A077648

/-- `A001622(A128050(n+1))` -/
def P13240583610525310879.Spec : Prop :=
  ∀ n, P13240583610525310879.a n = A077648 (n + 1)

end A077648

/-! ## A077648.P6961570022205649521

`A000030(A008578(n+2))`
-/

namespace A077648.P6961570022205649521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A008578 (n + 2)).toNat

end

end A077648.P6961570022205649521

namespace A077648

/-- `A000030(A008578(n+2))` -/
def P6961570022205649521.Spec : Prop :=
  ∀ n, P6961570022205649521.a n = A077648 (n + 1)

end A077648

/-! ## A077648.P7432590666919647630

`A000030(eq[0, A007920(n)])`
-/

namespace A077648.P7432590666919647630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A077648.P7432590666919647630

namespace A077648

/-- `A000030(eq[0, A007920(n)])` -/
def P7432590666919647630.Spec : Prop :=
  ∀ n, P7432590666919647630.a n = A077648 (n + 1)

end A077648

/-! ## A077648.P10347415638753308980

`A000030(eq[1, A003415(n)])`
-/

namespace A077648.P10347415638753308980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A077648.P10347415638753308980

namespace A077648

/-- `A000030(eq[1, A003415(n)])` -/
def P10347415638753308980.Spec : Prop :=
  ∀ n, P10347415638753308980.a n = A077648 (n + 1)

end A077648

/-! ## A077648.P9565411737266698232

`A000030(eq[1, A032741(n)])`
-/

namespace A077648.P9565411737266698232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A077648.P9565411737266698232

namespace A077648

/-- `A000030(eq[1, A032741(n)])` -/
def P9565411737266698232.Spec : Prop :=
  ∀ n, P9565411737266698232.a n = A077648 (n + 1)

end A077648

/-! ## A077648.P6150479856205992436

`A000030(eq[2, A322366(n)])`
-/

namespace A077648.P6150479856205992436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A077648.P6150479856205992436

namespace A077648

/-- `A000030(eq[2, A322366(n)])` -/
def P6150479856205992436.Spec : Prop :=
  ∀ n, P6150479856205992436.a n = A077648 (n + 1)

end A077648

/-! ## A077648.P4078216266322761192

`A000030(sqrt(A001248(n+1)))`
-/

namespace A077648.P4078216266322761192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A077648.P4078216266322761192

namespace A077648

/-- `A000030(sqrt(A001248(n+1)))` -/
def P4078216266322761192.Spec : Prop :=
  ∀ n, P4078216266322761192.a n = A077648 (n + 1)

end A077648

/-! ## A077648.P11179776689308226914

`A000030(record[A006530(n+2)])`
-/

namespace A077648.P11179776689308226914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077648.P11179776689308226914

namespace A077648

/-- `A000030(record[A006530(n+2)])` -/
def P11179776689308226914.Spec : Prop :=
  ∀ n, P11179776689308226914.a n = A077648 (n + 1)

end A077648

/-! ## A077648.P16072707217317865174

`A000030(record[A020639(n+2)])`
-/

namespace A077648.P16072707217317865174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077648.P16072707217317865174

namespace A077648

/-- `A000030(record[A020639(n+2)])` -/
def P16072707217317865174.Spec : Prop :=
  ∀ n, P16072707217317865174.a n = A077648 (n + 1)

end A077648

/-!
# A077649: Initial digit of composite numbers.

The programs for A077649, the canonical program `A077649.P3331464610391563116` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077649 has offset 1).

The definition of A077649 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077649.P3331464610391563116

`A000030(A002808(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A077649

/-- `A000030(A002808(n+1))` -/
def P3331464610391563116.Spec : Prop :=
  ∀ n, P3331464610391563116.a n = A077649 (n + 1)

theorem P3331464610391563116.correct : P3331464610391563116.Spec := by
  intro n
  simp only [A077649, Nat.add_sub_cancel]

end A077649

/-! ## A077649.P12930580167444198564

`A004086(comp[C(A020639(n+1), n)])%10`
-/

namespace A077649.P12930580167444198564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 10

end

end A077649.P12930580167444198564

namespace A077649

/-- `A004086(comp[C(A020639(n+1), n)])%10` -/
def P12930580167444198564.Spec : Prop :=
  ∀ n, P12930580167444198564.a n = A077649 (n + 1)

end A077649

/-! ## A077649.P10294207867801204343

`A000030(Δ[A053767(n)])`
-/

namespace A077649.P10294207867801204343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (f1 (n + 1) - f1 n).toNat

end

end A077649.P10294207867801204343

namespace A077649

/-- `A000030(Δ[A053767(n)])` -/
def P10294207867801204343.Spec : Prop :=
  ∀ n, P10294207867801204343.a n = A077649 (n + 1)

end A077649

/-! ## A077649.P16841881980410864036

`A000030(A018252(n+2))`
-/

namespace A077649.P16841881980410864036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A018252 (n + 2)).toNat

end

end A077649.P16841881980410864036

namespace A077649

/-- `A000030(A018252(n+2))` -/
def P16841881980410864036.Spec : Prop :=
  ∀ n, P16841881980410864036.a n = A077649 (n + 1)

end A077649

/-! ## A077649.P16626074709463470311

`A000030(A141468(n+3))`
-/

namespace A077649.P16626074709463470311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A141468 (n + 3)).toNat

end

end A077649.P16626074709463470311

namespace A077649

/-- `A000030(A141468(n+3))` -/
def P16626074709463470311.Spec : Prop :=
  ∀ n, P16626074709463470311.a n = A077649 (n + 1)

end A077649

/-! ## A077649.P883161556080796581

`A000030(lt[1, A078898(n)])`
-/

namespace A077649.P883161556080796581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A077649.P883161556080796581

namespace A077649

/-- `A000030(lt[1, A078898(n)])` -/
def P883161556080796581.Spec : Prop :=
  ∀ n, P883161556080796581.a n = A077649 (n + 1)

end A077649

/-! ## A077649.P14017038841096536710

`A000030(Δ[A051349(n+1)])`
-/

namespace A077649.P14017038841096536710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (f1 (n + 1) - f1 n).toNat

end

end A077649.P14017038841096536710

namespace A077649

/-- `A000030(Δ[A051349(n+1)])` -/
def P14017038841096536710.Spec : Prop :=
  ∀ n, P14017038841096536710.a n = A077649 (n + 1)

end A077649

/-! ## A077649.P957744034055830623

`A000030(A060462(n+2)+1)`
-/

namespace A077649.P957744034055830623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A060462 (n + 2) + 1).toNat

end

end A077649.P957744034055830623

namespace A077649

/-- `A000030(A060462(n+2)+1)` -/
def P957744034055830623.Spec : Prop :=
  ∀ n, P957744034055830623.a n = A077649 (n + 1)

end A077649

/-! ## A077649.P15733322237515527595

`A000030(lt[2, A000005(n+1)]+1)`
-/

namespace A077649.P15733322237515527595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A077649.P15733322237515527595

namespace A077649

/-- `A000030(lt[2, A000005(n+1)]+1)` -/
def P15733322237515527595.Spec : Prop :=
  ∀ n, P15733322237515527595.a n = A077649 (n + 1)

end A077649

/-! ## A077649.P680239932676302876

`A000030(lt[A000010(n+1), n]+1)`
-/

namespace A077649.P680239932676302876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A077649.P680239932676302876

namespace A077649

/-- `A000030(lt[A000010(n+1), n]+1)` -/
def P680239932676302876.Spec : Prop :=
  ∀ n, P680239932676302876.a n = A077649 (n + 1)

end A077649

/-! ## A077649.P10901188928435874925

`A000030(lt[A020639(n+1), n]+1)`
-/

namespace A077649.P10901188928435874925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A077649.P10901188928435874925

namespace A077649

/-- `A000030(lt[A020639(n+1), n]+1)` -/
def P10901188928435874925.Spec : Prop :=
  ∀ n, P10901188928435874925.a n = A077649 (n + 1)

end A077649

/-! ## A077649.P3849263239788180258

`A000030(A053767(n+1)-A053767(n))`
-/

namespace A077649.P3849263239788180258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A053767 (n + 1) - A053767 n).toNat

end

end A077649.P3849263239788180258

namespace A077649

/-- `A000030(A053767(n+1)-A053767(n))` -/
def P3849263239788180258.Spec : Prop :=
  ∀ n, P3849263239788180258.a n = A077649 (n + 1)

end A077649

/-! ## A077649.P16350451746990174134

`A000030(A026234(p?[2*n+1]))`
-/

namespace A077649.P16350451746990174134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A026234 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A077649.P16350451746990174134

namespace A077649

/-- `A000030(A026234(p?[2*n+1]))` -/
def P16350451746990174134.Spec : Prop :=
  ∀ n, P16350451746990174134.a n = A077649 (n + 1)

end A077649

/-!
# A077650: Initial decimal digit of sigma(n), the sum of divisors of n.

The programs for A077650, the canonical program `A077650.P17565632628296498569` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077650 has offset 1).

The definition of A077650 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077650.P17565632628296498569

`A000030(A000203(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A077650

/-- `A000030(A000203(n+1))` -/
def P17565632628296498569.Spec : Prop :=
  ∀ n, P17565632628296498569.a n = A077650 (n + 1)

theorem P17565632628296498569.correct : P17565632628296498569.Spec := by
  intro n
  simp only [A077650, Nat.add_sub_cancel]

end A077650

/-! ## A077650.P7870597648838409438

`A004086(∑[A340793(n+1)])%10`
-/

namespace A077650.P7870597648838409438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) 10

end

end A077650.P7870597648838409438

namespace A077650

/-- `A004086(∑[A340793(n+1)])%10` -/
def P7870597648838409438.Spec : Prop :=
  ∀ n, P7870597648838409438.a n = A077650 (n + 1)

end A077650

/-! ## A077650.P9100221736613680176

`A004086(A319528(n+1)/8)%10`
-/

namespace A077650.P9100221736613680176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (SequenceMachineLib.roundAway ((A319528 (n + 1) : ℚ) / 8)).toNat) 10

end

end A077650.P9100221736613680176

namespace A077650

/-- `A004086(A319528(n+1)/8)%10` -/
def P9100221736613680176.Spec : Prop :=
  ∀ n, P9100221736613680176.a n = A077650 (n + 1)

end A077650

/-! ## A077650.P3756745366526236075

`A004086(A001065(n+1)+1+n)%10`
-/

namespace A077650.P3756745366526236075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A001065 (n + 1) + 1 + (n : ℤ)).toNat) 10

end

end A077650.P3756745366526236075

namespace A077650

/-- `A004086(A001065(n+1)+1+n)%10` -/
def P3756745366526236075.Spec : Prop :=
  ∀ n, P3756745366526236075.a n = A077650 (n + 1)

end A077650

/-! ## A077650.P15589958683011738587

`A000030(∑{d}[n+1, #])`
-/

namespace A077650.P15589958683011738587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A077650.P15589958683011738587

namespace A077650

/-- `A000030(∑{d}[n+1, #])` -/
def P15589958683011738587.Spec : Prop :=
  ∀ n, P15589958683011738587.a n = A077650 (n + 1)

end A077650

/-! ## A077650.P4806376992001973770

`A000030(abs(A143348(n+1)))`
-/

namespace A077650.P4806376992001973770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 |A143348 (n + 1)|.toNat

end

end A077650.P4806376992001973770

namespace A077650

/-- `A000030(abs(A143348(n+1)))` -/
def P4806376992001973770.Spec : Prop :=
  ∀ n, P4806376992001973770.a n = A077650 (n + 1)

end A077650

/-! ## A077650.P13005759050033598361

`A000030(A088580(n+1)-1)`
-/

namespace A077650.P13005759050033598361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A088580 (n + 1) - 1).toNat

end

end A077650.P13005759050033598361

namespace A077650

/-- `A000030(A088580(n+1)-1)` -/
def P13005759050033598361.Spec : Prop :=
  ∀ n, P13005759050033598361.a n = A077650 (n + 1)

theorem P13005759050033598361.correct : P13005759050033598361.Spec := by
  intro n
  simp only [A077650, Nat.add_sub_cancel, A077650.P13005759050033598361.a, A077650.P17565632628296498569.a, A000030, A000030.P4990867543733972260.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077650

/-! ## A077650.P16920764126094182244

`A000030(A074400(n+1)/2)`
-/

namespace A077650.P16920764126094182244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A077650.P16920764126094182244

namespace A077650

/-- `A000030(A074400(n+1)/2)` -/
def P16920764126094182244.Spec : Prop :=
  ∀ n, P16920764126094182244.a n = A077650 (n + 1)

end A077650

/-! ## A077650.P2589655454849336861

`A000030(floor(sqrt(A258774(n+1))))`
-/

namespace A077650.P2589655454849336861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (Int.sqrt (A258774 (n + 1))).toNat

end

end A077650.P2589655454849336861

namespace A077650

/-- `A000030(floor(sqrt(A258774(n+1))))` -/
def P2589655454849336861.Spec : Prop :=
  ∀ n, P2589655454849336861.a n = A077650 (n + 1)

end A077650

/-! ## A077650.P17939355154718316891

`A000030(A001065(n+1)+1+n)`
-/

namespace A077650.P17939355154718316891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A077650.P17939355154718316891

namespace A077650

/-- `A000030(A001065(n+1)+1+n)` -/
def P17939355154718316891.Spec : Prop :=
  ∀ n, P17939355154718316891.a n = A077650 (n + 1)

theorem P17939355154718316891.correct : P17939355154718316891.Spec := by
  intro n
  simp only [A077650, Nat.add_sub_cancel, A077650.P17939355154718316891.a, A077650.P17565632628296498569.a, A000030, A000030.P4990867543733972260.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077650

/-! ## A077650.P11051760130447106572

`A000030(A237588(n+1)+2*n+1)`
-/

namespace A077650.P11051760130447106572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A237588 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A077650.P11051760130447106572

namespace A077650

/-- `A000030(A237588(n+1)+2*n+1)` -/
def P11051760130447106572.Spec : Prop :=
  ∀ n, P11051760130447106572.a n = A077650 (n + 1)

theorem P11051760130447106572.correct : P11051760130447106572.Spec := by
  intro n
  simp only [A077650, Nat.add_sub_cancel, A077650.P11051760130447106572.a, A077650.P17565632628296498569.a, A000030, A000030.P4990867543733972260.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A237588, A237588.P10590847318200798620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077650

/-! ## A077650.P1011364316205924821

`A368360(A274535(n+1))`
-/

namespace A077650.P1011364316205924821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368360 (A274535 (n + 1)).toNat

end

end A077650.P1011364316205924821

namespace A077650

/-- `A368360(A274535(n+1))` -/
def P1011364316205924821.Spec : Prop :=
  ∀ n, P1011364316205924821.a n = A077650 (n + 1)

end A077650

/-! ## A077650.P17287765971785156253

`A255873(∑{d}[n+1, 8*#-#])`
-/

namespace A077650.P17287765971785156253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255873 (∑ d ∈ Nat.divisors (f1 n), ((8 * d : ℤ) - (d : ℤ))).toNat

end

end A077650.P17287765971785156253

namespace A077650

/-- `A255873(∑{d}[n+1, 8*#-#])` -/
def P17287765971785156253.Spec : Prop :=
  ∀ n, P17287765971785156253.a n = A077650 (n + 1)

end A077650

/-! ## A077650.P14997802687245587018

`A255873(A319527(n+1))`
-/

namespace A077650.P14997802687245587018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255873 (A319527 (n + 1)).toNat

end

end A077650.P14997802687245587018

namespace A077650

/-- `A255873(A319527(n+1))` -/
def P14997802687245587018.Spec : Prop :=
  ∀ n, P14997802687245587018.a n = A077650 (n + 1)

end A077650

/-! ## A077650.P8761000501348541502

`A000030(A326122(n+1))`
-/

namespace A077650.P8761000501348541502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A326122 (n + 1)).toNat

end

end A077650.P8761000501348541502

namespace A077650

/-- `A000030(A326122(n+1))` -/
def P8761000501348541502.Spec : Prop :=
  ∀ n, P8761000501348541502.a n = A077650 (n + 1)

end A077650

/-! ## A077650.P9912652662932599258

`A002117(A229187(A365347((n+1)²)))`
-/

namespace A077650.P9912652662932599258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002117 (A229187 (A365347 ((n + 1) ^ 2)).toNat).toNat

end

end A077650.P9912652662932599258

namespace A077650

/-- `A002117(A229187(A365347((n+1)²)))` -/
def P9912652662932599258.Spec : Prop :=
  ∀ n, P9912652662932599258.a n = A077650 (n + 1)

end A077650

/-!
# A077651: Initial digit of phi(n), where phi is Euler totient function, A000010.

The programs for A077651, the canonical program `A077651.P9375760711476955691` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077651 has offset 1).

The definition of A077651 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000030, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077651.P9375760711476955691

`A000030(A000010(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A077651

/-- `A000030(A000010(n+1))` -/
def P9375760711476955691.Spec : Prop :=
  ∀ n, P9375760711476955691.a n = A077651 (n + 1)

theorem P9375760711476955691.correct : P9375760711476955691.Spec := by
  intro n
  simp only [A077651, Nat.add_sub_cancel]

end A077651

/-! ## A077651.P6235402426808910544

`A000030((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A077651.P6235402426808910544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A077651.P6235402426808910544

namespace A077651

/-- `A000030((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P6235402426808910544.Spec : Prop :=
  ∀ n, P6235402426808910544.a n = A077651 (n + 1)

end A077651

/-! ## A077651.P8927012605920052941

`A000030(Δ[A002088(n)])`
-/

namespace A077651.P8927012605920052941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (f1 (n + 1) - f1 n).toNat

end

end A077651.P8927012605920052941

namespace A077651

/-- `A000030(Δ[A002088(n)])` -/
def P8927012605920052941.Spec : Prop :=
  ∀ n, P8927012605920052941.a n = A077651 (n + 1)

end A077651

/-! ## A077651.P12755979584694749687

`A000030(Δ[A005728(n)])`
-/

namespace A077651.P12755979584694749687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (f1 (n + 1) - f1 n).toNat

end

end A077651.P12755979584694749687

namespace A077651

/-- `A000030(Δ[A005728(n)])` -/
def P12755979584694749687.Spec : Prop :=
  ∀ n, P12755979584694749687.a n = A077651 (n + 1)

end A077651

/-! ## A077651.P11423800243498042390

`A000030(sqrt(A127473(n+1)))`
-/

namespace A077651.P11423800243498042390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A077651.P11423800243498042390

namespace A077651

/-- `A000030(sqrt(A127473(n+1)))` -/
def P11423800243498042390.Spec : Prop :=
  ∀ n, P11423800243498042390.a n = A077651 (n + 1)

end A077651

/-! ## A077651.P7381379394051237803

`A000030(A109606(n+1)+1)`
-/

namespace A077651.P7381379394051237803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A109606 (n + 1) + 1).toNat

end

end A077651.P7381379394051237803

namespace A077651

/-- `A000030(A109606(n+1)+1)` -/
def P7381379394051237803.Spec : Prop :=
  ∀ n, P7381379394051237803.a n = A077651 (n + 1)

theorem P7381379394051237803.correct : P7381379394051237803.Spec := by
  intro n
  simp only [A077651, Nat.add_sub_cancel, A077651.P7381379394051237803.a, A077651.P9375760711476955691.a, A000010, A000010.P4673923239450215316.a, A000030, A000030.P4990867543733972260.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A077651

/-! ## A077651.P12468422159076166723

`A000030(A002618(n+1)/(n+1))`
-/

namespace A077651.P12468422159076166723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A077651.P12468422159076166723

namespace A077651

/-- `A000030(A002618(n+1)/(n+1))` -/
def P12468422159076166723.Spec : Prop :=
  ∀ n, P12468422159076166723.a n = A077651 (n + 1)

end A077651

/-! ## A077651.P6542394508303897153

`A000030(A083239(n+1)+A083239(n))`
-/

namespace A077651.P6542394508303897153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A083239 (n + 1) + A083239 n).toNat

end

end A077651.P6542394508303897153

namespace A077651

/-- `A000030(A083239(n+1)+A083239(n))` -/
def P6542394508303897153.Spec : Prop :=
  ∀ n, P6542394508303897153.a n = A077651 (n + 1)

end A077651

/-! ## A077651.P9643842123917478932

`A000030(A002088(n+1)-A002088(n))`
-/

namespace A077651.P9643842123917478932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A002088 (n + 1) - A002088 n).toNat

end

end A077651.P9643842123917478932

namespace A077651

/-- `A000030(A002088(n+1)-A002088(n))` -/
def P9643842123917478932.Spec : Prop :=
  ∀ n, P9643842123917478932.a n = A077651 (n + 1)

end A077651

/-! ## A077651.P11876422024302684943

`A000030(A067541(2*n+1))`
-/

namespace A077651.P11876422024302684943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A067541 (2 * n + 1)).toNat

end

end A077651.P11876422024302684943

namespace A077651

/-- `A000030(A067541(2*n+1))` -/
def P11876422024302684943.Spec : Prop :=
  ∀ n, P11876422024302684943.a n = A077651 (n + 1)

end A077651

/-!
# A077652: Primes whose initial and terminal decimal digits are identical.

The programs for A077652, the canonical program `A077652.P11268468838467158393` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077652 has offset 1).

The definition of A077652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077652.P11268468838467158393

`p?[gcd(A000040(n+1), A040164(n+1))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A077652

/-- `p?[gcd(A000040(n+1), A040164(n+1))]` -/
def P11268468838467158393.Spec : Prop :=
  ∀ n, (P11268468838467158393.a n : ℤ) = A077652 (n + 1)

theorem P11268468838467158393.correct : P11268468838467158393.Spec := by
  intro n
  simp only [A077652, Nat.add_sub_cancel]

end A077652

/-!
# A077653: a(1)=1, a(2)=2, a(3)=2, a(n) = abs(a(n-1) - a(n-2) - a(n-3)).

The programs for A077653, the canonical program `A077653.P5972105283110852132` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077653 has offset 1).

The definition of A077653 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(a(n-1)-a(n-2)-a(n-3))` (program `A077653.P5972105283110852132`, by `A077653.P5972105283110852132.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077653.P5972105283110852132

`abs(a(n-1)-a(n-2)-a(n-3))` with `a(0)=1, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A077653

/-- `abs(a(n-1)-a(n-2)-a(n-3))` -/
def P5972105283110852132.Spec : Prop :=
  ∀ n, P5972105283110852132.a n = A077653 (n + 1)

theorem P5972105283110852132.correct : P5972105283110852132.Spec := by
  intro n
  simp only [A077653, Nat.add_sub_cancel]

end A077653

/-! ## A077653.P12137071670547684191

`A080096(n+6)`
-/

namespace A077653.P12137071670547684191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080096 (n + 6)

end

end A077653.P12137071670547684191

namespace A077653

/-- `A080096(n+6)` -/
def P12137071670547684191.Spec : Prop :=
  ∀ n, P12137071670547684191.a n = A077653 (n + 1)

end A077653

/-! ## A077653.P8751730925169702365

`lcm(A057077(n), A080096(A020715(n)))`
-/

namespace A077653.P8751730925169702365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A080096 (A020715 n).toNat)

end

end A077653.P8751730925169702365

namespace A077653

/-- `lcm(A057077(n), A080096(A020715(n)))` -/
def P8751730925169702365.Spec : Prop :=
  ∀ n, (P8751730925169702365.a n : ℤ) = A077653 (n + 1)

end A077653

/-! ## A077653.P2005489685289423602

`or(A000007(n), A080096(A020715(n)))`
-/

namespace A077653.P2005489685289423602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A080096 (A020715 n).toNat)

end

end A077653.P2005489685289423602

namespace A077653

/-- `or(A000007(n), A080096(A020715(n)))` -/
def P2005489685289423602.Spec : Prop :=
  ∀ n, P2005489685289423602.a n = A077653 (n + 1)

end A077653

/-! ## A077653.P9186033808092794876

`A088226(n+12)`
-/

namespace A077653.P9186033808092794876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (n + 12)

end

end A077653.P9186033808092794876

namespace A077653

/-- `A088226(n+12)` -/
def P9186033808092794876.Spec : Prop :=
  ∀ n, P9186033808092794876.a n = A077653 (n + 1)

end A077653

/-! ## A077653.P6394439515619507757

`A057554(A078358(n+12))`
-/

namespace A077653.P6394439515619507757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A078358 (n + 12)).toNat

end

end A077653.P6394439515619507757

namespace A077653

/-- `A057554(A078358(n+12))` -/
def P6394439515619507757.Spec : Prop :=
  ∀ n, P6394439515619507757.a n = A077653 (n + 1)

end A077653

/-!
# A077654: Composites k such that 2k+1 is also composite.

The programs for A077654, the canonical program `A077654.P1810886267983371320` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077654 has offset 1).

The definition of A077654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077654.P8287534595688540864

`lt[2, A237053(n)]`
-/

namespace A077654.P8287534595688540864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A077654.P8287534595688540864

namespace A077654

/-- `lt[2, A237053(n)]` -/
def P8287534595688540864.Spec : Prop :=
  ∀ n, (P8287534595688540864.a n : ℤ) = A077654 (n + 1)

end A077654

/-! ## A077654.P5365046519581016706

`lt[1, A108234(n+1)]+1`
-/

namespace A077654.P5365046519581016706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108234 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A077654.P5365046519581016706

namespace A077654

/-- `lt[1, A108234(n+1)]+1` -/
def P5365046519581016706.Spec : Prop :=
  ∀ n, (P5365046519581016706.a n : ℤ) = A077654 (n + 1)

end A077654

/-! ## A077654.P2286785804806541434

`lt[2*(n+1), A038700(n+1)]`
-/

namespace A077654.P2286785804806541434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A077654.P2286785804806541434

namespace A077654

/-- `lt[2*(n+1), A038700(n+1)]` -/
def P2286785804806541434.Spec : Prop :=
  ∀ n, (P2286785804806541434.a n : ℤ) = A077654 (n + 1)

end A077654

/-! ## A077654.P1810886267983371320

`comp[A006530(2*n+1)%(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A077654

/-- `comp[A006530(2*n+1)%(n+1)]` -/
def P1810886267983371320.Spec : Prop :=
  ∀ n, (P1810886267983371320.a n : ℤ) = A077654 (n + 1)

theorem P1810886267983371320.correct : P1810886267983371320.Spec := by
  intro n
  simp only [A077654, Nat.add_sub_cancel]

end A077654

/-! ## A077654.P2830858777197332154

`eq[A101264(n), A339579(n+1)]`
-/

namespace A077654.P2830858777197332154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077654.P2830858777197332154

namespace A077654

/-- `eq[A101264(n), A339579(n+1)]` -/
def P2830858777197332154.Spec : Prop :=
  ∀ n, (P2830858777197332154.a n : ℤ) = A077654 (n + 1)

end A077654

/-! ## A077654.P18241460148303630777

`∪[A117099(n+1), A123608(n+1)]`
-/

namespace A077654.P18241460148303630777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A077654.P18241460148303630777

namespace A077654

/-- `∪[A117099(n+1), A123608(n+1)]` -/
def P18241460148303630777.Spec : Prop :=
  ∀ n, (P18241460148303630777.a n : ℤ) = A077654 (n + 1)

end A077654

/-! ## A077654.P7283438441818645049

`eq[A010051(2*n+1), A339579(n+1)]`
-/

namespace A077654.P7283438441818645049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077654.P7283438441818645049

namespace A077654

/-- `eq[A010051(2*n+1), A339579(n+1)]` -/
def P7283438441818645049.Spec : Prop :=
  ∀ n, (P7283438441818645049.a n : ℤ) = A077654 (n + 1)

end A077654

/-! ## A077654.P14095223510090180986

`eq[A339579(2*(n+1)), A339579(n+1)]`
-/

namespace A077654.P14095223510090180986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077654.P14095223510090180986

namespace A077654

/-- `eq[A339579(2*(n+1)), A339579(n+1)]` -/
def P14095223510090180986.Spec : Prop :=
  ∀ n, (P14095223510090180986.a n : ℤ) = A077654 (n + 1)

end A077654

/-! ## A077654.P12819747603044778061

`∩[A018252(n+1), A104275(n+1)-1]`
-/

namespace A077654.P12819747603044778061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077654.P12819747603044778061

namespace A077654

/-- `∩[A018252(n+1), A104275(n+1)-1]` -/
def P12819747603044778061.Spec : Prop :=
  ∀ n, (P12819747603044778061.a n : ℤ) = A077654 (n + 1)

end A077654

/-! ## A077654.P5200046051913339215

`filter[A047845(n+2), A005171(#)]`
-/

namespace A077654.P5200046051913339215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A077654.P5200046051913339215

namespace A077654

/-- `filter[A047845(n+2), A005171(#)]` -/
def P5200046051913339215.Spec : Prop :=
  ∀ n, P5200046051913339215.a n = A077654 (n + 1)

end A077654

/-! ## A077654.P14650113262046581599

`filter[A047845(n+2), A066247(#)]`
-/

namespace A077654.P14650113262046581599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A077654.P14650113262046581599

namespace A077654

/-- `filter[A047845(n+2), A066247(#)]` -/
def P14650113262046581599.Spec : Prop :=
  ∀ n, P14650113262046581599.a n = A077654 (n + 1)

end A077654

/-! ## A077654.P1290142682950330653

`∩[A002808(n+1), A047845(n+1)]`
-/

namespace A077654.P1290142682950330653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077654.P1290142682950330653

namespace A077654

/-- `∩[A002808(n+1), A047845(n+1)]` -/
def P1290142682950330653.Spec : Prop :=
  ∀ n, (P1290142682950330653.a n : ℤ) = A077654 (n + 1)

end A077654

/-! ## A077654.P17894462501625118871

`∩[A018252(n+1), A047845(n+1)]`
-/

namespace A077654.P17894462501625118871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077654.P17894462501625118871

namespace A077654

/-- `∩[A018252(n+1), A047845(n+1)]` -/
def P17894462501625118871.Spec : Prop :=
  ∀ n, (P17894462501625118871.a n : ℤ) = A077654 (n + 1)

end A077654

/-! ## A077654.P14419456245019821839

`∩[A018252(n+2), A073432(n+2)-n]`
-/

namespace A077654.P14419456245019821839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073432 (n + 2) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077654.P14419456245019821839

namespace A077654

/-- `∩[A018252(n+2), A073432(n+2)-n]` -/
def P14419456245019821839.Spec : Prop :=
  ∀ n, (P14419456245019821839.a n : ℤ) = A077654 (n + 1)

end A077654

/-! ## A077654.P7359502335132476058

`∩[A047845(n+1), A072668(n+1)+1]`
-/

namespace A077654.P7359502335132476058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077654.P7359502335132476058

namespace A077654

/-- `∩[A047845(n+1), A072668(n+1)+1]` -/
def P7359502335132476058.Spec : Prop :=
  ∀ n, (P7359502335132476058.a n : ℤ) = A077654 (n + 1)

end A077654

/-! ## A077654.P9279065367874726260

`∩[A047845(n+1), A065090(n+1)]`
-/

namespace A077654.P9279065367874726260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077654.P9279065367874726260

namespace A077654

/-- `∩[A047845(n+1), A065090(n+1)]` -/
def P9279065367874726260.Spec : Prop :=
  ∀ n, (P9279065367874726260.a n : ℤ) = A077654 (n + 1)

end A077654

/-! ## A077654.P3225837351193609910

`∩[A047845(n+1), A171581(n+1)]`
-/

namespace A077654.P3225837351193609910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077654.P3225837351193609910

namespace A077654

/-- `∩[A047845(n+1), A171581(n+1)]` -/
def P3225837351193609910.Spec : Prop :=
  ∀ n, (P3225837351193609910.a n : ℤ) = A077654 (n + 1)

end A077654

/-! ## A077654.P14963445216255092515

`eq[A211173(n), A339579(n+1)]`
-/

namespace A077654.P14963445216255092515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211173 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077654.P14963445216255092515

namespace A077654

/-- `eq[A211173(n), A339579(n+1)]` -/
def P14963445216255092515.Spec : Prop :=
  ∀ n, (P14963445216255092515.a n : ℤ) = A077654 (n + 1)

end A077654

/-! ## A077654.P2333640282178209103

`eq[A055671(n), A324642(2*n+1)]`
-/

namespace A077654.P2333640282178209103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324642 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077654.P2333640282178209103

namespace A077654

/-- `eq[A055671(n), A324642(2*n+1)]` -/
def P2333640282178209103.Spec : Prop :=
  ∀ n, (P2333640282178209103.a n : ℤ) = A077654 (n + 1)

end A077654

/-! ## A077654.P17935904254538616716

`eq[A055671(n), A339579(2*(n+1))]`
-/

namespace A077654.P17935904254538616716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077654.P17935904254538616716

namespace A077654

/-- `eq[A055671(n), A339579(2*(n+1))]` -/
def P17935904254538616716.Spec : Prop :=
  ∀ n, (P17935904254538616716.a n : ℤ) = A077654 (n + 1)

end A077654

/-!
# A077655: Number of consecutive successors of n having the same number of prime factors as n (counted with multiplicity).

The programs for A077655, there is no canonical definition to state claims against.
-/

/-! ## A077655.P16059752210066218809

`A071193(n+1)-(n+2)`
-/

namespace A077655.P16059752210066218809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071193 (n + 1) - (n + 2 : ℤ)

end

end A077655.P16059752210066218809

/-! ## A077655.P10030882964795810209

`A071193(n+1)%A020725(n+1)`
-/

namespace A077655.P10030882964795810209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071193 (n + 1)) (A020725 (n + 1))

end

end A077655.P10030882964795810209

/-! ## A077655.P6466309957726709577

`A353556(A306229(n+1)+A286736(n))`
-/

namespace A077655.P6466309957726709577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353556 (A306229 (n + 1) + A286736 n).toNat

end

end A077655.P6466309957726709577

/-! ## A077655.P16688899674271952017

`A079979(A285943(n)-A010051(n+1))`
-/

namespace A077655.P16688899674271952017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (A285943 n - A010051 (n + 1)).toNat

end

end A077655.P16688899674271952017

/-! ## A077655.P10855134296715037390

`A079979(xor(A010051(n+1), A285943(n)))`
-/

namespace A077655.P10855134296715037390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (Int.xor (A010051 (n + 1)) (A285943 n)).toNat

end

end A077655.P10855134296715037390

/-!
# A077656: Numbers having a different number of prime factors as their successors (counted with multiplicity).

The programs for A077656, there is no canonical definition to state claims against.
-/

/-! ## A077656.P2670841171601084918

`∪[A322839(n+1), A322840(n+1)]`
-/

namespace A077656.P2670841171601084918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322840 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A077656.P2670841171601084918

/-!
# A077657: Least number with exactly n consecutive successors, all having the same number of prime factors (counted with multiplicity).

The programs for A077657, there is no canonical definition to state claims against.
-/

/-! ## A077657.P2911593665220615407

`A045984(n+1)+A077655(A045984(n+1))-n`
-/

namespace A077657.P2911593665220615407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045984 (n + 1) + A077655 (A045984 (n + 1)).toNat - (n : ℤ)

end

end A077657.P2911593665220615407

/-! ## A077657.P15335678640691271856

`A045984(n+1)+char[3]+char[7]`
-/

namespace A077657.P15335678640691271856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045984 (n + 1) + (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

end

end A077657.P15335678640691271856

/-! ## A077657.P10452279539653767818

`or(char[A000058(n)], A045984(n+1))`
-/

namespace A077657.P10452279539653767818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000058 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A045984 (n + 1))

end

end A077657.P10452279539653767818

/-! ## A077657.P6219846380575874949

`or(char[A000230(n)], A045984(n+1))`
-/

namespace A077657.P6219846380575874949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A045984 (n + 1))

end

end A077657.P6219846380575874949

/-! ## A077657.P10808847234082367058

`or(char[A001576(n)], A045984(n+1))`
-/

namespace A077657.P10808847234082367058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A045984 (n + 1))

end

end A077657.P10808847234082367058

/-!
# A077659: a(n) = smallest k>1 such that the sum n^k + (n+1)^k is prime, or -1 if no such k exists.

The programs for A077659, there is no canonical definition to state claims against.
-/

/-! ## A077659.P3123644359993314991

`2^A080121(n+1)`
-/

namespace A077659.P3123644359993314991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A080121 (n + 1) : ℤ)

end

end A077659.P3123644359993314991

/-! ## A077659.P13467727341766315023

`gcd(93, A120106(n))+1`
-/

namespace A077659.P13467727341766315023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 93 (A120106 n) + 1

end

end A077659.P13467727341766315023

/-! ## A077659.P8394675050023575120

`2^(A328496(n+1)²+1)`
-/

namespace A077659.P8394675050023575120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A328496 (n + 1) ^ 2 + 1 : ℤ)

end

end A077659.P8394675050023575120

/-! ## A077659.P10254795110357781704

`gcd(32, A000010(n²+n+7))`
-/

namespace A077659.P10254795110357781704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 32 (A000010 (n ^ 2 + (n + 7)))

end

end A077659.P10254795110357781704

/-! ## A077659.P13763498330257959212

`2^A000688(∑[2-char[∑[n]]])`
-/

namespace A077659.P13763498330257959212
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000688 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℤ)

end

end A077659.P13763498330257959212

/-!
# A077660: Sum of terms of n-th row of A077583.

The programs for A077660, there is no canonical definition to state claims against.
-/

/-! ## A077660.P6434519124614657488

`A081519(n+1)+n*(n+2)`
-/

namespace A077660.P6434519124614657488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081519 (n + 1) + (n * (n + 2) : ℤ)

end

end A077660.P6434519124614657488

/-! ## A077660.P11863342928472370716

`∑[A005408(n)]+A081519(n+1)-1`
-/

namespace A077660.P11863342928472370716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A081519 (n + 1) - 1)

end

end A077660.P11863342928472370716

/-! ## A077660.P15441802431892863455

`A081519(n+1)+A028387(n)-(n+1)`
-/

namespace A077660.P15441802431892863455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081519 (n + 1) + A028387 n - (n + 1 : ℤ)

end

end A077660.P15441802431892863455

/-! ## A077660.P12108990400916236237

`record[A028242(n)²]-(1-A081519(n+1))`
-/

namespace A077660.P12108990400916236237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (1 - A081519 (n + 1))

end

end A077660.P12108990400916236237

/-! ## A077660.P10361879352714311684

`((n+1)²+A081519(n+1)-1)%A000032(n+5)`
-/

namespace A077660.P10361879352714311684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n + 1) ^ 2 : ℤ) + (A081519 (n + 1) - 1)) (A000032 (n + 5))

end

end A077660.P10361879352714311684

/-!
# A077662: a(n) = n-th positive integer not relatively prime to n, with a(1)=1.

The programs for A077662, there is no canonical definition to state claims against.
-/

/-! ## A077662.P10690337405330325897

`A077149(n+1)-(n+2)`
-/

namespace A077662.P10690337405330325897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077149 (n + 1) - (n + 2 : ℤ)

end

end A077662.P10690337405330325897

/-! ## A077662.P11277843464168748906

`abs(A077149(n+1)+A001478(n+2))`
-/

namespace A077662.P11277843464168748906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077149 (n + 1) + A001478 (n + 2)|

end

end A077662.P11277843464168748906

/-! ## A077662.P14178334256079953058

`abs(A077149(n+1)+A001489(n+2))`
-/

namespace A077662.P14178334256079953058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077149 (n + 1) + A001489 (n + 2)|

end

end A077662.P14178334256079953058

/-! ## A077662.P18387165681731595557

`A077663(n+1)-A081519(n+1)+1`
-/

namespace A077662.P18387165681731595557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077663 (n + 1) - A081519 (n + 1) + 1

end

end A077662.P18387165681731595557

/-! ## A077662.P13267122443456440516

`A077661(∑[n+1])`
-/

namespace A077662.P13267122443456440516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077661 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077662.P13267122443456440516

/-! ## A077662.P5222697680657244935

`A077661(C(n+2, 2))%A017512(n)`
-/

namespace A077662.P5222697680657244935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077661 (Nat.choose (n + 2) 2)) (A017512 n)

end

end A077662.P5222697680657244935

/-! ## A077662.P17336228251143177352

`A023444(A077149(n+1)-n)`
-/

namespace A077662.P17336228251143177352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A077149 (n + 1) - (n : ℤ)).toNat

end

end A077662.P17336228251143177352

/-! ## A077662.P2164696308424808580

`A289207(A077149(n+1)-n)`
-/

namespace A077662.P2164696308424808580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A077149 (n + 1) - (n : ℤ)).toNat

end

end A077662.P2164696308424808580

/-! ## A077662.P10665685578010977364

`A023444(A077149(n+1))+A001489(n)`
-/

namespace A077662.P10665685578010977364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A077149 (n + 1)).toNat + A001489 n

end

end A077662.P10665685578010977364

/-! ## A077662.P17432879457624126106

`A023443(A077149(n+1)+A001478(n+1))`
-/

namespace A077662.P17432879457624126106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A077149 (n + 1) + A001478 (n + 1)).toNat

end

end A077662.P17432879457624126106

/-! ## A077662.P17723996203086427828

`A009056(A077149(n+1))+A001478(n+4)`
-/

namespace A077662.P17723996203086427828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A077149 (n + 1)).toNat + A001478 (n + 4)

end

end A077662.P17723996203086427828

/-!
# A077663: Sum of terms of n-th row of A077661.

The programs for A077663, there is no canonical definition to state claims against.
-/

/-! ## A077663.P18060012235734692231

`A077662(n+1)+A081519(n+1)-1`
-/

namespace A077663.P18060012235734692231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077662 (n + 1) + (A081519 (n + 1) - 1)

end

end A077663.P18060012235734692231

/-! ## A077663.P1032368853516715533

`A077149(n+1)+A081519(n+1)-(n+3)`
-/

namespace A077663.P1032368853516715533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077149 (n + 1) + (A081519 (n + 1) - (n + 3 : ℤ))

end

end A077663.P1032368853516715533

/-! ## A077663.P3334383423183022684

`A077660(n+1)-n*(n+2)-(1-A077662(n+1))`
-/

namespace A077663.P3334383423183022684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077660 (n + 1) - (n * (n + 2) : ℤ) - (1 - A077662 (n + 1))

end

end A077663.P3334383423183022684

/-! ## A077663.P15155332500844818729

`A081519(n+1)+A023443(A077662(n+1))`
-/

namespace A077663.P15155332500844818729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081519 (n + 1) + A023443 (A077662 (n + 1)).toNat

end

end A077663.P15155332500844818729

/-! ## A077663.P17147354251224655166

`A081519(n+1)+A023443(A077661(∑[n+1]))`
-/

namespace A077663.P17147354251224655166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081519 (n + 1) + A023443 (A077661 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A077663.P17147354251224655166

/-!
# A077664: Triangle in which the n-th row contains n smallest numbers greater than n and coprime to n.

The programs for A077664, there is no canonical definition to state claims against.
-/

/-! ## A077664.P9611579559592159939

`A077581(n+1)+∑[char[∑[n]]]`
-/

namespace A077664.P9611579559592159939
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077581 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A077664.P9611579559592159939

/-! ## A077664.P6923656923717952069

`A077581(n+1)+A003056(n)+1`
-/

namespace A077664.P6923656923717952069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077581 (n + 1) + A003056 n + 1

end

end A077664.P6923656923717952069

/-! ## A077664.P5413449803873025801

`A007401(n+1)+A077581(n+1)-n`
-/

namespace A077664.P5413449803873025801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (n + 1) + (A077581 (n + 1) - (n : ℤ))

end

end A077664.P5413449803873025801

/-! ## A077664.P3811682837553724879

`A014132(n+1)+A077581(n+1)-(n+1)`
-/

namespace A077664.P3811682837553724879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1) + (A077581 (n + 1) - (n + 1 : ℤ))

end

end A077664.P3811682837553724879

/-! ## A077664.P13651038391027330068

`A028310(A077581(n+1)+∑[A010054(n)])`
-/

namespace A077664.P13651038391027330068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A077581 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A077664.P13651038391027330068

/-! ## A077664.P16387083072101611445

`A123578(n+1)+A077581(n+1)`
-/

namespace A077664.P16387083072101611445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (n + 1) + A077581 (n + 1)

end

end A077664.P16387083072101611445

/-! ## A077664.P6366361285729868699

`A347957(A140513(n))+A077581(n+1)`
-/

namespace A077664.P6366361285729868699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347957 (A140513 n).toNat + A077581 (n + 1)

end

end A077664.P6366361285729868699

/-!
# A077665: Final term of n-th row of A077664.

The programs for A077665, there is no canonical definition to state claims against.
-/

/-! ## A077665.P16117038926498533307

`A077148(n+1)-1`
-/

namespace A077665.P16117038926498533307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077148 (n + 1) - 1

end

end A077665.P16117038926498533307

/-! ## A077665.P5995009800590053215

`A069213(n+1)+1+n`
-/

namespace A077665.P5995009800590053215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069213 (n + 1) + 1 + (n : ℤ)

end

end A077665.P5995009800590053215

/-! ## A077665.P5851048105065015450

`A023443(A077148(n+1))`
-/

namespace A077665.P5851048105065015450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A077148 (n + 1)).toNat

end

end A077665.P5851048105065015450

/-! ## A077665.P15537594192390932988

`A020725(A069213(n+1)+n)`
-/

namespace A077665.P15537594192390932988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A069213 (n + 1) + (n : ℤ)).toNat

end

end A077665.P15537594192390932988

/-! ## A077665.P2644325191847796169

`A383574(A002476(n+1))+A077148(n+1)`
-/

namespace A077665.P2644325191847796169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383574 (A002476 (n + 1)).toNat + A077148 (n + 1)

end

end A077665.P2644325191847796169

/-! ## A077665.P7041185738915619173

`A126571(∑[n+1])+1+n`
-/

namespace A077665.P7041185738915619173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126571 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 + (n : ℤ)

end

end A077665.P7041185738915619173

/-! ## A077665.P10129635841368725645

`A126571(C(n+2, 2))+n+1`
-/

namespace A077665.P10129635841368725645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126571 (Nat.choose (n + 2) 2) + (n + 1 : ℤ)

end

end A077665.P10129635841368725645

/-! ## A077665.P15370586700324012891

`A020725(A126571(∑[n+1])+n)`
-/

namespace A077665.P15370586700324012891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A126571 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat

end

end A077665.P15370586700324012891

/-! ## A077665.P10180712495577798759

`A126571(A000217(n+1))+n+1`
-/

namespace A077665.P10180712495577798759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126571 (A000217 (n + 1)).toNat + (n + 1 : ℤ)

end

end A077665.P10180712495577798759

/-! ## A077665.P10242629408985206759

`A126571(A008795(2*n))+n+1`
-/

namespace A077665.P10242629408985206759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126571 (A008795 (2 * n)).toNat + (n + 1 : ℤ)

end

end A077665.P10242629408985206759

/-! ## A077665.P10546997257667974191

`A077664(∑[n+1])`
-/

namespace A077665.P10546997257667974191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077664 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077665.P10546997257667974191

/-! ## A077665.P7615085782460222561

`A077581(∑[n+1])+1+n`
-/

namespace A077665.P7615085782460222561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077581 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 + (n : ℤ)

end

end A077665.P7615085782460222561

/-!
# A077666: Sum of terms of n-th row of A077664.

The programs for A077666, there is no canonical definition to state claims against.
-/

/-! ## A077666.P13741419937755046023

`(n+1)²+A077582(n+1)`
-/

namespace A077666.P13741419937755046023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + A077582 (n + 1)

end

end A077666.P13741419937755046023

/-! ## A077666.P9032632202281756220

`A077582(n+1)+∑[A005408(n)]`
-/

namespace A077666.P9032632202281756220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077582 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077666.P9032632202281756220

/-! ## A077666.P15443495408158241283

`A077582(n+1)+Δ[A000330(n)]`
-/

namespace A077666.P15443495408158241283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077582 (n + 1) + (f1 (n + 1) - f1 n)

end

end A077666.P15443495408158241283

/-! ## A077666.P12354908869951705956

`A077582(n+1)+A005563(n)+1`
-/

namespace A077666.P12354908869951705956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077582 (n + 1) + (A005563 n + 1)

end

end A077666.P12354908869951705956

/-! ## A077666.P3944985096516189563

`A081501(n+1)+A069213(n+1)`
-/

namespace A077666.P3944985096516189563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081501 (n + 1) + A069213 (n + 1)

end

end A077666.P3944985096516189563

/-! ## A077666.P15941528969719961341

`A077582(n+1)+(n+1)*A328399(2*n)`
-/

namespace A077666.P15941528969719961341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077582 (n + 1) + (n + 1 : ℤ) * A328399 (2 * n)

end

end A077666.P15941528969719961341

/-! ## A077666.P4911656978256011732

`A077582(n+1)+record[A236104(n+1)]`
-/

namespace A077666.P4911656978256011732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077582 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077666.P4911656978256011732

/-! ## A077666.P2490587225086895387

`A077582(n+1)+A008459(A034856(n+1))`
-/

namespace A077666.P2490587225086895387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077582 (n + 1) + A008459 (A034856 (n + 1)).toNat

end

end A077666.P2490587225086895387

/-! ## A077666.P12532314027004204837

`A020725(A077582(n+1))+A005563(n)`
-/

namespace A077666.P12532314027004204837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A077582 (n + 1)).toNat + A005563 n

end

end A077666.P12532314027004204837

/-! ## A077666.P12797956983699610709

`A020725(A077582(n+1)+n*(n+2))`
-/

namespace A077666.P12797956983699610709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A077582 (n + 1) + (n * (n + 2) : ℤ)).toNat

end

end A077666.P12797956983699610709

/-!
# A077668: Last term of row n of A077667.

The programs for A077668, there is no canonical definition to state claims against.
-/

/-! ## A077668.P13689341686261066426

`A077667(A053767(n+1))`
-/

namespace A077668.P13689341686261066426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077667 (A053767 (n + 1)).toNat

end

end A077668.P13689341686261066426

/-! ## A077668.P10237545630098716540

`A077667(∑[A002808(n+1)])`
-/

namespace A077668.P10237545630098716540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077667 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A077668.P10237545630098716540

/-!
# A077670: Last term of row n of A077669.

The programs for A077670, there is no canonical definition to state claims against.
-/

/-! ## A077670.P5928863155101143129

`A077669(∑[n+1])`
-/

namespace A077670.P5928863155101143129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077669 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077670.P5928863155101143129

/-! ## A077670.P13155795781902189210

`A077667(A053767(n)+n+1)`
-/

namespace A077670.P13155795781902189210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077667 (A053767 n + (n + 1 : ℤ)).toNat

end

end A077670.P13155795781902189210

/-!
# A077671: Triangular numbers whose digit permutations yield at least one further triangular number.

The programs for A077671, there is no canonical definition to state claims against.
-/

/-! ## A077671.P8771850530621156359

`A117310(A292125(n+1)+2)`
-/

namespace A077671.P8771850530621156359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117310 (A292125 (n + 1) + 2).toNat

end

end A077671.P8771850530621156359

/-! ## A077671.P9588899805818341248

`A117310(n+3)%A116016(n+1)`
-/

namespace A077671.P9588899805818341248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117310 (n + 3)) (A116016 (n + 1))

end

end A077671.P9588899805818341248

/-!
# A077674: Squarefree numbers with nonzero squarefree digits (2,3,5,6,7).

The programs for A077674, there is no canonical definition to state claims against.
-/

/-! ## A077674.P15080617425981375367

`∩[A037344(n+1), A062101(n+1)]`
-/

namespace A077674.P15080617425981375367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077674.P15080617425981375367

/-! ## A077674.P17813892919494652135

`∩[A039122(n+1), A062101(n+1)]`
-/

namespace A077674.P17813892919494652135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077674.P17813892919494652135

/-! ## A077674.P15545704471656057203

`∩[A039112(n+1), A062101(n+1)]`
-/

namespace A077674.P15545704471656057203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077674.P15545704471656057203

/-! ## A077674.P9057180926998106939

`∩[A039126(n+1), A062101(n+1)]`
-/

namespace A077674.P9057180926998106939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077674.P9057180926998106939

/-! ## A077674.P13356472738641970688

`∩[A039127(n+1), A062101(n+1)]`
-/

namespace A077674.P13356472738641970688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077674.P13356472738641970688

/-! ## A077674.P17501316975460390131

`∩[A052383(n+1), A062101(n+1)]`
-/

namespace A077674.P17501316975460390131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077674.P17501316975460390131

/-! ## A077674.P13385555236570079773

`eq[A105570(n), A117229(n)]`
-/

namespace A077674.P13385555236570079773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117229 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077674.P13385555236570079773

/-!
# A077676: Squares using only squarefree digits (2, 3, 5, 6, 7).

The programs for A077676, there is no canonical definition to state claims against.
-/

/-! ## A077676.P2825172780321278550

`A077437(lt[A077798(n+2), A285455(n+3)])`
-/

namespace A077676.P2825172780321278550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077798 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285455 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077437 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A077676.P2825172780321278550

/-! ## A077676.P14420158559055149953

`A077437(A249575(n+1)^A061906(n))`
-/

namespace A077676.P14420158559055149953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077437 (SequenceMachineLib.roundAway ((A249575 (n + 1) : ℚ) ^ (A061906 n : ℤ))).toNat

end

end A077676.P14420158559055149953

/-! ## A077676.P11662256024387661612

`A077437(A061906(n)²²*A249575(n+1))`
-/

namespace A077676.P11662256024387661612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077437 ((A061906 n ^ 2) ^ 2 * A249575 (n + 1)).toNat

end

end A077676.P11662256024387661612

/-! ## A077676.P15443183641915081033

`A077437((A358379(∑[n+2]+4)-2)!+n)`
-/

namespace A077676.P15443183641915081033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077437 (Nat.factorial (A358379 (∑ j ∈ Finset.range (n + 1), f1 j + 4) - 2).toNat + n)

end

end A077676.P15443183641915081033

/-! ## A077676.P6127058868076165228

`A077437(A249575(n+1)%A295483(n+1))`
-/

namespace A077676.P6127058868076165228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077437 (Int.tmod (A249575 (n + 1)) (A295483 (n + 1))).toNat

end

end A077676.P6127058868076165228

/-!
# A077677: Squarefree numbers beginning with 1.

The programs for A077677, the canonical program `A077677.P6147157833111245039` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077677 has offset 1).

The definition of A077677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 676 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077677.P7385074752798096461

`eq[A105587(n), A182324(n)]`
-/

namespace A077677.P7385074752798096461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182324 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077677.P7385074752798096461

namespace A077677

/-- `eq[A105587(n), A182324(n)]` -/
def P7385074752798096461.Spec : Prop :=
  ∀ n, (P7385074752798096461.a n : ℤ) = A077677 (n + 1)

end A077677

/-! ## A077677.P6147157833111245039

`eq[1, A105570(n)+A000030(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A077677

/-- `eq[1, A105570(n)+A000030(n)]` -/
def P6147157833111245039.Spec : Prop :=
  ∀ n, (P6147157833111245039.a n : ℤ) = A077677 (n + 1)

theorem P6147157833111245039.correct : P6147157833111245039.Spec := by
  intro n
  simp only [A077677, Nat.add_sub_cancel]

end A077677

/-! ## A077677.P14454693646854812802

`eq[1, A000030(n-A105570(n))]`
-/

namespace A077677.P14454693646854812802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 ((n : ℤ) - A105570 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A077677.P14454693646854812802

namespace A077677

/-- `eq[1, A000030(n-A105570(n))]` -/
def P14454693646854812802.Spec : Prop :=
  ∀ n, (P14454693646854812802.a n : ℤ) = A077677 (n + 1)

end A077677

/-! ## A077677.P15023217139974507191

`eq[2, A255326(n)+A000030(n)]`
-/

namespace A077677.P15023217139974507191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 n + A000030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A077677.P15023217139974507191

namespace A077677

/-- `eq[2, A255326(n)+A000030(n)]` -/
def P15023217139974507191.Spec : Prop :=
  ∀ n, (P15023217139974507191.a n : ℤ) = A077677 (n + 1)

end A077677

/-! ## A077677.P1531724889271673020

`record[A019555(n+1)/A000030(n+1)]`
-/

namespace A077677.P1531724889271673020
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019555 (n + 1) : ℚ) / (A000030 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077677.P1531724889271673020

namespace A077677

/-- `record[A019555(n+1)/A000030(n+1)]` -/
def P1531724889271673020.Spec : Prop :=
  ∀ n, P1531724889271673020.a n = (A077677 (n + 1) : ℚ)

end A077677

/-! ## A077677.P16170280055184113666

`eq[A000030(n+1), A008966(n+1)]+1`
-/

namespace A077677.P16170280055184113666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A077677.P16170280055184113666

namespace A077677

/-- `eq[A000030(n+1), A008966(n+1)]+1` -/
def P16170280055184113666.Spec : Prop :=
  ∀ n, (P16170280055184113666.a n : ℤ) = A077677 (n + 1)

end A077677

/-! ## A077677.P13186659248284136260

`eq[abs(A008683(n+1)), A000030(n+1)]+1`
-/

namespace A077677.P13186659248284136260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (n + 1)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A077677.P13186659248284136260

namespace A077677

/-- `eq[abs(A008683(n+1)), A000030(n+1)]+1` -/
def P13186659248284136260.Spec : Prop :=
  ∀ n, (P13186659248284136260.a n : ℤ) = A077677 (n + 1)

end A077677

/-! ## A077677.P4731272404074115329

`eq[2, A154355(A000030(n)*A255326(n))]`
-/

namespace A077677.P4731272404074115329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154355 (A000030 n * A255326 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A077677.P4731272404074115329

namespace A077677

/-- `eq[2, A154355(A000030(n)*A255326(n))]` -/
def P4731272404074115329.Spec : Prop :=
  ∀ n, (P4731272404074115329.a n : ℤ) = A077677 (n + 1)

end A077677

/-! ## A077677.P2505480261498703470

`record[A005117(n+1)/A000030(A005117(n+1))]`
-/

namespace A077677.P2505480261498703470
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005117 (n + 1) : ℚ) / (A000030 (A005117 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077677.P2505480261498703470

namespace A077677

/-- `record[A005117(n+1)/A000030(A005117(n+1))]` -/
def P2505480261498703470.Spec : Prop :=
  ∀ n, P2505480261498703470.a n = (A077677 (n + 1) : ℚ)

end A077677

/-! ## A077677.P2520560025857657137

`A056554(eq[A190302(n+1)+n, A056554(n+1)]+1)`
-/

namespace A077677.P2520560025857657137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190302 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056554 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A077677.P2520560025857657137

namespace A077677

/-- `A056554(eq[A190302(n+1)+n, A056554(n+1)]+1)` -/
def P2520560025857657137.Spec : Prop :=
  ∀ n, P2520560025857657137.a n = A077677 (n + 1)

end A077677

/-!
# A077678: Squarefree numbers beginning with 2.

The programs for A077678, there is no canonical definition to state claims against.
-/

/-! ## A077678.P1841537793345250471

`record[A217394(n+1)-A105570(A217394(n+1))]`
-/

namespace A077678.P1841537793345250471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217394 (n + 1) - A105570 (A217394 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077678.P1841537793345250471

/-! ## A077678.P8195967759128052733

`record[A007947(A217394(A052938(n)))]`
-/

namespace A077678.P8195967759128052733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A217394 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077678.P8195967759128052733

/-! ## A077678.P10891203059829411342

`record[A261969(A217394(n+1))]`
-/

namespace A077678.P10891203059829411342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261969 (A217394 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077678.P10891203059829411342

/-! ## A077678.P3319968540105104079

`eq[A105587(n)+1, A182324(n)]`
-/

namespace A077678.P3319968540105104079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105587 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182324 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077678.P3319968540105104079

/-! ## A077678.P87690285089558458

`eq[2, A105570(n)+A000030(n)]`
-/

namespace A077678.P87690285089558458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n + A000030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A077678.P87690285089558458

/-! ## A077678.P15045857962353591807

`eq[2, A000030(n-A105570(n))]`
-/

namespace A077678.P15045857962353591807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 ((n : ℤ) - A105570 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A077678.P15045857962353591807

/-! ## A077678.P2954860220084112558

`eq[A000030(n), A000038(A105570(n))]`
-/

namespace A077678.P2954860220084112558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A105570 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077678.P2954860220084112558

/-! ## A077678.P1940657414324772158

`eq[A000030(n), A154355(A255326(n))]`
-/

namespace A077678.P1940657414324772158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154355 (A255326 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077678.P1940657414324772158

/-!
# A077679: Squarefree numbers beginning with 3.

The programs for A077679, there is no canonical definition to state claims against.
-/

/-! ## A077679.P16898953535772600937

`record[∏{p}[A217395(n+1), #]]`
-/

namespace A077679.P16898953535772600937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217395 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077679.P16898953535772600937

/-! ## A077679.P8368142936547851190

`record[A007913(A217395(n+1))]`
-/

namespace A077679.P8368142936547851190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A217395 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077679.P8368142936547851190

/-! ## A077679.P9553647219331777314

`eq[A105587(n)+2, A182324(n)]`
-/

namespace A077679.P9553647219331777314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105587 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182324 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077679.P9553647219331777314

/-! ## A077679.P1903170893221956915

`eq[3, A105570(n)+A000030(n)]`
-/

namespace A077679.P1903170893221956915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n + A000030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A077679.P1903170893221956915

/-! ## A077679.P6997713646271574829

`eq[A154355(A255326(n))+1, A000030(n)]`
-/

namespace A077679.P6997713646271574829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154355 (A255326 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077679.P6997713646271574829

/-!
# A077680: Squarefree numbers beginning with 4.

The programs for A077680, there is no canonical definition to state claims against.
-/

/-! ## A077680.P6907238156924204

`record[∏{p}[A217397(n+3), #]]`
-/

namespace A077680.P6907238156924204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217397 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077680.P6907238156924204

/-! ## A077680.P2785187156502393521

`record[A381201(A217397(n+3))]`
-/

namespace A077680.P2785187156502393521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381201 (A217397 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077680.P2785187156502393521

/-!
# A077681: Squarefree numbers beginning with 5.

The programs for A077681, there is no canonical definition to state claims against.
-/

/-! ## A077681.P2480509885266416958

`record[A007913(A217398(n+1))]`
-/

namespace A077681.P2480509885266416958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A217398 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077681.P2480509885266416958

/-! ## A077681.P17620821232783146256

`record[A261969(A217398(n+2))]`
-/

namespace A077681.P17620821232783146256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261969 (A217398 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077681.P17620821232783146256

/-! ## A077681.P14518764012082294319

`record[A081210(A217398(n+1)+A057427(n))]`
-/

namespace A077681.P14518764012082294319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081210 (A217398 (n + 1) + A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077681.P14518764012082294319

/-! ## A077681.P11845697965691162559

`A217398(lt[A215634(n), A103999(3*n+1)])`
-/

namespace A077681.P11845697965691162559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215634 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103999 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217398 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A077681.P11845697965691162559

/-!
# A077682: Squarefree numbers beginning with 6.

The programs for A077682, there is no canonical definition to state claims against.
-/

/-! ## A077682.P12414059437016777588

`record[A008966(A217399(n+1))*A217399(n+1)]`
-/

namespace A077682.P12414059437016777588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A217399 (n + 1)).toNat * A217399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077682.P12414059437016777588

/-! ## A077682.P3377992286529587208

`record[A261969(A217399(n+1))]`
-/

namespace A077682.P3377992286529587208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261969 (A217399 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077682.P3377992286529587208

/-! ## A077682.P14492234546441710974

`record[A261969(2*A217397(n+1)-A217394(n+1))]`
-/

namespace A077682.P14492234546441710974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261969 (2 * A217397 (n + 1) - A217394 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077682.P14492234546441710974

/-! ## A077682.P12727417345081058519

`record[A325314(2*A217397(n+1)-A217394(n+1))]`
-/

namespace A077682.P12727417345081058519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325314 (2 * A217397 (n + 1) - A217394 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077682.P12727417345081058519

/-!
# A077683: Squarefree numbers beginning with 7.

The programs for A077683, there is no canonical definition to state claims against.
-/

/-! ## A077683.P6060138336625904134

`record[∏{p}[A217400(n+1), #]]`
-/

namespace A077683.P6060138336625904134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217400 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077683.P6060138336625904134

/-! ## A077683.P2735238694703409186

`record[A007913(A217400(n+1))]`
-/

namespace A077683.P2735238694703409186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A217400 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077683.P2735238694703409186

/-! ## A077683.P13167580228532196047

`record[∏{p}[2*A217397(n+1)-A131835(n+1), #]]`
-/

namespace A077683.P13167580228532196047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217397 (n + 1) - A131835 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077683.P13167580228532196047

/-! ## A077683.P5259755189397597152

`record[A015052(A217400(Δ[n²]-n))]`
-/

namespace A077683.P5259755189397597152
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A217400 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077683.P5259755189397597152

/-! ## A077683.P10326895228008476015

`A217400(eq[1, A000189(A217400(n+1))]+1)`
-/

namespace A077683.P10326895228008476015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A217400 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217400 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A077683.P10326895228008476015

/-!
# A077685: Squarefree numbers beginning with 9.

The programs for A077685, there is no canonical definition to state claims against.
-/

/-! ## A077685.P16800684415075074496

`record[∏{p}[A217402(n+3), #]]`
-/

namespace A077685.P16800684415075074496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217402 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077685.P16800684415075074496

/-! ## A077685.P9154570584847500199

`record[A007947(A217402(n+3))]`
-/

namespace A077685.P9154570584847500199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A217402 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077685.P9154570584847500199

/-! ## A077685.P16685975684866022368

`record[A007947(A101243(n+3)/10)]`
-/

namespace A077685.P16685975684866022368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A101243 (n + 3) : ℚ) / 10)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077685.P16685975684866022368

/-!
# A077686: 2^(n-1) - (prime(n) mod n).

The programs for A077686, the canonical program `A077686.P3309456534302508445` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077686 has offset 1).

The definition of A077686 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-A000040(n+1)%(n+1)` (program `A077686.P3309456534302508445`, by `A077686.P3309456534302508445.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077686.P3309456534302508445

`2^n-A000040(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A077686

/-- `2^n-A000040(n+1)%(n+1)` -/
def P3309456534302508445.Spec : Prop :=
  ∀ n, P3309456534302508445.a n = A077686 (n + 1)

theorem P3309456534302508445.correct : P3309456534302508445.Spec := by
  intro n
  simp only [A077686, Nat.add_sub_cancel]

end A077686

/-! ## A077686.P7601920749797630900

`2^n-A004648(n+1)`
-/

namespace A077686.P7601920749797630900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A004648 (n + 1)

end

end A077686.P7601920749797630900

namespace A077686

/-- `2^n-A004648(n+1)` -/
def P7601920749797630900.Spec : Prop :=
  ∀ n, P7601920749797630900.a n = A077686 (n + 1)

end A077686

/-! ## A077686.P5182710792707574165

`2^n-Δ[A007504(n)]%(n+1)`
-/

namespace A077686.P5182710792707574165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A077686.P5182710792707574165

namespace A077686

/-- `2^n-Δ[A007504(n)]%(n+1)` -/
def P5182710792707574165.Spec : Prop :=
  ∀ n, P5182710792707574165.a n = A077686 (n + 1)

end A077686

/-! ## A077686.P10975421906676628260

`2^n-A004232(n+1)%(n+1)`
-/

namespace A077686.P10975421906676628260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - Int.tmod (A004232 (n + 1)) (n + 1 : ℤ)

end

end A077686.P10975421906676628260

namespace A077686

/-- `2^n-A004232(n+1)%(n+1)` -/
def P10975421906676628260.Spec : Prop :=
  ∀ n, P10975421906676628260.a n = A077686 (n + 1)

end A077686

/-! ## A077686.P11523294757589178334

`2^n-A014688(n+1)%(n+1)`
-/

namespace A077686.P11523294757589178334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - Int.tmod (A014688 (n + 1)) (n + 1 : ℤ)

end

end A077686.P11523294757589178334

namespace A077686

/-- `2^n-A014688(n+1)%(n+1)` -/
def P11523294757589178334.Spec : Prop :=
  ∀ n, P11523294757589178334.a n = A077686 (n + 1)

end A077686

/-! ## A077686.P16147328152145401230

`A255047(n)-A087611(n+1)`
-/

namespace A077686.P16147328152145401230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n - A087611 (n + 1)

end

end A077686.P16147328152145401230

namespace A077686

/-- `A255047(n)-A087611(n+1)` -/
def P16147328152145401230.Spec : Prop :=
  ∀ n, P16147328152145401230.a n = A077686 (n + 1)

end A077686

/-!
# A077689: Rearrangement of squares such that the most significant digits follow the cyclic pattern 1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9,1,2,3,...

The programs for A077689, there is no canonical definition to state claims against.
-/

/-! ## A077689.P17249976254056215111

`A018796(∑[A018814(n)!])`
-/

namespace A077689.P17249976254056215111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A018814 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077689.P17249976254056215111

/-! ## A077689.P13996975303599614807

`A018796(A361675(n)²+n)`
-/

namespace A077689.P13996975303599614807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (A361675 n ^ 2 + (n : ℤ)).toNat

end

end A077689.P13996975303599614807

/-! ## A077689.P2770941017666411027

`A018796(A228050(n+1)+1)`
-/

namespace A077689.P2770941017666411027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (A228050 (n + 1) + 1).toNat

end

end A077689.P2770941017666411027

/-!
# A077691: a(n) = A076803(n)/n.

The programs for A077691, there is no canonical definition to state claims against.
-/

/-! ## A077691.P15067396778831228247

`A076803(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077691.P15067396778831228247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076803 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A077691.P15067396778831228247

/-!
# A077694: a(n) = triangular number whose index is the concatenation of the first n natural numbers.

The programs for A077694, the canonical program `A077694.P1372029401488759356` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077694 has offset 1).

The definition of A077694 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077694.P1372029401488759356

`A000217(A007908(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A077694

/-- `A000217(A007908(n+1))` -/
def P1372029401488759356.Spec : Prop :=
  ∀ n, P1372029401488759356.a n = A077694 (n + 1)

theorem P1372029401488759356.correct : P1372029401488759356.Spec := by
  intro n
  simp only [A077694, Nat.add_sub_cancel]

end A077694

/-! ## A077694.P104332528861492238

`C(A359124(n+1), 2)`
-/

namespace A077694.P104332528861492238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A359124 (n + 1)).toNat 2

end

end A077694.P104332528861492238

namespace A077694

/-- `C(A359124(n+1), 2)` -/
def P104332528861492238.Spec : Prop :=
  ∀ n, (P104332528861492238.a n : ℤ) = A077694 (n + 1)

end A077694

/-! ## A077694.P6310613941415114526

`C(∑[A078998(n+1)]+1, 2)`
-/

namespace A077694.P6310613941415114526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078998 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat 2

end

end A077694.P6310613941415114526

namespace A077694

/-- `C(∑[A078998(n+1)]+1, 2)` -/
def P6310613941415114526.Spec : Prop :=
  ∀ n, (P6310613941415114526.a n : ℤ) = A077694 (n + 1)

end A077694

/-! ## A077694.P366308383657808914

`C(A213059(2^n)+1, 2)`
-/

namespace A077694.P366308383657808914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A213059 (2 ^ n) + 1).toNat 2

end

end A077694.P366308383657808914

namespace A077694

/-- `C(A213059(2^n)+1, 2)` -/
def P366308383657808914.Spec : Prop :=
  ∀ n, (P366308383657808914.a n : ℤ) = A077694 (n + 1)

end A077694

/-! ## A077694.P15487785279002850481

`C(A048794(2^(n+1)-1)+1, 2)`
-/

namespace A077694.P15487785279002850481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048794 (2 ^ (n + 1) - 1) + 1).toNat 2

end

end A077694.P15487785279002850481

namespace A077694

/-- `C(A048794(2^(n+1)-1)+1, 2)` -/
def P15487785279002850481.Spec : Prop :=
  ∀ n, (P15487785279002850481.a n : ℤ) = A077694 (n + 1)

end A077694

/-!
# A077695: a(n) = triangular number whose index is n concatenated n times.

The programs for A077695, there is no canonical definition to state claims against.
-/

/-! ## A077695.P412055858277398476

`C(A000461(n+1)+1, 2)`
-/

namespace A077695.P412055858277398476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000461 (n + 1) + 1).toNat 2

end

end A077695.P412055858277398476

/-! ## A077695.P1962004204457110153

`C((n+1)*A078191(n+1)+1, 2)`
-/

namespace A077695.P1962004204457110153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1 : ℤ) * A078191 (n + 1) + 1).toNat 2

end

end A077695.P1962004204457110153

/-! ## A077695.P10984928804867802981

`C(A091693(A056525(n+1)), 2)`
-/

namespace A077695.P10984928804867802981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A091693 (A056525 (n + 1)).toNat).toNat 2

end

end A077695.P10984928804867802981

/-!
# A077696: a(0) = 2; a(n) = smallest multiple of a(n-1), greater than a(n-1) and not a multiple of 10, that contains all the digits of a(n-1).

The programs for A077696, there is no canonical definition to state claims against.
-/

/-! ## A077696.P14428642320528331930

`a(n-1)*A077697(n)` with `a(0)=2`
-/

namespace A077696.P14428642320528331930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * A077697 n

end

end A077696.P14428642320528331930

/-! ## A077696.P15974010786489645380

`2/A077697(n+1)*∏[A077697(n+1)]`
-/

namespace A077696.P15974010786489645380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077697 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A077697 (n + 1) : ℚ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A077696.P15974010786489645380

/-!
# A077697: a(n) = A077696(n)/A077696(n-1).

The programs for A077697, there is no canonical definition to state claims against.
-/

/-! ## A077697.P11749119554010580186

`A077696(n+1)/A077696(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077697.P11749119554010580186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077696 (n + 1) : ℚ) / (A077696 n : ℚ)

end

end A077697.P11749119554010580186

/-! ## A077697.P15381466548497279860

`ratio[A077696(n)]`
-/

namespace A077697.P15381466548497279860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077696 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A077697.P15381466548497279860

/-! ## A077697.P4143550249824846825

`record[A077696(A102885(n))]/A077696(n)`
-/

namespace A077697.P4143550249824846825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077696 (A102885 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A077696 n : ℚ)

end

end A077697.P4143550249824846825

/-! ## A077697.P14749067961477059401

`record[A077696(A193592(n))]/A077696(n)`
-/

namespace A077697.P14749067961477059401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077696 (A193592 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A077696 n : ℚ)

end

end A077697.P14749067961477059401

/-! ## A077697.P5648086822958861759

`record[A077696(A324346(n))]/A077696(n)`
-/

namespace A077697.P5648086822958861759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077696 (A324346 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A077696 n : ℚ)

end

end A077697.P5648086822958861759

/-!
# A077698: a(1) = 3, a(n) is the smallest multiple of a(n-1) that contains all the digits of a(n-1), or which can be obtained by inserting digits anywhere in a permutation of digits of a(n-1) (prefix, suffix or insertion). Zeros are not to be suffixed. a(n) is not divisible by 10.

The programs for A077698, there is no canonical definition to state claims against.
-/

/-! ## A077698.P11342938807022204302

`a(n-1)*A077699(n)` with `a(0)=3`
-/

namespace A077698.P11342938807022204302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) * A077699 n

end

end A077698.P11342938807022204302

/-!
# A077699: a(n) = A077698(n+1)/A077698(n).

The programs for A077699, there is no canonical definition to state claims against.
-/

/-! ## A077699.P6260360274459354003

`A077698(n+2)/A077698(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077699.P6260360274459354003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077698 (n + 2) : ℚ) / (A077698 (n + 1) : ℚ)

end

end A077699.P6260360274459354003

/-! ## A077699.P12877515854987502875

`ratio[A077698(n+1)]`
-/

namespace A077699.P12877515854987502875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077698 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A077699.P12877515854987502875

/-! ## A077699.P11539222455245757731

`ratio[record[A077698(A116549(n))]]`
-/

namespace A077699.P11539222455245757731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077698 (A116549 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A077699.P11539222455245757731

/-! ## A077699.P7957570394706005652

`ratio[record[A077698(A246694(n))]]`
-/

namespace A077699.P7957570394706005652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077698 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A077699.P7957570394706005652

/-! ## A077699.P7348652798869656809

`ratio[record[A077698(A324347(n))]]`
-/

namespace A077699.P7348652798869656809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077698 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A077699.P7348652798869656809

