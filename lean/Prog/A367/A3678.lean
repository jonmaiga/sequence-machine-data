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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C046
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A367800: G.f. A(x) satisfies A(x) = 1 / (1 - x * A(x^8)).

The programs for A367800, there is no canonical definition to state claims against.
-/

/-! ## A367800.P2742740447939740419

`A000027(a(n-1)+a(n-8))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=1`
-/

namespace A367800.P2742740447939740419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 1, 1, 1, 1] fun n a =>
  A000027 (a (n - 1) + a (n - 8)).toNat

end

end A367800.P2742740447939740419

/-! ## A367800.P11859843498680133381

`(a(n-1)+a(n-8))%A255011(2*(n+2))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=1`
-/

namespace A367800.P11859843498680133381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 1, 1, 1, 1] fun n a =>
  Int.tmod (a (n - 1) + a (n - 8)) (A255011 (2 * (n + 2)))

end

end A367800.P11859843498680133381

/-! ## A367800.P3037986645534689060

`A005710(n+2-A165024(n+1))`
-/

namespace A367800.P3037986645534689060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005710 ((n + 2 : ℤ) - A165024 (n + 1)).toNat

end

end A367800.P3037986645534689060

/-! ## A367800.P7390231061185332739

`A057889(A057889(a(n-1)+a(n-8)))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=1`
-/

namespace A367800.P7390231061185332739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 1, 1, 1, 1] fun n a =>
  A057889 (A057889 (a (n - 1) + a (n - 8)).toNat).toNat

end

end A367800.P7390231061185332739

/-! ## A367800.P15625415456759985915

`A028310(a(n-1)+a(n-8))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=1`
-/

namespace A367800.P15625415456759985915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 1, 1, 1, 1] fun n a =>
  A028310 (a (n - 1) + a (n - 8)).toNat

end

end A367800.P15625415456759985915

/-! ## A367800.P5317302879338180523

`sqrt(A000290(a(n-1)+a(n-8)))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=1`
-/

namespace A367800.P5317302879338180523
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 1, 1, 1, 1] fun n a =>
  Real.sqrt (A000290 (SequenceMachineLib.roundAway (a (n - 1) + a (n - 8))).toNat : ℝ)

end

end A367800.P5317302879338180523

/-!
# A367801: Numbers that are both exponentially odd (A268335) and exponentially odious (A270428).

The programs for A367801, the canonical program `A367801.P16307762078431172026` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367801 has offset 1).

The definition of A367801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367801.P17966414005972801916

`eq[A336643(n+1), A355825(n+1)]+1`
-/

namespace A367801.P17966414005972801916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355825 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A367801.P17966414005972801916

namespace A367801

/-- `eq[A336643(n+1), A355825(n+1)]+1` -/
def P17966414005972801916.Spec : Prop :=
  ∀ n, (P17966414005972801916.a n : ℤ) = A367801 (n + 1)

end A367801

/-! ## A367801.P6412765103637840586

`∩[A268335(n+1), A270428(n+1)]`
-/

namespace A367801.P6412765103637840586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367801.P6412765103637840586

namespace A367801

/-- `∩[A268335(n+1), A270428(n+1)]` -/
def P6412765103637840586.Spec : Prop :=
  ∀ n, (P6412765103637840586.a n : ℤ) = A367801 (n + 1)

end A367801

/-! ## A367801.P16307762078431172026

`record[A350389(A270428(n+1))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A367801

/-- `record[A350389(A270428(n+1))]` -/
def P16307762078431172026.Spec : Prop :=
  ∀ n, P16307762078431172026.a n = A367801 (n + 1)

theorem P16307762078431172026.correct : P16307762078431172026.Spec := by
  intro n
  simp only [A367801, Nat.add_sub_cancel]

end A367801

/-! ## A367801.P51884380274775498

`record[A366905(A350389(n+1))]`
-/

namespace A367801.P51884380274775498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366905 (A350389 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367801.P51884380274775498

namespace A367801

/-- `record[A366905(A350389(n+1))]` -/
def P51884380274775498.Spec : Prop :=
  ∀ n, P51884380274775498.a n = A367801 (n + 1)

end A367801

/-! ## A367801.P12869848600837186651

`record[A366905(A350390(n+1))]`
-/

namespace A367801.P12869848600837186651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366905 (A350390 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367801.P12869848600837186651

namespace A367801

/-- `record[A366905(A350390(n+1))]` -/
def P12869848600837186651.Spec : Prop :=
  ∀ n, P12869848600837186651.a n = A367801 (n + 1)

end A367801

/-! ## A367801.P5169690142449390734

`record[A350389(A367514(n+1))]`
-/

namespace A367801.P5169690142449390734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (A367514 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367801.P5169690142449390734

namespace A367801

/-- `record[A350389(A367514(n+1))]` -/
def P5169690142449390734.Spec : Prop :=
  ∀ n, P5169690142449390734.a n = A367801 (n + 1)

end A367801

/-! ## A367801.P6938293114709203032

`record[A366905(gcd(n+1, A011262(n+1)))]`
-/

namespace A367801.P6938293114709203032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366905 (Int.gcd (n + 1 : ℤ) (A011262 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367801.P6938293114709203032

namespace A367801

/-- `record[A366905(gcd(n+1, A011262(n+1)))]` -/
def P6938293114709203032.Spec : Prop :=
  ∀ n, P6938293114709203032.a n = A367801 (n + 1)

end A367801

/-! ## A367801.P11761508198103822492

`record[A331738(A159253(n+1))]`
-/

namespace A367801.P11761508198103822492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331738 (A159253 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367801.P11761508198103822492

namespace A367801

/-- `record[A331738(A159253(n+1))]` -/
def P11761508198103822492.Spec : Prop :=
  ∀ n, P11761508198103822492.a n = A367801 (n + 1)

end A367801

/-! ## A367801.P13871339916080992565

`A005117(n+1)-A324870(A298294(n+1))`
-/

namespace A367801.P13871339916080992565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) - A324870 (A298294 (n + 1)).toNat

end

end A367801.P13871339916080992565

namespace A367801

/-- `A005117(n+1)-A324870(A298294(n+1))` -/
def P13871339916080992565.Spec : Prop :=
  ∀ n, P13871339916080992565.a n = A367801 (n + 1)

end A367801

/-!
# A367802: Exponentially odious squares.

The programs for A367802, the canonical program `A367802.P2502221994018086087` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367802 has offset 1).

The definition of A367802 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270428, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A367802.P2502221994018086087

`A270428(n+1)²`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A367802

/-- `A270428(n+1)²` -/
def P2502221994018086087.Spec : Prop :=
  ∀ n, P2502221994018086087.a n = A367802 (n + 1)

theorem P2502221994018086087.correct : P2502221994018086087.Spec := by
  intro n
  simp only [A367802, Nat.add_sub_cancel]

end A367802

/-! ## A367802.P14449695465621062323

`A270428(A000027(n+1))^2`
-/

namespace A367802.P14449695465621062323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270428 (A000027 (n + 1)).toNat ^ 2

end

end A367802.P14449695465621062323

namespace A367802

/-- `A270428(A000027(n+1))^2` -/
def P14449695465621062323.Spec : Prop :=
  ∀ n, P14449695465621062323.a n = A367802 (n + 1)

end A367802

/-! ## A367802.P18372174973565529169

`record[A366905(n+1)²]`
-/

namespace A367802.P18372174973565529169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366905 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367802.P18372174973565529169

namespace A367802

/-- `record[A366905(n+1)²]` -/
def P18372174973565529169.Spec : Prop :=
  ∀ n, P18372174973565529169.a n = A367802 (n + 1)

end A367802

/-! ## A367802.P17419587258512276584

`record[A367514(n+1)²]`
-/

namespace A367802.P17419587258512276584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367514 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367802.P17419587258512276584

namespace A367802

/-- `record[A367514(n+1)²]` -/
def P17419587258512276584.Spec : Prop :=
  ∀ n, P17419587258512276584.a n = A367802 (n + 1)

end A367802

/-! ## A367802.P10601711653438076632

`record[A366905(A366891(n))]²`
-/

namespace A367802.P10601711653438076632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366905 (A366891 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A367802.P10601711653438076632

namespace A367802

/-- `record[A366905(A366891(n))]²` -/
def P10601711653438076632.Spec : Prop :=
  ∀ n, P10601711653438076632.a n = A367802 (n + 1)

end A367802

/-! ## A367802.P9191039820173666011

`record[A366905(A366893(n))]²`
-/

namespace A367802.P9191039820173666011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366905 (A366893 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A367802.P9191039820173666011

namespace A367802

/-- `record[A366905(A366893(n))]²` -/
def P9191039820173666011.Spec : Prop :=
  ∀ n, P9191039820173666011.a n = A367802 (n + 1)

end A367802

/-! ## A367802.P2641739234452248214

`A000290(record[A367514(n+1)])`
-/

namespace A367802.P2641739234452248214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A367802.P2641739234452248214

namespace A367802

/-- `A000290(record[A367514(n+1)])` -/
def P2641739234452248214.Spec : Prop :=
  ∀ n, P2641739234452248214.a n = A367802 (n + 1)

end A367802

/-! ## A367802.P6043477238604533993

`record[A000027(n+1)*A366905(n+1)]`
-/

namespace A367802.P6043477238604533993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A366905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367802.P6043477238604533993

namespace A367802

/-- `record[A000027(n+1)*A366905(n+1)]` -/
def P6043477238604533993.Spec : Prop :=
  ∀ n, P6043477238604533993.a n = A367802 (n + 1)

end A367802

/-! ## A367802.P15653661940257584645

`record[A366905(A366895(n))]²`
-/

namespace A367802.P15653661940257584645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366905 (A366895 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A367802.P15653661940257584645

namespace A367802

/-- `record[A366905(A366895(n))]²` -/
def P15653661940257584645.Spec : Prop :=
  ∀ n, P15653661940257584645.a n = A367802 (n + 1)

end A367802

/-! ## A367802.P5785096435840349117

`filter[(n+1)², A355825(#)]`
-/

namespace A367802.P5785096435840349117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j) = 1) n)

end

end A367802.P5785096435840349117

namespace A367802

/-- `filter[(n+1)², A355825(#)]` -/
def P5785096435840349117.Spec : Prop :=
  ∀ n, (P5785096435840349117.a n : ℤ) = A367802 (n + 1)

end A367802

/-! ## A367802.P14391793210795301548

`A354180(n+1)%A018915(n)`
-/

namespace A367802.P14391793210795301548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354180 (n + 1)) (A018915 n)

end

end A367802.P14391793210795301548

namespace A367802

/-- `A354180(n+1)%A018915(n)` -/
def P14391793210795301548.Spec : Prop :=
  ∀ n, P14391793210795301548.a n = A367802 (n + 1)

end A367802

/-! ## A367802.P13320656762616652315

`A354180(n+1)%A001550(n)`
-/

namespace A367802.P13320656762616652315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354180 (n + 1)) (A001550 n)

end

end A367802.P13320656762616652315

namespace A367802

/-- `A354180(n+1)%A001550(n)` -/
def P13320656762616652315.Spec : Prop :=
  ∀ n, P13320656762616652315.a n = A367802 (n + 1)

end A367802

/-! ## A367802.P3055250979247538305

`and(A083420(n), A354180(n+1))`
-/

namespace A367802.P3055250979247538305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083420 n) (A354180 (n + 1))

end

end A367802.P3055250979247538305

namespace A367802

/-- `and(A083420(n), A354180(n+1))` -/
def P3055250979247538305.Spec : Prop :=
  ∀ n, P3055250979247538305.a n = A367802 (n + 1)

end A367802

/-! ## A367802.P4217453285714580350

`and(A141725(n), A354180(n+1))`
-/

namespace A367802.P4217453285714580350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141725 n) (A354180 (n + 1))

end

end A367802.P4217453285714580350

namespace A367802

/-- `and(A141725(n), A354180(n+1))` -/
def P4217453285714580350.Spec : Prop :=
  ∀ n, P4217453285714580350.a n = A367802 (n + 1)

end A367802

/-! ## A367802.P12431314390519592859

`and(A267886(n), A354180(n+1))`
-/

namespace A367802.P12431314390519592859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267886 n) (A354180 (n + 1))

end

end A367802.P12431314390519592859

namespace A367802

/-- `and(A267886(n), A354180(n+1))` -/
def P12431314390519592859.Spec : Prop :=
  ∀ n, P12431314390519592859.a n = A367802 (n + 1)

end A367802

/-! ## A367802.P1139230469631461588

`and(A267890(n), A354180(n+1))`
-/

namespace A367802.P1139230469631461588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267890 n) (A354180 (n + 1))

end

end A367802.P1139230469631461588

namespace A367802

/-- `and(A267890(n), A354180(n+1))` -/
def P1139230469631461588.Spec : Prop :=
  ∀ n, P1139230469631461588.a n = A367802 (n + 1)

end A367802

/-! ## A367802.P11701959940884957410

`and(A267921(n), A354180(n+1))`
-/

namespace A367802.P11701959940884957410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267921 n) (A354180 (n + 1))

end

end A367802.P11701959940884957410

namespace A367802

/-- `and(A267921(n), A354180(n+1))` -/
def P11701959940884957410.Spec : Prop :=
  ∀ n, P11701959940884957410.a n = A367802 (n + 1)

end A367802

/-! ## A367802.P1697029879791075537

`and(A267938(n), A354180(n+1))`
-/

namespace A367802.P1697029879791075537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267938 n) (A354180 (n + 1))

end

end A367802.P1697029879791075537

namespace A367802

/-- `and(A267938(n), A354180(n+1))` -/
def P1697029879791075537.Spec : Prop :=
  ∀ n, P1697029879791075537.a n = A367802 (n + 1)

end A367802

/-! ## A367802.P7665557691607880221

`and(A269911(n), A354180(n+1))`
-/

namespace A367802.P7665557691607880221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A269911 n) (A354180 (n + 1))

end

end A367802.P7665557691607880221

namespace A367802

/-- `and(A269911(n), A354180(n+1))` -/
def P7665557691607880221.Spec : Prop :=
  ∀ n, P7665557691607880221.a n = A367802 (n + 1)

end A367802

/-! ## A367802.P2744618069210671927

`and(A273832(n), A354180(n+1))`
-/

namespace A367802.P2744618069210671927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A273832 n) (A354180 (n + 1))

end

end A367802.P2744618069210671927

namespace A367802

/-- `and(A273832(n), A354180(n+1))` -/
def P2744618069210671927.Spec : Prop :=
  ∀ n, P2744618069210671927.a n = A367802 (n + 1)

end A367802

/-!
# A367803: Exponentially evil squares.

The programs for A367803, there is no canonical definition to state claims against.
-/

/-! ## A367803.P13261234510987285738

`A262675(n+1)²`
-/

namespace A367803.P13261234510987285738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262675 (n + 1) ^ 2

end

end A367803.P13261234510987285738

/-! ## A367803.P11917799321085017255

`A262675(A000027(n+1))^2`
-/

namespace A367803.P11917799321085017255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262675 (A000027 (n + 1)).toNat ^ 2

end

end A367803.P11917799321085017255

/-! ## A367803.P5016167667569608032

`A262675(A000027(n+1))*A262675(n+1)`
-/

namespace A367803.P5016167667569608032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262675 (A000027 (n + 1)).toNat * A262675 (n + 1)

end

end A367803.P5016167667569608032

/-! ## A367803.P4899212511110962450

`A262675(n+1)^A001222(A001358(n+1))`
-/

namespace A367803.P4899212511110962450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262675 (n + 1) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A367803.P4899212511110962450

/-! ## A367803.P11631128231413958753

`A262675(n+1)^A000005(A020639(n+1))`
-/

namespace A367803.P11631128231413958753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262675 (n + 1) : ℚ) ^ (A000005 (A020639 (n + 1)).toNat : ℤ)

end

end A367803.P11631128231413958753

/-! ## A367803.P7143308419177315769

`A262675(n+1)^A000005(A000040(n+1))`
-/

namespace A367803.P7143308419177315769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262675 (n + 1) : ℚ) ^ (A000005 (A000040 (n + 1)).toNat : ℤ)

end

end A367803.P7143308419177315769

/-! ## A367803.P13646883797969077345

`A262675(n+1)^A343371(A162753(n))`
-/

namespace A367803.P13646883797969077345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262675 (n + 1) : ℚ) ^ (A343371 (A162753 n).toNat : ℤ)

end

end A367803.P13646883797969077345

/-! ## A367803.P16834955287279849846

`A262675(n+1)^A001222(A242218(n+1))`
-/

namespace A367803.P16834955287279849846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262675 (n + 1) : ℚ) ^ (A001222 (A242218 (n + 1)).toNat : ℤ)

end

end A367803.P16834955287279849846

/-! ## A367803.P17931505252034280275

`∩[A262675(n+1), A374291(n+1)]`
-/

namespace A367803.P17931505252034280275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367803.P17931505252034280275

/-! ## A367803.P5863081805745478103

`A262675(n+1)^A006519(A075277(n+1))`
-/

namespace A367803.P5863081805745478103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262675 (n + 1) : ℚ) ^ (A006519 (A075277 (n + 1)).toNat : ℤ)

end

end A367803.P5863081805745478103

/-!
# A367804: Numbers that are both exponentially odd (A268335) and exponentially evil (A262675).

The programs for A367804, there is no canonical definition to state claims against.
-/

/-! ## A367804.P13424365488694132475

`∩[A262675(n+1), A335988(n+1)]`
-/

namespace A367804.P13424365488694132475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367804.P13424365488694132475

/-! ## A367804.P3919801228095349663

`filter[A335988(n+1), A359464(#)]`
-/

namespace A367804.P3919801228095349663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A367804.P3919801228095349663

/-! ## A367804.P6682293573529518617

`∩[A060476(n+1), A262675(n+1)]`
-/

namespace A367804.P6682293573529518617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367804.P6682293573529518617

/-! ## A367804.P524798610105051458

`filter[A262675(n+1), A295316(#)]`
-/

namespace A367804.P524798610105051458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A367804.P524798610105051458

/-! ## A367804.P2183739267279866680

`∩[A000379(n+1), A335988(n+1)]`
-/

namespace A367804.P2183739267279866680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367804.P2183739267279866680

/-!
# A367805: a(1) = 0; for n > 1, a(n) is the least positive integer k for which k*prime(n) + 2 is prime.

The programs for A367805, there is no canonical definition to state claims against.
-/

/-! ## A367805.P9499367541722305339

`(A279756(n+1)-2)/A000040(n+1)`
-/

namespace A367805.P9499367541722305339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279756 (n + 1) - 2 : ℚ) / (A000040 (n + 1) : ℚ)

end

end A367805.P9499367541722305339

/-! ## A367805.P3627796955882293213

`A049820(A279756(n+1))/A000040(n+1)`
-/

namespace A367805.P3627796955882293213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049820 (A279756 (n + 1)).toNat : ℚ) / (A000040 (n + 1) : ℚ)

end

end A367805.P3627796955882293213

/-! ## A367805.P7707577733075619851

`A049820(A279756(n+1))%A006093(n+1)`
-/

namespace A367805.P7707577733075619851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049820 (A279756 (n + 1)).toNat) (A006093 (n + 1))

end

end A367805.P7707577733075619851

/-! ## A367805.P3454851940718036541

`A306346(A034021(n+2))`
-/

namespace A367805.P3454851940718036541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306346 (A034021 (n + 2)).toNat

end

end A367805.P3454851940718036541

/-! ## A367805.P4773289589820921667

`A336466(A154692(2*n))%A004277(n)`
-/

namespace A367805.P4773289589820921667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336466 (A154692 (2 * n)).toNat) (A004277 n)

end

end A367805.P4773289589820921667

/-!
# A367807: Even palindromes, divided by 2.

The programs for A367807, there is no canonical definition to state claims against.
-/

/-! ## A367807.P10870430406562042592

`A029951(n+1)/2`
-/

namespace A367807.P10870430406562042592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029951 (n + 1) : ℚ) / 2

end

end A367807.P10870430406562042592

/-! ## A367807.P13506194925592300925

`A014682(A029951(n+1))`
-/

namespace A367807.P13506194925592300925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A029951 (n + 1)).toNat

end

end A367807.P13506194925592300925

/-! ## A367807.P16819726798833469095

`record[A273943(A002113(1+n))]`
-/

namespace A367807.P16819726798833469095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A002113 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367807.P16819726798833469095

/-! ## A367807.P8059168280973151723

`eq[2*n, A004086(2*n)]`
-/

namespace A367807.P8059168280973151723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A367807.P8059168280973151723

/-! ## A367807.P15448952681910989471

`eq[0, A056965(2*n)]`
-/

namespace A367807.P15448952681910989471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A367807.P15448952681910989471

/-! ## A367807.P3815934648683767667

`eq[0, A064834(2*n)]`
-/

namespace A367807.P3815934648683767667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A367807.P3815934648683767667

/-! ## A367807.P3868965704174715369

`eq[0, A241173(2*n)]`
-/

namespace A367807.P3868965704174715369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241173 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A367807.P3868965704174715369

/-! ## A367807.P9487331151417861350

`eq[0, A248327(2*n)]`
-/

namespace A367807.P9487331151417861350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248327 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A367807.P9487331151417861350

/-! ## A367807.P6164881823849009561

`eq[0, A256756(2*n)]`
-/

namespace A367807.P6164881823849009561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A367807.P6164881823849009561

/-! ## A367807.P11154889089547015195

`eq[0, A261424(2*n)]`
-/

namespace A367807.P11154889089547015195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A367807.P11154889089547015195

/-!
# A367808: a(n) = Sum_{k=0..n} A011971(n, k) * 2^(n - k).

The programs for A367808, the canonical program `A367808.P18130531812148155409` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367808 has offset 0).

The definition of A367808 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011971, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A367808.P18130531812148155409

`∑{#}[n, A011971(C(n+1, 2)+#)*2^(n-#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A367808

/-- `∑{#}[n, A011971(C(n+1, 2)+#)*2^(n-#)]` -/
def P18130531812148155409.Spec : Prop :=
  ∀ n, P18130531812148155409.a n = (A367808 n : ℚ)

end A367808

/-!
# A367809: a(n) = Sum_{k=0..n} A011971(n, k) * (-2)^(n - k).

The programs for A367809, the canonical program `A367809.P7004171487013553022` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367809 has offset 0).

The definition of A367809 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011971, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A367809.P7004171487013553022

`∑{#}[n, A011971(C(n+1, 2)+#)*(-2)^(n-#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A367809

/-- `∑{#}[n, A011971(C(n+1, 2)+#)*(-2)^(n-#)]` -/
def P7004171487013553022.Spec : Prop :=
  ∀ n, P7004171487013553022.a n = (A367809 n : ℚ)

end A367809

/-!
# A367810: Lexicographically earliest sequence of distinct positive terms not ending in 0 such that the Levenshtein distance (Ld) between a(n) and a(n+1) is equal to the last digit of a(n).

The programs for A367810, there is no canonical definition to state claims against.
-/

/-! ## A367810.P9296318999613520240

`A000566(A000172(n))%A036681(n)`
-/

namespace A367810.P9296318999613520240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000566 (A000172 n).toNat) (A036681 n)

end

end A367810.P9296318999613520240

/-!
# A367812: Lexicographically earliest sequence of distinct nonnegative terms such that the Levenshtein distance (Ld) between a(n) and a(n+1) is equal to 2.

The programs for A367812, there is no canonical definition to state claims against.
-/

/-! ## A367812.P18079449399394849582

`A318486(n+1)-A121373(A079605(n+1))`
-/

namespace A367812.P18079449399394849582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318486 (n + 1) - A121373 (A079605 (n + 1)).toNat

end

end A367812.P18079449399394849582

/-! ## A367812.P11225129760613966556

`A318486(n+1)-A121373(A172218(n+1))`
-/

namespace A367812.P11225129760613966556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318486 (n + 1) - A121373 (A172218 (n + 1)).toNat

end

end A367812.P11225129760613966556

/-!
# A367816: Number of terms in a shortest sequence of Lucas numbers that sum to n, allowing Lucas numbers with negative indices.

The programs for A367816, there is no canonical definition to state claims against.
-/

/-! ## A367816.P3300137478026303697

`A287170(or(A090669(n+1), A161707(n)))`
-/

namespace A367816.P3300137478026303697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (Int.lor (A090669 (n + 1)) (A161707 n)).toNat

end

end A367816.P3300137478026303697

/-! ## A367816.P10615257327428750189

`A304465(A327083(n+1)+A299314(3*n+1))`
-/

namespace A367816.P10615257327428750189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (A327083 (n + 1) + A299314 (3 * n + 1)).toNat

end

end A367816.P10615257327428750189

/-! ## A367816.P14074868278738823315

`A351014(lt[A000040(n+1), A262767(2*n+5)])`
-/

namespace A367816.P14074868278738823315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262767 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A367816.P14074868278738823315

/-! ## A367816.P18377426440312283456

`A248623(A194855(n+1))`
-/

namespace A367816.P18377426440312283456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248623 (A194855 (n + 1)).toNat

end

end A367816.P18377426440312283456

/-! ## A367816.P13098353521721456848

`A121561(A196724(n)-A000073(n))`
-/

namespace A367816.P13098353521721456848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121561 (A196724 n - A000073 n).toNat

end

end A367816.P13098353521721456848

/-!
# A367817: Number of terms in a shortest sequence of Fibonacci numbers that sum to n, allowing Fibonacci numbers with negative indices.

The programs for A367817, there is no canonical definition to state claims against.
-/

/-! ## A367817.P16329697662763089964

`row(A304101(n))%A297932(2*n+1)`
-/

namespace A367817.P16329697662763089964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.triRow (A304101 n).toNat : ℤ) (A297932 (2 * n + 1))

end

end A367817.P16329697662763089964

/-! ## A367817.P10944555057097041832

`A347102(A304101(n))%A234523(2*(n+1))`
-/

namespace A367817.P10944555057097041832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347102 (A304101 n).toNat) (A234523 (2 * (n + 1)))

end

end A367817.P10944555057097041832

/-! ## A367817.P1622795848300645553

`A007895(n)-A341996(A126120(n))`
-/

namespace A367817.P1622795848300645553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n - A341996 (A126120 n).toNat

end

end A367817.P1622795848300645553

/-! ## A367817.P14251460692225892039

`A347102(A304101(n))%A358545(n+1)`
-/

namespace A367817.P14251460692225892039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347102 (A304101 n).toNat) (A358545 (n + 1))

end

end A367817.P14251460692225892039

/-! ## A367817.P7804592901896115836

`A367816(A198271(n))`
-/

namespace A367817.P7804592901896115836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367816 (A198271 n).toNat

end

end A367817.P7804592901896115836

/-!
# A367818: Expansion of e.g.f. exp(1 - 3*x - exp(x)).

The programs for A367818, there is no canonical definition to state claims against.
-/

/-! ## A367818.P18357787673000661475

`∑{#}[n, C(n, #)*(-3)^(n-#)*A000587(#)]`
-/

namespace A367818.P18357787673000661475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℚ) * (-3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A000587 k : ℚ)

end

end A367818.P18357787673000661475

/-! ## A367818.P11734937806145875998

`∑{#}[n, C(n, #)*A367819(#)]`
-/

namespace A367818.P11734937806145875998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A367819 k

end

end A367818.P11734937806145875998

/-!
# A367819: Expansion of e.g.f. exp(1 - 4*x - exp(x)).

The programs for A367819, there is no canonical definition to state claims against.
-/

/-! ## A367819.P10568592376309697861

`∑{#}[n, C(n, #)*(-4)^(n-#)*A000587(#)]`
-/

namespace A367819.P10568592376309697861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℚ) * (-4 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A000587 k : ℚ)

end

end A367819.P10568592376309697861

/-! ## A367819.P2943260668172744043

`∑{#}[n, (-1)^(n-#)*C(n, #)*A367818(#)]`
-/

namespace A367819.P2943260668172744043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A367818 k : ℚ)

end

end A367819.P2943260668172744043

/-!
# A367820: Number of partitions of [2n] that have at most one block contained in [n].

The programs for A367820, there is no canonical definition to state claims against.
-/

/-! ## A367820.P18119489988603802235

`A113547(C(2*n+1, 2)+n+1)`
-/

namespace A367820.P18119489988603802235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113547 (Nat.choose (2 * n + 1) 2 + (n + 1))

end

end A367820.P18119489988603802235

/-! ## A367820.P7344405542679443850

`A362925(C(2*n+1, 2)+n)`
-/

namespace A367820.P7344405542679443850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362925 (Nat.choose (2 * n + 1) 2 + n)

end

end A367820.P7344405542679443850

/-! ## A367820.P14050502829293521922

`A113547((n+1)²+n²)`
-/

namespace A367820.P14050502829293521922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113547 ((n + 1) ^ 2 + n ^ 2)

end

end A367820.P14050502829293521922

/-! ## A367820.P17692471357612368988

`A362925(∑[4*n])`
-/

namespace A367820.P17692471357612368988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362925 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A367820.P17692471357612368988

/-! ## A367820.P10716861032758143981

`record[A003982(n)*A362925(n)]`
-/

namespace A367820.P10716861032758143981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A362925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367820.P10716861032758143981

/-!
# A367824: Array read by ascending antidiagonals: A(n, k) is the numerator of (R(n) - k)/(n + k), where R(n) is the digit reversal of n, with A(0, 0) = 1.

The programs for A367824, there is no canonical definition to state claims against.
-/

/-! ## A367824.P9638814794176635170

`A080232(n)/A046951(A060187(n+1))`
-/

namespace A367824.P9638814794176635170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080232 n : ℚ) / (A046951 (A060187 (n + 1)).toNat : ℚ)

end

end A367824.P9638814794176635170

/-! ## A367824.P8275724220285858812

`A000035(A081668(n))-A068344(n)`
-/

namespace A367824.P8275724220285858812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A081668 n).toNat - A068344 n

end

end A367824.P8275724220285858812

/-! ## A367824.P9021612546946832920

`A121373(A204095(n))-A068344(n)`
-/

namespace A367824.P9021612546946832920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A204095 n).toNat - A068344 n

end

end A367824.P9021612546946832920

/-! ## A367824.P16936090113002768043

`A209229(A289882(n))-A068344(n)`
-/

namespace A367824.P16936090113002768043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A289882 n).toNat - A068344 n

end

end A367824.P16936090113002768043

/-! ## A367824.P8952429962887847372

`A000007(A169967(n+1))-A068344(n)`
-/

namespace A367824.P8952429962887847372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A169967 (n + 1)).toNat - A068344 n

end

end A367824.P8952429962887847372

/-!
# A367825: Array read by ascending antidiagonals: A(n, k) is the denominator of (R(n) - k)/(n + k), where R(n) is the digit reversal of n, with A(0, 0) = 1.

The programs for A367825, there is no canonical definition to state claims against.
-/

/-! ## A367825.P13940294604731714237

`gcd(A000217(A158497(n)), A374435(n))`
-/

namespace A367825.P13940294604731714237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A158497 n).toNat) (A374435 n)

end

end A367825.P13940294604731714237

/-! ## A367825.P2628684345540996521

`gcd(A002244(A094525(n)), A214281(n))`
-/

namespace A367825.P2628684345540996521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002244 (A094525 n).toNat) (A214281 n)

end

end A367825.P2628684345540996521

/-! ## A367825.P2597052949635109809

`A392050(A093645(n))`
-/

namespace A367825.P2597052949635109809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392050 (A093645 n).toNat

end

end A367825.P2597052949635109809

/-! ## A367825.P9961623743241936757

`A249094(A221749(n+1)+8)+1`
-/

namespace A367825.P9961623743241936757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249094 (A221749 (n + 1) + 8).toNat + 1

end

end A367825.P9961623743241936757

/-! ## A367825.P14387458716838638431

`A122197(A181144(n)+A161642(n))`
-/

namespace A367825.P14387458716838638431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (A181144 n + A161642 n).toNat

end

end A367825.P14387458716838638431

/-!
# A367830: E.g.f. A(x) satisfies A(x) = (1 + (exp(x) - 1) * A(2*x)) / (1 - x).

The programs for A367830, there is no canonical definition to state claims against.
-/

/-! ## A367830.P14675757146565720303

`A329333(A103372(3*n+4)*A322195(n))`
-/

namespace A367830.P14675757146565720303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329333 (A103372 (3 * n + 4) * A322195 n).toNat

end

end A367830.P14675757146565720303

/-!
# A367835: Expansion of e.g.f. 1/(2 - x - exp(2*x)).

The programs for A367835, there is no canonical definition to state claims against.
-/

/-! ## A367835.P18419966710938255095

`A265640(A000888(n))+A015552(n)`
-/

namespace A367835.P18419966710938255095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (A000888 n).toNat + A015552 n

end

end A367835.P18419966710938255095

/-!
# A367838: Expansion of e.g.f. 1/(2 + x - exp(2*x)).

The programs for A367838, there is no canonical definition to state claims against.
-/

/-! ## A367838.P5670197743782551804

`A322611(a(n-1)+2)` with `a(0)=1, a(1)=1`
-/

namespace A367838.P5670197743782551804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A322611 (a (n - 1) + 2).toNat

end

end A367838.P5670197743782551804

/-!
# A367839: Expansion of e.g.f. 1/(2 + x - exp(3*x)).

The programs for A367839, there is no canonical definition to state claims against.
-/

/-! ## A367839.P11605884145996654851

`A326947(A354241(n))+A318284(n+1)`
-/

namespace A367839.P11605884145996654851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326947 (A354241 n).toNat + A318284 (n + 1)

end

end A367839.P11605884145996654851

/-!
# A367844: Triangle read by rows: T(n, k) = (n+5)*n/2 + 1 + (n^2 mod 3) - 3*k for 0 <= k <= n.

The programs for A367844, the canonical program `A367844.P6944692001525509585` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367844 has offset 0).

The definition of A367844 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367844.P6944692001525509585

`(row(n)+5)*row(n)/2+1+row(n)²%3-3*col(n)`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A367844

/-- `(row(n)+5)*row(n)/2+1+row(n)²%3-3*col(n)` -/
def P6944692001525509585.Spec : Prop :=
  ∀ n, P6944692001525509585.a n = (A367844 n : ℚ)

end A367844

/-! ## A367844.P3558579753731128716

`A064429(A391056(1+n))`
-/

namespace A367844.P3558579753731128716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A391056 (1 + n)).toNat

end

end A367844.P3558579753731128716

namespace A367844

/-- `A064429(A391056(1+n))` -/
def P3558579753731128716.Spec : Prop :=
  ∀ n, P3558579753731128716.a n = A367844 n

end A367844

/-!
# A367845: Expansion of e.g.f. 1/(1 - x + log(1 - 2*x)).

The programs for A367845, there is no canonical definition to state claims against.
-/

/-! ## A367845.P12337871852772531243

`A284015(A376086(n))`
-/

namespace A367845.P12337871852772531243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284015 (A376086 n).toNat

end

end A367845.P12337871852772531243

/-!
# A367849: Lexicographically earliest infinite sequence of positive integers such that for each n, the values in a path of locations starting from any i=n are all distinct, where jumps are allowed from location i to i+a(i).

The programs for A367849, there is no canonical definition to state claims against.
-/

/-! ## A367849.P171248539382852460

`A211992(A304533(gcd(n, C(2, n))+n)²)`
-/

namespace A367849.P171248539382852460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211992 (A304533 (Nat.gcd n (Nat.choose 2 n) + n) ^ 2).toNat

end

end A367849.P171248539382852460

/-! ## A367849.P16762442447816386389

`gcd(A325664(n+5), A354606(A187829(n+1)))`
-/

namespace A367849.P16762442447816386389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A325664 (n + 5)) (A354606 (A187829 (n + 1)).toNat)

end

end A367849.P16762442447816386389

/-! ## A367849.P10123712265403585050

`gcd(A131899(A053585(3*n+5)), A298593(3*n+4))`
-/

namespace A367849.P10123712265403585050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131899 (A053585 (3 * n + 5)).toNat) (A298593 (3 * n + 4))

end

end A367849.P10123712265403585050

/-! ## A367849.P4891817613089450785

`A194550(A029509(n+1))`
-/

namespace A367849.P4891817613089450785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194550 (A029509 (n + 1)).toNat

end

end A367849.P4891817613089450785

/-! ## A367849.P13146321159567348302

`∏{e}[A006918(A185720(n+1)), #]`
-/

namespace A367849.P13146321159567348302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (A185720 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A367849.P13146321159567348302

/-!
# A367850: Total sum of the block maxima minus the block minima over all partitions of [n].

The programs for A367850, there is no canonical definition to state claims against.
-/

/-! ## A367850.P8464862223753902288

`A054899(A019529(n+2)*A279571(n))`
-/

namespace A367850.P8464862223753902288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A019529 (n + 2) * A279571 n).toNat

end

end A367850.P8464862223753902288

/-! ## A367850.P3768350623267847337

`A358453(A002202(n+1))-A358453(n+1)`
-/

namespace A367850.P3768350623267847337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358453 (A002202 (n + 1)).toNat - A358453 (n + 1)

end

end A367850.P3768350623267847337

/-! ## A367850.P4018341879170749130

`A358453(A177917(n+1))-A358453(n+1)`
-/

namespace A367850.P4018341879170749130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358453 (A177917 (n + 1)).toNat - A358453 (n + 1)

end

end A367850.P4018341879170749130

/-!
# A367852: Expansion of e.g.f. 1/(1 - x + log(1 - 3*x)/3).

The programs for A367852, there is no canonical definition to state claims against.
-/

/-! ## A367852.P10036372361974379220

`A187903(A242817(n))+n`
-/

namespace A367852.P10036372361974379220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187903 (A242817 n).toNat + (n : ℤ)

end

end A367852.P10036372361974379220

/-!
# A367853: Expansion of e.g.f. 1/(1 - x + log(1 - 4*x)/4).

The programs for A367853, there is no canonical definition to state claims against.
-/

/-! ## A367853.P14616041156563510262

`A002131(A288692(n)+n)`
-/

namespace A367853.P14616041156563510262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (A288692 n + (n : ℤ)).toNat

end

end A367853.P14616041156563510262

/-!
# A367855: The slowest increasing sequence of semiprimes such that a(n-1) + a(n) is prime.

The programs for A367855, there is no canonical definition to state claims against.
-/

/-! ## A367855.P9648710556022076089

`A160457(n)+A000005(A318413(n+4))`
-/

namespace A367855.P9648710556022076089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160457 n + A000005 (A318413 (n + 4)).toNat

end

end A367855.P9648710556022076089

/-! ## A367855.P5929076488814394898

`A072525(lt[A208301(n+1), A353007(n+1)])`
-/

namespace A367855.P5929076488814394898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072525 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A367855.P5929076488814394898

/-!
# A367856: Table T(n,k), read by downward antidiagonals: T(n,k) = floor((3*T(n,k-1)+2)/2) starting with T(n,0) = 3*n.

The programs for A367856, there is no canonical definition to state claims against.
-/

/-! ## A367856.P11566058238643033557

`A083044(n)-1`
-/

namespace A367856.P11566058238643033557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083044 n - 1

end

end A367856.P11566058238643033557

/-! ## A367856.P1721520021127939995

`A164117(2*n+1)+A083044(n)`
-/

namespace A367856.P1721520021127939995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164117 (2 * n + 1) + A083044 n

end

end A367856.P1721520021127939995

/-! ## A367856.P7867714577546959532

`A280193(2*n+1)+A083044(n)`
-/

namespace A367856.P7867714577546959532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A083044 n

end

end A367856.P7867714577546959532

/-! ## A367856.P9363572042572778708

`A163805(A016813(n))+A083044(n)`
-/

namespace A367856.P9363572042572778708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (A016813 n).toNat + A083044 n

end

end A367856.P9363572042572778708

/-! ## A367856.P16495711059757714441

`A087960(A307880(n+1))+A083044(n)`
-/

namespace A367856.P16495711059757714441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A307880 (n + 1)).toNat + A083044 n

end

end A367856.P16495711059757714441

/-! ## A367856.P5184212628567107248

`A023443(A083044(n))`
-/

namespace A367856.P5184212628567107248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A083044 n).toNat

end

end A367856.P5184212628567107248

/-!
# A367857: a(n) is the smallest base b such that (b+1)^n in base b is a palindrome.

The programs for A367857, there is no canonical definition to state claims against.
-/

/-! ## A367857.P11186378837906500761

`A001405(n%n!+1)+1`
-/

namespace A367857.P11186378837906500761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n % Nat.factorial n + 1) + 1

end

end A367857.P11186378837906500761

/-! ## A367857.P4986141783806217379

`A051920(A171526(n+1))`
-/

namespace A367857.P4986141783806217379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 (A171526 (n + 1)).toNat

end

end A367857.P4986141783806217379

/-! ## A367857.P11147863367825836387

`A209518(A007590(n)+1)+1`
-/

namespace A367857.P11147863367825836387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209518 (A007590 n + 1).toNat + 1

end

end A367857.P11147863367825836387

/-! ## A367857.P10861725407048923428

`A209518(A099392(n+1))+1`
-/

namespace A367857.P10861725407048923428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209518 (A099392 (n + 1)).toNat + 1

end

end A367857.P10861725407048923428

/-! ## A367857.P7007832917870655727

`A001405((n+1)%(A333489(n+1)+1))+1`
-/

namespace A367857.P7007832917870655727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (Int.tmod (n + 1 : ℤ) (A333489 (n + 1) + 1)).toNat + 1

end

end A367857.P7007832917870655727

/-!
# A367858: Irregular triangle read by rows where row n is the multiset multiplicity cokernel (MMC) of the multiset of prime indices of n.

The programs for A367858, there is no canonical definition to state claims against.
-/

/-! ## A367858.P17416728579704894611

`A216512(A037444(n))+A036043(n)`
-/

namespace A367858.P17416728579704894611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216512 (A037444 n).toNat + A036043 n

end

end A367858.P17416728579704894611

/-! ## A367858.P18343484301581082041

`A238966(n)+A010057(A123125(3*n+2))`
-/

namespace A367858.P18343484301581082041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238966 n + A010057 (A123125 (3 * n + 2)).toNat

end

end A367858.P18343484301581082041

/-! ## A367858.P270124115875240491

`A195470(A285824(3*n+2))+A036043(n)`
-/

namespace A367858.P270124115875240491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195470 (A285824 (3 * n + 2)).toNat + A036043 n

end

end A367858.P270124115875240491

/-! ## A367858.P17904600885832731409

`A124769(A113061(2*n+1)*A368100(n+1))`
-/

namespace A367858.P17904600885832731409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (A113061 (2 * n + 1) * A368100 (n + 1)).toNat

end

end A367858.P17904600885832731409

/-! ## A367858.P14714192023262232361

`A001222(A238962(n)+A001008(n+1))`
-/

namespace A367858.P14714192023262232361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A238962 n + A001008 (n + 1)).toNat

end

end A367858.P14714192023262232361

/-!
# A367859: Multiset multiplicity cokernel (MMC) of n. Product of (greatest prime factor with exponent k)^(number of prime factors with exponent k) over all distinct exponents k appearing in the prime factorization of n.

The programs for A367859, there is no canonical definition to state claims against.
-/

/-! ## A367859.P9063538478363628850

`A372175(A294950(n))+∏{p}[n+1, #]`
-/

namespace A367859.P9063538478363628850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372175 (A294950 n).toNat + ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A367859.P9063538478363628850

/-!
# A367860: Sum of the multiset multiplicity cokernel (in which each multiplicity becomes the greatest element of that multiplicity) of the prime indices of n.

The programs for A367860, there is no canonical definition to state claims against.
-/

/-! ## A367860.P1494236868669191649

`A056239(A367859(n+1))`
-/

namespace A367860.P1494236868669191649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A367859 (n + 1)).toNat

end

end A367860.P1494236868669191649

/-! ## A367860.P442882367540704188

`A367587(A166142(n+1))+A367587(n+1)`
-/

namespace A367860.P442882367540704188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367587 (A166142 (n + 1)).toNat + A367587 (n + 1)

end

end A367860.P442882367540704188

/-! ## A367860.P3403340166712833602

`A380958(n+1)+A325770(A122111(n+1))`
-/

namespace A367860.P3403340166712833602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380958 (n + 1) + A325770 (A122111 (n + 1)).toNat

end

end A367860.P3403340166712833602

/-! ## A367860.P4133783045384308877

`A305079(A091376(n+3)^A243055(n+1))+A061395(n+1)`
-/

namespace A367860.P4133783045384308877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (SequenceMachineLib.roundAway ((A091376 (n + 3) : ℚ) ^ (A243055 (n + 1) : ℤ))).toNat + A061395 (n + 1)

end

end A367860.P4133783045384308877

/-! ## A367860.P359126795149463772

`A066328(n+1)+A007949(A262181(n+3))`
-/

namespace A367860.P359126795149463772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (n + 1) + A007949 (A262181 (n + 3)).toNat

end

end A367860.P359126795149463772

/-!
# A367861: Numbers k whose multiset multiplicity cokernel (in which each prime exponent becomes the greatest prime factor with that exponent) is different from that of all positive integers less than k.

The programs for A367861, there is no canonical definition to state claims against.
-/

/-! ## A367861.P14581349408689448390

`eq[∑{e}[n+1, #], A000120(A178472(n+1))]+1`
-/

namespace A367861.P14581349408689448390
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A178472 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n + 1

end

end A367861.P14581349408689448390

/-! ## A367861.P7539212356220230355

`record[gcd(A325352(n+1), A375250(n+1))]`
-/

namespace A367861.P7539212356220230355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A325352 (n + 1)) (A375250 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367861.P7539212356220230355

/-! ## A367861.P15077244795147591865

`lt[A111848(A353845(n)), A000002(n+1)]`
-/

namespace A367861.P15077244795147591865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111848 (A353845 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367861.P15077244795147591865

/-! ## A367861.P4910973624253649280

`A005117(n+1)-A337802(A337798(2*n+1))`
-/

namespace A367861.P4910973624253649280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) - A337802 (A337798 (2 * n + 1)).toNat

end

end A367861.P4910973624253649280

/-! ## A367861.P1406766120045105325

`∑[A135539(A028880(n+2)+A028879(2*n+3))]`
-/

namespace A367861.P1406766120045105325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135539 (A028880 (n + 2) + A028879 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367861.P1406766120045105325

/-!
# A367862: Number of n-vertex labeled simple graphs with the same number of edges as covered vertices.

The programs for A367862, there is no canonical definition to state claims against.
-/

/-! ## A367862.P8008726911664328650

`A322058(C(n+3, 5))`
-/

namespace A367862.P8008726911664328650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322058 (Nat.choose (n + 3) 5)

end

end A367862.P8008726911664328650

/-! ## A367862.P16501744750404706277

`A111900(∑[∑[(n+1)²+1]²])`
-/

namespace A367862.P16501744750404706277
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111900 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A367862.P16501744750404706277

/-!
# A367863: Number of n-vertex labeled simple graphs with n edges and no isolated vertices.

The programs for A367863, the canonical program `A367863.P5574119551597937356` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367863 has offset 0).

The definition of A367863 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367863.P5574119551597937356

`∑{#}[n, (-1)^(n-#)*C(n, #)*C(C(#, 2), n)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A367863

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*C(C(#, 2), n)]` -/
def P5574119551597937356.Spec : Prop :=
  ∀ n, P5574119551597937356.a n = (A367863 n : ℚ)

end A367863

/-! ## A367863.P5521651904872653059

`A369144(n)+A137916(n)`
-/

namespace A367863.P5521651904872653059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369144 n + A137916 n

end

end A367863.P5521651904872653059

namespace A367863

/-- `A369144(n)+A137916(n)` -/
def P5521651904872653059.Spec : Prop :=
  ∀ n, P5521651904872653059.a n = A367863 n

end A367863

/-! ## A367863.P6535415580964600695

`A205295(2*(n+2))+A137916(n)`
-/

namespace A367863.P6535415580964600695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205295 (2 * (n + 2)) + A137916 n

end

end A367863.P6535415580964600695

namespace A367863

/-- `A205295(2*(n+2))+A137916(n)` -/
def P6535415580964600695.Spec : Prop :=
  ∀ n, P6535415580964600695.a n = A367863 n

end A367863

/-!
# A367864: a(n) = Sum_{d|n} d * binomial(n,d).

The programs for A367864, the canonical program `A367864.P11965692508196537716` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367864 has offset 1).

The definition of A367864 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, #*C(n+1, #)]` (program `A367864.P11965692508196537716`, by `A367864.P11965692508196537716.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A367864.P6188327315449160689

`(n+1)*A271654(n+1)`
-/

namespace A367864.P6188327315449160689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A271654 (n + 1)

end

end A367864.P6188327315449160689

namespace A367864

/-- `(n+1)*A271654(n+1)` -/
def P6188327315449160689.Spec : Prop :=
  ∀ n, P6188327315449160689.a n = A367864 (n + 1)

end A367864

/-! ## A367864.P11965692508196537716

`∑{d}[n+1, #*C(n+1, #)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A367864

/-- `∑{d}[n+1, #*C(n+1, #)]` -/
def P11965692508196537716.Spec : Prop :=
  ∀ n, (P11965692508196537716.a n : ℤ) = A367864 (n + 1)

theorem P11965692508196537716.correct : P11965692508196537716.Spec := by
  intro n
  simp only [A367864, Nat.add_sub_cancel]

end A367864

/-! ## A367864.P13076027146677759625

`(n+1)*∑{d}[n+1, A007318(A000217(n+1)-#)]`
-/

namespace A367864.P13076027146677759625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A007318 (A000217 (n + 1) - (d : ℤ)).toNat)

end

end A367864.P13076027146677759625

namespace A367864

/-- `(n+1)*∑{d}[n+1, A007318(A000217(n+1)-#)]` -/
def P13076027146677759625.Spec : Prop :=
  ∀ n, P13076027146677759625.a n = A367864 (n + 1)

end A367864

/-!
# A367865: a(n) = Sum_{d|n} d * phi(d) * mu(d)^2.

The programs for A367865, the canonical program `A367865.P3910194228118029695` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367865 has offset 1).

The definition of A367865 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, #*A000010(#)*A008683(#)²]` (program `A367865.P3910194228118029695`, by `A367865.P3910194228118029695.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A367865.P3910194228118029695

`∑{d}[n+1, #*A000010(#)*A008683(#)²]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A367865

/-- `∑{d}[n+1, #*A000010(#)*A008683(#)²]` -/
def P3910194228118029695.Spec : Prop :=
  ∀ n, P3910194228118029695.a n = A367865 (n + 1)

theorem P3910194228118029695.correct : P3910194228118029695.Spec := by
  intro n
  simp only [A367865, Nat.add_sub_cancel]

end A367865

/-! ## A367865.P10957606308240648526

`∏{p}[n+1, (1-#)²+#]`
-/

namespace A367865.P10957606308240648526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((1 - (p : ℤ)) ^ 2 + (p : ℤ))

end

end A367865.P10957606308240648526

namespace A367865

/-- `∏{p}[n+1, (1-#)²+#]` -/
def P10957606308240648526.Spec : Prop :=
  ∀ n, P10957606308240648526.a n = A367865 (n + 1)

end A367865

/-! ## A367865.P1431633109608164429

`∑{d}[n+1, A202535(#)]`
-/

namespace A367865.P1431633109608164429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A202535 d

end

end A367865.P1431633109608164429

namespace A367865

/-- `∑{d}[n+1, A202535(#)]` -/
def P1431633109608164429.Spec : Prop :=
  ∀ n, P1431633109608164429.a n = A367865 (n + 1)

end A367865

/-! ## A367865.P2467052233788010189

`A057660(∏{p}[1+n, #])`
-/

namespace A367865.P2467052233788010189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057660 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A367865.P2467052233788010189

namespace A367865

/-- `A057660(∏{p}[1+n, #])` -/
def P2467052233788010189.Spec : Prop :=
  ∀ n, P2467052233788010189.a n = A367865 (n + 1)

end A367865

/-! ## A367865.P3140925854549741488

`A069194(∏{p}[n+1, #])`
-/

namespace A367865.P3140925854549741488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069194 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A367865.P3140925854549741488

namespace A367865

/-- `A069194(∏{p}[n+1, #])` -/
def P3140925854549741488.Spec : Prop :=
  ∀ n, P3140925854549741488.a n = A367865 (n + 1)

end A367865

/-! ## A367865.P12361525564489981062

`A091259(∏{p}[n+1, #])`
-/

namespace A367865.P12361525564489981062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091259 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A367865.P12361525564489981062

namespace A367865

/-- `A091259(∏{p}[n+1, #])` -/
def P12361525564489981062.Spec : Prop :=
  ∀ n, P12361525564489981062.a n = A367865 (n + 1)

end A367865

/-! ## A367865.P3494910843431123023

`A279912(∏{p}[n+1, #])`
-/

namespace A367865.P3494910843431123023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279912 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A367865.P3494910843431123023

namespace A367865

/-- `A279912(∏{p}[n+1, #])` -/
def P3494910843431123023.Spec : Prop :=
  ∀ n, P3494910843431123023.a n = A367865 (n + 1)

end A367865

/-! ## A367865.P6875613371778526173

`A318444(∏{p}[n+1, #])`
-/

namespace A367865.P6875613371778526173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318444 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A367865.P6875613371778526173

namespace A367865

/-- `A318444(∏{p}[n+1, #])` -/
def P6875613371778526173.Spec : Prop :=
  ∀ n, P6875613371778526173.a n = A367865 (n + 1)

end A367865

/-! ## A367865.P4610206812589897623

`A057660(A007947(n+1))`
-/

namespace A367865.P4610206812589897623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057660 (A007947 (n + 1)).toNat

end

end A367865.P4610206812589897623

namespace A367865

/-- `A057660(A007947(n+1))` -/
def P4610206812589897623.Spec : Prop :=
  ∀ n, P4610206812589897623.a n = A367865 (n + 1)

end A367865

/-! ## A367865.P1719967383824007698

`A279912(A076618(n+1)-1)`
-/

namespace A367865.P1719967383824007698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279912 (A076618 (n + 1) - 1).toNat

end

end A367865.P1719967383824007698

namespace A367865

/-- `A279912(A076618(n+1)-1)` -/
def P1719967383824007698.Spec : Prop :=
  ∀ n, P1719967383824007698.a n = A367865 (n + 1)

end A367865

/-! ## A367865.P886926525258983311

`A279912(A064549(n+1)/(n+1))`
-/

namespace A367865.P886926525258983311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279912 (SequenceMachineLib.roundAway ((A064549 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A367865.P886926525258983311

namespace A367865

/-- `A279912(A064549(n+1)/(n+1))` -/
def P886926525258983311.Spec : Prop :=
  ∀ n, P886926525258983311.a n = A367865 (n + 1)

end A367865

/-! ## A367865.P17930658805394478525

`A351266(n+1)/A048250(n+1)`
-/

namespace A367865.P17930658805394478525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351266 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ)

end

end A367865.P17930658805394478525

namespace A367865

/-- `A351266(n+1)/A048250(n+1)` -/
def P17930658805394478525.Spec : Prop :=
  ∀ n, P17930658805394478525.a n = (A367865 (n + 1) : ℚ)

end A367865

/-! ## A367865.P11092988088201022191

`A328640(n+1)/A323363(n+1)`
-/

namespace A367865.P11092988088201022191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328640 (n + 1) : ℚ) / (A323363 (n + 1) : ℚ)

end

end A367865.P11092988088201022191

namespace A367865

/-- `A328640(n+1)/A323363(n+1)` -/
def P11092988088201022191.Spec : Prop :=
  ∀ n, P11092988088201022191.a n = (A367865 (n + 1) : ℚ)

end A367865

/-! ## A367865.P469828530430879615

`∑{d}[n+1, A023900(#)*A064549((n+1)/#)]`
-/

namespace A367865.P469828530430879615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A064549 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A367865.P469828530430879615

namespace A367865

/-- `∑{d}[n+1, A023900(#)*A064549((n+1)/#)]` -/
def P469828530430879615.Spec : Prop :=
  ∀ n, P469828530430879615.a n = A367865 (n + 1)

end A367865

/-! ## A367865.P12233350382834011268

`∑{d}[n+1, A055615(#)*A345261((n+1)/#)]`
-/

namespace A367865.P12233350382834011268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A345261 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A367865.P12233350382834011268

namespace A367865

/-- `∑{d}[n+1, A055615(#)*A345261((n+1)/#)]` -/
def P12233350382834011268.Spec : Prop :=
  ∀ n, P12233350382834011268.a n = A367865 (n + 1)

end A367865

/-! ## A367865.P7737363653545963553

`A279912(A083346(A302138(n+1)))`
-/

namespace A367865.P7737363653545963553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279912 (A083346 (A302138 (n + 1)).toNat).toNat

end

end A367865.P7737363653545963553

namespace A367865

/-- `A279912(A083346(A302138(n+1)))` -/
def P7737363653545963553.Spec : Prop :=
  ∀ n, P7737363653545963553.a n = A367865 (n + 1)

end A367865

/-! ## A367865.P16744934968101802601

`A008836(n+1)/A323363(n+1)*A351266(n+1)`
-/

namespace A367865.P16744934968101802601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008836 (n + 1) : ℚ) / (A323363 (n + 1) : ℚ) * (A351266 (n + 1) : ℚ)

end

end A367865.P16744934968101802601

namespace A367865

/-- `A008836(n+1)/A323363(n+1)*A351266(n+1)` -/
def P16744934968101802601.Spec : Prop :=
  ∀ n, P16744934968101802601.a n = (A367865 (n + 1) : ℚ)

end A367865

/-! ## A367865.P2790717574708734537

`A279912(A007947((n+1)²))`
-/

namespace A367865.P2790717574708734537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279912 (A007947 ((n + 1) ^ 2)).toNat

end

end A367865.P2790717574708734537

namespace A367865

/-- `A279912(A007947((n+1)²))` -/
def P2790717574708734537.Spec : Prop :=
  ∀ n, P2790717574708734537.a n = A367865 (n + 1)

end A367865

/-! ## A367865.P4216352546650998688

`∑{d}[A007947(n+1), A000010(#²)]`
-/

namespace A367865.P4216352546650998688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 (d ^ 2)

end

end A367865.P4216352546650998688

namespace A367865

/-- `∑{d}[A007947(n+1), A000010(#²)]` -/
def P4216352546650998688.Spec : Prop :=
  ∀ n, P4216352546650998688.a n = A367865 (n + 1)

end A367865

/-! ## A367865.P14720313315545132109

`∑{d}[A062953(n+1), A000010(#²)]`
-/

namespace A367865.P14720313315545132109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 (d ^ 2)

end

end A367865.P14720313315545132109

namespace A367865

/-- `∑{d}[A062953(n+1), A000010(#²)]` -/
def P14720313315545132109.Spec : Prop :=
  ∀ n, P14720313315545132109.a n = A367865 (n + 1)

end A367865

/-!
# A367866: a(n) = Sum_{d|n} d * sigma(d) * mu(d)^2.

The programs for A367866, the canonical program `A367866.P475655793960167772` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367866 has offset 1).

The definition of A367866 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, #*A000203(#)*A008683(#)²]` (program `A367866.P475655793960167772`, by `A367866.P475655793960167772.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A367866.P475655793960167772

`∑{d}[n+1, #*A000203(#)*A008683(#)²]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A367866

/-- `∑{d}[n+1, #*A000203(#)*A008683(#)²]` -/
def P475655793960167772.Spec : Prop :=
  ∀ n, P475655793960167772.a n = A367866 (n + 1)

theorem P475655793960167772.correct : P475655793960167772.Spec := by
  intro n
  simp only [A367866, Nat.add_sub_cancel]

end A367866

/-! ## A367866.P5828122825691168086

`A000203(A007947(n+1)²)`
-/

namespace A367866.P5828122825691168086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007947 (n + 1) ^ 2).toNat

end

end A367866.P5828122825691168086

namespace A367866

/-- `A000203(A007947(n+1)²)` -/
def P5828122825691168086.Spec : Prop :=
  ∀ n, P5828122825691168086.a n = A367866 (n + 1)

end A367866

/-! ## A367866.P5232879074479788716

`∏{p}[n+1, #²+1+#]`
-/

namespace A367866.P5232879074479788716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p ^ 2 + 1 + p)

end

end A367866.P5232879074479788716

namespace A367866

/-- `∏{p}[n+1, #²+1+#]` -/
def P5232879074479788716.Spec : Prop :=
  ∀ n, (P5232879074479788716.a n : ℤ) = A367866 (n + 1)

end A367866

/-! ## A367866.P2140432319620914032

`A001001(∏{p}[n+1, #])`
-/

namespace A367866.P2140432319620914032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001001 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A367866.P2140432319620914032

namespace A367866

/-- `A001001(∏{p}[n+1, #])` -/
def P2140432319620914032.Spec : Prop :=
  ∀ n, P2140432319620914032.a n = A367866 (n + 1)

end A367866

/-! ## A367866.P13954984088617762054

`A060983(∏{p}[n+1, #])`
-/

namespace A367866.P13954984088617762054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060983 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A367866.P13954984088617762054

namespace A367866

/-- `A060983(∏{p}[n+1, #])` -/
def P13954984088617762054.Spec : Prop :=
  ∀ n, P13954984088617762054.a n = A367866 (n + 1)

end A367866

/-! ## A367866.P14848671087995100545

`A065764(∏{p}[n+1, #])`
-/

namespace A367866.P14848671087995100545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065764 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A367866.P14848671087995100545

namespace A367866

/-- `A065764(∏{p}[n+1, #])` -/
def P14848671087995100545.Spec : Prop :=
  ∀ n, P14848671087995100545.a n = A367866 (n + 1)

end A367866

/-! ## A367866.P2306232651602711668

`A160889(∏{p}[n+1, #])`
-/

namespace A367866.P2306232651602711668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160889 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A367866.P2306232651602711668

namespace A367866

/-- `A160889(∏{p}[n+1, #])` -/
def P2306232651602711668.Spec : Prop :=
  ∀ n, P2306232651602711668.a n = A367866 (n + 1)

end A367866

/-! ## A367866.P952707356290951443

`A362632(∏{p}[n+1, #])`
-/

namespace A367866.P952707356290951443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362632 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A367866.P952707356290951443

namespace A367866

/-- `A362632(∏{p}[n+1, #])` -/
def P952707356290951443.Spec : Prop :=
  ∀ n, P952707356290951443.a n = A367866 (n + 1)

end A367866

/-! ## A367866.P9659111921651506206

`A365346(∏{p}[n+1, #])`
-/

namespace A367866.P9659111921651506206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365346 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A367866.P9659111921651506206

namespace A367866

/-- `A365346(∏{p}[n+1, #])` -/
def P9659111921651506206.Spec : Prop :=
  ∀ n, P9659111921651506206.a n = A367866 (n + 1)

end A367866

/-! ## A367866.P12254027050247882962

`A369717(∏{p}[n+1, #])`
-/

namespace A367866.P12254027050247882962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369717 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A367866.P12254027050247882962

namespace A367866

/-- `A369717(∏{p}[n+1, #])` -/
def P12254027050247882962.Spec : Prop :=
  ∀ n, P12254027050247882962.a n = A367866 (n + 1)

end A367866

/-! ## A367866.P18059029596635779555

`A001001(A007947(n+1))`
-/

namespace A367866.P18059029596635779555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001001 (A007947 (n + 1)).toNat

end

end A367866.P18059029596635779555

namespace A367866

/-- `A001001(A007947(n+1))` -/
def P18059029596635779555.Spec : Prop :=
  ∀ n, P18059029596635779555.a n = A367866 (n + 1)

end A367866

/-! ## A367866.P6370598132357786300

`A365346(A007948(n+1))`
-/

namespace A367866.P6370598132357786300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365346 (A007948 (n + 1)).toNat

end

end A367866.P6370598132357786300

namespace A367866

/-- `A365346(A007948(n+1))` -/
def P6370598132357786300.Spec : Prop :=
  ∀ n, P6370598132357786300.a n = A367866 (n + 1)

end A367866

/-! ## A367866.P10807986230721951692

`A365346(A066990(n+1))`
-/

namespace A367866.P10807986230721951692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365346 (A066990 (n + 1)).toNat

end

end A367866.P10807986230721951692

namespace A367866

/-- `A365346(A066990(n+1))` -/
def P10807986230721951692.Spec : Prop :=
  ∀ n, P10807986230721951692.a n = A367866 (n + 1)

end A367866

/-! ## A367866.P2580819311301074298

`A063453(n+1)/A023900(n+1)`
-/

namespace A367866.P2580819311301074298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063453 (n + 1) : ℚ) / (A023900 (n + 1) : ℚ)

end

end A367866.P2580819311301074298

namespace A367866

/-- `A063453(n+1)/A023900(n+1)` -/
def P2580819311301074298.Spec : Prop :=
  ∀ n, P2580819311301074298.a n = (A367866 (n + 1) : ℚ)

end A367866

/-! ## A367866.P9716446684949271356

`∑{d}[n+1, A062953(#)*A351435((n+1)/#)]`
-/

namespace A367866.P9716446684949271356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062953 d * A351435 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A367866.P9716446684949271356

namespace A367866

/-- `∑{d}[n+1, A062953(#)*A351435((n+1)/#)]` -/
def P9716446684949271356.Spec : Prop :=
  ∀ n, P9716446684949271356.a n = A367866 (n + 1)

end A367866

/-! ## A367866.P4687933203723338924

`∑{d}[n+1, A175926(#)*A334659((n+1)/#)]`
-/

namespace A367866.P4687933203723338924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A175926 d * A334659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A367866.P4687933203723338924

namespace A367866

/-- `∑{d}[n+1, A175926(#)*A334659((n+1)/#)]` -/
def P4687933203723338924.Spec : Prop :=
  ∀ n, P4687933203723338924.a n = A367866 (n + 1)

end A367866

/-! ## A367866.P2362857878828272698

`A365346(A007913(A356191(n+1)))`
-/

namespace A367866.P2362857878828272698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365346 (A007913 (A356191 (n + 1)).toNat).toNat

end

end A367866.P2362857878828272698

namespace A367866

/-- `A365346(A007913(A356191(n+1)))` -/
def P2362857878828272698.Spec : Prop :=
  ∀ n, P2362857878828272698.a n = A367866 (n + 1)

end A367866

/-! ## A367866.P11775231238149976882

`A365346(A007913(A372329(n+1)))`
-/

namespace A367866.P11775231238149976882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365346 (A007913 (A372329 (n + 1)).toNat).toNat

end

end A367866.P11775231238149976882

namespace A367866

/-- `A365346(A007913(A372329(n+1)))` -/
def P11775231238149976882.Spec : Prop :=
  ∀ n, P11775231238149976882.a n = A367866 (n + 1)

end A367866

/-! ## A367866.P6079091864964340346

`∑{d}[∏{p}[1+n, #²], #]`
-/

namespace A367866.P6079091864964340346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A367866.P6079091864964340346

namespace A367866

/-- `∑{d}[∏{p}[1+n, #²], #]` -/
def P6079091864964340346.Spec : Prop :=
  ∀ n, (P6079091864964340346.a n : ℤ) = A367866 (n + 1)

end A367866

/-! ## A367866.P9086161814880119184

`∑{d}[exp(∑{p}[n+1, log(#)])², #]`
-/

namespace A367866.P9086161814880119184
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ p ∈ Nat.primeFactors (f2 n), Real.log (p : ℝ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A367866.P9086161814880119184

namespace A367866

/-- `∑{d}[exp(∑{p}[n+1, log(#)])², #]` -/
def P9086161814880119184.Spec : Prop :=
  ∀ n, (P9086161814880119184.a n : ℤ) = A367866 (n + 1)

end A367866

/-!
# A367867: Number of labeled simple graphs with n vertices contradicting a strict version of the axiom of choice.

The programs for A367867, there is no canonical definition to state claims against.
-/

/-! ## A367867.P12026782569363280973

`A006125(n)-A133686(n)`
-/

namespace A367867.P12026782569363280973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - A133686 n

end

end A367867.P12026782569363280973

/-! ## A367867.P7077042660433389174

`∏[A011782(n)]-A133686(n)`
-/

namespace A367867.P7077042660433389174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A133686 n

end

end A367867.P7077042660433389174

/-! ## A367867.P16615979978482780414

`∏[A166444(n+1)]-A133686(n)`
-/

namespace A367867.P16615979978482780414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A133686 n

end

end A367867.P16615979978482780414

/-! ## A367867.P8482502094256916494

`A000079(A161680(n))-A133686(n)`
-/

namespace A367867.P8482502094256916494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A161680 n).toNat - A133686 n

end

end A367867.P8482502094256916494

/-! ## A367867.P11250566049039873443

`sqrt(A053763(n))-A133686(n)`
-/

namespace A367867.P11250566049039873443
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053763 n : ℝ) - (A133686 n : ℝ)

end

end A367867.P11250566049039873443

/-!
# A367868: Number of labeled simple graphs covering n vertices and contradicting a strict version of the axiom of choice.

The programs for A367868, there is no canonical definition to state claims against.
-/

/-! ## A367868.P9154708388411958646

`A006129(n)-A367869(n)`
-/

namespace A367868.P9154708388411958646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006129 n - A367869 n

end

end A367868.P9154708388411958646

/-! ## A367868.P3581338724444796653

`A100743(n)+A327227(n)-A367869(n)`
-/

namespace A367868.P3581338724444796653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100743 n + (A327227 n - A367869 n)

end

end A367868.P3581338724444796653

/-!
# A367869: Number of labeled simple graphs covering n vertices and satisfying a strict version of the axiom of choice.

The programs for A367869, there is no canonical definition to state claims against.
-/

/-! ## A367869.P12102519768594892605

`A006129(n)-A367868(n)`
-/

namespace A367869.P12102519768594892605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006129 n - A367868 n

end

end A367869.P12102519768594892605

/-! ## A367869.P8658044660347442281

`A327377(∑[n])+A327227(n)-A367868(n)`
-/

namespace A367869.P8658044660347442281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327377 (∑ j ∈ Finset.range (n + 1), f1 j) + A327227 n - A367868 n

end

end A367869.P8658044660347442281

/-! ## A367869.P5789305062034603721

`∏[A011782(n)]-A327367(n)-A367868(n)`
-/

namespace A367869.P5789305062034603721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A327367 n - A367868 n

end

end A367869.P5789305062034603721

/-! ## A367869.P12912708201273230919

`A016116(A103505(n))-A327367(n)-A367868(n)`
-/

namespace A367869.P12912708201273230919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A103505 n).toNat - A327367 n - A367868 n

end

end A367869.P12912708201273230919

/-! ## A367869.P974649134376746096

`A198261(∑[n])-A367868(n)`
-/

namespace A367869.P974649134376746096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198261 (∑ j ∈ Finset.range (n + 1), f1 j) - A367868 n

end

end A367869.P974649134376746096

/-!
# A367870: a(n) = Sum_{d|n, d odd} (n-d).

The programs for A367870, the canonical program `A367870.P3261918350467240858` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367870 has offset 1).

The definition of A367870 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367870.P3261918350467240858

`A245579(n+1)-A000593(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A367870

/-- `A245579(n+1)-A000593(n+1)` -/
def P3261918350467240858.Spec : Prop :=
  ∀ n, P3261918350467240858.a n = A367870 (n + 1)

theorem P3261918350467240858.correct : P3261918350467240858.Spec := by
  intro n
  simp only [A367870, Nat.add_sub_cancel]

end A367870

/-! ## A367870.P11248609569613583378

`(n+1)*A001227(n+1)-A000593(n+1)`
-/

namespace A367870.P11248609569613583378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001227 (n + 1) - A000593 (n + 1)

end

end A367870.P11248609569613583378

namespace A367870

/-- `(n+1)*A001227(n+1)-A000593(n+1)` -/
def P11248609569613583378.Spec : Prop :=
  ∀ n, P11248609569613583378.a n = A367870 (n + 1)

end A367870

/-! ## A367870.P17149951920977468281

`∑{d}[(n+1)/2^val(n+1, 2), n+1-#]`
-/

namespace A367870.P17149951920977468281
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, ((n + 1 : ℤ) - (d : ℤ))

end

end A367870.P17149951920977468281

namespace A367870

/-- `∑{d}[(n+1)/2^val(n+1, 2), n+1-#]` -/
def P17149951920977468281.Spec : Prop :=
  ∀ n, P17149951920977468281.a n = A367870 (n + 1)

end A367870

/-! ## A367870.P2512667394615664784

`∑{d}[n+1, (n+1)*#%2]-∑{d}[n+1, #*#%2]`
-/

namespace A367870.P2512667394615664784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (n + 1) * (d % 2) : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d * (d % 2) : ℕ) : ℤ)

end

end A367870.P2512667394615664784

namespace A367870

/-- `∑{d}[n+1, (n+1)*#%2]-∑{d}[n+1, #*#%2]` -/
def P2512667394615664784.Spec : Prop :=
  ∀ n, P2512667394615664784.a n = A367870 (n + 1)

end A367870

/-! ## A367870.P13938834633613003573

`∑{d}[A000265(n+1), n+1-#]`
-/

namespace A367870.P13938834633613003573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1 : ℤ) - (d : ℤ))

end

end A367870.P13938834633613003573

namespace A367870

/-- `∑{d}[A000265(n+1), n+1-#]` -/
def P13938834633613003573.Spec : Prop :=
  ∀ n, P13938834633613003573.a n = A367870 (n + 1)

end A367870

/-! ## A367870.P3313519902608678065

`A349212(n+1)-A348915(n+1)`
-/

namespace A367870.P3313519902608678065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349212 (n + 1) - A348915 (n + 1)

end

end A367870.P3313519902608678065

namespace A367870

/-- `A349212(n+1)-A348915(n+1)` -/
def P3313519902608678065.Spec : Prop :=
  ∀ n, P3313519902608678065.a n = A367870 (n + 1)

end A367870

/-! ## A367870.P12451548194710284471

`∑{d}[n+1, A065608(#)*A319997((n+1)/#)]`
-/

namespace A367870.P12451548194710284471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065608 d * A319997 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A367870.P12451548194710284471

namespace A367870

/-- `∑{d}[n+1, A065608(#)*A319997((n+1)/#)]` -/
def P12451548194710284471.Spec : Prop :=
  ∀ n, P12451548194710284471.a n = A367870 (n + 1)

end A367870

/-! ## A367870.P14596424930781782336

`∑{d}[n+1, A069914(#)*A361019((n+1)/#)]`
-/

namespace A367870.P14596424930781782336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069914 d * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A367870.P14596424930781782336

namespace A367870

/-- `∑{d}[n+1, A069914(#)*A361019((n+1)/#)]` -/
def P14596424930781782336.Spec : Prop :=
  ∀ n, P14596424930781782336.a n = A367870 (n + 1)

end A367870

/-! ## A367870.P17578413511266846813

`A086670(n+1)+A245579(n+1)-A286015(n+1)`
-/

namespace A367870.P17578413511266846813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086670 (n + 1) + (A245579 (n + 1) - A286015 (n + 1))

end

end A367870.P17578413511266846813

namespace A367870

/-- `A086670(n+1)+A245579(n+1)-A286015(n+1)` -/
def P17578413511266846813.Spec : Prop :=
  ∀ n, P17578413511266846813.a n = A367870 (n + 1)

theorem P17578413511266846813.correct : P17578413511266846813.Spec := by
  intro n
  simp only [A367870, Nat.add_sub_cancel, A367870.P17578413511266846813.a, A367870.P3261918350467240858.a, A000593, A000593.P10331878810394225172.f1, A000593.P10331878810394225172.a, A086670, A086670.P715310048333815188.a, A245579, A245579.P1038564678599800465.a, A286015, A286015.P16729021585373301699.f1, A286015.P16729021585373301699.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A123684, A123684.P10917051134979273385.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A367870

/-! ## A367870.P8385943792345315413

`∑{d}[n+1, #*A124625((n+1)/#)]`
-/

namespace A367870.P8385943792345315413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A124625 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A367870.P8385943792345315413

namespace A367870

/-- `∑{d}[n+1, #*A124625((n+1)/#)]` -/
def P8385943792345315413.Spec : Prop :=
  ∀ n, P8385943792345315413.a n = A367870 (n + 1)

end A367870

/-!
# A367872: Number of dissections of a convex (4n+4)-sided polygon into n hexagons and one square (up to equivalence).

The programs for A367872, the canonical program `A367872.P4169661215544779242` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367872 has offset 0).

The definition of A367872 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367872.P4169661215544779242

`C(5*n+2, n)*(n+3)/(4*n+3)`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A367872

/-- `C(5*n+2, n)*(n+3)/(4*n+3)` -/
def P4169661215544779242.Spec : Prop :=
  ∀ n, P4169661215544779242.a n = (A367872 n : ℚ)

end A367872

/-! ## A367872.P11854123784433538942

`A069270(A132209(n+1))`
-/

namespace A367872.P11854123784433538942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (A132209 (n + 1)).toNat

end

end A367872.P11854123784433538942

namespace A367872

/-- `A069270(A132209(n+1))` -/
def P11854123784433538942.Spec : Prop :=
  ∀ n, P11854123784433538942.a n = A367872 n

end A367872

/-! ## A367872.P6788066764278480690

`A069270(A142463(n+1))`
-/

namespace A367872.P6788066764278480690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (A142463 (n + 1)).toNat

end

end A367872.P6788066764278480690

namespace A367872

/-- `A069270(A142463(n+1))` -/
def P6788066764278480690.Spec : Prop :=
  ∀ n, P6788066764278480690.a n = A367872 n

end A367872

/-! ## A367872.P9520169071531626671

`A069270(A000217(2*(n+1))+n)`
-/

namespace A367872.P9520169071531626671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (A000217 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A367872.P9520169071531626671

namespace A367872

/-- `A069270(A000217(2*(n+1))+n)` -/
def P9520169071531626671.Spec : Prop :=
  ∀ n, P9520169071531626671.a n = A367872 n

end A367872

/-! ## A367872.P5780721863096985646

`A069270(A055998(2*n+1)-n)`
-/

namespace A367872.P5780721863096985646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (A055998 (2 * n + 1) - (n : ℤ)).toNat

end

end A367872.P5780721863096985646

namespace A367872

/-- `A069270(A055998(2*n+1)-n)` -/
def P5780721863096985646.Spec : Prop :=
  ∀ n, P5780721863096985646.a n = A367872 n

end A367872

/-!
# A367874: Expansion of e.g.f. exp(x * (2 + exp(x))).

The programs for A367874, the canonical program `A367874.P12182671070731356257` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367874 has offset 0).

The definition of A367874 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367874.P12182671070731356257

`∑{#}[n, (#+2)^(n-#)*C(n, #)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A367874

/-- `∑{#}[n, (#+2)^(n-#)*C(n, #)]` -/
def P12182671070731356257.Spec : Prop :=
  ∀ n, P12182671070731356257.a n = (A367874 n : ℚ)

end A367874

/-! ## A367874.P3005810023414619216

`A258579(∑[n+2])`
-/

namespace A367874.P3005810023414619216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258579 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A367874.P3005810023414619216

namespace A367874

/-- `A258579(∑[n+2])` -/
def P3005810023414619216.Spec : Prop :=
  ∀ n, P3005810023414619216.a n = A367874 n

end A367874

/-!
# A367875: Expansion of e.g.f. exp(x * (3 + exp(x))).

The programs for A367875, the canonical program `A367875.P4378622019441119363` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367875 has offset 0).

The definition of A367875 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367875.P4378622019441119363

`∑{#}[n, (#+3)^(n-#)*C(n, #)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A367875

/-- `∑{#}[n, (#+3)^(n-#)*C(n, #)]` -/
def P4378622019441119363.Spec : Prop :=
  ∀ n, P4378622019441119363.a n = (A367875 n : ℚ)

end A367875

/-!
# A367876: Expansion of e.g.f. exp(x * (2 - exp(x))).

The programs for A367876, the canonical program `A367876.P5702908443348808228` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367876 has offset 0).

The definition of A367876 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367876.P5702908443348808228

`∑{#}[n, (-1)^#*(#+2)^(n-#)*C(n, #)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A367876

/-- `∑{#}[n, (-1)^#*(#+2)^(n-#)*C(n, #)]` -/
def P5702908443348808228.Spec : Prop :=
  ∀ n, P5702908443348808228.a n = (A367876 n : ℚ)

end A367876

/-! ## A367876.P14994027655600494815

`∑{#}[n, C(n, #)*A292893(#)]`
-/

namespace A367876.P14994027655600494815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A292893 k

end

end A367876.P14994027655600494815

namespace A367876

/-- `∑{#}[n, C(n, #)*A292893(#)]` -/
def P14994027655600494815.Spec : Prop :=
  ∀ n, P14994027655600494815.a n = A367876 n

end A367876

/-!
# A367877: Expansion of e.g.f. exp(x * (3 - 2*exp(x))).

The programs for A367877, the canonical program `A367877.P7885735357021003225` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367877 has offset 0).

The definition of A367877 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367877.P7885735357021003225

`∑{#}[n, (-2)^#*(#+3)^(n-#)*C(n, #)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A367877

/-- `∑{#}[n, (-2)^#*(#+3)^(n-#)*C(n, #)]` -/
def P7885735357021003225.Spec : Prop :=
  ∀ n, P7885735357021003225.a n = (A367877 n : ℚ)

end A367877

/-!
# A367878: Expansion of e.g.f. 1/(1 + 2 * x * log(1-x)).

The programs for A367878, there is no canonical definition to state claims against.
-/

/-! ## A367878.P10033029420885375669

`A004526(A375689(n)+A375671(n))`
-/

namespace A367878.P10033029420885375669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A375689 n + A375671 n).toNat

end

end A367878.P10033029420885375669

/-! ## A367878.P8262294530729942515

`A006519(A002110(n))*A375688(n)`
-/

namespace A367878.P8262294530729942515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A002110 n).toNat * A375688 n

end

end A367878.P8262294530729942515

/-!
# A367879: Expansion of e.g.f. 1/(1 + 3 * x * log(1-x)).

The programs for A367879, there is no canonical definition to state claims against.
-/

/-! ## A367879.P17456564429294802528

`A335465(A323843(n))*A371141(n)`
-/

namespace A367879.P17456564429294802528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335465 (A323843 n).toNat * A371141 n

end

end A367879.P17456564429294802528

/-! ## A367879.P13400539017765284674

`A008585(A371141(n))%A112783(n+1)`
-/

namespace A367879.P13400539017765284674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008585 (A371141 n).toNat) (A112783 (n + 1))

end

end A367879.P13400539017765284674

/-!
# A367880: Expansion of e.g.f. 1/(1 - 2 * x * (exp(x) - 1)).

The programs for A367880, there is no canonical definition to state claims against.
-/

/-! ## A367880.P6188058465074185856

`A004526(A356798(n)+A351734(n))`
-/

namespace A367880.P6188058465074185856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A356798 n + A351734 n).toNat

end

end A367880.P6188058465074185856

/-! ## A367880.P8760688274281810547

`A026741(A356798(n)+A351734(n))`
-/

namespace A367880.P8760688274281810547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A356798 n + A351734 n).toNat

end

end A367880.P8760688274281810547

/-!
# A367881: Expansion of e.g.f. 1/(1 - 3 * x * (exp(x) - 1)).

The programs for A367881, there is no canonical definition to state claims against.
-/

/-! ## A367881.P11436198628015973662

`A005043(a(n-1))-4` with `a(0)=1, a(1)=0, a(2)=6, a(3)=9`
-/

namespace A367881.P11436198628015973662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 6, 9] fun n a =>
  A005043 (a (n - 1)).toNat - 4

end

end A367881.P11436198628015973662

/-!
# A367882: Table T(n, k) read by downward antidiagonals: T(n, k) = floor((4*T(n, k-1)+3)/3) starting with T(n, 0) = 4*n.

The programs for A367882, there is no canonical definition to state claims against.
-/

/-! ## A367882.P10167100891266503264

`A191671(n+1)-1`
-/

namespace A367882.P10167100891266503264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191671 (n + 1) - 1

end

end A367882.P10167100891266503264

/-! ## A367882.P7850562550930182859

`abs(A191671(n+1)+A057428(n+1))`
-/

namespace A367882.P7850562550930182859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A191671 (n + 1) + A057428 (n + 1)|

end

end A367882.P7850562550930182859

/-! ## A367882.P1446781424412196761

`A302050(A065091(n+1))+A191671(n+1)`
-/

namespace A367882.P1446781424412196761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A065091 (n + 1)).toNat + A191671 (n + 1)

end

end A367882.P1446781424412196761

/-! ## A367882.P135988994525847473

`A302050(A000040(2*n+3))+A191671(n+1)`
-/

namespace A367882.P135988994525847473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A000040 (2 * n + 3)).toNat + A191671 (n + 1)

end

end A367882.P135988994525847473

/-! ## A367882.P18058154677212786710

`A291914(A000040(n+1))+A191671(n+1)`
-/

namespace A367882.P18058154677212786710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (A000040 (n + 1)).toNat + A191671 (n + 1)

end

end A367882.P18058154677212786710

/-! ## A367882.P7642887118348649097

`A023443(A191671(n+1))`
-/

namespace A367882.P7642887118348649097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A191671 (n + 1)).toNat

end

end A367882.P7642887118348649097

/-! ## A367882.P8251020435697830582

`A318578(A054582(n))-1`
-/

namespace A367882.P8251020435697830582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318578 (A054582 n).toNat - 1

end

end A367882.P8251020435697830582

/-! ## A367882.P14846709706178138092

`A318578(A075300(n)+1)-1`
-/

namespace A367882.P14846709706178138092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318578 (A075300 n + 1).toNat - 1

end

end A367882.P14846709706178138092

/-!
# A367883: Expansion of e.g.f. 1/(1 + x * log(1-2*x)).

The programs for A367883, there is no canonical definition to state claims against.
-/

/-! ## A367883.P14627673857098619665

`A245092(A006882(n)*A337038(n))`
-/

namespace A367883.P14627673857098619665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A006882 n * A337038 n).toNat

end

end A367883.P14627673857098619665

/-!
# A367884: Expansion of e.g.f. 1/(1 + x * log(1-3*x)).

The programs for A367884, there is no canonical definition to state claims against.
-/

/-! ## A367884.P647863277174665366

`xor(n%4, A330972(n!))`
-/

namespace A367884.P647863277174665366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n % 4 : ℕ) : ℤ) (A330972 (Nat.factorial n))

end

end A367884.P647863277174665366

/-!
# A367885: Expansion of e.g.f. 1/(1 - x * (exp(2*x) - 1)).

The programs for A367885, there is no canonical definition to state claims against.
-/

/-! ## A367885.P1508075714123525862

`A001227(A001147(n))*A052506(n)`
-/

namespace A367885.P1508075714123525862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A001147 n).toNat * A052506 n

end

end A367885.P1508075714123525862

/-! ## A367885.P3368824725460564283

`A001227(A002110(n))*A052506(n)`
-/

namespace A367885.P3368824725460564283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A002110 n).toNat * A052506 n

end

end A367885.P3368824725460564283

/-!
# A367886: Expansion of e.g.f. 1/(1 - x * (exp(3*x) - 1)).

The programs for A367886, there is no canonical definition to state claims against.
-/

/-! ## A367886.P1984932957084264346

`A097246(A037223(2*n))*A212804(n)`
-/

namespace A367886.P1984932957084264346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097246 (A037223 (2 * n)).toNat * A212804 n

end

end A367886.P1984932957084264346

/-!
# A367887: Expansion of e.g.f. exp(2*x) / (1 - 2*sinh(x)).

The programs for A367887, there is no canonical definition to state claims against.
-/

/-! ## A367887.P10309640992035534365

`∑{#}[n, A341725(C(n+1, 2)+#)]`
-/

namespace A367887.P10309640992035534365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A341725 (Nat.choose (n + 1) 2 + k)

end

end A367887.P10309640992035534365

/-! ## A367887.P11594255124712798697

`(-1)^n*∑{#}[n, (-2)^#*A341724(C(n+1, 2)+#)]`
-/

namespace A367887.P11594255124712798697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ k ∈ Finset.range (f1 n + 1), (-2) ^ k * A341724 (Nat.choose (n + 1) 2 + k))

end

end A367887.P11594255124712798697

/-! ## A367887.P3370728454126200919

`A000557(n)+A005923(n)-1`
-/

namespace A367887.P3370728454126200919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000557 n + (A005923 n - 1)

end

end A367887.P3370728454126200919

/-! ## A367887.P5707103689070681186

`A000556(n)+A245155(n)-1`
-/

namespace A367887.P5707103689070681186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000556 n + (A245155 n - 1)

end

end A367887.P5707103689070681186

/-!
# A367888: Expansion of e.g.f. exp(3*(exp(x) - 1) - 2*x).

The programs for A367888, the canonical program `A367888.P14331360058282585036` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367888 has offset 0).

The definition of A367888 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367888.P14331360058282585036

`∑{#}[n, C(n, #)*(-2)^(n-#)*A027710(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A367888

/-- `∑{#}[n, C(n, #)*(-2)^(n-#)*A027710(#)]` -/
def P14331360058282585036.Spec : Prop :=
  ∀ n, P14331360058282585036.a n = (A367888 n : ℚ)

end A367888

/-! ## A367888.P11910894866472984590

`∑{#}[n, C(n, #)*A367890(#)]`
-/

namespace A367888.P11910894866472984590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A367890 k

end

end A367888.P11910894866472984590

namespace A367888

/-- `∑{#}[n, C(n, #)*A367890(#)]` -/
def P11910894866472984590.Spec : Prop :=
  ∀ n, P11910894866472984590.a n = A367888 n

end A367888

/-!
# A367889: Expansion of e.g.f. exp(3*(exp(x) - 1) + 2*x).

The programs for A367889, the canonical program `A367889.P16077087876121511633` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367889 has offset 0).

The definition of A367889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367889.P16077087876121511633

`∑{#}[n, C(n, #)*2^(n-#)*A027710(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A367889

/-- `∑{#}[n, C(n, #)*2^(n-#)*A027710(#)]` -/
def P16077087876121511633.Spec : Prop :=
  ∀ n, P16077087876121511633.a n = (A367889 n : ℚ)

end A367889

/-! ## A367889.P2905372728012248277

`Δ[A078940(n)/3]`
-/

namespace A367889.P2905372728012248277
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078940 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A367889.P2905372728012248277

namespace A367889

/-- `Δ[A078940(n)/3]` -/
def P2905372728012248277.Spec : Prop :=
  ∀ n, P2905372728012248277.a n = (A367889 n : ℚ)

end A367889

/-! ## A367889.P13944661127571955809

`Δ[A027710(n+1)/9]`
-/

namespace A367889.P13944661127571955809
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027710 (n + 1) : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A367889.P13944661127571955809

namespace A367889

/-- `Δ[A027710(n+1)/9]` -/
def P13944661127571955809.Spec : Prop :=
  ∀ n, P13944661127571955809.a n = (A367889 n : ℚ)

end A367889

/-!
# A367890: Expansion of e.g.f. exp(3*(exp(x) - 1 - x)).

The programs for A367890, the canonical program `A367890.P13758826429019141353` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367890 has offset 0).

The definition of A367890 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367890.P13758826429019141353

`∑{#}[n, C(n, #)*(-3)^(n-#)*A027710(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A367890

/-- `∑{#}[n, C(n, #)*(-3)^(n-#)*A027710(#)]` -/
def P13758826429019141353.Spec : Prop :=
  ∀ n, P13758826429019141353.a n = (A367890 n : ℚ)

end A367890

/-! ## A367890.P7436020597856016025

`∑{#}[n, (-1)^(n-#)*C(n, #)*A367888(#)]`
-/

namespace A367890.P7436020597856016025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A367888 k : ℚ)

end

end A367890.P7436020597856016025

namespace A367890

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A367888(#)]` -/
def P7436020597856016025.Spec : Prop :=
  ∀ n, P7436020597856016025.a n = (A367890 n : ℚ)

end A367890

/-!
# A367891: Expansion of e.g.f. exp(4*(exp(x) - 1 - x)).

The programs for A367891, the canonical program `A367891.P16492733751129529228` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367891 has offset 0).

The definition of A367891 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367891.P16492733751129529228

`∑{#}[n, C(n, #)*(-4)^(n-#)*A078944(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A367891

/-- `∑{#}[n, C(n, #)*(-4)^(n-#)*A078944(#)]` -/
def P16492733751129529228.Spec : Prop :=
  ∀ n, P16492733751129529228.a n = (A367891 n : ℚ)

end A367891

/-! ## A367891.P3818842575014354045

`and(A002422(n), A182630(A015451(n)))`
-/

namespace A367891.P3818842575014354045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002422 n) (A182630 (A015451 n).toNat)

end

end A367891.P3818842575014354045

namespace A367891

/-- `and(A002422(n), A182630(A015451(n)))` -/
def P3818842575014354045.Spec : Prop :=
  ∀ n, P3818842575014354045.a n = A367891 n

end A367891

/-!
# A367892: Total number of steps of Euclid's GCD algorithm to calculate gcd(x,y) for all pairs x,y in the range 1 <= y <= x <= n.

The programs for A367892, there is no canonical definition to state claims against.
-/

/-! ## A367892.P17865919488980284144

`a(n-1)+1+A049826(n+1)` with `a(0)=1`
-/

namespace A367892.P17865919488980284144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 + A049826 (n + 1)

end

end A367892.P17865919488980284144

/-! ## A367892.P11395172868106411263

`∑[A049826(1+n)+1]`
-/

namespace A367892.P11395172868106411263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049826 (1 + n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367892.P11395172868106411263

/-! ## A367892.P15355768111456564234

`∑[A049817(n+1)+n+1]`
-/

namespace A367892.P15355768111456564234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049817 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367892.P15355768111456564234

/-! ## A367892.P7105682910084609498

`A049818(n+1)+∑[n+1]`
-/

namespace A367892.P7105682910084609498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049818 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A367892.P7105682910084609498

/-! ## A367892.P17429891953901428343

`∑[A049827(n+2)-n]`
-/

namespace A367892.P17429891953901428343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049827 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367892.P17429891953901428343

/-! ## A367892.P13880906994823289804

`A367954(n+1)+A080956(n)`
-/

namespace A367892.P13880906994823289804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367954 (n + 1) + A080956 n

end

end A367892.P13880906994823289804

/-! ## A367892.P10536067348528207344

`A367954(n+2)-(A049826(n+2)+A000217(n))`
-/

namespace A367892.P10536067348528207344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367954 (n + 2) - (A049826 (n + 2) + A000217 n)

end

end A367892.P10536067348528207344

/-!
# A367894: Length of cycles obtained by repeated application of the distance-minimizing strip bijection for the square lattice (A367150), sorted by increasing minimum radius visited by any cycle of this length.

The programs for A367894, there is no canonical definition to state claims against.
-/

/-! ## A367894.P16679490632897576384

`A371284(a(n-1)+2)` with `a(0)=1, a(1)=8`
-/

namespace A367894.P16679490632897576384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  A371284 (a (n - 1) + 2).toNat

end

end A367894.P16679490632897576384

/-!
# A367895: a(n) is the x-coordinate of the n-th point in a square spiral mapped to a square grid rotated by Pi/4 using the variant of the distance-limited strip bijection described in A367150.

The programs for A367895, there is no canonical definition to state claims against.
-/

/-! ## A367895.P15001839431971850141

`A305575(A367150(A308081(n+1)))`
-/

namespace A367895.P15001839431971850141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305575 (A367150 (A308081 (n + 1)).toNat).toNat

end

end A367895.P15001839431971850141

/-! ## A367895.P17713930958620047530

`A368127(n)%∑[A247511(n+5)]`
-/

namespace A367895.P17713930958620047530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247511 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368127 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A367895.P17713930958620047530

/-! ## A367895.P2959070952150173864

`A368127(n)%A226357(A007095(n))`
-/

namespace A367895.P2959070952150173864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368127 n) (A226357 (A007095 n).toNat)

end

end A367895.P2959070952150173864

/-! ## A367895.P1133518952898017058

`A368127(n)+A105517(A378034(n+3))`
-/

namespace A367895.P1133518952898017058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368127 n + A105517 (A378034 (n + 3)).toNat

end

end A367895.P1133518952898017058

/-! ## A367895.P16352353288777804712

`A368127(n)-A326543(A370814(n+4))`
-/

namespace A367895.P16352353288777804712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368127 n - A326543 (A370814 (n + 4)).toNat

end

end A367895.P16352353288777804712

/-! ## A367895.P4173043229725540966

`A368127(n)+A035928(A370814(n+4)+1)%2`
-/

namespace A367895.P4173043229725540966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368127 n + Int.tmod (A035928 (A370814 (n + 4) + 1).toNat) 2

end

end A367895.P4173043229725540966

/-! ## A367895.P9364649939245448746

`A368127(n)+A000007(A363169(n+1))`
-/

namespace A367895.P9364649939245448746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368127 n + A000007 (A363169 (n + 1)).toNat

end

end A367895.P9364649939245448746

/-! ## A367895.P4111350471052370316

`A368127(n)+A035928(A194436(n+1)+1)%2`
-/

namespace A367895.P4111350471052370316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368127 n + Int.tmod (A035928 (A194436 (n + 1) + 1).toNat) 2

end

end A367895.P4111350471052370316

/-! ## A367895.P16202378716433808723

`A005171(A120498(3*n+4))*A368127(n)`
-/

namespace A367895.P16202378716433808723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A120498 (3 * n + 4)).toNat * A368127 n

end

end A367895.P16202378716433808723

/-! ## A367895.P18237006980941479308

`A368127(n)+A000007(A213991(n+1))`
-/

namespace A367895.P18237006980941479308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368127 n + A000007 (A213991 (n + 1)).toNat

end

end A367895.P18237006980941479308

/-!
# A367896: a(n) is the y-coordinate of the n-th point in a square spiral mapped to a square grid rotated by Pi/4 using the variant of the distance-limited strip bijection described in A367150.

The programs for A367896, there is no canonical definition to state claims against.
-/

/-! ## A367896.P12658064610006896214

`A305576(A367150(A308081(n+1)))`
-/

namespace A367896.P12658064610006896214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305576 (A367150 (A308081 (n + 1)).toNat).toNat

end

end A367896.P12658064610006896214

/-! ## A367896.P17614887854265432607

`A368123(n)%∑[A111633(n)]`
-/

namespace A367896.P17614887854265432607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368123 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A367896.P17614887854265432607

/-! ## A367896.P15585634842241909956

`A363741(A006530(2*(n+1)))*A368123(n)`
-/

namespace A367896.P15585634842241909956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363741 (A006530 (2 * (n + 1))).toNat * A368123 n

end

end A367896.P15585634842241909956

/-! ## A367896.P2469020699649380029

`A368123(A025480(2*n))+A000007(A111633(n))`
-/

namespace A367896.P2469020699649380029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368123 (A025480 (2 * n)).toNat + A000007 (A111633 n).toNat

end

end A367896.P2469020699649380029

/-! ## A367896.P13647447615323181991

`A368123(n)-A049084(A120498(n+5))`
-/

namespace A367896.P13647447615323181991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368123 n - A049084 (A120498 (n + 5)).toNat

end

end A367896.P13647447615323181991

/-! ## A367896.P2006222640140454940

`A368123(n)+A079978(A005846(n+1))`
-/

namespace A367896.P2006222640140454940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368123 n + A079978 (A005846 (n + 1)).toNat

end

end A367896.P2006222640140454940

/-! ## A367896.P17554286030810750251

`A368123(n)+A025468(A270798(n+1))`
-/

namespace A367896.P17554286030810750251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368123 n + A025468 (A270798 (n + 1)).toNat

end

end A367896.P17554286030810750251

/-! ## A367896.P11193853103391794026

`A368123(n)+A000007(A325198(2*n+1))`
-/

namespace A367896.P11193853103391794026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368123 n + A000007 (A325198 (2 * n + 1)).toNat

end

end A367896.P11193853103391794026

/-! ## A367896.P17816647400381689674

`A368123(n)+A000007(A368147(n+1))`
-/

namespace A367896.P17816647400381689674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368123 n + A000007 (A368147 (n + 1)).toNat

end

end A367896.P17816647400381689674

/-!
# A367897: a(1)=1, a(n) = H_(n-2)(a(n-2), a(n-1)) where H_n is the n-th hyperoperator.

The programs for A367897, there is no canonical definition to state claims against.
-/

/-! ## A367897.P8472345042638603218

`a(n-1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6, a(4)=729`
-/

namespace A367897.P8472345042638603218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 6, 729] fun n a =>
  a (n - 1)

end

end A367897.P8472345042638603218

