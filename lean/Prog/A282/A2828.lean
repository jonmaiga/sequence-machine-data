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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C006
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A282800: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 507", based on the 5-celled von Neumann neighborhood.

The programs for A282800, the canonical program `A282800.P6996715877617918698` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282800 has offset 0).

The definition of A282800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282800.P2364109845026037815

`A282796(n)+char[1]`
-/

namespace A282800.P2364109845026037815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282796 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A282800.P2364109845026037815

namespace A282800

/-- `A282796(n)+char[1]` -/
def P2364109845026037815.Spec : Prop :=
  ∀ n, P2364109845026037815.a n = A282800 n

end A282800

/-! ## A282800.P15715521565136112606

`A282796(n-char[1])`
-/

namespace A282800.P15715521565136112606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282796 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A282800.P15715521565136112606

namespace A282800

/-- `A282796(n-char[1])` -/
def P15715521565136112606.Spec : Prop :=
  ∀ n, P15715521565136112606.a n = A282800 n

end A282800

/-! ## A282800.P10423278828924434405

`or(char[A282751(n)], A282796(n))`
-/

namespace A282800.P10423278828924434405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282751 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A282796 n)

end

end A282800.P10423278828924434405

namespace A282800

/-- `or(char[A282751(n)], A282796(n))` -/
def P10423278828924434405.Spec : Prop :=
  ∀ n, P10423278828924434405.a n = A282800 n

end A282800

/-! ## A282800.P9045777724992097559

`or(char[A282752(n)], A282796(n))`
-/

namespace A282800.P9045777724992097559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282752 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A282796 n)

end

end A282800.P9045777724992097559

namespace A282800

/-- `or(char[A282752(n)], A282796(n))` -/
def P9045777724992097559.Spec : Prop :=
  ∀ n, P9045777724992097559.a n = A282800 n

end A282800

/-! ## A282800.P8022277904006261247

`or(char[A282753(n)], A282796(n))`
-/

namespace A282800.P8022277904006261247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282753 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A282796 n)

end

end A282800.P8022277904006261247

namespace A282800

/-- `or(char[A282753(n)], A282796(n))` -/
def P8022277904006261247.Spec : Prop :=
  ∀ n, P8022277904006261247.a n = A282800 n

end A282800

/-! ## A282800.P17996207995702246588

`or(char[A282777(n)], A282796(n))`
-/

namespace A282800.P17996207995702246588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282777 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A282796 n)

end

end A282800.P17996207995702246588

namespace A282800

/-- `or(char[A282777(n)], A282796(n))` -/
def P17996207995702246588.Spec : Prop :=
  ∀ n, P17996207995702246588.a n = A282800 n

end A282800

/-! ## A282800.P3371090347173583128

`or(char[A282780(n)], A282796(n))`
-/

namespace A282800.P3371090347173583128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282780 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A282796 n)

end

end A282800.P3371090347173583128

namespace A282800

/-- `or(char[A282780(n)], A282796(n))` -/
def P3371090347173583128.Spec : Prop :=
  ∀ n, P3371090347173583128.a n = A282800 n

end A282800

/-! ## A282800.P10964104683350833479

`or(char[A282792(n)], A282796(n))`
-/

namespace A282800.P10964104683350833479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282792 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A282796 n)

end

end A282800.P10964104683350833479

namespace A282800

/-- `or(char[A282792(n)], A282796(n))` -/
def P10964104683350833479.Spec : Prop :=
  ∀ n, P10964104683350833479.a n = A282800 n

end A282800

/-! ## A282800.P811230190596570856

`or(char[A282797(n)], A282796(n))`
-/

namespace A282800.P811230190596570856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282797 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A282796 n)

end

end A282800.P811230190596570856

namespace A282800

/-- `or(char[A282797(n)], A282796(n))` -/
def P811230190596570856.Spec : Prop :=
  ∀ n, P811230190596570856.a n = A282800 n

end A282800

/-! ## A282800.P8944842410258365573

`or(char[A282801(n)], A282796(n))`
-/

namespace A282800.P8944842410258365573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282801 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A282796 n)

end

end A282800.P8944842410258365573

namespace A282800

/-- `or(char[A282801(n)], A282796(n))` -/
def P8944842410258365573.Spec : Prop :=
  ∀ n, P8944842410258365573.a n = A282800 n

end A282800

/-! ## A282800.P438830933302045688

`or(char[A282805(n)], A282796(n))`
-/

namespace A282800.P438830933302045688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282805 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A282796 n)

end

end A282800.P438830933302045688

namespace A282800

/-- `or(char[A282805(n)], A282796(n))` -/
def P438830933302045688.Spec : Prop :=
  ∀ n, P438830933302045688.a n = A282800 n

end A282800

/-! ## A282800.P5225823115203056397

`or(char[A282807(n)], A282796(n))`
-/

namespace A282800.P5225823115203056397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282807 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A282796 n)

end

end A282800.P5225823115203056397

namespace A282800

/-- `or(char[A282807(n)], A282796(n))` -/
def P5225823115203056397.Spec : Prop :=
  ∀ n, P5225823115203056397.a n = A282800 n

end A282800

/-! ## A282800.P13152332881737131225

`or(char[A282826(n)], A282796(n))`
-/

namespace A282800.P13152332881737131225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282826 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A282796 n)

end

end A282800.P13152332881737131225

namespace A282800

/-- `or(char[A282826(n)], A282796(n))` -/
def P13152332881737131225.Spec : Prop :=
  ∀ n, P13152332881737131225.a n = A282800 n

end A282800

/-! ## A282800.P12032485334690917176

`or(char[A282827(n)], A282796(n))`
-/

namespace A282800.P12032485334690917176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282827 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A282796 n)

end

end A282800.P12032485334690917176

namespace A282800

/-- `or(char[A282827(n)], A282796(n))` -/
def P12032485334690917176.Spec : Prop :=
  ∀ n, P12032485334690917176.a n = A282800 n

end A282800

/-! ## A282800.P6996715877617918698

`A282796(n)-A199969(n+1)+n`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A282800

/-- `A282796(n)-A199969(n+1)+n` -/
def P6996715877617918698.Spec : Prop :=
  ∀ n, P6996715877617918698.a n = A282800 n

theorem P6996715877617918698.correct : P6996715877617918698.Spec := by
  intro n
  simp only [A282800]

end A282800

/-! ## A282800.P5001465795876867470

`A282802(n)+A282796(n)-A282798(n)`
-/

namespace A282800.P5001465795876867470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282802 n + A282796 n - A282798 n

end

end A282800.P5001465795876867470

namespace A282800

/-- `A282802(n)+A282796(n)-A282798(n)` -/
def P5001465795876867470.Spec : Prop :=
  ∀ n, P5001465795876867470.a n = A282800 n

end A282800

/-!
# A282801: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 507", based on the 5-celled von Neumann neighborhood.

The programs for A282801, the canonical program `A282801.P14195813214451919216` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282801 has offset 0).

The definition of A282801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282801.P9094705346216515895

`A282797(2*char[1]+n)`
-/

namespace A282801.P9094705346216515895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282797 (2 * (if ∃ j, f1 j = n then 1 else 0) + n)

end

end A282801.P9094705346216515895

namespace A282801

/-- `A282797(2*char[1]+n)` -/
def P9094705346216515895.Spec : Prop :=
  ∀ n, P9094705346216515895.a n = A282801 n

end A282801

/-! ## A282801.P14195813214451919216

`gcd(A282412(n), A282797(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A282801

/-- `gcd(A282412(n), A282797(n))` -/
def P14195813214451919216.Spec : Prop :=
  ∀ n, (P14195813214451919216.a n : ℤ) = A282801 n

theorem P14195813214451919216.correct : P14195813214451919216.Spec := by
  intro n
  simp only [A282801]

end A282801

/-! ## A282801.P10160618134108210465

`A282797(A233583(n+1))%A135563(n+2)`
-/

namespace A282801.P10160618134108210465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282797 (A233583 (n + 1)).toNat) (A135563 (n + 2))

end

end A282801.P10160618134108210465

namespace A282801

/-- `A282797(A233583(n+1))%A135563(n+2)` -/
def P10160618134108210465.Spec : Prop :=
  ∀ n, P10160618134108210465.a n = A282801 n

end A282801

/-! ## A282801.P12545014755417820057

`A007088(A282803(n))`
-/

namespace A282801.P12545014755417820057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282803 n).toNat

end

end A282801.P12545014755417820057

namespace A282801

/-- `A007088(A282803(n))` -/
def P12545014755417820057.Spec : Prop :=
  ∀ n, P12545014755417820057.a n = A282801 n

end A282801

/-! ## A282801.P14830933390184308319

`A007088(A282799(2*char[1]+n))`
-/

namespace A282801.P14830933390184308319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282799 (2 * (if ∃ j, f1 j = n then 1 else 0) + n)).toNat

end

end A282801.P14830933390184308319

namespace A282801

/-- `A007088(A282799(2*char[1]+n))` -/
def P14830933390184308319.Spec : Prop :=
  ∀ n, P14830933390184308319.a n = A282801 n

end A282801

/-!
# A282802: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 507", based on the 5-celled von Neumann neighborhood.

The programs for A282802, the canonical program `A282802.P581043186693700999` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282802 has offset 0).

The definition of A282802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282802.P3852235240064124280

`ogf((1+x+2x^2-x^3+4x^5)/(1-5x^2+4x^4))`
-/

namespace A282802.P3852235240064124280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, -1, 0, 4] [1, 0, -5, 0, 4] n

end

end A282802.P3852235240064124280

namespace A282802

/-- `ogf((1+x+2x^2-x^3+4x^5)/(1-5x^2+4x^4))` -/
def P3852235240064124280.Spec : Prop :=
  ∀ n, P3852235240064124280.a n = A282802 n

end A282802

/-! ## A282802.P581043186693700999

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=7, a(3)=4, a(4)=31, a(5)=20`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282802

/-- `5*a(n-2)-4*a(n-4)` -/
def P581043186693700999.Spec : Prop :=
  ∀ n, P581043186693700999.a n = A282802 n

theorem P581043186693700999.correct : P581043186693700999.Spec := by
  intro n
  simp only [A282802]

end A282802

/-! ## A282802.P4592422079952364634

`A282798(n)+char[1]`
-/

namespace A282802.P4592422079952364634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282798 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A282802.P4592422079952364634

namespace A282802

/-- `A282798(n)+char[1]` -/
def P4592422079952364634.Spec : Prop :=
  ∀ n, P4592422079952364634.a n = A282802 n

end A282802

/-! ## A282802.P5977561997127461809

`A282798(n-char[1])`
-/

namespace A282802.P5977561997127461809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282798 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A282802.P5977561997127461809

namespace A282802

/-- `A282798(n-char[1])` -/
def P5977561997127461809.Spec : Prop :=
  ∀ n, P5977561997127461809.a n = A282802 n

end A282802

/-! ## A282802.P11952602451882506441

`gcd(A282413(n), A282798(n))`
-/

namespace A282802.P11952602451882506441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A282413 n) (A282798 n)

end

end A282802.P11952602451882506441

namespace A282802

/-- `gcd(A282413(n), A282798(n))` -/
def P11952602451882506441.Spec : Prop :=
  ∀ n, (P11952602451882506441.a n : ℤ) = A282802 n

end A282802

/-! ## A282802.P4075120898652303812

`xor(A063524(n), A282798(n))`
-/

namespace A282802.P4075120898652303812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A282798 n)

end

end A282802.P4075120898652303812

namespace A282802

/-- `xor(A063524(n), A282798(n))` -/
def P4075120898652303812.Spec : Prop :=
  ∀ n, P4075120898652303812.a n = A282802 n

end A282802

/-! ## A282802.P12456283902383170617

`or(char[A002444(n)], A282798(n))`
-/

namespace A282802.P12456283902383170617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002444 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A282798 n)

end

end A282802.P12456283902383170617

namespace A282802

/-- `or(char[A002444(n)], A282798(n))` -/
def P12456283902383170617.Spec : Prop :=
  ∀ n, P12456283902383170617.a n = A282802 n

end A282802

/-! ## A282802.P10631306945510981989

`or(char[A036223(n)], A282798(n))`
-/

namespace A282802.P10631306945510981989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036223 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A282798 n)

end

end A282802.P10631306945510981989

namespace A282802

/-- `or(char[A036223(n)], A282798(n))` -/
def P10631306945510981989.Spec : Prop :=
  ∀ n, P10631306945510981989.a n = A282802 n

end A282802

/-! ## A282802.P305860358619034630

`or(char[A038231(n)], A282798(n))`
-/

namespace A282802.P305860358619034630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A282798 n)

end

end A282802.P305860358619034630

namespace A282802

/-- `or(char[A038231(n)], A282798(n))` -/
def P305860358619034630.Spec : Prop :=
  ∀ n, P305860358619034630.a n = A282802 n

end A282802

/-! ## A282802.P3991356461437080108

`or(char[A155609(n)], A282798(n))`
-/

namespace A282802.P3991356461437080108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155609 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A282798 n)

end

end A282802.P3991356461437080108

namespace A282802

/-- `or(char[A155609(n)], A282798(n))` -/
def P3991356461437080108.Spec : Prop :=
  ∀ n, P3991356461437080108.a n = A282802 n

end A282802

/-! ## A282802.P2768519583962178207

`char[1]+A084639(n)+A077925(n)`
-/

namespace A282802.P2768519583962178207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A084639 n + A077925 n)

end

end A282802.P2768519583962178207

namespace A282802

/-- `char[1]+A084639(n)+A077925(n)` -/
def P2768519583962178207.Spec : Prop :=
  ∀ n, P2768519583962178207.a n = A282802 n

end A282802

/-! ## A282802.P17808149362610569861

`or(char[A094587(3*n)], A282798(n))`
-/

namespace A282802.P17808149362610569861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (3 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A282798 n)

end

end A282802.P17808149362610569861

namespace A282802

/-- `or(char[A094587(3*n)], A282798(n))` -/
def P17808149362610569861.Spec : Prop :=
  ∀ n, P17808149362610569861.a n = A282802 n

end A282802

/-! ## A282802.P12313359489205506743

`A282798(n)-A199969(n+1)+n`
-/

namespace A282802.P12313359489205506743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282798 n - A199969 (n + 1) + (n : ℤ)

end

end A282802.P12313359489205506743

namespace A282802

/-- `A282798(n)-A199969(n+1)+n` -/
def P12313359489205506743.Spec : Prop :=
  ∀ n, P12313359489205506743.a n = A282802 n

end A282802

/-! ## A282802.P1691410870452666016

`A282800(n)+A282798(n)-A282796(n)`
-/

namespace A282802.P1691410870452666016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282800 n + A282798 n - A282796 n

end

end A282802.P1691410870452666016

namespace A282802

/-- `A282800(n)+A282798(n)-A282796(n)` -/
def P1691410870452666016.Spec : Prop :=
  ∀ n, P1691410870452666016.a n = A282802 n

end A282802

/-!
# A282803: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 507", based on the 5-celled von Neumann neighborhood.

The programs for A282803, the canonical program `A282803.P8763400816174992374` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282803 has offset 0).

The definition of A282803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282803.P4759480432761404470

`ogf((1+2x+2x^2-8x^3+8x^5)/(1-5x^2+4x^4))`
-/

namespace A282803.P4759480432761404470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, -8, 0, 8] [1, 0, -5, 0, 4] n

end

end A282803.P4759480432761404470

namespace A282803

/-- `ogf((1+2x+2x^2-8x^3+8x^5)/(1-5x^2+4x^4))` -/
def P4759480432761404470.Spec : Prop :=
  ∀ n, P4759480432761404470.a n = A282803 n

end A282803

/-! ## A282803.P8763400816174992374

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=2, a(4)=31, a(5)=10`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282803

/-- `5*a(n-2)-4*a(n-4)` -/
def P8763400816174992374.Spec : Prop :=
  ∀ n, P8763400816174992374.a n = A282803 n

theorem P8763400816174992374.correct : P8763400816174992374.Spec := by
  intro n
  simp only [A282803]

end A282803

/-! ## A282803.P12596567369417322252

`A282799(2*char[1]+n)`
-/

namespace A282803.P12596567369417322252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282799 (2 * (if ∃ j, f1 j = n then 1 else 0) + n)

end

end A282803.P12596567369417322252

namespace A282803

/-- `A282799(2*char[1]+n)` -/
def P12596567369417322252.Spec : Prop :=
  ∀ n, P12596567369417322252.a n = A282803 n

end A282803

/-! ## A282803.P1089531370257224076

`or(2*char[1], A282799(n))`
-/

namespace A282803.P1089531370257224076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ) (A282799 n)

end

end A282803.P1089531370257224076

namespace A282803

/-- `or(2*char[1], A282799(n))` -/
def P1089531370257224076.Spec : Prop :=
  ∀ n, P1089531370257224076.a n = A282803 n

end A282803

/-! ## A282803.P3370286861028112902

`gcd(A130706(n), A282799(n))`
-/

namespace A282803.P3370286861028112902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A282799 n)

end

end A282803.P3370286861028112902

namespace A282803

/-- `gcd(A130706(n), A282799(n))` -/
def P3370286861028112902.Spec : Prop :=
  ∀ n, (P3370286861028112902.a n : ℤ) = A282803 n

end A282803

/-! ## A282803.P7919505855205476281

`lcm(2, A282802(n))-A282799(n)`
-/

namespace A282803.P7919505855205476281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A282802 n) : ℤ) - A282799 n

end

end A282803.P7919505855205476281

namespace A282803

/-- `lcm(2, A282802(n))-A282799(n)` -/
def P7919505855205476281.Spec : Prop :=
  ∀ n, P7919505855205476281.a n = A282803 n

end A282803

/-! ## A282803.P8486281680289926739

`A282799(n)+and(2, A000079(n))`
-/

namespace A282803.P8486281680289926739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282799 n + Int.land 2 (A000079 n)

end

end A282803.P8486281680289926739

namespace A282803

/-- `A282799(n)+and(2, A000079(n))` -/
def P8486281680289926739.Spec : Prop :=
  ∀ n, P8486281680289926739.a n = A282803 n

end A282803

/-! ## A282803.P9851481940824830288

`A267888(n)%A280345(n)`
-/

namespace A282803.P9851481940824830288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267888 n) (A280345 n)

end

end A282803.P9851481940824830288

namespace A282803

/-- `A267888(n)%A280345(n)` -/
def P9851481940824830288.Spec : Prop :=
  ∀ n, P9851481940824830288.a n = A282803 n

end A282803

/-! ## A282803.P5104370897112079652

`or(A282799(n), A334507(n+1))`
-/

namespace A282803.P5104370897112079652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A282799 n) (A334507 (n + 1))

end

end A282803.P5104370897112079652

namespace A282803

/-- `or(A282799(n), A334507(n+1))` -/
def P5104370897112079652.Spec : Prop :=
  ∀ n, P5104370897112079652.a n = A282803 n

end A282803

/-!
# A282804: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 513", based on the 5-celled von Neumann neighborhood.

The programs for A282804, there is no canonical definition to state claims against.
-/

/-! ## A282804.P3128657476432635025

`A002275(n+1)%A282385(A065033(2*n))`
-/

namespace A282804.P3128657476432635025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002275 (n + 1)) (A282385 (A065033 (2 * n)).toNat)

end

end A282804.P3128657476432635025

/-! ## A282804.P813401946896889407

`A007088(A282806(n))`
-/

namespace A282804.P813401946896889407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282806 n).toNat

end

end A282804.P813401946896889407

/-! ## A282804.P14798185716438256384

`A007088(floor(A267441(n)/A000079(n)))`
-/

namespace A282804.P14798185716438256384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ⌊(A267441 n : ℚ) / (A000079 n : ℚ)⌋.toNat

end

end A282804.P14798185716438256384

/-! ## A282804.P18301231981473994332

`A305989(A282807(n))`
-/

namespace A282804.P18301231981473994332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A282807 n).toNat

end

end A282804.P18301231981473994332

/-! ## A282804.P1652327344378966153

`A305989(and(A267441(n), A283523(n)))`
-/

namespace A282804.P1652327344378966153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.land (A267441 n) (A283523 n)).toNat

end

end A282804.P1652327344378966153

/-!
# A282805: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 513", based on the 5-celled von Neumann neighborhood.

The programs for A282805, there is no canonical definition to state claims against.
-/

/-! ## A282805.P7369023391639730875

`A007088(A282807(n))`
-/

namespace A282805.P7369023391639730875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282807 n).toNat

end

end A282805.P7369023391639730875

/-! ## A282805.P17316912938517190189

`A007088(A267441(n)%A198633(n))`
-/

namespace A282805.P17316912938517190189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A267441 n) (A198633 n)).toNat

end

end A282805.P17316912938517190189

/-! ## A282805.P1913724438431819922

`A007088(and(A095121(n), A267441(n)))`
-/

namespace A282805.P1913724438431819922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A095121 n) (A267441 n)).toNat

end

end A282805.P1913724438431819922

/-! ## A282805.P7532938937927217285

`A007088(and(A126646(n), A267441(n)))`
-/

namespace A282805.P7532938937927217285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A126646 n) (A267441 n)).toNat

end

end A282805.P7532938937927217285

/-! ## A282805.P3968081428813598023

`A007088(and(A267441(n), A281482(n)))`
-/

namespace A282805.P3968081428813598023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A267441 n) (A281482 n)).toNat

end

end A282805.P3968081428813598023

/-!
# A282806: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 513", based on the 5-celled von Neumann neighborhood.

The programs for A282806, the canonical program `A282806.P5522376432113910485` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282806 has offset 0).

The definition of A282806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282806.P10648207287487977295

`xor(record[A324821(n+1)], A288807(2*n+1))`
-/

namespace A282806.P10648207287487977295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A288807 (2 * n + 1))

end

end A282806.P10648207287487977295

namespace A282806

/-- `xor(record[A324821(n+1)], A288807(2*n+1))` -/
def P10648207287487977295.Spec : Prop :=
  ∀ n, P10648207287487977295.a n = A282806 n

end A282806

/-! ## A282806.P5522376432113910485

`A052955(A004277(n))-A288807(2*n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A282806

/-- `A052955(A004277(n))-A288807(2*n+1)` -/
def P5522376432113910485.Spec : Prop :=
  ∀ n, P5522376432113910485.a n = A282806 n

theorem P5522376432113910485.correct : P5522376432113910485.Spec := by
  intro n
  simp only [A282806]

end A282806

/-! ## A282806.P18152974495032066012

`floor(A267441(n)/A000079(n))`
-/

namespace A282806.P18152974495032066012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A267441 n : ℚ) / (A000079 n : ℚ)⌋

end

end A282806.P18152974495032066012

namespace A282806

/-- `floor(A267441(n)/A000079(n))` -/
def P18152974495032066012.Spec : Prop :=
  ∀ n, P18152974495032066012.a n = A282806 n

end A282806

/-! ## A282806.P13976977770494054925

`and(A288811(2*n+1)-A086652(2*n+1), A288811(2*n))`
-/

namespace A282806.P13976977770494054925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A288811 (2 * n + 1) - A086652 (2 * n + 1)) (A288811 (2 * n))

end

end A282806.P13976977770494054925

namespace A282806

/-- `and(A288811(2*n+1)-A086652(2*n+1), A288811(2*n))` -/
def P13976977770494054925.Spec : Prop :=
  ∀ n, P13976977770494054925.a n = A282806 n

end A282806

/-! ## A282806.P10201452414878030451

`floor(A267441(n)/record[A130321(n)])`
-/

namespace A282806.P10201452414878030451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A267441 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A282806.P10201452414878030451

namespace A282806

/-- `floor(A267441(n)/record[A130321(n)])` -/
def P10201452414878030451.Spec : Prop :=
  ∀ n, P10201452414878030451.a n = A282806 n

end A282806

/-!
# A282807: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 513", based on the 5-celled von Neumann neighborhood.

The programs for A282807, the canonical program `A282807.P18360293587331063432` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282807 has offset 0).

The definition of A282807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282807.P18360293587331063432

`A095121(n)+1-A282388(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A282807

/-- `A095121(n)+1-A282388(n)` -/
def P18360293587331063432.Spec : Prop :=
  ∀ n, P18360293587331063432.a n = A282807 n

theorem P18360293587331063432.correct : P18360293587331063432.Spec := by
  intro n
  simp only [A282807]

end A282807

/-! ## A282807.P4733235052420454516

`A198633(n)-(A282388(n)+1)`
-/

namespace A282807.P4733235052420454516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n - (A282388 n + 1)

end

end A282807.P4733235052420454516

namespace A282807

/-- `A198633(n)-(A282388(n)+1)` -/
def P4733235052420454516.Spec : Prop :=
  ∀ n, P4733235052420454516.a n = A282807 n

end A282807

/-! ## A282807.P3298154291062581271

`A267441(n)%A198633(n)`
-/

namespace A282807.P3298154291062581271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267441 n) (A198633 n)

end

end A282807.P3298154291062581271

namespace A282807

/-- `A267441(n)%A198633(n)` -/
def P3298154291062581271.Spec : Prop :=
  ∀ n, P3298154291062581271.a n = A282807 n

end A282807

/-! ## A282807.P9646358999367592616

`and(A095121(n), A267441(n))`
-/

namespace A282807.P9646358999367592616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095121 n) (A267441 n)

end

end A282807.P9646358999367592616

namespace A282807

/-- `and(A095121(n), A267441(n))` -/
def P9646358999367592616.Spec : Prop :=
  ∀ n, P9646358999367592616.a n = A282807 n

end A282807

/-! ## A282807.P14446346540908289823

`and(A126646(n), A267441(n))`
-/

namespace A282807.P14446346540908289823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A267441 n)

end

end A282807.P14446346540908289823

namespace A282807

/-- `and(A126646(n), A267441(n))` -/
def P14446346540908289823.Spec : Prop :=
  ∀ n, P14446346540908289823.a n = A282807 n

end A282807

/-! ## A282807.P15308852338906851070

`and(A267441(n), A283353(n))`
-/

namespace A282807.P15308852338906851070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267441 n) (A283353 n)

end

end A282807.P15308852338906851070

namespace A282807

/-- `and(A267441(n), A283353(n))` -/
def P15308852338906851070.Spec : Prop :=
  ∀ n, P15308852338906851070.a n = A282807 n

end A282807

/-! ## A282807.P11588760602602482742

`and(A267441(n), A283506(n))`
-/

namespace A282807.P11588760602602482742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267441 n) (A283506 n)

end

end A282807.P11588760602602482742

namespace A282807

/-- `and(A267441(n), A283506(n))` -/
def P11588760602602482742.Spec : Prop :=
  ∀ n, P11588760602602482742.a n = A282807 n

end A282807

/-! ## A282807.P15880226464720046965

`and(A267441(n), A283523(n))`
-/

namespace A282807.P15880226464720046965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267441 n) (A283523 n)

end

end A282807.P15880226464720046965

namespace A282807

/-- `and(A267441(n), A283523(n))` -/
def P15880226464720046965.Spec : Prop :=
  ∀ n, P15880226464720046965.a n = A282807 n

end A282807

/-! ## A282807.P11320845034023103055

`and(A267441(n), A283591(n))`
-/

namespace A282807.P11320845034023103055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267441 n) (A283591 n)

end

end A282807.P11320845034023103055

namespace A282807

/-- `and(A267441(n), A283591(n))` -/
def P11320845034023103055.Spec : Prop :=
  ∀ n, P11320845034023103055.a n = A282807 n

end A282807

/-! ## A282807.P17474258096029224870

`and(A267441(n), A283650(n))`
-/

namespace A282807.P17474258096029224870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267441 n) (A283650 n)

end

end A282807.P17474258096029224870

namespace A282807

/-- `and(A267441(n), A283650(n))` -/
def P17474258096029224870.Spec : Prop :=
  ∀ n, P17474258096029224870.a n = A282807 n

end A282807

/-! ## A282807.P14402788141668018777

`and(A267441(n), A283709(n))`
-/

namespace A282807.P14402788141668018777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267441 n) (A283709 n)

end

end A282807.P14402788141668018777

namespace A282807

/-- `and(A267441(n), A283709(n))` -/
def P14402788141668018777.Spec : Prop :=
  ∀ n, P14402788141668018777.a n = A282807 n

end A282807

/-! ## A282807.P8167596552059479668

`and(A267441(n), A283909(n))`
-/

namespace A282807.P8167596552059479668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267441 n) (A283909 n)

end

end A282807.P8167596552059479668

namespace A282807

/-- `and(A267441(n), A283909(n))` -/
def P8167596552059479668.Spec : Prop :=
  ∀ n, P8167596552059479668.a n = A282807 n

end A282807

/-! ## A282807.P15681905992691572690

`and(A267441(n), A284353(n))`
-/

namespace A282807.P15681905992691572690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267441 n) (A284353 n)

end

end A282807.P15681905992691572690

namespace A282807

/-- `and(A267441(n), A284353(n))` -/
def P15681905992691572690.Spec : Prop :=
  ∀ n, P15681905992691572690.a n = A282807 n

end A282807

/-! ## A282807.P12861159059582500928

`and(A267441(n), A284405(n))`
-/

namespace A282807.P12861159059582500928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267441 n) (A284405 n)

end

end A282807.P12861159059582500928

namespace A282807

/-- `and(A267441(n), A284405(n))` -/
def P12861159059582500928.Spec : Prop :=
  ∀ n, P12861159059582500928.a n = A282807 n

end A282807

/-! ## A282807.P4081353216443559484

`and(A267441(n), A284482(n))`
-/

namespace A282807.P4081353216443559484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267441 n) (A284482 n)

end

end A282807.P4081353216443559484

namespace A282807

/-- `and(A267441(n), A284482(n))` -/
def P4081353216443559484.Spec : Prop :=
  ∀ n, P4081353216443559484.a n = A282807 n

end A282807

/-! ## A282807.P4203014698357822920

`and(A267441(n), A286521(n))`
-/

namespace A282807.P4203014698357822920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267441 n) (A286521 n)

end

end A282807.P4203014698357822920

namespace A282807

/-- `and(A267441(n), A286521(n))` -/
def P4203014698357822920.Spec : Prop :=
  ∀ n, P4203014698357822920.a n = A282807 n

end A282807

/-! ## A282807.P1081592552344772945

`and(A267441(n), A289098(n))`
-/

namespace A282807.P1081592552344772945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267441 n) (A289098 n)

end

end A282807.P1081592552344772945

namespace A282807

/-- `and(A267441(n), A289098(n))` -/
def P1081592552344772945.Spec : Prop :=
  ∀ n, P1081592552344772945.a n = A282807 n

end A282807

/-! ## A282807.P2195687991469557192

`and(A267441(n), A290073(n))`
-/

namespace A282807.P2195687991469557192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267441 n) (A290073 n)

end

end A282807.P2195687991469557192

namespace A282807

/-- `and(A267441(n), A290073(n))` -/
def P2195687991469557192.Spec : Prop :=
  ∀ n, P2195687991469557192.a n = A282807 n

end A282807

/-! ## A282807.P13949893713004688009

`and(A267441(n), A290113(n))`
-/

namespace A282807.P13949893713004688009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267441 n) (A290113 n)

end

end A282807.P13949893713004688009

namespace A282807

/-- `and(A267441(n), A290113(n))` -/
def P13949893713004688009.Spec : Prop :=
  ∀ n, P13949893713004688009.a n = A282807 n

end A282807

/-! ## A282807.P16611926367617200194

`and(A267441(n), A290194(n))`
-/

namespace A282807.P16611926367617200194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267441 n) (A290194 n)

end

end A282807.P16611926367617200194

namespace A282807

/-- `and(A267441(n), A290194(n))` -/
def P16611926367617200194.Spec : Prop :=
  ∀ n, P16611926367617200194.a n = A282807 n

end A282807

/-!
# A282811: Numbers n such that n and n + 1 are both composite and the reverse of n and n + 1 are both prime.

The programs for A282811, there is no canonical definition to state claims against.
-/

/-! ## A282811.P10536249150912039000

`∩[A076055(n+1)-1, A076055(n+1)]`
-/

namespace A282811.P10536249150912039000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076055 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282811.P10536249150912039000

/-! ## A282811.P6741348680780443301

`∩[A079364(n+1), A257636(n+1)]`
-/

namespace A282811.P6741348680780443301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282811.P6741348680780443301

/-! ## A282811.P13112966139259235777

`∩[A068780(n+1), A257636(n+1)]`
-/

namespace A282811.P13112966139259235777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282811.P13112966139259235777

/-! ## A282811.P3121550326845690478

`∩[A076055(n+1), A023443(A076055(n+1))]`
-/

namespace A282811.P3121550326845690478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A076055 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282811.P3121550326845690478

/-!
# A282812: Table read by antidiagonals (n > 0, k > 0): T(n, k) is the largest value in Conway's subprime Fibonacci sequence with starting values of n and k.

The programs for A282812, there is no canonical definition to state claims against.
-/

/-! ## A282812.P3469840794722182322

`A120770(A282814(n+1))`
-/

namespace A282812.P3469840794722182322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120770 (A282814 (n + 1)).toNat

end

end A282812.P3469840794722182322

/-! ## A282812.P16245602256170880097

`A258098(A028412(n!))+1`
-/

namespace A282812.P16245602256170880097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258098 (A028412 (Nat.factorial n)).toNat + 1

end

end A282812.P16245602256170880097

/-!
# A282816: Number of inequivalent ways to color the faces of a cube using at most n colors so that no two opposite sides have the same color.

The programs for A282816, the canonical program `A282816.P16723121812113276188` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282816 has offset 0).

The definition of A282816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282816.P5240833057028887101

`ogf((x^2+4x^3+20x^4+4x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A282816.P5240833057028887101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 4, 20, 4, 1] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A282816.P5240833057028887101

namespace A282816

/-- `ogf((x^2+4x^3+20x^4+4x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P5240833057028887101.Spec : Prop :=
  ∀ n, P5240833057028887101.a n = A282816 n

end A282816

/-! ## A282816.P16723121812113276188

`(8*n*(n-1)+n^3*(n-1)^3)/24`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282816

/-- `(8*n*(n-1)+n^3*(n-1)^3)/24` -/
def P16723121812113276188.Spec : Prop :=
  ∀ n, P16723121812113276188.a n = (A282816 n : ℚ)

end A282816

/-! ## A282816.P10758152811444496094

`A046023(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A282816.P10758152811444496094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A046023 (n - 1) - a (n - 1)

end

end A282816.P10758152811444496094

namespace A282816

/-- `A046023(n-1)-a(n-1)` -/
def P10758152811444496094.Spec : Prop :=
  ∀ n, P10758152811444496094.a n = A282816 n

end A282816

/-! ## A282816.P15611180766660672315

`A006527(C(n, 2))`
-/

namespace A282816.P15611180766660672315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 (Nat.choose n 2)

end

end A282816.P15611180766660672315

namespace A282816

/-- `A006527(C(n, 2))` -/
def P15611180766660672315.Spec : Prop :=
  ∀ n, P15611180766660672315.a n = A282816 n

end A282816

/-! ## A282816.P12506582007729059005

`A006527(∑[n]-n)`
-/

namespace A282816.P12506582007729059005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A282816.P12506582007729059005

namespace A282816

/-- `A006527(∑[n]-n)` -/
def P12506582007729059005.Spec : Prop :=
  ∀ n, P12506582007729059005.a n = A282816 n

end A282816

/-! ## A282816.P505169220458918866

`A007290(C(n, 2))+C(n, 2)²`
-/

namespace A282816.P505169220458918866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 (Nat.choose n 2) + (Nat.choose n 2 ^ 2 : ℤ)

end

end A282816.P505169220458918866

namespace A282816

/-- `A007290(C(n, 2))+C(n, 2)²` -/
def P505169220458918866.Spec : Prop :=
  ∀ n, P505169220458918866.a n = A282816 n

end A282816

/-! ## A282816.P17981656051195263523

`A033547(∑[n]-n)-(∑[n]-n)`
-/

namespace A282816.P17981656051195263523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033547 (∑ j ∈ Finset.range (n + 1), f1 j - n) - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ))

end

end A282816.P17981656051195263523

namespace A282816

/-- `A033547(∑[n]-n)-(∑[n]-n)` -/
def P17981656051195263523.Spec : Prop :=
  ∀ n, P17981656051195263523.a n = A282816 n

end A282816

/-! ## A282816.P2725401626203114162

`A006527(A161680(n))%A011820(n)`
-/

namespace A282816.P2725401626203114162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006527 (A161680 n).toNat) (A011820 n)

end

end A282816.P2725401626203114162

namespace A282816

/-- `A006527(A161680(n))%A011820(n)` -/
def P2725401626203114162.Spec : Prop :=
  ∀ n, P2725401626203114162.a n = A282816 n

end A282816

/-! ## A282816.P556798354565531363

`A161680(n)+A007290(A161680(n)+1)`
-/

namespace A282816.P556798354565531363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A007290 (A161680 n + 1).toNat

end

end A282816.P556798354565531363

namespace A282816

/-- `A161680(n)+A007290(A161680(n)+1)` -/
def P556798354565531363.Spec : Prop :=
  ∀ n, P556798354565531363.a n = A282816 n

end A282816

/-!
# A282817: Number of inequivalent ways to color the faces of a cube using at most n colors so that no color appears more than twice.

The programs for A282817, the canonical program `A282817.P5032081265544334315` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282817 has offset 0).

The definition of A282817 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282817.P5032081265544334315

`(n-2)²*(n-1)*n²*(n+5)/24`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282817

/-- `(n-2)²*(n-1)*n²*(n+5)/24` -/
def P5032081265544334315.Spec : Prop :=
  ∀ n, P5032081265544334315.a n = (A282817 n : ℚ)

end A282817

/-! ## A282817.P16323152137469086355

`ogf((6x^3+30x^4-3x^5-3x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A282817.P16323152137469086355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 6, 30, -3, -3] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A282817.P16323152137469086355

namespace A282817

/-- `ogf((6x^3+30x^4-3x^5-3x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P16323152137469086355.Spec : Prop :=
  ∀ n, P16323152137469086355.a n = A282817 n

end A282817

/-! ## A282817.P15868484273224983082

`A292061(n+1)+3*n*A000332(n)`
-/

namespace A282817.P15868484273224983082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292061 (n + 1) + 3 * ((n : ℤ) * A000332 n)

end

end A282817.P15868484273224983082

namespace A282817

/-- `A292061(n+1)+3*n*A000332(n)` -/
def P15868484273224983082.Spec : Prop :=
  ∀ n, P15868484273224983082.a n = A282817 n

end A282817

/-!
# A282818: Number of inequivalent ways to color the edges of a tetrahedron using at most n colors so that no two adjacent edges have the same color.

The programs for A282818, the canonical program `A282818.P15117358072675221588` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282818 has offset 0).

The definition of A282818 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282818.P4567279319117945494

`ogf((2x^3+6x^4+12x^5+40x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A282818.P4567279319117945494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 2, 6, 12, 40] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A282818.P4567279319117945494

namespace A282818

/-- `ogf((2x^3+6x^4+12x^5+40x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P4567279319117945494.Spec : Prop :=
  ∀ n, P4567279319117945494.a n = A282818 n

end A282818

/-! ## A282818.P738762569702821473

`n*(n-1)*(n-2)*(n^3-9*n²+32*n-38)/12`
-/

namespace A282818.P738762569702821473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) - 2) * ((n ^ 3 : ℤ) - (9 * n ^ 2 : ℤ) + (32 * n : ℤ) - 38) : ℚ) / 12

end

end A282818.P738762569702821473

namespace A282818

/-- `n*(n-1)*(n-2)*(n^3-9*n²+32*n-38)/12` -/
def P738762569702821473.Spec : Prop :=
  ∀ n, P738762569702821473.a n = (A282818 n : ℚ)

end A282818

/-! ## A282818.P15117358072675221588

`2*A249460(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A282818

/-- `2*A249460(n)` -/
def P15117358072675221588.Spec : Prop :=
  ∀ n, P15117358072675221588.a n = A282818 n

theorem P15117358072675221588.correct : P15117358072675221588.Spec := by
  intro n
  simp only [A282818]

end A282818

/-! ## A282818.P14715138482957653851

`A005843(A249460(n))`
-/

namespace A282818.P14715138482957653851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A249460 n).toNat

end

end A282818.P14715138482957653851

namespace A282818

/-- `A005843(A249460(n))` -/
def P14715138482957653851.Spec : Prop :=
  ∀ n, P14715138482957653851.a n = A282818 n

end A282818

/-!
# A282819: Number of inequivalent ways to color the edges of a tetrahedron using at most n colors so that no two opposite edges have the same color.

The programs for A282819, the canonical program `A282819.P2565760298212100288` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282819 has offset 0).

The definition of A282819 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282819.P5527426194852496082

`ogf((2x^2+8x^3+40x^4+8x^5+2x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A282819.P5527426194852496082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, 8, 40, 8, 2] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A282819.P5527426194852496082

namespace A282819

/-- `ogf((2x^2+8x^3+40x^4+8x^5+2x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P5527426194852496082.Spec : Prop :=
  ∀ n, P5527426194852496082.a n = A282819 n

end A282819

/-! ## A282819.P3221616688636673366

`(n-1)*n*(n^4-2*n^3+n²+8)/12`
-/

namespace A282819.P3221616688636673366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * (n : ℤ) * ((n ^ 4 : ℤ) - (2 * n ^ 3 : ℤ) + (n ^ 2 : ℤ) + 8) : ℚ) / 12

end

end A282819.P3221616688636673366

namespace A282819

/-- `(n-1)*n*(n^4-2*n^3+n²+8)/12` -/
def P3221616688636673366.Spec : Prop :=
  ∀ n, P3221616688636673366.a n = (A282819 n : ℚ)

end A282819

/-! ## A282819.P2565760298212100288

`2*A282816(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A282819

/-- `2*A282816(n)` -/
def P2565760298212100288.Spec : Prop :=
  ∀ n, P2565760298212100288.a n = A282819 n

theorem P2565760298212100288.correct : P2565760298212100288.Spec := by
  intro n
  simp only [A282819]

end A282819

/-! ## A282819.P5510036058742751330

`A046023(n)-Δ[A282816(n)]`
-/

namespace A282819.P5510036058742751330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046023 n - (f1 (n + 1) - f1 n)

end

end A282819.P5510036058742751330

namespace A282819

/-- `A046023(n)-Δ[A282816(n)]` -/
def P5510036058742751330.Spec : Prop :=
  ∀ n, P5510036058742751330.a n = A282819 n

end A282819

/-! ## A282819.P6379985234151410846

`A046023(n)+A282816(n)-A282816(n+1)`
-/

namespace A282819.P6379985234151410846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046023 n + (A282816 n - A282816 (n + 1))

end

end A282819.P6379985234151410846

namespace A282819

/-- `A046023(n)+A282816(n)-A282816(n+1)` -/
def P6379985234151410846.Spec : Prop :=
  ∀ n, P6379985234151410846.a n = A282819 n

end A282819

/-! ## A282819.P14526866179112954960

`A005900(C(n, 2))+C(n, 2)`
-/

namespace A282819.P14526866179112954960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 (Nat.choose n 2) + (Nat.choose n 2 : ℤ)

end

end A282819.P14526866179112954960

namespace A282819

/-- `A005900(C(n, 2))+C(n, 2)` -/
def P14526866179112954960.Spec : Prop :=
  ∀ n, P14526866179112954960.a n = A282819 n

end A282819

/-! ## A282819.P13029386841921561165

`A005900(∑[n]-n)+∑[n]-n`
-/

namespace A282819.P13029386841921561165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 (∑ j ∈ Finset.range (n + 1), f1 j - n) + (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ))

end

end A282819.P13029386841921561165

namespace A282819

/-- `A005900(∑[n]-n)+∑[n]-n` -/
def P13029386841921561165.Spec : Prop :=
  ∀ n, P13029386841921561165.a n = A282819 n

end A282819

/-! ## A282819.P7848829857039350187

`A161680(n)+A005900(C(n, 2))`
-/

namespace A282819.P7848829857039350187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A005900 (Nat.choose n 2)

end

end A282819.P7848829857039350187

namespace A282819

/-- `A161680(n)+A005900(C(n, 2))` -/
def P7848829857039350187.Spec : Prop :=
  ∀ n, P7848829857039350187.a n = A282819 n

end A282819

/-!
# A282820: Number of inequivalent ways to color the edges of a tetrahedron using at most n colors so that no color appears more than twice.

The programs for A282820, the canonical program `A282820.P11175292839519808548` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282820 has offset 0).

The definition of A282820 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282820.P7361505403477835609

`ogf((9x^3+69x^4-15x^5-3x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A282820.P7361505403477835609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 9, 69, -15, -3] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A282820.P7361505403477835609

namespace A282820

/-- `ogf((9x^3+69x^4-15x^5-3x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P7361505403477835609.Spec : Prop :=
  ∀ n, P7361505403477835609.a n = A282820 n

end A282820

/-! ## A282820.P11175292839519808548

`(n-2)*n*(n-1)*(n^3+3*n²-10*n-6)/12`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282820

/-- `(n-2)*n*(n-1)*(n^3+3*n²-10*n-6)/12` -/
def P11175292839519808548.Spec : Prop :=
  ∀ n, P11175292839519808548.a n = (A282820 n : ℚ)

end A282820

/-!
# A282822: a(n) = (n - 4)*n! for n>=0.

The programs for A282822, the canonical program `A282822.P13247839570909817495` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282822 has offset 0).

The definition of A282822 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-4)*n!` (program `A282822.P13247839570909817495`, by `A282822.P13247839570909817495.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A282822.P13247839570909817495

`(n-4)*n!`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282822

/-- `(n-4)*n!` -/
def P13247839570909817495.Spec : Prop :=
  ∀ n, P13247839570909817495.a n = A282822 n

theorem P13247839570909817495.correct : P13247839570909817495.Spec := by
  intro n
  simp only [A282822]

end A282822

/-! ## A282822.P11185891659809939337

`-(Δ[-n!]+4*n!)`
-/

namespace A282822.P11185891659809939337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n + (4 * Nat.factorial n : ℤ))

end

end A282822.P11185891659809939337

namespace A282822

/-- `-(Δ[-n!]+4*n!)` -/
def P11185891659809939337.Spec : Prop :=
  ∀ n, P11185891659809939337.a n = A282822 n

theorem P11185891659809939337.correct : P11185891659809939337.Spec := by
  intro n
  simp only [A282822, Nat.add_sub_cancel, A282822.P11185891659809939337.f1, A282822.P11185891659809939337.a, A282822.P13247839570909817495.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A282822

/-! ## A282822.P3526799326056802596

`a(n-1)/n^(-1)+(-1)^n*∏[floor(acot(n)-n)]` with `a(0)=-4`
-/

namespace A282822.P3526799326056802596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (n : ℝ)⌋

def a : ℕ → ℚ := SequenceMachineLib.rec [-4] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) + (((-1) ^ n * (∏ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ)

end

end A282822.P3526799326056802596

namespace A282822

/-- `a(n-1)/n^(-1)+(-1)^n*∏[floor(acot(n)-n)]` -/
def P3526799326056802596.Spec : Prop :=
  ∀ n, P3526799326056802596.a n = (A282822 n : ℚ)

end A282822

/-! ## A282822.P8935940956982570583

`(n-4)*A000142(n)`
-/

namespace A282822.P8935940956982570583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 4) * A000142 n

end

end A282822.P8935940956982570583

namespace A282822

/-- `(n-4)*A000142(n)` -/
def P8935940956982570583.Spec : Prop :=
  ∀ n, P8935940956982570583.a n = A282822 n

end A282822

/-! ## A282822.P9431175209982946673

`(n-4)*A052596(n)`
-/

namespace A282822.P9431175209982946673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 4) * A052596 n

end

end A282822.P9431175209982946673

namespace A282822

/-- `(n-4)*A052596(n)` -/
def P9431175209982946673.Spec : Prop :=
  ∀ n, P9431175209982946673.a n = A282822 n

end A282822

/-! ## A282822.P18038502815860987985

`A033312(n+1)-A173317(n)`
-/

namespace A282822.P18038502815860987985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033312 (n + 1) - A173317 n

end

end A282822.P18038502815860987985

namespace A282822

/-- `A033312(n+1)-A173317(n)` -/
def P18038502815860987985.Spec : Prop :=
  ∀ n, P18038502815860987985.a n = A282822 n

end A282822

/-! ## A282822.P5026667932405959725

`A038507(n+1)-A173319(n)`
-/

namespace A282822.P5026667932405959725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038507 (n + 1) - A173319 n

end

end A282822.P5026667932405959725

namespace A282822

/-- `A038507(n+1)-A173319(n)` -/
def P5026667932405959725.Spec : Prop :=
  ∀ n, P5026667932405959725.a n = A282822 n

end A282822

/-! ## A282822.P2073245486943003516

`A001048(n+1)-2*A052560(n)`
-/

namespace A282822.P2073245486943003516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001048 (n + 1) - 2 * A052560 n

end

end A282822.P2073245486943003516

namespace A282822

/-- `A001048(n+1)-2*A052560(n)` -/
def P2073245486943003516.Spec : Prop :=
  ∀ n, P2073245486943003516.a n = A282822 n

end A282822

/-!
# A282825: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 517", based on the 5-celled von Neumann neighborhood.

The programs for A282825, there is no canonical definition to state claims against.
-/

/-! ## A282825.P16391755127834103303

`A282986(n^(1-(∑{digits}[n, #]-n)))`
-/

namespace A282825.P16391755127834103303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282986 (SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)) : ℤ))).toNat

end

end A282825.P16391755127834103303

/-! ## A282825.P5186631615833739934

`A282956(A046469(n))`
-/

namespace A282825.P5186631615833739934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282956 (A046469 n).toNat

end

end A282825.P5186631615833739934

/-! ## A282825.P8915228335621748729

`A282956(A087036(n))`
-/

namespace A282825.P8915228335621748729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282956 (A087036 n).toNat

end

end A282825.P8915228335621748729

/-! ## A282825.P8982418866231087470

`A282956(A087051(n))`
-/

namespace A282825.P8982418866231087470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282956 (A087051 n).toNat

end

end A282825.P8982418866231087470

/-! ## A282825.P6761774614663614752

`A282956(A004892(n+1))`
-/

namespace A282825.P6761774614663614752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282956 (A004892 (n + 1)).toNat

end

end A282825.P6761774614663614752

/-!
# A282826: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 521", based on the 5-celled von Neumann neighborhood.

The programs for A282826, there is no canonical definition to state claims against.
-/

/-! ## A282826.P7262538603905082501

`A007088(A282828(n))`
-/

namespace A282826.P7262538603905082501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282828 n).toNat

end

end A282826.P7262538603905082501

/-! ## A282826.P3896136495888903999

`A007088(A095121(n)+1-A282263(n))`
-/

namespace A282826.P3896136495888903999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A282263 n)).toNat

end

end A282826.P3896136495888903999

/-! ## A282826.P87974057374285242

`A007088(1-(A282263(n)-A095121(n)))`
-/

namespace A282826.P87974057374285242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A282263 n - A095121 n)).toNat

end

end A282826.P87974057374285242

/-! ## A282826.P13558518476293726017

`A007088(A281758(n)+A283067(n)-A282263(n))`
-/

namespace A282826.P13558518476293726017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281758 n + (A283067 n - A282263 n)).toNat

end

end A282826.P13558518476293726017

/-! ## A282826.P4508093537518721401

`A007088(A281759(n)+A283068(n)-A282263(n))`
-/

namespace A282826.P4508093537518721401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281759 n + (A283068 n - A282263 n)).toNat

end

end A282826.P4508093537518721401

/-!
# A282827: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 521", based on the 5-celled von Neumann neighborhood.

The programs for A282827, there is no canonical definition to state claims against.
-/

/-! ## A282827.P6039843038287234321

`A007088(A282829(n))`
-/

namespace A282827.P6039843038287234321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282829 n).toNat

end

end A282827.P6039843038287234321

/-! ## A282827.P17946635356935032677

`A007088(and(-A282264(n), A095121(n)))`
-/

namespace A282827.P17946635356935032677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (-A282264 n) (A095121 n)).toNat

end

end A282827.P17946635356935032677

/-! ## A282827.P14915407851019094922

`A007088(A095121(n)+1-A282264(n))`
-/

namespace A282827.P14915407851019094922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A282264 n)).toNat

end

end A282827.P14915407851019094922

/-! ## A282827.P12623685062126593867

`A007088(1-(A282264(n)-A095121(n)))`
-/

namespace A282827.P12623685062126593867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A282264 n - A095121 n)).toNat

end

end A282827.P12623685062126593867

/-! ## A282827.P8395902948478524972

`A007088(A281758(n)+A283067(n)-A282264(n))`
-/

namespace A282827.P8395902948478524972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281758 n + (A283067 n - A282264 n)).toNat

end

end A282827.P8395902948478524972

/-!
# A282828: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 521", based on the 5-celled von Neumann neighborhood.

The programs for A282828, there is no canonical definition to state claims against.
-/

/-! ## A282828.P16960091450190821589

`A095121(n)+1-A282263(n)`
-/

namespace A282828.P16960091450190821589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A282263 n)

end

end A282828.P16960091450190821589

/-! ## A282828.P4235998620676478568

`A126646(n)%A282263(A028310(n))`
-/

namespace A282828.P4235998620676478568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) (A282263 (A028310 n).toNat)

end

end A282828.P4235998620676478568

/-! ## A282828.P12767955273934672203

`∑[A000079(n)]%A282263(A028310(n))`
-/

namespace A282828.P12767955273934672203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A282263 (A028310 n).toNat)

end

end A282828.P12767955273934672203

/-! ## A282828.P5607256338772903794

`A281758(n)+A283067(n)-A282263(n)`
-/

namespace A282828.P5607256338772903794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281758 n + (A283067 n - A282263 n)

end

end A282828.P5607256338772903794

/-! ## A282828.P16515195286054124858

`A281759(n)+A283068(n)-A282263(n)`
-/

namespace A282828.P16515195286054124858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281759 n + (A283068 n - A282263 n)

end

end A282828.P16515195286054124858

/-! ## A282828.P15379371381899566031

`A126646(n)+A057428(n)*A282263(n)`
-/

namespace A282828.P15379371381899566031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + A057428 n * A282263 n

end

end A282828.P15379371381899566031

/-! ## A282828.P16887422766521939145

`A127330(A000124(n))-A282263(n)`
-/

namespace A282828.P16887422766521939145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127330 (A000124 n).toNat - A282263 n

end

end A282828.P16887422766521939145

/-! ## A282828.P11303076316741338834

`A127330(∑[A028310(n)])-A282263(n)`
-/

namespace A282828.P11303076316741338834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127330 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A282263 n

end

end A282828.P11303076316741338834

/-!
# A282829: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 521", based on the 5-celled von Neumann neighborhood.

The programs for A282829, there is no canonical definition to state claims against.
-/

/-! ## A282829.P7840322606962135429

`and(-A282264(n), A095121(n))`
-/

namespace A282829.P7840322606962135429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A282264 n) (A095121 n)

end

end A282829.P7840322606962135429

/-! ## A282829.P7439916999868515343

`A281758(n)+A283067(n)-A282264(n)`
-/

namespace A282829.P7439916999868515343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281758 n + (A283067 n - A282264 n)

end

end A282829.P7439916999868515343

/-! ## A282829.P14459535741321836633

`A281759(n)+A283068(n)-A282264(n)`
-/

namespace A282829.P14459535741321836633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281759 n + (A283068 n - A282264 n)

end

end A282829.P14459535741321836633

/-! ## A282829.P14489566667096542649

`A126646(n)+A057428(n)*A282264(n)`
-/

namespace A282829.P14489566667096542649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + A057428 n * A282264 n

end

end A282829.P14489566667096542649

/-! ## A282829.P8014155813934623268

`and(A057428(n)-A282264(n), A095121(n))`
-/

namespace A282829.P8014155813934623268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n - A282264 n) (A095121 n)

end

end A282829.P8014155813934623268

/-! ## A282829.P11473238345402745667

`A016116(2*(n+1))+A057428(n)-A282264(n)`
-/

namespace A282829.P11473238345402745667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * (n + 1)) + (A057428 n - A282264 n)

end

end A282829.P11473238345402745667

/-! ## A282829.P3769053776185657049

`A126646(n)-A282264(n)%A007070(n)`
-/

namespace A282829.P3769053776185657049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A282264 n) (A007070 n)

end

end A282829.P3769053776185657049

/-! ## A282829.P9854629540212706969

`and(A126646(n)*A282264(n), A095121(n))`
-/

namespace A282829.P9854629540212706969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n * A282264 n) (A095121 n)

end

end A282829.P9854629540212706969

/-! ## A282829.P7024735893665669108

`A127330(A000124(n))-A282264(n)`
-/

namespace A282829.P7024735893665669108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127330 (A000124 n).toNat - A282264 n

end

end A282829.P7024735893665669108

/-!
# A282830: Number of n X n 0..1 arrays with no 1 equal to more than one of its king-move neighbors, with the exception of exactly two elements.

The programs for A282830, there is no canonical definition to state claims against.
-/

/-! ## A282830.P11429672381540414649

`A282838(∑[4*n]+1)`
-/

namespace A282830.P11429672381540414649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A282830.P11429672381540414649

/-! ## A282830.P15696432470144115733

`lcm(2, A282838(A001844(n)))`
-/

namespace A282830.P15696432470144115733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A282838 (A001844 n).toNat)

end

end A282830.P15696432470144115733

/-! ## A282830.P9468347970496716630

`A282838(A001844(n))+A085861(n)`
-/

namespace A282830.P9468347970496716630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (A001844 n).toNat + A085861 n

end

end A282830.P9468347970496716630

/-! ## A282830.P5811819936117002514

`A008327(n)*A282838(A001844(n))`
-/

namespace A282830.P5811819936117002514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008327 n * A282838 (A001844 n).toNat

end

end A282830.P5811819936117002514

/-! ## A282830.P1585147990172201041

`A119788(n+1)*A282838(A001844(n))`
-/

namespace A282830.P1585147990172201041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119788 (n + 1) * A282838 (A001844 n).toNat

end

end A282830.P1585147990172201041

/-!
# A282831: Number of nX1 0..1 arrays with no 1 equal to more than one of its king-move neighbors, with the exception of exactly two elements.

The programs for A282831, the canonical program `A282831.P3465074940308207182` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282831 has offset 1).

The definition of A282831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282831.P3465074940308207182

`ogf((x^3-x^4-x^5)/(1-3x+2x^3+6x^4-4x^6-6x^7-3x^8-x^9))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282831

/-- `ogf((x^3-x^4-x^5)/(1-3x+2x^3+6x^4-4x^6-6x^7-3x^8-x^9))` -/
def P3465074940308207182.Spec : Prop :=
  ∀ n, P3465074940308207182.a n = A282831 (n + 1)

theorem P3465074940308207182.correct : P3465074940308207182.Spec := by
  intro n
  simp only [A282831, Nat.add_sub_cancel]

end A282831

/-! ## A282831.P10268016610763546350

`A282838(∑[n]+1)`
-/

namespace A282831.P10268016610763546350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A282831.P10268016610763546350

namespace A282831

/-- `A282838(∑[n]+1)` -/
def P10268016610763546350.Spec : Prop :=
  ∀ n, P10268016610763546350.a n = A282831 (n + 1)

end A282831

/-! ## A282831.P6466613059051485587

`A282969(∑[n]+1)`
-/

namespace A282831.P6466613059051485587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282969 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A282831.P6466613059051485587

namespace A282831

/-- `A282969(∑[n]+1)` -/
def P6466613059051485587.Spec : Prop :=
  ∀ n, P6466613059051485587.a n = A282831 (n + 1)

end A282831

/-! ## A282831.P9600131565040970762

`A283100(∑[n]+1)`
-/

namespace A282831.P9600131565040970762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283100 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A282831.P9600131565040970762

namespace A282831

/-- `A283100(∑[n]+1)` -/
def P9600131565040970762.Spec : Prop :=
  ∀ n, P9600131565040970762.a n = A282831 (n + 1)

end A282831

/-! ## A282831.P11437869730470011760

`A282838(A000124(n))%(3^n)`
-/

namespace A282831.P11437869730470011760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282838 (A000124 n).toNat) (3 ^ n : ℤ)

end

end A282831.P11437869730470011760

namespace A282831

/-- `A282838(A000124(n))%(3^n)` -/
def P11437869730470011760.Spec : Prop :=
  ∀ n, P11437869730470011760.a n = A282831 (n + 1)

end A282831

/-!
# A282832: Number of nX2 0..1 arrays with no 1 equal to more than one of its king-move neighbors, with the exception of exactly two elements.

The programs for A282832, there is no canonical definition to state claims against.
-/

/-! ## A282832.P9667160022542438973

`A282838(∑[n+1]+2)`
-/

namespace A282832.P9667160022542438973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A282832.P9667160022542438973

/-! ## A282832.P12311719633787605242

`A282838(A167499(n)-3)%A028032(n)`
-/

namespace A282832.P12311719633787605242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282838 (A167499 n - 3).toNat) (A028032 n)

end

end A282832.P12311719633787605242

/-! ## A282832.P16601762183638222950

`A091717(n+1)*A282838(A167499(n)-3)`
-/

namespace A282832.P16601762183638222950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091717 (n + 1) * A282838 (A167499 n - 3).toNat

end

end A282832.P16601762183638222950

/-! ## A282832.P1588070541744679695

`lcm(2, A282838(A000096(n+1)))`
-/

namespace A282832.P1588070541744679695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A282838 (A000096 (n + 1)).toNat)

end

end A282832.P1588070541744679695

/-! ## A282832.P16146794077319798093

`A282838(A000096(n+1))%A226994(n)`
-/

namespace A282832.P16146794077319798093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282838 (A000096 (n + 1)).toNat) (A226994 n)

end

end A282832.P16146794077319798093

/-!
# A282833: Number of nX3 0..1 arrays with no 1 equal to more than one of its king-move neighbors, with the exception of exactly two elements.

The programs for A282833, there is no canonical definition to state claims against.
-/

/-! ## A282833.P16981987210728763100

`A282838(∑[n+2]+4)`
-/

namespace A282833.P16981987210728763100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A282833.P16981987210728763100

/-! ## A282833.P7378211889353566940

`A282838(A025747(n)+5+n)+char[24]`
-/

namespace A282833.P7378211889353566940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (A025747 n + 5 + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A282833.P7378211889353566940

/-! ## A282833.P14151872712615253951

`A057427(n)*A282838(A167614(n+1))`
-/

namespace A282833.P14151872712615253951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A282838 (A167614 (n + 1)).toNat

end

end A282833.P14151872712615253951

/-! ## A282833.P2883062608063652163

`A282838(A167614(n+1))%A073352(n)`
-/

namespace A282833.P2883062608063652163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282838 (A167614 (n + 1)).toNat) (A073352 n)

end

end A282833.P2883062608063652163

/-! ## A282833.P10044947112402993783

`or(A025466(n), A282838(A167614(n+1)))`
-/

namespace A282833.P10044947112402993783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025466 n) (A282838 (A167614 (n + 1)).toNat)

end

end A282833.P10044947112402993783

/-!
# A282834: Number of nX4 0..1 arrays with no 1 equal to more than one of its king-move neighbors, with the exception of exactly two elements.

The programs for A282834, there is no canonical definition to state claims against.
-/

/-! ## A282834.P16014372202741331398

`A282838(A374004(n+1))`
-/

namespace A282834.P16014372202741331398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (A374004 (n + 1)).toNat

end

end A282834.P16014372202741331398

/-! ## A282834.P9749413843555227882

`A282838(A141214(n)+7)`
-/

namespace A282834.P9749413843555227882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (A141214 n + 7).toNat

end

end A282834.P9749413843555227882

/-! ## A282834.P8517877514776242390

`A282838(A052905(n)+9)`
-/

namespace A282834.P8517877514776242390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (A052905 n + 9).toNat

end

end A282834.P8517877514776242390

/-! ## A282834.P14202200423285092720

`A282838(A055999(n)+10)`
-/

namespace A282834.P14202200423285092720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (A055999 n + 10).toNat

end

end A282834.P14202200423285092720

/-! ## A282834.P215502888289021954

`A282838(A167614(n+2)+1)`
-/

namespace A282834.P215502888289021954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (A167614 (n + 2) + 1).toNat

end

end A282834.P215502888289021954

/-!
# A282835: Number of nX5 0..1 arrays with no 1 equal to more than one of its king-move neighbors, with the exception of exactly two elements.

The programs for A282835, there is no canonical definition to state claims against.
-/

/-! ## A282835.P7214464135234019723

`A282838(A374005(n+1))`
-/

namespace A282835.P7214464135234019723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (A374005 (n + 1)).toNat

end

end A282835.P7214464135234019723

/-! ## A282835.P15582078696599186242

`A282838(A167499(n+3))`
-/

namespace A282835.P15582078696599186242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (A167499 (n + 3)).toNat

end

end A282835.P15582078696599186242

/-! ## A282835.P11962623149936249021

`A282838(A166136(n+4)-(n+6))`
-/

namespace A282835.P11962623149936249021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (A166136 (n + 4) - (n + 6 : ℤ)).toNat

end

end A282835.P11962623149936249021

/-! ## A282835.P13775117349328977158

`A282838(Δ[A264443(n)])`
-/

namespace A282835.P13775117349328977158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (f1 (n + 1) - f1 n).toNat

end

end A282835.P13775117349328977158

/-! ## A282835.P16952458921482358138

`A282838(A046691(n+3))`
-/

namespace A282835.P16952458921482358138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (A046691 (n + 3)).toNat

end

end A282835.P16952458921482358138

/-!
# A282836: Number of nX6 0..1 arrays with no 1 equal to more than one of its king-move neighbors, with the exception of exactly two elements.

The programs for A282836, there is no canonical definition to state claims against.
-/

/-! ## A282836.P9090848486377144521

`A282838(A374007(n+1))`
-/

namespace A282836.P9090848486377144521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (A374007 (n + 1)).toNat

end

end A282836.P9090848486377144521

/-! ## A282836.P864558690104664742

`A282838(A166136(n+4))`
-/

namespace A282836.P864558690104664742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (A166136 (n + 4)).toNat

end

end A282836.P864558690104664742

/-! ## A282836.P8808012654427545068

`A282838(eq[3, A219347(n)])`
-/

namespace A282836.P8808012654427545068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282836.P8808012654427545068

/-! ## A282836.P3134326672393314053

`A282838(eq[6, A200370(n+1)])`
-/

namespace A282836.P3134326672393314053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282836.P3134326672393314053

/-! ## A282836.P103789887750277411

`A282838(eq[7, A049286(n+1)])`
-/

namespace A282836.P103789887750277411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282836.P103789887750277411

/-!
# A282837: Number of nX7 0..1 arrays with no 1 equal to more than one of its king-move neighbors, with the exception of exactly two elements.

The programs for A282837, there is no canonical definition to state claims against.
-/

/-! ## A282837.P2008452885308695959

`A282838(A374008(n+1))`
-/

namespace A282837.P2008452885308695959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (A374008 (n + 1)).toNat

end

end A282837.P2008452885308695959

/-! ## A282837.P16229147325761812551

`A282838(A056119(n)+28)`
-/

namespace A282837.P16229147325761812551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (A056119 n + 28).toNat

end

end A282837.P16229147325761812551

/-! ## A282837.P14245061333566334959

`A282838(eq[8, A131818(n+1)])`
-/

namespace A282837.P14245061333566334959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282837.P14245061333566334959

/-! ## A282837.P13392321816590220408

`A282838(A055999(n+4))`
-/

namespace A282837.P13392321816590220408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (A055999 (n + 4)).toNat

end

end A282837.P13392321816590220408

/-! ## A282837.P4648259461358361189

`A282838(eq[4, A219347(n)])`
-/

namespace A282837.P4648259461358361189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282837.P4648259461358361189

/-!
# A282842: Index of first multiple of prime(n) in A282841.

The programs for A282842, there is no canonical definition to state claims against.
-/

/-! ## A282842.P9128415029697742605

`A001223(A048192(n+1))+A000124(n)`
-/

namespace A282842.P9128415029697742605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A048192 (n + 1)).toNat + A000124 n

end

end A282842.P9128415029697742605

/-!
# A282844: n-th even semiprime plus n-th odd semiprime.

The programs for A282844, the canonical program `A282844.P8395875720531729438` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282844 has offset 1).

The definition of A282844 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046315, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A282844.P8395875720531729438

`A100484(n+1)+A046315(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A282844

/-- `A100484(n+1)+A046315(n+1)` -/
def P8395875720531729438.Spec : Prop :=
  ∀ n, P8395875720531729438.a n = A282844 (n + 1)

theorem P8395875720531729438.correct : P8395875720531729438.Spec := by
  intro n
  simp only [A282844, Nat.add_sub_cancel]

end A282844

/-! ## A282844.P12806868416172470842

`A176406(n+1)+A089241(n+1)`
-/

namespace A282844.P12806868416172470842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176406 (n + 1) + A089241 (n + 1)

end

end A282844.P12806868416172470842

namespace A282844

/-- `A176406(n+1)+A089241(n+1)` -/
def P12806868416172470842.Spec : Prop :=
  ∀ n, P12806868416172470842.a n = A282844 (n + 1)

theorem P12806868416172470842.correct : P12806868416172470842.Spec := by
  intro n
  simp only [A282844, Nat.add_sub_cancel, A282844.P12806868416172470842.a, A282844.P8395875720531729438.a, A046315, A046315.P4459434404324554998.a, A089241, A089241.P14705987553220613803.a, A100484, A100484.P9678625670825099636.a, A176406, A176406.P4368198873740272747.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A289182, A289182.P4409354960599188013.f1, A289182.P4409354960599188013.f2, A289182.P4409354960599188013.a, A088707, A088707.P7291141647877559993.a, A106138, A106138.P1314688240599968597.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282844

/-! ## A282844.P3743755489985675006

`A001749(n+1)-A131634(n+1)`
-/

namespace A282844.P3743755489985675006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1) - A131634 (n + 1)

end

end A282844.P3743755489985675006

namespace A282844

/-- `A001749(n+1)-A131634(n+1)` -/
def P3743755489985675006.Spec : Prop :=
  ∀ n, P3743755489985675006.a n = A282844 (n + 1)

theorem P3743755489985675006.correct : P3743755489985675006.Spec := by
  intro n
  simp only [A282844, Nat.add_sub_cancel, A282844.P3743755489985675006.a, A282844.P8395875720531729438.a, A001749, A001749.P16106244962881767471.a, A046315, A046315.P4459434404324554998.a, A100484, A100484.P9678625670825099636.a, A131634, A131634.P13301814298976685454.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A289182, A289182.P4409354960599188013.f1, A289182.P4409354960599188013.f2, A289182.P4409354960599188013.a, A088707, A088707.P7291141647877559993.a, A106138, A106138.P1314688240599968597.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282844

/-! ## A282844.P3346509980290246489

`A046315(n+1)+sqrt(A069262(n+1))`
-/

namespace A282844.P3346509980290246489
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A046315 (n + 1) : ℝ) + Real.sqrt (A069262 (n + 1) : ℝ)

end

end A282844.P3346509980290246489

namespace A282844

/-- `A046315(n+1)+sqrt(A069262(n+1))` -/
def P3346509980290246489.Spec : Prop :=
  ∀ n, P3346509980290246489.a n = (A282844 (n + 1) : ℝ)

end A282844

/-! ## A282844.P10980856741759025558

`A046315(n+1)+Δ[2*A007504(n)]`
-/

namespace A282844.P10980856741759025558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1) + (f1 (n + 1) - f1 n)

end

end A282844.P10980856741759025558

namespace A282844

/-- `A046315(n+1)+Δ[2*A007504(n)]` -/
def P10980856741759025558.Spec : Prop :=
  ∀ n, P10980856741759025558.a n = A282844 (n + 1)

end A282844

/-! ## A282844.P18420803581477571572

`A100484(n+1)+A176406(n+1)+2`
-/

namespace A282844.P18420803581477571572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + (A176406 (n + 1) + 2)

end

end A282844.P18420803581477571572

namespace A282844

/-- `A100484(n+1)+A176406(n+1)+2` -/
def P18420803581477571572.Spec : Prop :=
  ∀ n, P18420803581477571572.a n = A282844 (n + 1)

theorem P18420803581477571572.correct : P18420803581477571572.Spec := by
  intro n
  simp only [A282844, Nat.add_sub_cancel, A282844.P18420803581477571572.a, A282844.P8395875720531729438.a, A046315, A046315.P4459434404324554998.a, A100484, A100484.P9678625670825099636.a, A176406, A176406.P4368198873740272747.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A289182, A289182.P4409354960599188013.f1, A289182.P4409354960599188013.f2, A289182.P4409354960599188013.a, A088707, A088707.P7291141647877559993.a, A106138, A106138.P1314688240599968597.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282844

/-! ## A282844.P4845756154624000785

`A046315(n+1)+2*A000040(n+1)`
-/

namespace A282844.P4845756154624000785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1) + 2 * A000040 (n + 1)

end

end A282844.P4845756154624000785

namespace A282844

/-- `A046315(n+1)+2*A000040(n+1)` -/
def P4845756154624000785.Spec : Prop :=
  ∀ n, P4845756154624000785.a n = A282844 (n + 1)

theorem P4845756154624000785.correct : P4845756154624000785.Spec := by
  intro n
  simp only [A282844, Nat.add_sub_cancel, A282844.P4845756154624000785.a, A282844.P8395875720531729438.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046315, A046315.P4459434404324554998.a, A100484, A100484.P9678625670825099636.a, A001358, A001358.P632087320844056370.a, A289182, A289182.P4409354960599188013.f1, A289182.P4409354960599188013.f2, A289182.P4409354960599188013.a, A088707, A088707.P7291141647877559993.a, A106138, A106138.P1314688240599968597.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282844

/-! ## A282844.P4151755298473351970

`A131634(n+1)+2*A046315(n+1)`
-/

namespace A282844.P4151755298473351970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131634 (n + 1) + 2 * A046315 (n + 1)

end

end A282844.P4151755298473351970

namespace A282844

/-- `A131634(n+1)+2*A046315(n+1)` -/
def P4151755298473351970.Spec : Prop :=
  ∀ n, P4151755298473351970.a n = A282844 (n + 1)

theorem P4151755298473351970.correct : P4151755298473351970.Spec := by
  intro n
  simp only [A282844, Nat.add_sub_cancel, A282844.P4151755298473351970.a, A282844.P8395875720531729438.a, A046315, A046315.P4459434404324554998.a, A100484, A100484.P9678625670825099636.a, A131634, A131634.P13301814298976685454.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A289182, A289182.P4409354960599188013.f1, A289182.P4409354960599188013.f2, A289182.P4409354960599188013.a, A088707, A088707.P7291141647877559993.a, A106138, A106138.P1314688240599968597.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282844

/-! ## A282844.P5320418773430347500

`A046315(n+1)+A001749(n+1)/2`
-/

namespace A282844.P5320418773430347500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046315 (n + 1) : ℚ) + (A001749 (n + 1) : ℚ) / 2

end

end A282844.P5320418773430347500

namespace A282844

/-- `A046315(n+1)+A001749(n+1)/2` -/
def P5320418773430347500.Spec : Prop :=
  ∀ n, P5320418773430347500.a n = (A282844 (n + 1) : ℚ)

theorem P5320418773430347500.correct : P5320418773430347500.Spec := by
  intro n
  simp only [A282844, Nat.add_sub_cancel, A282844.P5320418773430347500.a, A282844.P8395875720531729438.a, A001749, A001749.P16106244962881767471.a, A046315, A046315.P4459434404324554998.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A289182, A289182.P4409354960599188013.f1, A289182.P4409354960599188013.f2, A289182.P4409354960599188013.a, A088707, A088707.P7291141647877559993.a, A106138, A106138.P1314688240599968597.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282844

/-! ## A282844.P9232378342584050076

`2*A100484(n+1)-A131634(n+1)`
-/

namespace A282844.P9232378342584050076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100484 (n + 1) - A131634 (n + 1)

end

end A282844.P9232378342584050076

namespace A282844

/-- `2*A100484(n+1)-A131634(n+1)` -/
def P9232378342584050076.Spec : Prop :=
  ∀ n, P9232378342584050076.a n = A282844 (n + 1)

theorem P9232378342584050076.correct : P9232378342584050076.Spec := by
  intro n
  simp only [A282844, Nat.add_sub_cancel, A282844.P9232378342584050076.a, A282844.P8395875720531729438.a, A046315, A046315.P4459434404324554998.a, A100484, A100484.P9678625670825099636.a, A131634, A131634.P13301814298976685454.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A289182, A289182.P4409354960599188013.f1, A289182.P4409354960599188013.f2, A289182.P4409354960599188013.a, A088707, A088707.P7291141647877559993.a, A106138, A106138.P1314688240599968597.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282844

/-! ## A282844.P15489639594379874861

`A001358(n+1)+A175511(n+1)+A046315(n+1)`
-/

namespace A282844.P15489639594379874861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) + (A175511 (n + 1) + A046315 (n + 1))

end

end A282844.P15489639594379874861

namespace A282844

/-- `A001358(n+1)+A175511(n+1)+A046315(n+1)` -/
def P15489639594379874861.Spec : Prop :=
  ∀ n, P15489639594379874861.a n = A282844 (n + 1)

theorem P15489639594379874861.correct : P15489639594379874861.Spec := by
  intro n
  simp only [A282844, Nat.add_sub_cancel, A282844.P15489639594379874861.a, A282844.P8395875720531729438.a, A001358, A001358.P632087320844056370.a, A046315, A046315.P4459434404324554998.a, A100484, A100484.P9678625670825099636.a, A175511, A175511.P1932674187093907269.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A088707, A088707.P7291141647877559993.a, A289182, A289182.P4409354960599188013.f1, A289182.P4409354960599188013.f2, A289182.P4409354960599188013.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A106138, A106138.P1314688240599968597.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282844

/-! ## A282844.P13028731990431742032

`A001748(n+1)+A046315(n+1)-A000040(n+1)`
-/

namespace A282844.P13028731990431742032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) + (A046315 (n + 1) - A000040 (n + 1))

end

end A282844.P13028731990431742032

namespace A282844

/-- `A001748(n+1)+A046315(n+1)-A000040(n+1)` -/
def P13028731990431742032.Spec : Prop :=
  ∀ n, P13028731990431742032.a n = A282844 (n + 1)

theorem P13028731990431742032.correct : P13028731990431742032.Spec := by
  intro n
  simp only [A282844, Nat.add_sub_cancel, A282844.P13028731990431742032.a, A282844.P8395875720531729438.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, A046315, A046315.P4459434404324554998.a, A100484, A100484.P9678625670825099636.a, A001358, A001358.P632087320844056370.a, A289182, A289182.P4409354960599188013.f1, A289182.P4409354960599188013.f2, A289182.P4409354960599188013.a, A088707, A088707.P7291141647877559993.a, A106138, A106138.P1314688240599968597.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282844

/-! ## A282844.P4969023952332434772

`A046315(n+1)+A001747(n+2)`
-/

namespace A282844.P4969023952332434772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1) + A001747 (n + 2)

end

end A282844.P4969023952332434772

namespace A282844

/-- `A046315(n+1)+A001747(n+2)` -/
def P4969023952332434772.Spec : Prop :=
  ∀ n, P4969023952332434772.a n = A282844 (n + 1)

end A282844

/-! ## A282844.P13711897232124730290

`A000040(n+1)+A046315(n+1)+A008578(n+2)`
-/

namespace A282844.P13711897232124730290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A046315 (n + 1) + A008578 (n + 2))

end

end A282844.P13711897232124730290

namespace A282844

/-- `A000040(n+1)+A046315(n+1)+A008578(n+2)` -/
def P13711897232124730290.Spec : Prop :=
  ∀ n, P13711897232124730290.a n = A282844 (n + 1)

end A282844

/-! ## A282844.P2426894143315988070

`A001748(n+1)+A046315(n+1)-A008578(n+2)`
-/

namespace A282844.P2426894143315988070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) + (A046315 (n + 1) - A008578 (n + 2))

end

end A282844.P2426894143315988070

namespace A282844

/-- `A001748(n+1)+A046315(n+1)-A008578(n+2)` -/
def P2426894143315988070.Spec : Prop :=
  ∀ n, P2426894143315988070.a n = A282844 (n + 1)

end A282844

/-! ## A282844.P13114681506659532412

`A046315(n+1)+A112773(n+2)-A000040(n+1)`
-/

namespace A282844.P13114681506659532412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1) + (A112773 (n + 2) - A000040 (n + 1))

end

end A282844.P13114681506659532412

namespace A282844

/-- `A046315(n+1)+A112773(n+2)-A000040(n+1)` -/
def P13114681506659532412.Spec : Prop :=
  ∀ n, P13114681506659532412.a n = A282844 (n + 1)

end A282844

/-! ## A282844.P3403611444327952589

`A001747(n+2)+A001747(n+2)-A131634(n+1)`
-/

namespace A282844.P3403611444327952589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 2) + (A001747 (n + 2) - A131634 (n + 1))

end

end A282844.P3403611444327952589

namespace A282844

/-- `A001747(n+2)+A001747(n+2)-A131634(n+1)` -/
def P3403611444327952589.Spec : Prop :=
  ∀ n, P3403611444327952589.a n = A282844 (n + 1)

end A282844

/-! ## A282844.P4981393540904339908

`A046315(n+1)+A112773(n+2)-A008578(n+2)`
-/

namespace A282844.P4981393540904339908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1) + (A112773 (n + 2) - A008578 (n + 2))

end

end A282844.P4981393540904339908

namespace A282844

/-- `A046315(n+1)+A112773(n+2)-A008578(n+2)` -/
def P4981393540904339908.Spec : Prop :=
  ∀ n, P4981393540904339908.a n = A282844 (n + 1)

end A282844

/-! ## A282844.P17586304238173300978

`A046315(n+1)+2*A158611(n+3)`
-/

namespace A282844.P17586304238173300978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1) + 2 * A158611 (n + 3)

end

end A282844.P17586304238173300978

namespace A282844

/-- `A046315(n+1)+2*A158611(n+3)` -/
def P17586304238173300978.Spec : Prop :=
  ∀ n, P17586304238173300978.a n = A282844 (n + 1)

end A282844

/-! ## A282844.P12393357704253014001

`A046315(n+1)+2*(eq[2, A000005(n+1)]+1)`
-/

namespace A282844.P12393357704253014001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1) + (2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℤ)

end

end A282844.P12393357704253014001

namespace A282844

/-- `A046315(n+1)+2*(eq[2, A000005(n+1)]+1)` -/
def P12393357704253014001.Spec : Prop :=
  ∀ n, P12393357704253014001.a n = A282844 (n + 1)

end A282844

/-!
# A282845: Number of ways to write n as an ordered sum of 6 prime power palindromes (A084092).

The programs for A282845, there is no canonical definition to state claims against.
-/

/-! ## A282845.P3702968525159315030

`A348290(n+4)-A064731(A348290(n))`
-/

namespace A282845.P3702968525159315030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348290 (n + 4) - A064731 (A348290 n).toNat

end

end A282845.P3702968525159315030

/-! ## A282845.P5569849518487821874

`A226535(A318992(n+1))+C(A298826(2^n), 5)`
-/

namespace A282845.P5569849518487821874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226535 (A318992 (n + 1)).toNat + (Nat.choose (A298826 (2 ^ n)).toNat 5 : ℤ)

end

end A282845.P5569849518487821874

/-! ## A282845.P6151448092019920389

`C(A298826(2^n), 5)-A320745(A124794(n+1))`
-/

namespace A282845.P6151448092019920389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A298826 (2 ^ n)).toNat 5 : ℤ) - A320745 (A124794 (n + 1)).toNat

end

end A282845.P6151448092019920389

/-! ## A282845.P16420034121505452022

`C(A298826(2^n), 5)-A320745(A306438(n+1))`
-/

namespace A282845.P16420034121505452022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A298826 (2 ^ n)).toNat 5 : ℤ) - A320745 (A306438 (n + 1)).toNat

end

end A282845.P16420034121505452022

/-!
# A282848: a(n) = 2*n + 1 + n mod 4.

The programs for A282848, the canonical program `A282848.P13763061232083351135` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282848 has offset 1).

The definition of A282848 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)+1+(n+1)%4` (program `A282848.P13763061232083351135`, by `A282848.P13763061232083351135.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A282848.P13076175453263527568

`a(n-4)+8` with `a(0)=4, a(1)=7, a(2)=10, a(3)=9`
-/

namespace A282848.P13076175453263527568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 7, 10, 9] fun n a =>
  a (n - 4) + 8

end

end A282848.P13076175453263527568

namespace A282848

/-- `a(n-4)+8` -/
def P13076175453263527568.Spec : Prop :=
  ∀ n, (P13076175453263527568.a n : ℤ) = A282848 (n + 1)

end A282848

/-! ## A282848.P13763061232083351135

`2*(n+1)+1+(n+1)%4`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282848

/-- `2*(n+1)+1+(n+1)%4` -/
def P13763061232083351135.Spec : Prop :=
  ∀ n, (P13763061232083351135.a n : ℤ) = A282848 (n + 1)

theorem P13763061232083351135.correct : P13763061232083351135.Spec := by
  intro n
  simp only [A282848, Nat.add_sub_cancel]

end A282848

/-! ## A282848.P4730985927391988428

`ogf((4+3x+3x^2-x^3-x^4)/(1-x-x^4+x^5))`
-/

namespace A282848.P4730985927391988428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 3, 3, -1, -1] [1, -1, 0, 0, -1, 1] n

end

end A282848.P4730985927391988428

namespace A282848

/-- `ogf((4+3x+3x^2-x^3-x^4)/(1-x-x^4+x^5))` -/
def P4730985927391988428.Spec : Prop :=
  ∀ n, P4730985927391988428.a n = A282848 (n + 1)

end A282848

/-! ## A282848.P7642650426084762008

`xor(2*(n+2), n%4)`
-/

namespace A282848.P7642650426084762008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * (n + 2)) (n % 4)

end

end A282848.P7642650426084762008

namespace A282848

/-- `xor(2*(n+2), n%4)` -/
def P7642650426084762008.Spec : Prop :=
  ∀ n, (P7642650426084762008.a n : ℤ) = A282848 (n + 1)

end A282848

/-! ## A282848.P11008849213359529797

`or(1, n)+or(2, n+3)`
-/

namespace A282848.P11008849213359529797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + Nat.lor 2 (n + 3)

end

end A282848.P11008849213359529797

namespace A282848

/-- `or(1, n)+or(2, n+3)` -/
def P11008849213359529797.Spec : Prop :=
  ∀ n, (P11008849213359529797.a n : ℤ) = A282848 (n + 1)

end A282848

/-! ## A282848.P6749779767024170587

`xor(2*(n+2), and(3, n))`
-/

namespace A282848.P6749779767024170587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * (n + 2)) (Nat.land 3 n)

end

end A282848.P6749779767024170587

namespace A282848

/-- `xor(2*(n+2), and(3, n))` -/
def P6749779767024170587.Spec : Prop :=
  ∀ n, (P6749779767024170587.a n : ℤ) = A282848 (n + 1)

end A282848

/-! ## A282848.P4805534327225255032

`and(3*(n+2), -4)-n`
-/

namespace A282848.P4805534327225255032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * (n + 2) : ℤ) (-4) - (n : ℤ)

end

end A282848.P4805534327225255032

namespace A282848

/-- `and(3*(n+2), -4)-n` -/
def P4805534327225255032.Spec : Prop :=
  ∀ n, P4805534327225255032.a n = A282848 (n + 1)

end A282848

/-! ## A282848.P12926204542321946523

`3*n-and(n-3, -4)`
-/

namespace A282848.P12926204542321946523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - Int.land ((n : ℤ) - 3) (-4)

end

end A282848.P12926204542321946523

namespace A282848

/-- `3*n-and(n-3, -4)` -/
def P12926204542321946523.Spec : Prop :=
  ∀ n, P12926204542321946523.a n = A282848 (n + 1)

end A282848

/-! ## A282848.P13635342280360268230

`∑[and(4, and(3, n)-3)]-n`
-/

namespace A282848.P13635342280360268230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 4 ((Nat.land 3 n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A282848.P13635342280360268230

namespace A282848

/-- `∑[and(4, and(3, n)-3)]-n` -/
def P13635342280360268230.Spec : Prop :=
  ∀ n, P13635342280360268230.a n = A282848 (n + 1)

end A282848

/-! ## A282848.P2114526701119198250

`2*n+(n+1)%4+3`
-/

namespace A282848.P2114526701119198250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + ((n + 1) % 4 + 3)

end

end A282848.P2114526701119198250

namespace A282848

/-- `2*n+(n+1)%4+3` -/
def P2114526701119198250.Spec : Prop :=
  ∀ n, (P2114526701119198250.a n : ℤ) = A282848 (n + 1)

theorem P2114526701119198250.correct : P2114526701119198250.Spec := by
  intro n
  simp only [A282848, Nat.add_sub_cancel, A282848.P2114526701119198250.a, A282848.P13763061232083351135.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A282848

/-! ## A282848.P10188325144115219861

`2*n+and(3, n+1)+3`
-/

namespace A282848.P10188325144115219861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (Nat.land 3 (n + 1) + 3)

end

end A282848.P10188325144115219861

namespace A282848

/-- `2*n+and(3, n+1)+3` -/
def P10188325144115219861.Spec : Prop :=
  ∀ n, (P10188325144115219861.a n : ℤ) = A282848 (n + 1)

end A282848

/-! ## A282848.P13782609314287373621

`and(3, n+1)+n+3+n`
-/

namespace A282848.P13782609314287373621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (n + 1) + (n + 3) + n

end

end A282848.P13782609314287373621

namespace A282848

/-- `and(3, n+1)+n+3+n` -/
def P13782609314287373621.Spec : Prop :=
  ∀ n, (P13782609314287373621.a n : ℤ) = A282848 (n + 1)

end A282848

/-! ## A282848.P3447310910295748364

`∑[floor(a(n-4))]` with `a(0)=4, a(1)=3, a(2)=3, a(3)=-1, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A282848.P3447310910295748364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 3, 3, -1, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282848.P3447310910295748364

namespace A282848

/-- `∑[floor(a(n-4))]` -/
def P3447310910295748364.Spec : Prop :=
  ∀ n, P3447310910295748364.a n = A282848 (n + 1)

end A282848

/-! ## A282848.P15560415466212606524

`∑[a(n-4)%5]-n` with `a(0)=4, a(1)=4, a(2)=4, a(3)=0`
-/

namespace A282848.P15560415466212606524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 4, 4, 0] fun n f1 =>
  f1 (n - 4) % 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A282848.P15560415466212606524

namespace A282848

/-- `∑[a(n-4)%5]-n` -/
def P15560415466212606524.Spec : Prop :=
  ∀ n, P15560415466212606524.a n = A282848 (n + 1)

end A282848

/-! ## A282848.P1545570144111537716

`4*(n+1-floor((n+1)/4))-n`
-/

namespace A282848.P1545570144111537716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1 : ℤ) - ⌊(n + 1 : ℚ) / 4⌋) - (n : ℤ)

end

end A282848.P1545570144111537716

namespace A282848

/-- `4*(n+1-floor((n+1)/4))-n` -/
def P1545570144111537716.Spec : Prop :=
  ∀ n, P1545570144111537716.a n = A282848 (n + 1)

end A282848

/-! ## A282848.P543810070882516938

`Δ[∑[and(3, n)]+(n+1)²]`
-/

namespace A282848.P543810070882516938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A282848.P543810070882516938

namespace A282848

/-- `Δ[∑[and(3, n)]+(n+1)²]` -/
def P543810070882516938.Spec : Prop :=
  ∀ n, P543810070882516938.a n = A282848 (n + 1)

end A282848

/-! ## A282848.P7728632327622714767

`Δ[A130482(n)+(n+1)²]`
-/

namespace A282848.P7728632327622714767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130482 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282848.P7728632327622714767

namespace A282848

/-- `Δ[A130482(n)+(n+1)²]` -/
def P7728632327622714767.Spec : Prop :=
  ∀ n, P7728632327622714767.a n = A282848 (n + 1)

end A282848

/-! ## A282848.P13199566536383671023

`Δ[(n+2)²-A121496(n+1)]`
-/

namespace A282848.P13199566536383671023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A121496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282848.P13199566536383671023

namespace A282848

/-- `Δ[(n+2)²-A121496(n+1)]` -/
def P13199566536383671023.Spec : Prop :=
  ∀ n, P13199566536383671023.a n = A282848 (n + 1)

end A282848

/-! ## A282848.P5338697772284089827

`A317613(A014601(n+2))`
-/

namespace A282848.P5338697772284089827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317613 (A014601 (n + 2)).toNat

end

end A282848.P5338697772284089827

namespace A282848

/-- `A317613(A014601(n+2))` -/
def P5338697772284089827.Spec : Prop :=
  ∀ n, P5338697772284089827.a n = A282848 (n + 1)

end A282848

/-! ## A282848.P15017727417224789514

`A317613(A154708(n+2))`
-/

namespace A282848.P15017727417224789514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317613 (A154708 (n + 2)).toNat

end

end A282848.P15017727417224789514

namespace A282848

/-- `A317613(A154708(n+2))` -/
def P15017727417224789514.Spec : Prop :=
  ∀ n, P15017727417224789514.a n = A282848 (n + 1)

end A282848

/-!
# A282849: Number of divisors k of n such that (n + k^2)/k is a prime.

The programs for A282849, the canonical program `A282849.P7416668363150530004` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282849 has offset 1).

The definition of A282849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282849.P7416668363150530004

`∑{d}[n+1, A010051((n+1)/#+#)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A282849

/-- `∑{d}[n+1, A010051((n+1)/#+#)]` -/
def P7416668363150530004.Spec : Prop :=
  ∀ n, P7416668363150530004.a n = A282849 (n + 1)

theorem P7416668363150530004.correct : P7416668363150530004.Spec := by
  intro n
  simp only [A282849, Nat.add_sub_cancel]

end A282849

/-! ## A282849.P9013421852523881728

`A000034(n)*A382983(n+1)`
-/

namespace A282849.P9013421852523881728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A382983 (n + 1)

end

end A282849.P9013421852523881728

namespace A282849

/-- `A000034(n)*A382983(n+1)` -/
def P9013421852523881728.Spec : Prop :=
  ∀ n, P9013421852523881728.a n = A282849 (n + 1)

end A282849

/-! ## A282849.P4646761935793990177

`A061393(n)*A382983(n+1)`
-/

namespace A282849.P4646761935793990177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 n * A382983 (n + 1)

end

end A282849.P4646761935793990177

namespace A282849

/-- `A061393(n)*A382983(n+1)` -/
def P4646761935793990177.Spec : Prop :=
  ∀ n, P4646761935793990177.a n = A282849 (n + 1)

end A282849

/-! ## A282849.P6107147325723513041

`A068073(n)*A382983(n+1)`
-/

namespace A282849.P6107147325723513041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068073 n * A382983 (n + 1)

end

end A282849.P6107147325723513041

namespace A282849

/-- `A068073(n)*A382983(n+1)` -/
def P6107147325723513041.Spec : Prop :=
  ∀ n, P6107147325723513041.a n = A282849 (n + 1)

end A282849

/-! ## A282849.P10199980356637851075

`A083952(n)*A382983(n+1)`
-/

namespace A282849.P10199980356637851075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083952 n * A382983 (n + 1)

end

end A282849.P10199980356637851075

namespace A282849

/-- `A083952(n)*A382983(n+1)` -/
def P10199980356637851075.Spec : Prop :=
  ∀ n, P10199980356637851075.a n = A282849 (n + 1)

end A282849

/-! ## A282849.P15255965992154479911

`A105220(n)*A382983(n+1)`
-/

namespace A282849.P15255965992154479911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105220 n * A382983 (n + 1)

end

end A282849.P15255965992154479911

namespace A282849

/-- `A105220(n)*A382983(n+1)` -/
def P15255965992154479911.Spec : Prop :=
  ∀ n, P15255965992154479911.a n = A282849 (n + 1)

end A282849

/-! ## A282849.P11027470531184456107

`A141056(n)*A382983(n+1)`
-/

namespace A282849.P11027470531184456107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 n * A382983 (n + 1)

end

end A282849.P11027470531184456107

namespace A282849

/-- `A141056(n)*A382983(n+1)` -/
def P11027470531184456107.Spec : Prop :=
  ∀ n, P11027470531184456107.a n = A282849 (n + 1)

end A282849

/-! ## A282849.P7771662220104556737

`A141310(n)*A382983(n+1)`
-/

namespace A282849.P7771662220104556737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n * A382983 (n + 1)

end

end A282849.P7771662220104556737

namespace A282849

/-- `A141310(n)*A382983(n+1)` -/
def P7771662220104556737.Spec : Prop :=
  ∀ n, P7771662220104556737.a n = A282849 (n + 1)

end A282849

/-! ## A282849.P15123588346806958587

`A177002(n)*A382983(n+1)`
-/

namespace A282849.P15123588346806958587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177002 n * A382983 (n + 1)

end

end A282849.P15123588346806958587

namespace A282849

/-- `A177002(n)*A382983(n+1)` -/
def P15123588346806958587.Spec : Prop :=
  ∀ n, P15123588346806958587.a n = A282849 (n + 1)

end A282849

/-! ## A282849.P13272537972893220847

`A186181(n)*A382983(n+1)`
-/

namespace A282849.P13272537972893220847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186181 n * A382983 (n + 1)

end

end A282849.P13272537972893220847

namespace A282849

/-- `A186181(n)*A382983(n+1)` -/
def P13272537972893220847.Spec : Prop :=
  ∀ n, P13272537972893220847.a n = A282849 (n + 1)

end A282849

/-! ## A282849.P490702888944569434

`A186187(n)*A382983(n+1)`
-/

namespace A282849.P490702888944569434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186187 n * A382983 (n + 1)

end

end A282849.P490702888944569434

namespace A282849

/-- `A186187(n)*A382983(n+1)` -/
def P490702888944569434.Spec : Prop :=
  ∀ n, P490702888944569434.a n = A282849 (n + 1)

end A282849

/-! ## A282849.P16366643373464747033

`A353486(n)*A382983(n+1)`
-/

namespace A282849.P16366643373464747033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353486 n * A382983 (n + 1)

end

end A282849.P16366643373464747033

namespace A282849

/-- `A353486(n)*A382983(n+1)` -/
def P16366643373464747033.Spec : Prop :=
  ∀ n, P16366643373464747033.a n = A282849 (n + 1)

end A282849

/-! ## A282849.P17182296358514317561

`A020639(n+1)*A382983(n+1)`
-/

namespace A282849.P17182296358514317561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A382983 (n + 1)

end

end A282849.P17182296358514317561

namespace A282849

/-- `A020639(n+1)*A382983(n+1)` -/
def P17182296358514317561.Spec : Prop :=
  ∀ n, P17182296358514317561.a n = A282849 (n + 1)

end A282849

/-! ## A282849.P5329969456177985156

`∑{d}[n+1, A080339((n+1)/#+#)]`
-/

namespace A282849.P5329969456177985156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080339 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) + (d : ℚ))).toNat

end

end A282849.P5329969456177985156

namespace A282849

/-- `∑{d}[n+1, A080339((n+1)/#+#)]` -/
def P5329969456177985156.Spec : Prop :=
  ∀ n, P5329969456177985156.a n = A282849 (n + 1)

end A282849

/-! ## A282849.P7061465874301028040

`A000034(n)*A088627(A123684(n+1))`
-/

namespace A282849.P7061465874301028040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A088627 (A123684 (n + 1)).toNat

end

end A282849.P7061465874301028040

namespace A282849

/-- `A000034(n)*A088627(A123684(n+1))` -/
def P7061465874301028040.Spec : Prop :=
  ∀ n, P7061465874301028040.a n = A282849 (n + 1)

end A282849

/-! ## A282849.P1064518458689608428

`A020639(n+1)*A088627(A123684(n+1))`
-/

namespace A282849.P1064518458689608428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A088627 (A123684 (n + 1)).toNat

end

end A282849.P1064518458689608428

namespace A282849

/-- `A020639(n+1)*A088627(A123684(n+1))` -/
def P1064518458689608428.Spec : Prop :=
  ∀ n, P1064518458689608428.a n = A282849 (n + 1)

end A282849

/-! ## A282849.P2688820439404348309

`A000005(A079879(n+1))*A088627(A123684(n+1))`
-/

namespace A282849.P2688820439404348309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A079879 (n + 1)).toNat * A088627 (A123684 (n + 1)).toNat

end

end A282849.P2688820439404348309

namespace A282849

/-- `A000005(A079879(n+1))*A088627(A123684(n+1))` -/
def P2688820439404348309.Spec : Prop :=
  ∀ n, P2688820439404348309.a n = A282849 (n + 1)

end A282849

/-! ## A282849.P7638335763647364806

`A000005(A123365(n+1))*A088627(A123684(n+1))`
-/

namespace A282849.P7638335763647364806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A123365 (n + 1)).toNat * A088627 (A123684 (n + 1)).toNat

end

end A282849.P7638335763647364806

namespace A282849

/-- `A000005(A123365(n+1))*A088627(A123684(n+1))` -/
def P7638335763647364806.Spec : Prop :=
  ∀ n, P7638335763647364806.a n = A282849 (n + 1)

end A282849

/-!
# A282850: 38-gonal numbers: a(n) = n*(18*n-17).

The programs for A282850, the canonical program `A282850.P10636471792818135754` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282850 has offset 0).

The definition of A282850 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(18*n-17)` (program `A282850.P10636471792818135754`, by `A282850.P10636471792818135754.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A282850.P10636471792818135754

`n*(18*n-17)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282850

/-- `n*(18*n-17)` -/
def P10636471792818135754.Spec : Prop :=
  ∀ n, P10636471792818135754.a n = A282850 n

theorem P10636471792818135754.correct : P10636471792818135754.Spec := by
  intro n
  simp only [A282850]

end A282850

/-! ## A282850.P9794963132247132834

`ogf((x+35x^2)/(1-3x+3x^2-x^3))`
-/

namespace A282850.P9794963132247132834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 35] [1, -3, 3, -1] n

end

end A282850.P9794963132247132834

namespace A282850

/-- `ogf((x+35x^2)/(1-3x+3x^2-x^3))` -/
def P9794963132247132834.Spec : Prop :=
  ∀ n, P9794963132247132834.a n = A282850 n

end A282850

/-! ## A282850.P2498633713100660440

`36*C(n, 2)+n`
-/

namespace A282850.P2498633713100660440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36 * Nat.choose n 2 + n

end

end A282850.P2498633713100660440

namespace A282850

/-- `36*C(n, 2)+n` -/
def P2498633713100660440.Spec : Prop :=
  ∀ n, (P2498633713100660440.a n : ℤ) = A282850 n

theorem P2498633713100660440.correct : P2498633713100660440.Spec := by
  intro n
  simp only [A282850, Nat.add_sub_cancel, A282850.P2498633713100660440.a, A282850.P10636471792818135754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A282850

/-! ## A282850.P3395896563340418268

`∑[a(n-1)+36]` with `a(0)=0, a(1)=1`
-/

namespace A282850.P3395896563340418268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 36

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282850.P3395896563340418268

namespace A282850

/-- `∑[a(n-1)+36]` -/
def P3395896563340418268.Spec : Prop :=
  ∀ n, (P3395896563340418268.a n : ℤ) = A282850 n

end A282850

/-! ## A282850.P11859893686575260870

`18*n*(2*n)%(n+1)+n`
-/

namespace A282850.P11859893686575260870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * n * (2 * n % (n + 1)) + n

end

end A282850.P11859893686575260870

namespace A282850

/-- `18*n*(2*n)%(n+1)+n` -/
def P11859893686575260870.Spec : Prop :=
  ∀ n, (P11859893686575260870.a n : ℤ) = A282850 n

end A282850

/-! ## A282850.P17752579000460216588

`2*A051872(n)-n`
-/

namespace A282850.P17752579000460216588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051872 n - (n : ℤ)

end

end A282850.P17752579000460216588

namespace A282850

/-- `2*A051872(n)-n` -/
def P17752579000460216588.Spec : Prop :=
  ∀ n, P17752579000460216588.a n = A282850 n

theorem P17752579000460216588.correct : P17752579000460216588.Spec := by
  intro n
  simp only [A282850, Nat.add_sub_cancel, A282850.P17752579000460216588.a, A282850.P10636471792818135754.a, A051872, A051872.P14981514250328426150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282850

/-! ## A282850.P17094456694071122659

`A153796(n)-5*n`
-/

namespace A282850.P17094456694071122659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153796 n - (5 * n : ℤ)

end

end A282850.P17094456694071122659

namespace A282850

/-- `A153796(n)-5*n` -/
def P17094456694071122659.Spec : Prop :=
  ∀ n, P17094456694071122659.a n = A282850 n

theorem P17094456694071122659.correct : P17094456694071122659.Spec := by
  intro n
  simp only [A282850, Nat.add_sub_cancel, A282850.P17094456694071122659.a, A282850.P10636471792818135754.a, A153796, A153796.P2544292493987041900.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282850

/-! ## A282850.P1652004396969443602

`A261191(n)+n-n²`
-/

namespace A282850.P1652004396969443602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261191 n + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A282850.P1652004396969443602

namespace A282850

/-- `A261191(n)+n-n²` -/
def P1652004396969443602.Spec : Prop :=
  ∀ n, P1652004396969443602.a n = A282850 n

theorem P1652004396969443602.correct : P1652004396969443602.Spec := by
  intro n
  simp only [A282850, Nat.add_sub_cancel, A282850.P1652004396969443602.a, A282850.P10636471792818135754.a, A261191, A261191.P14259318423697160448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282850

/-! ## A282850.P12603923255404739333

`n²+A282853(n)-n`
-/

namespace A282850.P12603923255404739333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A282853 n - (n : ℤ))

end

end A282850.P12603923255404739333

namespace A282850

/-- `n²+A282853(n)-n` -/
def P12603923255404739333.Spec : Prop :=
  ∀ n, P12603923255404739333.a n = A282850 n

theorem P12603923255404739333.correct : P12603923255404739333.Spec := by
  intro n
  simp only [A282850, Nat.add_sub_cancel, A282850.P12603923255404739333.a, A282850.P10636471792818135754.a, A282853, A282853.P10274591526643661106.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282850

/-! ## A282850.P5388517819259505331

`3*A103115(n)+n+3`
-/

namespace A282850.P5388517819259505331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A103115 n + (n + 3 : ℤ)

end

end A282850.P5388517819259505331

namespace A282850

/-- `3*A103115(n)+n+3` -/
def P5388517819259505331.Spec : Prop :=
  ∀ n, P5388517819259505331.a n = A282850 n

theorem P5388517819259505331.correct : P5388517819259505331.Spec := by
  intro n
  simp only [A282850, Nat.add_sub_cancel, A282850.P5388517819259505331.a, A282850.P10636471792818135754.a, A103115, A103115.P1586163232865090376.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282850

/-! ## A282850.P12167014865961150793

`18*n*A023443(n)+n`
-/

namespace A282850.P12167014865961150793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (18 * n : ℤ) * A023443 n + (n : ℤ)

end

end A282850.P12167014865961150793

namespace A282850

/-- `18*n*A023443(n)+n` -/
def P12167014865961150793.Spec : Prop :=
  ∀ n, P12167014865961150793.a n = A282850 n

theorem P12167014865961150793.correct : P12167014865961150793.Spec := by
  intro n
  simp only [A282850, Nat.add_sub_cancel, A282850.P12167014865961150793.a, A282850.P10636471792818135754.a, A023443, A023443.P2966051066474347068.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282850

/-! ## A282850.P284251920228951670

`A064200(n)+A051866(n)`
-/

namespace A282850.P284251920228951670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n + A051866 n

end

end A282850.P284251920228951670

namespace A282850

/-- `A064200(n)+A051866(n)` -/
def P284251920228951670.Spec : Prop :=
  ∀ n, P284251920228951670.a n = A282850 n

theorem P284251920228951670.correct : P284251920228951670.Spec := by
  intro n
  simp only [A282850, Nat.add_sub_cancel, A282850.P284251920228951670.a, A282850.P10636471792818135754.a, A051866, A051866.P7037994286834974710.a, A064200, A064200.P18272209519029569283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282850

/-! ## A282850.P8879996695807912584

`A282852(n)+A161680(n)`
-/

namespace A282850.P8879996695807912584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282852 n + A161680 n

end

end A282850.P8879996695807912584

namespace A282850

/-- `A282852(n)+A161680(n)` -/
def P8879996695807912584.Spec : Prop :=
  ∀ n, P8879996695807912584.a n = A282850 n

theorem P8879996695807912584.correct : P8879996695807912584.Spec := by
  intro n
  simp only [A282850, Nat.add_sub_cancel, A282850.P8879996695807912584.a, A282850.P10636471792818135754.a, A161680, A161680.P17206074215489759881.a, A282852, A282852.P10787036325409188800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A282850

/-! ## A282850.P10739031936684930024

`A045946(n)-A008605(n)`
-/

namespace A282850.P10739031936684930024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045946 n - A008605 n

end

end A282850.P10739031936684930024

namespace A282850

/-- `A045946(n)-A008605(n)` -/
def P10739031936684930024.Spec : Prop :=
  ∀ n, P10739031936684930024.a n = A282850 n

theorem P10739031936684930024.correct : P10739031936684930024.Spec := by
  intro n
  simp only [A282850, Nat.add_sub_cancel, A282850.P10739031936684930024.a, A282850.P10636471792818135754.a, A008605, A008605.P5066899400796399337.a, A045946, A045946.P9467780037797056746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282850

/-! ## A282850.P2794780915513773785

`A081589(n)-A017401(n)`
-/

namespace A282850.P2794780915513773785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081589 n - A017401 n

end

end A282850.P2794780915513773785

namespace A282850

/-- `A081589(n)-A017401(n)` -/
def P2794780915513773785.Spec : Prop :=
  ∀ n, P2794780915513773785.a n = A282850 n

theorem P2794780915513773785.correct : P2794780915513773785.Spec := by
  intro n
  simp only [A282850, Nat.add_sub_cancel, A282850.P2794780915513773785.a, A282850.P10636471792818135754.a, A017401, A017401.P13777489390994228607.a, A081589, A081589.P14858353134158145363.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282850

/-! ## A282850.P11431135871177652093

`A144314(n)-A008602(n)`
-/

namespace A282850.P11431135871177652093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144314 n - A008602 n

end

end A282850.P11431135871177652093

namespace A282850

/-- `A144314(n)-A008602(n)` -/
def P11431135871177652093.Spec : Prop :=
  ∀ n, P11431135871177652093.a n = A282850 n

theorem P11431135871177652093.correct : P11431135871177652093.Spec := by
  intro n
  simp only [A282850, Nat.add_sub_cancel, A282850.P11431135871177652093.a, A282850.P10636471792818135754.a, A008602, A008602.P10803716924039054280.a, A144314, A144314.P8498779635623249334.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282850

/-! ## A282850.P2424560728267538424

`A152994(n)-A008590(n)`
-/

namespace A282850.P2424560728267538424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152994 n - A008590 n

end

end A282850.P2424560728267538424

namespace A282850

/-- `A152994(n)-A008590(n)` -/
def P2424560728267538424.Spec : Prop :=
  ∀ n, P2424560728267538424.a n = A282850 n

theorem P2424560728267538424.correct : P2424560728267538424.Spec := by
  intro n
  simp only [A282850, Nat.add_sub_cancel, A282850.P2424560728267538424.a, A282850.P10636471792818135754.a, A008590, A008590.P15621076316638553644.a, A152994, A152994.P7052798607735396897.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282850

/-! ## A282850.P14031555604658282367

`A153792(n)-A008593(n)`
-/

namespace A282850.P14031555604658282367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153792 n - A008593 n

end

end A282850.P14031555604658282367

namespace A282850

/-- `A153792(n)-A008593(n)` -/
def P14031555604658282367.Spec : Prop :=
  ∀ n, P14031555604658282367.a n = A282850 n

theorem P14031555604658282367.correct : P14031555604658282367.Spec := by
  intro n
  simp only [A282850, Nat.add_sub_cancel, A282850.P14031555604658282367.a, A282850.P10636471792818135754.a, A008593, A008593.P2680892499938115192.a, A153792, A153792.P13758873412561183293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282850

/-! ## A282850.P5371069566421491495

`A153797(n)-A028896(n)`
-/

namespace A282850.P5371069566421491495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153797 n - A028896 n

end

end A282850.P5371069566421491495

namespace A282850

/-- `A153797(n)-A028896(n)` -/
def P5371069566421491495.Spec : Prop :=
  ∀ n, P5371069566421491495.a n = A282850 n

theorem P5371069566421491495.correct : P5371069566421491495.Spec := by
  intro n
  simp only [A282850, Nat.add_sub_cancel, A282850.P5371069566421491495.a, A282850.P10636471792818135754.a, A028896, A028896.P3776891904721443318.a, A153797, A153797.P1020360065334955704.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282850

/-! ## A282850.P810676269009617534

`A033573(n)-A161714(n)`
-/

namespace A282850.P810676269009617534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033573 n - A161714 n

end

end A282850.P810676269009617534

namespace A282850

/-- `A033573(n)-A161714(n)` -/
def P810676269009617534.Spec : Prop :=
  ∀ n, P810676269009617534.a n = A282850 n

theorem P810676269009617534.correct : P810676269009617534.Spec := by
  intro n
  simp only [A282850, Nat.add_sub_cancel, A282850.P810676269009617534.a, A282850.P10636471792818135754.a, A033573, A033573.P5635402715111793120.a, A161714, A161714.P2323638930024766233.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282850

/-!
# A282851: 35-gonal numbers: a(n) = n*(33*n-31)/2.

The programs for A282851, the canonical program `A282851.P14785479597947437260` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282851 has offset 0).

The definition of A282851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(33*n-31)/2` (program `A282851.P4936459735981164346`, by `A282851.P4936459735981164346.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A282851.P4936459735981164346

`n*(33*n-31)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A282851.P4936459735981164346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((33 * n : ℤ) - 31) : ℚ) / 2

end

end A282851.P4936459735981164346

namespace A282851

/-- `n*(33*n-31)/2` -/
def P4936459735981164346.Spec : Prop :=
  ∀ n, P4936459735981164346.a n = (A282851 n : ℚ)

theorem P4936459735981164346.correct : P4936459735981164346.Spec := by
  intro n
  simp only [A282851, Nat.add_sub_cancel, A282851.P4936459735981164346.a, A282851.P14785479597947437260.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A282851

/-! ## A282851.P8811387363582468051

`ogf((x+32x^2)/(1-3x+3x^2-x^3))`
-/

namespace A282851.P8811387363582468051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 32] [1, -3, 3, -1] n

end

end A282851.P8811387363582468051

namespace A282851

/-- `ogf((x+32x^2)/(1-3x+3x^2-x^3))` -/
def P8811387363582468051.Spec : Prop :=
  ∀ n, P8811387363582468051.a n = A282851 n

end A282851

/-! ## A282851.P14785479597947437260

`33*C(n, 2)+n`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282851

/-- `33*C(n, 2)+n` -/
def P14785479597947437260.Spec : Prop :=
  ∀ n, (P14785479597947437260.a n : ℤ) = A282851 n

theorem P14785479597947437260.correct : P14785479597947437260.Spec := by
  intro n
  simp only [A282851]

end A282851

/-! ## A282851.P15377852985638825711

`∑[a(n-1)+33]` with `a(0)=0, a(1)=1`
-/

namespace A282851.P15377852985638825711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 33

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282851.P15377852985638825711

namespace A282851

/-- `∑[a(n-1)+33]` -/
def P15377852985638825711.Spec : Prop :=
  ∀ n, (P15377852985638825711.a n : ℤ) = A282851 n

end A282851

/-! ## A282851.P12170068330611663987

`A153875(n)-2*n`
-/

namespace A282851.P12170068330611663987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153875 n - (2 * n : ℤ)

end

end A282851.P12170068330611663987

namespace A282851

/-- `A153875(n)-2*n` -/
def P12170068330611663987.Spec : Prop :=
  ∀ n, P12170068330611663987.a n = A282851 n

end A282851

/-! ## A282851.P5884325349026401863

`n²-n+A098923(n)`
-/

namespace A282851.P5884325349026401863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ) + A098923 n

end

end A282851.P5884325349026401863

namespace A282851

/-- `n²-n+A098923(n)` -/
def P5884325349026401863.Spec : Prop :=
  ∀ n, P5884325349026401863.a n = A282851 n

end A282851

/-! ## A282851.P4361675169761981985

`A282852(n)-(n²-n)`
-/

namespace A282851.P4361675169761981985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282852 n - ((n ^ 2 : ℤ) - (n : ℤ))

end

end A282851.P4361675169761981985

namespace A282851

/-- `A282852(n)-(n²-n)` -/
def P4361675169761981985.Spec : Prop :=
  ∀ n, P4361675169761981985.a n = A282851 n

theorem P4361675169761981985.correct : P4361675169761981985.Spec := by
  intro n
  simp only [A282851, Nat.add_sub_cancel, A282851.P4361675169761981985.a, A282851.P14785479597947437260.a, A282852, A282852.P10787036325409188800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A282851

/-! ## A282851.P10596155613445512258

`A064200(n)+A051682(n)`
-/

namespace A282851.P10596155613445512258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n + A051682 n

end

end A282851.P10596155613445512258

namespace A282851

/-- `A064200(n)+A051682(n)` -/
def P10596155613445512258.Spec : Prop :=
  ∀ n, P10596155613445512258.a n = A282851 n

end A282851

/-! ## A282851.P17058237567513236144

`A263231(n)+A033996(n)`
-/

namespace A282851.P17058237567513236144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263231 n + A033996 n

end

end A282851.P17058237567513236144

namespace A282851

/-- `A263231(n)+A033996(n)` -/
def P17058237567513236144.Spec : Prop :=
  ∀ n, P17058237567513236144.a n = A282851 n

end A282851

/-! ## A282851.P4040642437548676413

`A282854(n)+A161680(n)`
-/

namespace A282851.P4040642437548676413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282854 n + A161680 n

end

end A282851.P4040642437548676413

namespace A282851

/-- `A282854(n)+A161680(n)` -/
def P4040642437548676413.Spec : Prop :=
  ∀ n, P4040642437548676413.a n = A282851 n

theorem P4040642437548676413.correct : P4040642437548676413.Spec := by
  intro n
  simp only [A282851, Nat.add_sub_cancel, A282851.P4040642437548676413.a, A282851.P14785479597947437260.a, A161680, A161680.P17206074215489759881.a, A282854, A282854.P10479849519924556517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A282851

/-! ## A282851.P480074716079871763

`A153449(n)-A008592(n)`
-/

namespace A282851.P480074716079871763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153449 n - A008592 n

end

end A282851.P480074716079871763

namespace A282851

/-- `A153449(n)-A008592(n)` -/
def P480074716079871763.Spec : Prop :=
  ∀ n, P480074716079871763.a n = A282851 n

end A282851

/-! ## A282851.P5955625281345392714

`A153808(n)-A022272(n)`
-/

namespace A282851.P5955625281345392714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153808 n - A022272 n

end

end A282851.P5955625281345392714

namespace A282851

/-- `A153808(n)-A022272(n)` -/
def P5955625281345392714.Spec : Prop :=
  ∀ n, P5955625281345392714.a n = A282851 n

end A282851

/-! ## A282851.P8183848120816066152

`A152777(n)-A028557(n)`
-/

namespace A282851.P8183848120816066152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152777 n - A028557 n

end

end A282851.P8183848120816066152

namespace A282851

/-- `A152777(n)-A028557(n)` -/
def P8183848120816066152.Spec : Prop :=
  ∀ n, P8183848120816066152.a n = A282851 n

end A282851

/-! ## A282851.P1411983377552690350

`A153797(n)-A081266(n)`
-/

namespace A282851.P1411983377552690350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153797 n - A081266 n

end

end A282851.P1411983377552690350

namespace A282851

/-- `A153797(n)-A081266(n)` -/
def P1411983377552690350.Spec : Prop :=
  ∀ n, P1411983377552690350.a n = A282851 n

end A282851

/-! ## A282851.P11707206590899832979

`A152994(n)-A140672(n)`
-/

namespace A282851.P11707206590899832979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152994 n - A140672 n

end

end A282851.P11707206590899832979

namespace A282851

/-- `A152994(n)-A140672(n)` -/
def P11707206590899832979.Spec : Prop :=
  ∀ n, P11707206590899832979.a n = A282851 n

end A282851

/-! ## A282851.P11330160151561346890

`A153796(n)-A140090(n)`
-/

namespace A282851.P11330160151561346890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153796 n - A140090 n

end

end A282851.P11330160151561346890

namespace A282851

/-- `A153796(n)-A140090(n)` -/
def P11330160151561346890.Spec : Prop :=
  ∀ n, P11330160151561346890.a n = A282851 n

end A282851

/-! ## A282851.P9114847785846162390

`A153792(n)-A140675(n)`
-/

namespace A282851.P9114847785846162390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153792 n - A140675 n

end

end A282851.P9114847785846162390

namespace A282851

/-- `A153792(n)-A140675(n)` -/
def P9114847785846162390.Spec : Prop :=
  ∀ n, P9114847785846162390.a n = A282851 n

end A282851

/-! ## A282851.P6353719703690270149

`A154617(n)-A211013(n)`
-/

namespace A282851.P6353719703690270149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154617 n - A211013 n

end

end A282851.P6353719703690270149

namespace A282851

/-- `A154617(n)-A211013(n)` -/
def P6353719703690270149.Spec : Prop :=
  ∀ n, P6353719703690270149.a n = A282851 n

end A282851

/-! ## A282851.P14658092683329499805

`A244630(n)-A132758(n)`
-/

namespace A282851.P14658092683329499805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244630 n - A132758 n

end

end A282851.P14658092683329499805

namespace A282851

/-- `A244630(n)-A132758(n)` -/
def P14658092683329499805.Spec : Prop :=
  ∀ n, P14658092683329499805.a n = A282851 n

end A282851

/-! ## A282851.P17056341784777864189

`A153793(n)-A277978(n)`
-/

namespace A282851.P17056341784777864189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153793 n - A277978 n

end

end A282851.P17056341784777864189

namespace A282851

/-- `A153793(n)-A277978(n)` -/
def P17056341784777864189.Spec : Prop :=
  ∀ n, P17056341784777864189.a n = A282851 n

end A282851

/-!
# A282852: 37-gonal numbers: a(n) = n*(35*n-33)/2.

The programs for A282852, the canonical program `A282852.P10787036325409188800` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282852 has offset 0).

The definition of A282852 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(35*n-33)/2` (program `A282852.P8949227052638784232`, by `A282852.P8949227052638784232.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A282852.P8949227052638784232

`n*(35*n-33)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A282852.P8949227052638784232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((35 * n : ℤ) - 33) : ℚ) / 2

end

end A282852.P8949227052638784232

namespace A282852

/-- `n*(35*n-33)/2` -/
def P8949227052638784232.Spec : Prop :=
  ∀ n, P8949227052638784232.a n = (A282852 n : ℚ)

theorem P8949227052638784232.correct : P8949227052638784232.Spec := by
  intro n
  simp only [A282852, Nat.add_sub_cancel, A282852.P8949227052638784232.a, A282852.P10787036325409188800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A282852

/-! ## A282852.P6818640186478501211

`ogf((x+34x^2)/(1-3x+3x^2-x^3))`
-/

namespace A282852.P6818640186478501211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 34] [1, -3, 3, -1] n

end

end A282852.P6818640186478501211

namespace A282852

/-- `ogf((x+34x^2)/(1-3x+3x^2-x^3))` -/
def P6818640186478501211.Spec : Prop :=
  ∀ n, P6818640186478501211.a n = A282852 n

end A282852

/-! ## A282852.P10787036325409188800

`35*C(n, 2)+n`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282852

/-- `35*C(n, 2)+n` -/
def P10787036325409188800.Spec : Prop :=
  ∀ n, (P10787036325409188800.a n : ℤ) = A282852 n

theorem P10787036325409188800.correct : P10787036325409188800.Spec := by
  intro n
  simp only [A282852]

end A282852

/-! ## A282852.P2832558395900826002

`∑[a(n-1)+35]` with `a(0)=0, a(1)=1`
-/

namespace A282852.P2832558395900826002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 35

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282852.P2832558395900826002

namespace A282852

/-- `∑[a(n-1)+35]` -/
def P2832558395900826002.Spec : Prop :=
  ∀ n, (P2832558395900826002.a n : ℤ) = A282852 n

end A282852

/-! ## A282852.P16632405425881980001

`a(n-1)+35*n-34` with `a(0)=0`
-/

namespace A282852.P16632405425881980001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((35 * n : ℤ) - 34)

end

end A282852.P16632405425881980001

namespace A282852

/-- `a(n-1)+35*n-34` -/
def P16632405425881980001.Spec : Prop :=
  ∀ n, P16632405425881980001.a n = A282852 n

end A282852

/-! ## A282852.P9411908081382659982

`A282851(n)+n²-n`
-/

namespace A282852.P9411908081382659982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282851 n + ((n ^ 2 : ℤ) - (n : ℤ))

end

end A282852.P9411908081382659982

namespace A282852

/-- `A282851(n)+n²-n` -/
def P9411908081382659982.Spec : Prop :=
  ∀ n, P9411908081382659982.a n = A282852 n

theorem P9411908081382659982.correct : P9411908081382659982.Spec := by
  intro n
  simp only [A282852, Nat.add_sub_cancel, A282852.P9411908081382659982.a, A282852.P10787036325409188800.a, A282851, A282851.P14785479597947437260.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A282852

/-! ## A282852.P858440871424373608

`A064200(n)+A051865(n)`
-/

namespace A282852.P858440871424373608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n + A051865 n

end

end A282852.P858440871424373608

namespace A282852

/-- `A064200(n)+A051865(n)` -/
def P858440871424373608.Spec : Prop :=
  ∀ n, P858440871424373608.a n = A282852 n

end A282852

/-! ## A282852.P16816960061398217023

`A282853(n)+A161680(n)`
-/

namespace A282852.P16816960061398217023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282853 n + A161680 n

end

end A282852.P16816960061398217023

namespace A282852

/-- `A282853(n)+A161680(n)` -/
def P16816960061398217023.Spec : Prop :=
  ∀ n, P16816960061398217023.a n = A282852 n

theorem P16816960061398217023.correct : P16816960061398217023.Spec := by
  intro n
  simp only [A282852, Nat.add_sub_cancel, A282852.P16816960061398217023.a, A282852.P10787036325409188800.a, A161680, A161680.P17206074215489759881.a, A282853, A282853.P10274591526643661106.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A282852

/-! ## A282852.P12396696201775870016

`A326725(n)+A263226(n)`
-/

namespace A282852.P12396696201775870016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326725 n + A263226 n

end

end A282852.P12396696201775870016

namespace A282852

/-- `A326725(n)+A263226(n)` -/
def P12396696201775870016.Spec : Prop :=
  ∀ n, P12396696201775870016.a n = A282852 n

end A282852

/-! ## A282852.P7872415316915066025

`A152777(n)-A008588(n)`
-/

namespace A282852.P7872415316915066025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152777 n - A008588 n

end

end A282852.P7872415316915066025

namespace A282852

/-- `A152777(n)-A008588(n)` -/
def P7872415316915066025.Spec : Prop :=
  ∀ n, P7872415316915066025.a n = A282852 n

end A282852

/-! ## A282852.P17029538529574411686

`A153808(n)-A022271(n)`
-/

namespace A282852.P17029538529574411686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153808 n - A022271 n

end

end A282852.P17029538529574411686

namespace A282852

/-- `A153808(n)-A022271(n)` -/
def P17029538529574411686.Spec : Prop :=
  ∀ n, P17029538529574411686.a n = A282852 n

end A282852

/-! ## A282852.P13024953393325168783

`A152994(n)-A056121(n)`
-/

namespace A282852.P13024953393325168783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152994 n - A056121 n

end

end A282852.P13024953393325168783

namespace A282852

/-- `A152994(n)-A056121(n)` -/
def P13024953393325168783.Spec : Prop :=
  ∀ n, P13024953393325168783.a n = A282852 n

end A282852

/-! ## A282852.P7716572181098599626

`A153796(n)-A056000(n)`
-/

namespace A282852.P7716572181098599626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153796 n - A056000 n

end

end A282852.P7716572181098599626

namespace A282852

/-- `A153796(n)-A056000(n)` -/
def P7716572181098599626.Spec : Prop :=
  ∀ n, P7716572181098599626.a n = A282852 n

end A282852

/-! ## A282852.P1225046382048834753

`A153797(n)-A179986(n)`
-/

namespace A282852.P1225046382048834753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153797 n - A179986 n

end

end A282852.P1225046382048834753

namespace A282852

/-- `A153797(n)-A179986(n)` -/
def P1225046382048834753.Spec : Prop :=
  ∀ n, P1225046382048834753.a n = A282852 n

end A282852

/-! ## A282852.P7594569984103728023

`A195321(n)-A212427(n)`
-/

namespace A282852.P7594569984103728023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195321 n - A212427 n

end

end A282852.P7594569984103728023

namespace A282852

/-- `A195321(n)-A212427(n)` -/
def P7594569984103728023.Spec : Prop :=
  ∀ n, P7594569984103728023.a n = A282852 n

end A282852

/-! ## A282852.P6360962459562165151

`A270704(n)-A152741(n)`
-/

namespace A282852.P6360962459562165151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270704 n - A152741 n

end

end A282852.P6360962459562165151

namespace A282852

/-- `A270704(n)-A152741(n)` -/
def P6360962459562165151.Spec : Prop :=
  ∀ n, P6360962459562165151.a n = A282852 n

end A282852

/-! ## A282852.P2351820768218202892

`A282850(n)-A161680(n)`
-/

namespace A282852.P2351820768218202892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282850 n - A161680 n

end

end A282852.P2351820768218202892

namespace A282852

/-- `A282850(n)-A161680(n)` -/
def P2351820768218202892.Spec : Prop :=
  ∀ n, P2351820768218202892.a n = A282852 n

theorem P2351820768218202892.correct : P2351820768218202892.Spec := by
  intro n
  simp only [A282852, Nat.add_sub_cancel, A282852.P2351820768218202892.a, A282852.P10787036325409188800.a, A161680, A161680.P17206074215489759881.a, A282850, A282850.P10636471792818135754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A282852

/-! ## A282852.P10023883234444001920

`A144560(n)-A302906(n)`
-/

namespace A282852.P10023883234444001920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144560 n - A302906 n

end

end A282852.P10023883234444001920

namespace A282852

/-- `A144560(n)-A302906(n)` -/
def P10023883234444001920.Spec : Prop :=
  ∀ n, P10023883234444001920.a n = A282852 n

end A282852

/-! ## A282852.P401691028164099108

`A051874(n)+A051874(n)-A000566(n)`
-/

namespace A282852.P401691028164099108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051874 n + (A051874 n - A000566 n)

end

end A282852.P401691028164099108

namespace A282852

/-- `A051874(n)+A051874(n)-A000566(n)` -/
def P401691028164099108.Spec : Prop :=
  ∀ n, P401691028164099108.a n = A282852 n

end A282852

/-!
# A282853: 36-gonal numbers: a(n) = n*(17*n-16).

The programs for A282853, the canonical program `A282853.P10274591526643661106` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282853 has offset 0).

The definition of A282853 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(17*n-16)` (program `A282853.P10274591526643661106`, by `A282853.P10274591526643661106.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A282853.P10274591526643661106

`n*(17*n-16)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282853

/-- `n*(17*n-16)` -/
def P10274591526643661106.Spec : Prop :=
  ∀ n, P10274591526643661106.a n = A282853 n

theorem P10274591526643661106.correct : P10274591526643661106.Spec := by
  intro n
  simp only [A282853]

end A282853

/-! ## A282853.P7932787593621360860

`ogf((x+33x^2)/(1-3x+3x^2-x^3))`
-/

namespace A282853.P7932787593621360860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 33] [1, -3, 3, -1] n

end

end A282853.P7932787593621360860

namespace A282853

/-- `ogf((x+33x^2)/(1-3x+3x^2-x^3))` -/
def P7932787593621360860.Spec : Prop :=
  ∀ n, P7932787593621360860.a n = A282853 n

end A282853

/-! ## A282853.P13839891705901810311

`34*C(n, 2)+n`
-/

namespace A282853.P13839891705901810311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34 * Nat.choose n 2 + n

end

end A282853.P13839891705901810311

namespace A282853

/-- `34*C(n, 2)+n` -/
def P13839891705901810311.Spec : Prop :=
  ∀ n, (P13839891705901810311.a n : ℤ) = A282853 n

theorem P13839891705901810311.correct : P13839891705901810311.Spec := by
  intro n
  simp only [A282853, Nat.add_sub_cancel, A282853.P13839891705901810311.a, A282853.P10274591526643661106.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A282853

/-! ## A282853.P18064637241909177731

`∑[a(n-1)+34]` with `a(0)=0, a(1)=1`
-/

namespace A282853.P18064637241909177731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 34

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282853.P18064637241909177731

namespace A282853

/-- `∑[a(n-1)+34]` -/
def P18064637241909177731.Spec : Prop :=
  ∀ n, (P18064637241909177731.a n : ℤ) = A282853 n

end A282853

/-! ## A282853.P15221722202724124167

`n²+16*n*(2*n)%(n+1)`
-/

namespace A282853.P15221722202724124167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 16 * n * (2 * n % (n + 1))

end

end A282853.P15221722202724124167

namespace A282853

/-- `n²+16*n*(2*n)%(n+1)` -/
def P15221722202724124167.Spec : Prop :=
  ∀ n, (P15221722202724124167.a n : ℤ) = A282853 n

end A282853

/-! ## A282853.P1347904504063844783

`2*A051871(n)-n`
-/

namespace A282853.P1347904504063844783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051871 n - (n : ℤ)

end

end A282853.P1347904504063844783

namespace A282853

/-- `2*A051871(n)-n` -/
def P1347904504063844783.Spec : Prop :=
  ∀ n, P1347904504063844783.a n = A282853 n

end A282853

/-! ## A282853.P11917775008982232395

`A282850(n)+n-n²`
-/

namespace A282853.P11917775008982232395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282850 n + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A282853.P11917775008982232395

namespace A282853

/-- `A282850(n)+n-n²` -/
def P11917775008982232395.Spec : Prop :=
  ∀ n, P11917775008982232395.a n = A282853 n

theorem P11917775008982232395.correct : P11917775008982232395.Spec := by
  intro n
  simp only [A282853, Nat.add_sub_cancel, A282853.P11917775008982232395.a, A282853.P10274591526643661106.a, A282850, A282850.P10636471792818135754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282853

/-! ## A282853.P16060595663659609186

`n²+A282854(n)-n`
-/

namespace A282853.P16060595663659609186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A282854 n - (n : ℤ))

end

end A282853.P16060595663659609186

namespace A282853

/-- `n²+A282854(n)-n` -/
def P16060595663659609186.Spec : Prop :=
  ∀ n, P16060595663659609186.a n = A282853 n

theorem P16060595663659609186.correct : P16060595663659609186.Spec := by
  intro n
  simp only [A282853, Nat.add_sub_cancel, A282853.P16060595663659609186.a, A282853.P10274591526643661106.a, A282854, A282854.P10479849519924556517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282853

/-! ## A282853.P17573119412152149221

`A064200(n)+A051624(n)`
-/

namespace A282853.P17573119412152149221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n + A051624 n

end

end A282853.P17573119412152149221

namespace A282853

/-- `A064200(n)+A051624(n)` -/
def P17573119412152149221.Spec : Prop :=
  ∀ n, P17573119412152149221.a n = A282853 n

theorem P17573119412152149221.correct : P17573119412152149221.Spec := by
  intro n
  simp only [A282853, Nat.add_sub_cancel, A282853.P17573119412152149221.a, A282853.P10274591526643661106.a, A051624, A051624.P2353499915457724243.a, A064200, A064200.P18272209519029569283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282853

/-! ## A282853.P14766074341926546522

`A263226(n)+A014107(n)`
-/

namespace A282853.P14766074341926546522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263226 n + A014107 n

end

end A282853.P14766074341926546522

namespace A282853

/-- `A263226(n)+A014107(n)` -/
def P14766074341926546522.Spec : Prop :=
  ∀ n, P14766074341926546522.a n = A282853 n

theorem P14766074341926546522.correct : P14766074341926546522.Spec := by
  intro n
  simp only [A282853, Nat.add_sub_cancel, A282853.P14766074341926546522.a, A282853.P10274591526643661106.a, A014107, A014107.P7046062318563033165.a, A263226, A263226.P10219769499938942172.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282853

/-! ## A282853.P18139531174999474601

`A263231(n)+A062728(n)`
-/

namespace A282853.P18139531174999474601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263231 n + A062728 n

end

end A282853.P18139531174999474601

namespace A282853

/-- `A263231(n)+A062728(n)` -/
def P18139531174999474601.Spec : Prop :=
  ∀ n, P18139531174999474601.a n = A282853 n

end A282853

/-! ## A282853.P10535441736698896962

`A282851(n)+A161680(n)`
-/

namespace A282853.P10535441736698896962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282851 n + A161680 n

end

end A282853.P10535441736698896962

namespace A282853

/-- `A282851(n)+A161680(n)` -/
def P10535441736698896962.Spec : Prop :=
  ∀ n, P10535441736698896962.a n = A282853 n

theorem P10535441736698896962.correct : P10535441736698896962.Spec := by
  intro n
  simp only [A282853, Nat.add_sub_cancel, A282853.P10535441736698896962.a, A282853.P10274591526643661106.a, A161680, A161680.P17206074215489759881.a, A282851, A282851.P14785479597947437260.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A282853

/-! ## A282853.P10431994093435326275

`A153797(n)-A002943(n)`
-/

namespace A282853.P10431994093435326275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153797 n - A002943 n

end

end A282853.P10431994093435326275

namespace A282853

/-- `A153797(n)-A002943(n)` -/
def P10431994093435326275.Spec : Prop :=
  ∀ n, P10431994093435326275.a n = A282853 n

theorem P10431994093435326275.correct : P10431994093435326275.Spec := by
  intro n
  simp only [A282853, Nat.add_sub_cancel, A282853.P10431994093435326275.a, A282853.P10274591526643661106.a, A002943, A002943.P6554007946647441496.a, A153797, A153797.P1020360065334955704.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282853

/-! ## A282853.P11227918744695126252

`A045946(n)-A132764(n)`
-/

namespace A282853.P11227918744695126252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045946 n - A132764 n

end

end A282853.P11227918744695126252

namespace A282853

/-- `A045946(n)-A132764(n)` -/
def P11227918744695126252.Spec : Prop :=
  ∀ n, P11227918744695126252.a n = A282853 n

theorem P11227918744695126252.correct : P11227918744695126252.Spec := by
  intro n
  simp only [A282853, Nat.add_sub_cancel, A282853.P11227918744695126252.a, A282853.P10274591526643661106.a, A045946, A045946.P9467780037797056746.a, A132764, A132764.P12818640193784093272.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282853

/-! ## A282853.P11242837226596151799

`A152994(n)-A028563(n)`
-/

namespace A282853.P11242837226596151799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152994 n - A028563 n

end

end A282853.P11242837226596151799

namespace A282853

/-- `A152994(n)-A028563(n)` -/
def P11242837226596151799.Spec : Prop :=
  ∀ n, P11242837226596151799.a n = A282853 n

theorem P11242837226596151799.correct : P11242837226596151799.Spec := by
  intro n
  simp only [A282853, Nat.add_sub_cancel, A282853.P11242837226596151799.a, A282853.P10274591526643661106.a, A028563, A028563.P15186121141906373506.a, A152994, A152994.P7052798607735396897.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282853

/-! ## A282853.P6181767371036312743

`A153808(n)-A033582(n)`
-/

namespace A282853.P6181767371036312743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153808 n - A033582 n

end

end A282853.P6181767371036312743

namespace A282853

/-- `A153808(n)-A033582(n)` -/
def P6181767371036312743.Spec : Prop :=
  ∀ n, P6181767371036312743.a n = A282853 n

theorem P6181767371036312743.correct : P6181767371036312743.Spec := by
  intro n
  simp only [A282853, Nat.add_sub_cancel, A282853.P6181767371036312743.a, A282853.P10274591526643661106.a, A033582, A033582.P4303886374806047270.a, A153808, A153808.P12582623721954130915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282853

/-! ## A282853.P5074673838990029937

`A152777(n)-A056115(n)`
-/

namespace A282853.P5074673838990029937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152777 n - A056115 n

end

end A282853.P5074673838990029937

namespace A282853

/-- `A152777(n)-A056115(n)` -/
def P5074673838990029937.Spec : Prop :=
  ∀ n, P5074673838990029937.a n = A282853 n

end A282853

/-! ## A282853.P11926135031277919392

`A144560(n)-A067725(n)`
-/

namespace A282853.P11926135031277919392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144560 n - A067725 n

end

end A282853.P11926135031277919392

namespace A282853

/-- `A144560(n)-A067725(n)` -/
def P11926135031277919392.Spec : Prop :=
  ∀ n, P11926135031277919392.a n = A282853 n

theorem P11926135031277919392.correct : P11926135031277919392.Spec := by
  intro n
  simp only [A282853, Nat.add_sub_cancel, A282853.P11926135031277919392.a, A282853.P10274591526643661106.a, A067725, A067725.P18258344800788486266.a, A144560, A144560.P17731211630582671558.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282853

/-! ## A282853.P6541802986616761407

`A194713(n)-A045945(n)`
-/

namespace A282853.P6541802986616761407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194713 n - A045945 n

end

end A282853.P6541802986616761407

namespace A282853

/-- `A194713(n)-A045945(n)` -/
def P6541802986616761407.Spec : Prop :=
  ∀ n, P6541802986616761407.a n = A282853 n

theorem P6541802986616761407.correct : P6541802986616761407.Spec := by
  intro n
  simp only [A282853, Nat.add_sub_cancel, A282853.P6541802986616761407.a, A282853.P10274591526643661106.a, A045945, A045945.P14001929662270589613.a, A194713, A194713.P3858004928101857164.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282853

/-! ## A282853.P6636140973458241236

`A153792(n)-A098603(n)`
-/

namespace A282853.P6636140973458241236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153792 n - A098603 n

end

end A282853.P6636140973458241236

namespace A282853

/-- `A153792(n)-A098603(n)` -/
def P6636140973458241236.Spec : Prop :=
  ∀ n, P6636140973458241236.a n = A282853 n

theorem P6636140973458241236.correct : P6636140973458241236.Spec := by
  intro n
  simp only [A282853, Nat.add_sub_cancel, A282853.P6636140973458241236.a, A282853.P10274591526643661106.a, A098603, A098603.P15074787285242523117.a, A153792, A153792.P13758873412561183293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282853

/-!
# A282854: 34-gonal numbers: a(n) = n*(32*n-30)/2.

The programs for A282854, the canonical program `A282854.P10479849519924556517` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282854 has offset 0).

The definition of A282854 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(32*n-30)/2` (program `A282854.P18099467636161717324`, by `A282854.P18099467636161717324.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A282854.P10479849519924556517

`n*(16*n-15)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282854

/-- `n*(16*n-15)` -/
def P10479849519924556517.Spec : Prop :=
  ∀ n, P10479849519924556517.a n = A282854 n

theorem P10479849519924556517.correct : P10479849519924556517.Spec := by
  intro n
  simp only [A282854]

end A282854

/-! ## A282854.P18099467636161717324

`n*(32*n-30)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A282854.P18099467636161717324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((32 * n : ℤ) - 30) : ℚ) / 2

end

end A282854.P18099467636161717324

namespace A282854

/-- `n*(32*n-30)/2` -/
def P18099467636161717324.Spec : Prop :=
  ∀ n, P18099467636161717324.a n = (A282854 n : ℚ)

theorem P18099467636161717324.correct : P18099467636161717324.Spec := by
  intro n
  simp only [A282854, Nat.add_sub_cancel, A282854.P18099467636161717324.a, A282854.P10479849519924556517.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A282854

/-! ## A282854.P16708850861495463270

`ogf((x+31x^2)/(1-3x+3x^2-x^3))`
-/

namespace A282854.P16708850861495463270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 31] [1, -3, 3, -1] n

end

end A282854.P16708850861495463270

namespace A282854

/-- `ogf((x+31x^2)/(1-3x+3x^2-x^3))` -/
def P16708850861495463270.Spec : Prop :=
  ∀ n, P16708850861495463270.a n = A282854 n

end A282854

/-! ## A282854.P1941165178946033433

`32*C(n, 2)+n`
-/

namespace A282854.P1941165178946033433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * Nat.choose n 2 + n

end

end A282854.P1941165178946033433

namespace A282854

/-- `32*C(n, 2)+n` -/
def P1941165178946033433.Spec : Prop :=
  ∀ n, (P1941165178946033433.a n : ℤ) = A282854 n

theorem P1941165178946033433.correct : P1941165178946033433.Spec := by
  intro n
  simp only [A282854, Nat.add_sub_cancel, A282854.P1941165178946033433.a, A282854.P10479849519924556517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A282854

/-! ## A282854.P17831084797715275192

`∑[a(n-1)+32]` with `a(0)=0, a(1)=1`
-/

namespace A282854.P17831084797715275192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282854.P17831084797715275192

namespace A282854

/-- `∑[a(n-1)+32]` -/
def P17831084797715275192.Spec : Prop :=
  ∀ n, (P17831084797715275192.a n : ℤ) = A282854 n

end A282854

/-! ## A282854.P15915125660625903220

`16*n*(2*n)%(n+1)+n`
-/

namespace A282854.P15915125660625903220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n * (2 * n % (n + 1)) + n

end

end A282854.P15915125660625903220

namespace A282854

/-- `16*n*(2*n)%(n+1)+n` -/
def P15915125660625903220.Spec : Prop :=
  ∀ n, (P15915125660625903220.a n : ℤ) = A282854 n

end A282854

/-! ## A282854.P16478630151080801385

`2*A051870(n)-n`
-/

namespace A282854.P16478630151080801385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051870 n - (n : ℤ)

end

end A282854.P16478630151080801385

namespace A282854

/-- `2*A051870(n)-n` -/
def P16478630151080801385.Spec : Prop :=
  ∀ n, P16478630151080801385.a n = A282854 n

theorem P16478630151080801385.correct : P16478630151080801385.Spec := by
  intro n
  simp only [A282854, Nat.add_sub_cancel, A282854.P16478630151080801385.a, A282854.P10479849519924556517.a, A051870, A051870.P3674433124874018284.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282854

/-! ## A282854.P15120623396575653781

`A016802(n)-15*n`
-/

namespace A282854.P15120623396575653781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016802 n - (15 * n : ℤ)

end

end A282854.P15120623396575653781

namespace A282854

/-- `A016802(n)-15*n` -/
def P15120623396575653781.Spec : Prop :=
  ∀ n, P15120623396575653781.a n = A282854 n

theorem P15120623396575653781.correct : P15120623396575653781.Spec := by
  intro n
  simp only [A282854, Nat.add_sub_cancel, A282854.P15120623396575653781.a, A282854.P10479849519924556517.a, A016802, A016802.P8146297889048034948.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282854

/-! ## A282854.P15789737870907044495

`A282853(n)+n-n²`
-/

namespace A282854.P15789737870907044495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282853 n + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A282854.P15789737870907044495

namespace A282854

/-- `A282853(n)+n-n²` -/
def P15789737870907044495.Spec : Prop :=
  ∀ n, P15789737870907044495.a n = A282854 n

theorem P15789737870907044495.correct : P15789737870907044495.Spec := by
  intro n
  simp only [A282854, Nat.add_sub_cancel, A282854.P15789737870907044495.a, A282854.P10479849519924556517.a, A282853, A282853.P10274591526643661106.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282854

/-! ## A282854.P7265704023245149391

`∑[n]+A098923(n)-n`
-/

namespace A282854.P7265704023245149391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A098923 n - (n : ℤ))

end

end A282854.P7265704023245149391

namespace A282854

/-- `∑[n]+A098923(n)-n` -/
def P7265704023245149391.Spec : Prop :=
  ∀ n, P7265704023245149391.a n = A282854 n

end A282854

/-! ## A282854.P17788352525471372625

`A064200(n)+A001107(n)`
-/

namespace A282854.P17788352525471372625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n + A001107 n

end

end A282854.P17788352525471372625

namespace A282854

/-- `A064200(n)+A001107(n)` -/
def P17788352525471372625.Spec : Prop :=
  ∀ n, P17788352525471372625.a n = A282854 n

theorem P17788352525471372625.correct : P17788352525471372625.Spec := by
  intro n
  simp only [A282854, Nat.add_sub_cancel, A282854.P17788352525471372625.a, A282854.P10479849519924556517.a, A001107, A001107.P15766833630772781234.a, A064200, A064200.P18272209519029569283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282854

/-! ## A282854.P5512576761266859242

`A161680(n)+A098923(n)`
-/

namespace A282854.P5512576761266859242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A098923 n

end

end A282854.P5512576761266859242

namespace A282854

/-- `A161680(n)+A098923(n)` -/
def P5512576761266859242.Spec : Prop :=
  ∀ n, P5512576761266859242.a n = A282854 n

end A282854

/-! ## A282854.P1388457412106118999

`A263226(n)+A067998(n)`
-/

namespace A282854.P1388457412106118999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263226 n + A067998 n

end

end A282854.P1388457412106118999

namespace A282854

/-- `A263226(n)+A067998(n)` -/
def P1388457412106118999.Spec : Prop :=
  ∀ n, P1388457412106118999.a n = A282854 n

theorem P1388457412106118999.correct : P1388457412106118999.Spec := by
  intro n
  simp only [A282854, Nat.add_sub_cancel, A282854.P1388457412106118999.a, A282854.P10479849519924556517.a, A067998, A067998.P12062298001294777272.a, A263226, A263226.P10219769499938942172.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282854

/-! ## A282854.P3266374574898408495

`A028994(n)-A008591(n)`
-/

namespace A282854.P3266374574898408495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028994 n - A008591 n

end

end A282854.P3266374574898408495

namespace A282854

/-- `A028994(n)-A008591(n)` -/
def P3266374574898408495.Spec : Prop :=
  ∀ n, P3266374574898408495.a n = A282854 n

theorem P3266374574898408495.correct : P3266374574898408495.Spec := by
  intro n
  simp only [A282854, Nat.add_sub_cancel, A282854.P3266374574898408495.a, A282854.P10479849519924556517.a, A008591, A008591.P8937864482545511630.a, A028994, A028994.P2614720213617424781.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282854

/-! ## A282854.P14627569364453354608

`A104188(n)-A008593(n)`
-/

namespace A282854.P14627569364453354608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104188 n - A008593 n

end

end A282854.P14627569364453354608

namespace A282854

/-- `A104188(n)-A008593(n)` -/
def P14627569364453354608.Spec : Prop :=
  ∀ n, P14627569364453354608.a n = A282854 n

theorem P14627569364453354608.correct : P14627569364453354608.Spec := by
  intro n
  simp only [A282854, Nat.add_sub_cancel, A282854.P14627569364453354608.a, A282854.P10479849519924556517.a, A008593, A008593.P2680892499938115192.a, A104188, A104188.P226395597657789732.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282854

/-! ## A282854.P797394289393100157

`A153875(n)-A000096(n)`
-/

namespace A282854.P797394289393100157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153875 n - A000096 n

end

end A282854.P797394289393100157

namespace A282854

/-- `A153875(n)-A000096(n)` -/
def P797394289393100157.Spec : Prop :=
  ∀ n, P797394289393100157.a n = A282854 n

end A282854

/-! ## A282854.P13637750680304304994

`A152750(n)-A008589(n)`
-/

namespace A282854.P13637750680304304994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152750 n - A008589 n

end

end A282854.P13637750680304304994

namespace A282854

/-- `A152750(n)-A008589(n)` -/
def P13637750680304304994.Spec : Prop :=
  ∀ n, P13637750680304304994.a n = A282854 n

theorem P13637750680304304994.correct : P13637750680304304994.Spec := by
  intro n
  simp only [A282854, Nat.add_sub_cancel, A282854.P13637750680304304994.a, A282854.P10479849519924556517.a, A008589, A008589.P8963889148823201939.a, A152750, A152750.P9324821272604293728.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282854

/-! ## A282854.P6258871488069382057

`A153796(n)-A014106(n)`
-/

namespace A282854.P6258871488069382057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153796 n - A014106 n

end

end A282854.P6258871488069382057

namespace A282854

/-- `A153796(n)-A014106(n)` -/
def P6258871488069382057.Spec : Prop :=
  ∀ n, P6258871488069382057.a n = A282854 n

theorem P6258871488069382057.correct : P6258871488069382057.Spec := by
  intro n
  simp only [A282854, Nat.add_sub_cancel, A282854.P6258871488069382057.a, A282854.P10479849519924556517.a, A014106, A014106.P1375640882817375549.a, A153796, A153796.P2544292493987041900.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282854

/-! ## A282854.P9793975004177867117

`A016814(n)-A215148(n)`
-/

namespace A282854.P9793975004177867117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 n - A215148 n

end

end A282854.P9793975004177867117

namespace A282854

/-- `A016814(n)-A215148(n)` -/
def P9793975004177867117.Spec : Prop :=
  ∀ n, P9793975004177867117.a n = A282854 n

theorem P9793975004177867117.correct : P9793975004177867117.Spec := by
  intro n
  simp only [A282854, Nat.add_sub_cancel, A282854.P9793975004177867117.a, A282854.P10479849519924556517.a, A016814, A016814.P5668709183610020667.a, A215148, A215148.P1570187051508562333.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282854

/-! ## A282854.P7038190181594807056

`A143698(n)-A139276(n)`
-/

namespace A282854.P7038190181594807056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143698 n - A139276 n

end

end A282854.P7038190181594807056

namespace A282854

/-- `A143698(n)-A139276(n)` -/
def P7038190181594807056.Spec : Prop :=
  ∀ n, P7038190181594807056.a n = A282854 n

theorem P7038190181594807056.correct : P7038190181594807056.Spec := by
  intro n
  simp only [A282854, Nat.add_sub_cancel, A282854.P7038190181594807056.a, A282854.P10479849519924556517.a, A139276, A139276.P12504943694030977300.a, A143698, A143698.P346745898935711225.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282854

/-!
# A282855: Number of n X n 0..1 arrays with no 1 equal to more than one of its horizontal, vertical and antidiagonal neighbors.

The programs for A282855, there is no canonical definition to state claims against.
-/

/-! ## A282855.P7386407363233414272

`A282862(∑[4*n]+1)`
-/

namespace A282855.P7386407363233414272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282862 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A282855.P7386407363233414272

/-! ## A282855.P9657449322637992776

`record[gcd(A114327(n), A282862(n+1))]`
-/

namespace A282855.P9657449322637992776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A282862 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282855.P9657449322637992776

/-! ## A282855.P7629955488520386519

`lcm(A033999(n), A282862(A001844(n)))`
-/

namespace A282855.P7629955488520386519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A282862 (A001844 n).toNat)

end

end A282855.P7629955488520386519

/-! ## A282855.P3393651611118693226

`or(A000038(n), A282862(A001844(n)))`
-/

namespace A282855.P3393651611118693226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A282862 (A001844 n).toNat)

end

end A282855.P3393651611118693226

/-! ## A282855.P13806348113846117500

`record[A014963(n+3)]%2*A282862(A001844(n))`
-/

namespace A282855.P13806348113846117500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2 * A282862 (A001844 n).toNat

end

end A282855.P13806348113846117500

/-!
# A282856: Number of nX2 0..1 arrays with no 1 equal to more than one of its horizontal, vertical and antidiagonal neighbors.

The programs for A282856, the canonical program `A282856.P13064017926643609968` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282856 has offset 1).

The definition of A282856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282856.P17421354493342173227

`ogf((4+7x+4x^2+2x^3+x^4)/(1-x-4x^2-3x^3-x^4-x^5))`
-/

namespace A282856.P17421354493342173227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 7, 4, 2, 1] [1, -1, -4, -3, -1, -1] n

end

end A282856.P17421354493342173227

namespace A282856

/-- `ogf((4+7x+4x^2+2x^3+x^4)/(1-x-4x^2-3x^3-x^4-x^5))` -/
def P17421354493342173227.Spec : Prop :=
  ∀ n, P17421354493342173227.a n = A282856 (n + 1)

end A282856

/-! ## A282856.P13064017926643609968

`a(n-1)+4*a(n-2)+3*a(n-3)+a(n-4)+a(n-5)` with `a(0)=4, a(1)=11, a(2)=31, a(3)=89, a(4)=251`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282856

/-- `a(n-1)+4*a(n-2)+3*a(n-3)+a(n-4)+a(n-5)` -/
def P13064017926643609968.Spec : Prop :=
  ∀ n, (P13064017926643609968.a n : ℤ) = A282856 (n + 1)

theorem P13064017926643609968.correct : P13064017926643609968.Spec := by
  intro n
  simp only [A282856, Nat.add_sub_cancel]

end A282856

/-! ## A282856.P12407109819266885409

`A000570(2*(n+2))`
-/

namespace A282856.P12407109819266885409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000570 (2 * (n + 2))

end

end A282856.P12407109819266885409

namespace A282856

/-- `A000570(2*(n+2))` -/
def P12407109819266885409.Spec : Prop :=
  ∀ n, P12407109819266885409.a n = A282856 (n + 1)

end A282856

/-! ## A282856.P1475296010710552259

`record[A000570(A014681(n+3))]`
-/

namespace A282856.P1475296010710552259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000570 (A014681 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282856.P1475296010710552259

namespace A282856

/-- `record[A000570(A014681(n+3))]` -/
def P1475296010710552259.Spec : Prop :=
  ∀ n, P1475296010710552259.a n = A282856 (n + 1)

end A282856

/-! ## A282856.P10124773038778669313

`record[A000570(A000265(n+1)+3)]`
-/

namespace A282856.P10124773038778669313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000570 (A000265 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282856.P10124773038778669313

namespace A282856

/-- `record[A000570(A000265(n+1)+3)]` -/
def P10124773038778669313.Spec : Prop :=
  ∀ n, P10124773038778669313.a n = A282856 (n + 1)

end A282856

/-! ## A282856.P15018650585488423912

`record[A000570(n+4)/A000034(n)]`
-/

namespace A282856.P15018650585488423912
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000570 (n + 4) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282856.P15018650585488423912

namespace A282856

/-- `record[A000570(n+4)/A000034(n)]` -/
def P15018650585488423912.Spec : Prop :=
  ∀ n, P15018650585488423912.a n = (A282856 (n + 1) : ℚ)

end A282856

/-! ## A282856.P10836473098968334760

`record[A000570(n+4)/A028920(n)]`
-/

namespace A282856.P10836473098968334760
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000570 (n + 4) : ℚ) / (A028920 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282856.P10836473098968334760

namespace A282856

/-- `record[A000570(n+4)/A028920(n)]` -/
def P10836473098968334760.Spec : Prop :=
  ∀ n, P10836473098968334760.a n = (A282856 (n + 1) : ℚ)

end A282856

/-! ## A282856.P10499649762906858977

`record[A000570(n+4)/A033999(n)]`
-/

namespace A282856.P10499649762906858977
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000570 (n + 4) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282856.P10499649762906858977

namespace A282856

/-- `record[A000570(n+4)/A033999(n)]` -/
def P10499649762906858977.Spec : Prop :=
  ∀ n, P10499649762906858977.a n = (A282856 (n + 1) : ℚ)

end A282856

/-! ## A282856.P648656382139731558

`record[A000570(A088516(n+1))]`
-/

namespace A282856.P648656382139731558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000570 (A088516 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282856.P648656382139731558

namespace A282856

/-- `record[A000570(A088516(n+1))]` -/
def P648656382139731558.Spec : Prop :=
  ∀ n, P648656382139731558.a n = A282856 (n + 1)

end A282856

/-!
# A282857: Number of nX3 0..1 arrays with no 1 equal to more than one of its horizontal, vertical and antidiagonal neighbors.

The programs for A282857, there is no canonical definition to state claims against.
-/

/-! ## A282857.P17350334768998694188

`A282862(∑[n+2]+4)`
-/

namespace A282857.P17350334768998694188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282862 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A282857.P17350334768998694188

/-! ## A282857.P16259882129001352803

`or(C(n, n²), A282862(A167614(n+1)))`
-/

namespace A282857.P16259882129001352803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose n (n ^ 2) : ℤ) (A282862 (A167614 (n + 1)).toNat)

end

end A282857.P16259882129001352803

/-! ## A282857.P6375755515527747006

`A282862(A167614(n+1))%A016952(n)`
-/

namespace A282857.P6375755515527747006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282862 (A167614 (n + 1)).toNat) (A016952 n)

end

end A282857.P6375755515527747006

/-! ## A282857.P9306891078618314227

`lcm(A033999(n), A282862(A167614(n+1)))`
-/

namespace A282857.P9306891078618314227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A282862 (A167614 (n + 1)).toNat)

end

end A282857.P9306891078618314227

/-! ## A282857.P5905469596190320657

`or(A000038(n), A282862(A167614(n+1)))`
-/

namespace A282857.P5905469596190320657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A282862 (A167614 (n + 1)).toNat)

end

end A282857.P5905469596190320657

/-!
# A282858: Number of nX4 0..1 arrays with no 1 equal to more than one of its horizontal, vertical and antidiagonal neighbors.

The programs for A282858, there is no canonical definition to state claims against.
-/

/-! ## A282858.P16499814791938012220

`A282862(A374004(n+1))`
-/

namespace A282858.P16499814791938012220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282862 (A374004 (n + 1)).toNat

end

end A282858.P16499814791938012220

/-! ## A282858.P2875516179952336675

`A282862(A141214(n)+7)`
-/

namespace A282858.P2875516179952336675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282862 (A141214 n + 7).toNat

end

end A282858.P2875516179952336675

/-! ## A282858.P11566074930846489372

`A282862(A052905(n)+9)`
-/

namespace A282858.P11566074930846489372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282862 (A052905 n + 9).toNat

end

end A282858.P11566074930846489372

/-! ## A282858.P18291524625138805959

`A282862(A055999(n)+10)`
-/

namespace A282858.P18291524625138805959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282862 (A055999 n + 10).toNat

end

end A282858.P18291524625138805959

/-! ## A282858.P1447622481437750029

`A282862(A167614(n+2)+1)`
-/

namespace A282858.P1447622481437750029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282862 (A167614 (n + 2) + 1).toNat

end

end A282858.P1447622481437750029

/-!
# A282859: Number of nX5 0..1 arrays with no 1 equal to more than one of its horizontal, vertical and antidiagonal neighbors.

The programs for A282859, there is no canonical definition to state claims against.
-/

/-! ## A282859.P16795328712714000298

`A282862(A374005(n+1))`
-/

namespace A282859.P16795328712714000298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282862 (A374005 (n + 1)).toNat

end

end A282859.P16795328712714000298

/-! ## A282859.P12450261294949398229

`A282862(eq[6, A131818(n+1)])`
-/

namespace A282859.P12450261294949398229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282862 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282859.P12450261294949398229

/-! ## A282859.P7134041701005031667

`A282862(Δ[A264443(n)])`
-/

namespace A282859.P7134041701005031667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282862 (f1 (n + 1) - f1 n).toNat

end

end A282859.P7134041701005031667

/-! ## A282859.P18153633570817780102

`A282862(A056115(n)+11)`
-/

namespace A282859.P18153633570817780102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282862 (A056115 n + 11).toNat

end

end A282859.P18153633570817780102

/-! ## A282859.P1201712019235062179

`A282862(eq[4, A193592(n)])`
-/

namespace A282859.P1201712019235062179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282862 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282859.P1201712019235062179

/-!
# A282860: Number of n X 6 0..1 arrays with no 1 equal to more than one of its horizontal, vertical and antidiagonal neighbors.

The programs for A282860, there is no canonical definition to state claims against.
-/

/-! ## A282860.P8606991675609594875

`A282862(A374007(n+1))`
-/

namespace A282860.P8606991675609594875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282862 (A374007 (n + 1)).toNat

end

end A282860.P8606991675609594875

/-! ## A282860.P18367286755729700348

`A282862(eq[7, A131818(n+1)])`
-/

namespace A282860.P18367286755729700348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282862 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282860.P18367286755729700348

/-! ## A282860.P8933801902472580105

`A282862(A052905(n+3))`
-/

namespace A282860.P8933801902472580105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282862 (A052905 (n + 3)).toNat

end

end A282860.P8933801902472580105

/-! ## A282860.P16981540028946754959

`A282862(eq[3, A219347(n)])`
-/

namespace A282860.P16981540028946754959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282862 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282860.P16981540028946754959

/-! ## A282860.P5339622833604460245

`A282862(eq[5, A193592(n)])`
-/

namespace A282860.P5339622833604460245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282862 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282860.P5339622833604460245

/-!
# A282861: Number of nX7 0..1 arrays with no 1 equal to more than one of its horizontal, vertical and antidiagonal neighbors.

The programs for A282861, there is no canonical definition to state claims against.
-/

/-! ## A282861.P6605610912727544571

`A282862(A374008(n+1))`
-/

namespace A282861.P6605610912727544571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282862 (A374008 (n + 1)).toNat

end

end A282861.P6605610912727544571

/-! ## A282861.P448676050045747854

`A282862(A167499(n+5)+2)`
-/

namespace A282861.P448676050045747854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282862 (A167499 (n + 5) + 2).toNat

end

end A282861.P448676050045747854

/-! ## A282861.P9987154306497161556

`A282862(eq[8, A131818(n+1)])`
-/

namespace A282861.P9987154306497161556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282862 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282861.P9987154306497161556

/-! ## A282861.P12703424413486850659

`A282862(A055999(n+4))`
-/

namespace A282861.P12703424413486850659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282862 (A055999 (n + 4)).toNat

end

end A282861.P12703424413486850659

/-! ## A282861.P553934139526880987

`A282862(eq[4, A219347(n)])`
-/

namespace A282861.P553934139526880987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282862 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282861.P553934139526880987

/-!
# A282862: T(n,k)=Number of nXk 0..1 arrays with no 1 equal to more than one of its horizontal, vertical and antidiagonal neighbors.

The programs for A282862, there is no canonical definition to state claims against.
-/

/-! ## A282862.P8121338153429224858

`A296578(n+1)+A178798(A091042(n))`
-/

namespace A282862.P8121338153429224858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (n + 1) + A178798 (A091042 n).toNat

end

end A282862.P8121338153429224858

/-! ## A282862.P4039445484298788209

`A296578(n+1)+A178798(A122928(n))`
-/

namespace A282862.P4039445484298788209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (n + 1) + A178798 (A122928 n).toNat

end

end A282862.P4039445484298788209

/-! ## A282862.P6853663336708365761

`A296578(n+1)-A055641(A095577(n))`
-/

namespace A282862.P6853663336708365761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (n + 1) - A055641 (A095577 n).toNat

end

end A282862.P6853663336708365761

/-! ## A282862.P7182822006515316865

`A296578(n+1)-A016389(A296548(n))`
-/

namespace A282862.P7182822006515316865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (n + 1) - A016389 (A296548 n).toNat

end

end A282862.P7182822006515316865

/-! ## A282862.P14621680953616866362

`A296578(n+1)-A321936(A023204(n+1))`
-/

namespace A282862.P14621680953616866362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296578 (n + 1) - A321936 (A023204 (n + 1)).toNat

end

end A282862.P14621680953616866362

/-!
# A282863: Number of ways to write n as x^2 + y^2 + z^2 + w^2 with x,y,z,w nonnegative integers such that 72*x^3 + (y-z)^3 is an even square.

The programs for A282863, there is no canonical definition to state claims against.
-/

/-! ## A282863.P14629702192066397567

`A001221(A185628(2*n)+A008440(n+1))`
-/

namespace A282863.P14629702192066397567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A185628 (2 * n) + A008440 (n + 1)).toNat

end

end A282863.P14629702192066397567

/-! ## A282863.P12582989942854235722

`A001221(A062200(n)+2^n)`
-/

namespace A282863.P12582989942854235722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A062200 n + (2 ^ n : ℤ)).toNat

end

end A282863.P12582989942854235722

/-! ## A282863.P14176474799469522377

`A001221(Δ[A027947(n+1)]+2^n)`
-/

namespace A282863.P14176474799469522377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n + (2 ^ n : ℤ)).toNat

end

end A282863.P14176474799469522377

/-! ## A282863.P15833578465230211826

`A001221(A017817(2*(n+2))+2^n)`
-/

namespace A282863.P15833578465230211826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A017817 (2 * (n + 2)) + (2 ^ n : ℤ)).toNat

end

end A282863.P15833578465230211826

/-! ## A282863.P14761474369566295328

`A001221(A127838(2*n+9)+2^n)`
-/

namespace A282863.P14761474369566295328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A127838 (2 * n + 9) + (2 ^ n : ℤ)).toNat

end

end A282863.P14761474369566295328

/-!
# A282865: Lexicographic first permutation of the nonnegative integers such that the partial sums of (-1)^isprime(a(n))*a(n) always remain nonnegative.

The programs for A282865, there is no canonical definition to state claims against.
-/

/-! ## A282865.P5252513894014315091

`Δ[A284394(A284402(n))]+n`
-/

namespace A282865.P5252513894014315091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284394 (A284402 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A282865.P5252513894014315091

/-!
# A282866: Expansion of Product_{k>=1} (1 + k^2*x^(k^2)).

The programs for A282866, there is no canonical definition to state claims against.
-/

/-! ## A282866.P5237244149952553970

`A118759(A285244(n)²)`
-/

namespace A282866.P5237244149952553970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A285244 n ^ 2).toNat

end

end A282866.P5237244149952553970

/-! ## A282866.P16617812412804693681

`A000196(A285244(n)²²)`
-/

namespace A282866.P16617812412804693681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((A285244 n ^ 2) ^ 2).toNat

end

end A282866.P16617812412804693681

/-! ## A282866.P3642907398782118803

`A037213(A285244(n)²²)`
-/

namespace A282866.P3642907398782118803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 ((A285244 n ^ 2) ^ 2).toNat

end

end A282866.P3642907398782118803

/-!
# A282867: Primes of the form x^2 + y^2 with x > y such that x^2 - y^2 is a square and x^4 + y^4 is a prime.

The programs for A282867, there is no canonical definition to state claims against.
-/

/-! ## A282867.P2219245256239704940

`A002646(A262955((2*n)^n))`
-/

namespace A282867.P2219245256239704940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002646 (A262955 ((2 * n) ^ n)).toNat

end

end A282867.P2219245256239704940

/-!
# A282868: For all n's, the set including the terms {a(1), a(2), a(3), ..., a(n)} has a prime number of digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9.

The programs for A282868, there is no canonical definition to state claims against.
-/

/-! ## A282868.P7545991653395369982

`A008619(n)*A010194(A138364(n))`
-/

namespace A282868.P7545991653395369982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A010194 (A138364 n).toNat

end

end A282868.P7545991653395369982

/-! ## A282868.P362171585254868858

`A086068(A072946(n+2))-1`
-/

namespace A282868.P362171585254868858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (A072946 (n + 2)).toNat - 1

end

end A282868.P362171585254868858

/-! ## A282868.P5056417762581186943

`A073731(A143795(n+2))-1`
-/

namespace A282868.P5056417762581186943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073731 ((A143795 (n + 2)).toNat + 10) - 1

end

end A282868.P5056417762581186943

/-! ## A282868.P14245970039043275444

`A086068(A162255(n+3))-1`
-/

namespace A282868.P14245970039043275444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (A162255 (n + 3)).toNat - 1

end

end A282868.P14245970039043275444

/-! ## A282868.P14321899694427668973

`A086068(Δ[A164053(n+2)])-1`
-/

namespace A282868.P14321899694427668973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164053 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (f1 (n + 1) - f1 n).toNat - 1

end

end A282868.P14321899694427668973

/-!
# A282869: Triangle read by rows: T(n,k) is the number of dispersed Dyck prefixes (i.e., left factors of Motzkin paths with no (1,0) steps at positive heights) of length n and height k.

The programs for A282869, there is no canonical definition to state claims against.
-/

/-! ## A282869.P16674991327279004595

`xor(A048004(n), A342263(A273712(n)))`
-/

namespace A282869.P16674991327279004595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048004 n) (A342263 (A273712 n).toNat)

end

end A282869.P16674991327279004595

/-!
# A282870: a(n) = floor( Li(n) - pi(n) ).

The programs for A282870, there is no canonical definition to state claims against.
-/

/-! ## A282870.P18220367334230120511

`A047783(n+2)-A000720(n+2)`
-/

namespace A282870.P18220367334230120511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047783 (n + 2) - A000720 (n + 2)

end

end A282870.P18220367334230120511

/-! ## A282870.P16323829777261914207

`A047783(n+2)+A053622(n+2)-A050499(n+2)`
-/

namespace A282870.P16323829777261914207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047783 (n + 2) + (A053622 (n + 2) - A050499 (n + 2))

end

end A282870.P16323829777261914207

/-! ## A282870.P2226334741910401369

`A047783(n+2)-A230980(n+2)`
-/

namespace A282870.P2226334741910401369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047783 (n + 2) - A230980 (n + 2)

end

end A282870.P2226334741910401369

/-! ## A282870.P588960959917876429

`A047785(n+2)-1-A230980(n+2)`
-/

namespace A282870.P588960959917876429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047785 (n + 2) - 1 - A230980 (n + 2)

end

end A282870.P588960959917876429

/-! ## A282870.P865853638434567476

`A023443(A047785(n+2))-A230980(n+2)`
-/

namespace A282870.P865853638434567476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A047785 (n + 2)).toNat - A230980 (n + 2)

end

end A282870.P865853638434567476

/-! ## A282870.P9982782033012378805

`A000027(A057428(n+1)+A047785(n+2))%A230980(n+2)`
-/

namespace A282870.P9982782033012378805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A057428 (n + 1) + A047785 (n + 2)).toNat) (A230980 (n + 2))

end

end A282870.P9982782033012378805

/-!
# A282871: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 617", based on the 5-celled von Neumann neighborhood.

The programs for A282871, the canonical program `A282871.P10120402452853039043` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282871 has offset 0).

The definition of A282871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282871.P10120402452853039043

`ogf((1-x-89x^2+90x^3+9x^4+100x^6)/(1-x-100x^2+100x^3))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282871

/-- `ogf((1-x-89x^2+90x^3+9x^4+100x^6)/(1-x-100x^2+100x^3))` -/
def P10120402452853039043.Spec : Prop :=
  ∀ n, P10120402452853039043.a n = A282871 n

theorem P10120402452853039043.correct : P10120402452853039043.Spec := by
  intro n
  simp only [A282871]

end A282871

/-! ## A282871.P13945676942080888100

`∑[A011557(n)]%A280606(A028310(n))`
-/

namespace A282871.P13945676942080888100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A280606 (A028310 n).toNat)

end

end A282871.P13945676942080888100

namespace A282871

/-- `∑[A011557(n)]%A280606(A028310(n))` -/
def P13945676942080888100.Spec : Prop :=
  ∀ n, P13945676942080888100.a n = A282871 n

end A282871

/-! ## A282871.P17151282531916304743

`A000042(n+1)%A280606(A028310(n))`
-/

namespace A282871.P17151282531916304743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000042 (n + 1)) (A280606 (A028310 n).toNat)

end

end A282871.P17151282531916304743

namespace A282871

/-- `A000042(n+1)%A280606(A028310(n))` -/
def P17151282531916304743.Spec : Prop :=
  ∀ n, P17151282531916304743.a n = A282871 n

end A282871

/-! ## A282871.P9950287338565433740

`A002275(n+1)%A280606(A028310(n))`
-/

namespace A282871.P9950287338565433740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002275 (n + 1)) (A280606 (A028310 n).toNat)

end

end A282871.P9950287338565433740

namespace A282871

/-- `A002275(n+1)%A280606(A028310(n))` -/
def P9950287338565433740.Spec : Prop :=
  ∀ n, P9950287338565433740.a n = A282871 n

end A282871

/-! ## A282871.P14432497499165156601

`A280607(n)+A283348(n)-A280606(n)`
-/

namespace A282871.P14432497499165156601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280607 n + (A283348 n - A280606 n)

end

end A282871.P14432497499165156601

namespace A282871

/-- `A280607(n)+A283348(n)-A280606(n)` -/
def P14432497499165156601.Spec : Prop :=
  ∀ n, P14432497499165156601.a n = A282871 n

end A282871

/-!
# A282872: Numbers in A003325 whose 4th power is the sum of two positive cubes in a nontrivial way.

The programs for A282872, there is no canonical definition to state claims against.
-/

/-! ## A282872.P12430222643512978875

`∩[A003325(n+1), A051387(n+1)]`
-/

namespace A282872.P12430222643512978875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282872.P12430222643512978875

/-! ## A282872.P12266937493433998854

`∩[A051387(n+1), A338667(n+1)]`
-/

namespace A282872.P12266937493433998854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282872.P12266937493433998854

/-! ## A282872.P12227877426997297113

`∩[A024670(n+1), A051387(n+1)]`
-/

namespace A282872.P12227877426997297113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282872.P12227877426997297113

/-! ## A282872.P12278672076033684866

`∩[A004999(n+1), A051387(n+1)]`
-/

namespace A282872.P12278672076033684866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282872.P12278672076033684866

/-!
# A282874: The smallest square referenced in A280203 (Numbers n such that 3^n - 2^n is not squarefree not divisible by any smaller number of the same form).

The programs for A282874, there is no canonical definition to state claims against.
-/

/-! ## A282874.P16022618615152264911

`A282875(n+1)²`
-/

namespace A282874.P16022618615152264911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282875 (n + 1) ^ 2

end

end A282874.P16022618615152264911

/-! ## A282874.P4954934265073446035

`A282875(A005555(n))^2`
-/

namespace A282874.P4954934265073446035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282875 (A005555 n).toNat ^ 2

end

end A282874.P4954934265073446035

/-! ## A282874.P5626028376452030427

`A282875(n+1)*A282875(A005555(n))`
-/

namespace A282874.P5626028376452030427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282875 (n + 1) * A282875 (A005555 n).toNat

end

end A282874.P5626028376452030427

/-!
# A282878: Number of n X n 0..1 arrays with no 1 equal to more than one of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element.

The programs for A282878, there is no canonical definition to state claims against.
-/

/-! ## A282878.P6239860243505290999

`A282885(∑[4*n]+1)`
-/

namespace A282878.P6239860243505290999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282885 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A282878.P6239860243505290999

/-! ## A282878.P8513324842289721539

`record[A003982(n)*A282885(n+1)]`
-/

namespace A282878.P8513324842289721539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A282885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282878.P8513324842289721539

/-! ## A282878.P15766073322792686544

`A283001(n)+A282885(A001844(n))`
-/

namespace A282878.P15766073322792686544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 n + A282885 (A001844 n).toNat

end

end A282878.P15766073322792686544

/-! ## A282878.P16659665692623032116

`A282885(A001844(n))%A304397(n)`
-/

namespace A282878.P16659665692623032116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282885 (A001844 n).toNat) (A304397 n)

end

end A282878.P16659665692623032116

/-! ## A282878.P2802641453381079557

`lcm(A033999(n), A282885(A001844(n)))`
-/

namespace A282878.P2802641453381079557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A282885 (A001844 n).toNat)

end

end A282878.P2802641453381079557

/-!
# A282879: Number of n X 2 0..1 arrays with no 1 equal to more than one of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element.

The programs for A282879, the canonical program `A282879.P13884438075947407607` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282879 has offset 1).

The definition of A282879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282879.P13884438075947407607

`ogf((2x+4x^2+2x^3+6x^4+4x^5)/(1-2x-7x^2+2x^3+20x^4+24x^5+19x^6+14x^7+7x^8+2x^9+x^10))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282879

/-- `ogf((2x+4x^2+2x^3+6x^4+4x^5)/(1-2x-7x^2+2x^3+20x^4+24x^5+19x^6+14x^7+7x^8+2x^9+x^10))` -/
def P13884438075947407607.Spec : Prop :=
  ∀ n, P13884438075947407607.a n = A282879 (n + 1)

theorem P13884438075947407607.correct : P13884438075947407607.Spec := by
  intro n
  simp only [A282879, Nat.add_sub_cancel]

end A282879

/-! ## A282879.P7582750754246406422

`A282885(∑[n+1]+2)`
-/

namespace A282879.P7582750754246406422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282885 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A282879.P7582750754246406422

namespace A282879

/-- `A282885(∑[n+1]+2)` -/
def P7582750754246406422.Spec : Prop :=
  ∀ n, P7582750754246406422.a n = A282879 (n + 1)

end A282879

/-! ## A282879.P4772429242882524818

`lcm(2, A282885(A133263(n+1)))`
-/

namespace A282879.P4772429242882524818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A282885 (A133263 (n + 1)).toNat)

end

end A282879.P4772429242882524818

namespace A282879

/-- `lcm(2, A282885(A133263(n+1)))` -/
def P4772429242882524818.Spec : Prop :=
  ∀ n, (P4772429242882524818.a n : ℤ) = A282879 (n + 1)

end A282879

/-! ## A282879.P17901973278645858507

`A282885(C(n+2, 2)+2)%A158761(n)`
-/

namespace A282879.P17901973278645858507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282885 (Nat.choose (n + 2) 2 + 2)) (A158761 n)

end

end A282879.P17901973278645858507

namespace A282879

/-- `A282885(C(n+2, 2)+2)%A158761(n)` -/
def P17901973278645858507.Spec : Prop :=
  ∀ n, P17901973278645858507.a n = A282879 (n + 1)

end A282879

/-! ## A282879.P13271803045623512568

`record[A282885(A114092(2*n+1))]`
-/

namespace A282879.P13271803045623512568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282885 (A114092 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282879.P13271803045623512568

namespace A282879

/-- `record[A282885(A114092(2*n+1))]` -/
def P13271803045623512568.Spec : Prop :=
  ∀ n, P13271803045623512568.a n = A282879 (n + 1)

end A282879

/-!
# A282880: Number of nX3 0..1 arrays with no 1 equal to more than one of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element.

The programs for A282880, there is no canonical definition to state claims against.
-/

/-! ## A282880.P944964937979151863

`A282885(∑[n+2]+4)`
-/

namespace A282880.P944964937979151863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282885 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A282880.P944964937979151863

/-! ## A282880.P5309834737657268468

`A282885(A167614(n+1))%A157085(n)`
-/

namespace A282880.P5309834737657268468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282885 (A167614 (n + 1)).toNat) (A157085 n)

end

end A282880.P5309834737657268468

/-! ## A282880.P4188755241466554276

`gcd(A000038(n), A282885(A167614(n+1)))`
-/

namespace A282880.P4188755241466554276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A282885 (A167614 (n + 1)).toNat)

end

end A282880.P4188755241466554276

/-! ## A282880.P15542727360540439157

`lcm(A000034(n), A282885(A167614(n+1)))`
-/

namespace A282880.P15542727360540439157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A282885 (A167614 (n + 1)).toNat)

end

end A282880.P15542727360540439157

/-! ## A282880.P4693294017166472627

`or(A000007(n), A282885(A167614(n+1)))`
-/

namespace A282880.P4693294017166472627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A282885 (A167614 (n + 1)).toNat)

end

end A282880.P4693294017166472627

/-!
# A282881: Number of nX4 0..1 arrays with no 1 equal to more than one of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element.

The programs for A282881, there is no canonical definition to state claims against.
-/

/-! ## A282881.P5742011132609783509

`A282885(A374004(n+1))`
-/

namespace A282881.P5742011132609783509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282885 (A374004 (n + 1)).toNat

end

end A282881.P5742011132609783509

/-! ## A282881.P12885397814672691902

`A282885(A141214(n)+7)`
-/

namespace A282881.P12885397814672691902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282885 (A141214 n + 7).toNat

end

end A282881.P12885397814672691902

/-! ## A282881.P9950551751841692191

`A282885(A167614(n+2)+1)`
-/

namespace A282881.P9950551751841692191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282885 (A167614 (n + 2) + 1).toNat

end

end A282881.P9950551751841692191

/-! ## A282881.P10189959060218157759

`A282885(Δ[A023545(n+1)-n²])`
-/

namespace A282881.P10189959060218157759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282885 (f1 (n + 1) - f1 n).toNat

end

end A282881.P10189959060218157759

/-! ## A282881.P16697841443684222512

`A282885(A141214(n+1))`
-/

namespace A282881.P16697841443684222512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282885 (A141214 (n + 1)).toNat

end

end A282881.P16697841443684222512

/-!
# A282882: Number of nX5 0..1 arrays with no 1 equal to more than one of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element.

The programs for A282882, there is no canonical definition to state claims against.
-/

/-! ## A282882.P10212092956409277737

`A282885(A374005(n+1))`
-/

namespace A282882.P10212092956409277737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282885 (A374005 (n + 1)).toNat

end

end A282882.P10212092956409277737

/-! ## A282882.P10700023659822379291

`A282885(A167499(n+3))`
-/

namespace A282882.P10700023659822379291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282885 (A167499 (n + 3)).toNat

end

end A282882.P10700023659822379291

/-! ## A282882.P3932746575066389871

`A282885(A155212(n)+13)`
-/

namespace A282882.P3932746575066389871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282885 (A155212 n + 13).toNat

end

end A282882.P3932746575066389871

/-! ## A282882.P16207107867447986957

`A282885(A056000(n)+15)`
-/

namespace A282882.P16207107867447986957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282885 (A056000 n + 15).toNat

end

end A282882.P16207107867447986957

/-! ## A282882.P11494331405022467188

`A282885(A046691(n+3))`
-/

namespace A282882.P11494331405022467188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282885 (A046691 (n + 3)).toNat

end

end A282882.P11494331405022467188

/-!
# A282883: Number of nX6 0..1 arrays with no 1 equal to more than one of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element.

The programs for A282883, there is no canonical definition to state claims against.
-/

/-! ## A282883.P2843325547882081303

`A282885(A374007(n+1))`
-/

namespace A282883.P2843325547882081303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282885 (A374007 (n + 1)).toNat

end

end A282883.P2843325547882081303

/-! ## A282883.P13476871990692791099

`A282885(A000124(n+5)+5)`
-/

namespace A282883.P13476871990692791099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282885 (A000124 (n + 5) + 5).toNat

end

end A282883.P13476871990692791099

/-! ## A282883.P10872559729372443468

`A282885(eq[7, A131818(n+1)])`
-/

namespace A282883.P10872559729372443468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282885 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282883.P10872559729372443468

/-! ## A282883.P16853397073240321467

`A282885(Δ[A023545(n+1)]+10)`
-/

namespace A282883.P16853397073240321467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282885 (f1 (n + 1) - f1 n + 10).toNat

end

end A282883.P16853397073240321467

/-! ## A282883.P14348777445253402238

`A282885(eq[3, A219347(n)])`
-/

namespace A282883.P14348777445253402238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282885 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282883.P14348777445253402238

/-!
# A282884: Number of nX7 0..1 arrays with no 1 equal to more than one of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element.

The programs for A282884, there is no canonical definition to state claims against.
-/

/-! ## A282884.P12088040776605889722

`A282885(A374008(n+1))`
-/

namespace A282884.P12088040776605889722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282885 (A374008 (n + 1)).toNat

end

end A282884.P12088040776605889722

/-! ## A282884.P1959255914828890840

`A282885(eq[8, A131818(n+1)])`
-/

namespace A282884.P1959255914828890840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282885 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282884.P1959255914828890840

/-! ## A282884.P2199981319946311527

`A282885(A055999(n+4))`
-/

namespace A282884.P2199981319946311527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282885 (A055999 (n + 4)).toNat

end

end A282884.P2199981319946311527

/-! ## A282884.P14086956446617885667

`A282885(eq[4, A219347(n)])`
-/

namespace A282884.P14086956446617885667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282885 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282884.P14086956446617885667

/-! ## A282884.P2417003739273262641

`A282885(eq[6, A193592(n)])`
-/

namespace A282884.P2417003739273262641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282885 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282884.P2417003739273262641

/-!
# A282885: T(n,k)=Number of nXk 0..1 arrays with no 1 equal to more than one of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element.

The programs for A282885, there is no canonical definition to state claims against.
-/

/-! ## A282885.P2961463878644361385

`A320278(A233113(n+1))`
-/

namespace A282885.P2961463878644361385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 (A233113 (n + 1)).toNat

end

end A282885.P2961463878644361385

/-! ## A282885.P4098785168967199864

`A367066(A198285(n+1))`
-/

namespace A282885.P4098785168967199864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367066 (A198285 (n + 1)).toNat

end

end A282885.P4098785168967199864

/-! ## A282885.P1885339239618121056

`A337679(or(1, A231544(n+1)))`
-/

namespace A282885.P1885339239618121056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337679 (Int.lor 1 (A231544 (n + 1))).toNat

end

end A282885.P1885339239618121056

/-! ## A282885.P3985911258123121328

`A344845(A102310(n+1))-A318559(A055372(n))`
-/

namespace A282885.P3985911258123121328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344845 (A102310 (n + 1)).toNat - A318559 (A055372 n).toNat

end

end A282885.P3985911258123121328

/-!
# A282889: Number of directed Hamiltonian cycles on the n X n black bishop graph.

The programs for A282889, there is no canonical definition to state claims against.
-/

/-! ## A282889.P17551557745871825265

`2*A307920(n+3)`
-/

namespace A282889.P17551557745871825265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307920 (n + 3)

end

end A282889.P17551557745871825265

/-!
# A282890: Number of directed Hamiltonian cycles on the n X n white bishop graph.

The programs for A282890, there is no canonical definition to state claims against.
-/

/-! ## A282890.P8879947803449524592

`2*A307929(n+3)`
-/

namespace A282890.P8879947803449524592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307929 (n + 3)

end

end A282890.P8879947803449524592

/-!
# A282891: Remainder when sum of first n terms of A004001 is divided by n.

The programs for A282891, the canonical program `A282891.P14281106400011043794` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282891 has offset 1).

The definition of A282891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282891.P5390150104780818854

`A283501(n+1)%(n+1)`
-/

namespace A282891.P5390150104780818854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283501 (n + 1)) (n + 1 : ℤ)

end

end A282891.P5390150104780818854

namespace A282891

/-- `A283501(n+1)%(n+1)` -/
def P5390150104780818854.Spec : Prop :=
  ∀ n, P5390150104780818854.a n = A282891 (n + 1)

end A282891

/-! ## A282891.P10075921217073289804

`A283525(n+1)%(n+1)`
-/

namespace A282891.P10075921217073289804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283525 (n + 1)) (n + 1 : ℤ)

end

end A282891.P10075921217073289804

namespace A282891

/-- `A283525(n+1)%(n+1)` -/
def P10075921217073289804.Spec : Prop :=
  ∀ n, P10075921217073289804.a n = A282891 (n + 1)

end A282891

/-! ## A282891.P14281106400011043794

`∑[A004001(n+1)]%(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A282891

/-- `∑[A004001(n+1)]%(n+1)` -/
def P14281106400011043794.Spec : Prop :=
  ∀ n, P14281106400011043794.a n = A282891 (n + 1)

theorem P14281106400011043794.correct : P14281106400011043794.Spec := by
  intro n
  simp only [A282891, Nat.add_sub_cancel]

end A282891

/-! ## A282891.P7030653419685585900

`∑[n+1-A080677(n+1)]%(n+1)`
-/

namespace A282891.P7030653419685585900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A080677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A282891.P7030653419685585900

namespace A282891

/-- `∑[n+1-A080677(n+1)]%(n+1)` -/
def P7030653419685585900.Spec : Prop :=
  ∀ n, P7030653419685585900.a n = A282891 (n + 1)

end A282891

/-! ## A282891.P1171688115440841792

`∑[A284019(n+1)+A005185(n+1)]%(n+1)`
-/

namespace A282891.P1171688115440841792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284019 (n + 1) + A005185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A282891.P1171688115440841792

namespace A282891

/-- `∑[A284019(n+1)+A005185(n+1)]%(n+1)` -/
def P1171688115440841792.Spec : Prop :=
  ∀ n, P1171688115440841792.a n = A282891 (n + 1)

theorem P1171688115440841792.correct : P1171688115440841792.Spec := by
  intro n
  simp only [A282891, Nat.add_sub_cancel, A282891.P1171688115440841792.f1, A282891.P1171688115440841792.a, A282891.P14281106400011043794.f1, A282891.P14281106400011043794.a, A004001, A004001.P15027099775036681873.a, A005185, A005185.P15523785795587217945.a, A284019, A284019.P8425388726725023330.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282891

/-!
# A282892: The difference between the number of partitions of n into odd parts (A000009) and the number of partitions of n into even parts (A035363).

The programs for A282892, there is no canonical definition to state claims against.
-/

/-! ## A282892.P14702056406247812263

`A000009(n)-A035363(n)`
-/

namespace A282892.P14702056406247812263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A035363 n

end

end A282892.P14702056406247812263

/-! ## A282892.P12196386161384980936

`abs(A035363(n)-A081360(n))`
-/

namespace A282892.P12196386161384980936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A035363 n - A081360 n|

end

end A282892.P12196386161384980936

/-! ## A282892.P3099778028505832228

`A003114(n)+A238708(n)-A035363(n)`
-/

namespace A282892.P3099778028505832228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 n + (A238708 n - A035363 n)

end

end A282892.P3099778028505832228

/-! ## A282892.P12431351407347334045

`A096765(n+1)+A096765(n)-A035363(n)`
-/

namespace A282892.P12431351407347334045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 1) + A096765 n - A035363 n

end

end A282892.P12431351407347334045

/-! ## A282892.P10831257325375773670

`A086543(n)-A047967(n)`
-/

namespace A282892.P10831257325375773670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086543 n - A047967 n

end

end A282892.P10831257325375773670

/-! ## A282892.P8721058055634489908

`A000041(n)-(A047967(n)+A035363(n))`
-/

namespace A282892.P8721058055634489908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A047967 n + A035363 n)

end

end A282892.P8721058055634489908

/-! ## A282892.P2378890919742116471

`A000009(n)+A086543(n)-A000041(n)`
-/

namespace A282892.P2378890919742116471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A086543 n - A000041 n)

end

end A282892.P2378890919742116471

/-! ## A282892.P16661758992347852144

`∑[A002865(n)]-(A047967(n)+A035363(n))`
-/

namespace A282892.P16661758992347852144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A047967 n + A035363 n)

end

end A282892.P16661758992347852144

/-! ## A282892.P13710934878724697503

`A000009(n)-A035444(2*n)`
-/

namespace A282892.P13710934878724697503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A035444 (2 * n)

end

end A282892.P13710934878724697503

/-! ## A282892.P9857780817013430985

`A035457(2*n)-A035363(n)`
-/

namespace A282892.P9857780817013430985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - A035363 n

end

end A282892.P9857780817013430985

/-! ## A282892.P16811923120842195932

`A172033(2*n)-A035363(n)`
-/

namespace A282892.P16811923120842195932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (2 * n) - A035363 n

end

end A282892.P16811923120842195932

/-! ## A282892.P6258177288235287309

`A035457(2*n)-A035444(2*n)`
-/

namespace A282892.P6258177288235287309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - A035444 (2 * n)

end

end A282892.P6258177288235287309

/-! ## A282892.P3465977845181805402

`A172033(2*n)-A035444(2*n)`
-/

namespace A282892.P3465977845181805402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (2 * n) - A035444 (2 * n)

end

end A282892.P3465977845181805402

/-! ## A282892.P819839986387703500

`A035444(4*n)-A047967(n)-A035363(n)`
-/

namespace A282892.P819839986387703500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (4 * n) - A047967 n - A035363 n

end

end A282892.P819839986387703500

/-! ## A282892.P11588777767567698816

`A067659(n)+A067661(n)-A035363(n)`
-/

namespace A282892.P11588777767567698816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n + (A067661 n - A035363 n)

end

end A282892.P11588777767567698816

/-!
# A282893: The difference between the number of partitions of 2n into odd parts (A000009) and the number of partitions of 2n into even parts (A035363).

The programs for A282893, there is no canonical definition to state claims against.
-/

/-! ## A282893.P1433707598728517507

`A035294(n)-A000041(n)`
-/

namespace A282893.P1433707598728517507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035294 n - A000041 n

end

end A282893.P1433707598728517507

/-! ## A282893.P2370198375951455707

`A282892(2*n)`
-/

namespace A282893.P2370198375951455707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282892 (2 * n)

end

end A282893.P2370198375951455707

/-! ## A282893.P803302150801417329

`A035294(n)-(A027193(n)+A027187(n))`
-/

namespace A282893.P803302150801417329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035294 n - (A027193 n + A027187 n)

end

end A282893.P803302150801417329

/-! ## A282893.P17101705538752173385

`A000009(2*n)-A000041(n)`
-/

namespace A282893.P17101705538752173385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * n) - A000041 n

end

end A282893.P17101705538752173385

/-! ## A282893.P10189989319298010593

`A000009(2*n)-∑[A002865(n)]`
-/

namespace A282893.P10189989319298010593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282893.P10189989319298010593

/-! ## A282893.P6731813631545304632

`A000009(2*n)-A139582(n)/2`
-/

namespace A282893.P6731813631545304632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 (2 * n) : ℚ) - (A139582 n : ℚ) / 2

end

end A282893.P6731813631545304632

/-! ## A282893.P14370983520285287141

`A000009(2*n)-(A047967(n)+A000009(n))`
-/

namespace A282893.P14370983520285287141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * n) - (A047967 n + A000009 n)

end

end A282893.P14370983520285287141

/-! ## A282893.P4760471527137755810

`A000009(2*n)-(A295341(n)+A000726(n))`
-/

namespace A282893.P4760471527137755810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * n) - (A295341 n + A000726 n)

end

end A282893.P4760471527137755810

/-! ## A282893.P15627316203266262283

`A000009(2*n)+A120452(n+2)-A000070(n+1)`
-/

namespace A282893.P15627316203266262283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * n) + (A120452 (n + 2) - A000070 (n + 1))

end

end A282893.P15627316203266262283

/-! ## A282893.P9433863947747598810

`A035294(n)-A035363(2*n)`
-/

namespace A282893.P9433863947747598810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035294 n - A035363 (2 * n)

end

end A282893.P9433863947747598810

/-! ## A282893.P3939152426609965478

`A081360(2*n)-A000041(n)`
-/

namespace A282893.P3939152426609965478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 (2 * n) - A000041 n

end

end A282893.P3939152426609965478

/-! ## A282893.P3101975353861476558

`A052839(2*n)-A052810(n)`
-/

namespace A282893.P3101975353861476558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 (2 * n) - A052810 n

end

end A282893.P3101975353861476558

/-! ## A282893.P5388831110664688287

`A111133(2*n)-A000065(n)`
-/

namespace A282893.P5388831110664688287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (2 * n) - A000065 n

end

end A282893.P5388831110664688287

/-! ## A282893.P15725436260028130402

`A081360(2*n)-∑[A002865(n)]`
-/

namespace A282893.P15725436260028130402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282893.P15725436260028130402

/-! ## A282893.P12331366683901057458

`A000009(2*n)-A035363(2*n)`
-/

namespace A282893.P12331366683901057458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * n) - A035363 (2 * n)

end

end A282893.P12331366683901057458

/-! ## A282893.P4573199461876746608

`A081360(2*n)-A035363(2*n)`
-/

namespace A282893.P4573199461876746608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 (2 * n) - A035363 (2 * n)

end

end A282893.P4573199461876746608

/-! ## A282893.P4361760067446907077

`A000009(2*n)-A119620(2*n)`
-/

namespace A282893.P4361760067446907077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * n) - A119620 (2 * n)

end

end A282893.P4361760067446907077

/-! ## A282893.P6399236951155215121

`A182616(n)-A366527(n)`
-/

namespace A282893.P6399236951155215121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182616 n - A366527 n

end

end A282893.P6399236951155215121

/-! ## A282893.P7162235478001100320

`A182616(n)-A047967(2*n)`
-/

namespace A282893.P7162235478001100320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182616 n - A047967 (2 * n)

end

end A282893.P7162235478001100320

/-! ## A282893.P16200481268872491584

`A086543(2*n)-A366527(n)`
-/

namespace A282893.P16200481268872491584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086543 (2 * n) - A366527 n

end

end A282893.P16200481268872491584

/-!
# A282894: Remainder when sum of first n terms of A004001 is divided by A004001(n).

The programs for A282894, the canonical program `A282894.P8507695228909102184` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282894 has offset 1).

The definition of A282894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282894.P8507695228909102184

`∑[A004001(n+1)]%A004001(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A282894

/-- `∑[A004001(n+1)]%A004001(n+1)` -/
def P8507695228909102184.Spec : Prop :=
  ∀ n, P8507695228909102184.a n = A282894 (n + 1)

theorem P8507695228909102184.correct : P8507695228909102184.Spec := by
  intro n
  simp only [A282894, Nat.add_sub_cancel]

end A282894

/-! ## A282894.P6680193241062080932

`∑[2-A080677(n+1)+n]%(2-A080677(n+1)+n)`
-/

namespace A282894.P6680193241062080932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A080677 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (2 - A080677 (n + 1) + (n : ℤ))

end

end A282894.P6680193241062080932

namespace A282894

/-- `∑[2-A080677(n+1)+n]%(2-A080677(n+1)+n)` -/
def P6680193241062080932.Spec : Prop :=
  ∀ n, P6680193241062080932.a n = A282894 (n + 1)

theorem P6680193241062080932.correct : P6680193241062080932.Spec := by
  intro n
  simp only [A282894, Nat.add_sub_cancel, A282894.P6680193241062080932.f1, A282894.P6680193241062080932.a, A282894.P8507695228909102184.f1, A282894.P8507695228909102184.a, A004001, A004001.P15027099775036681873.a, A080677, A080677.P3667813120543566006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282894

/-! ## A282894.P3145639358332234643

`∑[(A004074(n+1)+n+1)/2]%((A004074(n+1)+n+1)/2)`
-/

namespace A282894.P3145639358332234643
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004074 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (SequenceMachineLib.roundAway ((A004074 (n + 1) + (n + 1 : ℤ) : ℚ) / 2))

end

end A282894.P3145639358332234643

namespace A282894

/-- `∑[(A004074(n+1)+n+1)/2]%((A004074(n+1)+n+1)/2)` -/
def P3145639358332234643.Spec : Prop :=
  ∀ n, P3145639358332234643.a n = A282894 (n + 1)

end A282894

/-! ## A282894.P11287543774514313102

`∑[2-A080677(n+1)+n]%A008619(A004074(n+1)+n)`
-/

namespace A282894.P11287543774514313102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A080677 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A008619 (A004074 (n + 1) + (n : ℤ)).toNat)

end

end A282894.P11287543774514313102

namespace A282894

/-- `∑[2-A080677(n+1)+n]%A008619(A004074(n+1)+n)` -/
def P11287543774514313102.Spec : Prop :=
  ∀ n, P11287543774514313102.a n = A282894 (n + 1)

end A282894

/-! ## A282894.P2386811635872454129

`∑[A109168(A004074(n+1)+n)]%(2-A080677(n+1)+n)`
-/

namespace A282894.P2386811635872454129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (A004074 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (2 - A080677 (n + 1) + (n : ℤ))

end

end A282894.P2386811635872454129

namespace A282894

/-- `∑[A109168(A004074(n+1)+n)]%(2-A080677(n+1)+n)` -/
def P2386811635872454129.Spec : Prop :=
  ∀ n, P2386811635872454129.a n = A282894 (n + 1)

end A282894

/-! ## A282894.P5508901605188277828

`∑[A110654(A004074(n+1)+n)]%(2-A080677(n+1)+n)`
-/

namespace A282894.P5508901605188277828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A004074 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (2 - A080677 (n + 1) + (n : ℤ))

end

end A282894.P5508901605188277828

namespace A282894

/-- `∑[A110654(A004074(n+1)+n)]%(2-A080677(n+1)+n)` -/
def P5508901605188277828.Spec : Prop :=
  ∀ n, P5508901605188277828.a n = A282894 (n + 1)

end A282894

/-! ## A282894.P7922478469077285227

`∑[A140472(A004074(n+1)+n)]%(2-A080677(n+1)+n)`
-/

namespace A282894.P7922478469077285227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A004074 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (2 - A080677 (n + 1) + (n : ℤ))

end

end A282894.P7922478469077285227

namespace A282894

/-- `∑[A140472(A004074(n+1)+n)]%(2-A080677(n+1)+n)` -/
def P7922478469077285227.Spec : Prop :=
  ∀ n, P7922478469077285227.a n = A282894 (n + 1)

end A282894

/-! ## A282894.P16875247566743242034

`∑[A030451(A004074(n+1)+1+n)]%((A004074(n+1)+n+1)/2)`
-/

namespace A282894.P16875247566743242034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (A004074 (n + 1) + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.roundAway ((A004074 (n + 1) + (n + 1 : ℤ) : ℚ) / 2))

end

end A282894.P16875247566743242034

namespace A282894

/-- `∑[A030451(A004074(n+1)+1+n)]%((A004074(n+1)+n+1)/2)` -/
def P16875247566743242034.Spec : Prop :=
  ∀ n, P16875247566743242034.a n = A282894 (n + 1)

end A282894

/-!
# A282895: Numbers k such that (11*10^k + 91)/3 is prime.

The programs for A282895, there is no canonical definition to state claims against.
-/

/-! ## A282895.P14409860742256460798

`eq[A124769(A025425(n)), A300384(n+1)]`
-/

namespace A282895.P14409860742256460798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (A025425 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300384 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A282895.P14409860742256460798

/-! ## A282895.P13411300425185908565

`lt[A002947(n)*A337636(n), A007953(n)]`
-/

namespace A282895.P13411300425185908565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002947 n * A337636 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A282895.P13411300425185908565

/-! ## A282895.P634468298855019941

`eq[A272020(A233307(3*n+1)), A296132(2*(n+2))]`
-/

namespace A282895.P634468298855019941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272020 (A233307 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296132 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A282895.P634468298855019941

/-!
# A282896: Indices n such that sign(Im(zetazero(n)) - 2*Pi*e*exp(LambertW((n - 11/8)/e))) = 1.

The programs for A282896, there is no canonical definition to state claims against.
-/

/-! ## A282896.P1800960225084733740

`eq[1, A288640(n+1)]+1`
-/

namespace A282896.P1800960225084733740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288640 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A282896.P1800960225084733740

/-! ## A282896.P8536924502927174697

`record[(n+2)*A288640(n+2)]`
-/

namespace A282896.P8536924502927174697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A288640 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282896.P8536924502927174697

/-! ## A282896.P16753424462094636096

`eq[1, A288640(A028310(n))]`
-/

namespace A282896.P16753424462094636096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288640 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A282896.P16753424462094636096

/-! ## A282896.P8370302255788855136

`filter[A152271(n), A288640(#)]`
-/

namespace A282896.P8370302255788855136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288640 (f1 j).toNat = 1) n)

end

end A282896.P8370302255788855136

/-! ## A282896.P11818411095224370870

`filter[A158416(n), A288640(#)]`
-/

namespace A282896.P11818411095224370870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288640 (f1 j).toNat = 1) n)

end

end A282896.P11818411095224370870

/-! ## A282896.P9944606952408531918

`filter[A282738(n), A288640(#)]`
-/

namespace A282896.P9944606952408531918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288640 (f1 j).toNat = 1) n)

end

end A282896.P9944606952408531918

/-! ## A282896.P17857859397830333562

`filter[A344180(n), A288640(#)]`
-/

namespace A282896.P17857859397830333562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288640 (f1 j).toNat = 1) n)

end

end A282896.P17857859397830333562

/-! ## A282896.P8629969026570713341

`filter[A038459(n+1), A288640(#)]`
-/

namespace A282896.P8629969026570713341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288640 (f1 j).toNat = 1) n)

end

end A282896.P8629969026570713341

/-! ## A282896.P14028045372830970061

`filter[A092942(n+1), A288640(#)]`
-/

namespace A282896.P14028045372830970061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288640 (f1 j).toNat = 1) n)

end

end A282896.P14028045372830970061

/-! ## A282896.P5113662799928171866

`filter[A133622(n+1), A288640(#)]`
-/

namespace A282896.P5113662799928171866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288640 (f1 j).toNat = 1) n)

end

end A282896.P5113662799928171866

/-! ## A282896.P5156745644390647968

`eq[1, A288640(A000007(n)+n)]`
-/

namespace A282896.P5156745644390647968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288640 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A282896.P5156745644390647968

/-! ## A282896.P8739262759247883588

`eq[1, A288640(or(n, A000007(n)))]`
-/

namespace A282896.P8739262759247883588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288640 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A282896.P8739262759247883588

/-! ## A282896.P17298460692752245545

`A344180(eq[1, A288640(A344180(n))])`
-/

namespace A282896.P17298460692752245545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288640 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282896.P17298460692752245545

/-! ## A282896.P6469593309851640489

`eq[1, A288640(A065033(2*n))]`
-/

namespace A282896.P6469593309851640489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288640 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A282896.P6469593309851640489

/-! ## A282896.P5271545967916036859

`eq[1, A288640(A123108(2*n))]`
-/

namespace A282896.P5271545967916036859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288640 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A282896.P5271545967916036859

/-!
# A282897: Indices n such that sign(Im(zetazero(n)) - 2*Pi*e*exp(LambertW((n - 11/8)/e))) = -1.

The programs for A282897, there is no canonical definition to state claims against.
-/

/-! ## A282897.P9066534490342430984

`lt[A288640(n+1), 1]+1`
-/

namespace A282897.P9066534490342430984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288640 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A282897.P9066534490342430984

/-! ## A282897.P9135191824652643894

`record[n+1-A017115(n)*A288640(n+1)]`
-/

namespace A282897.P9135191824652643894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A017115 n * A288640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282897.P9135191824652643894

/-! ## A282897.P14482322466836417749

`record[n+1-A001950(n+1)*A288640(n+1)]`
-/

namespace A282897.P14482322466836417749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001950 (n + 1) * A288640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282897.P14482322466836417749

/-! ## A282897.P11159332888432094963

`record[n+1-A004462(n+1)*A288640(n+1)]`
-/

namespace A282897.P11159332888432094963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004462 (n + 1) * A288640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282897.P11159332888432094963

/-! ## A282897.P17067235523006995031

`eq[A000007(n), A288640(A000007(n)+n)]`
-/

namespace A282897.P17067235523006995031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288640 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A282897.P17067235523006995031

/-! ## A282897.P18071048608800885591

`eq[A028310(n)-n, A288640(A028310(n))]`
-/

namespace A282897.P18071048608800885591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288640 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A282897.P18071048608800885591

/-! ## A282897.P14162809548430261555

`record[A002264((n+1)*(3-A288640(n+1)))]`
-/

namespace A282897.P14162809548430261555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ((n + 1 : ℤ) * (3 - A288640 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282897.P14162809548430261555

/-!
# A282898: Numerator of the coefficients of the series expansion of the Riemann-Siegel theta function at infinity.

The programs for A282898, there is no canonical definition to state claims against.
-/

/-! ## A282898.P7211534401069291518

`abs(A277002(n+1))`
-/

namespace A282898.P7211534401069291518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A277002 (n + 1)|

end

end A282898.P7211534401069291518

/-! ## A282898.P11835513710102340749

`gcd(A000038(n), A277002(n+1))`
-/

namespace A282898.P11835513710102340749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A277002 (n + 1))

end

end A282898.P11835513710102340749

/-! ## A282898.P3119820756990868913

`(A010673(n)-1)*A277002(n+1)`
-/

namespace A282898.P3119820756990868913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010673 n - 1) * A277002 (n + 1)

end

end A282898.P3119820756990868913

/-! ## A282898.P783160991083587376

`lcm(A007318(A000217(n)), A277002(n+1))`
-/

namespace A282898.P783160991083587376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 (A000217 n).toNat) (A277002 (n + 1))

end

end A282898.P783160991083587376

/-! ## A282898.P7561876145543049

`A165326(A265329(3*n+2))*A277002(n+1)`
-/

namespace A282898.P7561876145543049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (A265329 (3 * n + 2)).toNat * A277002 (n + 1)

end

end A282898.P7561876145543049

/-!
# A282899: Denominators/48 of the coefficients of the series expansion of the Riemann-Siegel theta function at infinity.

The programs for A282899, there is no canonical definition to state claims against.
-/

/-! ## A282899.P8364571983968603299

`A114721(n+1)/48`
-/

namespace A282899.P8364571983968603299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114721 (n + 1) : ℚ) / 48

end

end A282899.P8364571983968603299

/-! ## A282899.P15964412036248990808

`A277003(n+1)/24`
-/

namespace A282899.P15964412036248990808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277003 (n + 1) : ℚ) / 24

end

end A282899.P15964412036248990808

/-! ## A282899.P10443561750619103563

`floor(A277003(A348553(n))/24)`
-/

namespace A282899.P10443561750619103563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A277003 (A348553 n).toNat : ℚ) / 24⌋

end

end A282899.P10443561750619103563

/-! ## A282899.P18416497003409710076

`A277003(A348553(n))/24*A000034(2*n)`
-/

namespace A282899.P18416497003409710076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277003 (A348553 n).toNat : ℚ) / 24 * (A000034 (2 * n) : ℚ)

end

end A282899.P18416497003409710076

/-! ## A282899.P3635756300257198921

`A277003(A348553(n))/24*A329678(A051699(n))`
-/

namespace A282899.P3635756300257198921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277003 (A348553 n).toNat : ℚ) / 24 * (A329678 (A051699 n).toNat : ℚ)

end

end A282899.P3635756300257198921

