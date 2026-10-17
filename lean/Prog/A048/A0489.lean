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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A048901: Indices of hexagonal numbers which are also heptagonal.

The programs for A048901, the canonical program `A048901.P2807362337922565529` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048901 has offset 1).

The definition of A048901 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048901.P2807362337922565529

`322*a(n-1)-a(n-2)-80` with `a(0)=1, a(1)=247`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A048901

/-- `322*a(n-1)-a(n-2)-80` -/
def P2807362337922565529.Spec : Prop :=
  ∀ n, P2807362337922565529.a n = A048901 (n + 1)

theorem P2807362337922565529.correct : P2807362337922565529.Spec := by
  intro n
  simp only [A048901, Nat.add_sub_cancel]

end A048901

/-! ## A048901.P223860723623373087

`A131132(12*n)`
-/

namespace A048901.P223860723623373087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131132 (12 * n)

end

end A048901.P223860723623373087

namespace A048901

/-- `A131132(12*n)` -/
def P223860723623373087.Spec : Prop :=
  ∀ n, P223860723623373087.a n = A048901 (n + 1)

end A048901

/-! ## A048901.P13223665219430657683

`A049665(2*n)+1`
-/

namespace A048901.P13223665219430657683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049665 (2 * n) + 1

end

end A048901.P13223665219430657683

namespace A048901

/-- `A049665(2*n)+1` -/
def P13223665219430657683.Spec : Prop :=
  ∀ n, P13223665219430657683.a n = A048901 (n + 1)

end A048901

/-! ## A048901.P14916515000412359840

`A020706(12*n)/4`
-/

namespace A048901.P14916515000412359840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020706 (12 * n) : ℚ) / 4

end

end A048901.P14916515000412359840

namespace A048901

/-- `A020706(12*n)/4` -/
def P14916515000412359840.Spec : Prop :=
  ∀ n, P14916515000412359840.a n = (A048901 (n + 1) : ℚ)

end A048901

/-! ## A048901.P9873248383618412686

`A110526(3*n+n+1)`
-/

namespace A048901.P9873248383618412686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110526 (3 * n + (n + 1))

end

end A048901.P9873248383618412686

namespace A048901

/-- `A110526(3*n+n+1)` -/
def P9873248383618412686.Spec : Prop :=
  ∀ n, P9873248383618412686.a n = A048901 (n + 1)

end A048901

/-!
# A048902: Indices of heptagonal numbers (A000566) which are also hexagonal.

The programs for A048902, the canonical program `A048902.P8781989937731014127` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048902 has offset 1).

The definition of A048902 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048902.P8781989937731014127

`322*a(n-1)-a(n-2)-96` with `a(0)=1, a(1)=221`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A048902

/-- `322*a(n-1)-a(n-2)-96` -/
def P8781989937731014127.Spec : Prop :=
  ∀ n, P8781989937731014127.a n = A048902 (n + 1)

theorem P8781989937731014127.correct : P8781989937731014127.Spec := by
  intro n
  simp only [A048902, Nat.add_sub_cancel]

end A048902

/-! ## A048902.P10395654903207894304

`A046193(2*n+1)`
-/

namespace A048902.P10395654903207894304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046193 (2 * n + 1)

end

end A048902.P10395654903207894304

namespace A048902

/-- `A046193(2*n+1)` -/
def P10395654903207894304.Spec : Prop :=
  ∀ n, P10395654903207894304.a n = A048902 (n + 1)

end A048902

/-! ## A048902.P15090132348169789151

`A360467(3*n)/4`
-/

namespace A048902.P15090132348169789151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360467 (3 * n) : ℚ) / 4

end

end A048902.P15090132348169789151

namespace A048902

/-- `A360467(3*n)/4` -/
def P15090132348169789151.Spec : Prop :=
  ∀ n, P15090132348169789151.a n = (A048902 (n + 1) : ℚ)

end A048902

/-! ## A048902.P795025224237913802

`A064170(3*(n+1))/2`
-/

namespace A048902.P795025224237913802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064170 (3 * (n + 1)) : ℚ) / 2

end

end A048902.P795025224237913802

namespace A048902

/-- `A064170(3*(n+1))/2` -/
def P795025224237913802.Spec : Prop :=
  ∀ n, P795025224237913802.a n = (A048902 (n + 1) : ℚ)

end A048902

/-! ## A048902.P2104100558001683261

`round(A000045(6*n+2)²/2)`
-/

namespace A048902.P2104100558001683261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000045 (6 * n + 2) ^ 2 : ℚ) / 2)

end

end A048902.P2104100558001683261

namespace A048902

/-- `round(A000045(6*n+2)²/2)` -/
def P2104100558001683261.Spec : Prop :=
  ∀ n, P2104100558001683261.a n = A048902 (n + 1)

end A048902

/-!
# A048903: 

The programs for A048903, there is no canonical definition to state claims against.
-/

/-! ## A048903.P13492360741323173297

`A046194(2*n+1)`
-/

namespace A048903.P13492360741323173297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046194 (2 * n + 1)

end

end A048903.P13492360741323173297

/-! ## A048903.P10850189922901678594

`A049660(2*n+1)*A134494(2*n)`
-/

namespace A048903.P10850189922901678594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049660 (2 * n + 1) * A134494 (2 * n)

end

end A048903.P10850189922901678594

/-!
# A048904: Indices of heptagonal numbers (A000566) which are also octagonal.

The programs for A048904, the canonical program `A048904.P7821780131539412040` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048904 has offset 1).

The definition of A048904 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048904.P7821780131539412040

`482*a(n-1)-a(n-2)-144` with `a(0)=1, a(1)=345`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A048904

/-- `482*a(n-1)-a(n-2)-144` -/
def P7821780131539412040.Spec : Prop :=
  ∀ n, P7821780131539412040.a n = A048904 (n + 1)

theorem P7821780131539412040.correct : P7821780131539412040.Spec := by
  intro n
  simp only [A048904, Nat.add_sub_cancel]

end A048904

/-!
# A048905: Indices of octagonal numbers which are also heptagonal.

The programs for A048905, the canonical program `A048905.P10415710124802825240` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048905 has offset 1).

The definition of A048905 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048905.P10415710124802825240

`482*a(n-1)-a(n-2)-160` with `a(0)=1, a(1)=315`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A048905

/-- `482*a(n-1)-a(n-2)-160` -/
def P10415710124802825240.Spec : Prop :=
  ∀ n, P10415710124802825240.a n = A048905 (n + 1)

theorem P10415710124802825240.correct : P10415710124802825240.Spec := by
  intro n
  simp only [A048905, Nat.add_sub_cancel]

end A048905

/-! ## A048905.P7104053726708248089

`A137881(2*n+1)*A157014(n+1)`
-/

namespace A048905.P7104053726708248089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137881 (2 * n + 1) * A157014 (n + 1)

end

end A048905.P7104053726708248089

namespace A048905

/-- `A137881(2*n+1)*A157014(n+1)` -/
def P7104053726708248089.Spec : Prop :=
  ∀ n, P7104053726708248089.a n = A048905 (n + 1)

end A048905

/-!
# A048907: Indices of 9-gonal numbers which are also triangular.

The programs for A048907, the canonical program `A048907.P17313420406899919915` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048907 has offset 1).

The definition of A048907 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048907.P17313420406899919915

`17*a(n-1)-17*a(n-2)+a(n-3)` with `a(0)=1, a(1)=10, a(2)=154`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A048907

/-- `17*a(n-1)-17*a(n-2)+a(n-3)` -/
def P17313420406899919915.Spec : Prop :=
  ∀ n, P17313420406899919915.a n = A048907 (n + 1)

theorem P17313420406899919915.correct : P17313420406899919915.Spec := by
  intro n
  simp only [A048907, Nat.add_sub_cancel]

end A048907

/-! ## A048907.P2604290006518221722

`A276123(2*(n+1))`
-/

namespace A048907.P2604290006518221722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276123 (2 * (n + 1))

end

end A048907.P2604290006518221722

namespace A048907

/-- `A276123(2*(n+1))` -/
def P2604290006518221722.Spec : Prop :=
  ∀ n, P2604290006518221722.a n = A048907 (n + 1)

end A048907

/-! ## A048907.P9461560150634587408

`∑[3*A001080(n)]+1`
-/

namespace A048907.P9461560150634587408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A048907.P9461560150634587408

namespace A048907

/-- `∑[3*A001080(n)]+1` -/
def P9461560150634587408.Spec : Prop :=
  ∀ n, P9461560150634587408.a n = A048907 (n + 1)

end A048907

/-! ## A048907.P15854436142402975216

`3*∑[A204517(3*n+2)]+1`
-/

namespace A048907.P15854436142402975216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204517 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A048907.P15854436142402975216

namespace A048907

/-- `3*∑[A204517(3*n+2)]+1` -/
def P15854436142402975216.Spec : Prop :=
  ∀ n, P15854436142402975216.a n = A048907 (n + 1)

end A048907

/-! ## A048907.P13879595869141247805

`record[A276123(A237420(n))]`
-/

namespace A048907.P13879595869141247805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276123 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048907.P13879595869141247805

namespace A048907

/-- `record[A276123(A237420(n))]` -/
def P13879595869141247805.Spec : Prop :=
  ∀ n, P13879595869141247805.a n = A048907 (n + 1)

end A048907

/-! ## A048907.P7294848842680882827

`record[A276123(A026741(n)+1)]`
-/

namespace A048907.P7294848842680882827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276123 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048907.P7294848842680882827

namespace A048907

/-- `record[A276123(A026741(n)+1)]` -/
def P7294848842680882827.Spec : Prop :=
  ∀ n, P7294848842680882827.a n = A048907 (n + 1)

end A048907

/-! ## A048907.P499228937910889694

`record[A276123(A093178(n)+1)]`
-/

namespace A048907.P499228937910889694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276123 (A093178 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048907.P499228937910889694

namespace A048907

/-- `record[A276123(A093178(n)+1)]` -/
def P499228937910889694.Spec : Prop :=
  ∀ n, P499228937910889694.a n = A048907 (n + 1)

end A048907

/-! ## A048907.P11624935459849454695

`record[A276123(A099375(n)+1)]`
-/

namespace A048907.P11624935459849454695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276123 (A099375 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048907.P11624935459849454695

namespace A048907

/-- `record[A276123(A099375(n)+1)]` -/
def P11624935459849454695.Spec : Prop :=
  ∀ n, P11624935459849454695.a n = A048907 (n + 1)

end A048907

/-! ## A048907.P6758074884579357776

`record[A276123(A276151(n+1))]`
-/

namespace A048907.P6758074884579357776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276123 (A276151 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048907.P6758074884579357776

namespace A048907

/-- `record[A276123(A276151(n+1))]` -/
def P6758074884579357776.Spec : Prop :=
  ∀ n, P6758074884579357776.a n = A048907 (n + 1)

end A048907

/-! ## A048907.P26153214505490320

`record[A033999(n)*A276123(n)]`
-/

namespace A048907.P26153214505490320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A276123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048907.P26153214505490320

namespace A048907

/-- `record[A033999(n)*A276123(n)]` -/
def P26153214505490320.Spec : Prop :=
  ∀ n, P26153214505490320.a n = A048907 (n + 1)

end A048907

/-!
# A048908: Indices of triangular numbers which are also 9-gonal.

The programs for A048908, the canonical program `A048908.P3695010200009789948` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048908 has offset 1).

The definition of A048908 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048908.P3695010200009789948

`17*a(n-1)-17*a(n-2)+a(n-3)` with `a(0)=1, a(1)=25, a(2)=406`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A048908

/-- `17*a(n-1)-17*a(n-2)+a(n-3)` -/
def P3695010200009789948.Spec : Prop :=
  ∀ n, P3695010200009789948.a n = A048908 (n + 1)

theorem P3695010200009789948.correct : P3695010200009789948.Spec := by
  intro n
  simp only [A048908, Nat.add_sub_cancel]

end A048908

/-! ## A048908.P12706330376206637944

`∑[3*A001081(n)]-2`
-/

namespace A048908.P12706330376206637944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A048908.P12706330376206637944

namespace A048908

/-- `∑[3*A001081(n)]-2` -/
def P12706330376206637944.Spec : Prop :=
  ∀ n, P12706330376206637944.a n = A048908 (n + 1)

end A048908

/-! ## A048908.P9487125398389251757

`(Δ[A073352(n)]-1)/2`
-/

namespace A048908.P9487125398389251757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073352 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 1 : ℚ) / 2

end

end A048908.P9487125398389251757

namespace A048908

/-- `(Δ[A073352(n)]-1)/2` -/
def P9487125398389251757.Spec : Prop :=
  ∀ n, P9487125398389251757.a n = (A048908 (n + 1) : ℚ)

end A048908

/-! ## A048908.P17414725363512311716

`3*A253879(n+1)-2`
-/

namespace A048908.P17414725363512311716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A253879 (n + 1) - 2

end

end A048908.P17414725363512311716

namespace A048908

/-- `3*A253879(n+1)-2` -/
def P17414725363512311716.Spec : Prop :=
  ∀ n, P17414725363512311716.a n = A048908 (n + 1)

end A048908

/-! ## A048908.P1569572493743670633

`A001080(n)+floor(Δ[A001080(n)/2])`
-/

namespace A048908.P1569572493743670633
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001080 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001080 n + ⌊f1 (n + 1) - f1 n⌋

end

end A048908.P1569572493743670633

namespace A048908

/-- `A001080(n)+floor(Δ[A001080(n)/2])` -/
def P1569572493743670633.Spec : Prop :=
  ∀ n, P1569572493743670633.a n = A048908 (n + 1)

end A048908

/-! ## A048908.P2766303808691807999

`A077398(2*n+1)-A077397(2*n)`
-/

namespace A048908.P2766303808691807999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077398 (2 * n + 1) - A077397 (2 * n)

end

end A048908.P2766303808691807999

namespace A048908

/-- `A077398(2*n+1)-A077397(2*n)` -/
def P2766303808691807999.Spec : Prop :=
  ∀ n, P2766303808691807999.a n = A048908 (n + 1)

end A048908

/-! ## A048908.P9911099265627802080

`floor(A159678(n+1)+A159678(n+1)/2)`
-/

namespace A048908.P9911099265627802080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A159678 (n + 1) : ℚ) + (A159678 (n + 1) : ℚ) / 2⌋

end

end A048908.P9911099265627802080

namespace A048908

/-- `floor(A159678(n+1)+A159678(n+1)/2)` -/
def P9911099265627802080.Spec : Prop :=
  ∀ n, P9911099265627802080.a n = A048908 (n + 1)

end A048908

/-! ## A048908.P8844364796348284096

`A077398(2*n+1)-A202638(2*n+1)`
-/

namespace A048908.P8844364796348284096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077398 (2 * n + 1) - A202638 (2 * n + 1)

end

end A048908.P8844364796348284096

namespace A048908

/-- `A077398(2*n+1)-A202638(2*n+1)` -/
def P8844364796348284096.Spec : Prop :=
  ∀ n, P8844364796348284096.a n = A048908 (n + 1)

end A048908

/-!
# A048909: 9-gonal (or nonagonal) triangular numbers.

The programs for A048909, there is no canonical definition to state claims against.
-/

/-! ## A048909.P13576661800389911671

`C(A048908(n+1)+1, 2)`
-/

namespace A048909.P13576661800389911671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048908 (n + 1) + 1).toNat 2

end

end A048909.P13576661800389911671

/-! ## A048909.P3055247609732225752

`C(ceil(Δ[A073352(n)/2]), 2)`
-/

namespace A048909.P3055247609732225752
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073352 n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈f1 (n + 1) - f1 n⌉.toNat 2

end

end A048909.P3055247609732225752

/-! ## A048909.P78764020575377344

`C(∑[3*A001081(n)]-1, 2)`
-/

namespace A048909.P78764020575377344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat 2

end

end A048909.P78764020575377344

/-! ## A048909.P8551734996957827869

`C(3*A253879(n+1)-1, 2)`
-/

namespace A048909.P8551734996957827869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * A253879 (n + 1) - 1).toNat 2

end

end A048909.P8551734996957827869

/-! ## A048909.P16983518466612217715

`A307169(n+1)/4*A307173(n+1)`
-/

namespace A048909.P16983518466612217715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307169 (n + 1) : ℚ) / 4 * (A307173 (n + 1) : ℚ)

end

end A048909.P16983518466612217715

/-!
# A048910: Indices of 9-gonal numbers that are also square.

The programs for A048910, the canonical program `A048910.P15573445848719788342` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048910 has offset 1).

The definition of A048910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048910.P15573445848719788342

`30*a(n-2)-a(n-4)-10` with `a(0)=1, a(1)=2, a(2)=18, a(3)=49`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A048910

/-- `30*a(n-2)-a(n-4)-10` -/
def P15573445848719788342.Spec : Prop :=
  ∀ n, P15573445848719788342.a n = A048910 (n + 1)

theorem P15573445848719788342.correct : P15573445848719788342.Spec := by
  intro n
  simp only [A048910, Nat.add_sub_cancel]

end A048910

/-!
# A048911: Indices of square numbers which are also 9-gonal.

The programs for A048911, the canonical program `A048911.P6098538183310573388` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048911 has offset 1).

The definition of A048911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048911.P6098538183310573388

`30*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=33, a(3)=91`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A048911

/-- `30*a(n-2)-a(n-4)` -/
def P6098538183310573388.Spec : Prop :=
  ∀ n, P6098538183310573388.a n = A048911 (n + 1)

theorem P6098538183310573388.correct : P6098538183310573388.Spec := by
  intro n
  simp only [A048911, Nat.add_sub_cancel]

end A048911

/-! ## A048911.P13041513520815126479

`sqrt(A036411(n+1))`
-/

namespace A048911.P13041513520815126479
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A036411 (n + 1) : ℝ)

end

end A048911.P13041513520815126479

namespace A048911

/-- `sqrt(A036411(n+1))` -/
def P13041513520815126479.Spec : Prop :=
  ∀ n, P13041513520815126479.a n = (A048911 (n + 1) : ℝ)

end A048911

/-! ## A048911.P4923175609168461094

`root(A036411(n+1), A028326(∑[n]))`
-/

namespace A048911.P4923175609168461094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036411 (n + 1) : ℝ) ^ (1 / (A028326 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ))

end

end A048911.P4923175609168461094

namespace A048911

/-- `root(A036411(n+1), A028326(∑[n]))` -/
def P4923175609168461094.Spec : Prop :=
  ∀ n, P4923175609168461094.a n = (A048911 (n + 1) : ℝ)

end A048911

/-! ## A048911.P2498229477886002163

`root(A036411(n+1), A036453(n+1))`
-/

namespace A048911.P2498229477886002163
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036411 (n + 1) : ℝ) ^ (1 / (A036453 (n + 1) : ℝ))

end

end A048911.P2498229477886002163

namespace A048911

/-- `root(A036411(n+1), A036453(n+1))` -/
def P2498229477886002163.Spec : Prop :=
  ∀ n, P2498229477886002163.a n = (A048911 (n + 1) : ℝ)

end A048911

/-! ## A048911.P14065848786036107264

`gcd(root(A036411(n+1), 2), A000038(n))`
-/

namespace A048911.P14065848786036107264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A036411 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000038 n)

end

end A048911.P14065848786036107264

namespace A048911

/-- `gcd(root(A036411(n+1), 2), A000038(n))` -/
def P14065848786036107264.Spec : Prop :=
  ∀ n, (P14065848786036107264.a n : ℤ) = A048911 (n + 1)

end A048911

/-! ## A048911.P10389609810646107657

`A033999(n)²*root(A036411(n+1), 2)`
-/

namespace A048911.P10389609810646107657
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A033999 n ^ 2 : ℝ) * (A036411 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A048911.P10389609810646107657

namespace A048911

/-- `A033999(n)²*root(A036411(n+1), 2)` -/
def P10389609810646107657.Spec : Prop :=
  ∀ n, P10389609810646107657.a n = (A048911 (n + 1) : ℝ)

end A048911

/-! ## A048911.P15317084381579995106

`root(A036411(n+1), 2)*A057427(n+1)`
-/

namespace A048911.P15317084381579995106
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036411 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A057427 (n + 1) : ℝ)

end

end A048911.P15317084381579995106

namespace A048911

/-- `root(A036411(n+1), 2)*A057427(n+1)` -/
def P15317084381579995106.Spec : Prop :=
  ∀ n, P15317084381579995106.a n = (A048911 (n + 1) : ℝ)

end A048911

/-! ## A048911.P5412026231041879097

`root(A036411(n+1), 2%A188896(n+1))`
-/

namespace A048911.P5412026231041879097
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036411 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A188896 (n + 1)) : ℝ))

end

end A048911.P5412026231041879097

namespace A048911

/-- `root(A036411(n+1), 2%A188896(n+1))` -/
def P5412026231041879097.Spec : Prop :=
  ∀ n, P5412026231041879097.a n = (A048911 (n + 1) : ℝ)

end A048911

/-! ## A048911.P958192058243226780

`root(A036411(n+1), 2)*A008683(A100484(2*(n+1)))`
-/

namespace A048911.P958192058243226780
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036411 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A008683 (A100484 (2 * (n + 1))).toNat : ℝ)

end

end A048911.P958192058243226780

namespace A048911

/-- `root(A036411(n+1), 2)*A008683(A100484(2*(n+1)))` -/
def P958192058243226780.Spec : Prop :=
  ∀ n, P958192058243226780.a n = (A048911 (n + 1) : ℝ)

end A048911

/-!
# A048916: Indices of 9-gonal numbers which are also hexagonal.

The programs for A048916, there is no canonical definition to state claims against.
-/

/-! ## A048916.P4052151299427158150

`A048907(or(1, n)+n)`
-/

namespace A048916.P4052151299427158150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048907 (Nat.lor 1 n + n)

end

end A048916.P4052151299427158150

/-! ## A048916.P13705198618152003120

`A276123(A047463(n+1))`
-/

namespace A048916.P13705198618152003120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276123 (A047463 (n + 1)).toNat

end

end A048916.P13705198618152003120

/-! ## A048916.P696204447901803188

`A048907(A047241(n+1)-n)`
-/

namespace A048916.P696204447901803188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048907 (A047241 (n + 1) - (n : ℤ)).toNat

end

end A048916.P696204447901803188

/-! ## A048916.P12738822611553980212

`A048907(A005408(n)-A000035(n))`
-/

namespace A048916.P12738822611553980212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048907 (A005408 n - A000035 n).toNat

end

end A048916.P12738822611553980212

/-! ## A048916.P7650172870912295278

`A276123(A016825(n)-A010673(n))`
-/

namespace A048916.P7650172870912295278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276123 (A016825 n - A010673 n).toNat

end

end A048916.P7650172870912295278

/-!
# A048917: Indices of hexagonal numbers which are also 9-gonal.

The programs for A048917, there is no canonical definition to state claims against.
-/

/-! ## A048917.P15541348886761439502

`record[A048909(n+1)%((Δ[A073352(n)]-1)/2+1)]`
-/

namespace A048917.P15541348886761439502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073352 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048909 (n + 1)) (SequenceMachineLib.roundAway ((f2 (n + 1) - f2 n - 1 : ℚ) / 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048917.P15541348886761439502

/-!
# A048918: 

The programs for A048918, there is no canonical definition to state claims against.
-/

/-! ## A048918.P13807107183547002638

`A048909(A047463(n+1)/2)`
-/

namespace A048918.P13807107183547002638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048909 (SequenceMachineLib.roundAway ((A047463 (n + 1) : ℚ) / 2)).toNat

end

end A048918.P13807107183547002638

/-! ## A048918.P3699789149558193418

`A048909(A028242(n)+A007494(n))`
-/

namespace A048918.P3699789149558193418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048909 (A028242 n + A007494 n).toNat

end

end A048918.P3699789149558193418

/-!
# A048919: Indices of 9-gonal numbers which are also heptagonal.

The programs for A048919, the canonical program `A048919.P13778186932455246103` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048919 has offset 1).

The definition of A048919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048919.P13778186932455246103

`142*a(n-1)-a(n-2)-50` with `a(0)=1, a(1)=88`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A048919

/-- `142*a(n-1)-a(n-2)-50` -/
def P13778186932455246103.Spec : Prop :=
  ∀ n, P13778186932455246103.a n = A048919 (n + 1)

theorem P13778186932455246103.correct : P13778186932455246103.Spec := by
  intro n
  simp only [A048919, Nat.add_sub_cancel]

end A048919

/-!
# A048920: Indices of heptagonal numbers (A000566) which are also 9-gonal.

The programs for A048920, the canonical program `A048920.P4321928305980717294` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048920 has offset 1).

The definition of A048920 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048920.P4321928305980717294

`142*a(n-1)-a(n-2)-42` with `a(0)=1, a(1)=104`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A048920

/-- `142*a(n-1)-a(n-2)-42` -/
def P4321928305980717294.Spec : Prop :=
  ∀ n, P4321928305980717294.a n = A048920 (n + 1)

theorem P4321928305980717294.correct : P4321928305980717294.Spec := by
  intro n
  simp only [A048920, Nat.add_sub_cancel]

end A048920

/-!
# A048922: Indices of 9-gonal numbers which are also octagonal.

The programs for A048922, the canonical program `A048922.P11828628516256215739` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048922 has offset 1).

The definition of A048922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048922.P11828628516256215739

`674*a(n-1)-a(n-2)-240` with `a(0)=1, a(1)=425`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A048922

/-- `674*a(n-1)-a(n-2)-240` -/
def P11828628516256215739.Spec : Prop :=
  ∀ n, P11828628516256215739.a n = A048922 (n + 1)

theorem P11828628516256215739.correct : P11828628516256215739.Spec := by
  intro n
  simp only [A048922, Nat.add_sub_cancel]

end A048922

/-!
# A048923: Indices of octagonal numbers which are also 9-gonal.

The programs for A048923, the canonical program `A048923.P5200507149950228937` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048923 has offset 1).

The definition of A048923 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048923.P5200507149950228937

`674*a(n-1)-a(n-2)-224` with `a(0)=1, a(1)=459`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A048923

/-- `674*a(n-1)-a(n-2)-224` -/
def P5200507149950228937.Spec : Prop :=
  ∀ n, P5200507149950228937.a n = A048923 (n + 1)

theorem P5200507149950228937.correct : P5200507149950228937.Spec := by
  intro n
  simp only [A048923, Nat.add_sub_cancel]

end A048923

/-!
# A048926: Numbers that are the sum of 5 positive cubes in exactly 1 way.

The programs for A048926, there is no canonical definition to state claims against.
-/

/-! ## A048926.P7270456485648600324

`eq[1, A025458(n)]`
-/

namespace A048926.P7270456485648600324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048926.P7270456485648600324

/-! ## A048926.P4483079152624371045

`eq[A025448(n)+1, A025449(n)]`
-/

namespace A048926.P4483079152624371045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025448 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025449 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048926.P4483079152624371045

/-! ## A048926.P3137650817026815077

`eq[A023443(A025449(n)), A025448(n)]`
-/

namespace A048926.P3137650817026815077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A025449 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025448 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048926.P3137650817026815077

/-! ## A048926.P17498782853265236206

`lt[A000007(n), A063524(A025458(n))]`
-/

namespace A048926.P17498782853265236206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A025458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048926.P17498782853265236206

/-! ## A048926.P18224805625610043959

`lt[A063524(n), A063524(A025458(n))]`
-/

namespace A048926.P18224805625610043959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A025458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048926.P18224805625610043959

/-! ## A048926.P13750609418424797803

`record[A003328(n+1)/A025458(A003328(n+1))]`
-/

namespace A048926.P13750609418424797803
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003328 (n + 1) : ℚ) / (A025458 (A003328 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048926.P13750609418424797803

/-! ## A048926.P5687922342486675084

`A000720(p?[A008578(n+1)*A025458(n)])`
-/

namespace A048926.P5687922342486675084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A025458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A048926.P5687922342486675084

/-! ## A048926.P1009124973321341303

`A065770(p?[A008578(n+1)*A025458(n)])`
-/

namespace A048926.P1009124973321341303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A025458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A048926.P1009124973321341303

/-!
# A048927: Numbers that are the sum of 5 positive cubes in exactly 2 ways.

The programs for A048927, there is no canonical definition to state claims against.
-/

/-! ## A048927.P6907504576528438149

`eq[2, A025458(n)]`
-/

namespace A048927.P6907504576528438149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048927.P6907504576528438149

/-! ## A048927.P1952524048979552215

`A343702(A112543(∑[n]+1))`
-/

namespace A048927.P1952524048979552215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343702 (A112543 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A048927.P1952524048979552215

/-! ## A048927.P4963590776604404366

`A343702(n+1)%A229467(n+1)`
-/

namespace A048927.P4963590776604404366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343702 (n + 1)) (A229467 (n + 1))

end

end A048927.P4963590776604404366

/-! ## A048927.P18332498340064626330

`A343702(n+1)+A000007(A000009(n))`
-/

namespace A048927.P18332498340064626330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343702 (n + 1) + A000007 (A000009 n).toNat

end

end A048927.P18332498340064626330

/-! ## A048927.P8610763004230967111

`A343702(n+1)+A000007(A331418(n))`
-/

namespace A048927.P8610763004230967111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343702 (n + 1) + A000007 (A331418 n).toNat

end

end A048927.P8610763004230967111

/-! ## A048927.P365317609897675946

`A343702(n+1)%A019423(A027693(n))`
-/

namespace A048927.P365317609897675946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343702 (n + 1)) (A019423 (A027693 n).toNat)

end

end A048927.P365317609897675946

/-! ## A048927.P17583330827385317796

`lcm(A008683(A050932(n)), A343702(n+1))`
-/

namespace A048927.P17583330827385317796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A050932 n).toNat) (A343702 (n + 1))

end

end A048927.P17583330827385317796

/-! ## A048927.P15002324198988406890

`A112543(A000124(n)+n)*A343702(n+1)`
-/

namespace A048927.P15002324198988406890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112543 (A000124 n + (n : ℤ)).toNat * A343702 (n + 1)

end

end A048927.P15002324198988406890

/-! ## A048927.P16314004243958069404

`A001222(A270999(n+1))*A343702(n+1)`
-/

namespace A048927.P16314004243958069404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A270999 (n + 1)).toNat * A343702 (n + 1)

end

end A048927.P16314004243958069404

/-!
# A048929: Numbers that are the sum of 6 positive cubes in exactly 1 way.

The programs for A048929, there is no canonical definition to state claims against.
-/

/-! ## A048929.P9369904494548530700

`eq[1, A025459(n)]`
-/

namespace A048929.P9369904494548530700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048929.P9369904494548530700

/-! ## A048929.P9660045310198081414

`eq[A025449(n)+1, A025450(n)]`
-/

namespace A048929.P9660045310198081414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025449 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025450 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048929.P9660045310198081414

/-! ## A048929.P6052693576274781039

`eq[A023443(A025450(n)), A025449(n)]`
-/

namespace A048929.P6052693576274781039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A025450 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025449 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048929.P6052693576274781039

/-! ## A048929.P9963794922363086528

`record[A003329(n+1)/A025459(A003329(n+1))]`
-/

namespace A048929.P9963794922363086528
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003329 (n + 1) : ℚ) / (A025459 (A003329 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048929.P9963794922363086528

/-! ## A048929.P13246432449988868511

`A049084(p?[A008578(n+1)*A025459(n)])`
-/

namespace A048929.P13246432449988868511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A025459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A048929.P13246432449988868511

/-!
# A048930: Numbers that are the sum of 6 positive cubes in exactly 2 ways.

The programs for A048930, there is no canonical definition to state claims against.
-/

/-! ## A048930.P17689385381296302397

`eq[2, A025459(n)]`
-/

namespace A048930.P17689385381296302397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048930.P17689385381296302397

/-! ## A048930.P6435554838175116283

`eq[A025449(n)+2, A025450(n)]`
-/

namespace A048930.P6435554838175116283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025449 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025450 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048930.P6435554838175116283

/-! ## A048930.P16848606356540562223

`lt[2, A000005(a(A025459(n))+3)]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=2, a(4)=0`
-/

namespace A048930.P16848606356540562223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1, 2, 0] fun n f2 =>
  A000005 (f2 (A025459 n).toNat + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A048930.P16848606356540562223

/-! ## A048930.P10812761966046383579

`eq[A025450(n), A030545(A025449(n))]`
-/

namespace A048930.P10812761966046383579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025450 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030545 (A025449 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048930.P10812761966046383579

/-! ## A048930.P2402252373865249942

`eq[1, A242067(A025450(n)-A025449(n))]`
-/

namespace A048930.P2402252373865249942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242067 (A025450 n - A025449 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048930.P2402252373865249942

/-! ## A048930.P16226294771337269986

`eq[A025449(n)+2, A025451(n)-A025460(n)]`
-/

namespace A048930.P16226294771337269986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025449 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n - A025460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048930.P16226294771337269986

/-!
# A048931: Numbers that are the sum of 6 positive cubes in exactly 3 ways.

The programs for A048931, there is no canonical definition to state claims against.
-/

/-! ## A048931.P10897942420003453027

`eq[3, A025459(n)]`
-/

namespace A048931.P10897942420003453027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048931.P10897942420003453027

/-! ## A048931.P461845612522220700

`A345512(A098240(n+1)^A061653(n+1))`
-/

namespace A048931.P461845612522220700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345512 (SequenceMachineLib.roundAway ((A098240 (n + 1) : ℚ) ^ (A061653 (n + 1) : ℤ))).toNat

end

end A048931.P461845612522220700

/-! ## A048931.P12972909032544878997

`A345512(A098240(n+1))%A188118(n+7)`
-/

namespace A048931.P12972909032544878997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345512 (A098240 (n + 1)).toNat) (A188118 (n + 7))

end

end A048931.P12972909032544878997

/-! ## A048931.P6262885685598076800

`A093803(A000043(n+1))*A345512(A098240(n+1))`
-/

namespace A048931.P6262885685598076800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (A000043 (n + 1)).toNat * A345512 (A098240 (n + 1)).toNat

end

end A048931.P6262885685598076800

/-! ## A048931.P9949109417376773262

`A345512(n+1)+A000007(A002426(n))`
-/

namespace A048931.P9949109417376773262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345512 (n + 1) + A000007 (A002426 n).toNat

end

end A048931.P9949109417376773262

/-!
# A048933: Smallest factor i of any factorization used in the definition of A014575(n).

The programs for A048933, there is no canonical definition to state claims against.
-/

/-! ## A048933.P15118653957877568368

`A014575(n+1)/A048934(n+1)`
-/

namespace A048933.P15118653957877568368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014575 (n + 1) : ℚ) / (A048934 (n + 1) : ℚ)

end

end A048933.P15118653957877568368

/-!
# A048934: Largest factor i of any factorization used in the definition of A014575(n).

The programs for A048934, there is no canonical definition to state claims against.
-/

/-! ## A048934.P3367821546128960953

`A014575(n+1)/A048933(n+1)`
-/

namespace A048934.P3367821546128960953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014575 (n + 1) : ℚ) / (A048933 (n + 1) : ℚ)

end

end A048934.P3367821546128960953

/-!
# A048938: 8-digit vampire numbers (definition 2).

The programs for A048938, there is no canonical definition to state claims against.
-/

/-! ## A048938.P2109893596343974536

`A014575(A112818(n+1))`
-/

namespace A048938.P2109893596343974536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014575 (A112818 (n + 1)).toNat

end

end A048938.P2109893596343974536

/-!
# A048941: a(n) is twice the coefficient of 1 in the fundamental unit of Q(sqrt(A000037(n))) where A000037 lists the nonsquare numbers (Version 1).

The programs for A048941, there is no canonical definition to state claims against.
-/

/-! ## A048941.P5388184655426718928

`A346419(n+1)%p?[10*n^3+9]`
-/

namespace A048941.P5388184655426718928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n ^ 3 + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346419 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A048941.P5388184655426718928

/-! ## A048941.P4101776330936178215

`A346419(A043318(n+1))`
-/

namespace A048941.P4101776330936178215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346419 (A043318 (n + 1)).toNat

end

end A048941.P4101776330936178215

/-! ## A048941.P17453490905575496814

`A346419(A044915(n+1))`
-/

namespace A048941.P17453490905575496814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346419 (A044915 (n + 1)).toNat

end

end A048941.P17453490905575496814

/-! ## A048941.P13391683428719333665

`A346419(A055647(n+1))`
-/

namespace A048941.P13391683428719333665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346419 (A055647 (n + 1)).toNat

end

end A048941.P13391683428719333665

/-! ## A048941.P3502663091614231778

`A346419(A055648(n)+1)`
-/

namespace A048941.P3502663091614231778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346419 (A055648 n + 1).toNat

end

end A048941.P3502663091614231778

/-!
# A048942: a(n) is twice the coefficient of the radical part in the fundamental unit of Q(sqrt(A000037(n))) where A000037 lists the nonsquare numbers (Version 1).

The programs for A048942, there is no canonical definition to state claims against.
-/

/-! ## A048942.P11285891313418339135

`A346420((n+1)*A011264(A000037(n+1)))`
-/

namespace A048942.P11285891313418339135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346420 ((n + 1 : ℤ) * A011264 (A000037 (n + 1)).toNat).toNat

end

end A048942.P11285891313418339135

/-! ## A048942.P3758245873918534761

`A346420(n+1)/A346418(A346456(3*(n+1)))`
-/

namespace A048942.P3758245873918534761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346420 (n + 1) : ℚ) / (A346418 (A346456 (3 * (n + 1))).toNat : ℚ)

end

end A048942.P3758245873918534761

/-! ## A048942.P18405151950933577264

`A346420(n+1)^A138107(A091042(n))`
-/

namespace A048942.P18405151950933577264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346420 (n + 1) : ℚ) ^ (A138107 (A091042 n).toNat : ℤ)

end

end A048942.P18405151950933577264

/-! ## A048942.P8308367279949802506

`gcd(A007814(A346412(n+1)), A346420(n+1))`
-/

namespace A048942.P8308367279949802506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (A346412 (n + 1)).toNat) (A346420 (n + 1))

end

end A048942.P8308367279949802506

/-!
# A048943: Product of divisors of n is a square.

The programs for A048943, the canonical program `A048943.P2977010921858124116` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048943 has offset 1).

The definition of A048943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7506 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048943.P14462200279300149227

`eq[1, A280684(n+1)%2]+1`
-/

namespace A048943.P14462200279300149227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280684 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048943.P14462200279300149227

namespace A048943

/-- `eq[1, A280684(n+1)%2]+1` -/
def P14462200279300149227.Spec : Prop :=
  ∀ n, (P14462200279300149227.a n : ℤ) = A048943 (n + 1)

end A048943

/-! ## A048943.P14330334261802287549

`lt[0, A280684(A000038(n)+n)%2]`
-/

namespace A048943.P14330334261802287549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280684 (A000038 n + (n : ℤ)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A048943.P14330334261802287549

namespace A048943

/-- `lt[0, A280684(A000038(n)+n)%2]` -/
def P14330334261802287549.Spec : Prop :=
  ∀ n, (P14330334261802287549.a n : ℤ) = A048943 (n + 1)

end A048943

/-! ## A048943.P2109613811070399115

`record[A280684(A018252(n+1))%2*A018252(n+1)]`
-/

namespace A048943.P2109613811070399115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280684 (A018252 (n + 1)).toNat) 2 * A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048943.P2109613811070399115

namespace A048943

/-- `record[A280684(A018252(n+1))%2*A018252(n+1)]` -/
def P2109613811070399115.Spec : Prop :=
  ∀ n, P2109613811070399115.a n = A048943 (n + 1)

end A048943

/-! ## A048943.P2977010921858124116

`eq[char[A258456(n+1)], A000007(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A048943

/-- `eq[char[A258456(n+1)], A000007(n)]` -/
def P2977010921858124116.Spec : Prop :=
  ∀ n, (P2977010921858124116.a n : ℤ) = A048943 (n + 1)

theorem P2977010921858124116.correct : P2977010921858124116.Spec := by
  intro n
  simp only [A048943, Nat.add_sub_cancel]

end A048943

/-! ## A048943.P11421744157041742753

`eq[char[A258456(n+1)], A000038(n)]`
-/

namespace A048943.P11421744157041742753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258456 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A048943.P11421744157041742753

namespace A048943

/-- `eq[char[A258456(n+1)], A000038(n)]` -/
def P11421744157041742753.Spec : Prop :=
  ∀ n, (P11421744157041742753.a n : ℤ) = A048943 (n + 1)

end A048943

/-! ## A048943.P2770921726061551195

`eq[0, A069625(n+1)%2]+1`
-/

namespace A048943.P2770921726061551195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069625 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048943.P2770921726061551195

namespace A048943

/-- `eq[0, A069625(n+1)%2]+1` -/
def P2770921726061551195.Spec : Prop :=
  ∀ n, (P2770921726061551195.a n : ℤ) = A048943 (n + 1)

end A048943

/-! ## A048943.P14710856223524907807

`lt[A069625(abs(1-n)+1)%2, 1]`
-/

namespace A048943.P14710856223524907807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069625 (|1 - (n : ℤ)| + 1).toNat) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A048943.P14710856223524907807

namespace A048943

/-- `lt[A069625(abs(1-n)+1)%2, 1]` -/
def P14710856223524907807.Spec : Prop :=
  ∀ n, (P14710856223524907807.a n : ℤ) = A048943 (n + 1)

end A048943

/-! ## A048943.P6878891146008975841

`eq[1, A006519(A207329(n+1))]+1`
-/

namespace A048943.P6878891146008975841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A207329 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048943.P6878891146008975841

namespace A048943

/-- `eq[1, A006519(A207329(n+1))]+1` -/
def P6878891146008975841.Spec : Prop :=
  ∀ n, (P6878891146008975841.a n : ℤ) = A048943 (n + 1)

end A048943

/-! ## A048943.P3824712684777194422

`eq[0, A132747(A069625(n+1)+1)]+1`
-/

namespace A048943.P3824712684777194422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (A069625 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048943.P3824712684777194422

namespace A048943

/-- `eq[0, A132747(A069625(n+1)+1)]+1` -/
def P3824712684777194422.Spec : Prop :=
  ∀ n, (P3824712684777194422.a n : ℤ) = A048943 (n + 1)

end A048943

/-! ## A048943.P534804496561964851

`lt[A112416(n+1), A014292(A145154(n))]`
-/

namespace A048943.P534804496561964851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014292 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048943.P534804496561964851

namespace A048943

/-- `lt[A112416(n+1), A014292(A145154(n))]` -/
def P534804496561964851.Spec : Prop :=
  ∀ n, (P534804496561964851.a n : ℤ) = A048943 (n + 1)

end A048943

/-!
# A048944: Numbers k such that the product of divisors of k is a cube.

The programs for A048944, there is no canonical definition to state claims against.
-/

/-! ## A048944.P17429058929676089993

`∪[A059269(n+1), A350014(n+1)]`
-/

namespace A048944.P17429058929676089993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048944.P17429058929676089993

/-! ## A048944.P12090783540285745535

`eq[char[A336590(n+1)], char[n^3]]`
-/

namespace A048944.P12090783540285745535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336590 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A048944.P12090783540285745535

/-! ## A048944.P180880897196276601

`eq[1, A087049(A050985(n+1))]+1`
-/

namespace A048944.P180880897196276601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A050985 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048944.P180880897196276601

/-! ## A048944.P12990311966252279541

`record[A000027(n+1)*A087049(A050985(n+1))]`
-/

namespace A048944.P12990311966252279541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A087049 (A050985 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048944.P12990311966252279541

/-! ## A048944.P9267525169724218790

`lt[1, A087049(A050985(n+1))*A092910(n)]+1`
-/

namespace A048944.P9267525169724218790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A050985 (n + 1)).toNat * A092910 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A048944.P9267525169724218790

/-! ## A048944.P12747314854709152391

`lt[1, A087049(A050985(n+1))+2-A057427(n)]+1`
-/

namespace A048944.P12747314854709152391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A050985 (n + 1)).toNat + 2 - A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A048944.P12747314854709152391

/-! ## A048944.P10283743983614839602

`lt[1, A087049(A050985(n+1))/A007318(n)+1]+1`
-/

namespace A048944.P10283743983614839602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087049 (A050985 (n + 1)).toNat : ℚ) / (A007318 n : ℚ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A048944.P10283743983614839602

/-! ## A048944.P17755165285457017160

`eq[1, A056926(A048798(n+1))]+1`
-/

namespace A048944.P17755165285457017160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A048798 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048944.P17755165285457017160

/-! ## A048944.P17360828089227677393

`record[A000027(n+1)/A056926(A048798(n+1))]`
-/

namespace A048944.P17360828089227677393
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A056926 (A048798 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048944.P17360828089227677393

/-!
# A048945: Numbers whose product of divisors is a fourth power.

The programs for A048945, there is no canonical definition to state claims against.
-/

/-! ## A048945.P17244824142837232385

`∪[A111398(n+1), A111399(n+1)]`
-/

namespace A048945.P17244824142837232385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048945.P17244824142837232385

/-! ## A048945.P5192735353426638531

`record[A331737(A167758(n+1))]`
-/

namespace A048945.P5192735353426638531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (A167758 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048945.P5192735353426638531

/-! ## A048945.P2155120035510748754

`filter[A167758(n+1), A295316(#)]`
-/

namespace A048945.P2155120035510748754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A048945.P2155120035510748754

/-! ## A048945.P7257723214970955012

`filter[A167758(n+1), A359473(#)]`
-/

namespace A048945.P7257723214970955012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A048945.P7257723214970955012

/-! ## A048945.P10751897706211080426

`record[(n+1)^A228591(A000005(n+1))]`
-/

namespace A048945.P10751897706211080426
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A228591 (A000005 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048945.P10751897706211080426

/-!
# A048946: Numbers k such that the product of divisors of k is a fifth power.

The programs for A048946, there is no canonical definition to state claims against.
-/

/-! ## A048946.P6677534141239168607

`A151977(A151939(n)+A117174(2*n+1))`
-/

namespace A048946.P6677534141239168607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151977 (A151939 n + A117174 (2 * n + 1)).toNat

end

end A048946.P6677534141239168607

/-!
# A048947: Let b(n) be the terms of A046528. Then sigma(b(n))=2^(a(n)), where sigma=A000203 is the sum of divisors function.

The programs for A048947, there is no canonical definition to state claims against.
-/

/-! ## A048947.P4568661653893501966

`log2(A094502(n+1))`
-/

namespace A048947.P4568661653893501966
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A094502 (n + 1) : ℝ)

end

end A048947.P4568661653893501966

/-! ## A048947.P4206986032708501810

`ceil(log2(A046528(n+1)))`
-/

namespace A048947.P4206986032708501810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A046528 (n + 1) : ℝ)⌉

end

end A048947.P4206986032708501810

/-! ## A048947.P5749612613374384965

`val(A094502(A000027(n+1)), 2)`
-/

namespace A048947.P5749612613374384965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A094502 (A000027 (n + 1)).toNat).toNat 2

end

end A048947.P5749612613374384965

/-! ## A048947.P8075468871964192625

`val(A094502(A008619(2*n)), 2)`
-/

namespace A048947.P8075468871964192625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A094502 (A008619 (2 * n)).toNat).toNat 2

end

end A048947.P8075468871964192625

/-! ## A048947.P15674551866903164138

`val(A094502(n+1), 2)%A001950(n+1)`
-/

namespace A048947.P15674551866903164138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.valuation (A094502 (n + 1)).toNat 2 : ℤ) (A001950 (n + 1))

end

end A048947.P15674551866903164138

/-! ## A048947.P6433156891879718388

`val(A094502(n+1), A020639(2*A046699(n+2)))`
-/

namespace A048947.P6433156891879718388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A094502 (n + 1)).toNat (A020639 (2 * A046699 (n + 2)).toNat).toNat

end

end A048947.P6433156891879718388

/-! ## A048947.P4382528734226693485

`val(A094502(n+1), A096826(A094473(n+1)))`
-/

namespace A048947.P4382528734226693485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A094502 (n + 1)).toNat (A096826 (A094473 (n + 1)).toNat).toNat

end

end A048947.P4382528734226693485

/-! ## A048947.P10488520348546349453

`val(A094502(n+1), A096826(A094498(n+1)))`
-/

namespace A048947.P10488520348546349453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A094502 (n + 1)).toNat (A096826 (A094498 (n + 1)).toNat).toNat

end

end A048947.P10488520348546349453

/-!
# A048950: Base-3 Euler-Jacobi pseudoprimes.

The programs for A048950, there is no canonical definition to state claims against.
-/

/-! ## A048950.P17732229975956366954

`∪[A020229(n+1), A329705(n+1)]`
-/

namespace A048950.P17732229975956366954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048950.P17732229975956366954

/-! ## A048950.P844061863584408634

`A262051(lt[A372436(2*n+1), A274078(2*n+3)])`
-/

namespace A048950.P844061863584408634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372436 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274078 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262051 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A048950.P844061863584408634

/-! ## A048950.P7760064692054670126

`A080512(A262051(comp[3*n]))`
-/

namespace A048950.P7760064692054670126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (A262051 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A048950.P7760064692054670126

/-! ## A048950.P14825525617860256490

`A262051(A285401(n+1))+A000007(A003266(n))`
-/

namespace A048950.P14825525617860256490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262051 (A285401 (n + 1)).toNat + A000007 (A003266 n).toNat

end

end A048950.P14825525617860256490

/-!
# A048951: (2,4) Ulam sequence.

The programs for A048951, there is no canonical definition to state claims against.
-/

/-! ## A048951.P4537898313066254339

`2*A002858(n+1)`
-/

namespace A048951.P4537898313066254339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002858 (n + 1)

end

end A048951.P4537898313066254339

/-! ## A048951.P6987564550261284444

`a(n-1)+2*A072832(n)` with `a(0)=2`
-/

namespace A048951.P6987564550261284444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 * A072832 n

end

end A048951.P6987564550261284444

/-! ## A048951.P5203271236633528503

`∑[2*A072832(A028310(n))]`
-/

namespace A048951.P5203271236633528503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072832 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048951.P5203271236633528503

/-! ## A048951.P1895814107594708212

`2*(∑[A072832(n+1)]+1-A072832(n+1))`
-/

namespace A048951.P1895814107594708212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A072832 (n + 1)))

end

end A048951.P1895814107594708212

/-! ## A048951.P3445510041274629447

`A002858(n+1)+∑[A072832(A028310(n))]`
-/

namespace A048951.P3445510041274629447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072832 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048951.P3445510041274629447

/-! ## A048951.P17906291171867614538

`A002858(A000027(n+1))+A002858(n+1)`
-/

namespace A048951.P17906291171867614538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (A000027 (n + 1)).toNat + A002858 (n + 1)

end

end A048951.P17906291171867614538

/-! ## A048951.P4920249268416093395

`A002858(n+1)+A002858((n+1)%A000040(n+1))`
-/

namespace A048951.P4920249268416093395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1) + A002858 (Int.tmod (n + 1 : ℤ) (A000040 (n + 1))).toNat

end

end A048951.P4920249268416093395

/-! ## A048951.P3589333422760249935

`A002858(n+1)+A002858(n+1)%A048653(n+1)`
-/

namespace A048951.P3589333422760249935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1) + Int.tmod (A002858 (n + 1)) (A048653 (n + 1))

end

end A048951.P3589333422760249935

/-! ## A048951.P3175897690410351120

`A002858(n+1)+A002858(n+2)-A072832(n+1)`
-/

namespace A048951.P3175897690410351120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1) + (A002858 (n + 2) - A072832 (n + 1))

end

end A048951.P3175897690410351120

/-! ## A048951.P559234939916753924

`record[2*A002858(A158416(n))]`
-/

namespace A048951.P559234939916753924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002858 (A158416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048951.P559234939916753924

/-! ## A048951.P9887797542686230564

`A002858(n+1)+record[A002858(A158416(n))]`
-/

namespace A048951.P9887797542686230564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (A158416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048951.P9887797542686230564

/-! ## A048951.P14671623279017995608

`record[2*A002858(A126759(n))]`
-/

namespace A048951.P14671623279017995608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002858 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048951.P14671623279017995608

/-! ## A048951.P14075368747560124807

`A002858(n+1)+record[A002858(A126759(n))]`
-/

namespace A048951.P14075368747560124807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048951.P14075368747560124807

/-! ## A048951.P12880122411911261661

`record[2*A002858(A022446(n))]`
-/

namespace A048951.P12880122411911261661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002858 (A022446 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048951.P12880122411911261661

/-! ## A048951.P8379427159204500137

`A002858(n+1)+record[A002858(A022446(n))]`
-/

namespace A048951.P8379427159204500137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (A022446 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048951.P8379427159204500137

/-! ## A048951.P15100798881211667420

`∑[2*A072832(A233583(n+1))]`
-/

namespace A048951.P15100798881211667420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072832 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048951.P15100798881211667420

/-! ## A048951.P5490201194367105303

`A004277(A002858(n+1))`
-/

namespace A048951.P5490201194367105303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A002858 (n + 1)).toNat

end

end A048951.P5490201194367105303

/-! ## A048951.P9115165090665669846

`A005408(A002858(n+1)-1)+1`
-/

namespace A048951.P9115165090665669846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A002858 (n + 1) - 1).toNat + 1

end

end A048951.P9115165090665669846

/-! ## A048951.P2906581817888990510

`A004280(A002858(n+1)+2)-1`
-/

namespace A048951.P2906581817888990510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A002858 (n + 1) + 2).toNat - 1

end

end A048951.P2906581817888990510

/-! ## A048951.P16077887000414334600

`A005843(A002858(1-(n-A005843(n))))`
-/

namespace A048951.P16077887000414334600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A002858 (1 - ((n : ℤ) - A005843 n)).toNat).toNat

end

end A048951.P16077887000414334600

/-!
# A048952: Prime 2-component links with n crossings.

The programs for A048952, there is no canonical definition to state claims against.
-/

/-! ## A048952.P12267597914145697603

`A185356(A024371(n+1))%A124268(n+1)`
-/

namespace A048952.P12267597914145697603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185356 (A024371 (n + 1)).toNat) (A124268 (n + 1))

end

end A048952.P12267597914145697603

/-!
# A048954: Wendt determinant of n-th circulant matrix C(n).

The programs for A048954, there is no canonical definition to state claims against.
-/

/-! ## A048954.P18071970218006690878

`A086569(n+1)*A294934(n+1)`
-/

namespace A048954.P18071970218006690878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086569 (n + 1) * A294934 (n + 1)

end

end A048954.P18071970218006690878

/-! ## A048954.P10334448275441327249

`A023532(A008574(n))*A086569(n+1)`
-/

namespace A048954.P10334448275441327249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A008574 n).toNat * A086569 (n + 1)

end

end A048954.P10334448275441327249

/-! ## A048954.P3054427652343942297

`A085491(A119347(n+1))*A086569(n+1)`
-/

namespace A048954.P3054427652343942297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (A119347 (n + 1)).toNat * A086569 (n + 1)

end

end A048954.P3054427652343942297

/-! ## A048954.P5838007266126368797

`A085491(A225561(n+1))*A086569(n+1)`
-/

namespace A048954.P5838007266126368797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 (A225561 (n + 1)).toNat * A086569 (n + 1)

end

end A048954.P5838007266126368797

/-! ## A048954.P16269885289299934052

`A086569(n+1)*A322860(A030057(n+1))`
-/

namespace A048954.P16269885289299934052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086569 (n + 1) * A322860 (A030057 (n + 1)).toNat

end

end A048954.P16269885289299934052

/-!
# A048955: Positions of 2-digit terms in the continued fraction for Pi (3 is at position 0).

The programs for A048955, there is no canonical definition to state claims against.
-/

/-! ## A048955.P1074236338203577744

`eq[1, A004216(A001203(n))]`
-/

namespace A048955.P1074236338203577744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A001203 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048955.P1074236338203577744

/-! ## A048955.P11862905994044694119

`lt[A073835(A001203(n)), A057427(n)]`
-/

namespace A048955.P11862905994044694119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073835 (A001203 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048955.P11862905994044694119

/-! ## A048955.P5903963980877989224

`lt[A073835(A001203(n)), A101264(n)]`
-/

namespace A048955.P5903963980877989224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073835 (A001203 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048955.P5903963980877989224

/-! ## A048955.P10260422695244764646

`lt[A073835(A001203(n)), A158388(n)]`
-/

namespace A048955.P10260422695244764646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073835 (A001203 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048955.P10260422695244764646

/-! ## A048955.P12594845487183756576

`eq[A020639(2*(n+1)), A055642(A001203(n))]`
-/

namespace A048955.P12594845487183756576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A001203 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048955.P12594845487183756576

/-!
# A048956: 3-digit terms in the continued fraction for Pi.

The programs for A048956, there is no canonical definition to state claims against.
-/

/-! ## A048956.P13008281427307113993

`A001203(A048957(n+1))`
-/

namespace A048956.P13008281427307113993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 (A048957 (n + 1)).toNat

end

end A048956.P13008281427307113993

/-!
# A048957: Positions of 3-digit terms in the continued fraction for Pi (3 is at position 0).

The programs for A048957, there is no canonical definition to state claims against.
-/

/-! ## A048957.P799831654437992176

`eq[2, A004216(A001203(n))]`
-/

namespace A048957.P799831654437992176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A001203 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048957.P799831654437992176

/-!
# A048958: 4-digit terms in the continued fraction for Pi.

The programs for A048958, there is no canonical definition to state claims against.
-/

/-! ## A048958.P510707824037543926

`A001203(A048959(n+1))`
-/

namespace A048958.P510707824037543926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 (A048959 (n + 1)).toNat

end

end A048958.P510707824037543926

/-!
# A048959: Positions of 4-digit terms in the continued fraction for Pi (3 is at position 0).

The programs for A048959, there is no canonical definition to state claims against.
-/

/-! ## A048959.P13841354194752514290

`A225802(A048958(n+1))`
-/

namespace A048959.P13841354194752514290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225802 (A048958 (n + 1)).toNat

end

end A048959.P13841354194752514290

/-!
# A048964: a(n) is smallest number k such that k! >= n-th primorial number (A002110(n)).

The programs for A048964, there is no canonical definition to state claims against.
-/

/-! ## A048964.P7304237393465637186

`∑[A085301(n+1)]-char[1]`
-/

namespace A048964.P7304237393465637186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085301 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A048964.P7304237393465637186

/-! ## A048964.P9496092616090151915

`A073071(n+1)-C(n, n²)`
-/

namespace A048964.P9496092616090151915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073071 (n + 1) - (Nat.choose n (n ^ 2) : ℤ)

end

end A048964.P9496092616090151915

/-! ## A048964.P17840734480949054805

`A073071(A184985(n+1))`
-/

namespace A048964.P17840734480949054805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073071 (A184985 (n + 1)).toNat

end

end A048964.P17840734480949054805

/-! ## A048964.P7799386878498480368

`A159075(n)+A085302(n+1)`
-/

namespace A048964.P7799386878498480368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A085302 (n + 1)

end

end A048964.P7799386878498480368

/-! ## A048964.P8657497396956722667

`A085302(n+1)-A063524(n)`
-/

namespace A048964.P8657497396956722667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085302 (n + 1) - A063524 n

end

end A048964.P8657497396956722667

/-! ## A048964.P9160201359675271141

`A073071(n+1)-A019590(n+1)`
-/

namespace A048964.P9160201359675271141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073071 (n + 1) - A019590 (n + 1)

end

end A048964.P9160201359675271141

/-! ## A048964.P12792674342984290766

`A073071(n+1)-(A000007(n)+char[1])`
-/

namespace A048964.P12792674342984290766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073071 (n + 1) - (A000007 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A048964.P12792674342984290766

/-! ## A048964.P1399851787948474965

`A073071(n+1)-and(1, A000010(n+1))`
-/

namespace A048964.P1399851787948474965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073071 (n + 1) - Int.land 1 (A000010 (n + 1))

end

end A048964.P1399851787948474965

/-! ## A048964.P11990076533372645144

`A073071(n+1)-char[2-A292777(n+1)]`
-/

namespace A048964.P11990076533372645144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A292777 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073071 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A048964.P11990076533372645144

/-! ## A048964.P3547099800704114570

`A073097(A000010(n+1))+A073071(n+1)`
-/

namespace A048964.P3547099800704114570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (A000010 (n + 1)).toNat + A073071 (n + 1)

end

end A048964.P3547099800704114570

/-! ## A048964.P9100074199912631096

`A073097(A053158(n+1))+A073071(n+1)`
-/

namespace A048964.P9100074199912631096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (A053158 (n + 1)).toNat + A073071 (n + 1)

end

end A048964.P9100074199912631096

/-! ## A048964.P12745847405623660515

`A057427(a(n-1))*A073071(n+1)` with `a(0)=2, a(1)=3`
-/

namespace A048964.P12745847405623660515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A057427 (a (n - 1)).toNat * A073071 (n + 1)

end

end A048964.P12745847405623660515

/-! ## A048964.P1366837429971657009

`gcd(A000038(a(n-1)), A073071(n+1))` with `a(0)=2, a(1)=3`
-/

namespace A048964.P1366837429971657009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  Int.gcd (A000038 (a (n - 1))) (A073071 (n + 1))

end

end A048964.P1366837429971657009

/-! ## A048964.P12632107386607534106

`A073097(A002088(n))+A073071(n+1)`
-/

namespace A048964.P12632107386607534106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (A002088 n).toNat + A073071 (n + 1)

end

end A048964.P12632107386607534106

/-! ## A048964.P6677876008868596866

`A073097(n²-n)+A073071(n+1)`
-/

namespace A048964.P6677876008868596866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (n ^ 2 - n) + A073071 (n + 1)

end

end A048964.P6677876008868596866

/-!
# A048967: Number of even entries in row n of Pascal's triangle (A007318).

The programs for A048967, the canonical program `A048967.P3595347913858362397` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048967 has offset 0).

The definition of A048967 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048967.P11605086918534578585

`n+1-A001316(n)`
-/

namespace A048967.P11605086918534578585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (1 - A001316 n)

end

end A048967.P11605086918534578585

namespace A048967

/-- `n+1-A001316(n)` -/
def P11605086918534578585.Spec : Prop :=
  ∀ n, P11605086918534578585.a n = A048967 n

end A048967

/-! ## A048967.P14051214601836474643

`n+1-2^A000120(n)`
-/

namespace A048967.P14051214601836474643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) + (1 - (2 : ℚ) ^ (A000120 n : ℤ))

end

end A048967.P14051214601836474643

namespace A048967

/-- `n+1-2^A000120(n)` -/
def P14051214601836474643.Spec : Prop :=
  ∀ n, P14051214601836474643.a n = (A048967 n : ℚ)

end A048967

/-! ## A048967.P3595347913858362397

`A000120(A219843(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A048967

/-- `A000120(A219843(n))` -/
def P3595347913858362397.Spec : Prop :=
  ∀ n, P3595347913858362397.a n = A048967 n

theorem P3595347913858362397.correct : P3595347913858362397.Spec := by
  intro n
  simp only [A048967]

end A048967

/-! ## A048967.P15693155061987418904

`1-2^(n-(∑[val(n+1, 2)]-val(n+1, 2)))+n`
-/

namespace A048967.P15693155061987418904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (2 : ℚ) ^ ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)) : ℤ) + (n : ℚ)

end

end A048967.P15693155061987418904

namespace A048967

/-- `1-2^(n-(∑[val(n+1, 2)]-val(n+1, 2)))+n` -/
def P15693155061987418904.Spec : Prop :=
  ∀ n, P15693155061987418904.a n = (A048967 n : ℚ)

end A048967

/-! ## A048967.P2664374803060360295

`n-A038573(n)`
-/

namespace A048967.P2664374803060360295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A038573 n

end

end A048967.P2664374803060360295

namespace A048967

/-- `n-A038573(n)` -/
def P2664374803060360295.Spec : Prop :=
  ∀ n, P2664374803060360295.a n = A048967 n

end A048967

/-! ## A048967.P12851007078114975272

`A071042(n)-n`
-/

namespace A048967.P12851007078114975272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071042 n - (n : ℤ)

end

end A048967.P12851007078114975272

namespace A048967

/-- `A071042(n)-n` -/
def P12851007078114975272.Spec : Prop :=
  ∀ n, P12851007078114975272.a n = A048967 n

end A048967

/-! ## A048967.P978664201290395182

`ceil(A071050(n)/2)`
-/

namespace A048967.P978664201290395182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A071050 n : ℚ) / 2⌉

end

end A048967.P978664201290395182

namespace A048967

/-- `ceil(A071050(n)/2)` -/
def P978664201290395182.Spec : Prop :=
  ∀ n, P978664201290395182.a n = A048967 n

end A048967

/-! ## A048967.P5130243097906605144

`A261366(n+1)-1`
-/

namespace A048967.P5130243097906605144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261366 (n + 1) - 1

end

end A048967.P5130243097906605144

namespace A048967

/-- `A261366(n+1)-1` -/
def P5130243097906605144.Spec : Prop :=
  ∀ n, P5130243097906605144.a n = A048967 n

end A048967

/-! ## A048967.P3606168941067796770

`Δ[A051679(abs(1-n))]`
-/

namespace A048967.P3606168941067796770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051679 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048967.P3606168941067796770

namespace A048967

/-- `Δ[A051679(abs(1-n))]` -/
def P3606168941067796770.Spec : Prop :=
  ∀ n, P3606168941067796770.a n = A048967 n

end A048967

/-! ## A048967.P15628305061009156758

`1-sqrt(A102376(n))+n`
-/

namespace A048967.P15628305061009156758
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - Real.sqrt (A102376 n : ℝ) + (n : ℝ)

end

end A048967.P15628305061009156758

namespace A048967

/-- `1-sqrt(A102376(n))+n` -/
def P15628305061009156758.Spec : Prop :=
  ∀ n, P15628305061009156758.a n = (A048967 n : ℝ)

end A048967

/-! ## A048967.P9387112932906020456

`1-Δ[A006046(n)]+n`
-/

namespace A048967.P9387112932906020456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A048967.P9387112932906020456

namespace A048967

/-- `1-Δ[A006046(n)]+n` -/
def P9387112932906020456.Spec : Prop :=
  ∀ n, P9387112932906020456.a n = A048967 n

end A048967

/-! ## A048967.P8674116200698794566

`1-A060632(2*n)+n`
-/

namespace A048967.P8674116200698794566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A060632 (2 * n) + (n : ℤ)

end

end A048967.P8674116200698794566

namespace A048967

/-- `1-A060632(2*n)+n` -/
def P8674116200698794566.Spec : Prop :=
  ∀ n, P8674116200698794566.a n = A048967 n

end A048967

/-! ## A048967.P7417559059834558539

`(A064405(n)+n+1)/2`
-/

namespace A048967.P7417559059834558539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064405 n + (n + 1 : ℤ) : ℚ) / 2

end

end A048967.P7417559059834558539

namespace A048967

/-- `(A064405(n)+n+1)/2` -/
def P7417559059834558539.Spec : Prop :=
  ∀ n, P7417559059834558539.a n = (A048967 n : ℚ)

end A048967

/-! ## A048967.P17965645483861376535

`1-(A001316(2*n)-n)`
-/

namespace A048967.P17965645483861376535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A001316 (2 * n) - (n : ℤ))

end

end A048967.P17965645483861376535

namespace A048967

/-- `1-(A001316(2*n)-n)` -/
def P17965645483861376535.Spec : Prop :=
  ∀ n, P17965645483861376535.a n = A048967 n

end A048967

/-! ## A048967.P10945862520561668589

`n+1-A117973(n)/2`
-/

namespace A048967.P10945862520561668589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A117973 n : ℚ) / 2

end

end A048967.P10945862520561668589

namespace A048967

/-- `n+1-A117973(n)/2` -/
def P10945862520561668589.Spec : Prop :=
  ∀ n, P10945862520561668589.a n = (A048967 n : ℚ)

end A048967

/-! ## A048967.P12738603079550342328

`n+1-A160713(n)/3`
-/

namespace A048967.P12738603079550342328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A160713 n : ℚ) / 3

end

end A048967.P12738603079550342328

namespace A048967

/-- `n+1-A160713(n)/3` -/
def P12738603079550342328.Spec : Prop :=
  ∀ n, P12738603079550342328.a n = (A048967 n : ℚ)

end A048967

/-! ## A048967.P8834745350539437172

`A249304(n)-a(n-1)` with `a(0)=0`
-/

namespace A048967.P8834745350539437172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A249304 n - a (n - 1)

end

end A048967.P8834745350539437172

namespace A048967

/-- `A249304(n)-a(n-1)` -/
def P8834745350539437172.Spec : Prop :=
  ∀ n, P8834745350539437172.a n = A048967 n

end A048967

/-! ## A048967.P15672591077510419044

`n+1-A060632(Δ[n²])`
-/

namespace A048967.P15672591077510419044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A060632 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A048967.P15672591077510419044

namespace A048967

/-- `n+1-A060632(Δ[n²])` -/
def P15672591077510419044.Spec : Prop :=
  ∀ n, P15672591077510419044.a n = A048967 n

end A048967

/-! ## A048967.P9690563924267823400

`n+1-2^(2*n-A005187(n))`
-/

namespace A048967.P9690563924267823400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (2 : ℚ) ^ ((2 * n : ℤ) - A005187 n : ℤ)

end

end A048967.P9690563924267823400

namespace A048967

/-- `n+1-2^(2*n-A005187(n))` -/
def P9690563924267823400.Spec : Prop :=
  ∀ n, P9690563924267823400.a n = (A048967 n : ℚ)

end A048967

/-! ## A048967.P10713148254820790509

`n-A000225(∑[1-val(abs(1-n)+1, 2)])`
-/

namespace A048967.P10713148254820790509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000225 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048967.P10713148254820790509

namespace A048967

/-- `n-A000225(∑[1-val(abs(1-n)+1, 2)])` -/
def P10713148254820790509.Spec : Prop :=
  ∀ n, P10713148254820790509.a n = A048967 n

end A048967

/-!
# A048969: Composite numbers k such that sigma(k) / d(k) is prime.

The programs for A048969, there is no canonical definition to state claims against.
-/

/-! ## A048969.P8113910705138929541

`filter[A048968(n+1), A005171(#)]`
-/

namespace A048969.P8113910705138929541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A048969.P8113910705138929541

/-! ## A048969.P15748761798348389230

`filter[A048968(n+1), A066247(#)]`
-/

namespace A048969.P15748761798348389230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A048969.P15748761798348389230

/-! ## A048969.P18197507394529903423

`filter[A048968(n+1), A202238(#)]`
-/

namespace A048969.P18197507394529903423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A048969.P18197507394529903423

/-! ## A048969.P12672254332693588797

`∩[A048968(n+1), A354360(n+1)]`
-/

namespace A048969.P12672254332693588797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048969.P12672254332693588797

/-! ## A048969.P17207467349743417791

`∩[A048968(n+1), A387941(n+1)]`
-/

namespace A048969.P17207467349743417791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048969.P17207467349743417791

/-!
# A048970: Prime Keith numbers.

The programs for A048970, there is no canonical definition to state claims against.
-/

/-! ## A048970.P8032395203583948045

`A006576(A003159(n+1)+A001501(n))`
-/

namespace A048970.P8032395203583948045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006576 (A003159 (n + 1) + A001501 n).toNat

end

end A048970.P8032395203583948045

/-!
# A048971: Let d(n) = number of distinct primes dividing n (A001221); sequence gives t such that d(t)=d(t+1)=...=d(t+n-1) is a run of record length.

The programs for A048971, there is no canonical definition to state claims against.
-/

/-! ## A048971.P9241685409758718432

`record[A048932(A070939(n))]`
-/

namespace A048971.P9241685409758718432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048932 (A070939 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048971.P9241685409758718432

/-! ## A048971.P9804695133855532071

`record[A048932(A077168(n))]`
-/

namespace A048971.P9804695133855532071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048932 (A077168 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048971.P9804695133855532071

/-! ## A048971.P15901914994771877080

`record[A048932(A094528(n+1))]`
-/

namespace A048971.P15901914994771877080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048932 (A094528 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048971.P15901914994771877080

/-! ## A048971.P5849432221201528996

`record[A048932(A319572(n)+1)]`
-/

namespace A048971.P5849432221201528996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048932 (A319572 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048971.P5849432221201528996

/-!
# A048973: Complement of A005243.

The programs for A048973, there is no canonical definition to state claims against.
-/

/-! ## A048973.P5749372879237816260

`eq[char[A005243(n+1)], A000007(n)]`
-/

namespace A048973.P5749372879237816260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005243 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A048973.P5749372879237816260

/-! ## A048973.P11247356229882701764

`eq[char[A005243(n+1)], A000038(n)]`
-/

namespace A048973.P11247356229882701764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005243 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A048973.P11247356229882701764

/-! ## A048973.P15841546349142808687

`eq[char[A005243(n+1)], A238429(2*n)]`
-/

namespace A048973.P15841546349142808687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005243 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238429 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A048973.P15841546349142808687

/-! ## A048973.P13852513495545094290

`eq[char[A005243(n+1)], A151878(n)]`
-/

namespace A048973.P13852513495545094290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005243 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A048973.P13852513495545094290

/-! ## A048973.P10445712218315923326

`eq[char[A005243(n+1)], A151933(n)]`
-/

namespace A048973.P10445712218315923326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005243 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A048973.P10445712218315923326

/-!
# A048974: Odd numbers that are the sum of 2 primes.

The programs for A048974, the canonical program `A048974.P12620924037349992420` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048974 has offset 1).

The definition of A048974 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065091, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048974.P12620924037349992420

`A065091(n+1)+2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A048974

/-- `A065091(n+1)+2` -/
def P12620924037349992420.Spec : Prop :=
  ∀ n, P12620924037349992420.a n = A048974 (n + 1)

theorem P12620924037349992420.correct : P12620924037349992420.Spec := by
  intro n
  simp only [A048974, Nat.add_sub_cancel]

end A048974

/-! ## A048974.P6858242931530839746

`p?[2*n+1]+2`
-/

namespace A048974.P6858242931530839746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 2

end

end A048974.P6858242931530839746

namespace A048974

/-- `p?[2*n+1]+2` -/
def P6858242931530839746.Spec : Prop :=
  ∀ n, (P6858242931530839746.a n : ℤ) = A048974 (n + 1)

end A048974

/-! ## A048974.P4023229419332533001

`or(1, p?[n+1+n]+1)`
-/

namespace A048974.P4023229419332533001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A048974.P4023229419332533001

namespace A048974

/-- `or(1, p?[n+1+n]+1)` -/
def P4023229419332533001.Spec : Prop :=
  ∀ n, (P4023229419332533001.a n : ℤ) = A048974 (n + 1)

end A048974

/-! ## A048974.P235504341744379881

`xor(1, p?[n+1+n]+1)`
-/

namespace A048974.P235504341744379881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A048974.P235504341744379881

namespace A048974

/-- `xor(1, p?[n+1+n]+1)` -/
def P235504341744379881.Spec : Prop :=
  ∀ n, (P235504341744379881.a n : ℤ) = A048974 (n + 1)

end A048974

/-! ## A048974.P3086560319729875524

`∑{d}[p?[n+1+n], #]+1`
-/

namespace A048974.P3086560319729875524
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d + 1

end

end A048974.P3086560319729875524

namespace A048974

/-- `∑{d}[p?[n+1+n], #]+1` -/
def P3086560319729875524.Spec : Prop :=
  ∀ n, (P3086560319729875524.a n : ℤ) = A048974 (n + 1)

end A048974

/-! ## A048974.P9059405669781374326

`∏{d}[p?[n+1+n], #]+2`
-/

namespace A048974.P9059405669781374326
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d + 2

end

end A048974.P9059405669781374326

namespace A048974

/-- `∏{d}[p?[n+1+n], #]+2` -/
def P9059405669781374326.Spec : Prop :=
  ∀ n, (P9059405669781374326.a n : ℤ) = A048974 (n + 1)

end A048974

/-! ## A048974.P7967327204094674490

`∑{p}[p?[n+1+n], #+2]`
-/

namespace A048974.P7967327204094674490
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p + 2)

end

end A048974.P7967327204094674490

namespace A048974

/-- `∑{p}[p?[n+1+n], #+2]` -/
def P7967327204094674490.Spec : Prop :=
  ∀ n, (P7967327204094674490.a n : ℤ) = A048974 (n + 1)

end A048974

/-! ## A048974.P18374946575786632874

`∏{p}[p?[n+1+n], #+2]`
-/

namespace A048974.P18374946575786632874
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p + 2)

end

end A048974.P18374946575786632874

namespace A048974

/-- `∏{p}[p?[n+1+n], #+2]` -/
def P18374946575786632874.Spec : Prop :=
  ∀ n, (P18374946575786632874.a n : ℤ) = A048974 (n + 1)

end A048974

/-! ## A048974.P1107728809352359149

`A055670(n+2)+1`
-/

namespace A048974.P1107728809352359149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 2) + 1

end

end A048974.P1107728809352359149

namespace A048974

/-- `A055670(n+2)+1` -/
def P1107728809352359149.Spec : Prop :=
  ∀ n, P1107728809352359149.a n = A048974 (n + 1)

end A048974

/-! ## A048974.P2079273111972048739

`A298252(n+1)-1`
-/

namespace A048974.P2079273111972048739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298252 (n + 1) - 1

end

end A048974.P2079273111972048739

namespace A048974

/-- `A298252(n+1)-1` -/
def P2079273111972048739.Spec : Prop :=
  ∀ n, P2079273111972048739.a n = A048974 (n + 1)

end A048974

/-! ## A048974.P8547980771870671928

`∑{p}[A001749(n+2), #]`
-/

namespace A048974.P8547980771870671928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A048974.P8547980771870671928

namespace A048974

/-- `∑{p}[A001749(n+2), #]` -/
def P8547980771870671928.Spec : Prop :=
  ∀ n, (P8547980771870671928.a n : ℤ) = A048974 (n + 1)

end A048974

/-! ## A048974.P5985875013942537190

`Δ[A007504(n+1)]+2`
-/

namespace A048974.P5985875013942537190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A048974.P5985875013942537190

namespace A048974

/-- `Δ[A007504(n+1)]+2` -/
def P5985875013942537190.Spec : Prop :=
  ∀ n, P5985875013942537190.a n = A048974 (n + 1)

end A048974

/-! ## A048974.P18077664422796758149

`∑[A001223(n+1)]+4`
-/

namespace A048974.P18077664422796758149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A048974.P18077664422796758149

namespace A048974

/-- `∑[A001223(n+1)]+4` -/
def P18077664422796758149.Spec : Prop :=
  ∀ n, P18077664422796758149.a n = A048974 (n + 1)

end A048974

/-! ## A048974.P1274842487523042880

`2*A006254(n+1)+1`
-/

namespace A048974.P1274842487523042880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006254 (n + 1) + 1

end

end A048974.P1274842487523042880

namespace A048974

/-- `2*A006254(n+1)+1` -/
def P1274842487523042880.Spec : Prop :=
  ∀ n, P1274842487523042880.a n = A048974 (n + 1)

end A048974

/-! ## A048974.P4923717103905537740

`2*A005097(n+1)+3`
-/

namespace A048974.P4923717103905537740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005097 (n + 1) + 3

end

end A048974.P4923717103905537740

namespace A048974

/-- `2*A005097(n+1)+3` -/
def P4923717103905537740.Spec : Prop :=
  ∀ n, P4923717103905537740.a n = A048974 (n + 1)

end A048974

/-! ## A048974.P11915219312229314103

`A014690(n+1)+1-n`
-/

namespace A048974.P11915219312229314103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014690 (n + 1) + (1 - (n : ℤ))

end

end A048974.P11915219312229314103

namespace A048974

/-- `A014690(n+1)+1-n` -/
def P11915219312229314103.Spec : Prop :=
  ∀ n, P11915219312229314103.a n = A048974 (n + 1)

end A048974

/-! ## A048974.P16916901189701086264

`A014687(n+1)+A010684(n)`
-/

namespace A048974.P16916901189701086264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014687 (n + 1) + A010684 n

end

end A048974.P16916901189701086264

namespace A048974

/-- `A014687(n+1)+A010684(n)` -/
def P16916901189701086264.Spec : Prop :=
  ∀ n, P16916901189701086264.a n = A048974 (n + 1)

end A048974

/-! ## A048974.P2376765601323493831

`A024000(n)+A014690(n+1)`
-/

namespace A048974.P2376765601323493831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + A014690 (n + 1)

end

end A048974.P2376765601323493831

namespace A048974

/-- `A024000(n)+A014690(n+1)` -/
def P2376765601323493831.Spec : Prop :=
  ∀ n, P2376765601323493831.a n = A048974 (n + 1)

end A048974

/-! ## A048974.P14977203901646466170

`A135731(n+1)+A054977(n)`
-/

namespace A048974.P14977203901646466170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1) + A054977 n

end

end A048974.P14977203901646466170

namespace A048974

/-- `A135731(n+1)+A054977(n)` -/
def P14977203901646466170.Spec : Prop :=
  ∀ n, P14977203901646466170.a n = A048974 (n + 1)

end A048974

/-! ## A048974.P14496439906428740788

`A052147(n+1)+A001223(n+1)`
-/

namespace A048974.P14496439906428740788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + A001223 (n + 1)

end

end A048974.P14496439906428740788

namespace A048974

/-- `A052147(n+1)+A001223(n+1)` -/
def P14496439906428740788.Spec : Prop :=
  ∀ n, P14496439906428740788.a n = A048974 (n + 1)

end A048974

/-!
# A048975: Pairs of consecutive primes p, q, for which the smallest primitive root of q is 1 greater than the smallest primitive root of p.

The programs for A048975, there is no canonical definition to state claims against.
-/

/-! ## A048975.P1413200280173414048

`p?[∑[A204922(A085478(n))]]`
-/

namespace A048975.P1413200280173414048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (A085478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048975.P1413200280173414048

/-! ## A048975.P16676049765423408372

`p?[record[A113219(A187769(n))]]`
-/

namespace A048975.P16676049765423408372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113219 (A187769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048975.P16676049765423408372

/-! ## A048975.P12934447586140829340

`p?[∑[A336651(A130082(n+1))]]`
-/

namespace A048975.P12934447586140829340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336651 (A130082 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048975.P12934447586140829340

/-! ## A048975.P17217630419296751446

`p?[∑[A336850(A336866(n+4))]]`
-/

namespace A048975.P17217630419296751446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336850 (A336866 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048975.P17217630419296751446

/-! ## A048975.P17232806774397841576

`∩[A253643(n+1), A350443(n+1)]`
-/

namespace A048975.P17232806774397841576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048975.P17232806774397841576

/-!
# A048976: Primes whose least primitive root is an odd prime.

The programs for A048976, there is no canonical definition to state claims against.
-/

/-! ## A048976.P17554783412058364220

`p?[A317649(n+1)]`
-/

namespace A048976.P17554783412058364220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048976.P17554783412058364220

/-! ## A048976.P1800859957185756220

`record[A006530(A317649(n+3))]`
-/

namespace A048976.P1800859957185756220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A317649 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048976.P1800859957185756220

/-! ## A048976.P11206964393846728009

`filter[A317649(n+1), A010051(#)]`
-/

namespace A048976.P11206964393846728009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A048976.P11206964393846728009

/-! ## A048976.P17616034407914730577

`∩[A000040(n+1), A317649(n+1)]`
-/

namespace A048976.P17616034407914730577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048976.P17616034407914730577

/-! ## A048976.P6220083399468976166

`∩[A004139(n+1), A317649(n+1)]`
-/

namespace A048976.P6220083399468976166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048976.P6220083399468976166

/-! ## A048976.P2476403183223854115

`∩[A006005(n+1), A317649(n+1)]`
-/

namespace A048976.P2476403183223854115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048976.P2476403183223854115

/-! ## A048976.P1317312007148024872

`∩[A008578(n+1), A317649(n+1)]`
-/

namespace A048976.P1317312007148024872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048976.P1317312007148024872

/-! ## A048976.P15302599243637924873

`∩[A015919(n+1), A317649(n+1)]`
-/

namespace A048976.P15302599243637924873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048976.P15302599243637924873

/-! ## A048976.P17163101967656819053

`∩[A033946(n+1), A317649(n+1)]`
-/

namespace A048976.P17163101967656819053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048976.P17163101967656819053

/-! ## A048976.P6127427051267786552

`∩[A045319(n+1), A317649(n+1)]`
-/

namespace A048976.P6127427051267786552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048976.P6127427051267786552

/-! ## A048976.P6112063757116214022

`∩[A045344(n+1), A317649(n+1)]`
-/

namespace A048976.P6112063757116214022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048976.P6112063757116214022

/-! ## A048976.P7141135393559706245

`∩[A065091(n+1), A317649(n+1)]`
-/

namespace A048976.P7141135393559706245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048976.P7141135393559706245

/-! ## A048976.P14226920773995070402

`∩[A066047(n+1), A317649(n+1)]`
-/

namespace A048976.P14226920773995070402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048976.P14226920773995070402

/-! ## A048976.P7417405464218569485

`∩[A070159(n+1), A317649(n+1)]`
-/

namespace A048976.P7417405464218569485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048976.P7417405464218569485

/-! ## A048976.P17416290928912850203

`∩[A075763(n+1), A317649(n+1)]`
-/

namespace A048976.P17416290928912850203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048976.P17416290928912850203

/-! ## A048976.P14795866367989890953

`∩[A083249(n+1), A317649(n+1)]`
-/

namespace A048976.P14795866367989890953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048976.P14795866367989890953

/-! ## A048976.P11921400438977609978

`∩[A104381(n+1), A317649(n+1)]`
-/

namespace A048976.P11921400438977609978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048976.P11921400438977609978

/-! ## A048976.P8025656485890039375

`∩[A143578(n+1), A317649(n+1)]`
-/

namespace A048976.P8025656485890039375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048976.P8025656485890039375

/-! ## A048976.P14985477641261985414

`∩[A158611(n+1), A317649(n+1)]`
-/

namespace A048976.P14985477641261985414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048976.P14985477641261985414

/-! ## A048976.P18034440887971047907

`∩[A176997(n+1), A317649(n+1)]`
-/

namespace A048976.P18034440887971047907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048976.P18034440887971047907

/-!
# A048977: Primes arising in A048969.

The programs for A048977, there is no canonical definition to state claims against.
-/

/-! ## A048977.P5390232472988674642

`A000203(A048969(n+1))/A000005(A048969(n+1))`
-/

namespace A048977.P5390232472988674642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A048969 (n + 1)).toNat : ℚ) / (A000005 (A048969 (n + 1)).toNat : ℚ)

end

end A048977.P5390232472988674642

/-! ## A048977.P2238891392380771492

`A388274(A048969(n+1))`
-/

namespace A048977.P2238891392380771492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388274 (A048969 (n + 1)).toNat

end

end A048977.P2238891392380771492

/-! ## A048977.P11479356463264514843

`A006530(∑{d}[A048969(n+1), #])`
-/

namespace A048977.P11479356463264514843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A048977.P11479356463264514843

/-! ## A048977.P10419462989050288723

`p?[A072910(n+1)]`
-/

namespace A048977.P10419462989050288723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048977.P10419462989050288723

/-!
# A048978: Light numbers, those whose mean sum of divisors <= mean running sum of divisors of all previous n.

The programs for A048978, there is no canonical definition to state claims against.
-/

/-! ## A048978.P2699241688951586296

`A039702(A155628(n))*A336442(n+4)`
-/

namespace A048978.P2699241688951586296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (A155628 n).toNat * A336442 (n + 4)

end

end A048978.P2699241688951586296

/-!
# A048980: Difference between number of nonprimes and primes in reduced residue system of primorial numbers.

The programs for A048980, there is no canonical definition to state claims against.
-/

/-! ## A048980.P1689635231098254215

`A048863(n)-A048862(n)`
-/

namespace A048980.P1689635231098254215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048863 n - A048862 n

end

end A048980.P1689635231098254215

/-! ## A048980.P14267122624000192841

`A005867(n)-2*A000849(n)+2*n`
-/

namespace A048980.P14267122624000192841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005867 n - 2 * A000849 n + (2 * n : ℤ)

end

end A048980.P14267122624000192841

/-!
# A048981: Squarefree values of n for which the quadratic field Q[ sqrt(n) ] is norm-Euclidean.

The programs for A048981, there is no canonical definition to state claims against.
-/

/-! ## A048981.P2997929504190613726

`A236546(n+1)/gcd(4, A236546(n+1))`
-/

namespace A048981.P2997929504190613726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236546 (n + 1) : ℚ) / (Int.gcd 4 (A236546 (n + 1)) : ℚ)

end

end A048981.P2997929504190613726

/-!
# A048982: Number of numbers which have a "prime-rich" reduced residue system (RRS) and binary order n.

The programs for A048982, there is no canonical definition to state claims against.
-/

/-! ## A048982.P11503664118727561433

`∑[A359930(A279559(n))]`
-/

namespace A048982.P11503664118727561433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359930 (A279559 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048982.P11503664118727561433

/-! ## A048982.P10496227478262130032

`A072739(A092490(n+2))`
-/

namespace A048982.P10496227478262130032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072739 (A092490 (n + 2)).toNat

end

end A048982.P10496227478262130032

/-! ## A048982.P9986788475581105290

`∑[∑[A001842(A148468(n))]]`
-/

namespace A048982.P9986788475581105290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (A148468 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048982.P9986788475581105290

/-! ## A048982.P420878329794483135

`∑[∑[A065339(A000105(n+2))]]`
-/

namespace A048982.P420878329794483135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A000105 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048982.P420878329794483135

/-! ## A048982.P11767839903860263312

`A253547(n+1)-A327103(A000389(n))`
-/

namespace A048982.P11767839903860263312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253547 (n + 1) - A327103 (A000389 n).toNat

end

end A048982.P11767839903860263312

/-!
# A048983: As n runs through composite numbers, a(n) = number of composite d < n such that gcd(d,n) = 1.

The programs for A048983, the canonical program `A048983.P9613162556933275470` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048983 has offset 1).

The definition of A048983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048983.P9280787998679645848

`A048984(n+1)-1`
-/

namespace A048983.P9280787998679645848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048984 (n + 1) - 1

end

end A048983.P9280787998679645848

namespace A048983

/-- `A048984(n+1)-1` -/
def P9280787998679645848.Spec : Prop :=
  ∀ n, P9280787998679645848.a n = A048983 (n + 1)

end A048983

/-! ## A048983.P9875018740834572553

`A023443(A048984(n+1))`
-/

namespace A048983.P9875018740834572553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A048984 (n + 1)).toNat

end

end A048983.P9875018740834572553

namespace A048983

/-- `A023443(A048984(n+1))` -/
def P9875018740834572553.Spec : Prop :=
  ∀ n, P9875018740834572553.a n = A048983 (n + 1)

end A048983

/-! ## A048983.P15235711138418561551

`A073256(n+1)-(A129309(n+1)+1)`
-/

namespace A048983.P15235711138418561551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073256 (n + 1) - (A129309 (n + 1) + 1)

end

end A048983.P15235711138418561551

namespace A048983

/-- `A073256(n+1)-(A129309(n+1)+1)` -/
def P15235711138418561551.Spec : Prop :=
  ∀ n, P15235711138418561551.a n = A048983 (n + 1)

end A048983

/-! ## A048983.P9613162556933275470

`A036997(Δ[A053767(n)])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A048983

/-- `A036997(Δ[A053767(n)])` -/
def P9613162556933275470.Spec : Prop :=
  ∀ n, P9613162556933275470.a n = A048983 (n + 1)

theorem P9613162556933275470.correct : P9613162556933275470.Spec := by
  intro n
  simp only [A048983, Nat.add_sub_cancel]

end A048983

/-! ## A048983.P3239678705731111806

`A036997(A002808(n+1))`
-/

namespace A048983.P3239678705731111806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036997 (A002808 (n + 1)).toNat

end

end A048983.P3239678705731111806

namespace A048983

/-- `A036997(A002808(n+1))` -/
def P3239678705731111806.Spec : Prop :=
  ∀ n, P3239678705731111806.a n = A048983 (n + 1)

end A048983

/-! ## A048983.P10500702980557456938

`A036997(A056653(n+1))`
-/

namespace A048983.P10500702980557456938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036997 (A056653 (n + 1)).toNat

end

end A048983.P10500702980557456938

namespace A048983

/-- `A036997(A056653(n+1))` -/
def P10500702980557456938.Spec : Prop :=
  ∀ n, P10500702980557456938.a n = A048983 (n + 1)

end A048983

/-! ## A048983.P13886339515301362812

`A036997(A018252(n+2))`
-/

namespace A048983.P13886339515301362812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036997 (A018252 (n + 2)).toNat

end

end A048983.P13886339515301362812

namespace A048983

/-- `A036997(A018252(n+2))` -/
def P13886339515301362812.Spec : Prop :=
  ∀ n, P13886339515301362812.a n = A048983 (n + 1)

end A048983

/-! ## A048983.P4668949361998164775

`A048864(Δ[A053767(n)])-1`
-/

namespace A048983.P4668949361998164775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (f1 (n + 1) - f1 n).toNat - 1

end

end A048983.P4668949361998164775

namespace A048983

/-- `A048864(Δ[A053767(n)])-1` -/
def P4668949361998164775.Spec : Prop :=
  ∀ n, P4668949361998164775.a n = A048983 (n + 1)

end A048983

/-! ## A048983.P15081200683737649868

`A048864(lt[1, A032741(n)])-1`
-/

namespace A048983.P15081200683737649868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A048983.P15081200683737649868

namespace A048983

/-- `A048864(lt[1, A032741(n)])-1` -/
def P15081200683737649868.Spec : Prop :=
  ∀ n, P15081200683737649868.a n = A048983 (n + 1)

end A048983

/-! ## A048983.P11615042448678874933

`A048864(lt[n, A039653(n)])-1`
-/

namespace A048983.P11615042448678874933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A048983.P11615042448678874933

namespace A048983

/-- `A048864(lt[n, A039653(n)])-1` -/
def P11615042448678874933.Spec : Prop :=
  ∀ n, P11615042448678874933.a n = A048983 (n + 1)

end A048983

/-! ## A048983.P8315108529502795869

`A036997(A053767(n+1)-A053767(n))`
-/

namespace A048983.P8315108529502795869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036997 (A053767 (n + 1) - A053767 n).toNat

end

end A048983.P8315108529502795869

namespace A048983

/-- `A036997(A053767(n+1)-A053767(n))` -/
def P8315108529502795869.Spec : Prop :=
  ∀ n, P8315108529502795869.a n = A048983 (n + 1)

theorem P8315108529502795869.correct : P8315108529502795869.Spec := by
  intro n
  simp only [A048983, Nat.add_sub_cancel, A048983.P8315108529502795869.a, A048983.P9613162556933275470.f1, A048983.P9613162556933275470.a, SequenceMachineLib.memo_apply]

end A048983

/-! ## A048983.P12476900232442232268

`A070198(n)%A048984(n+1)`
-/

namespace A048983.P12476900232442232268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A048984 (n + 1))

end

end A048983.P12476900232442232268

namespace A048983

/-- `A070198(n)%A048984(n+1)` -/
def P12476900232442232268.Spec : Prop :=
  ∀ n, P12476900232442232268.a n = A048983 (n + 1)

end A048983

/-! ## A048983.P11869370056772456333

`A079782(n+1)%A048984(n+1)`
-/

namespace A048983.P11869370056772456333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A048984 (n + 1))

end

end A048983.P11869370056772456333

namespace A048983

/-- `A079782(n+1)%A048984(n+1)` -/
def P11869370056772456333.Spec : Prop :=
  ∀ n, P11869370056772456333.a n = A048983 (n + 1)

end A048983

/-! ## A048983.P11577516952287791716

`A083685(n+1)%A048984(n+1)`
-/

namespace A048983.P11577516952287791716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A048984 (n + 1))

end

end A048983.P11577516952287791716

namespace A048983

/-- `A083685(n+1)%A048984(n+1)` -/
def P11577516952287791716.Spec : Prop :=
  ∀ n, P11577516952287791716.a n = A048983 (n + 1)

end A048983

/-! ## A048983.P3214189377607111512

`A121934(n+1)%A048984(n+1)`
-/

namespace A048983.P3214189377607111512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A048984 (n + 1))

end

end A048983.P3214189377607111512

namespace A048983

/-- `A121934(n+1)%A048984(n+1)` -/
def P3214189377607111512.Spec : Prop :=
  ∀ n, P3214189377607111512.a n = A048983 (n + 1)

end A048983

/-! ## A048983.P16310005360775428173

`A072828(n+1)%A048984(n+1)`
-/

namespace A048983.P16310005360775428173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A048984 (n + 1))

end

end A048983.P16310005360775428173

namespace A048983

/-- `A072828(n+1)%A048984(n+1)` -/
def P16310005360775428173.Spec : Prop :=
  ∀ n, P16310005360775428173.a n = A048983 (n + 1)

end A048983

/-!
# A048984: As n runs through composite numbers, a(n) = number of nonprime d < n such that gcd(d,n) = 1.

The programs for A048984, the canonical program `A048984.P11079844054509268560` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048984 has offset 1).

The definition of A048984 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048983, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048984.P11079844054509268560

`A048983(n+1)+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A048984

/-- `A048983(n+1)+1` -/
def P11079844054509268560.Spec : Prop :=
  ∀ n, P11079844054509268560.a n = A048984 (n + 1)

theorem P11079844054509268560.correct : P11079844054509268560.Spec := by
  intro n
  simp only [A048984, Nat.add_sub_cancel]

end A048984

/-! ## A048984.P11872766064643906270

`A073256(n+1)-A129309(n+1)`
-/

namespace A048984.P11872766064643906270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073256 (n + 1) - A129309 (n + 1)

end

end A048984.P11872766064643906270

namespace A048984

/-- `A073256(n+1)-A129309(n+1)` -/
def P11872766064643906270.Spec : Prop :=
  ∀ n, P11872766064643906270.a n = A048984 (n + 1)

end A048984

/-! ## A048984.P15415121021149260007

`A048864(Δ[A053767(n)])`
-/

namespace A048984.P15415121021149260007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (f1 (n + 1) - f1 n).toNat

end

end A048984.P15415121021149260007

namespace A048984

/-- `A048864(Δ[A053767(n)])` -/
def P15415121021149260007.Spec : Prop :=
  ∀ n, P15415121021149260007.a n = A048984 (n + 1)

end A048984

/-! ## A048984.P6708006343979856524

`A048864(A002808(n+1))`
-/

namespace A048984.P6708006343979856524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (A002808 (n + 1)).toNat

end

end A048984.P6708006343979856524

namespace A048984

/-- `A048864(A002808(n+1))` -/
def P6708006343979856524.Spec : Prop :=
  ∀ n, P6708006343979856524.a n = A048984 (n + 1)

end A048984

/-! ## A048984.P4014418166873135145

`A048864(A056653(n+1))`
-/

namespace A048984.P4014418166873135145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (A056653 (n + 1)).toNat

end

end A048984.P4014418166873135145

namespace A048984

/-- `A048864(A056653(n+1))` -/
def P4014418166873135145.Spec : Prop :=
  ∀ n, P4014418166873135145.a n = A048984 (n + 1)

end A048984

/-! ## A048984.P17923432491564093972

`A048864(A018252(n+2))`
-/

namespace A048984.P17923432491564093972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (A018252 (n + 2)).toNat

end

end A048984.P17923432491564093972

namespace A048984

/-- `A048864(A018252(n+2))` -/
def P17923432491564093972.Spec : Prop :=
  ∀ n, P17923432491564093972.a n = A048984 (n + 1)

end A048984

/-! ## A048984.P3668965514721917647

`A048864(lt[1, A032741(n)])`
-/

namespace A048984.P3668965514721917647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A048984.P3668965514721917647

namespace A048984

/-- `A048864(lt[1, A032741(n)])` -/
def P3668965514721917647.Spec : Prop :=
  ∀ n, P3668965514721917647.a n = A048984 (n + 1)

end A048984

/-! ## A048984.P15365124575923679709

`A048864(lt[n, A039653(n)])`
-/

namespace A048984.P15365124575923679709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A048984.P15365124575923679709

namespace A048984

/-- `A048864(lt[n, A039653(n)])` -/
def P15365124575923679709.Spec : Prop :=
  ∀ n, P15365124575923679709.a n = A048984 (n + 1)

end A048984

/-! ## A048984.P15597493241311542410

`A036997(Δ[A053767(n)])+1`
-/

namespace A048984.P15597493241311542410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036997 (f1 (n + 1) - f1 n).toNat + 1

end

end A048984.P15597493241311542410

namespace A048984

/-- `A036997(Δ[A053767(n)])+1` -/
def P15597493241311542410.Spec : Prop :=
  ∀ n, P15597493241311542410.a n = A048984 (n + 1)

end A048984

/-! ## A048984.P5087863300441969840

`A048864(A166460(n+2)+1)`
-/

namespace A048984.P5087863300441969840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (A166460 (n + 2) + 1).toNat

end

end A048984.P5087863300441969840

namespace A048984

/-- `A048864(A166460(n+2)+1)` -/
def P5087863300441969840.Spec : Prop :=
  ∀ n, P5087863300441969840.a n = A048984 (n + 1)

end A048984

/-! ## A048984.P14277496601409400463

`A048864(A282671(n+1)/2)`
-/

namespace A048984.P14277496601409400463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (SequenceMachineLib.roundAway ((A282671 (n + 1) : ℚ) / 2)).toNat

end

end A048984.P14277496601409400463

namespace A048984

/-- `A048864(A282671(n+1)/2)` -/
def P14277496601409400463.Spec : Prop :=
  ∀ n, P14277496601409400463.a n = A048984 (n + 1)

end A048984

/-! ## A048984.P7475170844979935514

`A048864(A053767(n+1)-A053767(n))`
-/

namespace A048984.P7475170844979935514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (A053767 (n + 1) - A053767 n).toNat

end

end A048984.P7475170844979935514

namespace A048984

/-- `A048864(A053767(n+1)-A053767(n))` -/
def P7475170844979935514.Spec : Prop :=
  ∀ n, P7475170844979935514.a n = A048984 (n + 1)

end A048984

/-!
# A048986: Home primes in base 2: primes reached when you start with n and (working in base 2) concatenate its prime factors (A048985); repeat until a prime is reached (or -1 if no prime is ever reached). Answer is written in base 10.

The programs for A048986, there is no canonical definition to state claims against.
-/

/-! ## A048986.P15527955068986501198

`A112417(A048985(A048985(A048985(n+1))))`
-/

namespace A048986.P15527955068986501198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112417 (A048985 (A048985 (A048985 (n + 1)).toNat).toNat).toNat

end

end A048986.P15527955068986501198

/-! ## A048986.P15926888755739368574

`A048985(A048985(A048985(A340594(A340595(n+1)))))`
-/

namespace A048986.P15926888755739368574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048985 (A048985 (A048985 (A340594 (A340595 (n + 1)).toNat).toNat).toNat).toNat

end

end A048986.P15926888755739368574

/-!
# A048987: Number of possible chess games at the end of the n-th ply.

The programs for A048987, there is no canonical definition to state claims against.
-/

/-! ## A048987.P16945103270363348117

`A006494(n)-A079485(A046904(n))`
-/

namespace A048987.P16945103270363348117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006494 n - A079485 (A046904 n).toNat

end

end A048987.P16945103270363348117

/-! ## A048987.P10701246501596264888

`A006494(n)-A081157(A090338(n))`
-/

namespace A048987.P10701246501596264888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006494 n - A081157 (A090338 n).toNat

end

end A048987.P10701246501596264888

/-!
# A048988: Primes of the form 4*k^2 + 4*k + 59.

The programs for A048988, the canonical program `A048988.P1513202157722798903` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048988 has offset 1).

The definition of A048988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048988.P1513202157722798903

`p?[n²+58]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A048988

/-- `p?[n²+58]` -/
def P1513202157722798903.Spec : Prop :=
  ∀ n, (P1513202157722798903.a n : ℤ) = A048988 (n + 1)

theorem P1513202157722798903.correct : P1513202157722798903.Spec := by
  intro n
  simp only [A048988, Nat.add_sub_cancel]

end A048988

/-! ## A048988.P11978646668574728197

`or(1, p?[n*n+58])`
-/

namespace A048988.P11978646668574728197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n + 58

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A048988.P11978646668574728197

namespace A048988

/-- `or(1, p?[n*n+58])` -/
def P11978646668574728197.Spec : Prop :=
  ∀ n, (P11978646668574728197.a n : ℤ) = A048988 (n + 1)

end A048988

/-! ## A048988.P6472257654185383108

`∏{p}[p?[n^2+58], #]`
-/

namespace A048988.P6472257654185383108
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 58

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A048988.P6472257654185383108

namespace A048988

/-- `∏{p}[p?[n^2+58], #]` -/
def P6472257654185383108.Spec : Prop :=
  ∀ n, (P6472257654185383108.a n : ℤ) = A048988 (n + 1)

end A048988

/-! ## A048988.P17626317163680171169

`∩[A139894(n+1), A366457(n)]`
-/

namespace A048988.P17626317163680171169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366457 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048988.P17626317163680171169

namespace A048988

/-- `∩[A139894(n+1), A366457(n)]` -/
def P17626317163680171169.Spec : Prop :=
  ∀ n, (P17626317163680171169.a n : ℤ) = A048988 (n + 1)

end A048988

/-! ## A048988.P1741192147755150771

`p?[A002620(n)+58]*char[A028242(n)]`
-/

namespace A048988.P1741192147755150771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + 58

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A048988.P1741192147755150771

namespace A048988

/-- `p?[A002620(n)+58]*char[A028242(n)]` -/
def P1741192147755150771.Spec : Prop :=
  ∀ n, P1741192147755150771.a n = A048988 (n + 1)

end A048988

/-! ## A048988.P8823497059015054706

`p?[A002620(n)+58]*char[A035043(n)]`
-/

namespace A048988.P8823497059015054706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + 58

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A048988.P8823497059015054706

namespace A048988

/-- `p?[A002620(n)+58]*char[A035043(n)]` -/
def P8823497059015054706.Spec : Prop :=
  ∀ n, P8823497059015054706.a n = A048988 (n + 1)

end A048988

/-! ## A048988.P8124594361961907822

`p?[A002620(n)+58]*char[A222248(n)]`
-/

namespace A048988.P8124594361961907822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + 58

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A048988.P8124594361961907822

namespace A048988

/-- `p?[A002620(n)+58]*char[A222248(n)]` -/
def P8124594361961907822.Spec : Prop :=
  ∀ n, P8124594361961907822.a n = A048988 (n + 1)

end A048988

/-! ## A048988.P14034644929681121726

`p?[A087475(n)+54]%A000041(n+23)`
-/

namespace A048988.P14034644929681121726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 n + 54

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000041 (n + 23))

end

end A048988.P14034644929681121726

namespace A048988

/-- `p?[A087475(n)+54]%A000041(n+23)` -/
def P14034644929681121726.Spec : Prop :=
  ∀ n, P14034644929681121726.a n = A048988 (n + 1)

end A048988

/-! ## A048988.P2040369741119390261

`A000027(p?[A087475(n)+54])`
-/

namespace A048988.P2040369741119390261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 n + 54

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A048988.P2040369741119390261

namespace A048988

/-- `A000027(p?[A087475(n)+54])` -/
def P2040369741119390261.Spec : Prop :=
  ∀ n, P2040369741119390261.a n = A048988 (n + 1)

end A048988

/-! ## A048988.P9209443325644607695

`A000027(p?[A002522(n)+57])`
-/

namespace A048988.P9209443325644607695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n + 57

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A048988.P9209443325644607695

namespace A048988

/-- `A000027(p?[A002522(n)+57])` -/
def P9209443325644607695.Spec : Prop :=
  ∀ n, P9209443325644607695.a n = A048988 (n + 1)

end A048988

/-! ## A048988.P3384178739855370316

`A000027(p?[A000290(n)+58])`
-/

namespace A048988.P3384178739855370316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + 58

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A048988.P3384178739855370316

namespace A048988

/-- `A000027(p?[A000290(n)+58])` -/
def P3384178739855370316.Spec : Prop :=
  ∀ n, P3384178739855370316.a n = A048988 (n + 1)

end A048988

/-! ## A048988.P18198198186608642398

`A000027(p?[A002620(n)+58])`
-/

namespace A048988.P18198198186608642398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + 58

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A048988.P18198198186608642398

namespace A048988

/-- `A000027(p?[A002620(n)+58])` -/
def P18198198186608642398.Spec : Prop :=
  ∀ n, P18198198186608642398.a n = A048988 (n + 1)

end A048988

/-! ## A048988.P4825905835836811731

`A000027(p?[A016754(n)+58])`
-/

namespace A048988.P4825905835836811731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n + 58

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A048988.P4825905835836811731

namespace A048988

/-- `A000027(p?[A016754(n)+58])` -/
def P4825905835836811731.Spec : Prop :=
  ∀ n, P4825905835836811731.a n = A048988 (n + 1)

end A048988

/-! ## A048988.P9686235556422946866

`∩[A007520(n+1), A366457(n)]`
-/

namespace A048988.P9686235556422946866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366457 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048988.P9686235556422946866

namespace A048988

/-- `∩[A007520(n+1), A366457(n)]` -/
def P9686235556422946866.Spec : Prop :=
  ∀ n, (P9686235556422946866.a n : ℤ) = A048988 (n + 1)

end A048988

/-! ## A048988.P178102878646055366

`∩[A033237(n+1), A366457(n)]`
-/

namespace A048988.P178102878646055366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366457 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048988.P178102878646055366

namespace A048988

/-- `∩[A033237(n+1), A366457(n)]` -/
def P178102878646055366.Spec : Prop :=
  ∀ n, (P178102878646055366.a n : ℤ) = A048988 (n + 1)

end A048988

/-! ## A048988.P14100421036878307018

`∩[A045339(n+1), A366457(n)]`
-/

namespace A048988.P14100421036878307018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366457 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048988.P14100421036878307018

namespace A048988

/-- `∩[A045339(n+1), A366457(n)]` -/
def P14100421036878307018.Spec : Prop :=
  ∀ n, (P14100421036878307018.a n : ℤ) = A048988 (n + 1)

end A048988

/-! ## A048988.P13987519432430544970

`∩[A332446(n+1), A366457(n)]`
-/

namespace A048988.P13987519432430544970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366457 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048988.P13987519432430544970

namespace A048988

/-- `∩[A332446(n+1), A366457(n)]` -/
def P13987519432430544970.Spec : Prop :=
  ∀ n, (P13987519432430544970.a n : ℤ) = A048988 (n + 1)

end A048988

/-! ## A048988.P1115154979611890904

`∩[A163183(n+1), A366457(n)]`
-/

namespace A048988.P1115154979611890904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366457 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048988.P1115154979611890904

namespace A048988

/-- `∩[A163183(n+1), A366457(n)]` -/
def P1115154979611890904.Spec : Prop :=
  ∀ n, (P1115154979611890904.a n : ℤ) = A048988 (n + 1)

end A048988

/-! ## A048988.P8728165159835919174

`∩[A095282(n+1), A366457(n)]`
-/

namespace A048988.P8728165159835919174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366457 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048988.P8728165159835919174

namespace A048988

/-- `∩[A095282(n+1), A366457(n)]` -/
def P8728165159835919174.Spec : Prop :=
  ∀ n, (P8728165159835919174.a n : ℤ) = A048988 (n + 1)

end A048988

/-! ## A048988.P4968874929273190887

`∩[A051071(n+1), A366457(n)]`
-/

namespace A048988.P4968874929273190887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366457 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048988.P4968874929273190887

namespace A048988

/-- `∩[A051071(n+1), A366457(n)]` -/
def P4968874929273190887.Spec : Prop :=
  ∀ n, (P4968874929273190887.a n : ℤ) = A048988 (n + 1)

end A048988

/-!
# A048989: Numbers k such that pi(k) is prime.

The programs for A048989, the canonical program `A048989.P13418413284039244819` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048989 has offset 1).

The definition of A048989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6468 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048989.P13418413284039244819

`eq[1, A003415(A000720(n+1))]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A048989

/-- `eq[1, A003415(A000720(n+1))]+1` -/
def P13418413284039244819.Spec : Prop :=
  ∀ n, (P13418413284039244819.a n : ℤ) = A048989 (n + 1)

theorem P13418413284039244819.correct : P13418413284039244819.Spec := by
  intro n
  simp only [A048989, Nat.add_sub_cancel]

end A048989

/-! ## A048989.P16014735745883105536

`eq[2, A000005(A000720(n+2))]+2`
-/

namespace A048989.P16014735745883105536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000720 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A048989.P16014735745883105536

namespace A048989

/-- `eq[2, A000005(A000720(n+2))]+2` -/
def P16014735745883105536.Spec : Prop :=
  ∀ n, (P16014735745883105536.a n : ℤ) = A048989 (n + 1)

end A048989

/-! ## A048989.P9436896629747828601

`eq[1, A001222(A000720(n+3))]+3`
-/

namespace A048989.P9436896629747828601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000720 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A048989.P9436896629747828601

namespace A048989

/-- `eq[1, A001222(A000720(n+3))]+3` -/
def P9436896629747828601.Spec : Prop :=
  ∀ n, (P9436896629747828601.a n : ℤ) = A048989 (n + 1)

end A048989

/-! ## A048989.P9584454336434387097

`eq[1, A001222(A033270(n+1)+1)]+1`
-/

namespace A048989.P9584454336434387097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A033270 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048989.P9584454336434387097

namespace A048989

/-- `eq[1, A001222(A033270(n+1)+1)]+1` -/
def P9584454336434387097.Spec : Prop :=
  ∀ n, (P9584454336434387097.a n : ℤ) = A048989 (n + 1)

end A048989

/-! ## A048989.P8813146636225943602

`eq[2, A000005(A033270(n+1)+1)]+1`
-/

namespace A048989.P8813146636225943602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A033270 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048989.P8813146636225943602

namespace A048989

/-- `eq[2, A000005(A033270(n+1)+1)]+1` -/
def P8813146636225943602.Spec : Prop :=
  ∀ n, (P8813146636225943602.a n : ℤ) = A048989 (n + 1)

end A048989

/-! ## A048989.P17305417307424562043

`eq[A000010(A033270(n+2)+1), A033270(n+2)]+2`
-/

namespace A048989.P17305417307424562043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A033270 (n + 2) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A048989.P17305417307424562043

namespace A048989

/-- `eq[A000010(A033270(n+2)+1), A033270(n+2)]+2` -/
def P17305417307424562043.Spec : Prop :=
  ∀ n, (P17305417307424562043.a n : ℤ) = A048989 (n + 1)

end A048989

/-! ## A048989.P5688413758283754821

`eq[1, ∑{e}[A230980(n), #]]`
-/

namespace A048989.P5688413758283754821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048989.P5688413758283754821

namespace A048989

/-- `eq[1, ∑{e}[A230980(n), #]]` -/
def P5688413758283754821.Spec : Prop :=
  ∀ n, (P5688413758283754821.a n : ℤ) = A048989 (n + 1)

end A048989

/-! ## A048989.P4334497514252958938

`eq[1, A003415(A230980(n))]`
-/

namespace A048989.P4334497514252958938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A230980 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048989.P4334497514252958938

namespace A048989

/-- `eq[1, A003415(A230980(n))]` -/
def P4334497514252958938.Spec : Prop :=
  ∀ n, (P4334497514252958938.a n : ℤ) = A048989 (n + 1)

end A048989

/-! ## A048989.P12598844587930371637

`eq[1, A257994(A136548(n+1))]`
-/

namespace A048989.P12598844587930371637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A136548 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048989.P12598844587930371637

namespace A048989

/-- `eq[1, A257994(A136548(n+1))]` -/
def P12598844587930371637.Spec : Prop :=
  ∀ n, (P12598844587930371637.a n : ℤ) = A048989 (n + 1)

end A048989

/-! ## A048989.P5378424147360971108

`eq[1, A105700(A055679(2*n+1))]`
-/

namespace A048989.P5378424147360971108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A055679 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048989.P5378424147360971108

namespace A048989

/-- `eq[1, A105700(A055679(2*n+1))]` -/
def P5378424147360971108.Spec : Prop :=
  ∀ n, (P5378424147360971108.a n : ℤ) = A048989 (n + 1)

end A048989

/-! ## A048989.P5036441190232728651

`eq[2, A074206(A230980(n)²)]`
-/

namespace A048989.P5036441190232728651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A230980 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048989.P5036441190232728651

namespace A048989

/-- `eq[2, A074206(A230980(n)²)]` -/
def P5036441190232728651.Spec : Prop :=
  ∀ n, (P5036441190232728651.a n : ℤ) = A048989 (n + 1)

end A048989

/-! ## A048989.P6569016893595511114

`eq[2, A032741(A000720(n+1)²)]+1`
-/

namespace A048989.P6569016893595511114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A000720 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048989.P6569016893595511114

namespace A048989

/-- `eq[2, A032741(A000720(n+1)²)]+1` -/
def P6569016893595511114.Spec : Prop :=
  ∀ n, (P6569016893595511114.a n : ℤ) = A048989 (n + 1)

end A048989

/-!
# A048990: Catalan numbers with even index (A000108(2*n), n >= 0): a(n) = binomial(4*n, 2*n)/(2*n+1).

The programs for A048990, the canonical program `A048990.P17859373498023319433` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048990 has offset 0).

The definition of A048990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048990.P17859373498023319433

`A000108(2*n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048990

/-- `A000108(2*n)` -/
def P17859373498023319433.Spec : Prop :=
  ∀ n, P17859373498023319433.a n = A048990 n

theorem P17859373498023319433.correct : P17859373498023319433.Spec := by
  intro n
  simp only [A048990]

end A048990

/-! ## A048990.P16846362315548164829

`2*A065097(n)-A000007(n)`
-/

namespace A048990.P16846362315548164829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065097 n - A000007 n

end

end A048990.P16846362315548164829

namespace A048990

/-- `2*A065097(n)-A000007(n)` -/
def P16846362315548164829.Spec : Prop :=
  ∀ n, P16846362315548164829.a n = A048990 n

end A048990

/-! ## A048990.P7812132481499128014

`record[(6/(n+1)-4)*a(n-1)]` with `a(0)=1`
-/

namespace A048990.P7812132481499128014
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (6 / (n + 1 : ℚ) - 4) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048990.P7812132481499128014

namespace A048990

/-- `record[(6/(n+1)-4)*a(n-1)]` -/
def P7812132481499128014.Spec : Prop :=
  ∀ n, P7812132481499128014.a n = (A048990 n : ℚ)

end A048990

/-! ## A048990.P14536024292134600441

`record[-(4-6/n)*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A048990.P14536024292134600441
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  -((4 - 6 / (n : ℚ)) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048990.P14536024292134600441

namespace A048990

/-- `record[-(4-6/n)*a(n-1)]` -/
def P14536024292134600441.Spec : Prop :=
  ∀ n, P14536024292134600441.a n = (A048990 n : ℚ)

end A048990

/-! ## A048990.P12003503629456994250

`record[(3/n-1)*4*a(n-2)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A048990.P12003503629456994250
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  (3 / (n : ℚ) - 1) * (4 * f1 (n - 2))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048990.P12003503629456994250

namespace A048990

/-- `record[(3/n-1)*4*a(n-2)]` -/
def P12003503629456994250.Spec : Prop :=
  ∀ n, P12003503629456994250.a n = (A048990 n : ℚ)

end A048990

/-! ## A048990.P17509257167347762803

`record[A090192(n)]`
-/

namespace A048990.P17509257167347762803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048990.P17509257167347762803

namespace A048990

/-- `record[A090192(n)]` -/
def P17509257167347762803.Spec : Prop :=
  ∀ n, P17509257167347762803.a n = A048990 n

end A048990

/-! ## A048990.P11004907938818026266

`record[A168491(n)]`
-/

namespace A048990.P11004907938818026266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048990.P11004907938818026266

namespace A048990

/-- `record[A168491(n)]` -/
def P11004907938818026266.Spec : Prop :=
  ∀ n, P11004907938818026266.a n = A048990 n

end A048990

/-! ## A048990.P1791590372207192556

`record[A182492(n)]`
-/

namespace A048990.P1791590372207192556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048990.P1791590372207192556

namespace A048990

/-- `record[A182492(n)]` -/
def P1791590372207192556.Spec : Prop :=
  ∀ n, P1791590372207192556.a n = A048990 n

end A048990

/-! ## A048990.P13708004277522435302

`A000912(2*n)`
-/

namespace A048990.P13708004277522435302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000912 (2 * n)

end

end A048990.P13708004277522435302

namespace A048990

/-- `A000912(2*n)` -/
def P13708004277522435302.Spec : Prop :=
  ∀ n, P13708004277522435302.a n = A048990 n

end A048990

/-! ## A048990.P5044248514178782365

`A168491(2*n)`
-/

namespace A048990.P5044248514178782365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 (2 * n)

end

end A048990.P5044248514178782365

namespace A048990

/-- `A168491(2*n)` -/
def P5044248514178782365.Spec : Prop :=
  ∀ n, P5044248514178782365.a n = A048990 n

end A048990

/-!
# A048991: Write down the numbers 1,2,3,... but omit any number (such as 12 or 23 or 31 ...) which appears in the concatenation of all earlier terms.

The programs for A048991, there is no canonical definition to state claims against.
-/

/-! ## A048991.P12530427481288420297

`comp[A048992(n+1)-1]+1`
-/

namespace A048991.P12530427481288420297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048992 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A048991.P12530427481288420297

/-! ## A048991.P9696342588894490142

`eq[char[A048992(n+1)], A000007(n)]`
-/

namespace A048991.P9696342588894490142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048992 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A048991.P9696342588894490142

/-! ## A048991.P8416729296294097224

`record[A322094(n+1)]%∑[A127141(n)]`
-/

namespace A048991.P8416729296294097224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A048991.P8416729296294097224

/-! ## A048991.P3072164697756345833

`record[A322094(n+1)%A220153(n+1)]`
-/

namespace A048991.P3072164697756345833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322094 (n + 1)) (A220153 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048991.P3072164697756345833

/-! ## A048991.P1147880501134103771

`record[A322094(n+1)]*A019427(Δ[n²]²+1)`
-/

namespace A048991.P1147880501134103771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322094 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A019427 (((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2 + 1).toNat

end

end A048991.P1147880501134103771

/-! ## A048991.P17535327516522984304

`eq[A179801(n+1), A179801(A322094(n+1))]+1`
-/

namespace A048991.P17535327516522984304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179801 (A322094 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A048991.P17535327516522984304

/-!
# A048992: Hannah Rollman's numbers: the numbers excluded from A048991.

The programs for A048992, there is no canonical definition to state claims against.
-/

/-! ## A048992.P18097187680899791743

`eq[A179801(n+1), A322094(n+1)]+1`
-/

namespace A048992.P18097187680899791743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322094 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A048992.P18097187680899791743

/-!
# A048993: Triangle of Stirling numbers of 2nd kind, S(n,k), n >= 0, 0 <= k <= n.

The programs for A048993, there is no canonical definition to state claims against.
-/

/-! ## A048993.P4735490698399456713

`A154844(n)-A106800(n)`
-/

namespace A048993.P4735490698399456713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154844 n - A106800 n

end

end A048993.P4735490698399456713

/-! ## A048993.P6002660667672610703

`A106800(A061579(n))`
-/

namespace A048993.P6002660667672610703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (A061579 n).toNat

end

end A048993.P6002660667672610703

/-! ## A048993.P9818618939492277451

`A106800(A038722(n+1)-1)`
-/

namespace A048993.P9818618939492277451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (A038722 (n + 1) - 1).toNat

end

end A048993.P9818618939492277451

/-! ## A048993.P4738476324980519122

`A106800(A038722(n+2))`
-/

namespace A048993.P4738476324980519122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (A038722 (n + 2)).toNat

end

end A048993.P4738476324980519122

/-! ## A048993.P14302701184469578525

`A090683(n)/A007318(n)`
-/

namespace A048993.P14302701184469578525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090683 n : ℚ) / (A007318 n : ℚ)

end

end A048993.P14302701184469578525

/-! ## A048993.P7095913214940708136

`A090683(n)/A091918(n)`
-/

namespace A048993.P7095913214940708136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090683 n : ℚ) / (A091918 n : ℚ)

end

end A048993.P7095913214940708136

/-! ## A048993.P9574861200705355759

`A090683(n)/A132749(n)`
-/

namespace A048993.P9574861200705355759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090683 n : ℚ) / (A132749 n : ℚ)

end

end A048993.P9574861200705355759

/-! ## A048993.P17661453801610418058

`A090683(n)/A135227(n)`
-/

namespace A048993.P17661453801610418058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090683 n : ℚ) / (A135227 n : ℚ)

end

end A048993.P17661453801610418058

/-! ## A048993.P14988967085330533091

`A090683(n)/A183154(n)`
-/

namespace A048993.P14988967085330533091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090683 n : ℚ) / (A183154 n : ℚ)

end

end A048993.P14988967085330533091

/-! ## A048993.P17389569078755476207

`abs(A090683(n)/A130595(n))`
-/

namespace A048993.P17389569078755476207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A090683 n : ℚ) / (A130595 n : ℚ)|

end

end A048993.P17389569078755476207

/-! ## A048993.P2091123839279786358

`A142071(n)/A165680(n+1)`
-/

namespace A048993.P2091123839279786358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142071 n : ℚ) / (A165680 (n + 1) : ℚ)

end

end A048993.P2091123839279786358

/-! ## A048993.P1909289467285038716

`A131689(n)/A233543(n)`
-/

namespace A048993.P1909289467285038716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131689 n : ℚ) / (A233543 n : ℚ)

end

end A048993.P1909289467285038716

/-! ## A048993.P1181111194997304767

`A253180(n)/A168256(n)`
-/

namespace A048993.P1181111194997304767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253180 n : ℚ) / (A168256 n : ℚ)

end

end A048993.P1181111194997304767

/-! ## A048993.P15446509683855525990

`A253180(n)/A253180(A025581(n)+n)`
-/

namespace A048993.P15446509683855525990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253180 n : ℚ) / (A253180 (A025581 n + (n : ℤ)).toNat : ℚ)

end

end A048993.P15446509683855525990

/-! ## A048993.P16002645741018911527

`A090657(n)/A008279(n)`
-/

namespace A048993.P16002645741018911527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090657 n : ℚ) / (A008279 n : ℚ)

end

end A048993.P16002645741018911527

/-! ## A048993.P18423416533235295333

`A156815(n)/A098361(n)`
-/

namespace A048993.P18423416533235295333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156815 n : ℚ) / (A098361 n : ℚ)

end

end A048993.P18423416533235295333

/-! ## A048993.P16103017418661054820

`A131689(n)/A225473(n)*A225467(n)`
-/

namespace A048993.P16103017418661054820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131689 n : ℚ) / (A225473 n : ℚ) * (A225467 n : ℚ)

end

end A048993.P16103017418661054820

/-! ## A048993.P9321099947674887451

`A008277(n+1)*A090683(n)/A363849(n)`
-/

namespace A048993.P9321099947674887451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008277 (n + 1) * A090683 n : ℚ) / (A363849 n : ℚ)

end

end A048993.P9321099947674887451

/-!
# A048994: Triangle of Stirling numbers of first kind, s(n,k), n >= 0, 0 <= k <= n.

The programs for A048994, there is no canonical definition to state claims against.
-/

/-! ## A048994.P2466536867701270955

`A154843(n)-A054654(n)`
-/

namespace A048994.P2466536867701270955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154843 n - A054654 n

end

end A048994.P2466536867701270955

/-! ## A048994.P12001752713300806751

`A097807(n)*A132393(n)`
-/

namespace A048994.P12001752713300806751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A132393 n

end

end A048994.P12001752713300806751

/-! ## A048994.P7849961557237186805

`2*A237996(n)-A132393(n)`
-/

namespace A048994.P7849961557237186805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237996 n - A132393 n

end

end A048994.P7849961557237186805

/-! ## A048994.P8923668276456888497

`A054654(A061579(n))`
-/

namespace A048994.P8923668276456888497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054654 (A061579 n).toNat

end

end A048994.P8923668276456888497

/-! ## A048994.P12789752593878778173

`A054654(A038722(n+1)-1)`
-/

namespace A048994.P12789752593878778173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054654 (A038722 (n + 1) - 1).toNat

end

end A048994.P12789752593878778173

/-! ## A048994.P4977869751666112311

`A054654(A038722(n+2))`
-/

namespace A048994.P4977869751666112311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054654 (A038722 (n + 2)).toNat

end

end A048994.P4977869751666112311

/-! ## A048994.P10757968516430321111

`A008275(n+1)/A130534(n)*A132393(n)`
-/

namespace A048994.P10757968516430321111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008275 (n + 1) : ℚ) / (A130534 n : ℚ) * (A132393 n : ℚ)

end

end A048994.P10757968516430321111

/-! ## A048994.P3843980153468151543

`A187558(n)/A008275(n+1)`
-/

namespace A048994.P3843980153468151543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187558 n : ℚ) / (A008275 (n + 1) : ℚ)

end

end A048994.P3843980153468151543

/-! ## A048994.P1194338958876346429

`A137312(n)/A059268(n)`
-/

namespace A048994.P1194338958876346429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137312 n : ℚ) / (A059268 n : ℚ)

end

end A048994.P1194338958876346429

/-! ## A048994.P5930934147099211574

`A360174(n)/A140756(n+1)`
-/

namespace A048994.P5930934147099211574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360174 n : ℚ) / (A140756 (n + 1) : ℚ)

end

end A048994.P5930934147099211574

/-!
# A048995: Numbers that are not the sum of the nontrivial factors (excluding 1 and n) of some natural number.

The programs for A048995, there is no canonical definition to state claims against.
-/

/-! ## A048995.P1873197871602739429

`A005114(n+1)-1`
-/

namespace A048995.P1873197871602739429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1) - 1

end

end A048995.P1873197871602739429

/-! ## A048995.P9380863748112556021

`A001478(n+1)+A005114(n+1)+n`
-/

namespace A048995.P9380863748112556021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A005114 (n + 1) + (n : ℤ))

end

end A048995.P9380863748112556021

/-! ## A048995.P18378414467637473089

`A008683(A005145(n+1))+A005114(n+1)`
-/

namespace A048995.P18378414467637473089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005145 (n + 1)).toNat + A005114 (n + 1)

end

end A048995.P18378414467637473089

/-! ## A048995.P11944805371924915880

`A114592(A020481(n+2))+A005114(n+1)`
-/

namespace A048995.P11944805371924915880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A020481 (n + 2)).toNat + A005114 (n + 1)

end

end A048995.P11944805371924915880

/-! ## A048995.P8310573477866262284

`A008683(A020639(3*(n+1)))+A005114(n+1)`
-/

namespace A048995.P8310573477866262284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020639 (3 * (n + 1))).toNat + A005114 (n + 1)

end

end A048995.P8310573477866262284

/-! ## A048995.P9797307543976090740

`A338639(A027746(n+3))+A005114(n+1)`
-/

namespace A048995.P9797307543976090740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338639 (A027746 (n + 3)).toNat + A005114 (n + 1)

end

end A048995.P9797307543976090740

/-! ## A048995.P10955971614229202948

`A008683(Δ[A007504(n)])+A005114(n+1)`
-/

namespace A048995.P10955971614229202948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (n + 1) - f1 n).toNat + A005114 (n + 1)

end

end A048995.P10955971614229202948

/-! ## A048995.P999714672629710450

`A008683(A000040(n+1))+A005114(n+1)`
-/

namespace A048995.P999714672629710450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000040 (n + 1)).toNat + A005114 (n + 1)

end

end A048995.P999714672629710450

/-! ## A048995.P17923069471392474314

`A355689(A006005(n+5))+A005114(n+1)`
-/

namespace A048995.P17923069471392474314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (A006005 (n + 5)).toNat + A005114 (n + 1)

end

end A048995.P17923069471392474314

/-! ## A048995.P500444262397079014

`A062157(2*A039649(n+1))+A005114(n+1)`
-/

namespace A048995.P500444262397079014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (2 * A039649 (n + 1)).toNat + A005114 (n + 1)

end

end A048995.P500444262397079014

/-! ## A048995.P15299754789952343129

`A008683(A007645(n+1))+A005114(n+1)`
-/

namespace A048995.P15299754789952343129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007645 (n + 1)).toNat + A005114 (n + 1)

end

end A048995.P15299754789952343129

/-! ## A048995.P9551305605728407595

`eq[0, A070015(n+1)]`
-/

namespace A048995.P9551305605728407595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070015 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048995.P9551305605728407595

/-! ## A048995.P10422187939081165165

`eq[1, A359132(n+1)²]`
-/

namespace A048995.P10422187939081165165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359132 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048995.P10422187939081165165

/-! ## A048995.P11756938023535210946

`eq[0, A048138(n+2)]+1`
-/

namespace A048995.P11756938023535210946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048138 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048995.P11756938023535210946

/-! ## A048995.P10221962346054126372

`record[(n+1)*(1-A135244(n+2))]`
-/

namespace A048995.P10221962346054126372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A135244 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048995.P10221962346054126372

/-! ## A048995.P6434504843197130066

`A023443(A005114(n+1))`
-/

namespace A048995.P6434504843197130066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A005114 (n + 1)).toNat

end

end A048995.P6434504843197130066

/-! ## A048995.P5713541400158429483

`eq[A057428(n), A359132(n+1)]`
-/

namespace A048995.P5713541400158429483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359132 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048995.P5713541400158429483

/-! ## A048995.P7682231671517956603

`eq[A057428(n), A359132(n)]-1`
-/

namespace A048995.P7682231671517956603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A048995.P7682231671517956603

/-! ## A048995.P3713385256092525001

`eq[A134824(n), A359132(n)]-1`
-/

namespace A048995.P3713385256092525001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A048995.P3713385256092525001

/-!
# A048996: Irregular triangle read by rows. Preferred multisets: numbers refining A007318 using format described in A036038.

The programs for A048996, there is no canonical definition to state claims against.
-/

/-! ## A048996.P8807975805797988311

`A309004(A036035(n))`
-/

namespace A048996.P8807975805797988311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309004 (A036035 n).toNat

end

end A048996.P8807975805797988311

/-! ## A048996.P4813922913329628894

`A085643(n)/A118851(n)`
-/

namespace A048996.P4813922913329628894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085643 n : ℚ) / (A118851 n : ℚ)

end

end A048996.P4813922913329628894

/-! ## A048996.P15970398198157192946

`A035206(n)/A098546(n)`
-/

namespace A048996.P15970398198157192946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035206 n : ℚ) / (A098546 n : ℚ)

end

end A048996.P15970398198157192946

/-! ## A048996.P16053438436271320507

`A178803(n)/A096162(n)`
-/

namespace A048996.P16053438436271320507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178803 n : ℚ) / (A096162 n : ℚ)

end

end A048996.P16053438436271320507

/-! ## A048996.P5322411107769732638

`A127742(n)/A179318(n)`
-/

namespace A048996.P5322411107769732638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127742 n : ℚ) / (A179318 n : ℚ)

end

end A048996.P5322411107769732638

/-! ## A048996.P13879493662952823231

`A179236(n)/A178882(n)`
-/

namespace A048996.P13879493662952823231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179236 n : ℚ) / (A178882 n : ℚ)

end

end A048996.P13879493662952823231

/-! ## A048996.P12169533507280417415

`A179313(n)/A179380(n)`
-/

namespace A048996.P12169533507280417415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179313 n : ℚ) / (A179380 n : ℚ)

end

end A048996.P12169533507280417415

/-! ## A048996.P574436577214885248

`A178886(n)/A179972(n)`
-/

namespace A048996.P574436577214885248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178886 n : ℚ) / (A179972 n : ℚ)

end

end A048996.P574436577214885248

/-! ## A048996.P5295668393709453327

`A178802(n)/A000142(A036042(n))`
-/

namespace A048996.P5295668393709453327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178802 n : ℚ) / (A000142 (A036042 n).toNat : ℚ)

end

end A048996.P5295668393709453327

/-! ## A048996.P12260730123237028261

`A178888(n)/(A096162(n)*A098546(n))`
-/

namespace A048996.P12260730123237028261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178888 n : ℚ) / (A096162 n * A098546 n : ℚ)

end

end A048996.P12260730123237028261

/-! ## A048996.P13543502618408316822

`A178883(n)/(A096162(n)*A178886(n))`
-/

namespace A048996.P13543502618408316822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178883 n : ℚ) / (A096162 n * A178886 n : ℚ)

end

end A048996.P13543502618408316822

/-! ## A048996.P6091908804492035574

`A318762(∏{e}[A185974(n), A000040(#)])`
-/

namespace A048996.P6091908804492035574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A048996.P6091908804492035574

/-! ## A048996.P17596974537000995092

`A321648(A334434(n))`
-/

namespace A048996.P17596974537000995092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321648 (A334434 n).toNat

end

end A048996.P17596974537000995092

/-! ## A048996.P11117643518877139973

`A008480(A185974(n))`
-/

namespace A048996.P11117643518877139973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A185974 n).toNat

end

end A048996.P11117643518877139973

/-! ## A048996.P2960474519899203167

`A168324(A185974(A000007(n)+n))`
-/

namespace A048996.P2960474519899203167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (A185974 (A000007 n + (n : ℤ)).toNat).toNat

end

end A048996.P2960474519899203167

/-! ## A048996.P12707290131627553126

`A168324(A185974(A000038(n)+n))`
-/

namespace A048996.P12707290131627553126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (A185974 (A000038 n + (n : ℤ)).toNat).toNat

end

end A048996.P12707290131627553126

/-! ## A048996.P13982025542998262272

`A168324(A185974(A169585(n)+n))`
-/

namespace A048996.P13982025542998262272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (A185974 (A169585 n + (n : ℤ)).toNat).toNat

end

end A048996.P13982025542998262272

/-! ## A048996.P6601367730191971409

`gcd(A049009(n), A168324(A185974(n)))`
-/

namespace A048996.P6601367730191971409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049009 n) (A168324 (A185974 n).toNat)

end

end A048996.P6601367730191971409

/-! ## A048996.P3538478084093283272

`A168324(or(A000038(n), A185974(n)))`
-/

namespace A048996.P3538478084093283272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (Int.lor (A000038 n) (A185974 n)).toNat

end

end A048996.P3538478084093283272

/-! ## A048996.P1449611602472462450

`xor(A000007(n), A168324(A185974(n)))`
-/

namespace A048996.P1449611602472462450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A168324 (A185974 n).toNat)

end

end A048996.P1449611602472462450

/-!
# A048997: Sum of digits in decimal expansion of 1/n up to the point where it repeats for the first time.

The programs for A048997, there is no canonical definition to state claims against.
-/

/-! ## A048997.P3560819575695748607

`∑{digits}[A266385(n+1), #]`
-/

namespace A048997.P3560819575695748607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266385 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A048997.P3560819575695748607

/-! ## A048997.P7523052283582253529

`A048266(A117126(n))`
-/

namespace A048997.P7523052283582253529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A117126 n).toNat

end

end A048997.P7523052283582253529

/-! ## A048997.P7187871586292792603

`A117126(A055645(n))`
-/

namespace A048997.P7187871586292792603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117126 (A055645 n).toNat

end

end A048997.P7187871586292792603

/-! ## A048997.P12467753870913168303

`A101157(A117126(n)²)`
-/

namespace A048997.P12467753870913168303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101157 (A117126 n ^ 2).toNat

end

end A048997.P12467753870913168303

/-! ## A048997.P14772612388141514831

`A117126(A262545(n+1))`
-/

namespace A048997.P14772612388141514831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117126 (A262545 (n + 1)).toNat

end

end A048997.P14772612388141514831

/-!
# A048998: Triangle giving coefficients of (n+1)!*B_n(x), where B_n(x) is a Bernoulli polynomial. Rising powers of x.

The programs for A048998, there is no canonical definition to state claims against.
-/

/-! ## A048998.P250015362658189271

`A080779(n)*A140756(n+1)`
-/

namespace A048998.P250015362658189271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080779 n * A140756 (n + 1)

end

end A048998.P250015362658189271

/-! ## A048998.P3629689239998350446

`A048999(∑[char[∑[n]]]²-(n+1))`
-/

namespace A048998.P3629689239998350446
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048999 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A048998.P3629689239998350446

/-! ## A048998.P11103936013174287823

`or(char[1], A048999(A061579(n)))`
-/

namespace A048998.P11103936013174287823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A048999 (A061579 n).toNat)

end

end A048998.P11103936013174287823

/-! ## A048998.P6484611078884490036

`char[A130948(n)]*A048999(A061579(n))`
-/

namespace A048998.P6484611078884490036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130948 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A048999 (A061579 n).toNat

end

end A048998.P6484611078884490036

/-! ## A048998.P3136870889576247372

`A048999(A061579(n))+A000007(n+1)`
-/

namespace A048998.P3136870889576247372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048999 (A061579 n).toNat + A000007 (n + 1)

end

end A048998.P3136870889576247372

/-! ## A048998.P15026366403246642091

`A153011(A000040(n+1))+A048999(A061579(n))`
-/

namespace A048998.P15026366403246642091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153011 (A000040 (n + 1)).toNat + A048999 (A061579 n).toNat

end

end A048998.P15026366403246642091

/-! ## A048998.P12000168055985003266

`A137777(n)/2`
-/

namespace A048998.P12000168055985003266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137777 n : ℚ) / 2

end

end A048998.P12000168055985003266

/-! ## A048998.P4941439403255636860

`A137524(n+1)/A003057(n+2)`
-/

namespace A048998.P4941439403255636860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137524 (n + 1) : ℚ) / (A003057 (n + 2) : ℚ)

end

end A048998.P4941439403255636860

/-!
# A048999: Triangle giving coefficients of (n+1)!*B_n(x), where B_n(x) is a Bernoulli polynomial, ordered by falling powers of x.

The programs for A048999, there is no canonical definition to state claims against.
-/

/-! ## A048999.P12047448642109933924

`A048998(A061579(n))`
-/

namespace A048999.P12047448642109933924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048998 (A061579 n).toNat

end

end A048999.P12047448642109933924

/-! ## A048999.P5871665421834071928

`A048998(A114327(n)+n)`
-/

namespace A048999.P5871665421834071928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048998 (A114327 n + (n : ℤ)).toNat

end

end A048999.P5871665421834071928

/-! ## A048999.P13284823758241764402

`A048998(∑[A198954(n)-1])`
-/

namespace A048999.P13284823758241764402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048998 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048999.P13284823758241764402

/-! ## A048999.P13319676937038310736

`A048998(A038722(n+1)-1)`
-/

namespace A048999.P13319676937038310736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048998 (A038722 (n + 1) - 1).toNat

end

end A048999.P13319676937038310736

/-! ## A048999.P4733126294638114799

`A048998(A023443(A038722(n+1)))`
-/

namespace A048999.P4733126294638114799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048998 (A023443 (A038722 (n + 1)).toNat).toNat

end

end A048999.P4733126294638114799

/-! ## A048999.P8478916102397445694

`A048998(A057944(n)+A025581(n))`
-/

namespace A048999.P8478916102397445694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048998 (A057944 n + A025581 n).toNat

end

end A048999.P8478916102397445694

/-! ## A048999.P9779966824534887748

`A048998(A127739(n+1)-A002260(n+1))`
-/

namespace A048999.P9779966824534887748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048998 (A127739 (n + 1) - A002260 (n + 1)).toNat

end

end A048999.P9779966824534887748

