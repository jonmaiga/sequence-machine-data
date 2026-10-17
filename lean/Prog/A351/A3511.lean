import SequenceMachineLib
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.B009.C001
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

/-!
# A351100: Maximum number of 4-subsets of an n-set such that every 3-subset is covered at most twice.

The programs for A351100, there is no canonical definition to state claims against.
-/

/-! ## A351100.P10571750295345778984

`A291304(A050188(n+4))`
-/

namespace A351100.P10571750295345778984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291304 (A050188 (n + 4)).toNat

end

end A351100.P10571750295345778984

/-!
# A351101: Variation of the Sisyphus sequence A350877: the same rules apply except that each time a(n) is divided by a prime the dividing prime is incremented to the next prime while the prime being added to each term is reset to 2.

The programs for A351101, there is no canonical definition to state claims against.
-/

/-! ## A351101.P2512826963618709065

`A120263(A173622(n+2))*A173597(n)`
-/

namespace A351101.P2512826963618709065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120263 (A173622 (n + 2)).toNat * A173597 n

end

end A351101.P2512826963618709065

/-!
# A351104: Numbers that begin a record-length run of consecutive numbers having the same Collatz trajectory length.

The programs for A351104, there is no canonical definition to state claims against.
-/

/-! ## A351104.P2258600635595093917

`record[A078441(floor(n/(n%2+2))+1)]`
-/

namespace A351104.P2258600635595093917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078441 (⌊(n : ℚ) / ((n % 2 + 2 : ℕ) : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351104.P2258600635595093917

/-! ## A351104.P5989258218419787340

`record[A078441(A126759(n))]`
-/

namespace A351104.P5989258218419787340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078441 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351104.P5989258218419787340

/-! ## A351104.P640242622698307654

`record[A078441(A152271(n))]`
-/

namespace A351104.P640242622698307654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078441 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351104.P640242622698307654

/-! ## A351104.P2616781243297828151

`record[A078441(A324347(n))]`
-/

namespace A351104.P2616781243297828151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078441 (A324347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351104.P2616781243297828151

/-! ## A351104.P17762698782943767183

`record[A078441(A344180(n))]`
-/

namespace A351104.P17762698782943767183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078441 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351104.P17762698782943767183

/-!
# A351105: a(n) = Sum_{k=1..n} Sum_{j=1..k} Sum_{i=1..j} (i*j*k)^2.

The programs for A351105, the canonical program `A351105.P12197373380895623707` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351105 has offset 0).

The definition of A351105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351105.P12197373380895623707

`∑[n²*∑[n²*∑[n²]]]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A351105

/-- `∑[n²*∑[n²*∑[n²]]]` -/
def P12197373380895623707.Spec : Prop :=
  ∀ n, (P12197373380895623707.a n : ℤ) = A351105 n

theorem P12197373380895623707.correct : P12197373380895623707.Spec := by
  intro n
  simp only [A351105]

end A351105

/-! ## A351105.P9913992923339913514

`A269945(∑[n+4]+2)`
-/

namespace A351105.P9913992923339913514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269945 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A351105.P9913992923339913514

namespace A351105

/-- `A269945(∑[n+4]+2)` -/
def P9913992923339913514.Spec : Prop :=
  ∀ n, P9913992923339913514.a n = A351105 n

end A351105

/-! ## A351105.P12604808060358142195

`record[A269945(A060577(n))]`
-/

namespace A351105.P12604808060358142195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269945 (A060577 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351105.P12604808060358142195

namespace A351105

/-- `record[A269945(A060577(n))]` -/
def P12604808060358142195.Spec : Prop :=
  ∀ n, P12604808060358142195.a n = A351105 n

end A351105

/-! ## A351105.P2733352644068139285

`record[A269945(abs(A046691(n)))]`
-/

namespace A351105.P2733352644068139285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269945 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351105.P2733352644068139285

namespace A351105

/-- `record[A269945(abs(A046691(n)))]` -/
def P2733352644068139285.Spec : Prop :=
  ∀ n, P2733352644068139285.a n = A351105 n

end A351105

/-! ## A351105.P18196969365536574532

`record[A010054(n+4)*A269945(n)]`
-/

namespace A351105.P18196969365536574532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 4) * A269945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351105.P18196969365536574532

namespace A351105

/-- `record[A010054(n+4)*A269945(n)]` -/
def P18196969365536574532.Spec : Prop :=
  ∀ n, P18196969365536574532.a n = A351105 n

end A351105

/-!
# A351107: Number of simple paths for a Racetrack car (using Moore neighborhood) with initial velocity zero, going from one corner to the diagonally opposite corner on an n X n grid.

The programs for A351107, there is no canonical definition to state claims against.
-/

/-! ## A351107.P3481882550148631447

`A351106(∑[n+1])`
-/

namespace A351107.P3481882550148631447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351106 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351107.P3481882550148631447

/-!
# A351109: Number of simple paths for a Racetrack car (using von Neumann neighborhood) with initial velocity zero, going from one corner to the diagonally opposite corner on an n X n grid.

The programs for A351109, there is no canonical definition to state claims against.
-/

/-! ## A351109.P11973405664604104511

`A351108(∑[n+1])`
-/

namespace A351109.P11973405664604104511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351108 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351109.P11973405664604104511

/-! ## A351109.P16794797522908941340

`A351108(record[A038722(n+1)])+char[8]`
-/

namespace A351109.P16794797522908941340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351108 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A351109.P16794797522908941340

/-! ## A351109.P8737712695734112271

`A351108(A000217(n+1))+A171765(n)`
-/

namespace A351109.P8737712695734112271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351108 (A000217 (n + 1)).toNat + A171765 n

end

end A351109.P8737712695734112271

/-! ## A351109.P11435427755517654082

`A351108(A000217(n+1))+A250002(n)`
-/

namespace A351109.P11435427755517654082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351108 (A000217 (n + 1)).toNat + A250002 n

end

end A351109.P11435427755517654082

/-!
# A351111: Number of paths for a Racetrack car (using Moore neighborhood) with initial velocity zero, going from one corner to the diagonally opposite corner on an n X n grid, such that all positions are visited exactly once.

The programs for A351111, there is no canonical definition to state claims against.
-/

/-! ## A351111.P9003134767353555598

`A351110(∑[n+1])`
-/

namespace A351111.P9003134767353555598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351110 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351111.P9003134767353555598

/-!
# A351112: Number of balanced numbers dividing n.

The programs for A351112, the canonical program `A351112.P18121164159424966537` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351112 has offset 1).

The definition of A351112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351112.P18121164159424966537

`∑{d}[n+1, A351114(#)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A351112

/-- `∑{d}[n+1, A351114(#)]` -/
def P18121164159424966537.Spec : Prop :=
  ∀ n, P18121164159424966537.a n = A351112 (n + 1)

theorem P18121164159424966537.correct : P18121164159424966537.Spec := by
  intro n
  simp only [A351112, Nat.add_sub_cancel]

end A351112

/-! ## A351112.P3481704573563069018

`∑{d}[n+1, floor(acot(A063514(#)))]`
-/

namespace A351112.P3481704573563069018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊SequenceMachineLib.acot (A063514 d : ℝ)⌋

end

end A351112.P3481704573563069018

namespace A351112

/-- `∑{d}[n+1, floor(acot(A063514(#)))]` -/
def P3481704573563069018.Spec : Prop :=
  ∀ n, P3481704573563069018.a n = A351112 (n + 1)

end A351112

/-! ## A351112.P10736119699470811700

`A000027(∑{d}[xor(n, -1), A351114(#)])`
-/

namespace A351112.P10736119699470811700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n).natAbs, A351114 d).toNat

end

end A351112.P10736119699470811700

namespace A351112

/-- `A000027(∑{d}[xor(n, -1), A351114(#)])` -/
def P10736119699470811700.Spec : Prop :=
  ∀ n, P10736119699470811700.a n = A351112 (n + 1)

end A351112

/-! ## A351112.P13128859935555477381

`A028310(∑{d}[xor(n, -1), A351114(#)])`
-/

namespace A351112.P13128859935555477381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n).natAbs, A351114 d).toNat

end

end A351112.P13128859935555477381

namespace A351112

/-- `A028310(∑{d}[xor(n, -1), A351114(#)])` -/
def P13128859935555477381.Spec : Prop :=
  ∀ n, P13128859935555477381.a n = A351112 (n + 1)

end A351112

/-! ## A351112.P1386794067740752745

`A000005(n+1)-A386591(n+1)`
-/

namespace A351112.P1386794067740752745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A386591 (n + 1)

end

end A351112.P1386794067740752745

namespace A351112

/-- `A000005(n+1)-A386591(n+1)` -/
def P1386794067740752745.Spec : Prop :=
  ∀ n, P1386794067740752745.a n = A351112 (n + 1)

end A351112

/-! ## A351112.P16816007886236502135

`A001281(2*∑{d}[xor(n, -1), A351114(#)])`
-/

namespace A351112.P16816007886236502135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * (∑ d ∈ Nat.divisors (f1 n).natAbs, A351114 d)).toNat

end

end A351112.P16816007886236502135

namespace A351112

/-- `A001281(2*∑{d}[xor(n, -1), A351114(#)])` -/
def P16816007886236502135.Spec : Prop :=
  ∀ n, P16816007886236502135.a n = A351112 (n + 1)

end A351112

/-! ## A351112.P11866444093343732522

`A004526(2*∑{d}[xor(n, -1), A351114(#)])`
-/

namespace A351112.P11866444093343732522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * (∑ d ∈ Nat.divisors (f1 n).natAbs, A351114 d)).toNat

end

end A351112.P11866444093343732522

namespace A351112

/-- `A004526(2*∑{d}[xor(n, -1), A351114(#)])` -/
def P11866444093343732522.Spec : Prop :=
  ∀ n, P11866444093343732522.a n = A351112 (n + 1)

end A351112

/-! ## A351112.P9003520407997876688

`∑{d}[n+1, A023900(#)*A386594((n+1)/#)]`
-/

namespace A351112.P9003520407997876688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A386594 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351112.P9003520407997876688

namespace A351112

/-- `∑{d}[n+1, A023900(#)*A386594((n+1)/#)]` -/
def P9003520407997876688.Spec : Prop :=
  ∀ n, P9003520407997876688.a n = A351112 (n + 1)

end A351112

/-! ## A351112.P7097335175635224980

`A000005(n+1)+A351113(n+1)-A386589(n+1)`
-/

namespace A351112.P7097335175635224980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A351113 (n + 1) - A386589 (n + 1))

end

end A351112.P7097335175635224980

namespace A351112

/-- `A000005(n+1)+A351113(n+1)-A386589(n+1)` -/
def P7097335175635224980.Spec : Prop :=
  ∀ n, P7097335175635224980.a n = A351112 (n + 1)

end A351112

/-! ## A351112.P4892593725489742687

`∑{d}[xor(n, -1), A351114(#)]-A000035(2*n)`
-/

namespace A351112.P4892593725489742687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A351114 d - A000035 (2 * n)

end

end A351112.P4892593725489742687

namespace A351112

/-- `∑{d}[xor(n, -1), A351114(#)]-A000035(2*n)` -/
def P4892593725489742687.Spec : Prop :=
  ∀ n, P4892593725489742687.a n = A351112 (n + 1)

end A351112

/-! ## A351112.P3446118373844757909

`A001222(2^∑{d}[xor(n, -1), A351114(#)])`
-/

namespace A351112.P3446118373844757909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ d ∈ Nat.divisors (f1 n).natAbs, A351114 d : ℤ))).toNat

end

end A351112.P3446118373844757909

namespace A351112

/-- `A001222(2^∑{d}[xor(n, -1), A351114(#)])` -/
def P3446118373844757909.Spec : Prop :=
  ∀ n, P3446118373844757909.a n = A351112 (n + 1)

end A351112

/-!
# A351113: Sum of the balanced numbers dividing n.

The programs for A351113, the canonical program `A351113.P14871538275720612314` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351113 has offset 1).

The definition of A351113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351113.P14871538275720612314

`∑{d}[n+1, #*A351114(#)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A351113

/-- `∑{d}[n+1, #*A351114(#)]` -/
def P14871538275720612314.Spec : Prop :=
  ∀ n, P14871538275720612314.a n = A351113 (n + 1)

theorem P14871538275720612314.correct : P14871538275720612314.Spec := by
  intro n
  simp only [A351113, Nat.add_sub_cancel]

end A351113

/-! ## A351113.P4307201874280212397

`A000203(n+1)-A386592(n+1)`
-/

namespace A351113.P4307201874280212397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A386592 (n + 1)

end

end A351113.P4307201874280212397

namespace A351113

/-- `A000203(n+1)-A386592(n+1)` -/
def P4307201874280212397.Spec : Prop :=
  ∀ n, P4307201874280212397.a n = A351113 (n + 1)

end A351113

/-! ## A351113.P732618271884325216

`A386589(n+1)-A386591(n+1)`
-/

namespace A351113.P732618271884325216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386589 (n + 1) - A386591 (n + 1)

end

end A351113.P732618271884325216

namespace A351113

/-- `A386589(n+1)-A386591(n+1)` -/
def P732618271884325216.Spec : Prop :=
  ∀ n, P732618271884325216.a n = A351113 (n + 1)

end A351113

/-! ## A351113.P2508617442231462681

`A351112(n+1)+A386589(n+1)-A000005(n+1)`
-/

namespace A351113.P2508617442231462681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351112 (n + 1) + (A386589 (n + 1) - A000005 (n + 1))

end

end A351113.P2508617442231462681

namespace A351113

/-- `A351112(n+1)+A386589(n+1)-A000005(n+1)` -/
def P2508617442231462681.Spec : Prop :=
  ∀ n, P2508617442231462681.a n = A351113 (n + 1)

end A351113

/-! ## A351113.P7372866192094513173

`A386622(n+1)-(A386591(n+1)+A362707(n+1))`
-/

namespace A351113.P7372866192094513173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386622 (n + 1) - (A386591 (n + 1) + A362707 (n + 1))

end

end A351113.P7372866192094513173

namespace A351113

/-- `A386622(n+1)-(A386591(n+1)+A362707(n+1))` -/
def P7372866192094513173.Spec : Prop :=
  ∀ n, P7372866192094513173.a n = A351113 (n + 1)

end A351113

/-! ## A351113.P11317358415872172117

`A351116(n+1)-A368819(n+1)`
-/

namespace A351113.P11317358415872172117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351116 (n + 1) - A368819 (n + 1)

end

end A351113.P11317358415872172117

namespace A351113

/-- `A351116(n+1)-A368819(n+1)` -/
def P11317358415872172117.Spec : Prop :=
  ∀ n, P11317358415872172117.a n = A351113 (n + 1)

end A351113

/-!
# A351114: Characteristic function of balanced numbers: a(n) = 1 if phi(n) divides sigma(n), otherwise 0.

The programs for A351114, the canonical program `A351114.P13024542866936842174` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351114 has offset 1).

The definition of A351114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351114.P7758768029424351146

`floor(acot(A063514(n+1)))`
-/

namespace A351114.P7758768029424351146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A063514 (n + 1) : ℝ)⌋

end

end A351114.P7758768029424351146

namespace A351114

/-- `floor(acot(A063514(n+1)))` -/
def P7758768029424351146.Spec : Prop :=
  ∀ n, P7758768029424351146.a n = A351114 (n + 1)

end A351114

/-! ## A351114.P9926451329795378051

`round(acot(A289412(n+1)))`
-/

namespace A351114.P9926451329795378051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A289412 (n + 1) : ℝ))

end

end A351114.P9926451329795378051

namespace A351114

/-- `round(acot(A289412(n+1)))` -/
def P9926451329795378051.Spec : Prop :=
  ∀ n, P9926451329795378051.a n = A351114 (n + 1)

end A351114

/-! ## A351114.P314441888796493258

`char[A020492(n+1)-1]`
-/

namespace A351114.P314441888796493258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A351114.P314441888796493258

namespace A351114

/-- `char[A020492(n+1)-1]` -/
def P314441888796493258.Spec : Prop :=
  ∀ n, (P314441888796493258.a n : ℤ) = A351114 (n + 1)

end A351114

/-! ## A351114.P10911030996144709592

`A000007(A063514(n+1))`
-/

namespace A351114.P10911030996144709592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A063514 (n + 1)).toNat

end

end A351114.P10911030996144709592

namespace A351114

/-- `A000007(A063514(n+1))` -/
def P10911030996144709592.Spec : Prop :=
  ∀ n, P10911030996144709592.a n = A351114 (n + 1)

end A351114

/-! ## A351114.P13024542866936842174

`A063524(A289412(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A351114

/-- `A063524(A289412(n+1))` -/
def P13024542866936842174.Spec : Prop :=
  ∀ n, P13024542866936842174.a n = A351114 (n + 1)

theorem P13024542866936842174.correct : P13024542866936842174.Spec := by
  intro n
  simp only [A351114, Nat.add_sub_cancel]

end A351114

/-! ## A351114.P9420554579863766927

`A252745(C(2, A289412(n+1)))`
-/

namespace A351114.P9420554579863766927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252745 (Nat.choose 2 (A289412 (n + 1)).toNat)

end

end A351114.P9420554579863766927

namespace A351114

/-- `A252745(C(2, A289412(n+1)))` -/
def P9420554579863766927.Spec : Prop :=
  ∀ n, P9420554579863766927.a n = A351114 (n + 1)

end A351114

/-! ## A351114.P9775248863213426887

`∏{d}[A063514(n+1), A001222(#)]`
-/

namespace A351114.P9775248863213426887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001222 d

end

end A351114.P9775248863213426887

namespace A351114

/-- `∏{d}[A063514(n+1), A001222(#)]` -/
def P9775248863213426887.Spec : Prop :=
  ∀ n, P9775248863213426887.a n = A351114 (n + 1)

end A351114

/-! ## A351114.P10982644254346555105

`∏{d}[A063514(n+1), A063514(#)]`
-/

namespace A351114.P10982644254346555105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A063514 d

end

end A351114.P10982644254346555105

namespace A351114

/-- `∏{d}[A063514(n+1), A063514(#)]` -/
def P10982644254346555105.Spec : Prop :=
  ∀ n, P10982644254346555105.a n = A351114 (n + 1)

end A351114

/-! ## A351114.P18351028276314019524

`floor(A000203(n+1)/A009286(n+1))`
-/

namespace A351114.P18351028276314019524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000203 (n + 1) : ℚ) / (A009286 (n + 1) : ℚ)⌋

end

end A351114.P18351028276314019524

namespace A351114

/-- `floor(A000203(n+1)/A009286(n+1))` -/
def P18351028276314019524.Spec : Prop :=
  ∀ n, P18351028276314019524.a n = A351114 (n + 1)

end A351114

/-! ## A351114.P8170056384645454811

`floor(acot(A000203(n+1)%A000010(n+1)))`
-/

namespace A351114.P8170056384645454811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (Int.tmod (A000203 (n + 1)) (A000010 (n + 1)) : ℝ)⌋

end

end A351114.P8170056384645454811

namespace A351114

/-- `floor(acot(A000203(n+1)%A000010(n+1)))` -/
def P8170056384645454811.Spec : Prop :=
  ∀ n, P8170056384645454811.a n = A351114 (n + 1)

end A351114

/-! ## A351114.P14151484212851923949

`∑{d}[n+1, A008683(#)*A351112((n+1)/#)]`
-/

namespace A351114.P14151484212851923949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A351112 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351114.P14151484212851923949

namespace A351114

/-- `∑{d}[n+1, A008683(#)*A351112((n+1)/#)]` -/
def P14151484212851923949.Spec : Prop :=
  ∀ n, P14151484212851923949.a n = A351114 (n + 1)

end A351114

/-! ## A351114.P16260953428437908475

`∑{d}[n+1, A055615(#)*A386594((n+1)/#)]`
-/

namespace A351114.P16260953428437908475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A386594 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351114.P16260953428437908475

namespace A351114

/-- `∑{d}[n+1, A055615(#)*A386594((n+1)/#)]` -/
def P16260953428437908475.Spec : Prop :=
  ∀ n, P16260953428437908475.a n = A351114 (n + 1)

end A351114

/-! ## A351114.P10366808964090476518

`floor(acot(A302172(n+1)))`
-/

namespace A351114.P10366808964090476518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A302172 (n + 1) : ℝ)⌋

end

end A351114.P10366808964090476518

namespace A351114

/-- `floor(acot(A302172(n+1)))` -/
def P10366808964090476518.Spec : Prop :=
  ∀ n, P10366808964090476518.a n = A351114 (n + 1)

end A351114

/-! ## A351114.P415418606746319410

`A000007(A302172(n+1))`
-/

namespace A351114.P415418606746319410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A302172 (n + 1)).toNat

end

end A351114.P415418606746319410

namespace A351114

/-- `A000007(A302172(n+1))` -/
def P415418606746319410.Spec : Prop :=
  ∀ n, P415418606746319410.a n = A351114 (n + 1)

end A351114

/-! ## A351114.P5891609751364635266

`C(n+1, A015756(n+1))`
-/

namespace A351114.P5891609751364635266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A015756 (n + 1)).toNat

end

end A351114.P5891609751364635266

namespace A351114

/-- `C(n+1, A015756(n+1))` -/
def P5891609751364635266.Spec : Prop :=
  ∀ n, (P5891609751364635266.a n : ℤ) = A351114 (n + 1)

end A351114

/-!
# A351115: Number of balanced numbers <= n.

The programs for A351115, the canonical program `A351115.P9694729978401219806` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351115 has offset 1).

The definition of A351115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351115.P9694729978401219806

`∑[A351114(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A351115

/-- `∑[A351114(n+1)]` -/
def P9694729978401219806.Spec : Prop :=
  ∀ n, P9694729978401219806.a n = A351115 (n + 1)

theorem P9694729978401219806.correct : P9694729978401219806.Spec := by
  intro n
  simp only [A351115, Nat.add_sub_cancel]

end A351115

/-! ## A351115.P16960727483430772565

`∑[floor(acot(A063514(n+1)))]`
-/

namespace A351115.P16960727483430772565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A063514 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351115.P16960727483430772565

namespace A351115

/-- `∑[floor(acot(A063514(n+1)))]` -/
def P16960727483430772565.Spec : Prop :=
  ∀ n, P16960727483430772565.a n = A351115 (n + 1)

end A351115

/-! ## A351115.P9326147391580107593

`∑[round(acot(A289412(n+1)))]`
-/

namespace A351115.P9326147391580107593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A289412 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351115.P9326147391580107593

namespace A351115

/-- `∑[round(acot(A289412(n+1)))]` -/
def P9326147391580107593.Spec : Prop :=
  ∀ n, P9326147391580107593.a n = A351115 (n + 1)

end A351115

/-! ## A351115.P14656852692893009462

`∑[char[A020492(n+1)-1]]`
-/

namespace A351115.P14656852692893009462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351115.P14656852692893009462

namespace A351115

/-- `∑[char[A020492(n+1)-1]]` -/
def P14656852692893009462.Spec : Prop :=
  ∀ n, (P14656852692893009462.a n : ℤ) = A351115 (n + 1)

end A351115

/-! ## A351115.P15080380122259248533

`∑[A000007(A063514(n+1))]`
-/

namespace A351115.P15080380122259248533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A063514 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351115.P15080380122259248533

namespace A351115

/-- `∑[A000007(A063514(n+1))]` -/
def P15080380122259248533.Spec : Prop :=
  ∀ n, P15080380122259248533.a n = A351115 (n + 1)

end A351115

/-! ## A351115.P17307605251616281600

`∑[∏{d}[A063514(n+1), A001222(#)]]`
-/

namespace A351115.P17307605251616281600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063514 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, A001222 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351115.P17307605251616281600

namespace A351115

/-- `∑[∏{d}[A063514(n+1), A001222(#)]]` -/
def P17307605251616281600.Spec : Prop :=
  ∀ n, P17307605251616281600.a n = A351115 (n + 1)

end A351115

/-! ## A351115.P11057454912042151238

`∑[∏{d}[A063514(n+1), A063514(#)]]`
-/

namespace A351115.P11057454912042151238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063514 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, A063514 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351115.P11057454912042151238

namespace A351115

/-- `∑[∏{d}[A063514(n+1), A063514(#)]]` -/
def P11057454912042151238.Spec : Prop :=
  ∀ n, P11057454912042151238.a n = A351115 (n + 1)

end A351115

/-! ## A351115.P6239492405034228970

`∑[floor(acot(A302172(n+1)))]`
-/

namespace A351115.P6239492405034228970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A302172 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351115.P6239492405034228970

namespace A351115

/-- `∑[floor(acot(A302172(n+1)))]` -/
def P6239492405034228970.Spec : Prop :=
  ∀ n, P6239492405034228970.a n = A351115 (n + 1)

end A351115

/-! ## A351115.P1763162522086692821

`∑[A000007(A302172(n+1))]`
-/

namespace A351115.P1763162522086692821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A302172 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351115.P1763162522086692821

namespace A351115

/-- `∑[A000007(A302172(n+1))]` -/
def P1763162522086692821.Spec : Prop :=
  ∀ n, P1763162522086692821.a n = A351115 (n + 1)

end A351115

/-! ## A351115.P11760607266241055709

`A368818(n+1)+A351112(n+1)`
-/

namespace A351115.P11760607266241055709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368818 (n + 1) + A351112 (n + 1)

end

end A351115.P11760607266241055709

namespace A351115

/-- `A368818(n+1)+A351112(n+1)` -/
def P11760607266241055709.Spec : Prop :=
  ∀ n, P11760607266241055709.a n = A351115 (n + 1)

end A351115

/-!
# A351116: Sum of the balanced numbers <= n.

The programs for A351116, the canonical program `A351116.P16264301309237612569` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351116 has offset 1).

The definition of A351116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351116.P16264301309237612569

`∑[(n+1)*A351114(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A351116

/-- `∑[(n+1)*A351114(n+1)]` -/
def P16264301309237612569.Spec : Prop :=
  ∀ n, P16264301309237612569.a n = A351116 (n + 1)

theorem P16264301309237612569.correct : P16264301309237612569.Spec := by
  intro n
  simp only [A351116, Nat.add_sub_cancel]

end A351116

/-! ## A351116.P14777171051898360842

`∑[(n+1)*floor(acot(A063514(n+1)))]`
-/

namespace A351116.P14777171051898360842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊SequenceMachineLib.acot (A063514 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351116.P14777171051898360842

namespace A351116

/-- `∑[(n+1)*floor(acot(A063514(n+1)))]` -/
def P14777171051898360842.Spec : Prop :=
  ∀ n, P14777171051898360842.a n = A351116 (n + 1)

end A351116

/-! ## A351116.P10334846008233845771

`∑[(n+1)*char[A020492(n+1)-1]]`
-/

namespace A351116.P10334846008233845771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351116.P10334846008233845771

namespace A351116

/-- `∑[(n+1)*char[A020492(n+1)-1]]` -/
def P10334846008233845771.Spec : Prop :=
  ∀ n, (P10334846008233845771.a n : ℤ) = A351116 (n + 1)

end A351116

/-! ## A351116.P15384660221732744537

`∑[(n+1)*A000007(A063514(n+1))]`
-/

namespace A351116.P15384660221732744537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000007 (A063514 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351116.P15384660221732744537

namespace A351116

/-- `∑[(n+1)*A000007(A063514(n+1))]` -/
def P15384660221732744537.Spec : Prop :=
  ∀ n, P15384660221732744537.a n = A351116 (n + 1)

end A351116

/-! ## A351116.P2513109063906012200

`∑[(n+1)*∏{d}[A063514(n+1), A001222(#)]]`
-/

namespace A351116.P2513109063906012200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063514 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ d ∈ Nat.divisors (f2 n).natAbs, A001222 d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351116.P2513109063906012200

namespace A351116

/-- `∑[(n+1)*∏{d}[A063514(n+1), A001222(#)]]` -/
def P2513109063906012200.Spec : Prop :=
  ∀ n, P2513109063906012200.a n = A351116 (n + 1)

end A351116

/-! ## A351116.P1595577972392916540

`∑[(n+1)*A000007(A302172(n+1))]`
-/

namespace A351116.P1595577972392916540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000007 (A302172 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351116.P1595577972392916540

namespace A351116

/-- `∑[(n+1)*A000007(A302172(n+1))]` -/
def P1595577972392916540.Spec : Prop :=
  ∀ n, P1595577972392916540.a n = A351116 (n + 1)

end A351116

/-! ## A351116.P5423013137569314510

`∑[(n+1)*A151909(n)^A063514(n+1)]`
-/

namespace A351116.P5423013137569314510
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A151909 n : ℚ) ^ (A063514 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351116.P5423013137569314510

namespace A351116

/-- `∑[(n+1)*A151909(n)^A063514(n+1)]` -/
def P5423013137569314510.Spec : Prop :=
  ∀ n, P5423013137569314510.a n = (A351116 (n + 1) : ℚ)

end A351116

/-! ## A351116.P3398828589816694411

`A368819(n+1)+A351113(n+1)`
-/

namespace A351116.P3398828589816694411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368819 (n + 1) + A351113 (n + 1)

end

end A351116.P3398828589816694411

namespace A351116

/-- `A368819(n+1)+A351113(n+1)` -/
def P3398828589816694411.Spec : Prop :=
  ∀ n, P3398828589816694411.a n = A351116 (n + 1)

end A351116

/-!
# A351118: a(n) is the number of endofunctions on an n-set where there is an element with a preimage of cardinality greater than n/2.

The programs for A351118, there is no canonical definition to state claims against.
-/

/-! ## A351118.P1652328324033140073

`(n+1)*A032487(A166894(n))`
-/

namespace A351118.P1652328324033140073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A032487 (A166894 n).toNat

end

end A351118.P1652328324033140073

/-!
# A351119: Numbers that are the sum of two balanced numbers in at least one way.

The programs for A351119, there is no canonical definition to state claims against.
-/

/-! ## A351119.P11531951152371412522

`lt[0, A347822(A065033(2*n))]`
-/

namespace A351119.P11531951152371412522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347822 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A351119.P11531951152371412522

/-!
# A351120: Pair chromatic number of a cycle graph with n vertices.

The programs for A351120, there is no canonical definition to state claims against.
-/

/-! ## A351120.P7307493442849073844

`A350715(n+4)-2`
-/

namespace A351120.P7307493442849073844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350715 (n + 4) - 2

end

end A351120.P7307493442849073844

/-! ## A351120.P5760802448778940436

`A023444(A350715(n+4))`
-/

namespace A351120.P5760802448778940436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A350715 (n + 4)).toNat

end

end A351120.P5760802448778940436

/-! ## A351120.P11881757299488618135

`A354349(A000040(n+1))+A350715(n+4)`
-/

namespace A351120.P11881757299488618135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354349 (A000040 (n + 1)).toNat + A350715 (n + 4)

end

end A351120.P11881757299488618135

/-! ## A351120.P11871618424412103671

`A354349(A019338(n+1))+A350715(n+4)`
-/

namespace A351120.P11871618424412103671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354349 (A019338 (n + 1)).toNat + A350715 (n + 4)

end

end A351120.P11871618424412103671

/-! ## A351120.P5891583840263691829

`A381563(n+5)-3`
-/

namespace A351120.P5891583840263691829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381563 (n + 5) - 3

end

end A351120.P5891583840263691829

/-!
# A351121: Numbers k such that k^2 - k + 1 is not squarefree.

The programs for A351121, there is no canonical definition to state claims against.
-/

/-! ## A351121.P6046076735332711291

`eq[0, A008683(A278251(n))]`
-/

namespace A351121.P6046076735332711291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A278251 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351121.P6046076735332711291

/-! ## A351121.P6059070643186811024

`eq[0, A008683((1-n)²+n)]`
-/

namespace A351121.P6059070643186811024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351121.P6059070643186811024

/-! ## A351121.P4586143660390556319

`eq[0, -A008683(n²-(n-1))]`
-/

namespace A351121.P4586143660390556319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 ((n ^ 2 : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351121.P4586143660390556319

/-! ## A351121.P7779795371463746685

`lt[A008683((n-1)²+n)², 1]`
-/

namespace A351121.P7779795371463746685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (((n : ℤ) - 1) ^ 2 + (n : ℤ)).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A351121.P7779795371463746685

/-!
# A351125: Numbers that are sums of consecutive primorial numbers.

The programs for A351125, there is no canonical definition to state claims against.
-/

/-! ## A351125.P8769826372408105809

`A276156(A089633(n)+1)`
-/

namespace A351125.P8769826372408105809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (A089633 n + 1).toNat

end

end A351125.P8769826372408105809

/-! ## A351125.P18017691192503092874

`A276156(A023758(n+2))`
-/

namespace A351125.P18017691192503092874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (A023758 (n + 2)).toNat

end

end A351125.P18017691192503092874

/-! ## A351125.P2320900144469275005

`A276156(∑[A057728(n+1)])`
-/

namespace A351125.P2320900144469275005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A351125.P2320900144469275005

/-! ## A351125.P13785002588199903158

`A276156(record[A059893(n+1)])`
-/

namespace A351125.P13785002588199903158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A351125.P13785002588199903158

/-! ## A351125.P10673057095028945674

`A276156(record[A139708(n+1)])`
-/

namespace A351125.P10673057095028945674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A351125.P10673057095028945674

/-!
# A351126: a(n) = A195199(n) / n.

The programs for A351126, there is no canonical definition to state claims against.
-/

/-! ## A351126.P3255556804875289355

`A195199(A087999(n+1))/A087999(n+1)`
-/

namespace A351126.P3255556804875289355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195199 (A087999 (n + 1)).toNat : ℚ) / (A087999 (n + 1) : ℚ)

end

end A351126.P3255556804875289355

/-! ## A351126.P5065544587824028172

`A195199(n+1)/(n+1)`
-/

namespace A351126.P5065544587824028172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195199 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A351126.P5065544587824028172

/-! ## A351126.P14585173599106365138

`ceil(acot(A000027(n+1))*A195199(n+1))`
-/

namespace A351126.P14585173599106365138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A000027 (n + 1) : ℝ) * (A195199 (n + 1) : ℝ)⌉

end

end A351126.P14585173599106365138

/-! ## A351126.P16396757349268559061

`(n+1)^A008683(A141849(n+1))*A195199(n+1)`
-/

namespace A351126.P16396757349268559061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A141849 (n + 1)).toNat : ℤ) * (A195199 (n + 1) : ℚ)

end

end A351126.P16396757349268559061

/-! ## A351126.P7642670400409639461

`A031131(A060395(n)%A136175(3*n+5))`
-/

namespace A351126.P7642670400409639461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (Int.tmod (A060395 n) (A136175 (3 * n + 5))).toNat

end

end A351126.P7642670400409639461

/-!
# A351127: Number of polyominoes with n cells with maximal symmetry and center of rotation about the center of a square.

The programs for A351127, there is no canonical definition to state claims against.
-/

/-! ## A351127.P10981998412993900425

`A348849(n+1)-A351142(n+1)-A351142(n+1)`
-/

namespace A351127.P10981998412993900425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348849 (n + 1) - A351142 (n + 1) - A351142 (n + 1)

end

end A351127.P10981998412993900425

/-! ## A351127.P7097777755739315129

`A348849(n+1)-A005843(A351142(n+1))`
-/

namespace A351127.P7097777755739315129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348849 (n + 1) - A005843 (A351142 (n + 1)).toNat

end

end A351127.P7097777755739315129

/-! ## A351127.P18047300643186437715

`(A346632(n)+A184955(n))%∑[gcd(3, n)]`
-/

namespace A351127.P18047300643186437715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346632 n + A184955 n) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A351127.P18047300643186437715

/-! ## A351127.P10995294859925165429

`A004086(A346632(n)+A184955(n))%5`
-/

namespace A351127.P10995294859925165429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A346632 n + A184955 n).toNat) 5

end

end A351127.P10995294859925165429

/-! ## A351127.P10254258850612864016

`A004086(xor(A184955(n), A346632(n)))%5`
-/

namespace A351127.P10254258850612864016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (Int.xor (A184955 n) (A346632 n)).toNat) 5

end

end A351127.P10254258850612864016

/-!
# A351128: G.f. A(x) satisfies: A(x) = x + x^2 * A(x/(1 - 4*x)) / (1 - 4*x).

The programs for A351128, there is no canonical definition to state claims against.
-/

/-! ## A351128.P12243935409223238911

`A351050(n)-A351150(n)`
-/

namespace A351128.P12243935409223238911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351050 n - A351150 n

end

end A351128.P12243935409223238911

/-! ## A351128.P281325502317399750

`abs(A351150(n)-abs(A351185(n)))`
-/

namespace A351128.P281325502317399750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A351150 n - |A351185 n|)|

end

end A351128.P281325502317399750

/-! ## A351128.P6536151646242639102

`A000260(n)%A018626(A018626(n+1))`
-/

namespace A351128.P6536151646242639102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000260 n) (A018626 (A018626 (n + 1)).toNat)

end

end A351128.P6536151646242639102

/-!
# A351129: Number of regions in a regular n-gon with all diagonals drawn whose edges all have the same number of facing edges.

The programs for A351129, there is no canonical definition to state claims against.
-/

/-! ## A351129.P8019968370738484650

`and(A086618(n)^val(n+1, 2), A086589(n+3))`
-/

namespace A351129.P8019968370738484650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086618 n ^ SequenceMachineLib.valuation (n + 1) 2) (A086589 (n + 3))

end

end A351129.P8019968370738484650

/-! ## A351129.P15522498963844888736

`and((n+1)²*(-1)^n, A006530(A326006(n)))`
-/

namespace A351129.P15522498963844888736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((n + 1) ^ 2 : ℤ) * (-1) ^ n) (A006530 (A326006 n).toNat)

end

end A351129.P15522498963844888736

/-! ## A351129.P14965757691229679692

`and(A141214(2*n), A178334(round((2*root(3, 3))^n)))`
-/

namespace A351129.P14965757691229679692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141214 (2 * n)) (A178334 (SequenceMachineLib.roundAway ((2 * (3 : ℝ) ^ (1 / (3 : ℝ))) ^ n)).toNat)

end

end A351129.P14965757691229679692

/-! ## A351129.P2393811585641177589

`A282781(A053381(n))%A013588(n+1)`
-/

namespace A351129.P2393811585641177589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282781 (A053381 n).toNat) (A013588 (n + 1))

end

end A351129.P2393811585641177589

/-! ## A351129.P10179564466467358354

`and(A018242(A051852(n+1)), A077802(n))`
-/

namespace A351129.P10179564466467358354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018242 (A051852 (n + 1)).toNat) (A077802 n)

end

end A351129.P10179564466467358354

/-!
# A351130: Triangular numbers (A000217) whose arithmetic derivative (A003415) is also a triangular number.

The programs for A351130, there is no canonical definition to state claims against.
-/

/-! ## A351130.P9697811404731126016

`∩[∑[n], A117597(n)]`
-/

namespace A351130.P9697811404731126016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117597 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A351130.P9697811404731126016

/-!
# A351131: Triangular numbers (A000217) whose second arithmetic derivative (A068346) is also a triangular number.

The programs for A351131, there is no canonical definition to state claims against.
-/

/-! ## A351131.P7238586873339491976

`eq[A010054(n), A059268(A068346(n))]`
-/

namespace A351131.P7238586873339491976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A068346 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351131.P7238586873339491976

/-! ## A351131.P7839764961757958507

`eq[A074909(n)², A074909(A068346(n))]`
-/

namespace A351131.P7839764961757958507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A068346 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351131.P7839764961757958507

/-! ## A351131.P1156545491015257508

`eq[2, A059268(n)+A059268(A068346(n))]`
-/

namespace A351131.P1156545491015257508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + A059268 (A068346 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351131.P1156545491015257508

/-! ## A351131.P10265453378626731141

`eq[A010054(A068346(n)), A074909(n)]`
-/

namespace A351131.P10265453378626731141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A068346 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351131.P10265453378626731141

/-! ## A351131.P3297114944674388891

`C(∑[A212954(A302033(n))], 2)`
-/

namespace A351131.P3297114944674388891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212954 (A302033 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A351131.P3297114944674388891

/-!
# A351132: G.f. A(x) satisfies: A(x) = x + x^2 * A(x/(1 - 5*x)) / (1 - 5*x).

The programs for A351132, there is no canonical definition to state claims against.
-/

/-! ## A351132.P14193483025849320558

`A351056(n)-A351151(n)`
-/

namespace A351132.P14193483025849320558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351056 n - A351151 n

end

end A351132.P14193483025849320558

/-!
# A351140: a(1) = 1, a(n) = smallest prime > a(n-1) + n.

The programs for A351140, the canonical program `A351140.P15868147787886378278` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351140 has offset 1).

The definition of A351140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 438 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351140.P15868147787886378278

`A151800(a(n-1)+1+n)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A351140

/-- `A151800(a(n-1)+1+n)` -/
def P15868147787886378278.Spec : Prop :=
  ∀ n, P15868147787886378278.a n = A351140 (n + 1)

theorem P15868147787886378278.correct : P15868147787886378278.Spec := by
  intro n
  simp only [A351140, Nat.add_sub_cancel]

end A351140

/-! ## A351140.P4660402136477023686

`A151800(a(n-1)-xor(n, -1))` with `a(0)=1`
-/

namespace A351140.P4660402136477023686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151800 (a (n - 1) - Int.xor (n : ℤ) (-1)).toNat

end

end A351140.P4660402136477023686

namespace A351140

/-- `A151800(a(n-1)-xor(n, -1))` -/
def P4660402136477023686.Spec : Prop :=
  ∀ n, P4660402136477023686.a n = A351140 (n + 1)

end A351140

/-! ## A351140.P12400672246819201066

`A151800(a(xor(-1, -n))+n+1)` with `a(0)=1`
-/

namespace A351140.P12400672246819201066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151800 (a (Int.xor (-1) (-(n : ℤ))).toNat + (n + 1 : ℤ)).toNat

end

end A351140.P12400672246819201066

namespace A351140

/-- `A151800(a(xor(-1, -n))+n+1)` -/
def P12400672246819201066.Spec : Prop :=
  ∀ n, P12400672246819201066.a n = A351140 (n + 1)

end A351140

/-! ## A351140.P5786868372819919223

`A151800(a(A023443(n))+n+1)` with `a(0)=1`
-/

namespace A351140.P5786868372819919223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151800 (a (A023443 n).toNat + (n + 1 : ℤ)).toNat

end

end A351140.P5786868372819919223

namespace A351140

/-- `A151800(a(A023443(n))+n+1)` -/
def P5786868372819919223.Spec : Prop :=
  ∀ n, P5786868372819919223.a n = A351140 (n + 1)

end A351140

/-! ## A351140.P7252060215458924919

`A066169(a(n-1)+n+1)` with `a(0)=1`
-/

namespace A351140.P7252060215458924919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066169 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A351140.P7252060215458924919

namespace A351140

/-- `A066169(a(n-1)+n+1)` -/
def P7252060215458924919.Spec : Prop :=
  ∀ n, P7252060215458924919.a n = A351140 (n + 1)

end A351140

/-! ## A351140.P12438444700465738413

`A007918(a(n-1)+2+n)` with `a(0)=1`
-/

namespace A351140.P12438444700465738413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007918 (a (n - 1) + 2 + (n : ℤ)).toNat

end

end A351140.P12438444700465738413

namespace A351140

/-- `A007918(a(n-1)+2+n)` -/
def P12438444700465738413.Spec : Prop :=
  ∀ n, P12438444700465738413.a n = A351140 (n + 1)

end A351140

/-! ## A351140.P277120660008706351

`A151800(A014681(a(n-1))+n)` with `a(0)=1`
-/

namespace A351140.P277120660008706351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151800 (A014681 (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A351140.P277120660008706351

namespace A351140

/-- `A151800(A014681(a(n-1))+n)` -/
def P277120660008706351.Spec : Prop :=
  ∀ n, P277120660008706351.a n = A351140 (n + 1)

end A351140

/-! ## A351140.P8290941060966132215

`A000040(A036234(a(n-1)+1+n))` with `a(0)=1`
-/

namespace A351140.P8290941060966132215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (A036234 (a (n - 1) + 1 + (n : ℤ)).toNat).toNat

end

end A351140.P8290941060966132215

namespace A351140

/-- `A000040(A036234(a(n-1)+1+n))` -/
def P8290941060966132215.Spec : Prop :=
  ∀ n, P8290941060966132215.a n = A351140 (n + 1)

end A351140

/-! ## A351140.P511748140197871117

`A065091(A230980(a(n-1)+n+1))` with `a(0)=1`
-/

namespace A351140.P511748140197871117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065091 (A230980 (a (n - 1) + (n + 1 : ℤ)).toNat).toNat

end

end A351140.P511748140197871117

namespace A351140

/-- `A065091(A230980(a(n-1)+n+1))` -/
def P511748140197871117.Spec : Prop :=
  ∀ n, P511748140197871117.a n = A351140 (n + 1)

end A351140

/-! ## A351140.P1524380186590662881

`A006530(A139693(a(n-1)+1+n))` with `a(0)=1`
-/

namespace A351140.P1524380186590662881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (A139693 (a (n - 1) + 1 + (n : ℤ)).toNat).toNat

end

end A351140.P1524380186590662881

namespace A351140

/-- `A006530(A139693(a(n-1)+1+n))` -/
def P1524380186590662881.Spec : Prop :=
  ∀ n, P1524380186590662881.a n = A351140 (n + 1)

end A351140

/-!
# A351142: Free chiral polyominoes with n squares, having 90-degree rotational symmetry about the center of a square of the underlying square matrix.

The programs for A351142, there is no canonical definition to state claims against.
-/

/-! ## A351142.P7235426248553059210

`A004525(A348849(n+1)-A351127(n+1))`
-/

namespace A351142.P7235426248553059210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A348849 (n + 1) - A351127 (n + 1)).toNat

end

end A351142.P7235426248553059210

/-! ## A351142.P8610189486876969789

`A004526(A348849(n+1)-A351127(n+1))`
-/

namespace A351142.P8610189486876969789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A348849 (n + 1) - A351127 (n + 1)).toNat

end

end A351142.P8610189486876969789

/-! ## A351142.P3682243469477244875

`A026741(A348849(n+1)-A351127(n+1))`
-/

namespace A351142.P3682243469477244875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A348849 (n + 1) - A351127 (n + 1)).toNat

end

end A351142.P3682243469477244875

/-!
# A351143: G.f. A(x) satisfies: A(x) = 1 + x^2 * A(x/(1 - 2*x)) / (1 - 2*x).

The programs for A351143, there is no canonical definition to state claims against.
-/

/-! ## A351143.P15074783071589157240

`A007472(n)-A351028(n)`
-/

namespace A351143.P15074783071589157240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007472 n - A351028 n

end

end A351143.P15074783071589157240

/-! ## A351143.P15561762326763330427

`A351028(n)+A033999(n)*A350456(n)`
-/

namespace A351143.P15561762326763330427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351028 n + A033999 n * A350456 n

end

end A351143.P15561762326763330427

/-! ## A351143.P17139636999203800456

`∑{d}[A325671(n+1), A319136(#)]`
-/

namespace A351143.P17139636999203800456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A319136 d

end

end A351143.P17139636999203800456

/-! ## A351143.P13148090344044350816

`A303058(n)-A342023(A017955(n))`
-/

namespace A351143.P13148090344044350816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303058 n - A342023 (A017955 n).toNat

end

end A351143.P13148090344044350816

/-!
# A351144: G.f. A(x) satisfies: A(x) = 1 + x^2 * A(x/(1 - 3*x)) / (1 - 3*x).

The programs for A351144, there is no canonical definition to state claims against.
-/

/-! ## A351144.P2909363811711654133

`A351049(n)-A351053(n)`
-/

namespace A351144.P2909363811711654133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351049 n - A351053 n

end

end A351144.P2909363811711654133

/-! ## A351144.P15907008438753285491

`A351053(n)+A033999(n)*A351184(n)`
-/

namespace A351144.P15907008438753285491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351053 n + A033999 n * A351184 n

end

end A351144.P15907008438753285491

/-! ## A351144.P9046965515913149231

`A097203(A053649(n)-4)`
-/

namespace A351144.P9046965515913149231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097203 (A053649 n - 4).toNat

end

end A351144.P9046965515913149231

/-!
# A351146: a(n) = Sum_{k=1..n} binomial(2*n,n+k)*A000005(k).

The programs for A351146, there is no canonical definition to state claims against.
-/

/-! ## A351146.P17142664904636185604

`A351145(∑[n+1])`
-/

namespace A351146.P17142664904636185604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351145 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351146.P17142664904636185604

/-! ## A351146.P1923739836695187425

`record[A351145(A038722(n+1))]`
-/

namespace A351146.P1923739836695187425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351145 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351146.P1923739836695187425

/-! ## A351146.P6782347692281005128

`record[A351145(A049777(n+1))]`
-/

namespace A351146.P6782347692281005128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351145 (A049777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351146.P6782347692281005128

/-! ## A351146.P8019716786295643851

`record[A351145(A061579(n)+1)]`
-/

namespace A351146.P8019716786295643851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351145 (A061579 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351146.P8019716786295643851

/-! ## A351146.P15351478372302124448

`record[A351145(A286157(n+1))]`
-/

namespace A351146.P15351478372302124448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351145 (A286157 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351146.P15351478372302124448

/-!
# A351150: G.f. A(x) satisfies: A(x) = 1 + x^2 * A(x/(1 - 4*x)) / (1 - 4*x).

The programs for A351150, there is no canonical definition to state claims against.
-/

/-! ## A351150.P9507489589686957343

`A351050(n)-A351128(n)`
-/

namespace A351150.P9507489589686957343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351050 n - A351128 n

end

end A351150.P9507489589686957343

/-! ## A351150.P619901643349205481

`A008616(A162326(n)+A027104(n))`
-/

namespace A351150.P619901643349205481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A162326 n + A027104 n).toNat

end

end A351150.P619901643349205481

/-! ## A351150.P13059774389495921591

`A087866(A037098(n))-A268643(n)`
-/

namespace A351150.P13059774389495921591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087866 (A037098 n).toNat - A268643 n

end

end A351150.P13059774389495921591

/-!
# A351151: G.f. A(x) satisfies: A(x) = 1 + x^2 * A(x/(1 - 5*x)) / (1 - 5*x).

The programs for A351151, there is no canonical definition to state claims against.
-/

/-! ## A351151.P16351437446612146055

`A351056(n)-A351132(n)`
-/

namespace A351151.P16351437446612146055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351056 n - A351132 n

end

end A351151.P16351437446612146055

/-! ## A351151.P10046969409281750677

`A066304(n+1)-n`
-/

namespace A351151.P10046969409281750677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066304 (n + 1) - (n : ℤ)

end

end A351151.P10046969409281750677

/-!
# A351152: G.f. A(x) satisfies: A(x) = 1 + x^2 * A(x/(1 - 6*x)) / (1 - 6*x).

The programs for A351152, there is no canonical definition to state claims against.
-/

/-! ## A351152.P9755311769621208325

`A351057(n)-A351161(n)`
-/

namespace A351152.P9755311769621208325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351057 n - A351161 n

end

end A351152.P9755311769621208325

/-! ## A351152.P11032053999396601486

`A028310(A207652(n))-A048715(n)`
-/

namespace A351152.P11032053999396601486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A207652 n).toNat - A048715 n

end

end A351152.P11032053999396601486

/-!
# A351153: Triangle read by rows: T(n, k) = n*(k - 1) - k*(k - 3)/2 with 0 < k <= n.

The programs for A351153, there is no canonical definition to state claims against.
-/

/-! ## A351153.P7922689404268794861

`1-C(C(comp[∑[n]]-n, 2)-n, 2)+n`
-/

namespace A351153.P7922689404268794861
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat 2 : ℤ) + (n : ℤ)

end

end A351153.P7922689404268794861

/-! ## A351153.P8754991341161462831

`1-(C(C(comp[∑[n]]-n, 2)-n, 2)-n)`
-/

namespace A351153.P8754991341161462831
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((Nat.choose ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A351153.P8754991341161462831

/-! ## A351153.P10889956608297563185

`A193973(n)-∑[char[∑[n]]]`
-/

namespace A351153.P10889956608297563185
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193973 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A351153.P10889956608297563185

/-! ## A351153.P15259813293821705405

`A303273(comp[∑[n]]+∑[char[∑[n]]])`
-/

namespace A351153.P15259813293821705405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303273 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + ∑ j ∈ Finset.range (n + 1), f3 j)

end

end A351153.P15259813293821705405

/-! ## A351153.P10447497489742515446

`A141419(comp[∑[n]])-∑[char[∑[n]]]`
-/

namespace A351153.P10447497489742515446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A351153.P10447497489742515446

/-! ## A351153.P1363258526527852148

`1-A095832(n+1)/2+n`
-/

namespace A351153.P1363258526527852148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (A095832 (n + 1) : ℚ) / 2 + (n : ℚ)

end

end A351153.P1363258526527852148

/-! ## A351153.P16553289698721597953

`1-C(A004736(n+1), 2)+n`
-/

namespace A351153.P16553289698721597953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (A004736 (n + 1)).toNat 2 : ℤ) + (n : ℤ)

end

end A351153.P16553289698721597953

/-! ## A351153.P16838521826719267169

`n+1-C(A025581(n)+1, 2)`
-/

namespace A351153.P16838521826719267169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.choose (A025581 n + 1).toNat 2 : ℤ)

end

end A351153.P16838521826719267169

/-! ## A351153.P14842345903370216481

`A230877(A099627(n))`
-/

namespace A351153.P14842345903370216481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 (A099627 n).toNat

end

end A351153.P14842345903370216481

/-! ## A351153.P15086539993848803192

`A124757(A224195(n+1))`
-/

namespace A351153.P15086539993848803192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 (A224195 (n + 1)).toNat

end

end A351153.P15086539993848803192

/-!
# A351154: a(n) is the permanent of the n X n matrix M(n) that is defined as M[i,j,n] = A351153(n, min(i, j)) + abs(i - j).

The programs for A351154, there is no canonical definition to state claims against.
-/

/-! ## A351154.P8466616796725580417

`∏{d}[floor(ϕ*(n+2))-3, A132605(#)]`
-/

namespace A351154.P8466616796725580417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 2 : ℝ)⌋ - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A132605 d

end

end A351154.P8466616796725580417

/-!
# A351155: Expansion of e.g.f. (1 - x^2/2)^(-x).

The programs for A351155, there is no canonical definition to state claims against.
-/

/-! ## A351155.P13133638277518347835

`A375167(n)/A093921(A004731(n))`
-/

namespace A351155.P13133638277518347835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375167 n : ℚ) / (A093921 (A004731 n).toNat : ℚ)

end

end A351155.P13133638277518347835

/-! ## A351155.P2099164553941000458

`A357966(n)/A000120(A321470(n))`
-/

namespace A351155.P2099164553941000458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357966 n : ℚ) / (A000120 (A321470 n).toNat : ℚ)

end

end A351155.P2099164553941000458

/-! ## A351155.P7779756044197406639

`A375167(n)/A373217(A264235(n))`
-/

namespace A351155.P7779756044197406639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375167 n : ℚ) / (A373217 (A264235 n).toNat : ℚ)

end

end A351155.P7779756044197406639

/-! ## A351155.P1952241920330600918

`A026741(A008284(n+1)*A375167(n))`
-/

namespace A351155.P1952241920330600918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A008284 (n + 1) * A375167 n).toNat

end

end A351155.P1952241920330600918

/-! ## A351155.P7333160600497907376

`A026741(A161906(n+1)*A375167(n))`
-/

namespace A351155.P7333160600497907376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A161906 (n + 1) * A375167 n).toNat

end

end A351155.P7333160600497907376

/-!
# A351156: Expansion of e.g.f. (1 - x^3/6)^(-x).

The programs for A351156, there is no canonical definition to state claims against.
-/

/-! ## A351156.P9373869485446546151

`A375556(n)/A327405(A001519(n))`
-/

namespace A351156.P9373869485446546151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375556 n : ℚ) / (A327405 (A001519 n).toNat : ℚ)

end

end A351156.P9373869485446546151

/-! ## A351156.P9569506918520294937

`A375571(A375595(n+1))*A375592(n)`
-/

namespace A351156.P9569506918520294937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375571 (A375595 (n + 1)).toNat * A375592 n

end

end A351156.P9569506918520294937

/-! ## A351156.P3926177525740956445

`A375556(n)/A055457(A054975(n+3))`
-/

namespace A351156.P3926177525740956445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375556 n : ℚ) / (A055457 (A054975 (n + 3)).toNat : ℚ)

end

end A351156.P3926177525740956445

/-! ## A351156.P6995904544668427369

`A375556(n)/A055457(A078140(n+5))`
-/

namespace A351156.P6995904544668427369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375556 n : ℚ) / (A055457 (A078140 (n + 5)).toNat : ℚ)

end

end A351156.P6995904544668427369

/-! ## A351156.P10075726818771924804

`A294932(A046717(n))*A375592(n)`
-/

namespace A351156.P10075726818771924804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294932 (A046717 n).toNat * A375592 n

end

end A351156.P10075726818771924804

/-!
# A351157: Number of symmetric 0-1 matrices with zero main diagonal where rows are sorted lexicographically and row sums are nondecreasing.

The programs for A351157, there is no canonical definition to state claims against.
-/

/-! ## A351157.P6051660884272453490

`A123459(n+1)-A025466(A016121(n))`
-/

namespace A351157.P6051660884272453490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123459 (n + 1) - A025466 (A016121 n).toNat

end

end A351157.P6051660884272453490

/-! ## A351157.P6385081406083271904

`A123459(n+1)-A056980(A042139(n))`
-/

namespace A351157.P6385081406083271904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123459 (n + 1) - A056980 (A042139 n).toNat

end

end A351157.P6385081406083271904

/-! ## A351157.P12454985170392234664

`A123459(n+1)-A184964(A000332(n))`
-/

namespace A351157.P12454985170392234664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123459 (n + 1) - A184964 (A000332 n).toNat

end

end A351157.P12454985170392234664

/-!
# A351158: Number of n X n symmetric 0-1 matrices where rows are sorted lexicographically and row sums are nondecreasing.

The programs for A351158, there is no canonical definition to state claims against.
-/

/-! ## A351158.P10131810844417350648

`A204892(A158797(n))`
-/

namespace A351158.P10131810844417350648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A158797 n).toNat

end

end A351158.P10131810844417350648

/-!
# A351159: Number of polyominoes of n cells with both diagonal symmetries, for which the 180-degree rotational symmetry has an axis that coincides with the center of a square, but without 90-degree rotational symmetry.

The programs for A351159, there is no canonical definition to state claims against.
-/

/-! ## A351159.P6824409836639108273

`(A390653(n+1)-4*A351615(n+1)-2*A351190(n+1)-2*A351142(n+1)-A351127(n+1))/2`
-/

namespace A351159.P6824409836639108273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390653 (n + 1) - 4 * A351615 (n + 1) - 2 * A351190 (n + 1) - 2 * A351142 (n + 1) - A351127 (n + 1) : ℚ) / 2

end

end A351159.P6824409836639108273

/-! ## A351159.P12284038842235339925

`A056878(n+1)-A351160(A152271(n))`
-/

namespace A351159.P12284038842235339925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056878 (n + 1) - A351160 (A152271 n).toNat

end

end A351159.P12284038842235339925

/-!
# A351160: Number of polyominoes of 2n cells with both diagonal symmetries, for which the 180-degree rotational symmetry has an axis that coincides with a vertex of a square, but without 90-degree rotational symmetry.

The programs for A351160, there is no canonical definition to state claims against.
-/

/-! ## A351160.P10751562685943224083

`A056878(2*(n+1))-A351159(2*(n+1))`
-/

namespace A351160.P10751562685943224083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056878 (2 * (n + 1)) - A351159 (2 * (n + 1))

end

end A351160.P10751562685943224083

/-! ## A351160.P5839130110855348020

`∑[A318584(2*(n+1)*floor(n/ϕ))]`
-/

namespace A351160.P5839130110855348020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318584 ((2 * (n + 1) : ℤ) * ⌊(n : ℝ) / Real.goldenRatio⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351160.P5839130110855348020

/-! ## A351160.P17441564744568292802

`A119340(n)-A133512(A000055(n))`
-/

namespace A351160.P17441564744568292802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119340 n - A133512 (A000055 n).toNat

end

end A351160.P17441564744568292802

/-! ## A351160.P14808460744466967135

`A347698(or(A129720(n)+1, A129720(n)))`
-/

namespace A351160.P14808460744466967135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347698 (Int.lor (A129720 n + 1) (A129720 n)).toNat

end

end A351160.P14808460744466967135

/-! ## A351160.P6575643263472416308

`A154488(A383098(2*(n+2)))%A227038(n)`
-/

namespace A351160.P6575643263472416308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154488 (A383098 (2 * (n + 2))).toNat) (A227038 n)

end

end A351160.P6575643263472416308

/-!
# A351161: G.f. A(x) satisfies: A(x) = x + x^2 * A(x/(1 - 6*x)) / (1 - 6*x).

The programs for A351161, there is no canonical definition to state claims against.
-/

/-! ## A351161.P9168010485692193299

`A351152(n)-A033999(n)*A351187(n)`
-/

namespace A351161.P9168010485692193299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351152 n - A033999 n * A351187 n

end

end A351161.P9168010485692193299

/-! ## A351161.P12895877254729067698

`A351057(n)-A351152(n)`
-/

namespace A351161.P12895877254729067698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351057 n - A351152 n

end

end A351161.P12895877254729067698

/-! ## A351161.P13499434695486674352

`A048715(n)+A351057(n)-A028310(A207652(n))`
-/

namespace A351161.P13499434695486674352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048715 n + (A351057 n - A028310 (A207652 n).toNat)

end

end A351161.P13499434695486674352

/-!
# A351163: Numbers k' / tau(k) such that tau(k) | k'.

The programs for A351163, there is no canonical definition to state claims against.
-/

/-! ## A351163.P18329252146663560900

`A003415(A351048(n+1))/A000005(A351048(n+1))`
-/

namespace A351163.P18329252146663560900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (A351048 (n + 1)).toNat : ℚ) / (A000005 (A351048 (n + 1)).toNat : ℚ)

end

end A351163.P18329252146663560900

/-!
# A351167: Partial sums of A350682.

The programs for A351167, there is no canonical definition to state claims against.
-/

/-! ## A351167.P5849228366568048160

`∑[A350682(n+1)]`
-/

namespace A351167.P5849228366568048160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351167.P5849228366568048160

/-!
# A351168: If n = p_1^e_1 * ... * p_k^e_k, where p_1 < ... < p_k are primes, then a(n) is obtained by replacing the last factor p_k^e_k by (p_k - 1)^e_k; a(1) = 1.

The programs for A351168, the canonical program `A351168.P10384558415746341756` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351168 has offset 1).

The definition of A351168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351168.P15531586743147636787

`A351419(n+1)/A070777(n+1)`
-/

namespace A351168.P15531586743147636787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351419 (n + 1) : ℚ) / (A070777 (n + 1) : ℚ)

end

end A351168.P15531586743147636787

namespace A351168

/-- `A351419(n+1)/A070777(n+1)` -/
def P15531586743147636787.Spec : Prop :=
  ∀ n, P15531586743147636787.a n = (A351168 (n + 1) : ℚ)

end A351168

/-! ## A351168.P4843536942520844650

`A351419(n+1)/(A111089(n+1)-1)`
-/

namespace A351168.P4843536942520844650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351419 (n + 1) : ℚ) / (A111089 (n + 1) - 1 : ℚ)

end

end A351168.P4843536942520844650

namespace A351168

/-- `A351419(n+1)/(A111089(n+1)-1)` -/
def P4843536942520844650.Spec : Prop :=
  ∀ n, P4843536942520844650.a n = (A351168 (n + 1) : ℚ)

end A351168

/-! ## A351168.P10384558415746341756

`A003958(A053585(n+1))*A051119(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A351168

/-- `A003958(A053585(n+1))*A051119(n+1)` -/
def P10384558415746341756.Spec : Prop :=
  ∀ n, P10384558415746341756.a n = A351168 (n + 1)

theorem P10384558415746341756.correct : P10384558415746341756.Spec := by
  intro n
  simp only [A351168, Nat.add_sub_cancel]

end A351168

/-! ## A351168.P18359856680121017796

`A351419(n+1)/A003958(A006530(n+1))`
-/

namespace A351168.P18359856680121017796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351419 (n + 1) : ℚ) / (A003958 (A006530 (n + 1)).toNat : ℚ)

end

end A351168.P18359856680121017796

namespace A351168

/-- `A351419(n+1)/A003958(A006530(n+1))` -/
def P18359856680121017796.Spec : Prop :=
  ∀ n, P18359856680121017796.a n = (A351168 (n + 1) : ℚ)

end A351168

/-! ## A351168.P7542403196711631015

`A351419(n+1)/A000010(A111089(n+1))`
-/

namespace A351168.P7542403196711631015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351419 (n + 1) : ℚ) / (A000010 (A111089 (n + 1)).toNat : ℚ)

end

end A351168.P7542403196711631015

namespace A351168

/-- `A351419(n+1)/A000010(A111089(n+1))` -/
def P7542403196711631015.Spec : Prop :=
  ∀ n, P7542403196711631015.a n = (A351168 (n + 1) : ℚ)

end A351168

/-! ## A351168.P7297714930548261774

`A351419(n+1)/A063994(A053585(n+1))`
-/

namespace A351168.P7297714930548261774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351419 (n + 1) : ℚ) / (A063994 (A053585 (n + 1)).toNat : ℚ)

end

end A351168.P7297714930548261774

namespace A351168

/-- `A351419(n+1)/A063994(A053585(n+1))` -/
def P7297714930548261774.Spec : Prop :=
  ∀ n, P7297714930548261774.a n = (A351168 (n + 1) : ℚ)

end A351168

/-! ## A351168.P9770362175773208426

`A351419(n+1)/A063994(A345941(n+1))`
-/

namespace A351168.P9770362175773208426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351419 (n + 1) : ℚ) / (A063994 (A345941 (n + 1)).toNat : ℚ)

end

end A351168.P9770362175773208426

namespace A351168

/-- `A351419(n+1)/A063994(A345941(n+1))` -/
def P9770362175773208426.Spec : Prop :=
  ∀ n, P9770362175773208426.a n = (A351168 (n + 1) : ℚ)

end A351168

/-! ## A351168.P2043425249418985061

`A003958(A053585(n+1))*A351425(A243074(n+1))`
-/

namespace A351168.P2043425249418985061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A053585 (n + 1)).toNat * A351425 (A243074 (n + 1)).toNat

end

end A351168.P2043425249418985061

namespace A351168

/-- `A003958(A053585(n+1))*A351425(A243074(n+1))` -/
def P2043425249418985061.Spec : Prop :=
  ∀ n, P2043425249418985061.a n = A351168 (n + 1)

end A351168

/-! ## A351168.P6234728334247080116

`A003958(n+1)*A051119(n+1)/A003958(A051119(n+1))`
-/

namespace A351168.P6234728334247080116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) * A051119 (n + 1) : ℚ) / (A003958 (A051119 (n + 1)).toNat : ℚ)

end

end A351168.P6234728334247080116

namespace A351168

/-- `A003958(n+1)*A051119(n+1)/A003958(A051119(n+1))` -/
def P6234728334247080116.Spec : Prop :=
  ∀ n, P6234728334247080116.a n = (A351168 (n + 1) : ℚ)

end A351168

/-! ## A351168.P16848669615852730773

`A351419((n+1)²)/A351419(n+1)`
-/

namespace A351168.P16848669615852730773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351419 ((n + 1) ^ 2) : ℚ) / (A351419 (n + 1) : ℚ)

end

end A351168.P16848669615852730773

namespace A351168

/-- `A351419((n+1)²)/A351419(n+1)` -/
def P16848669615852730773.Spec : Prop :=
  ∀ n, P16848669615852730773.a n = (A351168 (n + 1) : ℚ)

end A351168

/-!
# A351170: Consider the primes of the form p(m)=m^2+1 such that p(m+2) is also prime for some m. The sequence lists the sums p(m) + p(m+2).

The programs for A351170, there is no canonical definition to state claims against.
-/

/-! ## A351170.P1870759431027008642

`2*(A096012(n+1)+1)²+4`
-/

namespace A351170.P1870759431027008642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A096012 (n + 1) + 1) ^ 2 + 4

end

end A351170.P1870759431027008642

/-! ## A351170.P2756190846637502060

`2*(A217583(n+1)+1)`
-/

namespace A351170.P2756190846637502060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A217583 (n + 1) + 1)

end

end A351170.P2756190846637502060

/-! ## A351170.P8040895084664771909

`2*(A108814(n+1)²+2)`
-/

namespace A351170.P8040895084664771909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A108814 (n + 1) ^ 2 + 2)

end

end A351170.P8040895084664771909

/-! ## A351170.P13884935791775528222

`A255843(A108814(n+1))`
-/

namespace A351170.P13884935791775528222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255843 (A108814 (n + 1)).toNat

end

end A351170.P13884935791775528222

/-! ## A351170.P12204215813633542916

`A255843(A096012(n+1)+1)`
-/

namespace A351170.P12204215813633542916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255843 (A096012 (n + 1) + 1).toNat

end

end A351170.P12204215813633542916

/-!
# A351172: Natural numbers that can be written as the quotient of two antipalindromic numbers (A035928).

The programs for A351172, there is no canonical definition to state claims against.
-/

/-! ## A351172.P18094296815823925533

`∪[A351175(n+1), A351176(n+1)]`
-/

namespace A351172.P18094296815823925533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A351172.P18094296815823925533

/-!
# A351173: Natural numbers that cannot be represented as the quotient of two antipalindromic numbers (A035928).

The programs for A351173, there is no canonical definition to state claims against.
-/

/-! ## A351173.P1799596838033566411

`comp[A351172(n+1)-1]+1`
-/

namespace A351173.P1799596838033566411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351172 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A351173.P1799596838033566411

/-! ## A351173.P11781789483102128012

`comp[∪[A290254(n+1), A351172(n+1)]]`
-/

namespace A351173.P11781789483102128012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290254 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351172 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A351173.P11781789483102128012

/-! ## A351173.P18346283994365533669

`comp[∪[A351175(n+1), A351176(n+1)]-1]+1`
-/

namespace A351173.P18346283994365533669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351175 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351176 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A351173.P18346283994365533669

/-! ## A351173.P13848506021781145036

`comp[A351172(n+1)%A103606(A016789(n))]`
-/

namespace A351173.P13848506021781145036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351172 (n + 1)) (A103606 (A016789 n).toNat)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A351173.P13848506021781145036

/-!
# A351175: Natural numbers k such that there are infinitely many representations k = A/B with A, B in A035928.

The programs for A351175, there is no canonical definition to state claims against.
-/

/-! ## A351175.P8693764030352468828

`∩[A351172(n+1), comp[A351176(n+1)]]`
-/

namespace A351175.P8693764030352468828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351172 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351176 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A351175.P8693764030352468828

/-! ## A351175.P9110199581207555162

`A351172(A087758(n+1)%A195598(3*n+5))`
-/

namespace A351175.P9110199581207555162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351172 (Int.tmod (A087758 (n + 1)) (A195598 (3 * n + 5))).toNat

end

end A351175.P9110199581207555162

/-! ## A351175.P347380183494066878

`A351172(∪[A195598(3*n+5), A087758(n+1)])`
-/

namespace A351175.P347380183494066878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195598 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087758 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351172 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A351175.P347380183494066878

/-! ## A351175.P13077769435161919499

`A351172(A087758(n+1)%A004023(n+3))`
-/

namespace A351175.P13077769435161919499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351172 (Int.tmod (A087758 (n + 1)) (A004023 (n + 3))).toNat

end

end A351175.P13077769435161919499

/-! ## A351175.P8425744214315326027

`A351172(A087758(n+1))%A254139(n+4)`
-/

namespace A351175.P8425744214315326027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351172 (A087758 (n + 1)).toNat) (A254139 (n + 4))

end

end A351175.P8425744214315326027

/-!
# A351178: Integral area of primitive integer-sided triangles whose sides a < b < c are in arithmetic progression.

The programs for A351178, there is no canonical definition to state claims against.
-/

/-! ## A351178.P2025908356403678846

`A164020(A336384(3*(n+1))-1)`
-/

namespace A351178.P2025908356403678846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (A336384 (3 * (n + 1)) - 1).toNat

end

end A351178.P2025908356403678846

/-!
# A351184: G.f. A(x) satisfies: A(x) = 1 + x + x^2 * A(x/(1 + 3*x)) / (1 + 3*x).

The programs for A351184, there is no canonical definition to state claims against.
-/

/-! ## A351184.P11103297842616472687

`(-1)^n*(A351144(n)-A351053(n))`
-/

namespace A351184.P11103297842616472687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (A351144 n - A351053 n)

end

end A351184.P11103297842616472687

/-! ## A351184.P16972234068048239606

`(A351144(n)-A351053(n))*A033999(n)`
-/

namespace A351184.P16972234068048239606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A351144 n - A351053 n) * A033999 n

end

end A351184.P16972234068048239606

/-! ## A351184.P3246080353194076822

`(A351144(n)-A351053(n))*A010892(A008486(n))`
-/

namespace A351184.P3246080353194076822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A351144 n - A351053 n) * A010892 (A008486 n).toNat

end

end A351184.P3246080353194076822

/-!
# A351185: G.f. A(x) satisfies: A(x) = 1 + x + x^2 * A(x/(1 + 4*x)) / (1 + 4*x).

The programs for A351185, there is no canonical definition to state claims against.
-/

/-! ## A351185.P1523426003059203975

`(A351150(n)-A351128(n))*A033999(n)`
-/

namespace A351185.P1523426003059203975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A351150 n - A351128 n) * A033999 n

end

end A351185.P1523426003059203975

/-! ## A351185.P12195035706200713519

`(A351150(n)-A351128(n))/A033999(n+2)`
-/

namespace A351185.P12195035706200713519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351150 n - A351128 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A351185.P12195035706200713519

/-! ## A351185.P15020122132997255938

`(A351150(n)-A351128(n))*A309873(n²+1)`
-/

namespace A351185.P15020122132997255938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A351150 n - A351128 n) * A309873 (n ^ 2 + 1)

end

end A351185.P15020122132997255938

/-!
# A351187: G.f. A(x) satisfies: A(x) = 1 + x + x^2 * A(x/(1 + 6*x)) / (1 + 6*x).

The programs for A351187, there is no canonical definition to state claims against.
-/

/-! ## A351187.P15229792208044844833

`(A351152(n)-A351161(n))*A033999(n)`
-/

namespace A351187.P15229792208044844833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A351152 n - A351161 n) * A033999 n

end

end A351187.P15229792208044844833

/-!
# A351190: Number of polyominoes of n cells with both horizontal and vertical symmetries, for which the 180-degree rotational symmetry has an axis that coincides with the center of a square, but without 90-degree rotational symmetry.

The programs for A351190, there is no canonical definition to state claims against.
-/

/-! ## A351190.P10327999581205978243

`A001222(A115033(n+1))-A193921(n)`
-/

namespace A351190.P10327999581205978243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A115033 (n + 1)).toNat - A193921 n

end

end A351190.P10327999581205978243

/-! ## A351190.P5145280849035633200

`A151843(2*(n+1))+A151843(A318052(n+1))`
-/

namespace A351190.P5145280849035633200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 (2 * (n + 1)) + A151843 (A318052 (n + 1)).toNat

end

end A351190.P5145280849035633200

/-!
# A351191: Number of polyominoes of 4n cells with both horizontal and vertical symmetries, for which the 180-degree rotational symmetry has an axis that coincides with a vertex of a square of the underlying matrix, but without 90-degree rotational symmetry.

The programs for A351191, there is no canonical definition to state claims against.
-/

/-! ## A351191.P9567652965291349095

`A144553(n+1)+A056877(n+1)+2*A006747(n+1)+2*A006746(n+1)+4*A006749(n+1)+A006748(n+1)`
-/

namespace A351191.P9567652965291349095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144553 (n + 1) + A056877 (n + 1) + 2 * A006747 (n + 1) + 2 * A006746 (n + 1) + 4 * A006749 (n + 1) + A006748 (n + 1)

end

end A351191.P9567652965291349095

/-! ## A351191.P8941104896470942523

`A151525(n+1)-A030227(n+1)`
-/

namespace A351191.P8941104896470942523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151525 (n + 1) - A030227 (n + 1)

end

end A351191.P8941104896470942523

/-! ## A351191.P15929424862931062258

`A001168(n+1)-A182645(n+1)`
-/

namespace A351191.P15929424862931062258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (n + 1) - A182645 (n + 1)

end

end A351191.P15929424862931062258

/-! ## A351191.P4390352825869533359

`A182645(n+1)-A346800(n+1)`
-/

namespace A351191.P4390352825869533359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182645 (n + 1) - A346800 (n + 1)

end

end A351191.P4390352825869533359

/-! ## A351191.P1829453276625169430

`A056780(n+1)+A349329(n+1)-A056783(n+1)`
-/

namespace A351191.P1829453276625169430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056780 (n + 1) + (A349329 (n + 1) - A056783 (n + 1))

end

end A351191.P1829453276625169430

/-! ## A351191.P8597351944837222260

`A151525(n+1)+A349329(n+1)-A182645(n+1)`
-/

namespace A351191.P8597351944837222260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151525 (n + 1) + (A349329 (n + 1) - A182645 (n + 1))

end

end A351191.P8597351944837222260

/-!
# A351192: Irregular table of positive integers read by rows; the n-th row contains a(n) 1's, a(n) 2's, ..., a(n) n's, in that order.

The programs for A351192, there is no canonical definition to state claims against.
-/

/-! ## A351192.P9408467716031739773

`A194920(A255250(A194920(A036698(n+2))))`
-/

namespace A351192.P9408467716031739773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A255250 (A194920 (A036698 (n + 2)).toNat).toNat).toNat

end

end A351192.P9408467716031739773

/-! ## A351192.P3753795204006702652

`A001221(A348378(n+1)+A045931(n))`
-/

namespace A351192.P3753795204006702652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A348378 (n + 1) + A045931 n).toNat

end

end A351192.P3753795204006702652

/-! ## A351192.P18348949922997091824

`A001221(A320743(n+1)+∑[n+5]+6)`
-/

namespace A351192.P18348949922997091824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A320743 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 6 : ℕ) : ℤ)).toNat

end

end A351192.P18348949922997091824

/-! ## A351192.P8406276148556463195

`A001221(A054127(n+1)+A051279(n+1))`
-/

namespace A351192.P8406276148556463195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A054127 (n + 1) + A051279 (n + 1)).toNat

end

end A351192.P8406276148556463195

/-! ## A351192.P1113578348814301319

`A007814((A250665(n+1)+1)*A313778(n))`
-/

namespace A351192.P1113578348814301319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 ((A250665 (n + 1) + 1) * A313778 n).toNat

end

end A351192.P1113578348814301319

/-!
# A351193: Sum of the 5th powers of primes dividing n.

The programs for A351193, the canonical program `A351193.P3720049414966918744` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351193 has offset 1).

The definition of A351193 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351193.P3720049414966918744

`∑{p}[n+1, #^5]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A351193

/-- `∑{p}[n+1, #^5]` -/
def P3720049414966918744.Spec : Prop :=
  ∀ n, (P3720049414966918744.a n : ℤ) = A351193 (n + 1)

theorem P3720049414966918744.correct : P3720049414966918744.Spec := by
  intro n
  simp only [A351193, Nat.add_sub_cancel]

end A351193

/-! ## A351193.P14736568091679243943

`∑{d}[n+1, A061397(#)^5]`
-/

namespace A351193.P14736568091679243943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061397 d ^ 5

end

end A351193.P14736568091679243943

namespace A351193

/-- `∑{d}[n+1, A061397(#)^5]` -/
def P14736568091679243943.Spec : Prop :=
  ∀ n, P14736568091679243943.a n = A351193 (n + 1)

end A351193

/-! ## A351193.P240823673541782906

`∑{p}[n+1, -#*A000583(#)]/(1-4/2)`
-/

namespace A351193.P240823673541782906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), (-((p : ℤ) * A000583 p)) : ℤ) : ℚ) / (1 - (4 : ℚ) / 2)

end

end A351193.P240823673541782906

namespace A351193

/-- `∑{p}[n+1, -#*A000583(#)]/(1-4/2)` -/
def P240823673541782906.Spec : Prop :=
  ∀ n, P240823673541782906.a n = (A351193 (n + 1) : ℚ)

end A351193

/-! ## A351193.P10972265118544852579

`∑{p}[n+1, -#*A000583(#)]*A057428(n)`
-/

namespace A351193.P10972265118544852579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), (-((p : ℤ) * A000583 p))) * A057428 n

end

end A351193.P10972265118544852579

namespace A351193

/-- `∑{p}[n+1, -#*A000583(#)]*A057428(n)` -/
def P10972265118544852579.Spec : Prop :=
  ∀ n, P10972265118544852579.a n = A351193 (n + 1)

end A351193

/-! ## A351193.P12747502972177366951

`A008475(∏{p}[n+1, #]^5)`
-/

namespace A351193.P12747502972177366951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ 5)

end

end A351193.P12747502972177366951

namespace A351193

/-- `A008475(∏{p}[n+1, #]^5)` -/
def P12747502972177366951.Spec : Prop :=
  ∀ n, P12747502972177366951.a n = A351193 (n + 1)

end A351193

/-!
# A351194: Sum of the 6th powers of the primes dividing n.

The programs for A351194, the canonical program `A351194.P11195750266091954366` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351194 has offset 1).

The definition of A351194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351194.P11195750266091954366

`∑{p}[n+1, #^6]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A351194

/-- `∑{p}[n+1, #^6]` -/
def P11195750266091954366.Spec : Prop :=
  ∀ n, (P11195750266091954366.a n : ℤ) = A351194 (n + 1)

theorem P11195750266091954366.correct : P11195750266091954366.Spec := by
  intro n
  simp only [A351194, Nat.add_sub_cancel]

end A351194

/-! ## A351194.P2898975652370012715

`floor(∑{p}[n+1, root(#, 1/6)])`
-/

namespace A351194.P2898975652370012715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), (p : ℝ) ^ (1 / ((1 : ℚ) / 6 : ℝ))⌋

end

end A351194.P2898975652370012715

namespace A351194

/-- `floor(∑{p}[n+1, root(#, 1/6)])` -/
def P2898975652370012715.Spec : Prop :=
  ∀ n, P2898975652370012715.a n = A351194 (n + 1)

end A351194

/-! ## A351194.P14069140813540362217

`ceil(∑{p}[n+1, root(#, 1/6)])`
-/

namespace A351194.P14069140813540362217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ p ∈ Nat.primeFactors (f1 n), (p : ℝ) ^ (1 / ((1 : ℚ) / 6 : ℝ))⌉

end

end A351194.P14069140813540362217

namespace A351194

/-- `ceil(∑{p}[n+1, root(#, 1/6)])` -/
def P14069140813540362217.Spec : Prop :=
  ∀ n, P14069140813540362217.a n = A351194 (n + 1)

end A351194

/-! ## A351194.P10790968857090684665

`round(∑{p}[n+1, root(#, 1/6)])`
-/

namespace A351194.P10790968857090684665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (p : ℝ) ^ (1 / ((1 : ℚ) / 6 : ℝ)))

end

end A351194.P10790968857090684665

namespace A351194

/-- `round(∑{p}[n+1, root(#, 1/6)])` -/
def P10790968857090684665.Spec : Prop :=
  ∀ n, P10790968857090684665.a n = A351194 (n + 1)

end A351194

/-! ## A351194.P8933634629257582720

`A000038(n+1)+∑{p}[n+1, root(#, 1/6)]`
-/

namespace A351194.P8933634629257582720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000038 (n + 1) : ℝ) + ∑ p ∈ Nat.primeFactors (f1 n), (p : ℝ) ^ (1 / ((1 : ℚ) / 6 : ℝ))

end

end A351194.P8933634629257582720

namespace A351194

/-- `A000038(n+1)+∑{p}[n+1, root(#, 1/6)]` -/
def P8933634629257582720.Spec : Prop :=
  ∀ n, P8933634629257582720.a n = (A351194 (n + 1) : ℝ)

end A351194

/-!
# A351195: Sum of the 7th powers of the primes dividing n.

The programs for A351195, the canonical program `A351195.P9206251905910766891` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351195 has offset 1).

The definition of A351195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351195.P9206251905910766891

`∑{p}[n+1, #^7]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A351195

/-- `∑{p}[n+1, #^7]` -/
def P9206251905910766891.Spec : Prop :=
  ∀ n, (P9206251905910766891.a n : ℤ) = A351195 (n + 1)

theorem P9206251905910766891.correct : P9206251905910766891.Spec := by
  intro n
  simp only [A351195, Nat.add_sub_cancel]

end A351195

/-!
# A351196: Sum of the 8th powers of the primes dividing n.

The programs for A351196, the canonical program `A351196.P7691079565928141631` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351196 has offset 1).

The definition of A351196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351196.P7691079565928141631

`∑{p}[n+1, #^8]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A351196

/-- `∑{p}[n+1, #^8]` -/
def P7691079565928141631.Spec : Prop :=
  ∀ n, (P7691079565928141631.a n : ℤ) = A351196 (n + 1)

theorem P7691079565928141631.correct : P7691079565928141631.Spec := by
  intro n
  simp only [A351196, Nat.add_sub_cancel]

end A351196

/-! ## A351196.P3484650642593524901

`∑{d}[n+1, (#%A014963(#)²)²²²]`
-/

namespace A351196.P3484650642593524901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((Int.tmod (d : ℤ) (A014963 d ^ 2) ^ 2) ^ 2) ^ 2

end

end A351196.P3484650642593524901

namespace A351196

/-- `∑{d}[n+1, (#%A014963(#)²)²²²]` -/
def P3484650642593524901.Spec : Prop :=
  ∀ n, P3484650642593524901.a n = A351196 (n + 1)

end A351196

/-! ## A351196.P17677713096637392240

`A081403(∏{p}[n+1, #]^4)`
-/

namespace A351196.P17677713096637392240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081403 ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ 4)

end

end A351196.P17677713096637392240

namespace A351196

/-- `A081403(∏{p}[n+1, #]^4)` -/
def P17677713096637392240.Spec : Prop :=
  ∀ n, P17677713096637392240.a n = A351196 (n + 1)

end A351196

/-! ## A351196.P10734295864393776073

`A081403(∏{p}[n+1, #²]²)`
-/

namespace A351196.P10734295864393776073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081403 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ 2) ^ 2)

end

end A351196.P10734295864393776073

namespace A351196

/-- `A081403(∏{p}[n+1, #²]²)` -/
def P10734295864393776073.Spec : Prop :=
  ∀ n, P10734295864393776073.a n = A351196 (n + 1)

end A351196

/-! ## A351196.P17872585192749458626

`A081403(A053167(n+1))`
-/

namespace A351196.P17872585192749458626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081403 (A053167 (n + 1)).toNat

end

end A351196.P17872585192749458626

namespace A351196

/-- `A081403(A053167(n+1))` -/
def P17872585192749458626.Spec : Prop :=
  ∀ n, P17872585192749458626.a n = A351196 (n + 1)

end A351196

/-!
# A351197: Sum of the 9th powers of the primes dividing n.

The programs for A351197, the canonical program `A351197.P15619824658584377279` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351197 has offset 1).

The definition of A351197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351197.P15619824658584377279

`∑{p}[n+1, #^9]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A351197

/-- `∑{p}[n+1, #^9]` -/
def P15619824658584377279.Spec : Prop :=
  ∀ n, (P15619824658584377279.a n : ℤ) = A351197 (n + 1)

theorem P15619824658584377279.correct : P15619824658584377279.Spec := by
  intro n
  simp only [A351197, Nat.add_sub_cancel]

end A351197

/-! ## A351197.P5076772350662584527

`floor(∑{p}[n+1, root(root(#, 1/3), 1/3)])`
-/

namespace A351197.P5076772350662584527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), ((p : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))) ^ (1 / ((1 : ℚ) / 3 : ℝ))⌋

end

end A351197.P5076772350662584527

namespace A351197

/-- `floor(∑{p}[n+1, root(root(#, 1/3), 1/3)])` -/
def P5076772350662584527.Spec : Prop :=
  ∀ n, P5076772350662584527.a n = A351197 (n + 1)

end A351197

/-! ## A351197.P9492686181033308648

`∑{d}[n+1, (#%A014963(#)²)^9]`
-/

namespace A351197.P9492686181033308648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (d : ℤ) (A014963 d ^ 2) ^ 9

end

end A351197.P9492686181033308648

namespace A351197

/-- `∑{d}[n+1, (#%A014963(#)²)^9]` -/
def P9492686181033308648.Spec : Prop :=
  ∀ n, P9492686181033308648.a n = A351197 (n + 1)

end A351197

/-!
# A351198: Sum of the 10th powers of the primes dividing n.

The programs for A351198, the canonical program `A351198.P6912218116575757260` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351198 has offset 1).

The definition of A351198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351198.P6912218116575757260

`∑{p}[n+1, #^10]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A351198

/-- `∑{p}[n+1, #^10]` -/
def P6912218116575757260.Spec : Prop :=
  ∀ n, (P6912218116575757260.a n : ℤ) = A351198 (n + 1)

theorem P6912218116575757260.correct : P6912218116575757260.Spec := by
  intro n
  simp only [A351198, Nat.add_sub_cancel]

end A351198

/-! ## A351198.P8729879405602655332

`floor(∑{p}[n+1, root(#, 1/10)])`
-/

namespace A351198.P8729879405602655332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), (p : ℝ) ^ (1 / ((1 : ℚ) / 10 : ℝ))⌋

end

end A351198.P8729879405602655332

namespace A351198

/-- `floor(∑{p}[n+1, root(#, 1/10)])` -/
def P8729879405602655332.Spec : Prop :=
  ∀ n, P8729879405602655332.a n = A351198 (n + 1)

end A351198

/-! ## A351198.P15629363525572244397

`ceil(∑{p}[n+1, root(#, 1/10)])`
-/

namespace A351198.P15629363525572244397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ p ∈ Nat.primeFactors (f1 n), (p : ℝ) ^ (1 / ((1 : ℚ) / 10 : ℝ))⌉

end

end A351198.P15629363525572244397

namespace A351198

/-- `ceil(∑{p}[n+1, root(#, 1/10)])` -/
def P15629363525572244397.Spec : Prop :=
  ∀ n, P15629363525572244397.a n = A351198 (n + 1)

end A351198

/-! ## A351198.P11088088617777738485

`round(∑{p}[n+1, root(#, 1/10)])`
-/

namespace A351198.P11088088617777738485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (p : ℝ) ^ (1 / ((1 : ℚ) / 10 : ℝ)))

end

end A351198.P11088088617777738485

namespace A351198

/-- `round(∑{p}[n+1, root(#, 1/10)])` -/
def P11088088617777738485.Spec : Prop :=
  ∀ n, P11088088617777738485.a n = A351198 (n + 1)

end A351198

/-! ## A351198.P16542712034306185678

`A004013(n²+1)+∑{p}[n+1, root(#, 1/10)]`
-/

namespace A351198.P16542712034306185678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A004013 (n ^ 2 + 1) : ℝ) + ∑ p ∈ Nat.primeFactors (f1 n), (p : ℝ) ^ (1 / ((1 : ℚ) / 10 : ℝ))

end

end A351198.P16542712034306185678

namespace A351198

/-- `A004013(n²+1)+∑{p}[n+1, root(#, 1/10)]` -/
def P16542712034306185678.Spec : Prop :=
  ∀ n, P16542712034306185678.a n = (A351198 (n + 1) : ℝ)

end A351198

