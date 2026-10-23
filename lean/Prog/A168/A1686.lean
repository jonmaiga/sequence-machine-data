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
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A168602: G.f. satisfies: A(x) = 1 + x*A(x)^2*A(2x).

The programs for A168602, there is no canonical definition to state claims against.
-/

/-! ## A168602.P16545010739253269367

`A343609((n+1)^(n+1))+1`
-/

namespace A168602.P16545010739253269367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 ((n + 1) ^ (n + 1)) + 1

end

end A168602.P16545010739253269367

/-!
# A168603: G.f. satisfies: A(x) = 1 + x*A(x)^2*A(2x)^2.

The programs for A168603, there is no canonical definition to state claims against.
-/

/-! ## A168603.P12631038936362683425

`A337547(xor(n²%3+n*(n-2), xor(2, 3*(n²+1))))`
-/

namespace A168603.P12631038936362683425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337547 (Int.xor (((n ^ 2 % 3 : ℕ) : ℤ) + (n : ℤ) * ((n : ℤ) - 2)) (Nat.xor 2 (3 * (n ^ 2 + 1)) : ℤ)).toNat

end

end A168603.P12631038936362683425

/-!
# A168605: Number of ways of partitioning the multiset {1,1,1,2,3,...,n-2} into exactly three nonempty parts.

The programs for A168605, the canonical program `A168605.P10582771874557208871` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168605 has offset 3).

The definition of A168605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168605.P7207065926272583036

`a(n-1)/cot(atan(3))+2^n-2` with `a(0)=1, a(1)=2`
-/

namespace A168605.P7207065926272583036
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) / Real.cot (Real.arctan (3 : ℝ)) + ((2 ^ n : ℤ) - 2 : ℝ)

end

end A168605.P7207065926272583036

namespace A168605

/-- `a(n-1)/cot(atan(3))+2^n-2` -/
def P7207065926272583036.Spec : Prop :=
  ∀ n, P7207065926272583036.a n = (A168605 (n + 3) : ℝ)

end A168605

/-! ## A168605.P10582771874557208871

`∑[3^n-2^n]+ceil(∑[3^(n-2)])`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168605

/-- `∑[3^n-2^n]+ceil(∑[3^(n-2)])` -/
def P10582771874557208871.Spec : Prop :=
  ∀ n, P10582771874557208871.a n = A168605 (n + 3)

theorem P10582771874557208871.correct : P10582771874557208871.Spec := by
  intro n
  simp only [A168605, Nat.add_sub_cancel]

end A168605

/-! ## A168605.P1480968924372798104

`abs(2^n-1-A084171(n))`
-/

namespace A168605.P1480968924372798104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - 1 - A084171 n|

end

end A168605.P1480968924372798104

namespace A168605

/-- `abs(2^n-1-A084171(n))` -/
def P1480968924372798104.Spec : Prop :=
  ∀ n, P1480968924372798104.a n = A168605 (n + 3)

end A168605

/-! ## A168605.P3035396446932621413

`abs(A028243(n+1)+Δ[floor(3^(n-1))])`
-/

namespace A168605.P3035396446932621413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A028243 (n + 1) + (f1 (n + 1) - f1 n)|

end

end A168605.P3035396446932621413

namespace A168605

/-- `abs(A028243(n+1)+Δ[floor(3^(n-1))])` -/
def P3035396446932621413.Spec : Prop :=
  ∀ n, P3035396446932621413.a n = A168605 (n + 3)

end A168605

/-! ## A168605.P2550463751264691659

`abs(A052919(n)+A003063(n+1))`
-/

namespace A168605.P2550463751264691659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A052919 n + A003063 (n + 1)|

end

end A168605.P2550463751264691659

namespace A168605

/-- `abs(A052919(n)+A003063(n+1))` -/
def P2550463751264691659.Spec : Prop :=
  ∀ n, P2550463751264691659.a n = A168605 (n + 3)

end A168605

/-! ## A168605.P18293269912802447991

`floor(A025192(n)+2/3*A094033(n+1))`
-/

namespace A168605.P18293269912802447991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025192 n : ℚ) + (2 : ℚ) / 3 * (A094033 (n + 1) : ℚ)⌋

end

end A168605.P18293269912802447991

namespace A168605

/-- `floor(A025192(n)+2/3*A094033(n+1))` -/
def P18293269912802447991.Spec : Prop :=
  ∀ n, P18293269912802447991.a n = A168605 (n + 3)

end A168605

/-! ## A168605.P5282951099556508025

`floor(A025192(n)+A260217(n+1)/2)`
-/

namespace A168605.P5282951099556508025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025192 n : ℚ) + (A260217 (n + 1) : ℚ) / 2⌋

end

end A168605.P5282951099556508025

namespace A168605

/-- `floor(A025192(n)+A260217(n+1)/2)` -/
def P5282951099556508025.Spec : Prop :=
  ∀ n, P5282951099556508025.a n = A168605 (n + 3)

end A168605

/-! ## A168605.P16858625894915843477

`floor(A025192(n)+A001117(n+1)/3)`
-/

namespace A168605.P16858625894915843477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025192 n : ℚ) + (A001117 (n + 1) : ℚ) / 3⌋

end

end A168605.P16858625894915843477

namespace A168605

/-- `floor(A025192(n)+A001117(n+1)/3)` -/
def P16858625894915843477.Spec : Prop :=
  ∀ n, P16858625894915843477.a n = A168605 (n + 3)

end A168605

/-! ## A168605.P14298624713406701436

`floor(A025192(n)+A056454(Δ[n²])/3)`
-/

namespace A168605.P14298624713406701436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025192 n : ℚ) + (A056454 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3⌋

end

end A168605.P14298624713406701436

namespace A168605

/-- `floor(A025192(n)+A056454(Δ[n²])/3)` -/
def P14298624713406701436.Spec : Prop :=
  ∀ n, P14298624713406701436.a n = A168605 (n + 3)

end A168605

/-! ## A168605.P10662476724239999633

`floor(A025192(n)+A056489(Δ[n²])/3)`
-/

namespace A168605.P10662476724239999633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025192 n : ℚ) + (A056489 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3⌋

end

end A168605.P10662476724239999633

namespace A168605

/-- `floor(A025192(n)+A056489(Δ[n²])/3)` -/
def P10662476724239999633.Spec : Prop :=
  ∀ n, P10662476724239999633.a n = A168605 (n + 3)

end A168605

/-! ## A168605.P2767082424209066417

`floor(A025192(n)+(A094729(n+1)-1)/3)`
-/

namespace A168605.P2767082424209066417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025192 n : ℚ) + (A094729 (n + 1) - 1 : ℚ) / 3⌋

end

end A168605.P2767082424209066417

namespace A168605

/-- `floor(A025192(n)+(A094729(n+1)-1)/3)` -/
def P2767082424209066417.Spec : Prop :=
  ∀ n, P2767082424209066417.a n = A168605 (n + 3)

end A168605

/-! ## A168605.P7466537215529241306

`floor(A025192(n)+(A214091(n)+A168607(n))/2)`
-/

namespace A168605.P7466537215529241306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025192 n : ℚ) + (A214091 n + A168607 n : ℚ) / 2⌋

end

end A168605.P7466537215529241306

namespace A168605

/-- `floor(A025192(n)+(A214091(n)+A168607(n))/2)` -/
def P7466537215529241306.Spec : Prop :=
  ∀ n, P7466537215529241306.a n = A168605 (n + 3)

end A168605

/-!
# A168606: The number of ways of partitioning the multiset {1,1,1,2,3,...,n-2} into exactly four nonempty parts.

The programs for A168606, the canonical program `A168606.P14181881431910043120` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168606 has offset 4).

The definition of A168606 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168606.P14181881431910043120

`(10*4^n-5*3^(n+1)+9*2^n-1)/3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168606

/-- `(10*4^n-5*3^(n+1)+9*2^n-1)/3` -/
def P14181881431910043120.Spec : Prop :=
  ∀ n, P14181881431910043120.a n = (A168606 (n + 4) : ℚ)

end A168606

/-! ## A168606.P18443794278852220253

`A291117(∑[n+3]+5)`
-/

namespace A168606.P18443794278852220253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291117 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A168606.P18443794278852220253

namespace A168606

/-- `A291117(∑[n+3]+5)` -/
def P18443794278852220253.Spec : Prop :=
  ∀ n, P18443794278852220253.a n = A168606 (n + 4)

end A168606

/-!
# A168607: a(n) = 3^n + 2.

The programs for A168607, the canonical program `A168607.P9034026260611557504` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168607 has offset 0).

The definition of A168607 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+2` (program `A168607.P9034026260611557504`, by `A168607.P9034026260611557504.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168607.P9034026260611557504

`3^n+2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168607

/-- `3^n+2` -/
def P9034026260611557504.Spec : Prop :=
  ∀ n, (P9034026260611557504.a n : ℤ) = A168607 n

theorem P9034026260611557504.correct : P9034026260611557504.Spec := by
  intro n
  simp only [A168607]

end A168607

/-!
# A168608: Decimal expansion of average of two-digit primes.

The programs for A168608, the canonical program `A168608.P3046429521550388848` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168608 has offset 2).

The definition of A168608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168608.P3046429521550388848

`a(n-1)` with `a(0)=4, a(1)=9, a(2)=6`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168608

/-- `a(n-1)` -/
def P3046429521550388848.Spec : Prop :=
  ∀ n, (P3046429521550388848.a n : ℤ) = A168608 (n + 2)

theorem P3046429521550388848.correct : P3046429521550388848.Spec := by
  intro n
  simp only [A168608, Nat.add_sub_cancel]

end A168608

/-!
# A168609: a(n) = 3^n + 4.

The programs for A168609, the canonical program `A168609.P6835026739238797975` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168609 has offset 0).

The definition of A168609 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+4` (program `A168609.P6835026739238797975`, by `A168609.P6835026739238797975.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168609.P6835026739238797975

`3^n+4`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168609

/-- `3^n+4` -/
def P6835026739238797975.Spec : Prop :=
  ∀ n, (P6835026739238797975.a n : ℤ) = A168609 n

theorem P6835026739238797975.correct : P6835026739238797975.Spec := by
  intro n
  simp only [A168609]

end A168609

/-!
# A168610: a(n) = 3^n + 5.

The programs for A168610, the canonical program `A168610.P14704023943450790163` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168610 has offset 0).

The definition of A168610 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+5` (program `A168610.P14704023943450790163`, by `A168610.P14704023943450790163.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168610.P14704023943450790163

`3^n+5`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168610

/-- `3^n+5` -/
def P14704023943450790163.Spec : Prop :=
  ∀ n, (P14704023943450790163.a n : ℤ) = A168610 n

theorem P14704023943450790163.correct : P14704023943450790163.Spec := by
  intro n
  simp only [A168610]

end A168610

/-!
# A168611: a(n) = 3^n - 4.

The programs for A168611, the canonical program `A168611.P3246960888346736715` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168611 has offset 0).

The definition of A168611 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-4` (program `A168611.P3246960888346736715`, by `A168611.P3246960888346736715.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168611.P3246960888346736715

`3^n-4`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168611

/-- `3^n-4` -/
def P3246960888346736715.Spec : Prop :=
  ∀ n, P3246960888346736715.a n = A168611 n

theorem P3246960888346736715.correct : P3246960888346736715.Spec := by
  intro n
  simp only [A168611]

end A168611

/-!
# A168612: In binary starting with 1, prepend a 1 and as few 0's as required such that the new number is relatively prime to all previous in sequence. Thus binary 1, 11, 111, 10111, 110111, 100110111, 1100110111, 11100110111.

The programs for A168612, there is no canonical definition to state claims against.
-/

/-! ## A168612.P9811968298979418779

`or(a(n-1), A000051(A169612(n)))` with `a(0)=1`
-/

namespace A168612.P9811968298979418779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (a (n - 1)) (A000051 (A169612 n).toNat)

end

end A168612.P9811968298979418779

/-! ## A168612.P16145794309031080858

`∑[record[A057728(A322902(n+1))]]`
-/

namespace A168612.P16145794309031080858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (A322902 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168612.P16145794309031080858

/-! ## A168612.P10866779788182044189

`∑[record[A057728(A324769(n+1))]]`
-/

namespace A168612.P10866779788182044189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (A324769 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168612.P10866779788182044189

/-! ## A168612.P8545567394459729037

`∑[record[A057728(A326623(n+1))]]`
-/

namespace A168612.P8545567394459729037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (A326623 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168612.P8545567394459729037

/-! ## A168612.P2788943620350302826

`∑[A060791(2^A001481(n+1))]`
-/

namespace A168612.P2788943620350302826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A001481 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168612.P2788943620350302826

/-!
# A168613: a(n) = 3^n - 5.

The programs for A168613, the canonical program `A168613.P14074791163006525735` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168613 has offset 0).

The definition of A168613 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-5` (program `A168613.P14074791163006525735`, by `A168613.P14074791163006525735.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168613.P14074791163006525735

`3^n-5`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168613

/-- `3^n-5` -/
def P14074791163006525735.Spec : Prop :=
  ∀ n, P14074791163006525735.a n = A168613 n

theorem P14074791163006525735.correct : P14074791163006525735.Spec := by
  intro n
  simp only [A168613]

end A168613

/-!
# A168614: a(n) = 2^n + 5.

The programs for A168614, the canonical program `A168614.P8565637346810562881` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168614 has offset 0).

The definition of A168614 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+5` (program `A168614.P8565637346810562881`, by `A168614.P8565637346810562881.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168614.P8565637346810562881

`2^n+5`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168614

/-- `2^n+5` -/
def P8565637346810562881.Spec : Prop :=
  ∀ n, (P8565637346810562881.a n : ℤ) = A168614 n

theorem P8565637346810562881.correct : P8565637346810562881.Spec := by
  intro n
  simp only [A168614]

end A168614

/-!
# A168615: Inverse binomial transform of A169609, or of A144437 preceded by 1.

The programs for A168615, the canonical program `A168615.P24149378747454152` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168615 has offset 0).

The definition of A168615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 419 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168615.P5354280706339827161

`ogf((1+5x+7x^2)/(1+3x+3x^2))`
-/

namespace A168615.P5354280706339827161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 7] [1, 3, 3] n

end

end A168615.P5354280706339827161

namespace A168615

/-- `ogf((1+5x+7x^2)/(1+3x+3x^2))` -/
def P5354280706339827161.Spec : Prop :=
  ∀ n, P5354280706339827161.a n = A168615 n

end A168615

/-! ## A168615.P24149378747454152

`(A065164(n+1)-(n+1))*A103312(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A168615

/-- `(A065164(n+1)-(n+1))*A103312(n+1)` -/
def P24149378747454152.Spec : Prop :=
  ∀ n, P24149378747454152.a n = A168615 n

theorem P24149378747454152.correct : P24149378747454152.Spec := by
  intro n
  simp only [A168615]

end A168615

/-! ## A168615.P16969304384343607894

`A057681(n)*A084099(A004273(n))`
-/

namespace A168615.P16969304384343607894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 n * A084099 (A004273 n).toNat

end

end A168615.P16969304384343607894

namespace A168615

/-- `A057681(n)*A084099(A004273(n))` -/
def P16969304384343607894.Spec : Prop :=
  ∀ n, P16969304384343607894.a n = A168615 n

end A168615

/-! ## A168615.P17355731172430583432

`A057681(n)*A280560(A014681(n))`
-/

namespace A168615.P17355731172430583432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 n * A280560 (A014681 n).toNat

end

end A168615.P17355731172430583432

namespace A168615

/-- `A057681(n)*A280560(A014681(n))` -/
def P17355731172430583432.Spec : Prop :=
  ∀ n, P17355731172430583432.a n = A168615 n

end A168615

/-! ## A168615.P9764851149094658102

`A103312(n+1)*A280560(A014681(n))`
-/

namespace A168615.P9764851149094658102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103312 (n + 1) * A280560 (A014681 n).toNat

end

end A168615.P9764851149094658102

namespace A168615

/-- `A103312(n+1)*A280560(A014681(n))` -/
def P9764851149094658102.Spec : Prop :=
  ∀ n, P9764851149094658102.a n = A168615 n

end A168615

/-!
# A168616: a(n) = 2^n - 5.

The programs for A168616, the canonical program `A168616.P12817012548853144141` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168616 has offset 0).

The definition of A168616 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-5` (program `A168616.P12817012548853144141`, by `A168616.P12817012548853144141.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168616.P12817012548853144141

`2^n-5`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168616

/-- `2^n-5` -/
def P12817012548853144141.Spec : Prop :=
  ∀ n, P12817012548853144141.a n = A168616 n

theorem P12817012548853144141.correct : P12817012548853144141.Spec := by
  intro n
  simp only [A168616]

end A168616

/-!
# A168617: a(n) = 7*2^(n-1) - 2*n - 5.

The programs for A168617, the canonical program `A168617.P12875979842583124024` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168617 has offset 1).

The definition of A168617 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*2^n-2*(n+1)-5` (program `A168617.P12875979842583124024`, by `A168617.P12875979842583124024.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168617.P12875979842583124024

`7*2^n-2*(n+1)-5`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168617

/-- `7*2^n-2*(n+1)-5` -/
def P12875979842583124024.Spec : Prop :=
  ∀ n, P12875979842583124024.a n = A168617 (n + 1)

theorem P12875979842583124024.correct : P12875979842583124024.Spec := by
  intro n
  simp only [A168617, Nat.add_sub_cancel]

end A168617

/-! ## A168617.P6344570600276044719

`∑[ogf((5x-3x^2)/(1-3x+2x^2))]`
-/

namespace A168617.P6344570600276044719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, -3] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168617.P6344570600276044719

namespace A168617

/-- `∑[ogf((5x-3x^2)/(1-3x+2x^2))]` -/
def P6344570600276044719.Spec : Prop :=
  ∀ n, P6344570600276044719.a n = A168617 (n + 1)

end A168617

/-! ## A168617.P14647710445524474346

`ogf((5x-3x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A168617.P14647710445524474346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, -3] [1, -4, 5, -2] n

end

end A168617.P14647710445524474346

namespace A168617

/-- `ogf((5x-3x^2)/(1-4x+5x^2-2x^3))` -/
def P14647710445524474346.Spec : Prop :=
  ∀ n, P14647710445524474346.a n = A168617 (n + 1)

end A168617

/-! ## A168617.P17862033907742910910

`∑[2*(a(n-1)+1)]` with `a(0)=0, a(1)=5`
-/

namespace A168617.P17862033907742910910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  2 * (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168617.P17862033907742910910

namespace A168617

/-- `∑[2*(a(n-1)+1)]` -/
def P17862033907742910910.Spec : Prop :=
  ∀ n, (P17862033907742910910.a n : ℤ) = A168617 (n + 1)

end A168617

/-! ## A168617.P3909152411139958500

`∑[∑[2*a(n-1)]]` with `a(0)=0, a(1)=5, a(2)=7`
-/

namespace A168617.P3909152411139958500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 7] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168617.P3909152411139958500

namespace A168617

/-- `∑[∑[2*a(n-1)]]` -/
def P3909152411139958500.Spec : Prop :=
  ∀ n, (P3909152411139958500.a n : ℤ) = A168617 (n + 1)

end A168617

/-! ## A168617.P18035002692740483909

`∑[a(n-1)+a(n-1)+2]` with `a(0)=0, a(1)=5`
-/

namespace A168617.P18035002692740483909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168617.P18035002692740483909

namespace A168617

/-- `∑[a(n-1)+a(n-1)+2]` -/
def P18035002692740483909.Spec : Prop :=
  ∀ n, (P18035002692740483909.a n : ℤ) = A168617 (n + 1)

end A168617

/-! ## A168617.P16929576882507215682

`∑[A029746(2*n+1)-2]`
-/

namespace A168617.P16929576882507215682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 (2 * n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168617.P16929576882507215682

namespace A168617

/-- `∑[A029746(2*n+1)-2]` -/
def P16929576882507215682.Spec : Prop :=
  ∀ n, P16929576882507215682.a n = A168617 (n + 1)

end A168617

/-! ## A168617.P16813957481547992863

`∑[A029749(3*n+1)-2]`
-/

namespace A168617.P16813957481547992863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029749 (3 * n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168617.P16813957481547992863

namespace A168617

/-- `∑[A029749(3*n+1)-2]` -/
def P16813957481547992863.Spec : Prop :=
  ∀ n, P16813957481547992863.a n = A168617 (n + 1)

end A168617

/-! ## A168617.P10273188635049031461

`Δ[A131068(n)-n²]`
-/

namespace A168617.P10273188635049031461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131068 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168617.P10273188635049031461

namespace A168617

/-- `Δ[A131068(n)-n²]` -/
def P10273188635049031461.Spec : Prop :=
  ∀ n, P10273188635049031461.a n = A168617 (n + 1)

end A168617

/-! ## A168617.P17457141275474131945

`Δ[A005009(n)-(n+3)²]`
-/

namespace A168617.P17457141275474131945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005009 n - ((n + 3) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168617.P17457141275474131945

namespace A168617

/-- `Δ[A005009(n)-(n+3)²]` -/
def P17457141275474131945.Spec : Prop :=
  ∀ n, P17457141275474131945.a n = A168617 (n + 1)

end A168617

/-! ## A168617.P5007783441487808294

`Δ[A083686(n)-(n+3)²]`
-/

namespace A168617.P5007783441487808294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083686 n - ((n + 3) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168617.P5007783441487808294

namespace A168617

/-- `Δ[A083686(n)-(n+3)²]` -/
def P5007783441487808294.Spec : Prop :=
  ∀ n, P5007783441487808294.a n = A168617 (n + 1)

end A168617

/-! ## A168617.P15954301973326940346

`Δ[A164285(n)-(n+3)²]`
-/

namespace A168617.P15954301973326940346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164285 n - ((n + 3) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168617.P15954301973326940346

namespace A168617

/-- `Δ[A164285(n)-(n+3)²]` -/
def P15954301973326940346.Spec : Prop :=
  ∀ n, P15954301973326940346.a n = A168617 (n + 1)

end A168617

/-!
# A168618: Numbers n such that 17*n-1, 17*n+1 are twin primes.

The programs for A168618, there is no canonical definition to state claims against.
-/

/-! ## A168618.P10974732488145437308

`eq[1, A325142(17*n)]`
-/

namespace A168618.P10974732488145437308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (17 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A168618.P10974732488145437308

/-! ## A168618.P11724327193710378968

`eq[A002126(A215137(n)), A040005(n)]`
-/

namespace A168618.P11724327193710378968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (A215137 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A168618.P11724327193710378968

/-!
# A168619: Triangle T(n,k) read by rows with the coefficient [x^k] of the polynomial (x+1)^n + (2*n-3) *( (x+1)^n -x^n -1 ) in column k, row n.

The programs for A168619, there is no canonical definition to state claims against.
-/

/-! ## A168619.P16926399720859178481

`A004275(A318274(n))*A007318(n)`
-/

namespace A168619.P16926399720859178481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A318274 n).toNat * A007318 n

end

end A168619.P16926399720859178481

/-! ## A168619.P7307722487537623555

`A070940(A154221(n))*A132046(n)`
-/

namespace A168619.P7307722487537623555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (A154221 n).toNat * A132046 n

end

end A168619.P7307722487537623555

/-! ## A168619.P14550963552264147825

`A130762(A173881(n))`
-/

namespace A168619.P14550963552264147825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130762 (A173881 n).toNat

end

end A168619.P14550963552264147825

/-! ## A168619.P2773743195150008423

`A103634(A049207(n)+2)`
-/

namespace A168619.P2773743195150008423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103634 (A049207 n + 2).toNat

end

end A168619.P2773743195150008423

/-! ## A168619.P13649102871550599783

`A073424(A142460(n+1))+A049207(n)`
-/

namespace A168619.P13649102871550599783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A142460 (n + 1)).toNat + A049207 n

end

end A168619.P13649102871550599783

/-!
# A168620: Table T(n,k) with the coefficient [x^k] of the polynomial 5*(x+1)^n - 4*(x^n+1) in column 0<=k<=n. T(0,0)=1.

The programs for A168620, there is no canonical definition to state claims against.
-/

/-! ## A168620.P4911639886512833284

`A131113(n-char[∑[n+1]])`
-/

namespace A168620.P4911639886512833284
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131113 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A168620.P4911639886512833284

/-! ## A168620.P12196044147997991363

`(2-char[∑[n]])^log2(A131113(n))`
-/

namespace A168620.P12196044147997991363
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℝ) ^ (Real.logb 2 (A131113 n : ℝ))

end

end A168620.P12196044147997991363

/-! ## A168620.P17715158820483167265

`A005451(A131113(n))`
-/

namespace A168620.P17715158820483167265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A131113 n).toNat

end

end A168620.P17715158820483167265

/-! ## A168620.P962644473289395398

`A005451(A134061(n))`
-/

namespace A168620.P962644473289395398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A134061 n).toNat

end

end A168620.P962644473289395398

/-! ## A168620.P3842753579359562699

`A005451(A135089(n))`
-/

namespace A168620.P3842753579359562699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A135089 n).toNat

end

end A168620.P3842753579359562699

/-! ## A168620.P4644322320860212457

`A195140(A132046(n))`
-/

namespace A168620.P4644322320860212457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 (A132046 n).toNat

end

end A168620.P4644322320860212457

/-! ## A168620.P15920540252742979337

`A233511(A168622(n))`
-/

namespace A168620.P15920540252742979337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233511 (A168622 n).toNat

end

end A168620.P15920540252742979337

/-! ## A168620.P11898017433138565341

`A321232(A168623(n))`
-/

namespace A168620.P11898017433138565341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321232 (A168623 n).toNat

end

end A168620.P11898017433138565341

/-! ## A168620.P14202260881208983015

`A005451(5*A007318(n))`
-/

namespace A168620.P14202260881208983015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (5 * A007318 n).toNat

end

end A168620.P14202260881208983015

/-! ## A168620.P15744715879276657833

`A288469(5*A007318(n))`
-/

namespace A168620.P15744715879276657833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (5 * A007318 n).toNat

end

end A168620.P15744715879276657833

/-!
# A168622: Triangle read by rows: T(n, k) = [x^k]( 7*(1+x)^n - 6*(1+x^n) ) with T(0, 0) = 1.

The programs for A168622, the canonical program `A168622.P8181968410197994122` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168622 has offset 0).

The definition of A168622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168622.P268273735227455119

`A131115(n-char[∑[n+1]])`
-/

namespace A168622.P268273735227455119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131115 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A168622.P268273735227455119

namespace A168622

/-- `A131115(n-char[∑[n+1]])` -/
def P268273735227455119.Spec : Prop :=
  ∀ n, P268273735227455119.a n = A168622 n

end A168622

/-! ## A168622.P92521435590022972

`(2-char[∑[n]])^log2(A131115(n))`
-/

namespace A168622.P92521435590022972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℝ) ^ (Real.logb 2 (A131115 n : ℝ))

end

end A168622.P92521435590022972

namespace A168622

/-- `(2-char[∑[n]])^log2(A131115(n))` -/
def P92521435590022972.Spec : Prop :=
  ∀ n, P92521435590022972.a n = (A168622 n : ℝ)

end A168622

/-! ## A168622.P8181968410197994122

`gcd(A013614(n), A131115(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A168622

/-- `gcd(A013614(n), A131115(n))` -/
def P8181968410197994122.Spec : Prop :=
  ∀ n, (P8181968410197994122.a n : ℤ) = A168622 n

theorem P8181968410197994122.correct : P8181968410197994122.Spec := by
  intro n
  simp only [A168622]

end A168622

/-! ## A168622.P513699262878395847

`A131115(n)%A085483(n+1)`
-/

namespace A168622.P513699262878395847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131115 n) (A085483 (n + 1))

end

end A168622.P513699262878395847

namespace A168622

/-- `A131115(n)%A085483(n+1)` -/
def P513699262878395847.Spec : Prop :=
  ∀ n, P513699262878395847.a n = A168622 n

end A168622

/-! ## A168622.P3548904084171811138

`A131115(n)%A006094(A080851(n))`
-/

namespace A168622.P3548904084171811138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131115 n) (A006094 (A080851 n).toNat)

end

end A168622.P3548904084171811138

namespace A168622

/-- `A131115(n)%A006094(A080851(n))` -/
def P3548904084171811138.Spec : Prop :=
  ∀ n, P3548904084171811138.a n = A168622 n

end A168622

/-! ## A168622.P3265927330948228166

`A026474(A173740(n)+1)-1`
-/

namespace A168622.P3265927330948228166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026474 (A173740 n + 1).toNat - 1

end

end A168622.P3265927330948228166

namespace A168622

/-- `A026474(A173740(n)+1)-1` -/
def P3265927330948228166.Spec : Prop :=
  ∀ n, P3265927330948228166.a n = A168622 n

end A168622

/-! ## A168622.P7043131837748598715

`A030123(A132046(n))`
-/

namespace A168622.P7043131837748598715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030123 (A132046 n).toNat

end

end A168622.P7043131837748598715

namespace A168622

/-- `A030123(A132046(n))` -/
def P7043131837748598715.Spec : Prop :=
  ∀ n, P7043131837748598715.a n = A168622 n

end A168622

/-! ## A168622.P18234630859850184934

`A082206(A132047(n))`
-/

namespace A168622.P18234630859850184934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082206 (A132047 n).toNat

end

end A168622.P18234630859850184934

namespace A168622

/-- `A082206(A132047(n))` -/
def P18234630859850184934.Spec : Prop :=
  ∀ n, P18234630859850184934.a n = A168622 n

end A168622

/-! ## A168622.P17420836200191238899

`A005451(A131115(n))`
-/

namespace A168622.P17420836200191238899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A131115 n).toNat

end

end A168622.P17420836200191238899

namespace A168622

/-- `A005451(A131115(n))` -/
def P17420836200191238899.Spec : Prop :=
  ∀ n, P17420836200191238899.a n = A168622 n

end A168622

/-! ## A168622.P13962870750302760434

`A005451(7*A007318(n))`
-/

namespace A168622.P13962870750302760434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (7 * A007318 n).toNat

end

end A168622.P13962870750302760434

namespace A168622

/-- `A005451(7*A007318(n))` -/
def P13962870750302760434.Spec : Prop :=
  ∀ n, P13962870750302760434.a n = A168622 n

end A168622

/-!
# A168623: Triangle read by rows: T(n, k) = [x^k]( 9*(1+x)^n - 8*(1 + x^n) ), with T(0, 0) = 1.

The programs for A168623, the canonical program `A168623.P11281898141141744744` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168623 has offset 0).

The definition of A168623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168623.P4650803322433015273

`A132047(n)²/A007318(n)`
-/

namespace A168623.P4650803322433015273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132047 n ^ 2 : ℚ) / (A007318 n : ℚ)

end

end A168623.P4650803322433015273

namespace A168623

/-- `A132047(n)²/A007318(n)` -/
def P4650803322433015273.Spec : Prop :=
  ∀ n, P4650803322433015273.a n = (A168623 n : ℚ)

end A168623

/-! ## A168623.P11281898141141744744

`gcd(9*A130595(n), A103452(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A168623

/-- `gcd(9*A130595(n), A103452(n))` -/
def P11281898141141744744.Spec : Prop :=
  ∀ n, (P11281898141141744744.a n : ℤ) = A168623 n

theorem P11281898141141744744.correct : P11281898141141744744.Spec := by
  intro n
  simp only [A168623]

end A168623

/-! ## A168623.P13972572025034469671

`A132047(n)²/(A014473(n)+1)`
-/

namespace A168623.P13972572025034469671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132047 n ^ 2 : ℚ) / (A014473 n + 1 : ℚ)

end

end A168623.P13972572025034469671

namespace A168623

/-- `A132047(n)²/(A014473(n)+1)` -/
def P13972572025034469671.Spec : Prop :=
  ∀ n, P13972572025034469671.a n = (A168623 n : ℚ)

end A168623

/-! ## A168623.P457554783638807235

`A195312(A132046(n))`
-/

namespace A168623.P457554783638807235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195312 (A132046 n).toNat

end

end A168623.P457554783638807235

namespace A168623

/-- `A195312(A132046(n))` -/
def P457554783638807235.Spec : Prop :=
  ∀ n, P457554783638807235.a n = A168623 n

end A168623

/-! ## A168623.P9420979985604536117

`A301291(A132737(n)-1)`
-/

namespace A168623.P9420979985604536117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 (A132737 n - 1).toNat

end

end A168623.P9420979985604536117

namespace A168623

/-- `A301291(A132737(n)-1)` -/
def P9420979985604536117.Spec : Prop :=
  ∀ n, P9420979985604536117.a n = A168623 n

end A168623

/-! ## A168623.P13875360466585746504

`A026614(A132047(n))`
-/

namespace A168623.P13875360466585746504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026614 (A132047 n).toNat

end

end A168623.P13875360466585746504

namespace A168623

/-- `A026614(A132047(n))` -/
def P13875360466585746504.Spec : Prop :=
  ∀ n, P13875360466585746504.a n = A168623 n

end A168623

/-! ## A168623.P12640235841010933562

`A074232(A168622(n))`
-/

namespace A168623.P12640235841010933562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (A168622 n).toNat

end

end A168623.P12640235841010933562

namespace A168623

/-- `A074232(A168622(n))` -/
def P12640235841010933562.Spec : Prop :=
  ∀ n, P12640235841010933562.a n = A168623 n

end A168623

/-! ## A168623.P3371031113913573506

`A288469(3*A132047(n))`
-/

namespace A168623.P3371031113913573506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (3 * A132047 n).toNat

end

end A168623.P3371031113913573506

namespace A168623

/-- `A288469(3*A132047(n))` -/
def P3371031113913573506.Spec : Prop :=
  ∀ n, P3371031113913573506.a n = A168623 n

end A168623

/-! ## A168623.P13766588647882395670

`A187318(A168620(n))`
-/

namespace A168623.P13766588647882395670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187318 (A168620 n).toNat

end

end A168623.P13766588647882395670

namespace A168623

/-- `A187318(A168620(n))` -/
def P13766588647882395670.Spec : Prop :=
  ∀ n, P13766588647882395670.a n = A168623 n

end A168623

/-! ## A168623.P2166096710801318137

`2*A168620(n)-A007318(n)`
-/

namespace A168623.P2166096710801318137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168620 n - A007318 n

end

end A168623.P2166096710801318137

namespace A168623

/-- `2*A168620(n)-A007318(n)` -/
def P2166096710801318137.Spec : Prop :=
  ∀ n, P2166096710801318137.a n = A168623 n

end A168623

/-!
# A168624: a(n) = 1 - 10^n + 100^n.

The programs for A168624, the canonical program `A168624.P8445427409779693472` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168624 has offset 0).

The definition of A168624 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-10^n+100^n` (program `A168624.P8445427409779693472`, by `A168624.P8445427409779693472.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168624.P8445427409779693472

`1-10^n+100^n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168624

/-- `1-10^n+100^n` -/
def P8445427409779693472.Spec : Prop :=
  ∀ n, P8445427409779693472.a n = A168624 n

theorem P8445427409779693472.correct : P8445427409779693472.Spec := by
  intro n
  simp only [A168624]

end A168624

/-! ## A168624.P15702921687040949960

`or(1, (10^n)²-10^n)`
-/

namespace A168624.P15702921687040949960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((10 ^ n) ^ 2 : ℤ) - (10 ^ n : ℤ))

end

end A168624.P15702921687040949960

namespace A168624

/-- `or(1, (10^n)²-10^n)` -/
def P15702921687040949960.Spec : Prop :=
  ∀ n, P15702921687040949960.a n = A168624 n

end A168624

/-! ## A168624.P7304785619713819104

`xor(1, (10^n)²-10^n)`
-/

namespace A168624.P7304785619713819104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((10 ^ n) ^ 2 : ℤ) - (10 ^ n : ℤ))

end

end A168624.P7304785619713819104

namespace A168624

/-- `xor(1, (10^n)²-10^n)` -/
def P7304785619713819104.Spec : Prop :=
  ∀ n, P7304785619713819104.a n = A168624 n

end A168624

/-! ## A168624.P13890281076061839542

`ceil((xor(1, 6*floor(10^n/3))/2)²)`
-/

namespace A168624.P13890281076061839542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Int.xor 1 (6 * ⌊(10 ^ n : ℚ) / 3⌋) : ℚ) / 2) ^ 2⌉

end

end A168624.P13890281076061839542

namespace A168624

/-- `ceil((xor(1, 6*floor(10^n/3))/2)²)` -/
def P13890281076061839542.Spec : Prop :=
  ∀ n, P13890281076061839542.a n = A168624 n

end A168624

/-! ## A168624.P14966140321456469346

`ceil((ceil(record[10^abs(1-n)-9]/5)/2)²)`
-/

namespace A168624.P14966140321456469346
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 5⌉ : ℚ) / 2) ^ 2⌉

end

end A168624.P14966140321456469346

namespace A168624

/-- `ceil((ceil(record[10^abs(1-n)-9]/5)/2)²)` -/
def P14966140321456469346.Spec : Prop :=
  ∀ n, P14966140321456469346.a n = A168624 n

end A168624

/-! ## A168624.P8481191779611051413

`ceil((A133264(3*n)/2)²)`
-/

namespace A168624.P8481191779611051413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A133264 (3 * n) : ℚ) / 2) ^ 2⌉

end

end A168624.P8481191779611051413

namespace A168624

/-- `ceil((A133264(3*n)/2)²)` -/
def P8481191779611051413.Spec : Prop :=
  ∀ n, P8481191779611051413.a n = A168624 n

end A168624

/-! ## A168624.P17234580385801338128

`ceil((A331788(9*n+1)/2)²)`
-/

namespace A168624.P17234580385801338128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A331788 (9 * n + 1) : ℚ) / 2) ^ 2⌉

end

end A168624.P17234580385801338128

namespace A168624

/-- `ceil((A331788(9*n+1)/2)²)` -/
def P17234580385801338128.Spec : Prop :=
  ∀ n, P17234580385801338128.a n = A168624 n

end A168624

/-! ## A168624.P17756238819735236516

`abs(A002283(n)-A098608(n))`
-/

namespace A168624.P17756238819735236516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002283 n - A098608 n|

end

end A168624.P17756238819735236516

namespace A168624

/-- `abs(A002283(n)-A098608(n))` -/
def P17756238819735236516.Spec : Prop :=
  ∀ n, P17756238819735236516.a n = A168624 n

end A168624

/-! ## A168624.P14203846006391115601

`abs(xor(A106400(n), A276352(n)))`
-/

namespace A168624.P14203846006391115601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A106400 n) (A276352 n)|

end

end A168624.P14203846006391115601

namespace A168624

/-- `abs(xor(A106400(n), A276352(n)))` -/
def P14203846006391115601.Spec : Prop :=
  ∀ n, P14203846006391115601.a n = A168624 n

end A168624

/-! ## A168624.P3211205027931533920

`abs(A052268(n+1)-A171513(n))`
-/

namespace A168624.P3211205027931533920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A052268 (n + 1) - A171513 n|

end

end A168624.P3211205027931533920

namespace A168624

/-- `abs(A052268(n+1)-A171513(n))` -/
def P3211205027931533920.Spec : Prop :=
  ∀ n, P3211205027931533920.a n = A168624 n

end A168624

/-!
# A168625: Triangle T(n,k) = 8*binomial(n,k) - 7 with columns 0 <= k <= n.

The programs for A168625, the canonical program `A168625.P1721656364282430505` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168625 has offset 0).

The definition of A168625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168625.P9762360166608156238

`ceil(A176203(n)/2)`
-/

namespace A168625.P9762360166608156238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176203 n : ℚ) / 2⌉

end

end A168625.P9762360166608156238

namespace A168625

/-- `ceil(A176203(n)/2)` -/
def P9762360166608156238.Spec : Prop :=
  ∀ n, P9762360166608156238.a n = A168625 n

end A168625

/-! ## A168625.P1721656364282430505

`2*A131061(n)-1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A168625

/-- `2*A131061(n)-1` -/
def P1721656364282430505.Spec : Prop :=
  ∀ n, P1721656364282430505.a n = A168625 n

theorem P1721656364282430505.correct : P1721656364282430505.Spec := by
  intro n
  simp only [A168625]

end A168625

/-! ## A168625.P3530564877513782463

`4*A109128(n)-3`
-/

namespace A168625.P3530564877513782463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A109128 n - 3

end

end A168625.P3530564877513782463

namespace A168625

/-- `4*A109128(n)-3` -/
def P3530564877513782463.Spec : Prop :=
  ∀ n, P3530564877513782463.a n = A168625 n

end A168625

/-! ## A168625.P12966659288037367232

`8*A014473(n)+1`
-/

namespace A168625.P12966659288037367232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A014473 n + 1

end

end A168625.P12966659288037367232

namespace A168625

/-- `8*A014473(n)+1` -/
def P12966659288037367232.Spec : Prop :=
  ∀ n, P12966659288037367232.a n = A168625 n

end A168625

/-! ## A168625.P15550510335192877725

`8*A007318(n)-7`
-/

namespace A168625.P15550510335192877725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A007318 n - 7

end

end A168625.P15550510335192877725

namespace A168625

/-- `8*A007318(n)-7` -/
def P15550510335192877725.Spec : Prop :=
  ∀ n, P15550510335192877725.a n = A168625 n

end A168625

/-! ## A168625.P10022841575230586933

`4*(A028326(n)-1)-3`
-/

namespace A168625.P10022841575230586933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A028326 n - 1) - 3

end

end A168625.P10022841575230586933

namespace A168625

/-- `4*(A028326(n)-1)-3` -/
def P10022841575230586933.Spec : Prop :=
  ∀ n, P10022841575230586933.a n = A168625 n

end A168625

/-! ## A168625.P7678852187418933474

`8*(ceil(A134059(n)/3)-1)+1`
-/

namespace A168625.P7678852187418933474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (⌈(A134059 n : ℚ) / 3⌉ - 1) + 1

end

end A168625.P7678852187418933474

namespace A168625

/-- `8*(ceil(A134059(n)/3)-1)+1` -/
def P7678852187418933474.Spec : Prop :=
  ∀ n, P7678852187418933474.a n = A168625 n

end A168625

/-! ## A168625.P8652045809967576260

`A131067(n)+A014473(n)`
-/

namespace A168625.P8652045809967576260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131067 n + A014473 n

end

end A168625.P8652045809967576260

namespace A168625

/-- `A131067(n)+A014473(n)` -/
def P8652045809967576260.Spec : Prop :=
  ∀ n, P8652045809967576260.a n = A168625 n

end A168625

/-! ## A168625.P11727147783905479637

`A007318(n)+A131067(n)-1`
-/

namespace A168625.P11727147783905479637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A131067 n - 1)

end

end A168625.P11727147783905479637

namespace A168625

/-- `A007318(n)+A131067(n)-1` -/
def P11727147783905479637.Spec : Prop :=
  ∀ n, P11727147783905479637.a n = A168625 n

end A168625

/-! ## A168625.P5665933609242440537

`A109128(n)+A131065(n)-1`
-/

namespace A168625.P5665933609242440537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + (A131065 n - 1)

end

end A168625.P5665933609242440537

namespace A168625

/-- `A109128(n)+A131065(n)-1` -/
def P5665933609242440537.Spec : Prop :=
  ∀ n, P5665933609242440537.a n = A168625 n

end A168625

/-! ## A168625.P2260680512203753001

`A131060(n)+A131063(n)-1`
-/

namespace A168625.P2260680512203753001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 n + (A131063 n - 1)

end

end A168625.P2260680512203753001

namespace A168625

/-- `A131060(n)+A131063(n)-1` -/
def P2260680512203753001.Spec : Prop :=
  ∀ n, P2260680512203753001.a n = A168625 n

end A168625

/-! ## A168625.P3530470029098305339

`A153491(n)-(A131060(n)+1)`
-/

namespace A168625.P3530470029098305339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153491 n - (A131060 n + 1)

end

end A168625.P3530470029098305339

namespace A168625

/-- `A153491(n)-(A131060(n)+1)` -/
def P3530470029098305339.Spec : Prop :=
  ∀ n, P3530470029098305339.a n = A168625 n

end A168625

/-! ## A168625.P7067210479777929701

`2*A131067(n)-A131065(n)`
-/

namespace A168625.P7067210479777929701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131067 n - A131065 n

end

end A168625.P7067210479777929701

namespace A168625

/-- `2*A131067(n)-A131065(n)` -/
def P7067210479777929701.Spec : Prop :=
  ∀ n, P7067210479777929701.a n = A168625 n

end A168625

/-! ## A168625.P8807097833279933034

`A141596(n)-(2-A028326(n))²`
-/

namespace A168625.P8807097833279933034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141596 n - (2 - A028326 n) ^ 2

end

end A168625.P8807097833279933034

namespace A168625

/-- `A141596(n)-(2-A028326(n))²` -/
def P8807097833279933034.Spec : Prop :=
  ∀ n, P8807097833279933034.a n = A168625 n

end A168625

/-! ## A168625.P15027410165139876421

`A014473(n)+A131065(n)+A014473(n)`
-/

namespace A168625.P15027410165139876421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (A131065 n + A014473 n)

end

end A168625.P15027410165139876421

namespace A168625

/-- `A014473(n)+A131065(n)+A014473(n)` -/
def P15027410165139876421.Spec : Prop :=
  ∀ n, P15027410165139876421.a n = A168625 n

end A168625

/-! ## A168625.P18180476978928139000

`A131060(n)+A131065(n)-A007318(n)`
-/

namespace A168625.P18180476978928139000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 n + (A131065 n - A007318 n)

end

end A168625.P18180476978928139000

namespace A168625

/-- `A131060(n)+A131065(n)-A007318(n)` -/
def P18180476978928139000.Spec : Prop :=
  ∀ n, P18180476978928139000.a n = A168625 n

end A168625

/-! ## A168625.P9690195045542958324

`A131061(n)+A131063(n)-A007318(n)`
-/

namespace A168625.P9690195045542958324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131061 n + (A131063 n - A007318 n)

end

end A168625.P9690195045542958324

namespace A168625

/-- `A131061(n)+A131063(n)-A007318(n)` -/
def P9690195045542958324.Spec : Prop :=
  ∀ n, P9690195045542958324.a n = A168625 n

end A168625

/-! ## A168625.P15635126922030979687

`A131060(n)+A131067(n)-A109128(n)`
-/

namespace A168625.P15635126922030979687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 n + (A131067 n - A109128 n)

end

end A168625.P15635126922030979687

namespace A168625

/-- `A131060(n)+A131067(n)-A109128(n)` -/
def P15635126922030979687.Spec : Prop :=
  ∀ n, P15635126922030979687.a n = A168625 n

end A168625

/-! ## A168625.P6821094376783653267

`A131063(n)+A131063(n)-A109128(n)`
-/

namespace A168625.P6821094376783653267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131063 n + (A131063 n - A109128 n)

end

end A168625.P6821094376783653267

namespace A168625

/-- `A131063(n)+A131063(n)-A109128(n)` -/
def P6821094376783653267.Spec : Prop :=
  ∀ n, P6821094376783653267.a n = A168625 n

end A168625

/-! ## A168625.P2448239120370846312

`A131061(n)+A131067(n)-A131060(n)`
-/

namespace A168625.P2448239120370846312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131061 n + (A131067 n - A131060 n)

end

end A168625.P2448239120370846312

namespace A168625

/-- `A131061(n)+A131067(n)-A131060(n)` -/
def P2448239120370846312.Spec : Prop :=
  ∀ n, P2448239120370846312.a n = A168625 n

end A168625

/-!
# A168626: Numbers n such that n and n+-1 have 3 or more distinct prime factors.

The programs for A168626, there is no canonical definition to state claims against.
-/

/-! ## A168626.P5841133721834659649

`∩[A321503(n+1)+1, A321503(n+1)]`
-/

namespace A168626.P5841133721834659649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321503 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168626.P5841133721834659649

/-! ## A168626.P3136259353377528415

`∩[A321503(n+1), A065475(A321503(n+1))]`
-/

namespace A168626.P3136259353377528415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A321503 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168626.P3136259353377528415

/-! ## A168626.P17014058102956653187

`A364308(n+1)-A057428(A257609(n))`
-/

namespace A168626.P17014058102956653187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364308 (n + 1) - A057428 (A257609 n).toNat

end

end A168626.P17014058102956653187

/-! ## A168626.P902789604364630190

`A364308(n+1)+A000035(A073102(n+1))`
-/

namespace A168626.P902789604364630190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364308 (n + 1) + A000035 (A073102 (n + 1)).toNat

end

end A168626.P902789604364630190

/-! ## A168626.P12490641875575596556

`A364308(n+1)+A003415(A079304(n+1))`
-/

namespace A168626.P12490641875575596556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364308 (n + 1) + A003415 (A079304 (n + 1)).toNat

end

end A168626.P12490641875575596556

/-!
# A168627: a(n) = n^6*(n^5 + 1)/2.

The programs for A168627, the canonical program `A168627.P688983174682102874` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168627 has offset 0).

The definition of A168627 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168627.P688983174682102874

`(n^11+n^6)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168627

/-- `(n^11+n^6)/2` -/
def P688983174682102874.Spec : Prop :=
  ∀ n, P688983174682102874.a n = (A168627 n : ℚ)

end A168627

/-! ## A168627.P5283121926503771315

`n^6*(n^5+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168627.P5283121926503771315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 6 * (n ^ 5 + 1) : ℚ) / 2

end

end A168627.P5283121926503771315

namespace A168627

/-- `n^6*(n^5+1)/2` -/
def P5283121926503771315.Spec : Prop :=
  ∀ n, P5283121926503771315.a n = (A168627 n : ℚ)

end A168627

/-! ## A168627.P6961174645521228612

`n*A071236(n)`
-/

namespace A168627.P6961174645521228612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A071236 n

end

end A168627.P6961174645521228612

namespace A168627

/-- `n*A071236(n)` -/
def P6961174645521228612.Spec : Prop :=
  ∀ n, P6961174645521228612.a n = A168627 n

end A168627

/-! ## A168627.P17101449702236878992

`n²*A168196(n)`
-/

namespace A168627.P17101449702236878992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168196 n

end

end A168627.P17101449702236878992

namespace A168627

/-- `n²*A168196(n)` -/
def P17101449702236878992.Spec : Prop :=
  ∀ n, P17101449702236878992.a n = A168627 n

end A168627

/-! ## A168627.P11563624196801060227

`n^3*A168180(n)`
-/

namespace A168627.P11563624196801060227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A168180 n

end

end A168627.P11563624196801060227

namespace A168627

/-- `n^3*A168180(n)` -/
def P11563624196801060227.Spec : Prop :=
  ∀ n, P11563624196801060227.a n = A168627 n

end A168627

/-! ## A168627.P7164605220118545106

`n²²*A168123(n)`
-/

namespace A168627.P7164605220118545106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A168123 n

end

end A168627.P7164605220118545106

namespace A168627

/-- `n²²*A168123(n)` -/
def P7164605220118545106.Spec : Prop :=
  ∀ n, P7164605220118545106.a n = A168627 n

end A168627

/-! ## A168627.P11429776259257934607

`A168189(n)+A085744(n)`
-/

namespace A168627.P11429776259257934607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168189 n + A085744 n

end

end A168627.P11429776259257934607

namespace A168627

/-- `A168189(n)+A085744(n)` -/
def P11429776259257934607.Spec : Prop :=
  ∀ n, P11429776259257934607.a n = A168627 n

end A168627

/-! ## A168627.P4171356728047609665

`A000584(n)*A167963(n)`
-/

namespace A168627.P4171356728047609665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n * A167963 n

end

end A168627.P4171356728047609665

namespace A168627

/-- `A000584(n)*A167963(n)` -/
def P4171356728047609665.Spec : Prop :=
  ∀ n, P4171356728047609665.a n = A168627 n

end A168627

/-! ## A168627.P3635833060983493847

`A060884(n)*A168526(n)`
-/

namespace A168627.P3635833060983493847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 n * A168526 n

end

end A168627.P3635833060983493847

namespace A168627

/-- `A060884(n)*A168526(n)` -/
def P3635833060983493847.Spec : Prop :=
  ∀ n, P3635833060983493847.a n = A168627 n

end A168627

/-! ## A168627.P11741326220718104830

`A168351(n)*A191012(n)`
-/

namespace A168627.P11741326220718104830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168351 n * A191012 n

end

end A168627.P11741326220718104830

namespace A168627

/-- `A168351(n)*A191012(n)` -/
def P11741326220718104830.Spec : Prop :=
  ∀ n, P11741326220718104830.a n = A168627 n

end A168627

/-! ## A168627.P12463720442489165328

`A168196(n)*A253909(n)`
-/

namespace A168627.P12463720442489165328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168196 n * A253909 n

end

end A168627.P12463720442489165328

namespace A168627

/-- `A168196(n)*A253909(n)` -/
def P12463720442489165328.Spec : Prop :=
  ∀ n, P12463720442489165328.a n = A168627 n

end A168627

/-! ## A168627.P1114091045609350613

`lcm(A071236(n), A168526(n))`
-/

namespace A168627.P1114091045609350613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071236 n) (A168526 n)

end

end A168627.P1114091045609350613

namespace A168627

/-- `lcm(A071236(n), A168526(n))` -/
def P1114091045609350613.Spec : Prop :=
  ∀ n, (P1114091045609350613.a n : ℤ) = A168627 n

end A168627

/-! ## A168627.P8044032305474788937

`A167963(n)+A168119(n)-n`
-/

namespace A168627.P8044032305474788937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167963 n + (A168119 n - (n : ℤ))

end

end A168627.P8044032305474788937

namespace A168627

/-- `A167963(n)+A168119(n)-n` -/
def P8044032305474788937.Spec : Prop :=
  ∀ n, P8044032305474788937.a n = A168627 n

end A168627

/-! ## A168627.P15144376591883267182

`A167963(n)+A168661(n)-A168029(n)`
-/

namespace A168627.P15144376591883267182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167963 n + (A168661 n - A168029 n)

end

end A168627.P15144376591883267182

namespace A168627

/-- `A167963(n)+A168661(n)-A168029(n)` -/
def P15144376591883267182.Spec : Prop :=
  ∀ n, P15144376591883267182.a n = A168627 n

end A168627

/-!
# A168628: Numbers n such that n and n+-1 have 4 distinct prime factors.

The programs for A168628, there is no canonical definition to state claims against.
-/

/-! ## A168628.P14044376328533618034

`A364309(n+1)+1`
-/

namespace A168628.P14044376328533618034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364309 (n + 1) + 1

end

end A168628.P14044376328533618034

/-! ## A168628.P7629950502950846104

`∩[A140078(n+1)+1, A140078(n+1)]`
-/

namespace A168628.P7629950502950846104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140078 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168628.P7629950502950846104

/-!
# A168631: a(n) = n^6*(n^7 + 1)/2.

The programs for A168631, the canonical program `A168631.P8561937502421837911` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168631 has offset 0).

The definition of A168631 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168631.P8561937502421837911

`n^6*(n^7+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168631

/-- `n^6*(n^7+1)/2` -/
def P8561937502421837911.Spec : Prop :=
  ∀ n, P8561937502421837911.a n = (A168631 n : ℚ)

end A168631

/-! ## A168631.P17450328897860983683

`n*A168432(n)`
-/

namespace A168631.P17450328897860983683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168432 n

end

end A168631.P17450328897860983683

namespace A168631

/-- `n*A168432(n)` -/
def P17450328897860983683.Spec : Prop :=
  ∀ n, P17450328897860983683.a n = A168631 n

end A168631

/-! ## A168631.P16891402775976129115

`n²*A168225(n)`
-/

namespace A168631.P16891402775976129115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168225 n

end

end A168631.P16891402775976129115

namespace A168631

/-- `n²*A168225(n)` -/
def P16891402775976129115.Spec : Prop :=
  ∀ n, P16891402775976129115.a n = A168631 n

end A168631

/-! ## A168631.P7482138398934415896

`n^3*A168188(n)`
-/

namespace A168631.P7482138398934415896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A168188 n

end

end A168631.P7482138398934415896

namespace A168631

/-- `n^3*A168188(n)` -/
def P7482138398934415896.Spec : Prop :=
  ∀ n, P7482138398934415896.a n = A168631 n

end A168631

/-! ## A168631.P10313592832187428315

`n²²*A168125(n)`
-/

namespace A168631.P10313592832187428315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A168125 n

end

end A168631.P10313592832187428315

namespace A168631

/-- `n²²*A168125(n)` -/
def P10313592832187428315.Spec : Prop :=
  ∀ n, P10313592832187428315.a n = A168631 n

end A168631

/-! ## A168631.P16688470902382573048

`A000584(n)*A168067(n)`
-/

namespace A168631.P16688470902382573048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n * A168067 n

end

end A168631.P16688470902382573048

namespace A168631

/-- `A000584(n)*A168067(n)` -/
def P16688470902382573048.Spec : Prop :=
  ∀ n, P16688470902382573048.a n = A168631 n

end A168631

/-! ## A168631.P13079233493351166124

`A060888(n)*A168526(n)`
-/

namespace A168631.P13079233493351166124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060888 n * A168526 n

end

end A168631.P13079233493351166124

namespace A168631

/-- `A060888(n)*A168526(n)` -/
def P13079233493351166124.Spec : Prop :=
  ∀ n, P13079233493351166124.a n = A168631 n

end A168631

/-! ## A168631.P799478787072053775

`A168225(n)*A253909(n)`
-/

namespace A168631.P799478787072053775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168225 n * A253909 n

end

end A168631.P799478787072053775

namespace A168631

/-- `A168225(n)*A253909(n)` -/
def P799478787072053775.Spec : Prop :=
  ∀ n, P799478787072053775.a n = A168631 n

end A168631

/-! ## A168631.P5336124559929251614

`lcm(A168067(n), A168526(n))`
-/

namespace A168631.P5336124559929251614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168067 n) (A168526 n)

end

end A168631.P5336124559929251614

namespace A168631

/-- `lcm(A168067(n), A168526(n))` -/
def P5336124559929251614.Spec : Prop :=
  ∀ n, (P5336124559929251614.a n : ℤ) = A168631 n

end A168631

/-!
# A168632: a(n) = n^6*(n^8 + 1)/2.

The programs for A168632, the canonical program `A168632.P7513756583691090142` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168632 has offset 0).

The definition of A168632 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168632.P7513756583691090142

`n^6*(n^8+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168632

/-- `n^6*(n^8+1)/2` -/
def P7513756583691090142.Spec : Prop :=
  ∀ n, P7513756583691090142.a n = (A168632 n : ℚ)

end A168632

/-! ## A168632.P9515987055297445595

`n*A168462(n)`
-/

namespace A168632.P9515987055297445595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168462 n

end

end A168632.P9515987055297445595

namespace A168632

/-- `n*A168462(n)` -/
def P9515987055297445595.Spec : Prop :=
  ∀ n, P9515987055297445595.a n = A168632 n

end A168632

/-! ## A168632.P219302025509839881

`n^3*A168189(n)`
-/

namespace A168632.P219302025509839881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A168189 n

end

end A168632.P219302025509839881

namespace A168632

/-- `n^3*A168189(n)` -/
def P219302025509839881.Spec : Prop :=
  ∀ n, P219302025509839881.a n = A168632 n

end A168632

/-! ## A168632.P6422707539446771824

`n*n*A168227(n)`
-/

namespace A168632.P6422707539446771824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * A168227 n)

end

end A168632.P6422707539446771824

namespace A168632

/-- `n*n*A168227(n)` -/
def P6422707539446771824.Spec : Prop :=
  ∀ n, P6422707539446771824.a n = A168632 n

end A168632

/-! ## A168632.P7170195754916373336

`n²²*A168126(n)`
-/

namespace A168632.P7170195754916373336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A168126 n

end

end A168632.P7170195754916373336

namespace A168632

/-- `n²²*A168126(n)` -/
def P7170195754916373336.Spec : Prop :=
  ∀ n, P7170195754916373336.a n = A168632 n

end A168632

/-! ## A168632.P9540219024965333886

`A000584(n)*A168116(n)`
-/

namespace A168632.P9540219024965333886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n * A168116 n

end

end A168632.P9540219024965333886

namespace A168632

/-- `A000584(n)*A168116(n)` -/
def P9540219024965333886.Spec : Prop :=
  ∀ n, P9540219024965333886.a n = A168632 n

end A168632

/-! ## A168632.P3401654869026924624

`A168179(n²)`
-/

namespace A168632.P3401654869026924624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168179 (n ^ 2)

end

end A168632.P3401654869026924624

namespace A168632

/-- `A168179(n²)` -/
def P3401654869026924624.Spec : Prop :=
  ∀ n, P3401654869026924624.a n = A168632 n

end A168632

/-! ## A168632.P70424695392769577

`n²*A168122(n²)`
-/

namespace A168632.P70424695392769577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168122 (n ^ 2)

end

end A168632.P70424695392769577

namespace A168632

/-- `n²*A168122(n²)` -/
def P70424695392769577.Spec : Prop :=
  ∀ n, P70424695392769577.a n = A168632 n

end A168632

/-! ## A168632.P5428211995395415888

`lcm(n, A168179(A000290(n)))`
-/

namespace A168632.P5428211995395415888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A168179 (A000290 n).toNat)

end

end A168632.P5428211995395415888

namespace A168632

/-- `lcm(n, A168179(A000290(n)))` -/
def P5428211995395415888.Spec : Prop :=
  ∀ n, (P5428211995395415888.a n : ℤ) = A168632 n

end A168632

/-! ## A168632.P1360316590594974977

`lcm(A129204(n²), A168116(n))`
-/

namespace A168632.P1360316590594974977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A129204 (n ^ 2)) (A168116 n)

end

end A168632.P1360316590594974977

namespace A168632

/-- `lcm(A129204(n²), A168116(n))` -/
def P1360316590594974977.Spec : Prop :=
  ∀ n, (P1360316590594974977.a n : ℤ) = A168632 n

end A168632

/-! ## A168632.P102195016667074506

`record[A168179(n*A010052(n))]`
-/

namespace A168632.P102195016667074506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168179 ((n : ℤ) * A010052 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168632.P102195016667074506

namespace A168632

/-- `record[A168179(n*A010052(n))]` -/
def P102195016667074506.Spec : Prop :=
  ∀ n, P102195016667074506.a n = A168632 n

end A168632

/-! ## A168632.P12275540431072075687

`or(A000035(n), A168179(A000290(n)))`
-/

namespace A168632.P12275540431072075687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A168179 (A000290 n).toNat)

end

end A168632.P12275540431072075687

namespace A168632

/-- `or(A000035(n), A168179(A000290(n)))` -/
def P12275540431072075687.Spec : Prop :=
  ∀ n, P12275540431072075687.a n = A168632 n

end A168632

/-!
# A168633: a(n) = n^6*(n^9 + 1)/2.

The programs for A168633, the canonical program `A168633.P9321221020949049552` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168633 has offset 0).

The definition of A168633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168633.P9321221020949049552

`n^6*(n^9+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168633

/-- `n^6*(n^9+1)/2` -/
def P9321221020949049552.Spec : Prop :=
  ∀ n, P9321221020949049552.a n = (A168633 n : ℚ)

end A168633

/-! ## A168633.P9548934159754388662

`n*A168471(n)`
-/

namespace A168633.P9548934159754388662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168471 n

end

end A168633.P9548934159754388662

namespace A168633

/-- `n*A168471(n)` -/
def P9548934159754388662.Spec : Prop :=
  ∀ n, P9548934159754388662.a n = A168633 n

end A168633

/-! ## A168633.P4691873263816692307

`n*n*A168345(n)`
-/

namespace A168633.P4691873263816692307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * A168345 n)

end

end A168633.P4691873263816692307

namespace A168633

/-- `n*n*A168345(n)` -/
def P4691873263816692307.Spec : Prop :=
  ∀ n, P4691873263816692307.a n = A168633 n

end A168633

/-! ## A168633.P12972347511728595871

`n²²*A168153(n)`
-/

namespace A168633.P12972347511728595871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A168153 n

end

end A168633.P12972347511728595871

namespace A168633

/-- `n²²*A168153(n)` -/
def P12972347511728595871.Spec : Prop :=
  ∀ n, P12972347511728595871.a n = A168633 n

end A168633

/-! ## A168633.P17175263555099282570

`A000584(n)*A168118(n)`
-/

namespace A168633.P17175263555099282570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n * A168118 n

end

end A168633.P17175263555099282570

namespace A168633

/-- `A000584(n)*A168118(n)` -/
def P17175263555099282570.Spec : Prop :=
  ∀ n, P17175263555099282570.a n = A168633 n

end A168633

/-! ## A168633.P5908861522288148890

`A060891(n)*A168555(n)`
-/

namespace A168633.P5908861522288148890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060891 n * A168555 n

end

end A168633.P5908861522288148890

namespace A168633

/-- `A060891(n)*A168555(n)` -/
def P5908861522288148890.Spec : Prop :=
  ∀ n, P5908861522288148890.a n = A168633 n

end A168633

/-! ## A168633.P12613547887533162887

`lcm(A168118(n), A168526(n))`
-/

namespace A168633.P12613547887533162887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168118 n) (A168526 n)

end

end A168633.P12613547887533162887

namespace A168633

/-- `lcm(A168118(n), A168526(n))` -/
def P12613547887533162887.Spec : Prop :=
  ∀ n, (P12613547887533162887.a n : ℤ) = A168633 n

end A168633

/-! ## A168633.P262109533300443129

`lcm(A168153(n), A168555(n))`
-/

namespace A168633.P262109533300443129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168153 n) (A168555 n)

end

end A168633.P262109533300443129

namespace A168633

/-- `lcm(A168153(n), A168555(n))` -/
def P262109533300443129.Spec : Prop :=
  ∀ n, (P262109533300443129.a n : ℤ) = A168633 n

end A168633

/-!
# A168634: a(n) = n^6*(n^10 + 1)/2.

The programs for A168634, the canonical program `A168634.P17975314946768728316` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168634 has offset 0).

The definition of A168634 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168634.P17975314946768728316

`n^6*(n^10+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168634

/-- `n^6*(n^10+1)/2` -/
def P17975314946768728316.Spec : Prop :=
  ∀ n, P17975314946768728316.a n = (A168634 n : ℚ)

end A168634

/-! ## A168634.P6494693850126941935

`n*A168507(n)`
-/

namespace A168634.P6494693850126941935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168507 n

end

end A168634.P6494693850126941935

namespace A168634

/-- `n*A168507(n)` -/
def P6494693850126941935.Spec : Prop :=
  ∀ n, P6494693850126941935.a n = A168634 n

end A168634

/-! ## A168634.P7308615976408567678

`n*n*A168346(n)`
-/

namespace A168634.P7308615976408567678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * A168346 n)

end

end A168634.P7308615976408567678

namespace A168634

/-- `n*n*A168346(n)` -/
def P7308615976408567678.Spec : Prop :=
  ∀ n, P7308615976408567678.a n = A168634 n

end A168634

/-! ## A168634.P10857827688354471523

`A000584(n)*A168119(n)`
-/

namespace A168634.P10857827688354471523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n * A168119 n

end

end A168634.P10857827688354471523

namespace A168634

/-- `A000584(n)*A168119(n)` -/
def P10857827688354471523.Spec : Prop :=
  ∀ n, P10857827688354471523.a n = A168634 n

end A168634

/-! ## A168634.P15450035985617380903

`A060892(n)*A168527(n)`
-/

namespace A168634.P15450035985617380903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060892 n * A168527 n

end

end A168634.P15450035985617380903

namespace A168634

/-- `A060892(n)*A168527(n)` -/
def P15450035985617380903.Spec : Prop :=
  ∀ n, P15450035985617380903.a n = A168634 n

end A168634

/-! ## A168634.P242359708805562282

`lcm(A168119(n), A168527(n))`
-/

namespace A168634.P242359708805562282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168119 n) (A168527 n)

end

end A168634.P242359708805562282

namespace A168634

/-- `lcm(A168119(n), A168527(n))` -/
def P242359708805562282.Spec : Prop :=
  ∀ n, (P242359708805562282.a n : ℤ) = A168634 n

end A168634

/-! ## A168634.P14951208568277914895

`record[A037213(n)²²*A167963(n)]`
-/

namespace A168634.P14951208568277914895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037213 n ^ 2) ^ 2 * A167963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168634.P14951208568277914895

namespace A168634

/-- `record[A037213(n)²²*A167963(n)]` -/
def P14951208568277914895.Spec : Prop :=
  ∀ n, P14951208568277914895.a n = A168634 n

end A168634

/-! ## A168634.P4211838402192220017

`A168180(n²)`
-/

namespace A168634.P4211838402192220017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168180 (n ^ 2)

end

end A168634.P4211838402192220017

namespace A168634

/-- `A168180(n²)` -/
def P4211838402192220017.Spec : Prop :=
  ∀ n, P4211838402192220017.a n = A168634 n

end A168634

/-! ## A168634.P7358880643853222281

`n²*A168123(n²)`
-/

namespace A168634.P7358880643853222281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168123 (n ^ 2)

end

end A168634.P7358880643853222281

namespace A168634

/-- `n²*A168123(n²)` -/
def P7358880643853222281.Spec : Prop :=
  ∀ n, P7358880643853222281.a n = A168634 n

end A168634

/-! ## A168634.P15490596830417312522

`record[A168180(n*A010052(n))]`
-/

namespace A168634.P15490596830417312522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168180 ((n : ℤ) * A010052 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168634.P15490596830417312522

namespace A168634

/-- `record[A168180(n*A010052(n))]` -/
def P15490596830417312522.Spec : Prop :=
  ∀ n, P15490596830417312522.a n = A168634 n

end A168634

/-!
# A168635: a(n) = n^7*(n + 1)/2.

The programs for A168635, the canonical program `A168635.P17459078224104995455` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168635 has offset 0).

The definition of A168635 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168635.P5065727707924179051

`n^7*(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168635.P5065727707924179051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 7 * (n + 1) : ℚ) / 2

end

end A168635.P5065727707924179051

namespace A168635

/-- `n^7*(n+1)/2` -/
def P5065727707924179051.Spec : Prop :=
  ∀ n, P5065727707924179051.a n = (A168635 n : ℚ)

end A168635

/-! ## A168635.P17459078224104995455

`n^6*C(n+1, 2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168635

/-- `n^6*C(n+1, 2)` -/
def P17459078224104995455.Spec : Prop :=
  ∀ n, (P17459078224104995455.a n : ℤ) = A168635 n

theorem P17459078224104995455.correct : P17459078224104995455.Spec := by
  intro n
  simp only [A168635]

end A168635

/-! ## A168635.P6354585343042208748

`n*A168526(n)`
-/

namespace A168635.P6354585343042208748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168526 n

end

end A168635.P6354585343042208748

namespace A168635

/-- `n*A168526(n)` -/
def P6354585343042208748.Spec : Prop :=
  ∀ n, P6354585343042208748.a n = A168635 n

end A168635

/-! ## A168635.P7582470275635437377

`n²*A168351(n)`
-/

namespace A168635.P7582470275635437377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168351 n

end

end A168635.P7582470275635437377

namespace A168635

/-- `n²*A168351(n)` -/
def P7582470275635437377.Spec : Prop :=
  ∀ n, P7582470275635437377.a n = A168635 n

end A168635

/-! ## A168635.P6644556482997541575

`(n*n²)²*A000217(n)`
-/

namespace A168635.P6644556482997541575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * n ^ 2) ^ 2 : ℤ) * A000217 n

end

end A168635.P6644556482997541575

namespace A168635

/-- `(n*n²)²*A000217(n)` -/
def P6644556482997541575.Spec : Prop :=
  ∀ n, P6644556482997541575.a n = A168635 n

end A168635

/-! ## A168635.P17216331070304331719

`A163276(n)-A168526(n)`
-/

namespace A168635.P17216331070304331719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163276 n - A168526 n

end

end A168635.P17216331070304331719

namespace A168635

/-- `A163276(n)-A168526(n)` -/
def P17216331070304331719.Spec : Prop :=
  ∀ n, P17216331070304331719.a n = A168635 n

end A168635

/-! ## A168635.P10117228734073469243

`A163277(n)-A168675(n)`
-/

namespace A168635.P10117228734073469243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163277 n - A168675 n

end

end A168635.P10117228734073469243

namespace A168635

/-- `A163277(n)-A168675(n)` -/
def P10117228734073469243.Spec : Prop :=
  ∀ n, P10117228734073469243.a n = A168635 n

end A168635

/-! ## A168635.P8373628255560461211

`A000217(n)*A001014(n)`
-/

namespace A168635.P8373628255560461211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A001014 n

end

end A168635.P8373628255560461211

namespace A168635

/-- `A000217(n)*A001014(n)` -/
def P8373628255560461211.Spec : Prop :=
  ∀ n, P8373628255560461211.a n = A168635 n

end A168635

/-! ## A168635.P9478626467512897487

`A000584(n)*A002411(n)`
-/

namespace A168635.P9478626467512897487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n * A002411 n

end

end A168635.P9478626467512897487

namespace A168635

/-- `A000584(n)*A002411(n)` -/
def P9478626467512897487.Spec : Prop :=
  ∀ n, P9478626467512897487.a n = A168635 n

end A168635

/-! ## A168635.P10902025011305092961

`A168351(n)*A253909(n)`
-/

namespace A168635.P10902025011305092961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168351 n * A253909 n

end

end A168635.P10902025011305092961

namespace A168635

/-- `A168351(n)*A253909(n)` -/
def P10902025011305092961.Spec : Prop :=
  ∀ n, P10902025011305092961.a n = A168635 n

end A168635

/-! ## A168635.P4915265982726172773

`gcd(A163277(n), A170783(n))`
-/

namespace A168635.P4915265982726172773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A163277 n) (A170783 n)

end

end A168635.P4915265982726172773

namespace A168635

/-- `gcd(A163277(n), A170783(n))` -/
def P4915265982726172773.Spec : Prop :=
  ∀ n, (P4915265982726172773.a n : ℤ) = A168635 n

end A168635

/-! ## A168635.P12396605531063808116

`gcd(A168660(n), A168675(n))`
-/

namespace A168635.P12396605531063808116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168660 n) (A168675 n)

end

end A168635.P12396605531063808116

namespace A168635

/-- `gcd(A168660(n), A168675(n))` -/
def P12396605531063808116.Spec : Prop :=
  ∀ n, (P12396605531063808116.a n : ℤ) = A168635 n

end A168635

/-! ## A168635.P14666542906180646322

`gcd(A168664(n), A170791(n))`
-/

namespace A168635.P14666542906180646322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168664 n) (A170791 n)

end

end A168635.P14666542906180646322

namespace A168635

/-- `gcd(A168664(n), A170791(n))` -/
def P14666542906180646322.Spec : Prop :=
  ∀ n, (P14666542906180646322.a n : ℤ) = A168635 n

end A168635

/-! ## A168635.P4242812204984549242

`A001014(n)*A179865(n+1)`
-/

namespace A168635.P4242812204984549242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n * A179865 (n + 1)

end

end A168635.P4242812204984549242

namespace A168635

/-- `A001014(n)*A179865(n+1)` -/
def P4242812204984549242.Spec : Prop :=
  ∀ n, P4242812204984549242.a n = A168635 n

end A168635

/-! ## A168635.P13000018989490435822

`A001015(n)+A240931(n)/2`
-/

namespace A168635.P13000018989490435822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001015 n : ℚ) + (A240931 n : ℚ) / 2

end

end A168635.P13000018989490435822

namespace A168635

/-- `A001015(n)+A240931(n)/2` -/
def P13000018989490435822.Spec : Prop :=
  ∀ n, P13000018989490435822.a n = (A168635 n : ℚ)

end A168635

/-! ## A168635.P13731748852825637630

`A168029(n)+A195859(n)/2`
-/

namespace A168635.P13731748852825637630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168029 n : ℚ) + (A195859 n : ℚ) / 2

end

end A168635.P13731748852825637630

namespace A168635

/-- `A168029(n)+A195859(n)/2` -/
def P13731748852825637630.Spec : Prop :=
  ∀ n, P13731748852825637630.a n = (A168635 n : ℚ)

end A168635

/-! ## A168635.P14810692557719805028

`A001016(n)-A240931(n)/2`
-/

namespace A168635.P14810692557719805028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001016 n : ℚ) - (A240931 n : ℚ) / 2

end

end A168635.P14810692557719805028

namespace A168635

/-- `A001016(n)-A240931(n)/2` -/
def P14810692557719805028.Spec : Prop :=
  ∀ n, P14810692557719805028.a n = (A168635 n : ℚ)

end A168635

/-! ## A168635.P3589243203680155472

`A000217(n)*A000290(n)*A000583(n)`
-/

namespace A168635.P3589243203680155472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A000290 n * A000583 n

end

end A168635.P3589243203680155472

namespace A168635

/-- `A000217(n)*A000290(n)*A000583(n)` -/
def P3589243203680155472.Spec : Prop :=
  ∀ n, P3589243203680155472.a n = A168635 n

end A168635

/-!
# A168636: a(n) = n^7*(n^2 + 1)/2.

The programs for A168636, the canonical program `A168636.P5475317110681192900` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168636 has offset 0).

The definition of A168636 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168636.P8499345926682011236

`n^7*(n²+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168636.P8499345926682011236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 7 * (n ^ 2 + 1) : ℚ) / 2

end

end A168636.P8499345926682011236

namespace A168636

/-- `n^7*(n²+1)/2` -/
def P8499345926682011236.Spec : Prop :=
  ∀ n, P8499345926682011236.a n = (A168636 n : ℚ)

end A168636

/-! ## A168636.P5475317110681192900

`n^5*C(n²+1, 2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168636

/-- `n^5*C(n²+1, 2)` -/
def P5475317110681192900.Spec : Prop :=
  ∀ n, (P5475317110681192900.a n : ℤ) = A168636 n

theorem P5475317110681192900.correct : P5475317110681192900.Spec := by
  intro n
  simp only [A168636]

end A168636

/-! ## A168636.P1726154720426583853

`n²*Δ[C(n, 2)²²]`
-/

namespace A168636.P1726154720426583853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A168636.P1726154720426583853

namespace A168636

/-- `n²*Δ[C(n, 2)²²]` -/
def P1726154720426583853.Spec : Prop :=
  ∀ n, P1726154720426583853.a n = A168636 n

end A168636

/-! ## A168636.P14844996953363310236

`n*A168527(n)`
-/

namespace A168636.P14844996953363310236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168527 n

end

end A168636.P14844996953363310236

namespace A168636

/-- `n*A168527(n)` -/
def P14844996953363310236.Spec : Prop :=
  ∀ n, P14844996953363310236.a n = A168636 n

end A168636

/-! ## A168636.P13059441505818238089

`n²*A168364(n)`
-/

namespace A168636.P13059441505818238089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168364 n

end

end A168636.P13059441505818238089

namespace A168636

/-- `n²*A168364(n)` -/
def P13059441505818238089.Spec : Prop :=
  ∀ n, P13059441505818238089.a n = A168636 n

end A168636

/-! ## A168636.P8367323259712724874

`n^3*A168192(n)`
-/

namespace A168636.P8367323259712724874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A168192 n

end

end A168636.P8367323259712724874

namespace A168636

/-- `n^3*A168192(n)` -/
def P8367323259712724874.Spec : Prop :=
  ∀ n, P8367323259712724874.a n = A168636 n

end A168636

/-! ## A168636.P8253603281033539275

`n²²*A168178(n)`
-/

namespace A168636.P8253603281033539275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A168178 n

end

end A168636.P8253603281033539275

namespace A168636

/-- `n²²*A168178(n)` -/
def P8253603281033539275.Spec : Prop :=
  ∀ n, P8253603281033539275.a n = A168636 n

end A168636

/-! ## A168636.P900038314000832598

`A163277(n)-n²²²`
-/

namespace A168636.P900038314000832598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163277 n - (((n ^ 2) ^ 2) ^ 2 : ℤ)

end

end A168636.P900038314000832598

namespace A168636

/-- `A163277(n)-n²²²` -/
def P900038314000832598.Spec : Prop :=
  ∀ n, P900038314000832598.a n = A168636 n

end A168636

/-! ## A168636.P11137346420994987218

`(n*n²)²*A006003(n)`
-/

namespace A168636.P11137346420994987218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * n ^ 2) ^ 2 : ℤ) * A006003 n

end

end A168636.P11137346420994987218

namespace A168636

/-- `(n*n²)²*A006003(n)` -/
def P11137346420994987218.Spec : Prop :=
  ∀ n, P11137346420994987218.a n = A168636 n

end A168636

/-! ## A168636.P17846325993842884692

`A000584(n)*A037270(n)`
-/

namespace A168636.P17846325993842884692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n * A037270 n

end

end A168636.P17846325993842884692

namespace A168636

/-- `A000584(n)*A037270(n)` -/
def P17846325993842884692.Spec : Prop :=
  ∀ n, P17846325993842884692.a n = A168636 n

end A168636

/-! ## A168636.P2998930566771817314

`A168364(n)*A253909(n)`
-/

namespace A168636.P2998930566771817314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168364 n * A253909 n

end

end A168636.P2998930566771817314

namespace A168636

/-- `A168364(n)*A253909(n)` -/
def P2998930566771817314.Spec : Prop :=
  ∀ n, P2998930566771817314.a n = A168636 n

end A168636

/-! ## A168636.P14358410544457254587

`gcd(A168663(n), A170802(n))`
-/

namespace A168636.P14358410544457254587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168663 n) (A170802 n)

end

end A168636.P14358410544457254587

namespace A168636

/-- `gcd(A168663(n), A170802(n))` -/
def P14358410544457254587.Spec : Prop :=
  ∀ n, (P14358410544457254587.a n : ℤ) = A168636 n

end A168636

/-! ## A168636.P15916457428328685021

`gcd(A283029(n), A283031(n))`
-/

namespace A168636.P15916457428328685021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A283029 n) (A283031 n)

end

end A168636.P15916457428328685021

namespace A168636

/-- `gcd(A283029(n), A283031(n))` -/
def P15916457428328685021.Spec : Prop :=
  ∀ n, (P15916457428328685021.a n : ℤ) = A168636 n

end A168636

/-! ## A168636.P12003542235474982105

`A168029(n)+A168116(n)-n`
-/

namespace A168636.P12003542235474982105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168029 n + (A168116 n - (n : ℤ))

end

end A168636.P12003542235474982105

namespace A168636

/-- `A168029(n)+A168116(n)-n` -/
def P12003542235474982105.Spec : Prop :=
  ∀ n, P12003542235474982105.a n = A168636 n

end A168636

/-! ## A168636.P14052563684546102130

`A168116(n)+A168526(n)-A167963(n)`
-/

namespace A168636.P14052563684546102130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168116 n + (A168526 n - A167963 n)

end

end A168636.P14052563684546102130

namespace A168636

/-- `A168116(n)+A168526(n)-A167963(n)` -/
def P14052563684546102130.Spec : Prop :=
  ∀ n, P14052563684546102130.a n = A168636 n

end A168636

/-! ## A168636.P16576689149537192637

`A168029(n)+A170783(n)-A168118(n)`
-/

namespace A168636.P16576689149537192637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168029 n + (A170783 n - A168118 n)

end

end A168636.P16576689149537192637

namespace A168636

/-- `A168029(n)+A170783(n)-A168118(n)` -/
def P16576689149537192637.Spec : Prop :=
  ∀ n, P16576689149537192637.a n = A168636 n

end A168636

/-! ## A168636.P4069722770381399565

`A000217(n²)*A000584(n)`
-/

namespace A168636.P4069722770381399565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n ^ 2) * A000584 n

end

end A168636.P4069722770381399565

namespace A168636

/-- `A000217(n²)*A000584(n)` -/
def P4069722770381399565.Spec : Prop :=
  ∀ n, P4069722770381399565.a n = A168636 n

end A168636

/-!
# A168637: a(n) = a(n-1) + a(n-2) - a(n-4) starting a(0)=0, a(1)=1, a(2)=a(3)=3.

The programs for A168637, the canonical program `A168637.P16284751033868336252` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168637 has offset 0).

The definition of A168637 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-4)` (program `A168637.P16284751033868336252`, by `A168637.P16284751033868336252.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168637.P3761049877719894800

`a(n-2)+a(n-3)+2` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A168637.P3761049877719894800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 2) + a (n - 3) + 2

end

end A168637.P3761049877719894800

namespace A168637

/-- `a(n-2)+a(n-3)+2` -/
def P3761049877719894800.Spec : Prop :=
  ∀ n, (P3761049877719894800.a n : ℤ) = A168637 n

end A168637

/-! ## A168637.P7864577728301198930

`3*A000931(n+4)+2*A000931(n+3)-2`
-/

namespace A168637.P7864577728301198930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000931 (n + 4) + 2 * A000931 (n + 3) - 2

end

end A168637.P7864577728301198930

namespace A168637

/-- `3*A000931(n+4)+2*A000931(n+3)-2` -/
def P7864577728301198930.Spec : Prop :=
  ∀ n, P7864577728301198930.a n = A168637 n

end A168637

/-! ## A168637.P16284751033868336252

`a(n-1)+a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168637

/-- `a(n-1)+a(n-2)-a(n-4)` -/
def P16284751033868336252.Spec : Prop :=
  ∀ n, P16284751033868336252.a n = A168637 n

theorem P16284751033868336252.correct : P16284751033868336252.Spec := by
  intro n
  simp only [A168637]

end A168637

/-! ## A168637.P18126311017255483368

`ogf((x+2x^2-x^3)/(1-x-x^2+x^4))`
-/

namespace A168637.P18126311017255483368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, -1] [1, -1, -1, 0, 1] n

end

end A168637.P18126311017255483368

namespace A168637

/-- `ogf((x+2x^2-x^3)/(1-x-x^2+x^4))` -/
def P18126311017255483368.Spec : Prop :=
  ∀ n, P18126311017255483368.a n = A168637 n

end A168637

/-! ## A168637.P10845538454458116646

`floor(a(n-1)-(a(n-4)-a(n-2)))` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A168637.P10845538454458116646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 3] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 2))

end

end A168637.P10845538454458116646

namespace A168637

/-- `floor(a(n-1)-(a(n-4)-a(n-2)))` -/
def P10845538454458116646.Spec : Prop :=
  ∀ n, P10845538454458116646.a n = A168637 n

end A168637

/-! ## A168637.P1085653946446081262

`A000931(n+1)+∑[A000931(n+4)]`
-/

namespace A168637.P1085653946446081262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168637.P1085653946446081262

namespace A168637

/-- `A000931(n+1)+∑[A000931(n+4)]` -/
def P1085653946446081262.Spec : Prop :=
  ∀ n, P1085653946446081262.a n = A168637 n

end A168637

/-! ## A168637.P8010958025112225003

`A000931(n+1)+A164001(n+2)-2`
-/

namespace A168637.P8010958025112225003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1) + (A164001 (n + 2) - 2)

end

end A168637.P8010958025112225003

namespace A168637

/-- `A000931(n+1)+A164001(n+2)-2` -/
def P8010958025112225003.Spec : Prop :=
  ∀ n, P8010958025112225003.a n = A168637 n

end A168637

/-! ## A168637.P6833972109095972094

`A000931(n)+A054405(n)-A276276(n+1)`
-/

namespace A168637.P6833972109095972094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n + (A054405 n - A276276 (n + 1))

end

end A168637.P6833972109095972094

namespace A168637

/-- `A000931(n)+A054405(n)-A276276(n+1)` -/
def P6833972109095972094.Spec : Prop :=
  ∀ n, P6833972109095972094.a n = A168637 n

end A168637

/-! ## A168637.P18321468664060155202

`A054405(n)-(A291289(n)+A078027(n+1))`
-/

namespace A168637.P18321468664060155202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054405 n - (A291289 n + A078027 (n + 1))

end

end A168637.P18321468664060155202

namespace A168637

/-- `A054405(n)-(A291289(n)+A078027(n+1))` -/
def P18321468664060155202.Spec : Prop :=
  ∀ n, P18321468664060155202.a n = A168637 n

end A168637

/-! ## A168637.P5337400666970323923

`A000931(n+1)+A054405(n)-A134816(n+1)`
-/

namespace A168637.P5337400666970323923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1) + (A054405 n - A134816 (n + 1))

end

end A168637.P5337400666970323923

namespace A168637

/-- `A000931(n+1)+A054405(n)-A134816(n+1)` -/
def P5337400666970323923.Spec : Prop :=
  ∀ n, P5337400666970323923.a n = A168637 n

end A168637

/-! ## A168637.P7930416210940154444

`A084338(n+1)+A054405(n)-A084338(n+2)`
-/

namespace A168637.P7930416210940154444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084338 (n + 1) + (A054405 n - A084338 (n + 2))

end

end A168637.P7930416210940154444

namespace A168637

/-- `A084338(n+1)+A054405(n)-A084338(n+2)` -/
def P7930416210940154444.Spec : Prop :=
  ∀ n, P7930416210940154444.a n = A168637 n

end A168637

/-! ## A168637.P16570623750672380350

`A054405(n+1)-(A276477(n)+A000931(n+1))`
-/

namespace A168637.P16570623750672380350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054405 (n + 1) - (A276477 n + A000931 (n + 1))

end

end A168637.P16570623750672380350

namespace A168637

/-- `A054405(n+1)-(A276477(n)+A000931(n+1))` -/
def P16570623750672380350.Spec : Prop :=
  ∀ n, P16570623750672380350.a n = A168637 n

end A168637

/-! ## A168637.P11219530204942342885

`A054405(n+1)-(A134816(n+1)+A134816(n+1))`
-/

namespace A168637.P11219530204942342885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054405 (n + 1) - (A134816 (n + 1) + A134816 (n + 1))

end

end A168637.P11219530204942342885

namespace A168637

/-- `A054405(n+1)-(A134816(n+1)+A134816(n+1))` -/
def P11219530204942342885.Spec : Prop :=
  ∀ n, P11219530204942342885.a n = A168637 n

end A168637

/-! ## A168637.P6238421795139630598

`A000931(n+1)+A167385(n)-A054405(n)`
-/

namespace A168637.P6238421795139630598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1) + (A167385 n - A054405 n)

end

end A168637.P6238421795139630598

namespace A168637

/-- `A000931(n+1)+A167385(n)-A054405(n)` -/
def P6238421795139630598.Spec : Prop :=
  ∀ n, P6238421795139630598.a n = A168637 n

end A168637

/-!
# A168638: 

The programs for A168638, there is no canonical definition to state claims against.
-/

/-! ## A168638.P11117737432737515864

`record[n/a(A001221(n))]` with `a(0)=6, a(1)=3, a(2)=1`
-/

namespace A168638.P11117737432737515864
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [6, 3, 1] fun n f1 =>
  (n : ℚ) / f1 (A001221 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168638.P11117737432737515864

/-! ## A168638.P17796384918093489912

`eq[2, and(2, A001221(n+1))]+1`
-/

namespace A168638.P17796384918093489912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A001221 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A168638.P17796384918093489912

/-! ## A168638.P7778719267563607044

`eq[1, A001222(A259936(n+1))]+1`
-/

namespace A168638.P7778719267563607044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A259936 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A168638.P7778719267563607044

/-! ## A168638.P18250048699957597692

`eq[0, A119458(A034444(n+1))]+1`
-/

namespace A168638.P18250048699957597692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119458 (A034444 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A168638.P18250048699957597692

/-! ## A168638.P10512375697031325338

`eq[2, A001222(A105561(n+1)+1)]+1`
-/

namespace A168638.P10512375697031325338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A105561 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A168638.P10512375697031325338

/-!
# A168639: Expansion of x*(1 + x^2 - x^3) / ( (1-x)*(1-x-x^4) ).

The programs for A168639, the canonical program `A168639.P9263804980489267531` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168639 has offset 0).

The definition of A168639 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^3-x^4)/(1-2x+x^2-x^4+x^5))` (program `A168639.P9263804980489267531`, by `A168639.P9263804980489267531.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168639.P9263804980489267531

`ogf((x+x^3-x^4)/(1-2x+x^2-x^4+x^5))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168639

/-- `ogf((x+x^3-x^4)/(1-2x+x^2-x^4+x^5))` -/
def P9263804980489267531.Spec : Prop :=
  ∀ n, P9263804980489267531.a n = A168639 n

theorem P9263804980489267531.correct : P9263804980489267531.Spec := by
  intro n
  simp only [A168639]

end A168639

/-! ## A168639.P7053783149391836010

`A003269(n+4)+A003269(n+2)-A003269(n+1)-1`
-/

namespace A168639.P7053783149391836010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (n + 4) + A003269 (n + 2) - A003269 (n + 1) - 1

end

end A168639.P7053783149391836010

namespace A168639

/-- `A003269(n+4)+A003269(n+2)-A003269(n+1)-1` -/
def P7053783149391836010.Spec : Prop :=
  ∀ n, P7053783149391836010.a n = A168639 n

end A168639

/-! ## A168639.P17528136811409000313

`2*a(n-1)-a(n-2)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=5`
-/

namespace A168639.P17528136811409000313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4, 5] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 4) - a (n - 5)

end

end A168639.P17528136811409000313

namespace A168639

/-- `2*a(n-1)-a(n-2)+a(n-4)-a(n-5)` -/
def P17528136811409000313.Spec : Prop :=
  ∀ n, P17528136811409000313.a n = A168639 n

end A168639

/-! ## A168639.P13823205835167440131

`a(n-1)+a(n-4)+1` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A168639.P13823205835167440131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 4] fun n a =>
  a (n - 1) + (a (n - 4) + 1)

end

end A168639.P13823205835167440131

namespace A168639

/-- `a(n-1)+a(n-4)+1` -/
def P13823205835167440131.Spec : Prop :=
  ∀ n, (P13823205835167440131.a n : ℤ) = A168639 n

end A168639

/-! ## A168639.P10981285845742341910

`A098578(n)+A017898(n+1)`
-/

namespace A168639.P10981285845742341910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098578 n + A017898 (n + 1)

end

end A168639.P10981285845742341910

namespace A168639

/-- `A098578(n)+A017898(n+1)` -/
def P10981285845742341910.Spec : Prop :=
  ∀ n, P10981285845742341910.a n = A168639 n

end A168639

/-! ## A168639.P16590016472562837140

`A098578(n)+Δ[A003269(n+1)]`
-/

namespace A168639.P16590016472562837140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098578 n + (f1 (n + 1) - f1 n)

end

end A168639.P16590016472562837140

namespace A168639

/-- `A098578(n)+Δ[A003269(n+1)]` -/
def P16590016472562837140.Spec : Prop :=
  ∀ n, P16590016472562837140.a n = A168639 n

end A168639

/-! ## A168639.P11871137295868151722

`A017898(n+1)+∑[A017898(n+3)]`
-/

namespace A168639.P11871137295868151722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168639.P11871137295868151722

namespace A168639

/-- `A017898(n+1)+∑[A017898(n+3)]` -/
def P11871137295868151722.Spec : Prop :=
  ∀ n, P11871137295868151722.a n = A168639 n

end A168639

/-! ## A168639.P6383018183024221936

`A017898(n+1)+record[A017898(n)-1]`
-/

namespace A168639.P6383018183024221936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168639.P6383018183024221936

namespace A168639

/-- `A017898(n+1)+record[A017898(n)-1]` -/
def P6383018183024221936.Spec : Prop :=
  ∀ n, P6383018183024221936.a n = A168639 n

end A168639

/-! ## A168639.P513420748461530473

`A003411(n+1)-(A003269(n+1)+1)`
-/

namespace A168639.P513420748461530473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003411 (n + 1) - (A003269 (n + 1) + 1)

end

end A168639.P513420748461530473

namespace A168639

/-- `A003411(n+1)-(A003269(n+1)+1)` -/
def P513420748461530473.Spec : Prop :=
  ∀ n, P513420748461530473.a n = A168639 n

end A168639

/-!
# A168641: Triangle read by rows: T(n,k) = [x^k] p(x,n), where p(x,n) = 3*(x + 1)^n - 2*(x^n + 1) - n*(x + x^(n - 1)) for n >= 2, p(x,0) = 1, and p(x,1) = x + 1.

The programs for A168641, there is no canonical definition to state claims against.
-/

/-! ## A168641.P14705858664338409813

`A007318(n)*A007318(abs(A156609(n)))`
-/

namespace A168641.P14705858664338409813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A007318 |A156609 n|.toNat

end

end A168641.P14705858664338409813

/-! ## A168641.P16140718395228081748

`A097448(A144480(n))`
-/

namespace A168641.P16140718395228081748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (A144480 n).toNat

end

end A168641.P16140718395228081748

/-! ## A168641.P10584519731063760483

`A007318(n)*A192013(A056941(n))`
-/

namespace A168641.P10584519731063760483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A192013 (A056941 n).toNat

end

end A168641.P10584519731063760483

/-! ## A168641.P15427523173137640592

`gcd(A000010(A059328(n)), A144480(n))`
-/

namespace A168641.P15427523173137640592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A059328 n).toNat) (A144480 n)

end

end A168641.P15427523173137640592

/-! ## A168641.P4835871423923345229

`A097448(A003983(n+1)*A007318(n))`
-/

namespace A168641.P4835871423923345229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (A003983 (n + 1) * A007318 n).toNat

end

end A168641.P4835871423923345229

/-!
# A168642: a(n) = (8*2^n + (-1)^n)/3 for n > 0; a(0) = 1.

The programs for A168642, the canonical program `A168642.P5693389622201138132` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168642 has offset 0).

The definition of A168642 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168642.P5693389622201138132

`a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=5, a(2)=11`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168642

/-- `a(n-1)+2*a(n-2)` -/
def P5693389622201138132.Spec : Prop :=
  ∀ n, (P5693389622201138132.a n : ℤ) = A168642 n

theorem P5693389622201138132.correct : P5693389622201138132.Spec := by
  intro n
  simp only [A168642]

end A168642

/-! ## A168642.P318151639522273309

`ogf((1+4x+4x^2)/(1-x-2x^2))`
-/

namespace A168642.P318151639522273309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 4] [1, -1, -2] n

end

end A168642.P318151639522273309

namespace A168642

/-- `ogf((1+4x+4x^2)/(1-x-2x^2))` -/
def P318151639522273309.Spec : Prop :=
  ∀ n, P318151639522273309.a n = A168642 n

end A168642

/-! ## A168642.P3016351056068232153

`2^(n+2)-a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A168642.P3016351056068232153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  (2 ^ (n + 2) : ℤ) - a (n - 1)

end

end A168642.P3016351056068232153

namespace A168642

/-- `2^(n+2)-a(n-1)` -/
def P3016351056068232153.Spec : Prop :=
  ∀ n, P3016351056068232153.a n = A168642 n

end A168642

/-! ## A168642.P7355160088333259414

`floor(4*2^n-a(n-1))` with `a(0)=1, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A168642.P7355160088333259414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  (4 * 2 ^ n : ℤ) - a (n - 1)

end

end A168642.P7355160088333259414

namespace A168642

/-- `floor(4*2^n-a(n-1))` -/
def P7355160088333259414.Spec : Prop :=
  ∀ n, P7355160088333259414.a n = A168642 n

end A168642

/-! ## A168642.P13257527739250959780

`1-2*(n%2-a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A168642.P13257527739250959780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  1 - 2 * (((n % 2 : ℕ) : ℤ) - a (n - 1))

end

end A168642.P13257527739250959780

namespace A168642

/-- `1-2*(n%2-a(n-1))` -/
def P13257527739250959780.Spec : Prop :=
  ∀ n, P13257527739250959780.a n = A168642 n

end A168642

/-! ## A168642.P15364116732650393719

`record[2^(n-1)-a(n-1)]` with `a(0)=1, a(1)=5, a(2)=1`
-/

namespace A168642.P15364116732650393719
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 5, 1] fun n f1 =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168642.P15364116732650393719

namespace A168642

/-- `record[2^(n-1)-a(n-1)]` -/
def P15364116732650393719.Spec : Prop :=
  ∀ n, P15364116732650393719.a n = (A168642 n : ℚ)

end A168642

/-! ## A168642.P17563395649348300594

`xor(3*(2^n-1)+1, round(2^n/3))`
-/

namespace A168642.P17563395649348300594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (3 * ((2 ^ n : ℤ) - 1) + 1) (SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3))

end

end A168642.P17563395649348300594

namespace A168642

/-- `xor(3*(2^n-1)+1, round(2^n/3))` -/
def P17563395649348300594.Spec : Prop :=
  ∀ n, P17563395649348300594.a n = A168642 n

end A168642

/-! ## A168642.P10374640646542136500

`a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=5, a(2)=11`
-/

namespace A168642.P10374640646542136500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 11] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2))

end

end A168642.P10374640646542136500

namespace A168642

/-- `a(n-2)+a(n-1)+a(n-2)` -/
def P10374640646542136500.Spec : Prop :=
  ∀ n, (P10374640646542136500.a n : ℤ) = A168642 n

end A168642

/-! ## A168642.P17765777267739135220

`A169969(Δ[n²])`
-/

namespace A168642.P17765777267739135220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169969 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A168642.P17765777267739135220

namespace A168642

/-- `A169969(Δ[n²])` -/
def P17765777267739135220.Spec : Prop :=
  ∀ n, P17765777267739135220.a n = A168642 n

end A168642

/-! ## A168642.P16460889929936628268

`record[A112031(n+1)]`
-/

namespace A168642.P16460889929936628268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168642.P16460889929936628268

namespace A168642

/-- `record[A112031(n+1)]` -/
def P16460889929936628268.Spec : Prop :=
  ∀ n, P16460889929936628268.a n = A168642 n

end A168642

/-! ## A168642.P15812711548847499548

`record[A112447(n+3)]`
-/

namespace A168642.P15812711548847499548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112447 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168642.P15812711548847499548

namespace A168642

/-- `record[A112447(n+3)]` -/
def P15812711548847499548.Spec : Prop :=
  ∀ n, P15812711548847499548.a n = A168642 n

end A168642

/-! ## A168642.P2197527053288070532

`2*A138587(2*n)+1`
-/

namespace A168642.P2197527053288070532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138587 (2 * n) + 1

end

end A168642.P2197527053288070532

namespace A168642

/-- `2*A138587(2*n)+1` -/
def P2197527053288070532.Spec : Prop :=
  ∀ n, P2197527053288070532.a n = A168642 n

end A168642

/-! ## A168642.P2676790546774331105

`A283642((n+1)%(2*n+1))`
-/

namespace A168642.P2676790546774331105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 ((n + 1) % (2 * n + 1))

end

end A168642.P2676790546774331105

namespace A168642

/-- `A283642((n+1)%(2*n+1))` -/
def P2676790546774331105.Spec : Prop :=
  ∀ n, P2676790546774331105.a n = A168642 n

end A168642

/-! ## A168642.P12961505340031145242

`2*ceil((A134067(n)-1)/3)+1`
-/

namespace A168642.P12961505340031145242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(A134067 n - 1 : ℚ) / 3⌉ + 1

end

end A168642.P12961505340031145242

namespace A168642

/-- `2*ceil((A134067(n)-1)/3)+1` -/
def P12961505340031145242.Spec : Prop :=
  ∀ n, P12961505340031145242.a n = A168642 n

end A168642

/-! ## A168642.P8107436449847609718

`A001045(Δ[n²]-abs(1-n)+1)`
-/

namespace A168642.P8107436449847609718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - |1 - (n : ℤ)| + 1).toNat

end

end A168642.P8107436449847609718

namespace A168642

/-- `A001045(Δ[n²]-abs(1-n)+1)` -/
def P8107436449847609718.Spec : Prop :=
  ∀ n, P8107436449847609718.a n = A168642 n

end A168642

/-! ## A168642.P12049033303929085919

`A112031(A004277(n))`
-/

namespace A168642.P12049033303929085919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112031 (A004277 n).toNat

end

end A168642.P12049033303929085919

namespace A168642

/-- `A112031(A004277(n))` -/
def P12049033303929085919.Spec : Prop :=
  ∀ n, P12049033303929085919.a n = A168642 n

end A168642

/-! ## A168642.P16673869374769546323

`A112447(A103517(n))`
-/

namespace A168642.P16673869374769546323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112447 (A103517 n).toNat

end

end A168642.P16673869374769546323

namespace A168642

/-- `A112447(A103517(n))` -/
def P16673869374769546323.Spec : Prop :=
  ∀ n, P16673869374769546323.a n = A168642 n

end A168642

/-! ## A168642.P3319614746633076745

`A112031(A004275(n+1))`
-/

namespace A168642.P3319614746633076745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112031 (A004275 (n + 1)).toNat

end

end A168642.P3319614746633076745

namespace A168642

/-- `A112031(A004275(n+1))` -/
def P3319614746633076745.Spec : Prop :=
  ∀ n, P3319614746633076745.a n = A168642 n

end A168642

/-! ## A168642.P1358361995699247153

`A112031(A004273(n)+1)`
-/

namespace A168642.P1358361995699247153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112031 (A004273 n + 1).toNat

end

end A168642.P1358361995699247153

namespace A168642

/-- `A112031(A004273(n)+1)` -/
def P1358361995699247153.Spec : Prop :=
  ∀ n, P1358361995699247153.a n = A168642 n

end A168642

/-! ## A168642.P15730133443303164475

`A112447(A163300(n+1))`
-/

namespace A168642.P15730133443303164475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112447 (A163300 (n + 1)).toNat

end

end A168642.P15730133443303164475

namespace A168642

/-- `A112447(A163300(n+1))` -/
def P15730133443303164475.Spec : Prop :=
  ∀ n, P15730133443303164475.a n = A168642 n

end A168642

/-!
# A168643: Triangle read by rows: T(n,k) = [x^k] p(x,n) where p(x,0) = 1, p(x,n) = (6 - n)*(1+x)^n - (5-n)*(1 + x^n) for 1 <= n <= 4, and p (x,n) = 4*(1+x)^n - Sum_{i=0..2} (Sum_{j=0..i} binomial(n, j)*(x^j + x^(n-j))) for n >= 5.

The programs for A168643, there is no canonical definition to state claims against.
-/

/-! ## A168643.P14535829572670850962

`A165418(A155491(n))%14`
-/

namespace A168643.P14535829572670850962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165418 (A155491 n).toNat) 14

end

end A168643.P14535829572670850962

/-! ## A168643.P9141332991479636257

`∑{digits}[A341993(A008459(n)), #]`
-/

namespace A168643.P9141332991479636257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341993 (A008459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A168643.P9141332991479636257

/-! ## A168643.P2821754266779763762

`∑{digits}[A213171(A342890(n)), #]`
-/

namespace A168643.P2821754266779763762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213171 (A342890 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A168643.P2821754266779763762

/-! ## A168643.P4081387460384104697

`∑{digits}[A341993(A007318(n)²), #]`
-/

namespace A168643.P4081387460384104697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341993 (A007318 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A168643.P4081387460384104697

/-! ## A168643.P17111564494267315088

`A007953(A341993(A007318(n)²))`
-/

namespace A168643.P17111564494267315088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A341993 (A007318 n ^ 2).toNat).toNat

end

end A168643.P17111564494267315088

/-!
# A168644: Triangle read by rows: T(n, k) = [x^k] p(x,n), where p(x,0) = 1, p(x,n) = (7 - n)*(1+x)^n - (6-n)*(1 + x^n) for 1 <= n <= 5, and p(x,n) = 5*(1 + x)^n - Sum_{i=0..3} (Sum_{j=0..i} binomial(n, j)*(x^j + x^(n-j))) + (1/6)*n*(n - 1)*(n - 5)*x^(n-3) for n >= 6.

The programs for A168644, there is no canonical definition to state claims against.
-/

/-! ## A168644.P1567774966913626663

`A173528(A174376(n)*A174377(n))`
-/

namespace A168644.P1567774966913626663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173528 (A174376 n * A174377 n).toNat

end

end A168644.P1567774966913626663

/-!
# A168645: Numbers with 2 or 3 prime divisors (counted with multiplicity).

The programs for A168645, the canonical program `A168645.P6081070139458368019` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168645 has offset 1).

The definition of A168645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168645.P16360431687827709341

`eq[3, or(1, A001222(n+1))]+1`
-/

namespace A168645.P16360431687827709341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001222 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A168645.P16360431687827709341

namespace A168645

/-- `eq[3, or(1, A001222(n+1))]+1` -/
def P16360431687827709341.Spec : Prop :=
  ∀ n, (P16360431687827709341.a n : ℤ) = A168645 (n + 1)

end A168645

/-! ## A168645.P9520278447058161806

`eq[1, floor(A001222(n+2)/2)]+2`
-/

namespace A168645.P9520278447058161806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001222 (n + 2) : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A168645.P9520278447058161806

namespace A168645

/-- `eq[1, floor(A001222(n+2)/2)]+2` -/
def P9520278447058161806.Spec : Prop :=
  ∀ n, (P9520278447058161806.a n : ℤ) = A168645 (n + 1)

end A168645

/-! ## A168645.P6081070139458368019

`∪[A001358(n+1), A014612(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A168645

/-- `∪[A001358(n+1), A014612(n+1)]` -/
def P6081070139458368019.Spec : Prop :=
  ∀ n, (P6081070139458368019.a n : ℤ) = A168645 (n + 1)

theorem P6081070139458368019.correct : P6081070139458368019.Spec := by
  intro n
  simp only [A168645, Nat.add_sub_cancel]

end A168645

/-! ## A168645.P8063510322901047322

`∪[A014612(n+1), A077135(n+1)]`
-/

namespace A168645.P8063510322901047322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A168645.P8063510322901047322

namespace A168645

/-- `∪[A014612(n+1), A077135(n+1)]` -/
def P8063510322901047322.Spec : Prop :=
  ∀ n, (P8063510322901047322.a n : ℤ) = A168645 (n + 1)

end A168645

/-! ## A168645.P449743070835746959

`∪[A014612(n+1), A323644(n+1)]`
-/

namespace A168645.P449743070835746959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A168645.P449743070835746959

namespace A168645

/-- `∪[A014612(n+1), A323644(n+1)]` -/
def P449743070835746959.Spec : Prop :=
  ∀ n, (P449743070835746959.a n : ℤ) = A168645 (n + 1)

end A168645

/-! ## A168645.P7696714807330334450

`filter[A037144(n+1), A066247(#)]`
-/

namespace A168645.P7696714807330334450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A168645.P7696714807330334450

namespace A168645

/-- `filter[A037144(n+1), A066247(#)]` -/
def P7696714807330334450.Spec : Prop :=
  ∀ n, P7696714807330334450.a n = A168645 (n + 1)

end A168645

/-! ## A168645.P9008310925135496454

`filter[A037144(n+2), A005171(#)]`
-/

namespace A168645.P9008310925135496454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037144 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A168645.P9008310925135496454

namespace A168645

/-- `filter[A037144(n+2), A005171(#)]` -/
def P9008310925135496454.Spec : Prop :=
  ∀ n, P9008310925135496454.a n = A168645 (n + 1)

end A168645

/-! ## A168645.P9940036411440592582

`∩[A002808(n+1), A037144(n+1)]`
-/

namespace A168645.P9940036411440592582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168645.P9940036411440592582

namespace A168645

/-- `∩[A002808(n+1), A037144(n+1)]` -/
def P9940036411440592582.Spec : Prop :=
  ∀ n, (P9940036411440592582.a n : ℤ) = A168645 (n + 1)

end A168645

/-! ## A168645.P16476418482808745702

`filter[A063989(n+1), A340369(#)]`
-/

namespace A168645.P16476418482808745702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A168645.P16476418482808745702

namespace A168645

/-- `filter[A063989(n+1), A340369(#)]` -/
def P16476418482808745702.Spec : Prop :=
  ∀ n, P16476418482808745702.a n = A168645 (n + 1)

end A168645

/-! ## A168645.P14456025087646064178

`∩[A037144(n+1), A063989(n+1)]`
-/

namespace A168645.P14456025087646064178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168645.P14456025087646064178

namespace A168645

/-- `∩[A037144(n+1), A063989(n+1)]` -/
def P14456025087646064178.Spec : Prop :=
  ∀ n, (P14456025087646064178.a n : ℤ) = A168645 (n + 1)

end A168645

/-! ## A168645.P14480929326046999175

`∩[A063989(n+1), A289555(n+1)]`
-/

namespace A168645.P14480929326046999175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168645.P14480929326046999175

namespace A168645

/-- `∩[A063989(n+1), A289555(n+1)]` -/
def P14480929326046999175.Spec : Prop :=
  ∀ n, (P14480929326046999175.a n : ℤ) = A168645 (n + 1)

end A168645

/-! ## A168645.P5329586235015918293

`filter[A063806(n+1), A340369(#)]`
-/

namespace A168645.P5329586235015918293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A168645.P5329586235015918293

namespace A168645

/-- `filter[A063806(n+1), A340369(#)]` -/
def P5329586235015918293.Spec : Prop :=
  ∀ n, P5329586235015918293.a n = A168645 (n + 1)

end A168645

/-! ## A168645.P15769433724505809482

`∩[A037144(n+1), A063806(n+1)]`
-/

namespace A168645.P15769433724505809482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168645.P15769433724505809482

namespace A168645

/-- `∩[A037144(n+1), A063806(n+1)]` -/
def P15769433724505809482.Spec : Prop :=
  ∀ n, (P15769433724505809482.a n : ℤ) = A168645 (n + 1)

end A168645

/-! ## A168645.P14008441702843972668

`∩[A063806(n+1), A289555(n+1)]`
-/

namespace A168645.P14008441702843972668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168645.P14008441702843972668

namespace A168645

/-- `∩[A063806(n+1), A289555(n+1)]` -/
def P14008441702843972668.Spec : Prop :=
  ∀ n, (P14008441702843972668.a n : ℤ) = A168645 (n + 1)

end A168645

/-! ## A168645.P4500684018427234176

`∩[A063989(n+1), A166718(n+1)]`
-/

namespace A168645.P4500684018427234176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168645.P4500684018427234176

namespace A168645

/-- `∩[A063989(n+1), A166718(n+1)]` -/
def P4500684018427234176.Spec : Prop :=
  ∀ n, (P4500684018427234176.a n : ℤ) = A168645 (n + 1)

end A168645

/-! ## A168645.P5147769423073870328

`filter[A002808(n+1), A340369(#)]`
-/

namespace A168645.P5147769423073870328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A168645.P5147769423073870328

namespace A168645

/-- `filter[A002808(n+1), A340369(#)]` -/
def P5147769423073870328.Spec : Prop :=
  ∀ n, P5147769423073870328.a n = A168645 (n + 1)

end A168645

/-! ## A168645.P4003924101515746394

`filter[A018252(n+2), A340369(#)]`
-/

namespace A168645.P4003924101515746394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A168645.P4003924101515746394

namespace A168645

/-- `filter[A018252(n+2), A340369(#)]` -/
def P4003924101515746394.Spec : Prop :=
  ∀ n, P4003924101515746394.a n = A168645 (n + 1)

end A168645

/-! ## A168645.P8760262033548209006

`filter[A141468(n+3), A340369(#)]`
-/

namespace A168645.P8760262033548209006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A168645.P8760262033548209006

namespace A168645

/-- `filter[A141468(n+3), A340369(#)]` -/
def P8760262033548209006.Spec : Prop :=
  ∀ n, P8760262033548209006.a n = A168645 (n + 1)

end A168645

/-! ## A168645.P1225333693026296752

`filter[A065090(n+3), A340369(#)]`
-/

namespace A168645.P1225333693026296752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A168645.P1225333693026296752

namespace A168645

/-- `filter[A065090(n+3), A340369(#)]` -/
def P1225333693026296752.Spec : Prop :=
  ∀ n, P1225333693026296752.a n = A168645 (n + 1)

end A168645

/-! ## A168645.P5417872655416567108

`eq[3, or(1, ∑{e}[n, #])]`
-/

namespace A168645.P5417872655416567108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A168645.P5417872655416567108

namespace A168645

/-- `eq[3, or(1, ∑{e}[n, #])]` -/
def P5417872655416567108.Spec : Prop :=
  ∀ n, (P5417872655416567108.a n : ℤ) = A168645 (n + 1)

end A168645

/-!
# A168646: Triangle read by rows: T(n,k) = [x^k] p(x,n), where p(x,0) = 1, p(x,n) = (8 - n)*(1+x)^n - (7 - n)*(1 + x^n) for 1 <= n <= 6, and p(x,n) = 6*(1+x)^n - Sum_{i=0..4} (Sum_{j=0..i} binomial(n, j)*(x^j + x^(n-j))) for n >= 7.

The programs for A168646, there is no canonical definition to state claims against.
-/

/-! ## A168646.P16900827865319826034

`A152672(A022166(n))%A153283(n)`
-/

namespace A168646.P16900827865319826034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152672 (A022166 n).toNat) (A153283 n)

end

end A168646.P16900827865319826034

/-! ## A168646.P10613978779308517520

`gcd(A103452(n), A152672(A022166(n)))`
-/

namespace A168646.P10613978779308517520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103452 n) (A152672 (A022166 n).toNat)

end

end A168646.P10613978779308517520

/-! ## A168646.P16004953301214815101

`A152672(A022166(n))^A209610(A285522(n+1))`
-/

namespace A168646.P16004953301214815101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152672 (A022166 n).toNat : ℚ) ^ (A209610 (A285522 (n + 1)).toNat : ℤ)

end

end A168646.P16004953301214815101

/-!
# A168647: Reverse (palindrome) of A164844.

The programs for A168647, there is no canonical definition to state claims against.
-/

/-! ## A168647.P3288863209562510641

`A004086(A164844(n))`
-/

namespace A168647.P3288863209562510641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A164844 n).toNat

end

end A168647.P3288863209562510641

/-! ## A168647.P9279201689714788186

`A004186(A164844(n*A294254(n)²))`
-/

namespace A168647.P9279201689714788186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A164844 ((n : ℤ) * A294254 n ^ 2).toNat).toNat

end

end A168647.P9279201689714788186

/-! ## A168647.P16229797319172486086

`A004186(A164844(n)^A294254(n)²)`
-/

namespace A168647.P16229797319172486086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (SequenceMachineLib.roundAway ((A164844 n : ℚ) ^ (A294254 n ^ 2 : ℤ))).toNat

end

end A168647.P16229797319172486086

/-! ## A168647.P12887488451075678558

`A004093(5*A164844(n))`
-/

namespace A168647.P12887488451075678558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (5 * A164844 n).toNat

end

end A168647.P12887488451075678558

/-! ## A168647.P14633122056754110214

`gcd(A000027(A001733(n)), A219967(n))`
-/

namespace A168647.P14633122056754110214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A001733 n).toNat) (A219967 n)

end

end A168647.P14633122056754110214

/-!
# A168648: a(n) = (10*2^n + 2*(-1)^n)/3 for n > 0; a(0) = 1.

The programs for A168648, the canonical program `A168648.P7900848744384330845` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168648 has offset 0).

The definition of A168648 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168648.P7900848744384330845

`a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=6, a(2)=14`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168648

/-- `a(n-1)+2*a(n-2)` -/
def P7900848744384330845.Spec : Prop :=
  ∀ n, (P7900848744384330845.a n : ℤ) = A168648 n

theorem P7900848744384330845.correct : P7900848744384330845.Spec := by
  intro n
  simp only [A168648]

end A168648

/-! ## A168648.P11309534271299111267

`ogf((1+5x+6x^2)/(1-x-2x^2))`
-/

namespace A168648.P11309534271299111267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 6] [1, -1, -2] n

end

end A168648.P11309534271299111267

namespace A168648

/-- `ogf((1+5x+6x^2)/(1-x-2x^2))` -/
def P11309534271299111267.Spec : Prop :=
  ∀ n, P11309534271299111267.a n = A168648 n

end A168648

/-! ## A168648.P5719264727857102512

`record[xor(floor(2^(n-1)), A078008(n))]`
-/

namespace A168648.P5719264727857102512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A078008 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168648.P5719264727857102512

namespace A168648

/-- `record[xor(floor(2^(n-1)), A078008(n))]` -/
def P5719264727857102512.Spec : Prop :=
  ∀ n, P5719264727857102512.a n = A168648 n

end A168648

/-! ## A168648.P835267759414175899

`A151794(floor(a(n-1))/a(n-1)+n+1)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A168648.P835267759414175899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151794 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (a (n - 1) : ℚ) + (n : ℚ) + 1)).toNat

end

end A168648.P835267759414175899

namespace A168648

/-- `A151794(floor(a(n-1))/a(n-1)+n+1)` -/
def P835267759414175899.Spec : Prop :=
  ∀ n, P835267759414175899.a n = A168648 n

end A168648

/-! ## A168648.P14320525236422318675

`A356050(A062545(n))`
-/

namespace A168648.P14320525236422318675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356050 (A062545 n).toNat

end

end A168648.P14320525236422318675

namespace A168648

/-- `A356050(A062545(n))` -/
def P14320525236422318675.Spec : Prop :=
  ∀ n, P14320525236422318675.a n = A168648 n

end A168648

/-! ## A168648.P7366916516023888128

`A084214(A065475(n+1))`
-/

namespace A168648.P7366916516023888128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084214 (A065475 (n + 1)).toNat

end

end A168648.P7366916516023888128

namespace A168648

/-- `A084214(A065475(n+1))` -/
def P7366916516023888128.Spec : Prop :=
  ∀ n, P7366916516023888128.a n = A168648 n

end A168648

/-! ## A168648.P16812649315524600363

`A084214(A114637(n+1))`
-/

namespace A168648.P16812649315524600363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084214 (A114637 (n + 1)).toNat

end

end A168648.P16812649315524600363

namespace A168648

/-- `A084214(A114637(n+1))` -/
def P16812649315524600363.Spec : Prop :=
  ∀ n, P16812649315524600363.a n = A168648 n

end A168648

/-! ## A168648.P13453615348703166982

`A356050(A267872(n+1))`
-/

namespace A168648.P13453615348703166982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356050 (A267872 (n + 1)).toNat

end

end A168648.P13453615348703166982

namespace A168648

/-- `A356050(A267872(n+1))` -/
def P13453615348703166982.Spec : Prop :=
  ∀ n, P13453615348703166982.a n = A168648 n

end A168648

/-! ## A168648.P3590467138666961664

`A084214(A181440(n+2))`
-/

namespace A168648.P3590467138666961664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084214 (A181440 (n + 2)).toNat

end

end A168648.P3590467138666961664

namespace A168648

/-- `A084214(A181440(n+2))` -/
def P3590467138666961664.Spec : Prop :=
  ∀ n, P3590467138666961664.a n = A168648 n

end A168648

/-! ## A168648.P14744469513376046786

`A084214(A184985(n+2))`
-/

namespace A168648.P14744469513376046786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084214 (A184985 (n + 2)).toNat

end

end A168648.P14744469513376046786

namespace A168648

/-- `A084214(A184985(n+2))` -/
def P14744469513376046786.Spec : Prop :=
  ∀ n, P14744469513376046786.a n = A168648 n

end A168648

/-! ## A168648.P9097248060819748764

`A146541(n)-A014113(n)`
-/

namespace A168648.P9097248060819748764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146541 n - A014113 n

end

end A168648.P9097248060819748764

namespace A168648

/-- `A146541(n)-A014113(n)` -/
def P9097248060819748764.Spec : Prop :=
  ∀ n, P9097248060819748764.a n = A168648 n

end A168648

/-! ## A168648.P16333013712971863918

`A084214(A103517(n)-n)`
-/

namespace A168648.P16333013712971863918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084214 (A103517 n - (n : ℤ)).toNat

end

end A168648.P16333013712971863918

namespace A168648

/-- `A084214(A103517(n)-n)` -/
def P16333013712971863918.Spec : Prop :=
  ∀ n, P16333013712971863918.a n = A168648 n

end A168648

/-! ## A168648.P13386200393891565780

`xor(A014113(n), A173033(n))`
-/

namespace A168648.P13386200393891565780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014113 n) (A173033 n)

end

end A168648.P13386200393891565780

namespace A168648

/-- `xor(A014113(n), A173033(n))` -/
def P13386200393891565780.Spec : Prop :=
  ∀ n, P13386200393891565780.a n = A168648 n

end A168648

/-! ## A168648.P11253334249260630633

`A014113(n)+record[A097073(n)]`
-/

namespace A168648.P11253334249260630633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014113 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168648.P11253334249260630633

namespace A168648

/-- `A014113(n)+record[A097073(n)]` -/
def P11253334249260630633.Spec : Prop :=
  ∀ n, P11253334249260630633.a n = A168648 n

end A168648

/-! ## A168648.P9522627409769922808

`xor(Δ[A167167(n)], A007283(n))`
-/

namespace A168648.P9522627409769922808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A007283 n)

end

end A168648.P9522627409769922808

namespace A168648

/-- `xor(Δ[A167167(n)], A007283(n))` -/
def P9522627409769922808.Spec : Prop :=
  ∀ n, P9522627409769922808.a n = A168648 n

end A168648

/-! ## A168648.P3752484349454807103

`record[and(A000918(n), A084214(n))]`
-/

namespace A168648.P3752484349454807103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000918 n) (A084214 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168648.P3752484349454807103

namespace A168648

/-- `record[and(A000918(n), A084214(n))]` -/
def P3752484349454807103.Spec : Prop :=
  ∀ n, P3752484349454807103.a n = A168648 n

end A168648

/-! ## A168648.P10281164852961030850

`record[xor(A000079(n), A014113(n))]`
-/

namespace A168648.P10281164852961030850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 n) (A014113 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168648.P10281164852961030850

namespace A168648

/-- `record[xor(A000079(n), A014113(n))]` -/
def P10281164852961030850.Spec : Prop :=
  ∀ n, P10281164852961030850.a n = A168648 n

end A168648

/-! ## A168648.P16491430640393460713

`record[xor(A078008(n), A131577(n))]`
-/

namespace A168648.P16491430640393460713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A078008 n) (A131577 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168648.P16491430640393460713

namespace A168648

/-- `record[xor(A078008(n), A131577(n))]` -/
def P16491430640393460713.Spec : Prop :=
  ∀ n, P16491430640393460713.a n = A168648 n

end A168648

/-! ## A168648.P10214368044005534887

`A084214(2-A000007(n)+n)`
-/

namespace A168648.P10214368044005534887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084214 (2 - A000007 n + (n : ℤ)).toNat

end

end A168648.P10214368044005534887

namespace A168648

/-- `A084214(2-A000007(n)+n)` -/
def P10214368044005534887.Spec : Prop :=
  ∀ n, P10214368044005534887.a n = A168648 n

end A168648

/-!
# A168649: a(n) = (1/n)*Sum_{d|n} moebius(d)*2^(n^2/d).

The programs for A168649, there is no canonical definition to state claims against.
-/

/-! ## A168649.P1656270269547233243

`(n+1)*A001037((n+1)²)`
-/

namespace A168649.P1656270269547233243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001037 ((n + 1) ^ 2)

end

end A168649.P1656270269547233243

/-! ## A168649.P9387438956463754251

`A027375((n+1)²)/(n+1)`
-/

namespace A168649.P9387438956463754251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027375 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A168649.P9387438956463754251

/-! ## A168649.P17193018294966710687

`A059966((n+1)²)*A233583(n+2)`
-/

namespace A168649.P17193018294966710687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 ((n + 1) ^ 2) * A233583 (n + 2)

end

end A168649.P17193018294966710687

/-! ## A168649.P8752588030486737298

`A001037(A077168(n)²)*A077168(n)`
-/

namespace A168649.P8752588030486737298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (A077168 n ^ 2).toNat * A077168 n

end

end A168649.P8752588030486737298

/-! ## A168649.P16642795257676690165

`A001037(A325148(n+2))*A299702(n+1)`
-/

namespace A168649.P16642795257676690165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (A325148 (n + 2)).toNat * A299702 (n + 1)

end

end A168649.P16642795257676690165

/-!
# A168650: Integers that can be generated with a C/C++ expression that is shorter than their decimal representation.

The programs for A168650, the canonical program `A168650.P1467188131186192413` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168650 has offset 1).

The definition of A168650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168650.P11030594498099949383

`(n+1)*(10^(n+1))^(3/(n+1))`
-/

namespace A168650.P11030594498099949383
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (10 ^ (n + 1) : ℝ) ^ (3 / (n + 1 : ℚ) : ℝ)

end

end A168650.P11030594498099949383

namespace A168650

/-- `(n+1)*(10^(n+1))^(3/(n+1))` -/
def P11030594498099949383.Spec : Prop :=
  ∀ n, P11030594498099949383.a n = (A168650 (n + 1) : ℝ)

end A168650

/-! ## A168650.P1467188131186192413

`A027662((n+1)²)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A168650

/-- `A027662((n+1)²)` -/
def P1467188131186192413.Spec : Prop :=
  ∀ n, P1467188131186192413.a n = A168650 (n + 1)

theorem P1467188131186192413.correct : P1467188131186192413.Spec := by
  intro n
  simp only [A168650, Nat.add_sub_cancel]

end A168650

/-! ## A168650.P17256506590931417216

`floor(A027663((n+1)²)/10)/10`
-/

namespace A168650.P17256506590931417216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A027663 ((n + 1) ^ 2) : ℚ) / 10⌋ : ℚ) / 10

end

end A168650.P17256506590931417216

namespace A168650

/-- `floor(A027663((n+1)²)/10)/10` -/
def P17256506590931417216.Spec : Prop :=
  ∀ n, P17256506590931417216.a n = (A168650 (n + 1) : ℚ)

end A168650

/-! ## A168650.P6223126838977732725

`(A158128(10*10*(n+1))-1)/10`
-/

namespace A168650.P6223126838977732725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158128 (10 * (10 * (n + 1))) - 1 : ℚ) / 10

end

end A168650.P6223126838977732725

namespace A168650

/-- `(A158128(10*10*(n+1))-1)/10` -/
def P6223126838977732725.Spec : Prop :=
  ∀ n, P6223126838977732725.a n = (A168650 (n + 1) : ℚ)

end A168650

/-! ## A168650.P12288655094796372709

`A008593(10*10*(n+1))-10*10*(n+1)`
-/

namespace A168650.P12288655094796372709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (10 * (10 * (n + 1))) - (10 * (10 * (n + 1)) : ℤ)

end

end A168650.P12288655094796372709

namespace A168650

/-- `A008593(10*10*(n+1))-10*10*(n+1)` -/
def P12288655094796372709.Spec : Prop :=
  ∀ n, P12288655094796372709.a n = A168650 (n + 1)

end A168650

/-! ## A168650.P307370559603333436

`A195033(A053743(n)+55)`
-/

namespace A168650.P307370559603333436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195033 (A053743 n + 55).toNat

end

end A168650.P307370559603333436

namespace A168650

/-- `A195033(A053743(n)+55)` -/
def P307370559603333436.Spec : Prop :=
  ∀ n, P307370559603333436.a n = A168650 (n + 1)

end A168650

/-! ## A168650.P1593526101737774770

`A019428(A157955(n+1))+7`
-/

namespace A168650.P1593526101737774770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A157955 (n + 1)).toNat + 7

end

end A168650.P1593526101737774770

namespace A168650

/-- `A019428(A157955(n+1))+7` -/
def P1593526101737774770.Spec : Prop :=
  ∀ n, P1593526101737774770.a n = A168650 (n + 1)

end A168650

/-! ## A168650.P1833733417240942043

`A195033(A008602(5*(n+1)))`
-/

namespace A168650.P1833733417240942043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195033 (A008602 (5 * (n + 1))).toNat

end

end A168650.P1833733417240942043

namespace A168650

/-- `A195033(A008602(5*(n+1)))` -/
def P1833733417240942043.Spec : Prop :=
  ∀ n, P1833733417240942043.a n = A168650 (n + 1)

end A168650

/-! ## A168650.P16713067953920894922

`lcm(25*40*(n+1), A020639(A000123(n)))`
-/

namespace A168650.P16713067953920894922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (25 * (40 * (n + 1)) : ℤ) (A020639 (A000123 n).toNat)

end

end A168650.P16713067953920894922

namespace A168650

/-- `lcm(25*40*(n+1), A020639(A000123(n)))` -/
def P16713067953920894922.Spec : Prop :=
  ∀ n, (P16713067953920894922.a n : ℤ) = A168650 (n + 1)

end A168650

/-!
# A168652: Integers that can be generated with a C/C++ expression that is three or more characters shorter than their decimal representation.

The programs for A168652, there is no canonical definition to state claims against.
-/

/-! ## A168652.P1818772554377240043

`(n+1)/(1/10)^5`
-/

namespace A168652.P1818772554377240043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((1 : ℚ) / 10) ^ 5

end

end A168652.P1818772554377240043

/-!
# A168653: G.f. satisfies: A(x*A(x)) = G(x) where G(x) = 1 + x*G(x)^3 is the g.f. of A001764.

The programs for A168653, there is no canonical definition to state claims against.
-/

/-! ## A168653.P5089729285578319215

`A245573(A110679(n))`
-/

namespace A168653.P5089729285578319215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245573 (A110679 n).toNat

end

end A168653.P5089729285578319215

/-! ## A168653.P8522475132786057239

`A076885(A245734(n+1))`
-/

namespace A168653.P8522475132786057239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A245734 (n + 1)).toNat

end

end A168653.P8522475132786057239

/-! ## A168653.P7211540797721732470

`A261585(A151432(n+1))`
-/

namespace A168653.P7211540797721732470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A151432 (n + 1)).toNat

end

end A168653.P7211540797721732470

/-!
# A168655: Number of compositions such that the number of parts is divisible by the first part.

The programs for A168655, there is no canonical definition to state claims against.
-/

/-! ## A168655.P18337984662667475767

`abs(Δ[A101510(abs(1-n))])`
-/

namespace A168655.P18337984662667475767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101510 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A168655.P18337984662667475767

/-! ## A168655.P14189505406223935378

`A002265(A023421(n)+Δ[A200662(n+1)])`
-/

namespace A168655.P14189505406223935378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A023421 n + (f1 (n + 1) - f1 n)).toNat

end

end A168655.P14189505406223935378

/-! ## A168655.P9818042515148522439

`A293364(n)-A185644(A277934(n)+A035377(n))`
-/

namespace A168655.P9818042515148522439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293364 n - A185644 (A277934 n + A035377 n).toNat

end

end A168655.P9818042515148522439

/-! ## A168655.P115166880937564084

`A293364(n)-A185644(A277934(n)+A185644(n+5))`
-/

namespace A168655.P115166880937564084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293364 n - A185644 (A277934 n + A185644 (n + 5)).toNat

end

end A168655.P115166880937564084

/-! ## A168655.P490367553736223797

`Δ[floor(sqrt(A340163(2*(n+1))))]`
-/

namespace A168655.P490367553736223797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A340163 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168655.P490367553736223797

/-!
# A168656: Number of partitions of n such that the smallest part is divisible by the number of parts.

The programs for A168656, there is no canonical definition to state claims against.
-/

/-! ## A168656.P11039531201309090126

`∑[A064391(record[A189506(n+1)])]`
-/

namespace A168656.P11039531201309090126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189506 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064391 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168656.P11039531201309090126

/-! ## A168656.P10146982097207416543

`A054725(or(A030037(n), A187947(n+1)))`
-/

namespace A168656.P10146982097207416543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (Int.lor (A030037 n) (A187947 (n + 1))).toNat

end

end A168656.P10146982097207416543

/-! ## A168656.P17165012586092301438

`A035451(lt[A271703(n), A237984(3*n+1)])`
-/

namespace A168656.P17165012586092301438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237984 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035451 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A168656.P17165012586092301438

/-!
# A168657: Number of partitions of n such that the number of parts is divisible by the smallest part.

The programs for A168657, there is no canonical definition to state claims against.
-/

/-! ## A168657.P16911743754181917834

`A191228(A006141(3*n+1))+A000041(n)`
-/

namespace A168657.P16911743754181917834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191228 (A006141 (3 * n + 1)).toNat + A000041 n

end

end A168657.P16911743754181917834

/-! ## A168657.P5443010387649284391

`A288529(A000041(n)-A083918(3*(n+1)))`
-/

namespace A168657.P5443010387649284391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288529 (A000041 n - A083918 (3 * (n + 1))).toNat

end

end A168657.P5443010387649284391

/-! ## A168657.P15234899153100071512

`floor(A322413(A000041(n))/10)`
-/

namespace A168657.P15234899153100071512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A322413 (A000041 n).toNat : ℚ) / 10⌋

end

end A168657.P15234899153100071512

/-! ## A168657.P12872521771915997256

`A320052(A000009(n))+A000041(n)`
-/

namespace A168657.P12872521771915997256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320052 (A000009 n).toNat + A000041 n

end

end A168657.P12872521771915997256

/-! ## A168657.P12048155460729906618

`A304497(A116901(n))-A116901(n)`
-/

namespace A168657.P12048155460729906618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304497 (A116901 n).toNat - A116901 n

end

end A168657.P12048155460729906618

/-!
# A168658: a(n) = ceiling(n^n/2).

The programs for A168658, the canonical program `A168658.P11323626686845506932` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168658 has offset 0).

The definition of A168658 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n^n/2)` (program `A168658.P11323626686845506932`, by `A168658.P11323626686845506932.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168658.P11323626686845506932

`ceil(n^n/2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168658

/-- `ceil(n^n/2)` -/
def P11323626686845506932.Spec : Prop :=
  ∀ n, P11323626686845506932.a n = A168658 n

theorem P11323626686845506932.correct : P11323626686845506932.Spec := by
  intro n
  simp only [A168658]

end A168658

/-! ## A168658.P13508354016720444547

`and(n^n+1, -2)/2`
-/

namespace A168658.P13508354016720444547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n ^ n + 1 : ℤ) (-2) : ℚ) / 2

end

end A168658.P13508354016720444547

namespace A168658

/-- `and(n^n+1, -2)/2` -/
def P13508354016720444547.Spec : Prop :=
  ∀ n, P13508354016720444547.a n = (A168658 n : ℚ)

end A168658

/-! ## A168658.P4567528396579696947

`round((n%(n+1))^n/2)`
-/

namespace A168658.P4567528396579696947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n % (n + 1)) ^ n : ℕ) : ℚ) / 2)

end

end A168658.P4567528396579696947

namespace A168658

/-- `round((n%(n+1))^n/2)` -/
def P4567528396579696947.Spec : Prop :=
  ∀ n, P4567528396579696947.a n = A168658 n

end A168658

/-! ## A168658.P16414428247589547532

`round(gcd(n, 2*n)^n/2)`
-/

namespace A168658.P16414428247589547532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.gcd n (2 * n) ^ n : ℚ) / 2)

end

end A168658.P16414428247589547532

namespace A168658

/-- `round(gcd(n, 2*n)^n/2)` -/
def P16414428247589547532.Spec : Prop :=
  ∀ n, P16414428247589547532.a n = A168658 n

end A168658

/-! ## A168658.P3455684049664912254

`round((and(1, n)+n^n)/2)`
-/

namespace A168658.P3455684049664912254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.land 1 n + n ^ n : ℚ) / 2)

end

end A168658.P3455684049664912254

namespace A168658

/-- `round((and(1, n)+n^n)/2)` -/
def P3455684049664912254.Spec : Prop :=
  ∀ n, P3455684049664912254.a n = A168658 n

end A168658

/-! ## A168658.P13499906361432742321

`round(round(acot(n)+n)^n/2)`
-/

namespace A168658.P13499906361432742321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) ^ n : ℚ) / 2)

end

end A168658.P13499906361432742321

namespace A168658

/-- `round(round(acot(n)+n)^n/2)` -/
def P13499906361432742321.Spec : Prop :=
  ∀ n, P13499906361432742321.a n = A168658 n

end A168658

/-! ## A168658.P12106841484948243122

`floor(or(3, 2*n^n+2)/4)`
-/

namespace A168658.P12106841484948243122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 3 (2 * n ^ n + 2) : ℚ) / 4⌋

end

end A168658.P12106841484948243122

namespace A168658

/-- `floor(or(3, 2*n^n+2)/4)` -/
def P12106841484948243122.Spec : Prop :=
  ∀ n, P12106841484948243122.a n = A168658 n

end A168658

/-! ## A168658.P10383375040947264426

`floor(A014566(n)/2)`
-/

namespace A168658.P10383375040947264426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014566 n : ℚ) / 2⌋

end

end A168658.P10383375040947264426

namespace A168658

/-- `floor(A014566(n)/2)` -/
def P10383375040947264426.Spec : Prop :=
  ∀ n, P10383375040947264426.a n = A168658 n

end A168658

/-! ## A168658.P4956010579245975505

`round(A000312(n)/2)`
-/

namespace A168658.P4956010579245975505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000312 n : ℚ) / 2)

end

end A168658.P4956010579245975505

namespace A168658

/-- `round(A000312(n)/2)` -/
def P4956010579245975505.Spec : Prop :=
  ∀ n, P4956010579245975505.a n = A168658 n

end A168658

/-! ## A168658.P15408760290852561390

`round(A007318(∑[n]+1)^n/2)`
-/

namespace A168658.P15408760290852561390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ n : ℚ) / 2)

end

end A168658.P15408760290852561390

namespace A168658

/-- `round(A007318(∑[n]+1)^n/2)` -/
def P15408760290852561390.Spec : Prop :=
  ∀ n, P15408760290852561390.a n = A168658 n

end A168658

/-!
# A168659: Number of partitions of n such that the number of parts is divisible by the greatest part. Also number of partitions of n such that the greatest part is divisible by the number of parts.

The programs for A168659, there is no canonical definition to state claims against.
-/

/-! ## A168659.P15509407263637211526

`Δ[A000070(n)]-A200727(n+1)`
-/

namespace A168659.P15509407263637211526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A200727 (n + 1)

end

end A168659.P15509407263637211526

/-! ## A168659.P834145717875869758

`record[A035363(n)]-A200727(n+1)`
-/

namespace A168659.P834145717875869758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A200727 (n + 1)

end

end A168659.P834145717875869758

/-! ## A168659.P7998422353613349976

`record[A035444(n)]-A200727(n+1)`
-/

namespace A168659.P7998422353613349976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A200727 (n + 1)

end

end A168659.P7998422353613349976

/-! ## A168659.P7242442896515955473

`record[A114099(n)]-A200727(n+1)`
-/

namespace A168659.P7242442896515955473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A200727 (n + 1)

end

end A168659.P7242442896515955473

/-! ## A168659.P15924160128428658687

`A000041(n+1)-A200727(n+1)`
-/

namespace A168659.P15924160128428658687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A200727 (n + 1)

end

end A168659.P15924160128428658687

/-! ## A168659.P1703739071671008882

`record[A299200(n+1)]-A200727(n+1)`
-/

namespace A168659.P1703739071671008882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A200727 (n + 1)

end

end A168659.P1703739071671008882

/-! ## A168659.P13754323397328648822

`record[A026794(n+1)]-A200727(n+1)`
-/

namespace A168659.P13754323397328648822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A200727 (n + 1)

end

end A168659.P13754323397328648822

/-!
# A168660: a(n) = n^7*(n^3 + 1)/2.

The programs for A168660, the canonical program `A168660.P1508116402199283379` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168660 has offset 0).

The definition of A168660 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168660.P15369214076335428738

`n^7*(n^3+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168660.P15369214076335428738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 7 * (n ^ 3 + 1) : ℚ) / 2

end

end A168660.P15369214076335428738

namespace A168660

/-- `n^7*(n^3+1)/2` -/
def P15369214076335428738.Spec : Prop :=
  ∀ n, P15369214076335428738.a n = (A168660 n : ℚ)

end A168660

/-! ## A168660.P1508116402199283379

`n^4*C(n^3+1, 2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168660

/-- `n^4*C(n^3+1, 2)` -/
def P1508116402199283379.Spec : Prop :=
  ∀ n, (P1508116402199283379.a n : ℤ) = A168660 n

theorem P1508116402199283379.correct : P1508116402199283379.Spec := by
  intro n
  simp only [A168660]

end A168660

/-! ## A168660.P10099234944545749578

`n*A168555(n)`
-/

namespace A168660.P10099234944545749578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168555 n

end

end A168660.P10099234944545749578

namespace A168660

/-- `n*A168555(n)` -/
def P10099234944545749578.Spec : Prop :=
  ∀ n, P10099234944545749578.a n = A168660 n

end A168660

/-! ## A168660.P11934185710354141997

`n²*A168371(n)`
-/

namespace A168660.P11934185710354141997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168371 n

end

end A168660.P11934185710354141997

namespace A168660

/-- `n²*A168371(n)` -/
def P11934185710354141997.Spec : Prop :=
  ∀ n, P11934185710354141997.a n = A168660 n

end A168660

/-! ## A168660.P15322715589778473493

`n^3*A168194(n)`
-/

namespace A168660.P15322715589778473493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A168194 n

end

end A168660.P15322715589778473493

namespace A168660

/-- `n^3*A168194(n)` -/
def P15322715589778473493.Spec : Prop :=
  ∀ n, P15322715589778473493.a n = A168660 n

end A168660

/-! ## A168660.P18240780240293411184

`n²²*A071232(n)`
-/

namespace A168660.P18240780240293411184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A071232 n

end

end A168660.P18240780240293411184

namespace A168660

/-- `n²²*A071232(n)` -/
def P18240780240293411184.Spec : Prop :=
  ∀ n, P18240780240293411184.a n = A168660 n

end A168660

/-! ## A168660.P5302665275330033619

`A001014(n)*A027441(n)`
-/

namespace A168660.P5302665275330033619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n * A027441 n

end

end A168660.P5302665275330033619

namespace A168660

/-- `A001014(n)*A027441(n)` -/
def P5302665275330033619.Spec : Prop :=
  ∀ n, P5302665275330033619.a n = A168660 n

end A168660

/-! ## A168660.P5626188997084056376

`A000584(n)*A101378(n)`
-/

namespace A168660.P5626188997084056376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n * A101378 n

end

end A168660.P5626188997084056376

namespace A168660

/-- `A000584(n)*A101378(n)` -/
def P5626188997084056376.Spec : Prop :=
  ∀ n, P5626188997084056376.a n = A168660 n

end A168660

/-! ## A168660.P10837348457556091955

`A002061(n)*A168635(n)`
-/

namespace A168660.P10837348457556091955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n * A168635 n

end

end A168660.P10837348457556091955

namespace A168660

/-- `A002061(n)*A168635(n)` -/
def P10837348457556091955.Spec : Prop :=
  ∀ n, P10837348457556091955.a n = A168660 n

end A168660

/-! ## A168660.P9137585375827665587

`A168371(n)*A253909(n)`
-/

namespace A168660.P9137585375827665587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168371 n * A253909 n

end

end A168660.P9137585375827665587

namespace A168660

/-- `A168371(n)*A253909(n)` -/
def P9137585375827665587.Spec : Prop :=
  ∀ n, P9137585375827665587.a n = A168660 n

end A168660

/-! ## A168660.P17600435119395781597

`A168351(n)*A309372(n)`
-/

namespace A168660.P17600435119395781597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168351 n * A309372 n

end

end A168660.P17600435119395781597

namespace A168660

/-- `A168351(n)*A309372(n)` -/
def P17600435119395781597.Spec : Prop :=
  ∀ n, P17600435119395781597.a n = A168660 n

end A168660

/-! ## A168660.P5198175763310359404

`lcm(A027441(n), A168635(n))`
-/

namespace A168660.P5198175763310359404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027441 n) (A168635 n)

end

end A168660.P5198175763310359404

namespace A168660

/-- `lcm(A027441(n), A168635(n))` -/
def P5198175763310359404.Spec : Prop :=
  ∀ n, (P5198175763310359404.a n : ℤ) = A168660 n

end A168660

/-! ## A168660.P8782478633757032853

`A168029(n)+A168118(n)-n`
-/

namespace A168660.P8782478633757032853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168029 n + (A168118 n - (n : ℤ))

end

end A168660.P8782478633757032853

namespace A168660

/-- `A168029(n)+A168118(n)-n` -/
def P8782478633757032853.Spec : Prop :=
  ∀ n, P8782478633757032853.a n = A168660 n

end A168660

/-! ## A168660.P14137983980721988420

`A168118(n)+A168526(n)-A167963(n)`
-/

namespace A168660.P14137983980721988420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168118 n + (A168526 n - A167963 n)

end

end A168660.P14137983980721988420

namespace A168660

/-- `A168118(n)+A168526(n)-A167963(n)` -/
def P14137983980721988420.Spec : Prop :=
  ∀ n, P14137983980721988420.a n = A168660 n

end A168660

/-! ## A168660.P13686894824901362155

`A168029(n)+A170793(n)-A168119(n)`
-/

namespace A168660.P13686894824901362155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168029 n + (A170793 n - A168119 n)

end

end A168660.P13686894824901362155

namespace A168660

/-- `A168029(n)+A170793(n)-A168119(n)` -/
def P13686894824901362155.Spec : Prop :=
  ∀ n, P13686894824901362155.a n = A168660 n

end A168660

/-!
# A168661: a(n) = n^7*(n^4 + 1)/2.

The programs for A168661, the canonical program `A168661.P5734689562907993861` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168661 has offset 0).

The definition of A168661 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168661.P16691281463102136929

`n^7*(n^4+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168661.P16691281463102136929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 7 * (n ^ 4 + 1) : ℚ) / 2

end

end A168661.P16691281463102136929

namespace A168661

/-- `n^7*(n^4+1)/2` -/
def P16691281463102136929.Spec : Prop :=
  ∀ n, P16691281463102136929.a n = (A168661 n : ℚ)

end A168661

/-! ## A168661.P5734689562907993861

`n^3*C(n^4+1, 2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168661

/-- `n^3*C(n^4+1, 2)` -/
def P5734689562907993861.Spec : Prop :=
  ∀ n, (P5734689562907993861.a n : ℤ) = A168661 n

theorem P5734689562907993861.correct : P5734689562907993861.Spec := by
  intro n
  simp only [A168661]

end A168661

/-! ## A168661.P3547613817144180522

`n*A168564(n)`
-/

namespace A168661.P3547613817144180522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168564 n

end

end A168661.P3547613817144180522

namespace A168661

/-- `n*A168564(n)` -/
def P3547613817144180522.Spec : Prop :=
  ∀ n, P3547613817144180522.a n = A168661 n

end A168661

/-! ## A168661.P16141076625526287603

`n²*A168372(n)`
-/

namespace A168661.P16141076625526287603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168372 n

end

end A168661.P16141076625526287603

namespace A168661

/-- `n²*A168372(n)` -/
def P16141076625526287603.Spec : Prop :=
  ∀ n, P16141076625526287603.a n = A168661 n

end A168661

/-! ## A168661.P11680412464141740120

`n^3*A071231(n)`
-/

namespace A168661.P11680412464141740120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A071231 n

end

end A168661.P11680412464141740120

namespace A168661

/-- `n^3*A071231(n)` -/
def P11680412464141740120.Spec : Prop :=
  ∀ n, P11680412464141740120.a n = A168661 n

end A168661

/-! ## A168661.P14389830523117656702

`n²²*A168179(n)`
-/

namespace A168661.P14389830523117656702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A168179 n

end

end A168661.P14389830523117656702

namespace A168661

/-- `n²²*A168179(n)` -/
def P14389830523117656702.Spec : Prop :=
  ∀ n, P14389830523117656702.a n = A168661 n

end A168661

/-! ## A168661.P435437986971186323

`A001014(n)*A021003(n)`
-/

namespace A168661.P435437986971186323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n * A021003 n

end

end A168661.P435437986971186323

namespace A168661

/-- `A001014(n)*A021003(n)` -/
def P435437986971186323.Spec : Prop :=
  ∀ n, P435437986971186323.a n = A168661 n

end A168661

/-! ## A168661.P1283274065430385650

`A000584(n)*A168122(n)`
-/

namespace A168661.P1283274065430385650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n * A168122 n

end

end A168661.P1283274065430385650

namespace A168661

/-- `A000584(n)*A168122(n)` -/
def P1283274065430385650.Spec : Prop :=
  ∀ n, P1283274065430385650.a n = A168661 n

end A168661

/-! ## A168661.P18439240485179744107

`A168372(n)*A253909(n)`
-/

namespace A168661.P18439240485179744107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168372 n * A253909 n

end

end A168661.P18439240485179744107

namespace A168661

/-- `A168372(n)*A253909(n)` -/
def P18439240485179744107.Spec : Prop :=
  ∀ n, P18439240485179744107.a n = A168661 n

end A168661

/-! ## A168661.P9074120868426460184

`A168412(n)+n²*A321672(n)`
-/

namespace A168661.P9074120868426460184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168412 n + (n ^ 2 : ℤ) * A321672 n

end

end A168661.P9074120868426460184

namespace A168661

/-- `A168412(n)+n²*A321672(n)` -/
def P9074120868426460184.Spec : Prop :=
  ∀ n, P9074120868426460184.a n = A168661 n

end A168661

/-! ## A168661.P8928178878430024511

`n*A168178(n²)`
-/

namespace A168661.P8928178878430024511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168178 (n ^ 2)

end

end A168661.P8928178878430024511

namespace A168661

/-- `n*A168178(n²)` -/
def P8928178878430024511.Spec : Prop :=
  ∀ n, P8928178878430024511.a n = A168661 n

end A168661

/-! ## A168661.P11990036898336397884

`record[A037213(n)*A168178(n)]`
-/

namespace A168661.P11990036898336397884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n * A168178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168661.P11990036898336397884

namespace A168661

/-- `record[A037213(n)*A168178(n)]` -/
def P11990036898336397884.Spec : Prop :=
  ∀ n, P11990036898336397884.a n = A168661 n

end A168661

/-!
# A168662: a(n) = n^7*(n^5 + 1)/2.

The programs for A168662, the canonical program `A168662.P4591514900547951903` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168662 has offset 0).

The definition of A168662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168662.P4591514900547951903

`n²*C(n^5+1, 2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168662

/-- `n²*C(n^5+1, 2)` -/
def P4591514900547951903.Spec : Prop :=
  ∀ n, (P4591514900547951903.a n : ℤ) = A168662 n

theorem P4591514900547951903.correct : P4591514900547951903.Spec := by
  intro n
  simp only [A168662]

end A168662

/-! ## A168662.P3334968705015077912

`n^7*(n^5+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168662.P3334968705015077912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 7 * (n ^ 5 + 1) : ℚ) / 2

end

end A168662.P3334968705015077912

namespace A168662

/-- `n^7*(n^5+1)/2` -/
def P3334968705015077912.Spec : Prop :=
  ∀ n, P3334968705015077912.a n = (A168662 n : ℚ)

end A168662

/-! ## A168662.P15748572842765456793

`n*A168627(n)`
-/

namespace A168662.P15748572842765456793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168627 n

end

end A168662.P15748572842765456793

namespace A168662

/-- `n*A168627(n)` -/
def P15748572842765456793.Spec : Prop :=
  ∀ n, P15748572842765456793.a n = A168662 n

end A168662

/-! ## A168662.P17051553483451004604

`n²*A071236(n)`
-/

namespace A168662.P17051553483451004604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A071236 n

end

end A168662.P17051553483451004604

namespace A168662

/-- `n²*A071236(n)` -/
def P17051553483451004604.Spec : Prop :=
  ∀ n, P17051553483451004604.a n = A168662 n

end A168662

/-! ## A168662.P15295547627059149665

`n^3*A168196(n)`
-/

namespace A168662.P15295547627059149665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A168196 n

end

end A168662.P15295547627059149665

namespace A168662

/-- `n^3*A168196(n)` -/
def P15295547627059149665.Spec : Prop :=
  ∀ n, P15295547627059149665.a n = A168662 n

end A168662

/-! ## A168662.P5335492033760352853

`n²²*A168180(n)`
-/

namespace A168662.P5335492033760352853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A168180 n

end

end A168662.P5335492033760352853

namespace A168662

/-- `n²²*A168180(n)` -/
def P5335492033760352853.Spec : Prop :=
  ∀ n, P5335492033760352853.a n = A168662 n

end A168662

/-! ## A168662.P3973980990860268042

`A000584(n)*A168123(n)`
-/

namespace A168662.P3973980990860268042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n * A168123 n

end

end A168662.P3973980990860268042

namespace A168662

/-- `A000584(n)*A168123(n)` -/
def P3973980990860268042.Spec : Prop :=
  ∀ n, P3973980990860268042.a n = A168662 n

end A168662

/-! ## A168662.P11804272041110689751

`A001014(n)*A167963(n)`
-/

namespace A168662.P11804272041110689751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n * A167963 n

end

end A168662.P11804272041110689751

namespace A168662

/-- `A001014(n)*A167963(n)` -/
def P11804272041110689751.Spec : Prop :=
  ∀ n, P11804272041110689751.a n = A168662 n

end A168662

/-! ## A168662.P10226224483302418338

`A060884(n)*A168635(n)`
-/

namespace A168662.P10226224483302418338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 n * A168635 n

end

end A168662.P10226224483302418338

namespace A168662

/-- `A060884(n)*A168635(n)` -/
def P10226224483302418338.Spec : Prop :=
  ∀ n, P10226224483302418338.a n = A168662 n

end A168662

/-! ## A168662.P9870490677998234486

`lcm(A071236(n), A168635(n))`
-/

namespace A168662.P9870490677998234486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071236 n) (A168635 n)

end

end A168662.P9870490677998234486

namespace A168662

/-- `lcm(A071236(n), A168635(n))` -/
def P9870490677998234486.Spec : Prop :=
  ∀ n, (P9870490677998234486.a n : ℤ) = A168662 n

end A168662

/-! ## A168662.P16888230025382935065

`ceil(A170787(n)/A233583(n+1)²)`
-/

namespace A168662.P16888230025382935065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A170787 n : ℚ) / (A233583 (n + 1) ^ 2 : ℚ)⌉

end

end A168662.P16888230025382935065

namespace A168662

/-- `ceil(A170787(n)/A233583(n+1)²)` -/
def P16888230025382935065.Spec : Prop :=
  ∀ n, P16888230025382935065.a n = A168662 n

end A168662

/-! ## A168662.P15327882868273519415

`A168526(n)+A085744(n²)`
-/

namespace A168662.P15327882868273519415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168526 n + A085744 (n ^ 2)

end

end A168662.P15327882868273519415

namespace A168662

/-- `A168526(n)+A085744(n²)` -/
def P15327882868273519415.Spec : Prop :=
  ∀ n, P15327882868273519415.a n = A168662 n

end A168662

/-!
# A168663: a(n) = n^7*(n^6 + 1)/2.

The programs for A168663, the canonical program `A168663.P13239585030243919501` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168663 has offset 0).

The definition of A168663 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168663.P13239585030243919501

`(n^13+n^7)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168663

/-- `(n^13+n^7)/2` -/
def P13239585030243919501.Spec : Prop :=
  ∀ n, P13239585030243919501.a n = (A168663 n : ℚ)

end A168663

/-! ## A168663.P5287141475638256445

`n^7*(n^6+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168663.P5287141475638256445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 7 * (n ^ 6 + 1) : ℚ) / 2

end

end A168663.P5287141475638256445

namespace A168663

/-- `n^7*(n^6+1)/2` -/
def P5287141475638256445.Spec : Prop :=
  ∀ n, P5287141475638256445.a n = (A168663 n : ℚ)

end A168663

/-! ## A168663.P15886371287759775119

`n*A071235(n)`
-/

namespace A168663.P15886371287759775119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A071235 n

end

end A168663.P15886371287759775119

namespace A168663

/-- `n*A071235(n)` -/
def P15886371287759775119.Spec : Prop :=
  ∀ n, P15886371287759775119.a n = A168663 n

end A168663

/-! ## A168663.P16481830634104690767

`n²*A168412(n)`
-/

namespace A168663.P16481830634104690767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168412 n

end

end A168663.P16481830634104690767

namespace A168663

/-- `n²*A168412(n)` -/
def P16481830634104690767.Spec : Prop :=
  ∀ n, P16481830634104690767.a n = A168663 n

end A168663

/-! ## A168663.P9323485686422900659

`n^3*A168220(n)`
-/

namespace A168663.P9323485686422900659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A168220 n

end

end A168663.P9323485686422900659

namespace A168663

/-- `n^3*A168220(n)` -/
def P9323485686422900659.Spec : Prop :=
  ∀ n, P9323485686422900659.a n = A168663 n

end A168663

/-! ## A168663.P17225966718092082861

`n²²*A168187(n)`
-/

namespace A168663.P17225966718092082861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A168187 n

end

end A168663.P17225966718092082861

namespace A168663

/-- `n²²*A168187(n)` -/
def P17225966718092082861.Spec : Prop :=
  ∀ n, P17225966718092082861.a n = A168663 n

end A168663

/-! ## A168663.P6334994355350047772

`A000584(n)*A168124(n)`
-/

namespace A168663.P6334994355350047772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n * A168124 n

end

end A168663.P6334994355350047772

namespace A168663

/-- `A000584(n)*A168124(n)` -/
def P6334994355350047772.Spec : Prop :=
  ∀ n, P6334994355350047772.a n = A168663 n

end A168663

/-! ## A168663.P17038291963069676863

`A001014(n)*A168029(n)`
-/

namespace A168663.P17038291963069676863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n * A168029 n

end

end A168663.P17038291963069676863

namespace A168663

/-- `A001014(n)*A168029(n)` -/
def P17038291963069676863.Spec : Prop :=
  ∀ n, P17038291963069676863.a n = A168663 n

end A168663

/-! ## A168663.P7006961932822143236

`A060886(n)*A168636(n)`
-/

namespace A168663.P7006961932822143236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060886 n * A168636 n

end

end A168663.P7006961932822143236

namespace A168663

/-- `A060886(n)*A168636(n)` -/
def P7006961932822143236.Spec : Prop :=
  ∀ n, P7006961932822143236.a n = A168663 n

end A168663

/-! ## A168663.P9391602809790916095

`A168412(n)*A253909(n)`
-/

namespace A168663.P9391602809790916095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168412 n * A253909 n

end

end A168663.P9391602809790916095

namespace A168663

/-- `A168412(n)*A253909(n)` -/
def P9391602809790916095.Spec : Prop :=
  ∀ n, P9391602809790916095.a n = A168663 n

end A168663

/-! ## A168663.P15695350563966045927

`floor(A190578(n)/2*A001014(n))`
-/

namespace A168663.P15695350563966045927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A190578 n : ℚ) / 2 * (A001014 n : ℚ)⌋

end

end A168663.P15695350563966045927

namespace A168663

/-- `floor(A190578(n)/2*A001014(n))` -/
def P15695350563966045927.Spec : Prop :=
  ∀ n, P15695350563966045927.a n = A168663 n

end A168663

/-! ## A168663.P18089081887507079281

`floor((A133499(n)/2+n)*A001014(n))`
-/

namespace A168663.P18089081887507079281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A133499 n : ℚ) / 2 + (n : ℚ)) * (A001014 n : ℚ)⌋

end

end A168663.P18089081887507079281

namespace A168663

/-- `floor((A133499(n)/2+n)*A001014(n))` -/
def P18089081887507079281.Spec : Prop :=
  ∀ n, P18089081887507079281.a n = A168663 n

end A168663

/-! ## A168663.P11448543862298553097

`abs((A168123(n)-A161680(n))*A001014(n))`
-/

namespace A168663.P11448543862298553097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A168123 n - A161680 n) * A001014 n|

end

end A168663.P11448543862298553097

namespace A168663

/-- `abs((A168123(n)-A161680(n))*A001014(n))` -/
def P11448543862298553097.Spec : Prop :=
  ∀ n, P11448543862298553097.a n = A168663 n

end A168663

/-! ## A168663.P6456447815775126725

`n*A071232(n²)`
-/

namespace A168663.P6456447815775126725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A071232 (n ^ 2)

end

end A168663.P6456447815775126725

namespace A168663

/-- `n*A071232(n²)` -/
def P6456447815775126725.Spec : Prop :=
  ∀ n, P6456447815775126725.a n = A168663 n

end A168663

/-!
# A168664: a(n) = n^7*(n^7 + 1)/2.

The programs for A168664, the canonical program `A168664.P5989370137945781281` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168664 has offset 0).

The definition of A168664 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168664.P5989370137945781281

`(n^14+n^7)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168664

/-- `(n^14+n^7)/2` -/
def P5989370137945781281.Spec : Prop :=
  ∀ n, P5989370137945781281.a n = (A168664 n : ℚ)

end A168664

/-! ## A168664.P15610395647917150531

`n^7*(n^7+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168664.P15610395647917150531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 7 * (n ^ 7 + 1) : ℚ) / 2

end

end A168664.P15610395647917150531

namespace A168664

/-- `n^7*(n^7+1)/2` -/
def P15610395647917150531.Spec : Prop :=
  ∀ n, P15610395647917150531.a n = (A168664 n : ℚ)

end A168664

/-! ## A168664.P6794985926852625436

`C(n^7+1, 2)`
-/

namespace A168664.P6794985926852625436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 7 + 1) 2

end

end A168664.P6794985926852625436

namespace A168664

/-- `C(n^7+1, 2)` -/
def P6794985926852625436.Spec : Prop :=
  ∀ n, (P6794985926852625436.a n : ℤ) = A168664 n

end A168664

/-! ## A168664.P9256252687920985572

`n*A168631(n)`
-/

namespace A168664.P9256252687920985572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168631 n

end

end A168664.P9256252687920985572

namespace A168664

/-- `n*A168631(n)` -/
def P9256252687920985572.Spec : Prop :=
  ∀ n, P9256252687920985572.a n = A168664 n

end A168664

/-! ## A168664.P2837036784228537116

`n^3*A168225(n)`
-/

namespace A168664.P2837036784228537116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A168225 n

end

end A168664.P2837036784228537116

namespace A168664

/-- `n^3*A168225(n)` -/
def P2837036784228537116.Spec : Prop :=
  ∀ n, P2837036784228537116.a n = A168664 n

end A168664

/-! ## A168664.P12714781608049253599

`n*n*A168432(n)`
-/

namespace A168664.P12714781608049253599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * A168432 n)

end

end A168664.P12714781608049253599

namespace A168664

/-- `n*n*A168432(n)` -/
def P12714781608049253599.Spec : Prop :=
  ∀ n, P12714781608049253599.a n = A168664 n

end A168664

/-! ## A168664.P9136613458927162391

`n²²*A168188(n)`
-/

namespace A168664.P9136613458927162391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A168188 n

end

end A168664.P9136613458927162391

namespace A168664

/-- `n²²*A168188(n)` -/
def P9136613458927162391.Spec : Prop :=
  ∀ n, P9136613458927162391.a n = A168664 n

end A168664

/-! ## A168664.P18160094316272237198

`A000584(n)*A168125(n)`
-/

namespace A168664.P18160094316272237198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n * A168125 n

end

end A168664.P18160094316272237198

namespace A168664

/-- `A000584(n)*A168125(n)` -/
def P18160094316272237198.Spec : Prop :=
  ∀ n, P18160094316272237198.a n = A168664 n

end A168664

/-! ## A168664.P14799662153656749195

`A001014(n)*A168067(n)`
-/

namespace A168664.P14799662153656749195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n * A168067 n

end

end A168664.P14799662153656749195

namespace A168664

/-- `A001014(n)*A168067(n)` -/
def P14799662153656749195.Spec : Prop :=
  ∀ n, P14799662153656749195.a n = A168664 n

end A168664

/-! ## A168664.P7916253646458758536

`A060888(n)*A168635(n)`
-/

namespace A168664.P7916253646458758536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060888 n * A168635 n

end

end A168664.P7916253646458758536

namespace A168664

/-- `A060888(n)*A168635(n)` -/
def P7916253646458758536.Spec : Prop :=
  ∀ n, P7916253646458758536.a n = A168664 n

end A168664

/-! ## A168664.P7821206786389409720

`lcm(A168067(n), A168635(n))`
-/

namespace A168664.P7821206786389409720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168067 n) (A168635 n)

end

end A168664.P7821206786389409720

namespace A168664

/-- `lcm(A168067(n), A168635(n))` -/
def P7821206786389409720.Spec : Prop :=
  ∀ n, (P7821206786389409720.a n : ℤ) = A168664 n

end A168664

/-!
# A168665: a(n) = n^7*(n^8 + 1)/2.

The programs for A168665, the canonical program `A168665.P13214840764465637077` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168665 has offset 0).

The definition of A168665 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168665.P13214840764465637077

`n^7*(n^8+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168665

/-- `n^7*(n^8+1)/2` -/
def P13214840764465637077.Spec : Prop :=
  ∀ n, P13214840764465637077.a n = (A168665 n : ℚ)

end A168665

/-! ## A168665.P12109397109565822608

`n*A168632(n)`
-/

namespace A168665.P12109397109565822608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168632 n

end

end A168665.P12109397109565822608

namespace A168665

/-- `n*A168632(n)` -/
def P12109397109565822608.Spec : Prop :=
  ∀ n, P12109397109565822608.a n = A168665 n

end A168665

/-! ## A168665.P6532754836210548511

`n*n*A168462(n)`
-/

namespace A168665.P6532754836210548511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * A168462 n)

end

end A168665.P6532754836210548511

namespace A168665

/-- `n*n*A168462(n)` -/
def P6532754836210548511.Spec : Prop :=
  ∀ n, P6532754836210548511.a n = A168665 n

end A168665

/-! ## A168665.P4696203484030699316

`n²²*A168189(n)`
-/

namespace A168665.P4696203484030699316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A168189 n

end

end A168665.P4696203484030699316

namespace A168665

/-- `n²²*A168189(n)` -/
def P4696203484030699316.Spec : Prop :=
  ∀ n, P4696203484030699316.a n = A168665 n

end A168665

/-! ## A168665.P4437440519096030027

`A000584(n)*A168126(n)`
-/

namespace A168665.P4437440519096030027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n * A168126 n

end

end A168665.P4437440519096030027

namespace A168665

/-- `A000584(n)*A168126(n)` -/
def P4437440519096030027.Spec : Prop :=
  ∀ n, P4437440519096030027.a n = A168665 n

end A168665

/-! ## A168665.P729860453530510256

`A001014(n)*A168116(n)`
-/

namespace A168665.P729860453530510256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n * A168116 n

end

end A168665.P729860453530510256

namespace A168665

/-- `A001014(n)*A168116(n)` -/
def P729860453530510256.Spec : Prop :=
  ∀ n, P729860453530510256.a n = A168665 n

end A168665

/-! ## A168665.P3012258249849292115

`2*A283033(n)-A283032(n)`
-/

namespace A168665.P3012258249849292115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A283033 n - A283032 n

end

end A168665.P3012258249849292115

namespace A168665

/-- `2*A283033(n)-A283032(n)` -/
def P3012258249849292115.Spec : Prop :=
  ∀ n, P3012258249849292115.a n = A168665 n

end A168665

/-! ## A168665.P16281766377728799520

`floor(sqrt(A001014(n))*A168227(n))`
-/

namespace A168665.P16281766377728799520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A001014 n : ℝ) * (A168227 n : ℝ)⌋

end

end A168665.P16281766377728799520

namespace A168665

/-- `floor(sqrt(A001014(n))*A168227(n))` -/
def P16281766377728799520.Spec : Prop :=
  ∀ n, P16281766377728799520.a n = A168665 n

end A168665

/-! ## A168665.P13414380506523194689

`abs(A001489(n)*A168227(n)*n²)`
-/

namespace A168665.P13414380506523194689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n * A168227 n * (n ^ 2 : ℤ)|

end

end A168665.P13414380506523194689

namespace A168665

/-- `abs(A001489(n)*A168227(n)*n²)` -/
def P13414380506523194689.Spec : Prop :=
  ∀ n, P13414380506523194689.a n = A168665 n

end A168665

/-! ## A168665.P299444678284780156

`n*A168179(n²)`
-/

namespace A168665.P299444678284780156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168179 (n ^ 2)

end

end A168665.P299444678284780156

namespace A168665

/-- `n*A168179(n²)` -/
def P299444678284780156.Spec : Prop :=
  ∀ n, P299444678284780156.a n = A168665 n

end A168665

/-!
# A168666: a(n) = n^7*(n^9 + 1)/2.

The programs for A168666, the canonical program `A168666.P4112952084173959425` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168666 has offset 0).

The definition of A168666 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168666.P4112952084173959425

`n^7*(n^9+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168666

/-- `n^7*(n^9+1)/2` -/
def P4112952084173959425.Spec : Prop :=
  ∀ n, P4112952084173959425.a n = (A168666 n : ℚ)

end A168666

/-! ## A168666.P15363076747122185200

`n*A168633(n)`
-/

namespace A168666.P15363076747122185200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168633 n

end

end A168666.P15363076747122185200

namespace A168666

/-- `n*A168633(n)` -/
def P15363076747122185200.Spec : Prop :=
  ∀ n, P15363076747122185200.a n = A168666 n

end A168666

/-! ## A168666.P16639901131258162239

`n*n*A168471(n)`
-/

namespace A168666.P16639901131258162239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * A168471 n)

end

end A168666.P16639901131258162239

namespace A168666

/-- `n*n*A168471(n)` -/
def P16639901131258162239.Spec : Prop :=
  ∀ n, P16639901131258162239.a n = A168666 n

end A168666

/-! ## A168666.P15257673432380033874

`A000584(n)*A168153(n)`
-/

namespace A168666.P15257673432380033874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n * A168153 n

end

end A168666.P15257673432380033874

namespace A168666

/-- `A000584(n)*A168153(n)` -/
def P15257673432380033874.Spec : Prop :=
  ∀ n, P15257673432380033874.a n = A168666 n

end A168666

/-! ## A168666.P4091344559516249840

`A001014(n)*A168118(n)`
-/

namespace A168666.P4091344559516249840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n * A168118 n

end

end A168666.P4091344559516249840

namespace A168666

/-- `A001014(n)*A168118(n)` -/
def P4091344559516249840.Spec : Prop :=
  ∀ n, P4091344559516249840.a n = A168666 n

end A168666

/-! ## A168666.P14135901475622080394

`A060891(n)*A168660(n)`
-/

namespace A168666.P14135901475622080394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060891 n * A168660 n

end

end A168666.P14135901475622080394

namespace A168666

/-- `A060891(n)*A168660(n)` -/
def P14135901475622080394.Spec : Prop :=
  ∀ n, P14135901475622080394.a n = A168666 n

end A168666

/-! ## A168666.P17069331867594620886

`lcm(A168118(n), A168635(n))`
-/

namespace A168666.P17069331867594620886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168118 n) (A168635 n)

end

end A168666.P17069331867594620886

namespace A168666

/-- `lcm(A168118(n), A168635(n))` -/
def P17069331867594620886.Spec : Prop :=
  ∀ n, (P17069331867594620886.a n : ℤ) = A168666 n

end A168666

/-! ## A168666.P5071481614045935783

`lcm(A168153(n), A168660(n))`
-/

namespace A168666.P5071481614045935783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168153 n) (A168660 n)

end

end A168666.P5071481614045935783

namespace A168666

/-- `lcm(A168153(n), A168660(n))` -/
def P5071481614045935783.Spec : Prop :=
  ∀ n, (P5071481614045935783.a n : ℤ) = A168666 n

end A168666

/-! ## A168666.P9877446015096933967

`floor(sqrt(A001014(n))*A168345(n))`
-/

namespace A168666.P9877446015096933967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A001014 n : ℝ) * (A168345 n : ℝ)⌋

end

end A168666.P9877446015096933967

namespace A168666

/-- `floor(sqrt(A001014(n))*A168345(n))` -/
def P9877446015096933967.Spec : Prop :=
  ∀ n, P9877446015096933967.a n = A168666 n

end A168666

/-! ## A168666.P14924942379728707648

`ceil(A170791(n)/A233583(n+1)²)`
-/

namespace A168666.P14924942379728707648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A170791 n : ℚ) / (A233583 (n + 1) ^ 2 : ℚ)⌉

end

end A168666.P14924942379728707648

namespace A168666

/-- `ceil(A170791(n)/A233583(n+1)²)` -/
def P14924942379728707648.Spec : Prop :=
  ∀ n, P14924942379728707648.a n = A168666 n

end A168666

/-!
# A168667: a(n) = n^7*(n^10 + 1)/2.

The programs for A168667, the canonical program `A168667.P16640913663198838941` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168667 has offset 0).

The definition of A168667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168667.P16640913663198838941

`n^7*(n^10+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168667

/-- `n^7*(n^10+1)/2` -/
def P16640913663198838941.Spec : Prop :=
  ∀ n, P16640913663198838941.a n = (A168667 n : ℚ)

end A168667

/-! ## A168667.P1825027285985410279

`n*A168634(n)`
-/

namespace A168667.P1825027285985410279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168634 n

end

end A168667.P1825027285985410279

namespace A168667

/-- `n*A168634(n)` -/
def P1825027285985410279.Spec : Prop :=
  ∀ n, P1825027285985410279.a n = A168667 n

end A168667

/-! ## A168667.P334270172846053493

`n*n*A168507(n)`
-/

namespace A168667.P334270172846053493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * A168507 n)

end

end A168667.P334270172846053493

namespace A168667

/-- `n*n*A168507(n)` -/
def P334270172846053493.Spec : Prop :=
  ∀ n, P334270172846053493.a n = A168667 n

end A168667

/-! ## A168667.P3451308925707108312

`A001014(n)*A168119(n)`
-/

namespace A168667.P3451308925707108312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n * A168119 n

end

end A168667.P3451308925707108312

namespace A168667

/-- `A001014(n)*A168119(n)` -/
def P3451308925707108312.Spec : Prop :=
  ∀ n, P3451308925707108312.a n = A168667 n

end A168667

/-! ## A168667.P16359901788460067128

`A060892(n)*A168636(n)`
-/

namespace A168667.P16359901788460067128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060892 n * A168636 n

end

end A168667.P16359901788460067128

namespace A168667

/-- `A060892(n)*A168636(n)` -/
def P16359901788460067128.Spec : Prop :=
  ∀ n, P16359901788460067128.a n = A168667 n

end A168667

/-! ## A168667.P17068248917358765008

`lcm(A168119(n), A168636(n))`
-/

namespace A168667.P17068248917358765008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168119 n) (A168636 n)

end

end A168667.P17068248917358765008

namespace A168667

/-- `lcm(A168119(n), A168636(n))` -/
def P17068248917358765008.Spec : Prop :=
  ∀ n, (P17068248917358765008.a n : ℤ) = A168667 n

end A168667

/-! ## A168667.P13183591797172589251

`floor(sqrt(A001014(n))*A168346(n))`
-/

namespace A168667.P13183591797172589251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A001014 n : ℝ) * (A168346 n : ℝ)⌋

end

end A168667.P13183591797172589251

namespace A168667

/-- `floor(sqrt(A001014(n))*A168346(n))` -/
def P13183591797172589251.Spec : Prop :=
  ∀ n, P13183591797172589251.a n = A168667 n

end A168667

/-! ## A168667.P9155613367073816310

`n*A168180(n²)`
-/

namespace A168667.P9155613367073816310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168180 (n ^ 2)

end

end A168667.P9155613367073816310

namespace A168667

/-- `n*A168180(n²)` -/
def P9155613367073816310.Spec : Prop :=
  ∀ n, P9155613367073816310.a n = A168667 n

end A168667

/-! ## A168667.P6895585226290179417

`record[n*A037213(n)*A168123(n)]`
-/

namespace A168667.P6895585226290179417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A037213 n * A168123 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168667.P6895585226290179417

namespace A168667

/-- `record[n*A037213(n)*A168123(n)]` -/
def P6895585226290179417.Spec : Prop :=
  ∀ n, P6895585226290179417.a n = A168667 n

end A168667

/-!
# A168668: a(n) = n*(2 + 5*n).

The programs for A168668, the canonical program `A168668.P11025489875590215140` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168668 has offset 0).

The definition of A168668 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2+5*n)` (program `A168668.P11025489875590215140`, by `A168668.P11025489875590215140.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168668.P11025489875590215140

`n*(2+5*n)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168668

/-- `n*(2+5*n)` -/
def P11025489875590215140.Spec : Prop :=
  ∀ n, (P11025489875590215140.a n : ℤ) = A168668 n

theorem P11025489875590215140.correct : P11025489875590215140.Spec := by
  intro n
  simp only [A168668]

end A168668

/-! ## A168668.P17239737450674539774

`A131242(10*n+6)`
-/

namespace A168668.P17239737450674539774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131242 (10 * n + 6)

end

end A168668.P17239737450674539774

namespace A168668

/-- `A131242(10*n+6)` -/
def P17239737450674539774.Spec : Prop :=
  ∀ n, P17239737450674539774.a n = A168668 n

end A168668

/-! ## A168668.P2801795159829324635

`∑[a(n-1)+10]` with `a(0)=0, a(1)=7`
-/

namespace A168668.P2801795159829324635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168668.P2801795159829324635

namespace A168668

/-- `∑[a(n-1)+10]` -/
def P2801795159829324635.Spec : Prop :=
  ∀ n, (P2801795159829324635.a n : ℤ) = A168668 n

end A168668

/-! ## A168668.P3916604227406824245

`∑[ogf((7x+3x^2)/(1-2x+x^2))]`
-/

namespace A168668.P3916604227406824245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168668.P3916604227406824245

namespace A168668

/-- `∑[ogf((7x+3x^2)/(1-2x+x^2))]` -/
def P3916604227406824245.Spec : Prop :=
  ∀ n, P3916604227406824245.a n = A168668 n

end A168668

/-! ## A168668.P2472334485664429978

`ogf((7x+3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A168668.P2472334485664429978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, 3] [1, -3, 3, -1] n

end

end A168668.P2472334485664429978

namespace A168668

/-- `ogf((7x+3x^2)/(1-3x+3x^2-x^3))` -/
def P2472334485664429978.Spec : Prop :=
  ∀ n, P2472334485664429978.a n = A168668 n

end A168668

/-! ## A168668.P4002080574550253569

`3-∑[a(n-1)-10]` with `a(0)=3`
-/

namespace A168668.P4002080574550253569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168668.P4002080574550253569

namespace A168668

/-- `3-∑[a(n-1)-10]` -/
def P4002080574550253569.Spec : Prop :=
  ∀ n, P4002080574550253569.a n = A168668 n

end A168668

/-! ## A168668.P9246215620008845356

`10*n-(3-a(n-1))` with `a(0)=0`
-/

namespace A168668.P9246215620008845356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (10 * n : ℤ) - (3 - a (n - 1))

end

end A168668.P9246215620008845356

namespace A168668

/-- `10*n-(3-a(n-1))` -/
def P9246215620008845356.Spec : Prop :=
  ∀ n, P9246215620008845356.a n = A168668 n

theorem P9246215620008845356.correct : P9246215620008845356.Spec := by
  intro n
  induction n with
  | zero => simp [A168668, A168668.P9246215620008845356.a, A168668.P11025489875590215140.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A168668, Nat.add_sub_cancel, A168668.P9246215620008845356.a, A168668.P11025489875590215140.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A168668

/-! ## A168668.P2747932757015588205

`xor(2, ∑[abs(3-10*n)])-1`
-/

namespace A168668.P2747932757015588205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (10 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A168668.P2747932757015588205

namespace A168668

/-- `xor(2, ∑[abs(3-10*n)])-1` -/
def P2747932757015588205.Spec : Prop :=
  ∀ n, P2747932757015588205.a n = A168668 n

end A168668

/-! ## A168668.P9315597163408059129

`(2*n)²-(1-record[(n-1)²])`
-/

namespace A168668.P9315597163408059129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (1 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A168668.P9315597163408059129

namespace A168668

/-- `(2*n)²-(1-record[(n-1)²])` -/
def P9315597163408059129.Spec : Prop :=
  ∀ n, P9315597163408059129.a n = A168668 n

end A168668

/-! ## A168668.P13765316856766997059

`Δ[2*n*lcm(n, n-1)]-n²`
-/

namespace A168668.P13765316856766997059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Int.lcm (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n ^ 2 : ℤ)

end

end A168668.P13765316856766997059

namespace A168668

/-- `Δ[2*n*lcm(n, n-1)]-n²` -/
def P13765316856766997059.Spec : Prop :=
  ∀ n, P13765316856766997059.a n = A168668 n

end A168668

/-! ## A168668.P14283774482799810385

`A202803(n)+n`
-/

namespace A168668.P14283774482799810385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202803 n + (n : ℤ)

end

end A168668.P14283774482799810385

namespace A168668

/-- `A202803(n)+n` -/
def P14283774482799810385.Spec : Prop :=
  ∀ n, P14283774482799810385.a n = A168668 n

end A168668

/-! ## A168668.P528544466797638841

`A002943(n)+n²`
-/

namespace A168668.P528544466797638841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002943 n + (n ^ 2 : ℤ)

end

end A168668.P528544466797638841

namespace A168668

/-- `A002943(n)+n²` -/
def P528544466797638841.Spec : Prop :=
  ∀ n, P528544466797638841.a n = A168668 n

end A168668

/-! ## A168668.P18129228789642287515

`A033580(n)-n²`
-/

namespace A168668.P18129228789642287515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033580 n - (n ^ 2 : ℤ)

end

end A168668.P18129228789642287515

namespace A168668

/-- `A033580(n)-n²` -/
def P18129228789642287515.Spec : Prop :=
  ∀ n, P18129228789642287515.a n = A168668 n

end A168668

/-! ## A168668.P8828520133580792670

`A081266(n)+∑[n]`
-/

namespace A168668.P8828520133580792670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081266 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A168668.P8828520133580792670

namespace A168668

/-- `A081266(n)+∑[n]` -/
def P8828520133580792670.Spec : Prop :=
  ∀ n, P8828520133580792670.a n = A168668 n

end A168668

/-! ## A168668.P7042522362897863141

`A273982(n+1)-1`
-/

namespace A168668.P7042522362897863141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273982 (n + 1) - 1

end

end A168668.P7042522362897863141

namespace A168668

/-- `A273982(n+1)-1` -/
def P7042522362897863141.Spec : Prop :=
  ∀ n, P7042522362897863141.a n = A168668 n

end A168668

/-! ## A168668.P13125042886199595772

`(A272039(n)-1)/2`
-/

namespace A168668.P13125042886199595772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272039 n - 1 : ℚ) / 2

end

end A168668.P13125042886199595772

namespace A168668

/-- `(A272039(n)-1)/2` -/
def P13125042886199595772.Spec : Prop :=
  ∀ n, P13125042886199595772.a n = (A168668 n : ℚ)

end A168668

/-! ## A168668.P11615847140640208547

`(A080861(n)-1)/3`
-/

namespace A168668.P11615847140640208547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080861 n - 1 : ℚ) / 3

end

end A168668.P11615847140640208547

namespace A168668

/-- `(A080861(n)-1)/3` -/
def P11615847140640208547.Spec : Prop :=
  ∀ n, P11615847140640208547.a n = (A168668 n : ℚ)

end A168668

/-! ## A168668.P10382802763484135250

`(A381196(n)-1)/4`
-/

namespace A168668.P10382802763484135250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381196 n - 1 : ℚ) / 4

end

end A168668.P10382802763484135250

namespace A168668

/-- `(A381196(n)-1)/4` -/
def P10382802763484135250.Spec : Prop :=
  ∀ n, P10382802763484135250.a n = (A168668 n : ℚ)

end A168668

/-! ## A168668.P10980985558765009822

`(A016862(n)-1)/5`
-/

namespace A168668.P10980985558765009822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016862 n - 1 : ℚ) / 5

end

end A168668.P10980985558765009822

namespace A168668

/-- `(A016862(n)-1)/5` -/
def P10980985558765009822.Spec : Prop :=
  ∀ n, P10980985558765009822.a n = (A168668 n : ℚ)

end A168668

/-! ## A168668.P2528742688389136940

`2*A005475(n)+n`
-/

namespace A168668.P2528742688389136940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005475 n + (n : ℤ)

end

end A168668.P2528742688389136940

namespace A168668

/-- `2*A005475(n)+n` -/
def P2528742688389136940.Spec : Prop :=
  ∀ n, P2528742688389136940.a n = A168668 n

end A168668

/-!
# A168669: Numbers n such that sqrt(36*n+49) is prime.

The programs for A168669, there is no canonical definition to state claims against.
-/

/-! ## A168669.P5915301610227600547

`record[A005131(∑[A075888(n+3)])]`
-/

namespace A168669.P5915301610227600547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075888 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168669.P5915301610227600547

/-! ## A168669.P3665911009008094612

`eq[3, A000005(A140716(3*n+4))]`
-/

namespace A168669.P3665911009008094612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A140716 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A168669.P3665911009008094612

/-! ## A168669.P3743439917885683172

`eq[3, A000005(A016921(6*n+8))]`
-/

namespace A168669.P3743439917885683172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A016921 (6 * n + 8)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A168669.P3743439917885683172

/-! ## A168669.P10251991042217753691

`eq[3, A000005(A016813(9*n+12))]`
-/

namespace A168669.P10251991042217753691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A016813 (9 * n + 12)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A168669.P10251991042217753691

/-! ## A168669.P7376773461404456989

`eq[2, A204921(A345339(n))]`
-/

namespace A168669.P7376773461404456989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204921 (A345339 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A168669.P7376773461404456989

/-!
# A168670: Numbers that are congruent to {1, 8} mod 11.

The programs for A168670, the canonical program `A168670.P15794751553608134786` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168670 has offset 1).

The definition of A168670 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168670.P15794751553608134786

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=8, a(2)=12`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168670

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P15794751553608134786.Spec : Prop :=
  ∀ n, P15794751553608134786.a n = A168670 (n + 1)

theorem P15794751553608134786.correct : P15794751553608134786.Spec := by
  intro n
  simp only [A168670, Nat.add_sub_cancel]

end A168670

/-! ## A168670.P11294284061554465676

`a(n-2)+11` with `a(0)=1, a(1)=8`
-/

namespace A168670.P11294284061554465676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 2) + 11

end

end A168670.P11294284061554465676

namespace A168670

/-- `a(n-2)+11` -/
def P11294284061554465676.Spec : Prop :=
  ∀ n, (P11294284061554465676.a n : ℤ) = A168670 (n + 1)

end A168670

/-! ## A168670.P3221084037546699252

`∑[xor(6, gcd(2, n))]-3`
-/

namespace A168670.P3221084037546699252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 (Nat.gcd 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A168670.P3221084037546699252

namespace A168670

/-- `∑[xor(6, gcd(2, n))]-3` -/
def P3221084037546699252.Spec : Prop :=
  ∀ n, P3221084037546699252.a n = A168670 (n + 1)

end A168670

/-! ## A168670.P6535878583768388789

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=7, a(2)=4`
-/

namespace A168670.P6535878583768388789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 4] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168670.P6535878583768388789

namespace A168670

/-- `∑[abs(a(n-2))]` -/
def P6535878583768388789.Spec : Prop :=
  ∀ n, (P6535878583768388789.a n : ℤ) = A168670 (n + 1)

end A168670

/-! ## A168670.P9396827057661016407

`∑[11-a(n-1)]` with `a(0)=1, a(1)=7`
-/

namespace A168670.P9396827057661016407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  11 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168670.P9396827057661016407

namespace A168670

/-- `∑[11-a(n-1)]` -/
def P9396827057661016407.Spec : Prop :=
  ∀ n, P9396827057661016407.a n = A168670 (n + 1)

end A168670

/-! ## A168670.P7088023420007944193

`∑[∑[ogf((1+7x+3x^2)/(1+x))]]`
-/

namespace A168670.P7088023420007944193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168670.P7088023420007944193

namespace A168670

/-- `∑[∑[ogf((1+7x+3x^2)/(1+x))]]` -/
def P7088023420007944193.Spec : Prop :=
  ∀ n, P7088023420007944193.a n = A168670 (n + 1)

end A168670

/-! ## A168670.P16207861641431683742

`ogf((1+7x+3x^2)/(1-x-x^2+x^3))`
-/

namespace A168670.P16207861641431683742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 3] [1, -1, -1, 1] n

end

end A168670.P16207861641431683742

namespace A168670

/-- `ogf((1+7x+3x^2)/(1-x-x^2+x^3))` -/
def P16207861641431683742.Spec : Prop :=
  ∀ n, P16207861641431683742.a n = A168670 (n + 1)

end A168670

/-! ## A168670.P5803301112724536037

`∑[3*n%2+4]-3`
-/

namespace A168670.P5803301112724536037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n % 2) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A168670.P5803301112724536037

namespace A168670

/-- `∑[3*n%2+4]-3` -/
def P5803301112724536037.Spec : Prop :=
  ∀ n, P5803301112724536037.a n = A168670 (n + 1)

end A168670

/-! ## A168670.P9919498815451042862

`ceil(xor(1, 11*n+3)/2)`
-/

namespace A168670.P9919498815451042862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (11 * n + 3) : ℚ) / 2⌉

end

end A168670.P9919498815451042862

namespace A168670

/-- `ceil(xor(1, 11*n+3)/2)` -/
def P9919498815451042862.Spec : Prop :=
  ∀ n, P9919498815451042862.a n = A168670 (n + 1)

end A168670

/-! ## A168670.P18417977362264157456

`record[lcm(3, n+2)-5]+n`
-/

namespace A168670.P18417977362264157456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (n + 2) : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A168670.P18417977362264157456

namespace A168670

/-- `record[lcm(3, n+2)-5]+n` -/
def P18417977362264157456.Spec : Prop :=
  ∀ n, P18417977362264157456.a n = A168670 (n + 1)

end A168670

/-! ## A168670.P2718539536468254110

`11*n-2-a(n-1)` with `a(0)=1`
-/

namespace A168670.P2718539536468254110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (11 * n : ℤ) - 2 - a (n - 1)

end

end A168670.P2718539536468254110

namespace A168670

/-- `11*n-2-a(n-1)` -/
def P2718539536468254110.Spec : Prop :=
  ∀ n, P2718539536468254110.a n = A168670 (n + 1)

end A168670

/-! ## A168670.P6037369435584198983

`eq[1, val(2*n+1, 3)]+n`
-/

namespace A168670.P6037369435584198983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * n + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + n

end

end A168670.P6037369435584198983

namespace A168670

/-- `eq[1, val(2*n+1, 3)]+n` -/
def P6037369435584198983.Spec : Prop :=
  ∀ n, (P6037369435584198983.a n : ℤ) = A168670 (n + 1)

end A168670

/-! ## A168670.P2711349692652268189

`∑[gcd(4, (n+1)^3)+3]-3`
-/

namespace A168670.P2711349692652268189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 ((n + 1) ^ 3) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A168670.P2711349692652268189

namespace A168670

/-- `∑[gcd(4, (n+1)^3)+3]-3` -/
def P2711349692652268189.Spec : Prop :=
  ∀ n, P2711349692652268189.a n = A168670 (n + 1)

end A168670

/-! ## A168670.P15563527654302479777

`3*floor((n+1)/2+n)+n+1`
-/

namespace A168670.P15563527654302479777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(n + 1 : ℚ) / 2 + (n : ℚ)⌋ + (n + 1 : ℤ)

end

end A168670.P15563527654302479777

namespace A168670

/-- `3*floor((n+1)/2+n)+n+1` -/
def P15563527654302479777.Spec : Prop :=
  ∀ n, P15563527654302479777.a n = A168670 (n + 1)

end A168670

/-! ## A168670.P15734463532792490859

`∑[dr(A040093(n)²)]`
-/

namespace A168670.P15734463532792490859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040093 n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168670.P15734463532792490859

namespace A168670

/-- `∑[dr(A040093(n)²)]` -/
def P15734463532792490859.Spec : Prop :=
  ∀ n, (P15734463532792490859.a n : ℤ) = A168670 (n + 1)

end A168670

/-! ## A168670.P11917886627108986946

`∑[A283881(a(n-1))]` with `a(0)=1`
-/

namespace A168670.P11917886627108986946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A283881 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168670.P11917886627108986946

namespace A168670

/-- `∑[A283881(a(n-1))]` -/
def P11917886627108986946.Spec : Prop :=
  ∀ n, P11917886627108986946.a n = A168670 (n + 1)

end A168670

/-! ## A168670.P12281362396141350007

`∑[dr(A040024(n)²+3)]`
-/

namespace A168670.P12281362396141350007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040024 n ^ 2 + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168670.P12281362396141350007

namespace A168670

/-- `∑[dr(A040024(n)²+3)]` -/
def P12281362396141350007.Spec : Prop :=
  ∀ n, (P12281362396141350007.a n : ℤ) = A168670 (n + 1)

end A168670

/-! ## A168670.P6962956687348566595

`ceil((11*A047382(n+1)+1)/7)`
-/

namespace A168670.P6962956687348566595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(11 * A047382 (n + 1) + 1 : ℚ) / 7⌉

end

end A168670.P6962956687348566595

namespace A168670

/-- `ceil((11*A047382(n+1)+1)/7)` -/
def P6962956687348566595.Spec : Prop :=
  ∀ n, P6962956687348566595.a n = A168670 (n + 1)

end A168670

/-! ## A168670.P11510091233571017212

`∪[A017401(n), A017485(n)]`
-/

namespace A168670.P11510091233571017212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A168670.P11510091233571017212

namespace A168670

/-- `∪[A017401(n), A017485(n)]` -/
def P11510091233571017212.Spec : Prop :=
  ∀ n, (P11510091233571017212.a n : ℤ) = A168670 (n + 1)

end A168670

/-! ## A168670.P11932899822359807296

`A017581(n)%A092464(n+1)`
-/

namespace A168670.P11932899822359807296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017581 n) (A092464 (n + 1))

end

end A168670.P11932899822359807296

namespace A168670

/-- `A017581(n)%A092464(n+1)` -/
def P11932899822359807296.Spec : Prop :=
  ∀ n, P11932899822359807296.a n = A168670 (n + 1)

end A168670

/-!
# A168671: Numbers that are congruent to {1, 10} mod 13.

The programs for A168671, the canonical program `A168671.P16207837471059145809` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168671 has offset 1).

The definition of A168671 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168671.P16207837471059145809

`a(n-2)+13` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168671

/-- `a(n-2)+13` -/
def P16207837471059145809.Spec : Prop :=
  ∀ n, (P16207837471059145809.a n : ℤ) = A168671 (n + 1)

theorem P16207837471059145809.correct : P16207837471059145809.Spec := by
  intro n
  simp only [A168671, Nat.add_sub_cancel]

end A168671

/-! ## A168671.P17717717446871941065

`(26*(n+1)+5*(-1)^(n+1)-17)/4`
-/

namespace A168671.P17717717446871941065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((26 * (n + 1) : ℤ) + 5 * (-1) ^ (n + 1) - 17 : ℚ) / 4

end

end A168671.P17717717446871941065

namespace A168671

/-- `(26*(n+1)+5*(-1)^(n+1)-17)/4` -/
def P17717717446871941065.Spec : Prop :=
  ∀ n, P17717717446871941065.a n = (A168671 (n + 1) : ℚ)

theorem P17717717446871941065.correct : P17717717446871941065.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A168671, Nat.add_sub_cancel, A168671.P17717717446871941065.a, A168671.P16207837471059145809.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A168671, Nat.add_sub_cancel, A168671.P17717717446871941065.a, A168671.P16207837471059145809.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A168671

/-! ## A168671.P17851850703078167632

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=9, a(2)=4`
-/

namespace A168671.P17851850703078167632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9, 4] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168671.P17851850703078167632

namespace A168671

/-- `∑[abs(a(n-2))]` -/
def P17851850703078167632.Spec : Prop :=
  ∀ n, (P17851850703078167632.a n : ℤ) = A168671 (n + 1)

end A168671

/-! ## A168671.P17191517561779801063

`∑[13-a(n-1)]` with `a(0)=1, a(1)=9`
-/

namespace A168671.P17191517561779801063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  13 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168671.P17191517561779801063

namespace A168671

/-- `∑[13-a(n-1)]` -/
def P17191517561779801063.Spec : Prop :=
  ∀ n, P17191517561779801063.a n = A168671 (n + 1)

end A168671

/-! ## A168671.P6719715093676932293

`∑[(n%2+2)²]-3`
-/

namespace A168671.P6719715093676932293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2 + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A168671.P6719715093676932293

namespace A168671

/-- `∑[(n%2+2)²]-3` -/
def P6719715093676932293.Spec : Prop :=
  ∀ n, P6719715093676932293.a n = A168671 (n + 1)

end A168671

/-! ## A168671.P12838179730646436955

`∑[(gcd(2, n)-4)²]-3`
-/

namespace A168671.P12838179730646436955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 2 n : ℤ) - 4) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A168671.P12838179730646436955

namespace A168671

/-- `∑[(gcd(2, n)-4)²]-3` -/
def P12838179730646436955.Spec : Prop :=
  ∀ n, P12838179730646436955.a n = A168671 (n + 1)

end A168671

/-! ## A168671.P17251488957891580141

`∑[∑[ogf((1+9x+3x^2)/(1+x))]]`
-/

namespace A168671.P17251488957891580141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, 3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168671.P17251488957891580141

namespace A168671

/-- `∑[∑[ogf((1+9x+3x^2)/(1+x))]]` -/
def P17251488957891580141.Spec : Prop :=
  ∀ n, P17251488957891580141.a n = A168671 (n + 1)

end A168671

/-! ## A168671.P14937917923693777330

`ogf((1+9x+3x^2)/(1-x-x^2+x^3))`
-/

namespace A168671.P14937917923693777330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, 3] [1, -1, -1, 1] n

end

end A168671.P14937917923693777330

namespace A168671

/-- `ogf((1+9x+3x^2)/(1-x-x^2+x^3))` -/
def P14937917923693777330.Spec : Prop :=
  ∀ n, P14937917923693777330.a n = A168671 (n + 1)

end A168671

/-! ## A168671.P1251282217815342765

`13*n-2-a(n-1)` with `a(0)=1`
-/

namespace A168671.P1251282217815342765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (13 * n : ℤ) - 2 - a (n - 1)

end

end A168671.P1251282217815342765

namespace A168671

/-- `13*n-2-a(n-1)` -/
def P1251282217815342765.Spec : Prop :=
  ∀ n, P1251282217815342765.a n = A168671 (n + 1)

end A168671

/-! ## A168671.P15786981580421373738

`record[lcm(3, 2*n+1)-(n+2)]-n`
-/

namespace A168671.P15786981580421373738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (2 * n + 1) : ℤ) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A168671.P15786981580421373738

namespace A168671

/-- `record[lcm(3, 2*n+1)-(n+2)]-n` -/
def P15786981580421373738.Spec : Prop :=
  ∀ n, P15786981580421373738.a n = A168671 (n + 1)

end A168671

/-! ## A168671.P8329688697524655573

`∑[A010714(n)]-3`
-/

namespace A168671.P8329688697524655573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A168671.P8329688697524655573

namespace A168671

/-- `∑[A010714(n)]-3` -/
def P8329688697524655573.Spec : Prop :=
  ∀ n, P8329688697524655573.a n = A168671 (n + 1)

end A168671

/-! ## A168671.P4323895074621794108

`∑[dr(A009946(n)²)]`
-/

namespace A168671.P4323895074621794108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A009946 n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168671.P4323895074621794108

namespace A168671

/-- `∑[dr(A009946(n)²)]` -/
def P4323895074621794108.Spec : Prop :=
  ∀ n, (P4323895074621794108.a n : ℤ) = A168671 (n + 1)

end A168671

/-! ## A168671.P13441413374236029385

`A243520(n)+1+n`
-/

namespace A168671.P13441413374236029385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243520 n + 1 + (n : ℤ)

end

end A168671.P13441413374236029385

namespace A168671

/-- `A243520(n)+1+n` -/
def P13441413374236029385.Spec : Prop :=
  ∀ n, P13441413374236029385.a n = A168671 (n + 1)

end A168671

/-! ## A168671.P16145503686172060175

`∑[A049071(n)²]+1`
-/

namespace A168671.P16145503686172060175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049071 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A168671.P16145503686172060175

namespace A168671

/-- `∑[A049071(n)²]+1` -/
def P16145503686172060175.Spec : Prop :=
  ∀ n, P16145503686172060175.a n = A168671 (n + 1)

end A168671

/-! ## A168671.P2257286255516408110

`∑[A010693(n)²]-3`
-/

namespace A168671.P2257286255516408110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A168671.P2257286255516408110

namespace A168671

/-- `∑[A010693(n)²]-3` -/
def P2257286255516408110.Spec : Prop :=
  ∀ n, P2257286255516408110.a n = A168671 (n + 1)

end A168671

/-! ## A168671.P6493684285233510410

`∑[dr(A263941(n+1))]`
-/

namespace A168671.P6493684285233510410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A263941 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168671.P6493684285233510410

namespace A168671

/-- `∑[dr(A263941(n+1))]` -/
def P6493684285233510410.Spec : Prop :=
  ∀ n, (P6493684285233510410.a n : ℤ) = A168671 (n + 1)

end A168671

/-! ## A168671.P1712823879991929849

`∑[dr((2*A010220(n))²)]`
-/

namespace A168671.P1712823879991929849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((2 * A010220 n) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168671.P1712823879991929849

namespace A168671

/-- `∑[dr((2*A010220(n))²)]` -/
def P1712823879991929849.Spec : Prop :=
  ∀ n, (P1712823879991929849.a n : ℤ) = A168671 (n + 1)

end A168671

/-! ## A168671.P5677016322336427828

`A056020(n+1)+2*n`
-/

namespace A168671.P5677016322336427828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1) + (2 * n : ℤ)

end

end A168671.P5677016322336427828

namespace A168671

/-- `A056020(n+1)+2*n` -/
def P5677016322336427828.Spec : Prop :=
  ∀ n, P5677016322336427828.a n = A168671 (n + 1)

end A168671

/-! ## A168671.P14773773991861589580

`A168282(n+1)+4*n`
-/

namespace A168671.P14773773991861589580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168282 (n + 1) + (4 * n : ℤ)

end

end A168671.P14773773991861589580

namespace A168671

/-- `A168282(n+1)+4*n` -/
def P14773773991861589580.Spec : Prop :=
  ∀ n, P14773773991861589580.a n = A168671 (n + 1)

end A168671

/-! ## A168671.P894191398156235570

`A168672(n+1)-Δ[n²]`
-/

namespace A168671.P894191398156235570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168672 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A168671.P894191398156235570

namespace A168671

/-- `A168672(n+1)-Δ[n²]` -/
def P894191398156235570.Spec : Prop :=
  ∀ n, P894191398156235570.a n = A168671 (n + 1)

end A168671

/-!
# A168672: Numbers that are congruent to {2,13} mod 17.

The programs for A168672, the canonical program `A168672.P3033313835238166481` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168672 has offset 1).

The definition of A168672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168672.P3033313835238166481

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=2, a(1)=13, a(2)=19`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168672

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P3033313835238166481.Spec : Prop :=
  ∀ n, P3033313835238166481.a n = A168672 (n + 1)

theorem P3033313835238166481.correct : P3033313835238166481.Spec := by
  intro n
  simp only [A168672, Nat.add_sub_cancel]

end A168672

/-! ## A168672.P8014559414653362279

`(34*(n+1)+5*(-1)^(n+1)-21)/4`
-/

namespace A168672.P8014559414653362279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((34 * (n + 1) : ℤ) + 5 * (-1) ^ (n + 1) - 21 : ℚ) / 4

end

end A168672.P8014559414653362279

namespace A168672

/-- `(34*(n+1)+5*(-1)^(n+1)-21)/4` -/
def P8014559414653362279.Spec : Prop :=
  ∀ n, P8014559414653362279.a n = (A168672 (n + 1) : ℚ)

theorem P8014559414653362279.correct : P8014559414653362279.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A168672, Nat.add_sub_cancel, A168672.P8014559414653362279.a, A168672.P3033313835238166481.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A168672, Nat.add_sub_cancel, A168672.P8014559414653362279.a, A168672.P3033313835238166481.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A168672

/-! ## A168672.P11064216758930663693

`a(n-2)+17` with `a(0)=2, a(1)=13`
-/

namespace A168672.P11064216758930663693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 13] fun n a =>
  a (n - 2) + 17

end

end A168672.P11064216758930663693

namespace A168672

/-- `a(n-2)+17` -/
def P11064216758930663693.Spec : Prop :=
  ∀ n, (P11064216758930663693.a n : ℤ) = A168672 (n + 1)

end A168672

/-! ## A168672.P9968803788745040666

`∑[17-a(n-1)]` with `a(0)=2, a(1)=11`
-/

namespace A168672.P9968803788745040666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 11] fun n f1 =>
  17 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168672.P9968803788745040666

namespace A168672

/-- `∑[17-a(n-1)]` -/
def P9968803788745040666.Spec : Prop :=
  ∀ n, P9968803788745040666.a n = A168672 (n + 1)

end A168672

/-! ## A168672.P11672334915976997541

`17*n-2-a(n-1)` with `a(0)=2`
-/

namespace A168672.P11672334915976997541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (17 * n : ℤ) - 2 - a (n - 1)

end

end A168672.P11672334915976997541

namespace A168672

/-- `17*n-2-a(n-1)` -/
def P11672334915976997541.Spec : Prop :=
  ∀ n, P11672334915976997541.a n = A168672 (n + 1)

end A168672

/-! ## A168672.P18249792414062683017

`∑[5*gcd(2, n+1)+1]-4`
-/

namespace A168672.P18249792414062683017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.gcd 2 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A168672.P18249792414062683017

namespace A168672

/-- `∑[5*gcd(2, n+1)+1]-4` -/
def P18249792414062683017.Spec : Prop :=
  ∀ n, P18249792414062683017.a n = A168672 (n + 1)

end A168672

/-! ## A168672.P829718191137279898

`∑[∑[ogf((10x+5x^2)/(1+x))]]+2+n`
-/

namespace A168672.P829718191137279898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, 5] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 + (n : ℤ)

end

end A168672.P829718191137279898

namespace A168672

/-- `∑[∑[ogf((10x+5x^2)/(1+x))]]+2+n` -/
def P829718191137279898.Spec : Prop :=
  ∀ n, P829718191137279898.a n = A168672 (n + 1)

end A168672

/-! ## A168672.P12310941877453756131

`record[lcm(3, 2*n+1)-(n+1)]+n`
-/

namespace A168672.P12310941877453756131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (2 * n + 1) : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A168672.P12310941877453756131

namespace A168672

/-- `record[lcm(3, 2*n+1)-(n+1)]+n` -/
def P12310941877453756131.Spec : Prop :=
  ∀ n, P12310941877453756131.a n = A168672 (n + 1)

end A168672

/-! ## A168672.P5947427148972250621

`∑[A049071(n)²+2]`
-/

namespace A168672.P5947427148972250621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049071 n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168672.P5947427148972250621

namespace A168672

/-- `∑[A049071(n)²+2]` -/
def P5947427148972250621.Spec : Prop :=
  ∀ n, P5947427148972250621.a n = A168672 (n + 1)

end A168672

/-! ## A168672.P3613282298007872214

`∑[A286839(a(n-1))]` with `a(0)=2`
-/

namespace A168672.P3613282298007872214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A286839 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168672.P3613282298007872214

namespace A168672

/-- `∑[A286839(a(n-1))]` -/
def P3613282298007872214.Spec : Prop :=
  ∀ n, P3613282298007872214.a n = A168672 (n + 1)

end A168672

/-! ## A168672.P8048304332276719878

`A168671(n+1)+Δ[n²]`
-/

namespace A168672.P8048304332276719878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168671 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A168672.P8048304332276719878

namespace A168672

/-- `A168671(n+1)+Δ[n²]` -/
def P8048304332276719878.Spec : Prop :=
  ∀ n, P8048304332276719878.a n = A168672 (n + 1)

end A168672

/-! ## A168672.P8192670836215712078

`A212160(n)+A014601(n)`
-/

namespace A168672.P8192670836215712078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212160 n + A014601 n

end

end A168672.P8192670836215712078

namespace A168672

/-- `A212160(n)+A014601(n)` -/
def P8192670836215712078.Spec : Prop :=
  ∀ n, P8192670836215712078.a n = A168672 (n + 1)

end A168672

/-! ## A168672.P11855107756176431933

`A243520(n)+A016789(n)`
-/

namespace A168672.P11855107756176431933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243520 n + A016789 n

end

end A168672.P11855107756176431933

namespace A168672

/-- `A243520(n)+A016789(n)` -/
def P11855107756176431933.Spec : Prop :=
  ∀ n, P11855107756176431933.a n = A168672 (n + 1)

end A168672

/-! ## A168672.P1201278167838171366

`A017209(n)-A084964(n)`
-/

namespace A168672.P1201278167838171366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n - A084964 n

end

end A168672.P1201278167838171366

namespace A168672

/-- `A017209(n)-A084964(n)` -/
def P1201278167838171366.Spec : Prop :=
  ∀ n, P1201278167838171366.a n = A168672 (n + 1)

end A168672

/-! ## A168672.P445303907595575074

`A017197(n)-A097065(n)`
-/

namespace A168672.P445303907595575074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n - A097065 n

end

end A168672.P445303907595575074

namespace A168672

/-- `A017197(n)-A097065(n)` -/
def P445303907595575074.Spec : Prop :=
  ∀ n, P445303907595575074.a n = A168672 (n + 1)

end A168672

/-! ## A168672.P11223307222870242570

`A017317(n)-A166517(n)`
-/

namespace A168672.P11223307222870242570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n - A166517 n

end

end A168672.P11223307222870242570

namespace A168672

/-- `A017317(n)-A166517(n)` -/
def P11223307222870242570.Spec : Prop :=
  ∀ n, P11223307222870242570.a n = A168672 (n + 1)

end A168672

/-! ## A168672.P18096436210871317446

`A047335(n+1)+A016873(n)`
-/

namespace A168672.P18096436210871317446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047335 (n + 1) + A016873 n

end

end A168672.P18096436210871317446

namespace A168672

/-- `A047335(n+1)+A016873(n)` -/
def P18096436210871317446.Spec : Prop :=
  ∀ n, P18096436210871317446.a n = A168672 (n + 1)

end A168672

/-! ## A168672.P13761991613811604476

`A056020(n+1)+A016813(n)`
-/

namespace A168672.P13761991613811604476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1) + A016813 n

end

end A168672.P13761991613811604476

namespace A168672

/-- `A056020(n+1)+A016813(n)` -/
def P13761991613811604476.Spec : Prop :=
  ∀ n, P13761991613811604476.a n = A168672 (n + 1)

end A168672

/-! ## A168672.P17926538236936333866

`A113802(n+1)+A032766(n)`
-/

namespace A168672.P17926538236936333866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113802 (n + 1) + A032766 n

end

end A168672.P17926538236936333866

namespace A168672

/-- `A113802(n+1)+A032766(n)` -/
def P17926538236936333866.Spec : Prop :=
  ∀ n, P17926538236936333866.a n = A168672 (n + 1)

end A168672

/-! ## A168672.P15769067716021669234

`A168278(n+1)+A008588(n)`
-/

namespace A168672.P15769067716021669234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168278 (n + 1) + A008588 n

end

end A168672.P15769067716021669234

namespace A168672

/-- `A168278(n+1)+A008588(n)` -/
def P15769067716021669234.Spec : Prop :=
  ∀ n, P15769067716021669234.a n = A168672 (n + 1)

end A168672

/-!
# A168673: Binomial transform of A169609.

The programs for A168673, the canonical program `A168673.P2565417915597270252` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168673 has offset 0).

The definition of A168673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168673.P2565417915597270252

`3*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=4, a(2)=10`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168673

/-- `3*a(n-1)-3*a(n-2)+2*a(n-3)` -/
def P2565417915597270252.Spec : Prop :=
  ∀ n, P2565417915597270252.a n = A168673 n

theorem P2565417915597270252.correct : P2565417915597270252.Spec := by
  intro n
  simp only [A168673]

end A168673

/-! ## A168673.P14545938405893388457

`A062092(n)-A130151(n+1)`
-/

namespace A168673.P14545938405893388457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062092 n - A130151 (n + 1)

end

end A168673.P14545938405893388457

namespace A168673

/-- `A062092(n)-A130151(n+1)` -/
def P14545938405893388457.Spec : Prop :=
  ∀ n, P14545938405893388457.a n = A168673 n

end A168673

/-! ## A168673.P5780166864847475698

`ogf((1+x+x^2)/(1-3x+3x^2-2x^3))`
-/

namespace A168673.P5780166864847475698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, -3, 3, -2] n

end

end A168673.P5780166864847475698

namespace A168673

/-- `ogf((1+x+x^2)/(1-3x+3x^2-2x^3))` -/
def P5780166864847475698.Spec : Prop :=
  ∀ n, P5780166864847475698.a n = A168673 n

end A168673

/-! ## A168673.P9241770748830643709

`A086953(n+2)+2^n`
-/

namespace A168673.P9241770748830643709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086953 (n + 2) + (2 ^ n : ℤ)

end

end A168673.P9241770748830643709

namespace A168673

/-- `A086953(n+2)+2^n` -/
def P9241770748830643709.Spec : Prop :=
  ∀ n, P9241770748830643709.a n = A168673 n

end A168673

/-! ## A168673.P311488371037979891

`A184334(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A168673.P311488371037979891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A184334 n + 2 * a (n - 1)

end

end A168673.P311488371037979891

namespace A168673

/-- `A184334(n)+2*a(n-1)` -/
def P311488371037979891.Spec : Prop :=
  ∀ n, P311488371037979891.a n = A168673 n

end A168673

/-! ## A168673.P4670021050719928465

`A130785(n)+A024495(n)`
-/

namespace A168673.P4670021050719928465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130785 n + A024495 n

end

end A168673.P4670021050719928465

namespace A168673

/-- `A130785(n)+A024495(n)` -/
def P4670021050719928465.Spec : Prop :=
  ∀ n, P4670021050719928465.a n = A168673 n

end A168673

/-! ## A168673.P17573669224222638575

`A131708(n)+A130750(n)`
-/

namespace A168673.P17573669224222638575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 n + A130750 n

end

end A168673.P17573669224222638575

namespace A168673

/-- `A131708(n)+A130750(n)` -/
def P17573669224222638575.Spec : Prop :=
  ∀ n, P17573669224222638575.a n = A168673 n

end A168673

/-! ## A168673.P10520675176743799489

`A141775(n)+A130624(n)`
-/

namespace A168673.P10520675176743799489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141775 n + A130624 n

end

end A168673.P10520675176743799489

namespace A168673

/-- `A141775(n)+A130624(n)` -/
def P10520675176743799489.Spec : Prop :=
  ∀ n, P10520675176743799489.a n = A168673 n

end A168673

/-! ## A168673.P6814377007422381995

`A155559(n)+record[A086953(n)]`
-/

namespace A168673.P6814377007422381995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168673.P6814377007422381995

namespace A168673

/-- `A155559(n)+record[A086953(n)]` -/
def P6814377007422381995.Spec : Prop :=
  ∀ n, P6814377007422381995.a n = A168673 n

end A168673

/-! ## A168673.P7665789379596688626

`A202349(n+1)+A128834(n)`
-/

namespace A168673.P7665789379596688626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202349 (n + 1) + A128834 n

end

end A168673.P7665789379596688626

namespace A168673

/-- `A202349(n+1)+A128834(n)` -/
def P7665789379596688626.Spec : Prop :=
  ∀ n, P7665789379596688626.a n = A168673 n

end A168673

/-! ## A168673.P6741551810228936728

`A275788(n+1)+A275788(n)`
-/

namespace A168673.P6741551810228936728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275788 (n + 1) + A275788 n

end

end A168673.P6741551810228936728

namespace A168673

/-- `A275788(n+1)+A275788(n)` -/
def P6741551810228936728.Spec : Prop :=
  ∀ n, P6741551810228936728.a n = A168673 n

end A168673

/-! ## A168673.P2520316425692217979

`A130781(n+2)-A024493(n)`
-/

namespace A168673.P2520316425692217979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130781 (n + 2) - A024493 n

end

end A168673.P2520316425692217979

namespace A168673

/-- `A130781(n+2)-A024493(n)` -/
def P2520316425692217979.Spec : Prop :=
  ∀ n, P2520316425692217979.a n = A168673 n

end A168673

/-! ## A168673.P11322779329724248381

`A024493(n+3)-A024493(n)`
-/

namespace A168673.P11322779329724248381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 (n + 3) - A024493 n

end

end A168673.P11322779329724248381

namespace A168673

/-- `A024493(n+3)-A024493(n)` -/
def P11322779329724248381.Spec : Prop :=
  ∀ n, P11322779329724248381.a n = A168673 n

end A168673

/-! ## A168673.P4410762539352303314

`A111927(n+3)-A111927(n)`
-/

namespace A168673.P4410762539352303314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111927 (n + 3) - A111927 n

end

end A168673.P4410762539352303314

namespace A168673

/-- `A111927(n+3)-A111927(n)` -/
def P4410762539352303314.Spec : Prop :=
  ∀ n, P4410762539352303314.a n = A168673 n

end A168673

/-! ## A168673.P13505443650023302996

`A081374(n+3)-A166249(n)`
-/

namespace A168673.P13505443650023302996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081374 (n + 3) - A166249 n

end

end A168673.P13505443650023302996

namespace A168673

/-- `A081374(n+3)-A166249(n)` -/
def P13505443650023302996.Spec : Prop :=
  ∀ n, P13505443650023302996.a n = A168673 n

end A168673

/-! ## A168673.P16562767503006329629

`A007283(n)-2*A024493(n)`
-/

namespace A168673.P16562767503006329629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n - 2 * A024493 n

end

end A168673.P16562767503006329629

namespace A168673

/-- `A007283(n)-2*A024493(n)` -/
def P16562767503006329629.Spec : Prop :=
  ∀ n, P16562767503006329629.a n = A168673 n

end A168673

/-! ## A168673.P13617574962842039515

`A155559(n+1)+Δ[A086953(n)]`
-/

namespace A168673.P13617574962842039515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 (n + 1) + (f1 (n + 1) - f1 n)

end

end A168673.P13617574962842039515

namespace A168673

/-- `A155559(n+1)+Δ[A086953(n)]` -/
def P13617574962842039515.Spec : Prop :=
  ∀ n, P13617574962842039515.a n = A168673 n

end A168673

/-! ## A168673.P13954959168397417457

`A011782(n+2)+Δ[A086953(n)]`
-/

namespace A168673.P13954959168397417457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 2) + (f1 (n + 1) - f1 n)

end

end A168673.P13954959168397417457

namespace A168673

/-- `A011782(n+2)+Δ[A086953(n)]` -/
def P13954959168397417457.Spec : Prop :=
  ∀ n, P13954959168397417457.a n = A168673 n

end A168673

/-! ## A168673.P3917165440831002137

`A202349(n+1)-A010892(n+2)`
-/

namespace A168673.P3917165440831002137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202349 (n + 1) - A010892 (n + 2)

end

end A168673.P3917165440831002137

namespace A168673

/-- `A202349(n+1)-A010892(n+2)` -/
def P3917165440831002137.Spec : Prop :=
  ∀ n, P3917165440831002137.a n = A168673 n

end A168673

/-! ## A168673.P3799266498297208838

`A011782(n+1)+2*A024495(n+1)`
-/

namespace A168673.P3799266498297208838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) + 2 * A024495 (n + 1)

end

end A168673.P3799266498297208838

namespace A168673

/-- `A011782(n+1)+2*A024495(n+1)` -/
def P3799266498297208838.Spec : Prop :=
  ∀ n, P3799266498297208838.a n = A168673 n

end A168673

/-!
# A168674: a(n) = 2*A001610(n).

The programs for A168674, the canonical program `A168674.P4972307837167662134` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168674 has offset 0).

The definition of A168674 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A001610(n)` (program `A168674.P4972307837167662134`, by `A168674.P4972307837167662134.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168674.P4972307837167662134

`2*A001610(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A168674

/-- `2*A001610(n)` -/
def P4972307837167662134.Spec : Prop :=
  ∀ n, P4972307837167662134.a n = A168674 n

theorem P4972307837167662134.correct : P4972307837167662134.Spec := by
  intro n
  simp only [A168674]

end A168674

/-! ## A168674.P17639914590802056600

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=4, a(2)=6`
-/

namespace A168674.P17639914590802056600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 6] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A168674.P17639914590802056600

namespace A168674

/-- `2*a(n-1)-a(n-3)` -/
def P17639914590802056600.Spec : Prop :=
  ∀ n, P17639914590802056600.a n = A168674 n

end A168674

/-! ## A168674.P7693747438267391430

`ogf((4x-2x^2)/(1-2x+x^3))`
-/

namespace A168674.P7693747438267391430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -2] [1, -2, 0, 1] n

end

end A168674.P7693747438267391430

namespace A168674

/-- `ogf((4x-2x^2)/(1-2x+x^3))` -/
def P7693747438267391430.Spec : Prop :=
  ∀ n, P7693747438267391430.a n = A168674 n

end A168674

/-! ## A168674.P14676494236204860093

`a(n-1)+a(n-2)+2` with `a(0)=0, a(1)=4`
-/

namespace A168674.P14676494236204860093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 1) + (a (n - 2) + 2)

end

end A168674.P14676494236204860093

namespace A168674

/-- `a(n-1)+a(n-2)+2` -/
def P14676494236204860093.Spec : Prop :=
  ∀ n, (P14676494236204860093.a n : ℤ) = A168674 n

end A168674

/-! ## A168674.P2125176722725491202

`a(n-1)-xor(-2, a(n-2))` with `a(0)=0, a(1)=4`
-/

namespace A168674.P2125176722725491202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 1) - Int.xor (-2) (a (n - 2))

end

end A168674.P2125176722725491202

namespace A168674

/-- `a(n-1)-xor(-2, a(n-2))` -/
def P2125176722725491202.Spec : Prop :=
  ∀ n, P2125176722725491202.a n = A168674 n

end A168674

/-! ## A168674.P3478759329773497588

`3-floor(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A168674.P3478759329773497588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  3 - (1 - a (n - 1) - a (n - 2))

end

end A168674.P3478759329773497588

namespace A168674

/-- `3-floor(1-a(n-1)-a(n-2))` -/
def P3478759329773497588.Spec : Prop :=
  ∀ n, P3478759329773497588.a n = A168674 n

end A168674

/-! ## A168674.P4085625526600045242

`4-(4/2-a(n-1)-a(n-2))` with `a(0)=0, a(1)=4`
-/

namespace A168674.P4085625526600045242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 4] fun n a =>
  4 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2))

end

end A168674.P4085625526600045242

namespace A168674

/-- `4-(4/2-a(n-1)-a(n-2))` -/
def P4085625526600045242.Spec : Prop :=
  ∀ n, P4085625526600045242.a n = (A168674 n : ℚ)

end A168674

/-! ## A168674.P15996205138934709950

`3-((1-a(n-1))%a(n-1)-a(n-2))` with `a(0)=0, a(1)=4`
-/

namespace A168674.P15996205138934709950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  3 - (Int.tmod (1 - a (n - 1)) (a (n - 1)) - a (n - 2))

end

end A168674.P15996205138934709950

namespace A168674

/-- `3-((1-a(n-1))%a(n-1)-a(n-2))` -/
def P15996205138934709950.Spec : Prop :=
  ∀ n, P15996205138934709950.a n = A168674 n

end A168674

/-! ## A168674.P9811699004597354056

`a(n-1)-(gcd(2, a(n-1))-4-a(n-2))` with `a(0)=0, a(1)=4`
-/

namespace A168674.P9811699004597354056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 1) - ((Int.gcd 2 (a (n - 1)) : ℤ) - 4 - a (n - 2))

end

end A168674.P9811699004597354056

namespace A168674

/-- `a(n-1)-(gcd(2, a(n-1))-4-a(n-2))` -/
def P9811699004597354056.Spec : Prop :=
  ∀ n, P9811699004597354056.a n = A168674 n

end A168674

/-! ## A168674.P15411320712494949730

`A022319(n)-1`
-/

namespace A168674.P15411320712494949730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 n - 1

end

end A168674.P15411320712494949730

namespace A168674

/-- `A022319(n)-1` -/
def P15411320712494949730.Spec : Prop :=
  ∀ n, P15411320712494949730.a n = A168674 n

end A168674

/-! ## A168674.P2475422668312495572

`A022112(n)-2`
-/

namespace A168674.P2475422668312495572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n - 2

end

end A168674.P2475422668312495572

namespace A168674

/-- `A022112(n)-2` -/
def P2475422668312495572.Spec : Prop :=
  ∀ n, P2475422668312495572.a n = A168674 n

end A168674

/-! ## A168674.P7174220239736349933

`A380821(n+1)-3`
-/

namespace A168674.P7174220239736349933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380821 (n + 1) - 3

end

end A168674.P7174220239736349933

namespace A168674

/-- `A380821(n+1)-3` -/
def P7174220239736349933.Spec : Prop :=
  ∀ n, P7174220239736349933.a n = A168674 n

end A168674

/-! ## A168674.P2402872607072163151

`2*A339572(Δ[n²])`
-/

namespace A168674.P2402872607072163151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339572 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A168674.P2402872607072163151

namespace A168674

/-- `2*A339572(Δ[n²])` -/
def P2402872607072163151.Spec : Prop :=
  ∀ n, P2402872607072163151.a n = A168674 n

end A168674

/-! ## A168674.P3413796197766527069

`2*(A000032(n+1)-1)`
-/

namespace A168674.P3413796197766527069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000032 (n + 1) - 1)

end

end A168674.P3413796197766527069

namespace A168674

/-- `2*(A000032(n+1)-1)` -/
def P3413796197766527069.Spec : Prop :=
  ∀ n, P3413796197766527069.a n = A168674 n

end A168674

/-! ## A168674.P15157884825863378108

`2*(A000204(n+1)-1)`
-/

namespace A168674.P15157884825863378108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000204 (n + 1) - 1)

end

end A168674.P15157884825863378108

namespace A168674

/-- `2*(A000204(n+1)-1)` -/
def P15157884825863378108.Spec : Prop :=
  ∀ n, P15157884825863378108.a n = A168674 n

end A168674

/-! ## A168674.P7134983608354724565

`2*(A001612(n+1)-2)`
-/

namespace A168674.P7134983608354724565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001612 (n + 1) - 2)

end

end A168674.P7134983608354724565

namespace A168674

/-- `2*(A001612(n+1)-2)` -/
def P7134983608354724565.Spec : Prop :=
  ∀ n, P7134983608354724565.a n = A168674 n

end A168674

/-! ## A168674.P12721747031434318774

`2*(A000211(n+1)-3)`
-/

namespace A168674.P12721747031434318774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000211 (n + 1) - 3)

end

end A168674.P12721747031434318774

namespace A168674

/-- `2*(A000211(n+1)-3)` -/
def P12721747031434318774.Spec : Prop :=
  ∀ n, P12721747031434318774.a n = A168674 n

end A168674

/-! ## A168674.P7996526212175545063

`2*(A366506(n+1)-4)`
-/

namespace A168674.P7996526212175545063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A366506 (n + 1) - 4)

end

end A168674.P7996526212175545063

namespace A168674

/-- `2*(A366506(n+1)-4)` -/
def P7996526212175545063.Spec : Prop :=
  ∀ n, P7996526212175545063.a n = A168674 n

end A168674

/-! ## A168674.P10816338790193086966

`∑[2*Δ[A000032(n)]]+2`
-/

namespace A168674.P10816338790193086966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A168674.P10816338790193086966

namespace A168674

/-- `∑[2*Δ[A000032(n)]]+2` -/
def P10816338790193086966.Spec : Prop :=
  ∀ n, P10816338790193086966.a n = A168674 n

end A168674

/-! ## A168674.P9591374272567745823

`2*(∑[A000032(abs(1-n))]-1)`
-/

namespace A168674.P9591374272567745823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A168674.P9591374272567745823

namespace A168674

/-- `2*(∑[A000032(abs(1-n))]-1)` -/
def P9591374272567745823.Spec : Prop :=
  ∀ n, P9591374272567745823.a n = A168674 n

end A168674

/-!
# A168675: a(n) = n^8*(n + 1)/2.

The programs for A168675, the canonical program `A168675.P3772020338645253373` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168675 has offset 0).

The definition of A168675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168675.P3772020338645253373

`n^8*(n+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168675

/-- `n^8*(n+1)/2` -/
def P3772020338645253373.Spec : Prop :=
  ∀ n, P3772020338645253373.a n = (A168675 n : ℚ)

end A168675

/-! ## A168675.P16758061815138301769

`n*A168635(n)`
-/

namespace A168675.P16758061815138301769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168635 n

end

end A168675.P16758061815138301769

namespace A168675

/-- `n*A168635(n)` -/
def P16758061815138301769.Spec : Prop :=
  ∀ n, P16758061815138301769.a n = A168675 n

end A168675

/-! ## A168675.P17269943058576122687

`n²*A168526(n)`
-/

namespace A168675.P17269943058576122687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168526 n

end

end A168675.P17269943058576122687

namespace A168675

/-- `n²*A168526(n)` -/
def P17269943058576122687.Spec : Prop :=
  ∀ n, P17269943058576122687.a n = A168675 n

end A168675

/-! ## A168675.P2970653277826662693

`(n*n²)²*A002411(n)`
-/

namespace A168675.P2970653277826662693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * n ^ 2) ^ 2 : ℤ) * A002411 n

end

end A168675.P2970653277826662693

namespace A168675

/-- `(n*n²)²*A002411(n)` -/
def P2970653277826662693.Spec : Prop :=
  ∀ n, P2970653277826662693.a n = A168675 n

end A168675

/-! ## A168675.P18367128233190175008

`A163277(n)-A168635(n)`
-/

namespace A168675.P18367128233190175008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163277 n - A168635 n

end

end A168675.P18367128233190175008

namespace A168675

/-- `A163277(n)-A168635(n)` -/
def P18367128233190175008.Spec : Prop :=
  ∀ n, P18367128233190175008.a n = A168675 n

end A168675

/-! ## A168675.P5489929837545510423

`A000217(n)*A001015(n)`
-/

namespace A168675.P5489929837545510423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A001015 n

end

end A168675.P5489929837545510423

namespace A168675

/-- `A000217(n)*A001015(n)` -/
def P5489929837545510423.Spec : Prop :=
  ∀ n, P5489929837545510423.a n = A168675 n

end A168675

/-! ## A168675.P11819092058717253824

`A000578(n)*A168351(n)`
-/

namespace A168675.P11819092058717253824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n * A168351 n

end

end A168675.P11819092058717253824

namespace A168675

/-- `A000578(n)*A168351(n)` -/
def P11819092058717253824.Spec : Prop :=
  ∀ n, P11819092058717253824.a n = A168675 n

end A168675

/-! ## A168675.P9248920797233774890

`A168526(n)*A253909(n)`
-/

namespace A168675.P9248920797233774890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168526 n * A253909 n

end

end A168675.P9248920797233774890

namespace A168675

/-- `A168526(n)*A253909(n)` -/
def P9248920797233774890.Spec : Prop :=
  ∀ n, P9248920797233774890.a n = A168675 n

end A168675

/-! ## A168675.P11737891811187126478

`gcd(A170775(n), A170783(n))`
-/

namespace A168675.P11737891811187126478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A170775 n) (A170783 n)

end

end A168675.P11737891811187126478

namespace A168675

/-- `gcd(A170775(n), A170783(n))` -/
def P11737891811187126478.Spec : Prop :=
  ∀ n, (P11737891811187126478.a n : ℤ) = A168675 n

end A168675

/-! ## A168675.P11173261357109552563

`gcd(A170779(n), A170791(n))`
-/

namespace A168675.P11173261357109552563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A170779 n) (A170791 n)

end

end A168675.P11173261357109552563

namespace A168675

/-- `gcd(A170779(n), A170791(n))` -/
def P11173261357109552563.Spec : Prop :=
  ∀ n, (P11173261357109552563.a n : ℤ) = A168675 n

end A168675

/-! ## A168675.P6443795063428646384

`A001015(n)*A179865(n+1)`
-/

namespace A168675.P6443795063428646384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 n * A179865 (n + 1)

end

end A168675.P6443795063428646384

namespace A168675

/-- `A001015(n)*A179865(n+1)` -/
def P6443795063428646384.Spec : Prop :=
  ∀ n, P6443795063428646384.a n = A168675 n

end A168675

/-! ## A168675.P1342925336254312022

`A001016(n)+A240932(n)/2`
-/

namespace A168675.P1342925336254312022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001016 n : ℚ) + (A240932 n : ℚ) / 2

end

end A168675.P1342925336254312022

namespace A168675

/-- `A001016(n)+A240932(n)/2` -/
def P1342925336254312022.Spec : Prop :=
  ∀ n, P1342925336254312022.a n = (A168675 n : ℚ)

end A168675

/-! ## A168675.P13991842618418160783

`A168116(n)+A195859(n)/2`
-/

namespace A168675.P13991842618418160783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168116 n : ℚ) + (A195859 n : ℚ) / 2

end

end A168675.P13991842618418160783

namespace A168675

/-- `A168116(n)+A195859(n)/2` -/
def P13991842618418160783.Spec : Prop :=
  ∀ n, P13991842618418160783.a n = (A168675 n : ℚ)

end A168675

/-! ## A168675.P3016332156005358324

`A168067(n)+A168116(n)-n`
-/

namespace A168675.P3016332156005358324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168067 n + (A168116 n - (n : ℤ))

end

end A168675.P3016332156005358324

namespace A168675

/-- `A168067(n)+A168116(n)-n` -/
def P3016332156005358324.Spec : Prop :=
  ∀ n, P3016332156005358324.a n = A168675 n

end A168675

/-! ## A168675.P5132506992847922454

`n*A163277(n)-A170783(n)`
-/

namespace A168675.P5132506992847922454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A163277 n - A170783 n

end

end A168675.P5132506992847922454

namespace A168675

/-- `n*A163277(n)-A170783(n)` -/
def P5132506992847922454.Spec : Prop :=
  ∀ n, P5132506992847922454.a n = A168675 n

end A168675

/-! ## A168675.P2733225428414598899

`n²*A000217(n)*A000584(n)`
-/

namespace A168675.P2733225428414598899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A000217 n * A000584 n

end

end A168675.P2733225428414598899

namespace A168675

/-- `n²*A000217(n)*A000584(n)` -/
def P2733225428414598899.Spec : Prop :=
  ∀ n, P2733225428414598899.a n = A168675 n

end A168675

/-! ## A168675.P14751990742633567847

`A168635(n)+A168636(n)-A001015(n)`
-/

namespace A168675.P14751990742633567847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168635 n + (A168636 n - A001015 n)

end

end A168675.P14751990742633567847

namespace A168675

/-- `A168635(n)+A168636(n)-A001015(n)` -/
def P14751990742633567847.Spec : Prop :=
  ∀ n, P14751990742633567847.a n = A168675 n

end A168675

/-! ## A168675.P10505150555558476261

`A000217(n)*A000290(n)*A000584(n)`
-/

namespace A168675.P10505150555558476261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A000290 n * A000584 n

end

end A168675.P10505150555558476261

namespace A168675

/-- `A000217(n)*A000290(n)*A000584(n)` -/
def P10505150555558476261.Spec : Prop :=
  ∀ n, P10505150555558476261.a n = A168675 n

end A168675

/-! ## A168675.P2147780412847303751

`n²*A019583(n+1)*n²`
-/

namespace A168675.P2147780412847303751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A019583 (n + 1) * (n ^ 2 : ℤ)

end

end A168675.P2147780412847303751

namespace A168675

/-- `n²*A019583(n+1)*n²` -/
def P2147780412847303751.Spec : Prop :=
  ∀ n, P2147780412847303751.a n = A168675 n

end A168675

/-!
# A168676: Coefficients of characteristic polynomials for a two diagonal Matrix type that has determinant equal to trace:M(n)=Table[If[ k == m && m < n, 1, If[k == m + 1, 1, If[k == 1 && m == n, (-1)^(n + 1)*(n - 1), 0]]], {k, n}, {m, n}].

The programs for A168676, there is no canonical definition to state claims against.
-/

/-! ## A168676.P2416401627394391287

`A340351((n+1)*A340365(n+1))-A246029(A130154(n+1))`
-/

namespace A168676.P2416401627394391287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340351 ((n + 1 : ℤ) * A340365 (n + 1)).toNat - A246029 (A130154 (n + 1)).toNat

end

end A168676.P2416401627394391287

/-! ## A168676.P617275513352634060

`or(A016412(A257645(n)), A032634(n))`
-/

namespace A168676.P617275513352634060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016412 (A257645 n).toNat) (A032634 n)

end

end A168676.P617275513352634060

/-!
# A168677: Lexicographically earliest positive integer sequence such that no sum of consecutive terms is a positive power of 4.

The programs for A168677, the canonical program `A168677.P15973909188496427709` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168677 has offset 1).

The definition of A168677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168677.P15973909188496427709

`or(3, gcd(8, n+1))-2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168677

/-- `or(3, gcd(8, n+1))-2` -/
def P15973909188496427709.Spec : Prop :=
  ∀ n, P15973909188496427709.a n = A168677 (n + 1)

theorem P15973909188496427709.correct : P15973909188496427709.Spec := by
  intro n
  simp only [A168677, Nat.add_sub_cancel]

end A168677

/-!
# A168679: Arises in classification of simply connected Cartan schemes of rank three, where the real roots form a finite irreducible root system.

The programs for A168679, there is no canonical definition to state claims against.
-/

/-! ## A168679.P12190230899709368823

`A196183(2*(n+2))+A113311(A308546(n))`
-/

namespace A168679.P12190230899709368823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196183 (2 * (n + 2)) + A113311 (A308546 n).toNat

end

end A168679.P12190230899709368823

/-!
# A168680: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^17 = I.

The programs for A168680, there is no canonical definition to state claims against.
-/

/-! ## A168680.P5786340307412640419

`Δ[A000027(Δ[A168776(n)])]`
-/

namespace A168680.P5786340307412640419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168776 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168680.P5786340307412640419

/-! ## A168680.P17086883671663760531

`floor(3*2^(n-1))-A006503(A185284(2*n+3))`
-/

namespace A168680.P17086883671663760531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A006503 (A185284 (2 * n + 3)).toNat

end

end A168680.P17086883671663760531

/-! ## A168680.P436886908226335820

`A003945(n)-A185238(A030103(n+1))`
-/

namespace A168680.P436886908226335820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A185238 (A030103 (n + 1)).toNat

end

end A168680.P436886908226335820

/-! ## A168680.P4056413039938476036

`(A011782(n)-A185284(2*n+3)²)*A093560(A161680(2*n))`
-/

namespace A168680.P4056413039938476036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011782 n - A185284 (2 * n + 3) ^ 2) * A093560 (A161680 (2 * n)).toNat

end

end A168680.P4056413039938476036

/-!
# A168681: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^17 = I.

The programs for A168681, there is no canonical definition to state claims against.
-/

/-! ## A168681.P11865203265935751147

`floor(4*3^(n-1))-A034432(A213998(n))`
-/

namespace A168681.P11865203265935751147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A034432 (A213998 n).toNat

end

end A168681.P11865203265935751147

/-! ## A168681.P4653680749112510744

`floor(4*3^(n-1))-A034432(A163866(n+1))`
-/

namespace A168681.P4653680749112510744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A034432 (A163866 (n + 1)).toNat

end

end A168681.P4653680749112510744

/-! ## A168681.P6457948698674918085

`abs(A003946(n)-A034432(A213998(n)))`
-/

namespace A168681.P6457948698674918085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003946 n - A034432 (A213998 n).toNat|

end

end A168681.P6457948698674918085

/-!
# A168682: Number of reduced words of length n in Coxeter group on 5 generators S_i with relations (S_i)^2 = (S_i S_j)^17 = I.

The programs for A168682, there is no canonical definition to state claims against.
-/

/-! ## A168682.P3238450962943344222

`floor(5*4^(n-1))-A185255(A191262(n+1))`
-/

namespace A168682.P3238450962943344222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (A191262 (n + 1)).toNat

end

end A168682.P3238450962943344222

/-! ## A168682.P16855681265747710008

`floor(5*4^(n-1))-A185255(A284831(n+1))`
-/

namespace A168682.P16855681265747710008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (A284831 (n + 1)).toNat

end

end A168682.P16855681265747710008

/-! ## A168682.P10916384666681956431

`floor(5*4^(n-1))-A185255(A059559(n+3))`
-/

namespace A168682.P10916384666681956431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (A059559 (n + 3)).toNat

end

end A168682.P10916384666681956431

/-! ## A168682.P7374128484233456206

`A003947(n)-A185255(A052383(n+2))`
-/

namespace A168682.P7374128484233456206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 n - A185255 (A052383 (n + 2)).toNat

end

end A168682.P7374128484233456206

/-! ## A168682.P14265095327590284384

`A003947(n)-A185255(A111808(n+2))`
-/

namespace A168682.P14265095327590284384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 n - A185255 (A111808 (n + 2)).toNat

end

end A168682.P14265095327590284384

/-!
# A168686: Number of reduced words of length n in Coxeter group on 9 generators S_i with relations (S_i)^2 = (S_i S_j)^17 = I.

The programs for A168686, there is no canonical definition to state claims against.
-/

/-! ## A168686.P8635816658906726975

`A003951(n)-A161645(A184946(2*n+1))`
-/

namespace A168686.P8635816658906726975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003951 n - A161645 (A184946 (2 * n + 1)).toNat

end

end A168686.P8635816658906726975

