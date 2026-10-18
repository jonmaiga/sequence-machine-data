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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.B009.C000
import Seq.B009.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A100700: n-th Fibonacci number minus n-th prime number.

The programs for A100700, the canonical program `A100700.P1265436559416670714` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100700 has offset 1).

The definition of A100700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100700.P1265436559416670714

`A081659(n)-A095116(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A100700

/-- `A081659(n)-A095116(n+1)` -/
def P1265436559416670714.Spec : Prop :=
  ∀ n, P1265436559416670714.a n = A100700 (n + 1)

theorem P1265436559416670714.correct : P1265436559416670714.Spec := by
  intro n
  simp only [A100700, Nat.add_sub_cancel]

end A100700

/-! ## A100700.P2926161416871912591

`A052959(n)-A350171(n+1)`
-/

namespace A100700.P2926161416871912591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052959 n - A350171 (n + 1)

end

end A100700.P2926161416871912591

namespace A100700

/-- `A052959(n)-A350171(n+1)` -/
def P2926161416871912591.Spec : Prop :=
  ∀ n, P2926161416871912591.a n = A100700 (n + 1)

end A100700

/-! ## A100700.P10865800881893347516

`∑[A212804(n)]-Δ[A007504(n)]`
-/

namespace A100700.P10865800881893347516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A100700.P10865800881893347516

namespace A100700

/-- `∑[A212804(n)]-Δ[A007504(n)]` -/
def P10865800881893347516.Spec : Prop :=
  ∀ n, P10865800881893347516.a n = A100700 (n + 1)

end A100700

/-! ## A100700.P7765785717632426766

`∑[A212804(n)]-p?[A352844(n)]`
-/

namespace A100700.P7765785717632426766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A100700.P7765785717632426766

namespace A100700

/-- `∑[A212804(n)]-p?[A352844(n)]` -/
def P7765785717632426766.Spec : Prop :=
  ∀ n, P7765785717632426766.a n = A100700 (n + 1)

end A100700

/-! ## A100700.P13093089360105725451

`∑[A212804(n)]-A000040(n+1)`
-/

namespace A100700.P13093089360105725451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000040 (n + 1)

end

end A100700.P13093089360105725451

namespace A100700

/-- `∑[A212804(n)]-A000040(n+1)` -/
def P13093089360105725451.Spec : Prop :=
  ∀ n, P13093089360105725451.a n = A100700 (n + 1)

end A100700

/-! ## A100700.P14491531003330082365

`A000045(n+1)-Δ[A007504(n)]`
-/

namespace A100700.P14491531003330082365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - (f1 (n + 1) - f1 n)

end

end A100700.P14491531003330082365

namespace A100700

/-- `A000045(n+1)-Δ[A007504(n)]` -/
def P14491531003330082365.Spec : Prop :=
  ∀ n, P14491531003330082365.a n = A100700 (n + 1)

end A100700

/-! ## A100700.P14139594660963920454

`A000045(n+1)-p?[A001057(n)]`
-/

namespace A100700.P14139594660963920454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100700.P14139594660963920454

namespace A100700

/-- `A000045(n+1)-p?[A001057(n)]` -/
def P14139594660963920454.Spec : Prop :=
  ∀ n, P14139594660963920454.a n = A100700 (n + 1)

end A100700

/-! ## A100700.P3994365529394206113

`A000045(n+1)-p?[A014681(n)]`
-/

namespace A100700.P3994365529394206113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100700.P3994365529394206113

namespace A100700

/-- `A000045(n+1)-p?[A014681(n)]` -/
def P3994365529394206113.Spec : Prop :=
  ∀ n, P3994365529394206113.a n = A100700 (n + 1)

end A100700

/-! ## A100700.P15805233279689970212

`A000045(n+1)-p?[A131732(n)]`
-/

namespace A100700.P15805233279689970212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100700.P15805233279689970212

namespace A100700

/-- `A000045(n+1)-p?[A131732(n)]` -/
def P15805233279689970212.Spec : Prop :=
  ∀ n, P15805233279689970212.a n = A100700 (n + 1)

end A100700

/-! ## A100700.P5747840726797968594

`A000045(n+1)-p?[A143051(n)]`
-/

namespace A100700.P5747840726797968594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100700.P5747840726797968594

namespace A100700

/-- `A000045(n+1)-p?[A143051(n)]` -/
def P5747840726797968594.Spec : Prop :=
  ∀ n, P5747840726797968594.a n = A100700 (n + 1)

end A100700

/-! ## A100700.P2668628737755195079

`A000045(n+1)-p?[A352844(n)]`
-/

namespace A100700.P2668628737755195079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100700.P2668628737755195079

namespace A100700

/-- `A000045(n+1)-p?[A352844(n)]` -/
def P2668628737755195079.Spec : Prop :=
  ∀ n, P2668628737755195079.a n = A100700 (n + 1)

end A100700

/-! ## A100700.P16496511086861207028

`A000045(n+1)-A000040(n+1)`
-/

namespace A100700.P16496511086861207028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A000040 (n + 1)

end

end A100700.P16496511086861207028

namespace A100700

/-- `A000045(n+1)-A000040(n+1)` -/
def P16496511086861207028.Spec : Prop :=
  ∀ n, P16496511086861207028.a n = A100700 (n + 1)

end A100700

/-! ## A100700.P10222671182975850736

`A000071(n+1)-A006093(n+1)`
-/

namespace A100700.P10222671182975850736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) - A006093 (n + 1)

end

end A100700.P10222671182975850736

namespace A100700

/-- `A000071(n+1)-A006093(n+1)` -/
def P10222671182975850736.Spec : Prop :=
  ∀ n, P10222671182975850736.a n = A100700 (n + 1)

end A100700

/-! ## A100700.P14739946095019264190

`A007492(n+1)-A014686(n+1)`
-/

namespace A100700.P14739946095019264190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007492 (n + 1) - A014686 (n + 1)

end

end A100700.P14739946095019264190

namespace A100700

/-- `A007492(n+1)-A014686(n+1)` -/
def P14739946095019264190.Spec : Prop :=
  ∀ n, P14739946095019264190.a n = A100700 (n + 1)

end A100700

/-! ## A100700.P7197812805138882176

`A004397(n+1)-A100484(n+1)`
-/

namespace A100700.P7197812805138882176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004397 (n + 1) - A100484 (n + 1)

end

end A100700.P7197812805138882176

namespace A100700

/-- `A004397(n+1)-A100484(n+1)` -/
def P7197812805138882176.Spec : Prop :=
  ∀ n, P7197812805138882176.a n = A100700 (n + 1)

end A100700

/-! ## A100700.P16767554963573954194

`A129728(n+1)-A129726(n+1)`
-/

namespace A100700.P16767554963573954194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129728 (n + 1) - A129726 (n + 1)

end

end A100700.P16767554963573954194

namespace A100700

/-- `A129728(n+1)-A129726(n+1)` -/
def P16767554963573954194.Spec : Prop :=
  ∀ n, P16767554963573954194.a n = A100700 (n + 1)

end A100700

/-! ## A100700.P16703065064119907706

`A187179(n+1)-A139049(n+1)`
-/

namespace A100700.P16703065064119907706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187179 (n + 1) - A139049 (n + 1)

end

end A100700.P16703065064119907706

namespace A100700

/-- `A187179(n+1)-A139049(n+1)` -/
def P16703065064119907706.Spec : Prop :=
  ∀ n, P16703065064119907706.a n = A100700 (n + 1)

end A100700

/-! ## A100700.P9758875283004105353

`A187107(n+1)-A175223(n+1)`
-/

namespace A100700.P9758875283004105353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187107 (n + 1) - A175223 (n + 1)

end

end A100700.P9758875283004105353

namespace A100700

/-- `A187107(n+1)-A175223(n+1)` -/
def P9758875283004105353.Spec : Prop :=
  ∀ n, P9758875283004105353.a n = A100700 (n + 1)

end A100700

/-! ## A100700.P3310971549618461494

`A000045(n+1)-A008578(n+2)`
-/

namespace A100700.P3310971549618461494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A008578 (n + 2)

end

end A100700.P3310971549618461494

namespace A100700

/-- `A000045(n+1)-A008578(n+2)` -/
def P3310971549618461494.Spec : Prop :=
  ∀ n, P3310971549618461494.a n = A100700 (n + 1)

end A100700

/-! ## A100700.P6288105536320502287

`A212804(n+2)-A000040(n+1)`
-/

namespace A100700.P6288105536320502287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) - A000040 (n + 1)

end

end A100700.P6288105536320502287

namespace A100700

/-- `A212804(n+2)-A000040(n+1)` -/
def P6288105536320502287.Spec : Prop :=
  ∀ n, P6288105536320502287.a n = A100700 (n + 1)

end A100700

/-!
# A100701: a(n) = a(n-1) + a(n-2) + a(n-1)*a(n-2) for n>=2; a(0)=2, a(1)=3.

The programs for A100701, there is no canonical definition to state claims against.
-/

/-! ## A100701.P18235200446909611838

`record[a(n-1)*a(n-2)]-1` with `a(0)=3, a(1)=4, a(2)=3, a(3)=4`
-/

namespace A100701.P18235200446909611838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 3, 4] fun n f1 =>
  f1 (n - 1) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 1

end

end A100701.P18235200446909611838

/-! ## A100701.P4544934255321549366

`Δ[∑[a(n-1)*a(n-2)]-n]` with `a(0)=0, a(1)=3, a(2)=4`
-/

namespace A100701.P4544934255321549366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4] fun n f2 =>
  f2 (n - 1) * f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100701.P4544934255321549366

/-! ## A100701.P11092712854560925876

`(a(n-1)+1)*(a(n-2)+1)-1` with `a(0)=2, a(1)=3`
-/

namespace A100701.P11092712854560925876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  (a (n - 1) + 1) * (a (n - 2) + 1) - 1

end

end A100701.P11092712854560925876

/-!
# A100702: Number of layers of dough separated by butter in successive foldings of croissant dough.

The programs for A100702, the canonical program `A100702.P932307620097519804` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100702 has offset 0).

The definition of A100702 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100702.P932307620097519804

`3*a(n-1)-2` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A100702

/-- `3*a(n-1)-2` -/
def P932307620097519804.Spec : Prop :=
  ∀ n, P932307620097519804.a n = A100702 n

theorem P932307620097519804.correct : P932307620097519804.Spec := by
  intro n
  simp only [A100702]

end A100702

/-! ## A100702.P15173811742540500918

`floor(Δ[3^(n-1)])+1`
-/

namespace A100702.P15173811742540500918
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋ + 1

end

end A100702.P15173811742540500918

namespace A100702

/-- `floor(Δ[3^(n-1)])+1` -/
def P15173811742540500918.Spec : Prop :=
  ∀ n, P15173811742540500918.a n = A100702 n

end A100702

/-! ## A100702.P18021755296853706503

`or(1, Δ[floor(3^(n-1))])`
-/

namespace A100702.P18021755296853706503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A100702.P18021755296853706503

namespace A100702

/-- `or(1, Δ[floor(3^(n-1))])` -/
def P18021755296853706503.Spec : Prop :=
  ∀ n, P18021755296853706503.a n = A100702 n

end A100702

/-! ## A100702.P13657530469181910021

`xor(1, Δ[ceil(3^(n-1))])`
-/

namespace A100702.P13657530469181910021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (n + 1) - f1 n)

end

end A100702.P13657530469181910021

namespace A100702

/-- `xor(1, Δ[ceil(3^(n-1))])` -/
def P13657530469181910021.Spec : Prop :=
  ∀ n, P13657530469181910021.a n = A100702 n

end A100702

/-! ## A100702.P17743194720683101323

`Δ[round(3^(n-1))+C(2, n+2)+n]`
-/

namespace A100702.P17743194720683101323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) + (Nat.choose 2 (n + 2) + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100702.P17743194720683101323

namespace A100702

/-- `Δ[round(3^(n-1))+C(2, n+2)+n]` -/
def P17743194720683101323.Spec : Prop :=
  ∀ n, P17743194720683101323.a n = A100702 n

end A100702

/-! ## A100702.P2509664647326479130

`∑[a(n-1)+a(n-1)+a(n-1)]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A100702.P2509664647326479130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100702.P2509664647326479130

namespace A100702

/-- `∑[a(n-1)+a(n-1)+a(n-1)]` -/
def P2509664647326479130.Spec : Prop :=
  ∀ n, (P2509664647326479130.a n : ℤ) = A100702 n

end A100702

/-! ## A100702.P12598710669693261360

`floor(a(n-1)+a(n-1)+a(n-1)-2)` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A100702.P12598710669693261360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - 2))

end

end A100702.P12598710669693261360

namespace A100702

/-- `floor(a(n-1)+a(n-1)+a(n-1)-2)` -/
def P12598710669693261360.Spec : Prop :=
  ∀ n, P12598710669693261360.a n = A100702 n

theorem P12598710669693261360.correct : P12598710669693261360.Spec := by
  intro n
  simp only [A100702, Nat.add_sub_cancel, A100702.P12598710669693261360.a, A100702.P932307620097519804.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A100702

/-! ## A100702.P6895364948011012554

`floor(a(n-1)-(2-a(n-1)-a(n-1)))` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A100702.P6895364948011012554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - (2 - a (n - 1) - a (n - 1))

end

end A100702.P6895364948011012554

namespace A100702

/-- `floor(a(n-1)-(2-a(n-1)-a(n-1)))` -/
def P6895364948011012554.Spec : Prop :=
  ∀ n, P6895364948011012554.a n = A100702 n

theorem P6895364948011012554.correct : P6895364948011012554.Spec := by
  intro n
  simp only [A100702, Nat.add_sub_cancel, A100702.P6895364948011012554.a, A100702.P932307620097519804.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A100702

/-! ## A100702.P16970250650186000096

`∑[A025579(n+1)]`
-/

namespace A100702.P16970250650186000096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100702.P16970250650186000096

namespace A100702

/-- `∑[A025579(n+1)]` -/
def P16970250650186000096.Spec : Prop :=
  ∀ n, P16970250650186000096.a n = A100702 n

end A100702

/-! ## A100702.P14233800185283407591

`lcm(2, A052919(n))/2`
-/

namespace A100702.P14233800185283407591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A052919 n) : ℚ) / 2

end

end A100702.P14233800185283407591

namespace A100702

/-- `lcm(2, A052919(n))/2` -/
def P14233800185283407591.Spec : Prop :=
  ∀ n, P14233800185283407591.a n = (A100702 n : ℚ)

end A100702

/-! ## A100702.P16858504636775798698

`∑[A052156(n)+char[1]]`
-/

namespace A100702.P16858504636775798698
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100702.P16858504636775798698

namespace A100702

/-- `∑[A052156(n)+char[1]]` -/
def P16858504636775798698.Spec : Prop :=
  ∀ n, P16858504636775798698.a n = A100702 n

end A100702

/-! ## A100702.P13906242844595612789

`floor(A079003(n+1)/2)`
-/

namespace A100702.P13906242844595612789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A079003 (n + 1) : ℚ) / 2⌋

end

end A100702.P13906242844595612789

namespace A100702

/-- `floor(A079003(n+1)/2)` -/
def P13906242844595612789.Spec : Prop :=
  ∀ n, P13906242844595612789.a n = A100702 n

end A100702

/-! ## A100702.P17741576657051989423

`∑[A026097(n+1)/2]`
-/

namespace A100702.P17741576657051989423
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026097 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100702.P17741576657051989423

namespace A100702

/-- `∑[A026097(n+1)/2]` -/
def P17741576657051989423.Spec : Prop :=
  ∀ n, P17741576657051989423.a n = (A100702 n : ℚ)

end A100702

/-! ## A100702.P11708664419991242903

`A062547(A004273(n))`
-/

namespace A100702.P11708664419991242903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062547 (A004273 n).toNat

end

end A100702.P11708664419991242903

namespace A100702

/-- `A062547(A004273(n))` -/
def P11708664419991242903.Spec : Prop :=
  ∀ n, P11708664419991242903.a n = A100702 n

end A100702

/-!
# A100703: (T(n-1) + T(n-2)) + T(n-1)*T(n-2) where T(0)=3, T(1)=5 and n >= 2.

The programs for A100703, there is no canonical definition to state claims against.
-/

/-! ## A100703.P11325542679943829698

`Δ[∑[a(n-1)*a(n-2)]-n]` with `a(0)=0, a(1)=4, a(2)=6`
-/

namespace A100703.P11325542679943829698
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 6] fun n f2 =>
  f2 (n - 1) * f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100703.P11325542679943829698

/-! ## A100703.P6689821034333324599

`(a(n-1)+1)*(a(n-2)+1)-1` with `a(0)=3, a(1)=5`
-/

namespace A100703.P6689821034333324599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n a =>
  (a (n - 1) + 1) * (a (n - 2) + 1) - 1

end

end A100703.P6689821034333324599

/-! ## A100703.P16405685521447787597

`a(n-2)+lcm(a(n-2)+1, a(n-1))` with `a(0)=3, a(1)=5`
-/

namespace A100703.P16405685521447787597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n a =>
  a (n - 2) + Nat.lcm (a (n - 2) + 1) (a (n - 1))

end

end A100703.P16405685521447787597

/-! ## A100703.P4638965444203297195

`A010098(n)*A230900(n)-1`
-/

namespace A100703.P4638965444203297195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010098 n * A230900 n - 1

end

end A100703.P4638965444203297195

/-! ## A100703.P78311643688146681

`floor(A100701(n+1)/A000301(n))`
-/

namespace A100703.P78311643688146681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100701 (n + 1) : ℚ) / (A000301 n : ℚ)⌋

end

end A100703.P78311643688146681

/-!
# A100704: a(n) = (a(n-1) + a(n-2)) * a(n-1) * a(n-2) with a(0)=1 and a(1)=1.

The programs for A100704, the canonical program `A100704.P11000630295459503627` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100704 has offset 0).

The definition of A100704 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+a(n-2))*a(n-1)*a(n-2)` (program `A100704.P11000630295459503627`, by `A100704.P11000630295459503627.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100704.P11000630295459503627

`(a(n-1)+a(n-2))*a(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A100704

/-- `(a(n-1)+a(n-2))*a(n-1)*a(n-2)` -/
def P11000630295459503627.Spec : Prop :=
  ∀ n, (P11000630295459503627.a n : ℤ) = A100704 n

theorem P11000630295459503627.correct : P11000630295459503627.Spec := by
  intro n
  simp only [A100704]

end A100704

/-! ## A100704.P11836320332576706613

`A066091(A028310(n)-1)`
-/

namespace A100704.P11836320332576706613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066091 (A028310 n - 1).toNat

end

end A100704.P11836320332576706613

namespace A100704

/-- `A066091(A028310(n)-1)` -/
def P11836320332576706613.Spec : Prop :=
  ∀ n, P11836320332576706613.a n = A100704 n

end A100704

/-! ## A100704.P18184918434884289003

`A066091(∑[∑[A080300(n)]])`
-/

namespace A100704.P18184918434884289003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080300 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066091 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A100704.P18184918434884289003

namespace A100704

/-- `A066091(∑[∑[A080300(n)]])` -/
def P18184918434884289003.Spec : Prop :=
  ∀ n, P18184918434884289003.a n = A100704 n

end A100704

/-! ## A100704.P14167831834556028874

`A066091(A000007(n)-1+n)`
-/

namespace A100704.P14167831834556028874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066091 (A000007 n - 1 + (n : ℤ)).toNat

end

end A100704.P14167831834556028874

namespace A100704

/-- `A066091(A000007(n)-1+n)` -/
def P14167831834556028874.Spec : Prop :=
  ∀ n, P14167831834556028874.a n = A100704 n

end A100704

/-! ## A100704.P4878898318384155569

`A066091(n-(1-A000007(n)))`
-/

namespace A100704.P4878898318384155569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066091 ((n : ℤ) - (1 - A000007 n)).toNat

end

end A100704.P4878898318384155569

namespace A100704

/-- `A066091(n-(1-A000007(n)))` -/
def P4878898318384155569.Spec : Prop :=
  ∀ n, P4878898318384155569.a n = A100704 n

end A100704

/-!
# A100705: a(n) = n^3 + (n+1)^2.

The programs for A100705, the canonical program `A100705.P6779774238995480043` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100705 has offset 0).

The definition of A100705 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+(n+1)²` (program `A100705.P6779774238995480043`, by `A100705.P6779774238995480043.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100705.P6779774238995480043

`n^3+(n+1)²`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A100705

/-- `n^3+(n+1)²` -/
def P6779774238995480043.Spec : Prop :=
  ∀ n, (P6779774238995480043.a n : ℤ) = A100705 n

theorem P6779774238995480043.correct : P6779774238995480043.Spec := by
  intro n
  simp only [A100705]

end A100705

/-! ## A100705.P16559355727321106847

`or(1, (∑[n]+1)*2*n)`
-/

namespace A100705.P16559355727321106847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((∑ j ∈ Finset.range (n + 1), f1 j + 1) * (2 * n))

end

end A100705.P16559355727321106847

namespace A100705

/-- `or(1, (∑[n]+1)*2*n)` -/
def P16559355727321106847.Spec : Prop :=
  ∀ n, (P16559355727321106847.a n : ℤ) = A100705 n

end A100705

/-! ## A100705.P66817806353797252

`xor(1, (∑[n]+1)*2*n)`
-/

namespace A100705.P66817806353797252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((∑ j ∈ Finset.range (n + 1), f1 j + 1) * (2 * n))

end

end A100705.P66817806353797252

namespace A100705

/-- `xor(1, (∑[n]+1)*2*n)` -/
def P66817806353797252.Spec : Prop :=
  ∀ n, (P66817806353797252.a n : ℤ) = A100705 n

end A100705

/-! ## A100705.P14941186231113321486

`∑[∑[a(n-1)+6]]` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A100705.P14941186231113321486
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 8] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100705.P14941186231113321486

namespace A100705

/-- `∑[∑[a(n-1)+6]]` -/
def P14941186231113321486.Spec : Prop :=
  ∀ n, (P14941186231113321486.a n : ℤ) = A100705 n

end A100705

/-! ## A100705.P9149890959584093427

`ceil((n+1)*(acot(n+1)+n)²)`
-/

namespace A100705.P9149890959584093427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * (SequenceMachineLib.acot (n + 1 : ℝ) + (n : ℝ)) ^ 2⌉

end

end A100705.P9149890959584093427

namespace A100705

/-- `ceil((n+1)*(acot(n+1)+n)²)` -/
def P9149890959584093427.Spec : Prop :=
  ∀ n, P9149890959584093427.a n = A100705 n

end A100705

/-! ## A100705.P11670023802210503581

`floor(2*n+lcm(n+1, n²)+ϕ)`
-/

namespace A100705.P11670023802210503581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) + ((Nat.lcm (n + 1) (n ^ 2) : ℝ) + Real.goldenRatio)⌋

end

end A100705.P11670023802210503581

namespace A100705

/-- `floor(2*n+lcm(n+1, n²)+ϕ)` -/
def P11670023802210503581.Spec : Prop :=
  ∀ n, P11670023802210503581.a n = A100705 n

end A100705

/-! ## A100705.P13491544183471405303

`floor(n^3-∑[a(n-1)-2])` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A100705.P13491544183471405303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100705.P13491544183471405303

namespace A100705

/-- `floor(n^3-∑[a(n-1)-2])` -/
def P13491544183471405303.Spec : Prop :=
  ∀ n, P13491544183471405303.a n = A100705 n

end A100705

/-! ## A100705.P2133491211136019211

`abs(C(2*n+1, 2)-(n+1)^3)`
-/

namespace A100705.P2133491211136019211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (2 * n + 1) 2 : ℤ) - ((n + 1) ^ 3 : ℤ)|

end

end A100705.P2133491211136019211

namespace A100705

/-- `abs(C(2*n+1, 2)-(n+1)^3)` -/
def P2133491211136019211.Spec : Prop :=
  ∀ n, P2133491211136019211.a n = A100705 n

end A100705

/-! ## A100705.P5408883761272023929

`abs((n+1)^3-lcm(n, 2*n+1))`
-/

namespace A100705.P5408883761272023929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 1) ^ 3 : ℤ) - (Nat.lcm n (2 * n + 1) : ℤ)|

end

end A100705.P5408883761272023929

namespace A100705

/-- `abs((n+1)^3-lcm(n, 2*n+1))` -/
def P5408883761272023929.Spec : Prop :=
  ∀ n, P5408883761272023929.a n = A100705 n

end A100705

/-! ## A100705.P10562173017479835856

`∑[A005918(n)-n]`
-/

namespace A100705.P10562173017479835856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100705.P10562173017479835856

namespace A100705

/-- `∑[A005918(n)-n]` -/
def P10562173017479835856.Spec : Prop :=
  ∀ n, P10562173017479835856.a n = A100705 n

end A100705

/-! ## A100705.P15226340745333899096

`A304159(n+1)/2`
-/

namespace A100705.P15226340745333899096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304159 (n + 1) : ℚ) / 2

end

end A100705.P15226340745333899096

namespace A100705

/-- `A304159(n+1)/2` -/
def P15226340745333899096.Spec : Prop :=
  ∀ n, P15226340745333899096.a n = (A100705 n : ℚ)

end A100705

/-! ## A100705.P10135481159604241891

`∑[∑[A270545(n)]-n]`
-/

namespace A100705.P10135481159604241891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270545 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100705.P10135481159604241891

namespace A100705

/-- `∑[∑[A270545(n)]-n]` -/
def P10135481159604241891.Spec : Prop :=
  ∀ n, P10135481159604241891.a n = A100705 n

end A100705

/-! ## A100705.P4389209130582963492

`∑[A077588(n)+2*n]`
-/

namespace A100705.P4389209130582963492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077588 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100705.P4389209130582963492

namespace A100705

/-- `∑[A077588(n)+2*n]` -/
def P4389209130582963492.Spec : Prop :=
  ∀ n, P4389209130582963492.a n = A100705 n

end A100705

/-! ## A100705.P6594119789251201712

`abs(∑[A056106(n)+1]-1)`
-/

namespace A100705.P6594119789251201712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A100705.P6594119789251201712

namespace A100705

/-- `abs(∑[A056106(n)+1]-1)` -/
def P6594119789251201712.Spec : Prop :=
  ∀ n, P6594119789251201712.a n = A100705 n

end A100705

/-! ## A100705.P17283816075635730783

`abs(∑[A056105(n)+1+n]-1)`
-/

namespace A100705.P17283816075635730783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A100705.P17283816075635730783

namespace A100705

/-- `abs(∑[A056105(n)+1+n]-1)` -/
def P17283816075635730783.Spec : Prop :=
  ∀ n, P17283816075635730783.a n = A100705 n

end A100705

/-! ## A100705.P17509953208218451988

`abs(1-(A000290(n)+2)*(n+1))`
-/

namespace A100705.P17509953208218451988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A000290 n + 2) * (n + 1 : ℤ)|

end

end A100705.P17509953208218451988

namespace A100705

/-- `abs(1-(A000290(n)+2)*(n+1))` -/
def P17509953208218451988.Spec : Prop :=
  ∀ n, P17509953208218451988.a n = A100705 n

end A100705

/-! ## A100705.P10746690484860497076

`abs((∑[A004277(n)-1]+2)*(n+1)-1)`
-/

namespace A100705.P10746690484860497076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j + 2) * (n + 1 : ℤ) - 1|

end

end A100705.P10746690484860497076

namespace A100705

/-- `abs((∑[A004277(n)-1]+2)*(n+1)-1)` -/
def P10746690484860497076.Spec : Prop :=
  ∀ n, P10746690484860497076.a n = A100705 n

end A100705

/-! ## A100705.P2000980921611260636

`∑[A005897(n)-n*A016777(n)]`
-/

namespace A100705.P2000980921611260636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n - (n : ℤ) * A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100705.P2000980921611260636

namespace A100705

/-- `∑[A005897(n)-n*A016777(n)]` -/
def P2000980921611260636.Spec : Prop :=
  ∀ n, P2000980921611260636.a n = A100705 n

end A100705

/-! ## A100705.P8139595652032480367

`A357042(n+1)%A290631(n+1)`
-/

namespace A100705.P8139595652032480367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357042 (n + 1)) (A290631 (n + 1))

end

end A100705.P8139595652032480367

namespace A100705

/-- `A357042(n+1)%A290631(n+1)` -/
def P8139595652032480367.Spec : Prop :=
  ∀ n, P8139595652032480367.a n = A100705 n

end A100705

/-! ## A100705.P2412871566407066449

`Δ[∑[n²]+C(n, 2)²]`
-/

namespace A100705.P2412871566407066449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + Nat.choose n 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A100705.P2412871566407066449

namespace A100705

/-- `Δ[∑[n²]+C(n, 2)²]` -/
def P2412871566407066449.Spec : Prop :=
  ∀ n, P2412871566407066449.a n = A100705 n

end A100705

/-!
# A100706: Bisection of A002275.

The programs for A100706, the canonical program `A100706.P4145303750817521991` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100706 has offset 0).

The definition of A100706 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100706.P4145303750817521991

`(10^(2*n+1)-1)/9`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A100706

/-- `(10^(2*n+1)-1)/9` -/
def P4145303750817521991.Spec : Prop :=
  ∀ n, P4145303750817521991.a n = (A100706 n : ℚ)

end A100706

/-! ## A100706.P7364835599244761717

`110*10^(2*n-2)+a(n-1)` with `a(0)=1`
-/

namespace A100706.P7364835599244761717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  110 * (10 : ℚ) ^ ((2 * n : ℤ) - 2 : ℤ) + a (n - 1)

end

end A100706.P7364835599244761717

namespace A100706

/-- `110*10^(2*n-2)+a(n-1)` -/
def P7364835599244761717.Spec : Prop :=
  ∀ n, P7364835599244761717.a n = (A100706 n : ℚ)

end A100706

/-! ## A100706.P16823689268288883158

`record[floor(10^n/9)^(n%2)]`
-/

namespace A100706.P16823689268288883158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 9⌋ ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100706.P16823689268288883158

namespace A100706

/-- `record[floor(10^n/9)^(n%2)]` -/
def P16823689268288883158.Spec : Prop :=
  ∀ n, P16823689268288883158.a n = A100706 n

end A100706

/-! ## A100706.P7590043054986198480

`record[gcd(val(n+1, 2), ∑[10^n])]`
-/

namespace A100706.P7590043054986198480
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (SequenceMachineLib.valuation (n + 1) 2) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100706.P7590043054986198480

namespace A100706

/-- `record[gcd(val(n+1, 2), ∑[10^n])]` -/
def P7590043054986198480.Spec : Prop :=
  ∀ n, (P7590043054986198480.a n : ℤ) = A100706 n

end A100706

/-! ## A100706.P7128295682622088981

`10*(10*a(n-1)+1)+1` with `a(0)=1`
-/

namespace A100706.P7128295682622088981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  10 * (10 * a (n - 1) + 1) + 1

end

end A100706.P7128295682622088981

namespace A100706

/-- `10*(10*a(n-1)+1)+1` -/
def P7128295682622088981.Spec : Prop :=
  ∀ n, (P7128295682622088981.a n : ℤ) = A100706 n

end A100706

/-! ## A100706.P10483832178246341066

`record[∑[10*a(n-1)]*char[2*n]]` with `a(0)=1`
-/

namespace A100706.P10483832178246341066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  10 * f2 (n - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * (if ∃ j, f3 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100706.P10483832178246341066

namespace A100706

/-- `record[∑[10*a(n-1)]*char[2*n]]` -/
def P10483832178246341066.Spec : Prop :=
  ∀ n, (P10483832178246341066.a n : ℤ) = A100706 n

end A100706

/-! ## A100706.P818484060644057206

`record[gcd(or(1, (-10)^n), floor(4/9*10^n))]`
-/

namespace A100706.P818484060644057206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.lor 1 ((-10) ^ n)) ⌊(4 : ℚ) / 9 * (10 ^ n : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100706.P818484060644057206

namespace A100706

/-- `record[gcd(or(1, (-10)^n), floor(4/9*10^n))]` -/
def P818484060644057206.Spec : Prop :=
  ∀ n, (P818484060644057206.a n : ℤ) = A100706 n

end A100706

/-! ## A100706.P15603773939509255081

`∑[10^n]+10^n*∑[and(-2, 10^n)]`
-/

namespace A100706.P15603773939509255081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (10 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (10 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A100706.P15603773939509255081

namespace A100706

/-- `∑[10^n]+10^n*∑[and(-2, 10^n)]` -/
def P15603773939509255081.Spec : Prop :=
  ∀ n, P15603773939509255081.a n = A100706 n

end A100706

/-! ## A100706.P1867814502495161277

`(5*(10*(10^n)²-1)/9-10^n)%(4*(10*(10^n)²-1)/9-10^n)`
-/

namespace A100706.P1867814502495161277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (5 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (10 ^ n : ℚ))) (SequenceMachineLib.roundAway (4 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (10 ^ n : ℚ)))

end

end A100706.P1867814502495161277

namespace A100706

/-- `(5*(10*(10^n)²-1)/9-10^n)%(4*(10*(10^n)²-1)/9-10^n)` -/
def P1867814502495161277.Spec : Prop :=
  ∀ n, P1867814502495161277.a n = A100706 n

end A100706

/-! ## A100706.P461071041595673799

`∑[A266299(n)]`
-/

namespace A100706.P461071041595673799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100706.P461071041595673799

namespace A100706

/-- `∑[A266299(n)]` -/
def P461071041595673799.Spec : Prop :=
  ∀ n, P461071041595673799.a n = A100706 n

end A100706

/-!
# A100707: a(1) = 1; for n > 1, a(n+1)=a(n)-k if there exists a positive number k (take the smallest) that has not yet been used and is such that a(n+1) is new and >0, otherwise a(n+1) = a(n)+k if the same conditions are satisfied.

The programs for A100707, there is no canonical definition to state claims against.
-/

/-! ## A100707.P14066820090985565221

`A052938(A209386(n)%A087459(A288219(n)))`
-/

namespace A100707.P14066820090985565221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (Int.tmod (A209386 n) (A087459 (A288219 n).toNat)).toNat

end

end A100707.P14066820090985565221

/-! ## A100707.P10817826876850402214

`A005132(n)%A376898(n+1)+1`
-/

namespace A100707.P10817826876850402214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005132 n) (A376898 (n + 1)) + 1

end

end A100707.P10817826876850402214

/-! ## A100707.P3685143478771816164

`A063733(n+1)%A317556(A185982(n+1))`
-/

namespace A100707.P3685143478771816164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063733 (n + 1)) (A317556 (A185982 (n + 1)).toNat)

end

end A100707.P3685143478771816164

/-! ## A100707.P4599470617117390225

`A078943(n+1)%A317556(A185982(n+1))`
-/

namespace A100707.P4599470617117390225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078943 (n + 1)) (A317556 (A185982 (n + 1)).toNat)

end

end A100707.P4599470617117390225

/-! ## A100707.P1115076551633913765

`A052938(A209386(n))%A317556(A185982(n+1))`
-/

namespace A100707.P1115076551633913765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052938 (A209386 n).toNat) (A317556 (A185982 (n + 1)).toNat)

end

end A100707.P1115076551633913765

/-!
# A100708: Differences arising in A100707.

The programs for A100708, there is no canonical definition to state claims against.
-/

/-! ## A100708.P18285935968105979134

`abs(A100707(n+2)-A100707(n+1))`
-/

namespace A100708.P18285935968105979134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100707 (n + 2) - A100707 (n + 1)|

end

end A100708.P18285935968105979134

/-! ## A100708.P15225639971036254845

`abs(Δ[A100707(n+1)])`
-/

namespace A100708.P15225639971036254845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A100708.P15225639971036254845

/-! ## A100708.P11144534381117602695

`lcm(Δ[A100707(n+1)], A020985(n))`
-/

namespace A100708.P11144534381117602695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A020985 n)

end

end A100708.P11144534381117602695

/-! ## A100708.P5887875399042742900

`∑{d}[Δ[A100707(n+1)], A000010(#)]`
-/

namespace A100708.P5887875399042742900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100707 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A100708.P5887875399042742900

/-! ## A100708.P1741892921965890599

`gcd(Δ[A100707(n+1)], A327170(2*n+5))`
-/

namespace A100708.P1741892921965890599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A327170 (2 * n + 5))

end

end A100708.P1741892921965890599

/-! ## A100708.P6591103759745403257

`∏{d}[Δ[A100707(n+1)], A014963(#)]`
-/

namespace A100708.P6591103759745403257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100707 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A100708.P6591103759745403257

/-! ## A100708.P6498726502473187708

`A000188(Δ[A100707(n+1)]²)`
-/

namespace A100708.P6498726502473187708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A100708.P6498726502473187708

/-! ## A100708.P6549972249084609231

`A000196(Δ[A100707(n+1)]²)`
-/

namespace A100708.P6549972249084609231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A100708.P6549972249084609231

/-!
# A100710: Characterized by a(n) XOR (a(n) + 1) = a(n) - n.

The programs for A100710, the canonical program `A100710.P8172262502792841671` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100710 has offset 1).

The definition of A100710 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100710.P11320383727729102821

`2*2^val(n+1, 2)+n`
-/

namespace A100710.P11320383727729102821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 2 ^ SequenceMachineLib.valuation (n + 1) 2 + n

end

end A100710.P11320383727729102821

namespace A100710

/-- `2*2^val(n+1, 2)+n` -/
def P11320383727729102821.Spec : Prop :=
  ∀ n, (P11320383727729102821.a n : ℤ) = A100710 (n + 1)

end A100710

/-! ## A100710.P8172262502792841671

`2*A006519(n+1)+n`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A100710

/-- `2*A006519(n+1)+n` -/
def P8172262502792841671.Spec : Prop :=
  ∀ n, P8172262502792841671.a n = A100710 (n + 1)

theorem P8172262502792841671.correct : P8172262502792841671.Spec := by
  intro n
  simp only [A100710, Nat.add_sub_cancel]

end A100710

/-! ## A100710.P1279305045152353268

`n-xor(n, -(n+2))`
-/

namespace A100710.P1279305045152353268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor (n : ℤ) (-(n + 2 : ℤ))

end

end A100710.P1279305045152353268

namespace A100710

/-- `n-xor(n, -(n+2))` -/
def P1279305045152353268.Spec : Prop :=
  ∀ n, P1279305045152353268.a n = A100710 (n + 1)

end A100710

/-! ## A100710.P17050581825565380398

`xor(n, n+1)+1+n`
-/

namespace A100710.P17050581825565380398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) + 1 + n

end

end A100710.P17050581825565380398

namespace A100710

/-- `xor(n, n+1)+1+n` -/
def P17050581825565380398.Spec : Prop :=
  ∀ n, (P17050581825565380398.a n : ℤ) = A100710 (n + 1)

end A100710

/-! ## A100710.P842938307390751164

`2*or(n, n+1)-n`
-/

namespace A100710.P842938307390751164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor n (n + 1) : ℤ) - (n : ℤ)

end

end A100710.P842938307390751164

namespace A100710

/-- `2*or(n, n+1)-n` -/
def P842938307390751164.Spec : Prop :=
  ∀ n, P842938307390751164.a n = A100710 (n + 1)

end A100710

/-! ## A100710.P17298649359152411825

`lcm(2, or(n, n+1))-n`
-/

namespace A100710.P17298649359152411825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (Nat.lor n (n + 1)) : ℤ) - (n : ℤ)

end

end A100710.P17298649359152411825

namespace A100710

/-- `lcm(2, or(n, n+1))-n` -/
def P17298649359152411825.Spec : Prop :=
  ∀ n, P17298649359152411825.a n = A100710 (n + 1)

end A100710

/-! ## A100710.P6643729353021868532

`2^(val(n+1, 2)+1)+n`
-/

namespace A100710.P6643729353021868532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (SequenceMachineLib.valuation (n + 1) 2 + 1) + n

end

end A100710.P6643729353021868532

namespace A100710

/-- `2^(val(n+1, 2)+1)+n` -/
def P6643729353021868532.Spec : Prop :=
  ∀ n, (P6643729353021868532.a n : ℤ) = A100710 (n + 1)

end A100710

/-! ## A100710.P16276914530249989149

`2*and(n+1, -(n+1))+n`
-/

namespace A100710.P16276914530249989149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) + (n : ℤ)

end

end A100710.P16276914530249989149

namespace A100710

/-- `2*and(n+1, -(n+1))+n` -/
def P16276914530249989149.Spec : Prop :=
  ∀ n, P16276914530249989149.a n = A100710 (n + 1)

end A100710

/-! ## A100710.P12950430535041837886

`abs(xor(n, n-2-2*n)-n)`
-/

namespace A100710.P12950430535041837886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) ((n : ℤ) - 2 - (2 * n : ℤ)) - (n : ℤ)|

end

end A100710.P12950430535041837886

namespace A100710

/-- `abs(xor(n, n-2-2*n)-n)` -/
def P12950430535041837886.Spec : Prop :=
  ∀ n, P12950430535041837886.a n = A100710 (n + 1)

end A100710

/-! ## A100710.P5970107029500280293

`2*(n+1-and(n, n+1))+n`
-/

namespace A100710.P5970107029500280293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ)) + (n : ℤ)

end

end A100710.P5970107029500280293

namespace A100710

/-- `2*(n+1-and(n, n+1))+n` -/
def P5970107029500280293.Spec : Prop :=
  ∀ n, P5970107029500280293.a n = A100710 (n + 1)

end A100710

/-! ## A100710.P16089166775315407613

`2*gcd(n+1, and(n, n+1))+n`
-/

namespace A100710.P16089166775315407613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd (n + 1) (Nat.land n (n + 1)) + n

end

end A100710.P16089166775315407613

namespace A100710

/-- `2*gcd(n+1, and(n, n+1))+n` -/
def P16089166775315407613.Spec : Prop :=
  ∀ n, (P16089166775315407613.a n : ℤ) = A100710 (n + 1)

end A100710

/-! ## A100710.P14348320331184959982

`or(n, n+1)+and(n+1, -(n+1))`
-/

namespace A100710.P14348320331184959982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℤ) + Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A100710.P14348320331184959982

namespace A100710

/-- `or(n, n+1)+and(n+1, -(n+1))` -/
def P14348320331184959982.Spec : Prop :=
  ∀ n, P14348320331184959982.a n = A100710 (n + 1)

end A100710

/-! ## A100710.P9024244514146407631

`or(n, n+1)-or(n+1, -(n+1))`
-/

namespace A100710.P9024244514146407631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℤ) - Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A100710.P9024244514146407631

namespace A100710

/-- `or(n, n+1)-or(n+1, -(n+1))` -/
def P9024244514146407631.Spec : Prop :=
  ∀ n, P9024244514146407631.a n = A100710 (n + 1)

end A100710

/-! ## A100710.P14150005339453441327

`∑{d}[and(n+1, -(n+1)), #]+n+1`
-/

namespace A100710.P14150005339453441327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d + (n + 1)

end

end A100710.P14150005339453441327

namespace A100710

/-- `∑{d}[and(n+1, -(n+1)), #]+n+1` -/
def P14150005339453441327.Spec : Prop :=
  ∀ n, (P14150005339453441327.a n : ℤ) = A100710 (n + 1)

end A100710

/-! ## A100710.P2542183835995666539

`∑{d}[or(n+1, -(n+1)), #]+n+1`
-/

namespace A100710.P2542183835995666539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d + (n + 1)

end

end A100710.P2542183835995666539

namespace A100710

/-- `∑{d}[or(n+1, -(n+1)), #]+n+1` -/
def P2542183835995666539.Spec : Prop :=
  ∀ n, (P2542183835995666539.a n : ℤ) = A100710 (n + 1)

end A100710

/-! ## A100710.P16316738032929459938

`sqrt(A059152(n))+n`
-/

namespace A100710.P16316738032929459938
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059152 n : ℝ) + (n : ℝ)

end

end A100710.P16316738032929459938

namespace A100710

/-- `sqrt(A059152(n))+n` -/
def P16316738032929459938.Spec : Prop :=
  ∀ n, P16316738032929459938.a n = (A100710 (n + 1) : ℝ)

end A100710

/-! ## A100710.P8778702800996197428

`A349102(n+1)-1`
-/

namespace A100710.P8778702800996197428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349102 (n + 1) - 1

end

end A100710.P8778702800996197428

namespace A100710

/-- `A349102(n+1)-1` -/
def P8778702800996197428.Spec : Prop :=
  ∀ n, P8778702800996197428.a n = A100710 (n + 1)

end A100710

/-! ## A100710.P8623041234547573637

`A171977(n+1)+n`
-/

namespace A100710.P8623041234547573637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171977 (n + 1) + (n : ℤ)

end

end A100710.P8623041234547573637

namespace A100710

/-- `A171977(n+1)+n` -/
def P8623041234547573637.Spec : Prop :=
  ∀ n, P8623041234547573637.a n = A100710 (n + 1)

end A100710

/-! ## A100710.P3354171178404841641

`A038712(n+1)+1+n`
-/

namespace A100710.P3354171178404841641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1) + 1 + (n : ℤ)

end

end A100710.P3354171178404841641

namespace A100710

/-- `A038712(n+1)+1+n` -/
def P3354171178404841641.Spec : Prop :=
  ∀ n, P3354171178404841641.a n = A100710 (n + 1)

end A100710

/-! ## A100710.P18409146196518063501

`A118830(2*(n+1))+n`
-/

namespace A100710.P18409146196518063501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (2 * (n + 1)) + (n : ℤ)

end

end A100710.P18409146196518063501

namespace A100710

/-- `A118830(2*(n+1))+n` -/
def P18409146196518063501.Spec : Prop :=
  ∀ n, P18409146196518063501.a n = A100710 (n + 1)

end A100710

/-!
# A100712: Numbers n such that n*(n-1)-1 and n*(n+1)+1 are both primes.

The programs for A100712, there is no canonical definition to state claims against.
-/

/-! ## A100712.P13781924202024914343

`∩[A002328(n+1), A002384(n+1)]`
-/

namespace A100712.P13781924202024914343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100712.P13781924202024914343

/-! ## A100712.P10983755178913523212

`∩[A002328(n+1), A096176(n+1)]`
-/

namespace A100712.P10983755178913523212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100712.P10983755178913523212

/-! ## A100712.P154277959693500800

`∩[A002384(n+1), A045546(n+1)+1]`
-/

namespace A100712.P154277959693500800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100712.P154277959693500800

/-! ## A100712.P4007392892533705042

`∩[A045546(n+1)+1, A096176(n+1)]`
-/

namespace A100712.P4007392892533705042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100712.P4007392892533705042

/-! ## A100712.P18353403803276124068

`∩[A002328(n+1), A055494(n+1)-1]`
-/

namespace A100712.P18353403803276124068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100712.P18353403803276124068

/-! ## A100712.P13161726499674229041

`∩[A002384(n+1), A094210(n+1)+2]`
-/

namespace A100712.P13161726499674229041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100712.P13161726499674229041

/-! ## A100712.P18135854920839772808

`record[A214059(A002328(n+1))]`
-/

namespace A100712.P18135854920839772808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214059 (A002328 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100712.P18135854920839772808

/-! ## A100712.P10838727890798572424

`∩[A002384(n+1), A020725(A045546(n+1))]`
-/

namespace A100712.P10838727890798572424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A045546 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100712.P10838727890798572424

/-! ## A100712.P8303968981902597544

`∩[A002328(n+1), A023443(A055494(n+1))]`
-/

namespace A100712.P8303968981902597544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A055494 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100712.P8303968981902597544

/-!
# A100713: Hyperperfect brilliant numbers.

The programs for A100713, there is no canonical definition to state claims against.
-/

/-! ## A100713.P16045854200142868066

`∩[A007592(n+1), A078972(n+1)]`
-/

namespace A100713.P16045854200142868066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100713.P16045854200142868066

/-! ## A100713.P17783441790557601716

`∩[A007592(n+1), A085647(n+1)]`
-/

namespace A100713.P17783441790557601716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085647 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100713.P17783441790557601716

/-! ## A100713.P18012441134240083535

`∩[A007592(n+1), A239585(n+1)*A239586(n+1)]`
-/

namespace A100713.P18012441134240083535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239585 (n + 1) * A239586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100713.P18012441134240083535

/-!
# A100714: Number of runs in binary expansion of A000040(n) (the n-th prime number) for n > 0.

The programs for A100714, the canonical program `A100714.P17142724427829783874` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100714 has offset 1).

The definition of A100714 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A100714.P17142724427829783874

`A005811(A000040(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A100714

/-- `A005811(A000040(n+1))` -/
def P17142724427829783874.Spec : Prop :=
  ∀ n, P17142724427829783874.a n = A100714 (n + 1)

theorem P17142724427829783874.correct : P17142724427829783874.Spec := by
  intro n
  simp only [A100714, Nat.add_sub_cancel]

end A100714

/-! ## A100714.P16066820578515134119

`A005811(A090080(n+1))`
-/

namespace A100714.P16066820578515134119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A090080 (n + 1)).toNat

end

end A100714.P16066820578515134119

namespace A100714

/-- `A005811(A090080(n+1))` -/
def P16066820578515134119.Spec : Prop :=
  ∀ n, P16066820578515134119.a n = A100714 (n + 1)

end A100714

/-! ## A100714.P4826347154981088961

`A088748(A063884(n+1))-1`
-/

namespace A100714.P4826347154981088961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A063884 (n + 1)).toNat - 1

end

end A100714.P4826347154981088961

namespace A100714

/-- `A088748(A063884(n+1))-1` -/
def P4826347154981088961.Spec : Prop :=
  ∀ n, P4826347154981088961.a n = A100714 (n + 1)

end A100714

/-! ## A100714.P11768392777758844888

`A005811(Δ[A007504(n)])`
-/

namespace A100714.P11768392777758844888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (f1 (n + 1) - f1 n).toNat

end

end A100714.P11768392777758844888

namespace A100714

/-- `A005811(Δ[A007504(n)])` -/
def P11768392777758844888.Spec : Prop :=
  ∀ n, P11768392777758844888.a n = A100714 (n + 1)

end A100714

/-! ## A100714.P6219453870533944999

`A005811(record[A051698(n)])`
-/

namespace A100714.P6219453870533944999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100714.P6219453870533944999

namespace A100714

/-- `A005811(record[A051698(n)])` -/
def P6219453870533944999.Spec : Prop :=
  ∀ n, P6219453870533944999.a n = A100714 (n + 1)

end A100714

/-! ## A100714.P4933056345035506446

`A005811(A063884(n+1))`
-/

namespace A100714.P4933056345035506446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A063884 (n + 1)).toNat

end

end A100714.P4933056345035506446

namespace A100714

/-- `A005811(A063884(n+1))` -/
def P4933056345035506446.Spec : Prop :=
  ∀ n, P4933056345035506446.a n = A100714 (n + 1)

end A100714

/-! ## A100714.P15312829148183460508

`A005811(A008578(n+2))`
-/

namespace A100714.P15312829148183460508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A008578 (n + 2)).toNat

end

end A100714.P15312829148183460508

namespace A100714

/-- `A005811(A008578(n+2))` -/
def P15312829148183460508.Spec : Prop :=
  ∀ n, P15312829148183460508.a n = A100714 (n + 1)

end A100714

/-! ## A100714.P8016919128163991487

`A005811(A182986(n+2))`
-/

namespace A100714.P8016919128163991487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A182986 (n + 2)).toNat

end

end A100714.P8016919128163991487

namespace A100714

/-- `A005811(A182986(n+2))` -/
def P8016919128163991487.Spec : Prop :=
  ∀ n, P8016919128163991487.a n = A100714 (n + 1)

end A100714

/-! ## A100714.P16125976666252128625

`A005811(eq[1, A003415(n)])`
-/

namespace A100714.P16125976666252128625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A100714.P16125976666252128625

namespace A100714

/-- `A005811(eq[1, A003415(n)])` -/
def P16125976666252128625.Spec : Prop :=
  ∀ n, P16125976666252128625.a n = A100714 (n + 1)

end A100714

/-! ## A100714.P4439227648791823996

`A005811(eq[1, A032741(n)])`
-/

namespace A100714.P4439227648791823996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A100714.P4439227648791823996

namespace A100714

/-- `A005811(eq[1, A032741(n)])` -/
def P4439227648791823996.Spec : Prop :=
  ∀ n, P4439227648791823996.a n = A100714 (n + 1)

end A100714

/-! ## A100714.P7325504641301723550

`A005811(record[A039649(n+1)])`
-/

namespace A100714.P7325504641301723550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100714.P7325504641301723550

namespace A100714

/-- `A005811(record[A039649(n+1)])` -/
def P7325504641301723550.Spec : Prop :=
  ∀ n, P7325504641301723550.a n = A100714 (n + 1)

end A100714

/-! ## A100714.P11091109001849156475

`A005811(record[A006530(n+2)])`
-/

namespace A100714.P11091109001849156475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100714.P11091109001849156475

namespace A100714

/-- `A005811(record[A006530(n+2)])` -/
def P11091109001849156475.Spec : Prop :=
  ∀ n, P11091109001849156475.a n = A100714 (n + 1)

end A100714

/-! ## A100714.P5358339672293932036

`A005811(record[A014963(n+2)])`
-/

namespace A100714.P5358339672293932036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100714.P5358339672293932036

namespace A100714

/-- `A005811(record[A014963(n+2)])` -/
def P5358339672293932036.Spec : Prop :=
  ∀ n, P5358339672293932036.a n = A100714 (n + 1)

end A100714

/-! ## A100714.P8119544538972828983

`A005811(record[A020639(n+2)])`
-/

namespace A100714.P8119544538972828983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100714.P8119544538972828983

namespace A100714

/-- `A005811(record[A020639(n+2)])` -/
def P8119544538972828983.Spec : Prop :=
  ∀ n, P8119544538972828983.a n = A100714 (n + 1)

end A100714

/-! ## A100714.P14030747881442029035

`A005811(A006093(n+1)+1)`
-/

namespace A100714.P14030747881442029035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A006093 (n + 1) + 1).toNat

end

end A100714.P14030747881442029035

namespace A100714

/-- `A005811(A006093(n+1)+1)` -/
def P14030747881442029035.Spec : Prop :=
  ∀ n, P14030747881442029035.a n = A100714 (n + 1)

end A100714

/-! ## A100714.P6489600813633791395

`A005811(A040976(n+1)+2)`
-/

namespace A100714.P6489600813633791395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A040976 (n + 1) + 2).toNat

end

end A100714.P6489600813633791395

namespace A100714

/-- `A005811(A040976(n+1)+2)` -/
def P6489600813633791395.Spec : Prop :=
  ∀ n, P6489600813633791395.a n = A100714 (n + 1)

end A100714

/-! ## A100714.P18249990615393822251

`A005811(record[A000010(n+1)+1])`
-/

namespace A100714.P18249990615393822251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100714.P18249990615393822251

namespace A100714

/-- `A005811(record[A000010(n+1)+1])` -/
def P18249990615393822251.Spec : Prop :=
  ∀ n, P18249990615393822251.a n = A100714 (n + 1)

end A100714

/-! ## A100714.P15333844549161119069

`A005811(record[A140434(n+2)-n])`
-/

namespace A100714.P15333844549161119069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140434 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100714.P15333844549161119069

namespace A100714

/-- `A005811(record[A140434(n+2)-n])` -/
def P15333844549161119069.Spec : Prop :=
  ∀ n, P15333844549161119069.a n = A100714 (n + 1)

end A100714

/-! ## A100714.P6213515742980741383

`A005811(eq[1, A001222(n+1)]+1)`
-/

namespace A100714.P6213515742980741383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A100714.P6213515742980741383

namespace A100714

/-- `A005811(eq[1, A001222(n+1)]+1)` -/
def P6213515742980741383.Spec : Prop :=
  ∀ n, P6213515742980741383.a n = A100714 (n + 1)

end A100714

/-! ## A100714.P4076796160908059129

`A000120(A143292(n+1))`
-/

namespace A100714.P4076796160908059129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A143292 (n + 1)).toNat

end

end A100714.P4076796160908059129

namespace A100714

/-- `A000120(A143292(n+1))` -/
def P4076796160908059129.Spec : Prop :=
  ∀ n, P4076796160908059129.a n = A100714 (n + 1)

end A100714

/-!
# A100715: Pseudoperfect (or semiperfect) k-brilliant numbers for some k>1: some set of proper divisors of a(n) sums to a(n) and a(n) = p(1)p(2)...p(m) for primes all with the same number of digits.

The programs for A100715, there is no canonical definition to state claims against.
-/

/-! ## A100715.P8215017975398200234

`record[A071785(A005835(n+1))]`
-/

namespace A100715.P8215017975398200234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (A005835 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100715.P8215017975398200234

/-! ## A100715.P4483880840427629199

`record[A071785(A007620(n+2))]`
-/

namespace A100715.P4483880840427629199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (A007620 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100715.P4483880840427629199

/-! ## A100715.P3684450157946482781

`record[A071785(lt[1, A033630(n)])]`
-/

namespace A100715.P3684450157946482781
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100715.P3684450157946482781

/-! ## A100715.P3045680329290724856

`filter[A005835(n+1), A086299(#)]`
-/

namespace A100715.P3045680329290724856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A100715.P3045680329290724856

/-! ## A100715.P12817017439572687345

`filter[A002473(n+1), A210455(#)]`
-/

namespace A100715.P12817017439572687345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A210455 (f1 j).toNat = 1) n)

end

end A100715.P12817017439572687345

/-!
# A100716: Numbers k such that p^p divides k for some prime p.

The programs for A100716, the canonical program `A100716.P8277390293704349622` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100716 has offset 1).

The definition of A100716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100716.P5110546202869191147

`eq[C(2, n), A256750(n)]`
-/

namespace A100716.P5110546202869191147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A100716.P5110546202869191147

namespace A100716

/-- `eq[C(2, n), A256750(n)]` -/
def P5110546202869191147.Spec : Prop :=
  ∀ n, (P5110546202869191147.a n : ℤ) = A100716 (n + 1)

end A100716

/-! ## A100716.P10090582005934517773

`lt[n*A359550(n), n]`
-/

namespace A100716.P10090582005934517773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A359550 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A100716.P10090582005934517773

namespace A100716

/-- `lt[n*A359550(n), n]` -/
def P10090582005934517773.Spec : Prop :=
  ∀ n, (P10090582005934517773.a n : ℤ) = A100716 (n + 1)

end A100716

/-! ## A100716.P8277390293704349622

`eq[1, A342023(n+1)]+1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A100716

/-- `eq[1, A342023(n+1)]+1` -/
def P8277390293704349622.Spec : Prop :=
  ∀ n, (P8277390293704349622.a n : ℤ) = A100716 (n + 1)

theorem P8277390293704349622.correct : P8277390293704349622.Spec := by
  intro n
  simp only [A100716, Nat.add_sub_cancel]

end A100716

/-! ## A100716.P6767833804244492591

`lt[1, A327936(n+1)]+1`
-/

namespace A100716.P6767833804244492591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327936 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A100716.P6767833804244492591

namespace A100716

/-- `lt[1, A327936(n+1)]+1` -/
def P6767833804244492591.Spec : Prop :=
  ∀ n, (P6767833804244492591.a n : ℤ) = A100716 (n + 1)

end A100716

/-! ## A100716.P10772326545947908734

`lt[1, A327939(n+1)]+1`
-/

namespace A100716.P10772326545947908734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A100716.P10772326545947908734

namespace A100716

/-- `lt[1, A327939(n+1)]+1` -/
def P10772326545947908734.Spec : Prop :=
  ∀ n, (P10772326545947908734.a n : ℤ) = A100716 (n + 1)

end A100716

/-! ## A100716.P2850904216820709909

`lt[1, A342007(n+1)]+1`
-/

namespace A100716.P2850904216820709909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A100716.P2850904216820709909

namespace A100716

/-- `lt[1, A342007(n+1)]+1` -/
def P2850904216820709909.Spec : Prop :=
  ∀ n, (P2850904216820709909.a n : ℤ) = A100716 (n + 1)

end A100716

/-! ## A100716.P7194793955163373090

`eq[1, A256750(n+1)+1]+1`
-/

namespace A100716.P7194793955163373090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A100716.P7194793955163373090

namespace A100716

/-- `eq[1, A256750(n+1)+1]+1` -/
def P7194793955163373090.Spec : Prop :=
  ∀ n, (P7194793955163373090.a n : ℤ) = A100716 (n + 1)

end A100716

/-! ## A100716.P2105441198684267446

`eq[A105348(n), A256750(n)]`
-/

namespace A100716.P2105441198684267446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100716.P2105441198684267446

namespace A100716

/-- `eq[A105348(n), A256750(n)]` -/
def P2105441198684267446.Spec : Prop :=
  ∀ n, (P2105441198684267446.a n : ℤ) = A100716 (n + 1)

end A100716

/-! ## A100716.P8504459665667978403

`eq[A154269(n+2), A256750(n)]`
-/

namespace A100716.P8504459665667978403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100716.P8504459665667978403

namespace A100716

/-- `eq[A154269(n+2), A256750(n)]` -/
def P8504459665667978403.Spec : Prop :=
  ∀ n, (P8504459665667978403.a n : ℤ) = A100716 (n + 1)

end A100716

/-! ## A100716.P14010446647505498195

`∪[A100717(n+1), A185359(n+1)]`
-/

namespace A100716.P14010446647505498195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100716.P14010446647505498195

namespace A100716

/-- `∪[A100717(n+1), A185359(n+1)]` -/
def P14010446647505498195.Spec : Prop :=
  ∀ n, (P14010446647505498195.a n : ℤ) = A100716 (n + 1)

end A100716

/-! ## A100716.P13050124099477632967

`∪[A185359(n+1), A342090(n+1)]`
-/

namespace A100716.P13050124099477632967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100716.P13050124099477632967

namespace A100716

/-- `∪[A185359(n+1), A342090(n+1)]` -/
def P13050124099477632967.Spec : Prop :=
  ∀ n, (P13050124099477632967.a n : ℤ) = A100716 (n + 1)

end A100716

/-! ## A100716.P12155151168826984681

`filter[A355740(n+1), A342023(#)]`
-/

namespace A100716.P12155151168826984681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342023 (f1 j).toNat = 1) n)

end

end A100716.P12155151168826984681

namespace A100716

/-- `filter[A355740(n+1), A342023(#)]` -/
def P12155151168826984681.Spec : Prop :=
  ∀ n, P12155151168826984681.a n = A100716 (n + 1)

end A100716

/-! ## A100716.P6038253343190881246

`filter[A371089(n+1), A342023(#)]`
-/

namespace A100716.P6038253343190881246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342023 (f1 j).toNat = 1) n)

end

end A100716.P6038253343190881246

namespace A100716

/-- `filter[A371089(n+1), A342023(#)]` -/
def P6038253343190881246.Spec : Prop :=
  ∀ n, P6038253343190881246.a n = A100716 (n + 1)

end A100716

/-! ## A100716.P8958751393416458021

`filter[A274141(n+1), A342023(#)]`
-/

namespace A100716.P8958751393416458021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342023 (f1 j).toNat = 1) n)

end

end A100716.P8958751393416458021

namespace A100716

/-- `filter[A274141(n+1), A342023(#)]` -/
def P8958751393416458021.Spec : Prop :=
  ∀ n, P8958751393416458021.a n = A100716 (n + 1)

end A100716

/-! ## A100716.P7958079948640127570

`filter[A387711(n+1), A342023(#)]`
-/

namespace A100716.P7958079948640127570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342023 (f1 j).toNat = 1) n)

end

end A100716.P7958079948640127570

namespace A100716

/-- `filter[A387711(n+1), A342023(#)]` -/
def P7958079948640127570.Spec : Prop :=
  ∀ n, P7958079948640127570.a n = A100716 (n + 1)

end A100716

/-! ## A100716.P7926043841803659305

`filter[A013929(n+1), A342023(#)]`
-/

namespace A100716.P7926043841803659305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342023 (f1 j).toNat = 1) n)

end

end A100716.P7926043841803659305

namespace A100716

/-- `filter[A013929(n+1), A342023(#)]` -/
def P7926043841803659305.Spec : Prop :=
  ∀ n, P7926043841803659305.a n = A100716 (n + 1)

end A100716

/-! ## A100716.P1743030838216012268

`filter[A162966(n+1), A342023(#)]`
-/

namespace A100716.P1743030838216012268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342023 (f1 j).toNat = 1) n)

end

end A100716.P1743030838216012268

namespace A100716

/-- `filter[A162966(n+1), A342023(#)]` -/
def P1743030838216012268.Spec : Prop :=
  ∀ n, P1743030838216012268.a n = A100716 (n + 1)

end A100716

/-! ## A100716.P648541784644446563

`filter[A354360(n+1), A342023(#)]`
-/

namespace A100716.P648541784644446563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342023 (f1 j).toNat = 1) n)

end

end A100716.P648541784644446563

namespace A100716

/-- `filter[A354360(n+1), A342023(#)]` -/
def P648541784644446563.Spec : Prop :=
  ∀ n, P648541784644446563.a n = A100716 (n + 1)

end A100716

/-! ## A100716.P14746837388443748823

`filter[A327929(n+1), A342023(#)]`
-/

namespace A100716.P14746837388443748823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342023 (f1 j).toNat = 1) n)

end

end A100716.P14746837388443748823

namespace A100716

/-- `filter[A327929(n+1), A342023(#)]` -/
def P14746837388443748823.Spec : Prop :=
  ∀ n, P14746837388443748823.a n = A100716 (n + 1)

end A100716

/-!
# A100717: Numbers k having a prime divisor p such that p^p is the highest power of p that divides k.

The programs for A100717, the canonical program `A100717.P16628526132421071626` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100717 has offset 1).

The definition of A100717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100717.P16628526132421071626

`eq[0, A203908(n+1)]+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A100717

/-- `eq[0, A203908(n+1)]+1` -/
def P16628526132421071626.Spec : Prop :=
  ∀ n, (P16628526132421071626.a n : ℤ) = A100717 (n + 1)

theorem P16628526132421071626.correct : P16628526132421071626.Spec := by
  intro n
  simp only [A100717, Nat.add_sub_cancel]

end A100717

/-! ## A100717.P8053759772496618965

`eq[0, A203908(A028310(n))]`
-/

namespace A100717.P8053759772496618965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203908 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A100717.P8053759772496618965

namespace A100717

/-- `eq[0, A203908(A028310(n))]` -/
def P8053759772496618965.Spec : Prop :=
  ∀ n, (P8053759772496618965.a n : ℤ) = A100717 (n + 1)

end A100717

/-! ## A100717.P16237306685612970340

`A020725(eq[0, A203908(n+1)])`
-/

namespace A100717.P16237306685612970340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A100717.P16237306685612970340

namespace A100717

/-- `A020725(eq[0, A203908(n+1)])` -/
def P16237306685612970340.Spec : Prop :=
  ∀ n, P16237306685612970340.a n = A100717 (n + 1)

end A100717

/-! ## A100717.P17136731011241005150

`A065475(eq[0, A203908(n+1)])`
-/

namespace A100717.P17136731011241005150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A100717.P17136731011241005150

namespace A100717

/-- `A065475(eq[0, A203908(n+1)])` -/
def P17136731011241005150.Spec : Prop :=
  ∀ n, P17136731011241005150.a n = A100717 (n + 1)

end A100717

/-! ## A100717.P16121816835263240346

`eq[0, A203908(A000038(n)+n)]`
-/

namespace A100717.P16121816835263240346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203908 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A100717.P16121816835263240346

namespace A100717

/-- `eq[0, A203908(A000038(n)+n)]` -/
def P16121816835263240346.Spec : Prop :=
  ∀ n, (P16121816835263240346.a n : ℤ) = A100717 (n + 1)

end A100717

/-! ## A100717.P2290425503687945342

`eq[0, A203908(A233583(n+1))]`
-/

namespace A100717.P2290425503687945342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203908 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A100717.P2290425503687945342

namespace A100717

/-- `eq[0, A203908(A233583(n+1))]` -/
def P2290425503687945342.Spec : Prop :=
  ∀ n, (P2290425503687945342.a n : ℤ) = A100717 (n + 1)

end A100717

/-!
# A100719: Size of the largest subset of {1,2,...,n} such that no two distinct elements differ by a perfect square.

The programs for A100719, there is no canonical definition to state claims against.
-/

/-! ## A100719.P16161441600522342998

`∑[A003982(A014586(n)*A101620(n+1))]`
-/

namespace A100719.P16161441600522342998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A014586 n * A101620 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100719.P16161441600522342998

/-! ## A100719.P11839347296874792974

`∑[A003982(A014586(n)*A141214(n))]`
-/

namespace A100719.P11839347296874792974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A014586 n * A141214 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100719.P11839347296874792974

/-! ## A100719.P6804853775380100717

`∑[A059841(A338027(n))]%A141214(n)`
-/

namespace A100719.P6804853775380100717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A338027 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A141214 n)

end

end A100719.P6804853775380100717

/-! ## A100719.P6402436687779459500

`∑[A000007(A014586(n)*A101620(n+1))]`
-/

namespace A100719.P6402436687779459500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A014586 n * A101620 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100719.P6402436687779459500

/-! ## A100719.P5060697425737079903

`A209899(A112414(n+1))`
-/

namespace A100719.P5060697425737079903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209899 (A112414 (n + 1)).toNat

end

end A100719.P5060697425737079903

/-!
# A100720: Expansion of g.f.: (3+x+2*x^2-2*x^3)/((1-2*x)*(1+x^2)).

The programs for A100720, the canonical program `A100720.P16385423633345855163` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100720 has offset 0).

The definition of A100720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100720.P16385423633345855163

`A290114(n+1)+and(2, n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A100720

/-- `A290114(n+1)+and(2, n+1)` -/
def P16385423633345855163.Spec : Prop :=
  ∀ n, P16385423633345855163.a n = A100720 n

theorem P16385423633345855163.correct : P16385423633345855163.Spec := by
  intro n
  simp only [A100720]

end A100720

/-! ## A100720.P573924584939854982

`A007679(n+1)+A084099(n)+A007679(n+2)`
-/

namespace A100720.P573924584939854982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007679 (n + 1) + (A084099 n + A007679 (n + 2))

end

end A100720.P573924584939854982

namespace A100720

/-- `A007679(n+1)+A084099(n)+A007679(n+2)` -/
def P573924584939854982.Spec : Prop :=
  ∀ n, P573924584939854982.a n = A100720 n

end A100720

/-! ## A100720.P8529319752634984863

`Δ[3*2^n-floor(∑[cos(11*n)])]`
-/

namespace A100720.P8529319752634984863
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (11 * n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ n : ℤ) - ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100720.P8529319752634984863

namespace A100720

/-- `Δ[3*2^n-floor(∑[cos(11*n)])]` -/
def P8529319752634984863.Spec : Prop :=
  ∀ n, P8529319752634984863.a n = A100720 n

end A100720

/-! ## A100720.P6652756517277990238

`Δ[or(1, 3*2^n)]-(-1)^∑[n]`
-/

namespace A100720.P6652756517277990238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * 2 ^ n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A100720.P6652756517277990238

namespace A100720

/-- `Δ[or(1, 3*2^n)]-(-1)^∑[n]` -/
def P6652756517277990238.Spec : Prop :=
  ∀ n, P6652756517277990238.a n = A100720 n

end A100720

/-! ## A100720.P8557126997340815370

`Δ[A033484(n)-A117569(n)]`
-/

namespace A100720.P8557126997340815370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n - A117569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100720.P8557126997340815370

namespace A100720

/-- `Δ[A033484(n)-A117569(n)]` -/
def P8557126997340815370.Spec : Prop :=
  ∀ n, P8557126997340815370.a n = A100720 n

end A100720

/-!
# A100721: a(n) = n - a(a(a(a(a(a(n-1)))))), a(0)=0.

The programs for A100721, the canonical program `A100721.P10440780791725141386` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100721 has offset 0).

The definition of A100721 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-a(a(a(a(a(a(n-1))))))` (program `A100721.P10440780791725141386`, by `A100721.P10440780791725141386.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100721.P10440780791725141386

`n-a(a(a(a(a(a(n-1))))))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A100721

/-- `n-a(a(a(a(a(a(n-1))))))` -/
def P10440780791725141386.Spec : Prop :=
  ∀ n, P10440780791725141386.a n = A100721 n

theorem P10440780791725141386.correct : P10440780791725141386.Spec := by
  intro n
  simp only [A100721]

end A100721

/-! ## A100721.P3519520576531829229

`∑[A242018(A085722(2*n+3)²)]`
-/

namespace A100721.P3519520576531829229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242018 (A085722 (2 * n + 3) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100721.P3519520576531829229

namespace A100721

/-- `∑[A242018(A085722(2*n+3)²)]` -/
def P3519520576531829229.Spec : Prop :=
  ∀ n, P3519520576531829229.a n = A100721 n

end A100721

/-! ## A100721.P5189245011125918366

`A000523(record[A027926(3*n+2)])`
-/

namespace A100721.P5189245011125918366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100721.P5189245011125918366

namespace A100721

/-- `A000523(record[A027926(3*n+2)])` -/
def P5189245011125918366.Spec : Prop :=
  ∀ n, P5189245011125918366.a n = A100721 n

end A100721

/-!
# A100722: Prime numbers whose binary representations are split into exactly five runs.

The programs for A100722, there is no canonical definition to state claims against.
-/

/-! ## A100722.P13571776426335922477

`p?[A043572(n+1)]`
-/

namespace A100722.P13571776426335922477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100722.P13571776426335922477

/-! ## A100722.P3535605101489642751

`p?[A043683(n+1)]`
-/

namespace A100722.P3535605101489642751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100722.P3535605101489642751

/-! ## A100722.P5300546968966008810

`p?[A043688(n+1)]`
-/

namespace A100722.P5300546968966008810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100722.P5300546968966008810

/-! ## A100722.P13712189951078897853

`p?[A043723(n+2)]`
-/

namespace A100722.P13712189951078897853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043723 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100722.P13712189951078897853

/-!
# A100723: Prime numbers whose binary representations are split into exactly seven runs.

The programs for A100723, the canonical program `A100723.P15974936563613986025` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100723 has offset 1).

The definition of A100723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100723.P15974936563613986025

`p?[A043574(n+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A100723

/-- `p?[A043574(n+1)]` -/
def P15974936563613986025.Spec : Prop :=
  ∀ n, P15974936563613986025.a n = A100723 (n + 1)

theorem P15974936563613986025.correct : P15974936563613986025.Spec := by
  intro n
  simp only [A100723, Nat.add_sub_cancel]

end A100723

/-! ## A100723.P10468866393695732926

`p?[2*A043689(n+1)+1]`
-/

namespace A100723.P10468866393695732926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043689 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100723.P10468866393695732926

namespace A100723

/-- `p?[2*A043689(n+1)+1]` -/
def P10468866393695732926.Spec : Prop :=
  ∀ n, P10468866393695732926.a n = A100723 (n + 1)

end A100723

/-! ## A100723.P8324000541807977025

`record[A006530(A043574(n+2))]`
-/

namespace A100723.P8324000541807977025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A043574 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100723.P8324000541807977025

namespace A100723

/-- `record[A006530(A043574(n+2))]` -/
def P8324000541807977025.Spec : Prop :=
  ∀ n, P8324000541807977025.a n = A100723 (n + 1)

end A100723

/-! ## A100723.P12998845711950439934

`filter[A043574(n+1), A010051(#)]`
-/

namespace A100723.P12998845711950439934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A100723.P12998845711950439934

namespace A100723

/-- `filter[A043574(n+1), A010051(#)]` -/
def P12998845711950439934.Spec : Prop :=
  ∀ n, P12998845711950439934.a n = A100723 (n + 1)

end A100723

/-! ## A100723.P17535883504814076912

`∩[A000040(n+1), A043574(n+1)]`
-/

namespace A100723.P17535883504814076912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100723.P17535883504814076912

namespace A100723

/-- `∩[A000040(n+1), A043574(n+1)]` -/
def P17535883504814076912.Spec : Prop :=
  ∀ n, (P17535883504814076912.a n : ℤ) = A100723 (n + 1)

end A100723

/-! ## A100723.P12518179226772684963

`∩[A001751(n+1), A043574(n+1)]`
-/

namespace A100723.P12518179226772684963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100723.P12518179226772684963

namespace A100723

/-- `∩[A001751(n+1), A043574(n+1)]` -/
def P12518179226772684963.Spec : Prop :=
  ∀ n, (P12518179226772684963.a n : ℤ) = A100723 (n + 1)

end A100723

/-! ## A100723.P9540028477489738038

`∩[A004139(n+1), A043574(n+1)]`
-/

namespace A100723.P9540028477489738038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100723.P9540028477489738038

namespace A100723

/-- `∩[A004139(n+1), A043574(n+1)]` -/
def P9540028477489738038.Spec : Prop :=
  ∀ n, (P9540028477489738038.a n : ℤ) = A100723 (n + 1)

end A100723

/-! ## A100723.P380405649025035977

`∩[A006005(n+1), A043574(n+1)]`
-/

namespace A100723.P380405649025035977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100723.P380405649025035977

namespace A100723

/-- `∩[A006005(n+1), A043574(n+1)]` -/
def P380405649025035977.Spec : Prop :=
  ∀ n, (P380405649025035977.a n : ℤ) = A100723 (n + 1)

end A100723

/-! ## A100723.P3845021581790642399

`∩[A033946(n+1), A043574(n+1)]`
-/

namespace A100723.P3845021581790642399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100723.P3845021581790642399

namespace A100723

/-- `∩[A033946(n+1), A043574(n+1)]` -/
def P3845021581790642399.Spec : Prop :=
  ∀ n, (P3845021581790642399.a n : ℤ) = A100723 (n + 1)

end A100723

/-! ## A100723.P10552336007176816166

`∩[A046022(n+1), A043574(n+1)]`
-/

namespace A100723.P10552336007176816166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100723.P10552336007176816166

namespace A100723

/-- `∩[A046022(n+1), A043574(n+1)]` -/
def P10552336007176816166.Spec : Prop :=
  ∀ n, (P10552336007176816166.a n : ℤ) = A100723 (n + 1)

end A100723

/-! ## A100723.P11949795637230105303

`∩[A043574(n+1), A051948(n+1)]`
-/

namespace A100723.P11949795637230105303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100723.P11949795637230105303

namespace A100723

/-- `∩[A043574(n+1), A051948(n+1)]` -/
def P11949795637230105303.Spec : Prop :=
  ∀ n, (P11949795637230105303.a n : ℤ) = A100723 (n + 1)

end A100723

/-! ## A100723.P13597267091632306301

`∩[A043574(n+1), A053813(n+1)]`
-/

namespace A100723.P13597267091632306301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100723.P13597267091632306301

namespace A100723

/-- `∩[A043574(n+1), A053813(n+1)]` -/
def P13597267091632306301.Spec : Prop :=
  ∀ n, (P13597267091632306301.a n : ℤ) = A100723 (n + 1)

end A100723

/-! ## A100723.P7992239680238374835

`∩[A043574(n+1), A058363(n+1)]`
-/

namespace A100723.P7992239680238374835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100723.P7992239680238374835

namespace A100723

/-- `∩[A043574(n+1), A058363(n+1)]` -/
def P7992239680238374835.Spec : Prop :=
  ∀ n, (P7992239680238374835.a n : ℤ) = A100723 (n + 1)

end A100723

/-!
# A100724: Prime numbers whose binary representations are split into at most 3 runs.

The programs for A100724, the canonical program `A100724.P3413526531919295231` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100724 has offset 1).

The definition of A100724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100724.P14011126018792654573

`p?[A171987(n+1)-1]`
-/

namespace A100724.P14011126018792654573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171987 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100724.P14011126018792654573

namespace A100724

/-- `p?[A171987(n+1)-1]` -/
def P14011126018792654573.Spec : Prop :=
  ∀ n, P14011126018792654573.a n = A100724 (n + 1)

end A100724

/-! ## A100724.P3413526531919295231

`A000040(lt[A100714(n+1), 4]+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A100724

/-- `A000040(lt[A100714(n+1), 4]+1)` -/
def P3413526531919295231.Spec : Prop :=
  ∀ n, P3413526531919295231.a n = A100724 (n + 1)

theorem P3413526531919295231.correct : P3413526531919295231.Spec := by
  intro n
  simp only [A100724, Nat.add_sub_cancel]

end A100724

/-! ## A100724.P17327056537215831720

`∩[A000040(n+1), A171987(n+1)-1]`
-/

namespace A100724.P17327056537215831720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171987 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100724.P17327056537215831720

namespace A100724

/-- `∩[A000040(n+1), A171987(n+1)-1]` -/
def P17327056537215831720.Spec : Prop :=
  ∀ n, (P17327056537215831720.a n : ℤ) = A100724 (n + 1)

end A100724

/-! ## A100724.P984377796527827732

`∩[A070159(n+1), A171987(n+1)-1]`
-/

namespace A100724.P984377796527827732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171987 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100724.P984377796527827732

namespace A100724

/-- `∩[A070159(n+1), A171987(n+1)-1]` -/
def P984377796527827732.Spec : Prop :=
  ∀ n, (P984377796527827732.a n : ℤ) = A100724 (n + 1)

end A100724

/-! ## A100724.P7450619792615685305

`p?[A087734(A087734(n))+n]`
-/

namespace A100724.P7450619792615685305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087734 (A087734 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100724.P7450619792615685305

namespace A100724

/-- `p?[A087734(A087734(n))+n]` -/
def P7450619792615685305.Spec : Prop :=
  ∀ n, P7450619792615685305.a n = A100724 (n + 1)

end A100724

/-! ## A100724.P8264531093412543362

`p?[record[A187769(n)-1]]`
-/

namespace A100724.P8264531093412543362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187769 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100724.P8264531093412543362

namespace A100724

/-- `p?[record[A187769(n)-1]]` -/
def P8264531093412543362.Spec : Prop :=
  ∀ n, P8264531093412543362.a n = A100724 (n + 1)

end A100724

/-!
# A100725: Prime numbers whose binary representations are split into a maximum of 5 runs.

The programs for A100725, there is no canonical definition to state claims against.
-/

/-! ## A100725.P14302495583757248574

`p?[n*A007318(A005811(n))]`
-/

namespace A100725.P14302495583757248574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007318 (A005811 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100725.P14302495583757248574

/-! ## A100725.P17630432026508696660

`p?[n*A052173(A072219(n+1))]`
-/

namespace A100725.P17630432026508696660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052173 (A072219 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100725.P17630432026508696660

/-! ## A100725.P11440472765792301672

`∪[A100722(n+1), A100724(n+1)]`
-/

namespace A100725.P11440472765792301672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100725.P11440472765792301672

/-! ## A100725.P16401856146788872624

`∪[A082554(n+1), A268477(n+1)]`
-/

namespace A100725.P16401856146788872624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100725.P16401856146788872624

/-! ## A100725.P885265337538306755

`∪[A100724(n+1), A268477(n+1)]`
-/

namespace A100725.P885265337538306755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100725.P885265337538306755

/-!
# A100726: Prime numbers whose binary representations are split into a maximum of 7 runs.

The programs for A100726, there is no canonical definition to state claims against.
-/

/-! ## A100726.P5638125162611795056

`p?[floor(n*sin(2))]`
-/

namespace A100726.P5638125162611795056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sin (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100726.P5638125162611795056

/-! ## A100726.P14783939744814045647

`p?[ceil(n*sin(8))]`
-/

namespace A100726.P14783939744814045647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.sin (8 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100726.P14783939744814045647

/-! ## A100726.P15666719858597546788

`p?[floor(n/sin(8))]`
-/

namespace A100726.P15666719858597546788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sin (8 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100726.P15666719858597546788

/-! ## A100726.P11978656407280436316

`p?[ceil(n*tanh(2))]`
-/

namespace A100726.P11978656407280436316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.tanh (2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100726.P11978656407280436316

/-! ## A100726.P18085830271929430724

`p?[floor(n*tanh(3))]`
-/

namespace A100726.P18085830271929430724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.tanh (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100726.P18085830271929430724

/-! ## A100726.P15636342899968178702

`p?[ceil(n/sin(8))]`
-/

namespace A100726.P15636342899968178702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.sin (8 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100726.P15636342899968178702

/-! ## A100726.P2407465698281980243

`p?[floor(n/tanh(3))]`
-/

namespace A100726.P2407465698281980243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.tanh (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100726.P2407465698281980243

/-! ## A100726.P7870908354681303552

`p?[ceil(n/tanh(3))]`
-/

namespace A100726.P7870908354681303552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.tanh (3 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100726.P7870908354681303552

/-! ## A100726.P9135790095102946672

`p?[floor(n^tanh(4))]`
-/

namespace A100726.P9135790095102946672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ (Real.tanh (4 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100726.P9135790095102946672

/-! ## A100726.P1371985515682338141

`p?[ceil(n^tanh(4))]`
-/

namespace A100726.P1371985515682338141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) ^ (Real.tanh (4 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100726.P1371985515682338141

/-!
# A100727: Continued fraction expansion of (1/2) [tan(1) + sec(1)].

The programs for A100727, the canonical program `A100727.P8972541328592972460` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100727 has offset 0).

The definition of A100727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100727.P8972541328592972460

`ceil(gcd(A092535(n), A233035(n+1))/2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A100727

/-- `ceil(gcd(A092535(n), A233035(n+1))/2)` -/
def P8972541328592972460.Spec : Prop :=
  ∀ n, P8972541328592972460.a n = A100727 n

theorem P8972541328592972460.correct : P8972541328592972460.Spec := by
  intro n
  simp only [A100727]

end A100727

/-! ## A100727.P6751411248377532587

`A065033(gcd(A092535(n), A233035(n+1)))`
-/

namespace A100727.P6751411248377532587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.gcd (A092535 n) (A233035 (n + 1)))

end

end A100727.P6751411248377532587

namespace A100727

/-- `A065033(gcd(A092535(n), A233035(n+1)))` -/
def P6751411248377532587.Spec : Prop :=
  ∀ n, P6751411248377532587.a n = A100727 n

end A100727

/-! ## A100727.P15294940927988241835

`gcd(A131508(n), A242112(A004271(n)))`
-/

namespace A100727.P15294940927988241835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131508 n) (A242112 (A004271 n).toNat)

end

end A100727.P15294940927988241835

namespace A100727

/-- `gcd(A131508(n), A242112(A004271(n)))` -/
def P15294940927988241835.Spec : Prop :=
  ∀ n, (P15294940927988241835.a n : ℤ) = A100727 n

end A100727

/-!
# A100728: Number of rank-(n-2) simple matroids on S_n.

The programs for A100728, there is no canonical definition to state claims against.
-/

/-! ## A100728.P9430455944004355658

`A058720(∑[n+3]+2)`
-/

namespace A100728.P9430455944004355658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058720 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A100728.P9430455944004355658

/-!
# A100730: Fundamental difference of Ulam 1-additive sequence starting U(2,2n+1).

The programs for A100730, there is no canonical definition to state claims against.
-/

/-! ## A100730.P17827875529382456120

`2*A046932(2*(n+2)+2)`
-/

namespace A100730.P17827875529382456120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046932 (2 * (n + 2) + 2)

end

end A100730.P17827875529382456120

/-! ## A100730.P16953771464938822637

`lcm(2, A046932(A020739(n)))`
-/

namespace A100730.P16953771464938822637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A046932 (A020739 n).toNat)

end

end A100730.P16953771464938822637

/-!
# A100731: a(n) = 3^(n!).

The programs for A100731, the canonical program `A100731.P11569419495613748005` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100731 has offset 0).

The definition of A100731 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n!` (program `A100731.P11569419495613748005`, by `A100731.P11569419495613748005.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100731.P11569419495613748005

`3^n!`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A100731

/-- `3^n!` -/
def P11569419495613748005.Spec : Prop :=
  ∀ n, (P11569419495613748005.a n : ℤ) = A100731 n

theorem P11569419495613748005.correct : P11569419495613748005.Spec := by
  intro n
  simp only [A100731]

end A100731

/-!
# A100732: a(n) = (3*n)!.

The programs for A100732, the canonical program `A100732.P13922404550574543906` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100732 has offset 0).

The definition of A100732 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n)!` (program `A100732.P13922404550574543906`, by `A100732.P13922404550574543906.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100732.P13922404550574543906

`(3*n)!`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A100732

/-- `(3*n)!` -/
def P13922404550574543906.Spec : Prop :=
  ∀ n, (P13922404550574543906.a n : ℤ) = A100732 n

theorem P13922404550574543906.correct : P13922404550574543906.Spec := by
  intro n
  simp only [A100732]

end A100732

/-! ## A100732.P2445363213299365267

`A000142(A008585(n))`
-/

namespace A100732.P2445363213299365267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A008585 n).toNat

end

end A100732.P2445363213299365267

namespace A100732

/-- `A000142(A008585(n))` -/
def P2445363213299365267.Spec : Prop :=
  ∀ n, P2445363213299365267.a n = A100732 n

end A100732

/-! ## A100732.P2563058186913856461

`record[(dr(n)+n+n)!]`
-/

namespace A100732.P2563058186913856461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.digitalRoot (n : ℤ) + n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100732.P2563058186913856461

namespace A100732

/-- `record[(dr(n)+n+n)!]` -/
def P2563058186913856461.Spec : Prop :=
  ∀ n, (P2563058186913856461.a n : ℤ) = A100732 n

end A100732

/-! ## A100732.P10403623531795314134

`and(floor(3/acot(n))!, -1)`
-/

namespace A100732.P10403623531795314134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋.toNat : ℤ) (-1)

end

end A100732.P10403623531795314134

namespace A100732

/-- `and(floor(3/acot(n))!, -1)` -/
def P10403623531795314134.Spec : Prop :=
  ∀ n, P10403623531795314134.a n = A100732 n

end A100732

/-! ## A100732.P11757808781706582294

`record[n!^(1-n%3)]`
-/

namespace A100732.P11757808781706582294
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) ^ (1 - ((n % 3 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100732.P11757808781706582294

namespace A100732

/-- `record[n!^(1-n%3)]` -/
def P11757808781706582294.Spec : Prop :=
  ∀ n, P11757808781706582294.a n = (A100732 n : ℚ)

end A100732

/-!
# A100733: a(n) = (4*n)!.

The programs for A100733, the canonical program `A100733.P10131206960227758573` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100733 has offset 0).

The definition of A100733 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n)!` (program `A100733.P10131206960227758573`, by `A100733.P10131206960227758573.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100733.P10131206960227758573

`(4*n)!`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A100733

/-- `(4*n)!` -/
def P10131206960227758573.Spec : Prop :=
  ∀ n, (P10131206960227758573.a n : ℤ) = A100733 n

theorem P10131206960227758573.correct : P10131206960227758573.Spec := by
  intro n
  simp only [A100733]

end A100733

/-! ## A100733.P349082049416087788

`record[(lcm(2, n+1)-2)!]`
-/

namespace A100733.P349082049416087788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((Nat.lcm 2 (n + 1) : ℤ) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100733.P349082049416087788

namespace A100733

/-- `record[(lcm(2, n+1)-2)!]` -/
def P349082049416087788.Spec : Prop :=
  ∀ n, (P349082049416087788.a n : ℤ) = A100733 n

end A100733

/-! ## A100733.P15147137687988386833

`record[(n^val(gcd(4, n), 4))!]`
-/

namespace A100733.P15147137687988386833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n ^ SequenceMachineLib.valuation (Nat.gcd 4 n) 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100733.P15147137687988386833

namespace A100733

/-- `record[(n^val(gcd(4, n), 4))!]` -/
def P15147137687988386833.Spec : Prop :=
  ∀ n, (P15147137687988386833.a n : ℤ) = A100733 n

end A100733

/-! ## A100733.P12343756982409813999

`and(floor(4/sinh(acot(n)))!, -1)`
-/

namespace A100733.P12343756982409813999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial ⌊4 / Real.sinh (SequenceMachineLib.acot (n : ℝ))⌋.toNat : ℤ) (-1)

end

end A100733.P12343756982409813999

namespace A100733

/-- `and(floor(4/sinh(acot(n)))!, -1)` -/
def P12343756982409813999.Spec : Prop :=
  ∀ n, P12343756982409813999.a n = A100733 n

end A100733

/-! ## A100733.P1965856100156133988

`record[and(n+2, n!-4)!]`
-/

namespace A100733.P1965856100156133988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land (n + 2 : ℤ) ((Nat.factorial n : ℤ) - 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100733.P1965856100156133988

namespace A100733

/-- `record[and(n+2, n!-4)!]` -/
def P1965856100156133988.Spec : Prop :=
  ∀ n, (P1965856100156133988.a n : ℤ) = A100733 n

end A100733

/-!
# A100734: 

The programs for A100734, there is no canonical definition to state claims against.
-/

/-! ## A100734.P9333801215643771640

`(5*n)!`
-/

namespace A100734.P9333801215643771640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (5 * n)

end

end A100734.P9333801215643771640

/-! ## A100734.P58105015033604514

`record[val((n+1)^5, 2)!]`
-/

namespace A100734.P58105015033604514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation ((n + 1) ^ 5) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100734.P58105015033604514

/-! ## A100734.P3468392133101267564

`record[∑[xor(1, 4-a(n-1))]!]` with `a(0)=0`
-/

namespace A100734.P3468392133101267564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  Int.xor 1 (4 - f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100734.P3468392133101267564

/-! ## A100734.P8231652810056088618

`5*n*(5*n-1)*(5*n-2)*(5*n-3)*(5*n-4)*a(n-1)` with `a(0)=1`
-/

namespace A100734.P8231652810056088618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * ((n : ℤ) * (((5 * n : ℤ) - 1) * (((5 * n : ℤ) - 2) * (((5 * n : ℤ) - 3) * ((5 * n : ℤ) - 4))))) * a (n - 1)

end

end A100734.P8231652810056088618

/-! ## A100734.P5478516523323562135

`A000142(5*n)`
-/

namespace A100734.P5478516523323562135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (5 * n)

end

end A100734.P5478516523323562135

/-!
# A100735: Inverse modulo 2 binomial transform of 2^n.

The programs for A100735, the canonical program `A100735.P10975525326014935037` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100735 has offset 0).

The definition of A100735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100735.P10975525326014935037

`A100737(A004526(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A100735

/-- `A100737(A004526(n))` -/
def P10975525326014935037.Spec : Prop :=
  ∀ n, P10975525326014935037.a n = A100735 n

theorem P10975525326014935037.correct : P10975525326014935037.Spec := by
  intro n
  simp only [A100735]

end A100735

/-! ## A100735.P2491972663169923832

`A100737(A140106(n+2))`
-/

namespace A100735.P2491972663169923832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100737 (A140106 (n + 2)).toNat

end

end A100735.P2491972663169923832

namespace A100735

/-- `A100737(A140106(n+2))` -/
def P2491972663169923832.Spec : Prop :=
  ∀ n, P2491972663169923832.a n = A100735 n

end A100735

/-! ## A100735.P12266522450595775776

`A100744(A052928(n))`
-/

namespace A100735.P12266522450595775776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100744 (A052928 n).toNat

end

end A100735.P12266522450595775776

namespace A100735

/-- `A100744(A052928(n))` -/
def P12266522450595775776.Spec : Prop :=
  ∀ n, P12266522450595775776.a n = A100735 n

end A100735

/-! ## A100735.P10234354825287124560

`A100744(n+2-A010693(n))`
-/

namespace A100735.P10234354825287124560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100744 ((n + 2 : ℤ) - A010693 n).toNat

end

end A100735.P10234354825287124560

namespace A100735

/-- `A100744(n+2-A010693(n))` -/
def P10234354825287124560.Spec : Prop :=
  ∀ n, P10234354825287124560.a n = A100735 n

end A100735

/-! ## A100735.P15859313549853576379

`A100744(n-A010060(A160017(n)))`
-/

namespace A100735.P15859313549853576379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100744 ((n : ℤ) - A010060 (A160017 n).toNat).toNat

end

end A100735.P15859313549853576379

namespace A100735

/-- `A100744(n-A010060(A160017(n)))` -/
def P15859313549853576379.Spec : Prop :=
  ∀ n, P15859313549853576379.a n = A100735 n

end A100735

/-! ## A100735.P2336718880192652248

`A100744(n-A010060(A161579(n+1)))`
-/

namespace A100735.P2336718880192652248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100744 ((n : ℤ) - A010060 (A161579 (n + 1)).toNat).toNat

end

end A100735.P2336718880192652248

namespace A100735

/-- `A100744(n-A010060(A161579(n+1)))` -/
def P2336718880192652248.Spec : Prop :=
  ∀ n, P2336718880192652248.a n = A100735 n

end A100735

/-! ## A100735.P15868609583724034523

`∏{p}[A019565(n), A000225(A048675(#))]`
-/

namespace A100735.P15868609583724034523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000225 (A048675 p).toNat

end

end A100735.P15868609583724034523

namespace A100735

/-- `∏{p}[A019565(n), A000225(A048675(#))]` -/
def P15868609583724034523.Spec : Prop :=
  ∀ n, P15868609583724034523.a n = A100735 n

end A100735

/-! ## A100735.P13384576446296648315

`∏{p}[A019565(n), A000225(A087207(#))]`
-/

namespace A100735.P13384576446296648315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000225 (A087207 p).toNat

end

end A100735.P13384576446296648315

namespace A100735

/-- `∏{p}[A019565(n), A000225(A087207(#))]` -/
def P13384576446296648315.Spec : Prop :=
  ∀ n, P13384576446296648315.a n = A100735 n

end A100735

/-! ## A100735.P13308561787910773320

`∏{p}[A019565(n), A000225(A292382(#))]`
-/

namespace A100735.P13308561787910773320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000225 (A292382 p).toNat

end

end A100735.P13308561787910773320

namespace A100735

/-- `∏{p}[A019565(n), A000225(A292382(#))]` -/
def P13308561787910773320.Spec : Prop :=
  ∀ n, P13308561787910773320.a n = A100735 n

end A100735

/-! ## A100735.P11852839891977719887

`∏{p}[A019565(n), A000225(A297108(#))]`
-/

namespace A100735.P11852839891977719887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000225 (A297108 p).toNat

end

end A100735.P11852839891977719887

namespace A100735

/-- `∏{p}[A019565(n), A000225(A297108(#))]` -/
def P11852839891977719887.Spec : Prop :=
  ∀ n, P11852839891977719887.a n = A100735 n

end A100735

/-! ## A100735.P8366260261125724347

`A100737(n)/A001317(n)`
-/

namespace A100735.P8366260261125724347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100737 n : ℚ) / (A001317 n : ℚ)

end

end A100735.P8366260261125724347

namespace A100735

/-- `A100737(n)/A001317(n)` -/
def P8366260261125724347.Spec : Prop :=
  ∀ n, P8366260261125724347.a n = (A100735 n : ℚ)

end A100735

/-!
# A100736: Inverse modulo 2 binomial transform of 3^n.

The programs for A100736, there is no canonical definition to state claims against.
-/

/-! ## A100736.P2598773975484320310

`A000034(n)*A100472(A004526(n))`
-/

namespace A100736.P2598773975484320310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A100472 (A004526 n).toNat

end

end A100736.P2598773975484320310

/-! ## A100736.P6143088710793845814

`∏{p}[A019565(n), A000244(A048675(#))-1]`
-/

namespace A100736.P6143088710793845814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000244 (A048675 p).toNat - 1)

end

end A100736.P6143088710793845814

/-! ## A100736.P1584519510413548137

`A100472(n)/A100307(n)`
-/

namespace A100736.P1584519510413548137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100472 n : ℚ) / (A100307 n : ℚ)

end

end A100736.P1584519510413548137

/-! ## A100736.P3317503025078920565

`A091732(3^n)`
-/

namespace A100736.P3317503025078920565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (3 ^ n)

end

end A100736.P3317503025078920565

/-! ## A100736.P7543062315253640865

`3^n-A323413(3^n)`
-/

namespace A100736.P7543062315253640865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A323413 (3 ^ n)

end

end A100736.P7543062315253640865

/-!
# A100737: Inverse modulo 2 binomial transform of 4^n.

The programs for A100737, the canonical program `A100737.P7532990618770377108` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100737 has offset 0).

The definition of A100737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100737.P11896723547821299554

`A100735(2*n)`
-/

namespace A100737.P11896723547821299554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100735 (2 * n)

end

end A100737.P11896723547821299554

namespace A100737

/-- `A100735(2*n)` -/
def P11896723547821299554.Spec : Prop :=
  ∀ n, P11896723547821299554.a n = A100737 n

end A100737

/-! ## A100737.P8488548535615803177

`or(1, A100735(Δ[n²]))`
-/

namespace A100737.P8488548535615803177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A100735 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A100737.P8488548535615803177

namespace A100737

/-- `or(1, A100735(Δ[n²]))` -/
def P8488548535615803177.Spec : Prop :=
  ∀ n, P8488548535615803177.a n = A100737 n

end A100737

/-! ## A100737.P8249083905287814151

`record[A100735(n)-char[1]]`
-/

namespace A100737.P8249083905287814151
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100735 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100737.P8249083905287814151

namespace A100737

/-- `record[A100735(n)-char[1]]` -/
def P8249083905287814151.Spec : Prop :=
  ∀ n, P8249083905287814151.a n = A100737 n

end A100737

/-! ## A100737.P12668480262202101373

`record[A100735(gcd(n, ∑[n]))]`
-/

namespace A100737.P12668480262202101373
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100735 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100737.P12668480262202101373

namespace A100737

/-- `record[A100735(gcd(n, ∑[n]))]` -/
def P12668480262202101373.Spec : Prop :=
  ∀ n, P12668480262202101373.a n = A100737 n

end A100737

/-! ## A100737.P7763641397077382506

`record[A100735(lcm(16, n)/16)]`
-/

namespace A100737.P7763641397077382506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100735 (SequenceMachineLib.roundAway ((Nat.lcm 16 n : ℚ) / 16)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100737.P7763641397077382506

namespace A100737

/-- `record[A100735(lcm(16, n)/16)]` -/
def P7763641397077382506.Spec : Prop :=
  ∀ n, P7763641397077382506.a n = A100737 n

end A100737

/-! ## A100737.P7532990618770377108

`a(A004526(n))*A001317(n)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A100737

/-- `a(A004526(n))*A001317(n)` -/
def P7532990618770377108.Spec : Prop :=
  ∀ n, P7532990618770377108.a n = A100737 n

theorem P7532990618770377108.correct : P7532990618770377108.Spec := by
  intro n
  simp only [A100737]

end A100737

/-! ## A100737.P9176435595302544072

`record[A100744(n)]`
-/

namespace A100737.P9176435595302544072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100737.P9176435595302544072

namespace A100737

/-- `record[A100744(n)]` -/
def P9176435595302544072.Spec : Prop :=
  ∀ n, P9176435595302544072.a n = A100737 n

end A100737

/-! ## A100737.P3740572417771618121

`A100744(2*n)`
-/

namespace A100737.P3740572417771618121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100744 (2 * n)

end

end A100737.P3740572417771618121

namespace A100737

/-- `A100744(2*n)` -/
def P3740572417771618121.Spec : Prop :=
  ∀ n, P3740572417771618121.a n = A100737 n

end A100737

/-!
# A100738: Inverse modulo 2 binomial transform of 5^n.

The programs for A100738, there is no canonical definition to state claims against.
-/

/-! ## A100738.P16878307183889474579

`∏{p}[A001317(n), A033042(#)-2]`
-/

namespace A100738.P16878307183889474579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A033042 p - 2)

end

end A100738.P16878307183889474579

/-! ## A100738.P18165195321517756153

`∏{p}[A053576(n), A033042(#)-2]`
-/

namespace A100738.P18165195321517756153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A033042 p - 2)

end

end A100738.P18165195321517756153

/-! ## A100738.P12818272691093048287

`A000010(A100308(n))*A036452(n+1)`
-/

namespace A100738.P12818272691093048287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A100308 n).toNat * A036452 (n + 1)

end

end A100738.P12818272691093048287

/-!
# A100739: Inverse modulo 2 binomial transform of 6^n.

The programs for A100739, there is no canonical definition to state claims against.
-/

/-! ## A100739.P17913335678005851687

`∏{p}[A001317(n), A033043(#)-2]`
-/

namespace A100739.P17913335678005851687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A033043 p - 2)

end

end A100739.P17913335678005851687

/-! ## A100739.P17005086141249606151

`∏{p}[A053576(n), A033043(#)-2]`
-/

namespace A100739.P17005086141249606151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A033043 p - 2)

end

end A100739.P17005086141249606151

/-! ## A100739.P11424541467204452393

`∏{p}[A100309(n), #-2]`
-/

namespace A100739.P11424541467204452393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 2)

end

end A100739.P11424541467204452393

/-!
# A100740: Inverse modulo 2 binomial transform of 7^n.

The programs for A100740, there is no canonical definition to state claims against.
-/

/-! ## A100740.P10457984288210628370

`A091732(7^n)`
-/

namespace A100740.P10457984288210628370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (7 ^ n)

end

end A100740.P10457984288210628370

/-! ## A100740.P10629637926028583376

`A340088(A198480(n)+1)`
-/

namespace A100740.P10629637926028583376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340088 (A198480 n + 1).toNat

end

end A100740.P10629637926028583376

/-!
# A100741: Inverse modulo 2 binomial transform of 8^n.

The programs for A100741, there is no canonical definition to state claims against.
-/

/-! ## A100741.P17689819971843421450

`A302436(A339688(n+1))`
-/

namespace A100741.P17689819971843421450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302436 (A339688 (n + 1)).toNat

end

end A100741.P17689819971843421450

/-!
# A100743: Number of labeled n-vertex graphs without vertices of degree <=1.

The programs for A100743, there is no canonical definition to state claims against.
-/

/-! ## A100743.P1220087716952422885

`A327377(∑[n])`
-/

namespace A100743.P1220087716952422885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327377 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100743.P1220087716952422885

/-! ## A100743.P2063039949687931123

`A006129(n)-A327227(n)`
-/

namespace A100743.P2063039949687931123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006129 n - A327227 n

end

end A100743.P2063039949687931123

/-! ## A100743.P16556363741492748600

`A327377(A000217(n))+char[29]`
-/

namespace A100743.P16556363741492748600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327377 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A100743.P16556363741492748600

/-! ## A100743.P18166283503622414769

`2^C(n, 2)-A327367(n)-A327227(n)`
-/

namespace A100743.P18166283503622414769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose n 2 : ℤ) - A327367 n - A327227 n

end

end A100743.P18166283503622414769

/-! ## A100743.P1029086244812708060

`or(A000007(n), A327377(A000217(n)))`
-/

namespace A100743.P1029086244812708060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A327377 (A000217 n).toNat)

end

end A100743.P1029086244812708060

/-!
# A100744: Inverse modulo 2 binomial transform of (-2)^n.

The programs for A100744, the canonical program `A100744.P5655901826974364497` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100744 has offset 0).

The definition of A100744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100744.P5655901826974364497

`A157142(n)%4*A100735(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A100744

/-- `A157142(n)%4*A100735(n)` -/
def P5655901826974364497.Spec : Prop :=
  ∀ n, P5655901826974364497.a n = A100744 n

theorem P5655901826974364497.correct : P5655901826974364497.Spec := by
  intro n
  simp only [A100744]

end A100744

/-! ## A100744.P2013310916985090770

`Δ[-A004442(n)]*A100735(n)`
-/

namespace A100744.P2013310916985090770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A100735 n

end

end A100744.P2013310916985090770

namespace A100744

/-- `Δ[-A004442(n)]*A100735(n)` -/
def P2013310916985090770.Spec : Prop :=
  ∀ n, P2013310916985090770.a n = A100744 n

end A100744

/-! ## A100744.P16099844022820946819

`(2*A131556(3*n)-1)*A100735(n)`
-/

namespace A100744.P16099844022820946819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A131556 (3 * n) - 1) * A100735 n

end

end A100744.P16099844022820946819

namespace A100744

/-- `(2*A131556(3*n)-1)*A100735(n)` -/
def P16099844022820946819.Spec : Prop :=
  ∀ n, P16099844022820946819.a n = A100744 n

end A100744

/-! ## A100744.P17291766918698622067

`A100735(n)*A157142(Δ[A008619(n)])`
-/

namespace A100744.P17291766918698622067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100735 n * A157142 (f1 (n + 1) - f1 n).toNat

end

end A100744.P17291766918698622067

namespace A100744

/-- `A100735(n)*A157142(Δ[A008619(n)])` -/
def P17291766918698622067.Spec : Prop :=
  ∀ n, P17291766918698622067.a n = A100744 n

end A100744

/-! ## A100744.P5440895315669322108

`A065366(A100736(n))`
-/

namespace A100744.P5440895315669322108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065366 (A100736 n).toNat

end

end A100744.P5440895315669322108

namespace A100744

/-- `A065366(A100736(n))` -/
def P5440895315669322108.Spec : Prop :=
  ∀ n, P5440895315669322108.a n = A100744 n

end A100744

/-!
# A100745: Modulo 2 binomial transform of the Jacobsthal numbers J(n).

The programs for A100745, there is no canonical definition to state claims against.
-/

/-! ## A100745.P17351436829315756729

`A063195(A001317(n))`
-/

namespace A100745.P17351436829315756729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (A001317 n).toNat

end

end A100745.P17351436829315756729

/-! ## A100745.P9948374851286049486

`A063195(A053576(n))`
-/

namespace A100745.P9948374851286049486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (A053576 n).toNat

end

end A100745.P9948374851286049486

/-! ## A100745.P13903717636779708051

`A123087(A001317(n)-1)`
-/

namespace A100745.P13903717636779708051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 (A001317 n - 1).toNat

end

end A100745.P13903717636779708051

/-! ## A100745.P12014308250005258295

`A123087(A053576(n)-1)`
-/

namespace A100745.P12014308250005258295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 (A053576 n - 1).toNat

end

end A100745.P12014308250005258295

/-! ## A100745.P16759740478551042744

`A123087(A049417(2^n))`
-/

namespace A100745.P16759740478551042744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 (A049417 (2 ^ n)).toNat

end

end A100745.P16759740478551042744

/-!
# A100746: Inverse modulo 2 binomial transform of Jacobsthal numbers J(n).

The programs for A100746, the canonical program `A100746.P5629646402280203876` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100746 has offset 0).

The definition of A100746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100746.P5629646402280203876

`a(A004526(n))*A001317(A004526(n))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A100746

/-- `a(A004526(n))*A001317(A004526(n))` -/
def P5629646402280203876.Spec : Prop :=
  ∀ n, P5629646402280203876.a n = A100746 n

theorem P5629646402280203876.correct : P5629646402280203876.Spec := by
  intro n
  simp only [A100746]

end A100746

/-! ## A100746.P3893402631396936938

`floor((A245511(2*(n+1))+A100735(n))/3)`
-/

namespace A100746.P3893402631396936938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A245511 (2 * (n + 1)) + A100735 n : ℚ) / 3⌋

end

end A100746.P3893402631396936938

namespace A100746

/-- `floor((A245511(2*(n+1))+A100735(n))/3)` -/
def P3893402631396936938.Spec : Prop :=
  ∀ n, P3893402631396936938.a n = A100746 n

end A100746

/-! ## A100746.P17758808309192172901

`floor(A100735(n)/A122553(A117572(n)))`
-/

namespace A100746.P17758808309192172901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100735 n : ℚ) / (A122553 (A117572 n).toNat : ℚ)⌋

end

end A100746.P17758808309192172901

namespace A100746

/-- `floor(A100735(n)/A122553(A117572(n)))` -/
def P17758808309192172901.Spec : Prop :=
  ∀ n, P17758808309192172901.a n = A100746 n

end A100746

/-! ## A100746.P17515428247747113415

`A057427(n)*A100735(n)/A122553(A117572(n))`
-/

namespace A100746.P17515428247747113415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057427 n * A100735 n : ℚ) / (A122553 (A117572 n).toNat : ℚ)

end

end A100746.P17515428247747113415

namespace A100746

/-- `A057427(n)*A100735(n)/A122553(A117572(n))` -/
def P17515428247747113415.Spec : Prop :=
  ∀ n, P17515428247747113415.a n = (A100746 n : ℚ)

end A100746

/-!
# A100747: A modular recurrence.

The programs for A100747, the canonical program `A100747.P16990110991589276424` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100747 has offset 0).

The definition of A100747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100747.P16990110991589276424

`15*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A100747

/-- `15*a(n-2)` -/
def P16990110991589276424.Spec : Prop :=
  ∀ n, (P16990110991589276424.a n : ℤ) = A100747 n

theorem P16990110991589276424.correct : P16990110991589276424.Spec := by
  intro n
  simp only [A100747]

end A100747

/-! ## A100747.P3379480304959340672

`∏[or(1, 2^n)%6]`
-/

namespace A100747.P3379480304959340672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 ^ n) % 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100747.P3379480304959340672

namespace A100747

/-- `∏[or(1, 2^n)%6]` -/
def P3379480304959340672.Spec : Prop :=
  ∀ n, (P3379480304959340672.a n : ℤ) = A100747 n

end A100747

/-! ## A100747.P17951084994673468874

`∏[8-a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A100747.P17951084994673468874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  8 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100747.P17951084994673468874

namespace A100747

/-- `∏[8-a(n-1)]` -/
def P17951084994673468874.Spec : Prop :=
  ∀ n, P17951084994673468874.a n = A100747 n

end A100747

/-! ## A100747.P827017265744647288

`∏[a(log2(gcd(2, n)))+2]` with `a(0)=1`
-/

namespace A100747.P827017265744647288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (SequenceMachineLib.roundAway (Real.logb 2 (Nat.gcd 2 n : ℝ))).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100747.P827017265744647288

namespace A100747

/-- `∏[a(log2(gcd(2, n)))+2]` -/
def P827017265744647288.Spec : Prop :=
  ∀ n, (P827017265744647288.a n : ℤ) = A100747 n

end A100747

/-! ## A100747.P1842179060031846863

`∏[a((n+1)%2)+2]` with `a(0)=1`
-/

namespace A100747.P1842179060031846863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ((n + 1) % 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100747.P1842179060031846863

namespace A100747

/-- `∏[a((n+1)%2)+2]` -/
def P1842179060031846863.Spec : Prop :=
  ∀ n, (P1842179060031846863.a n : ℤ) = A100747 n

end A100747

/-! ## A100747.P2335640633175755577

`5^floor(n/2)*∏[3^(n%2)]`
-/

namespace A100747.P2335640633175755577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n % 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A100747.P2335640633175755577

namespace A100747

/-- `5^floor(n/2)*∏[3^(n%2)]` -/
def P2335640633175755577.Spec : Prop :=
  ∀ n, P2335640633175755577.a n = (A100747 n : ℚ)

end A100747

/-! ## A100747.P8749957374072264901

`∏[(2*3^n-∑[2^n])%6]`
-/

namespace A100747.P8749957374072264901
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * 3 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100747.P8749957374072264901

namespace A100747

/-- `∏[(2*3^n-∑[2^n])%6]` -/
def P8749957374072264901.Spec : Prop :=
  ∀ n, P8749957374072264901.a n = A100747 n

end A100747

/-! ## A100747.P1035196598558233693

`a(n-2)/(1/4)²-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A100747.P1035196598558233693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) / ((1 : ℚ) / 4) ^ 2 - a (n - 2)

end

end A100747.P1035196598558233693

namespace A100747

/-- `a(n-2)/(1/4)²-a(n-2)` -/
def P1035196598558233693.Spec : Prop :=
  ∀ n, P1035196598558233693.a n = (A100747 n : ℚ)

end A100747

/-! ## A100747.P3125601958704559869

`∏[and(7, A283818(n))]`
-/

namespace A100747.P3125601958704559869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A283818 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100747.P3125601958704559869

namespace A100747

/-- `∏[and(7, A283818(n))]` -/
def P3125601958704559869.Spec : Prop :=
  ∀ n, P3125601958704559869.a n = A100747 n

end A100747

/-! ## A100747.P3745975680393678993

`∏[and(7, A133649(n+2))]`
-/

namespace A100747.P3745975680393678993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A133649 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100747.P3745975680393678993

namespace A100747

/-- `∏[and(7, A133649(n+2))]` -/
def P3745975680393678993.Spec : Prop :=
  ∀ n, P3745975680393678993.a n = A100747 n

end A100747

/-! ## A100747.P5966727041420157062

`∏[A004605(a(n-1))]` with `a(0)=1`
-/

namespace A100747.P5966727041420157062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A004605 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100747.P5966727041420157062

namespace A100747

/-- `∏[A004605(a(n-1))]` -/
def P5966727041420157062.Spec : Prop :=
  ∀ n, P5966727041420157062.a n = A100747 n

end A100747

/-! ## A100747.P11483884641957490983

`∏[A020483(a(n-1))]` with `a(0)=1`
-/

namespace A100747.P11483884641957490983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A020483 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100747.P11483884641957490983

namespace A100747

/-- `∏[A020483(a(n-1))]` -/
def P11483884641957490983.Spec : Prop :=
  ∀ n, P11483884641957490983.a n = A100747 n

end A100747

/-! ## A100747.P5037159124567511636

`∏[A033706(a(n-1))]` with `a(0)=1`
-/

namespace A100747.P5037159124567511636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A033706 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100747.P5037159124567511636

namespace A100747

/-- `∏[A033706(a(n-1))]` -/
def P5037159124567511636.Spec : Prop :=
  ∀ n, P5037159124567511636.a n = A100747 n

end A100747

/-! ## A100747.P8802037568080204279

`∏[A054906(a(n-1))]` with `a(0)=1`
-/

namespace A100747.P8802037568080204279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A054906 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100747.P8802037568080204279

namespace A100747

/-- `∏[A054906(a(n-1))]` -/
def P8802037568080204279.Spec : Prop :=
  ∀ n, P8802037568080204279.a n = A100747 n

end A100747

/-! ## A100747.P17920973606448134801

`∏[A056753(a(n-1))]` with `a(0)=1`
-/

namespace A100747.P17920973606448134801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A056753 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100747.P17920973606448134801

namespace A100747

/-- `∏[A056753(a(n-1))]` -/
def P17920973606448134801.Spec : Prop :=
  ∀ n, P17920973606448134801.a n = A100747 n

end A100747

/-! ## A100747.P201199149786813998

`∏[A063571(a(n-1))]` with `a(0)=1`
-/

namespace A100747.P201199149786813998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A063571 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100747.P201199149786813998

namespace A100747

/-- `∏[A063571(a(n-1))]` -/
def P201199149786813998.Spec : Prop :=
  ∀ n, P201199149786813998.a n = A100747 n

end A100747

/-! ## A100747.P2541818234919539833

`∏[A063714(a(n-1))]` with `a(0)=1`
-/

namespace A100747.P2541818234919539833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A063714 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100747.P2541818234919539833

namespace A100747

/-- `∏[A063714(a(n-1))]` -/
def P2541818234919539833.Spec : Prop :=
  ∀ n, P2541818234919539833.a n = A100747 n

end A100747

/-! ## A100747.P16428111752016975178

`∏[A066670(a(n-1))]` with `a(0)=1`
-/

namespace A100747.P16428111752016975178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A066670 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100747.P16428111752016975178

namespace A100747

/-- `∏[A066670(a(n-1))]` -/
def P16428111752016975178.Spec : Prop :=
  ∀ n, P16428111752016975178.a n = A100747 n

end A100747

/-! ## A100747.P8059168682912561562

`∏[A094787(a(n-1))]` with `a(0)=1`
-/

namespace A100747.P8059168682912561562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A094787 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100747.P8059168682912561562

namespace A100747

/-- `∏[A094787(a(n-1))]` -/
def P8059168682912561562.Spec : Prop :=
  ∀ n, P8059168682912561562.a n = A100747 n

end A100747

/-!
# A100748: Years of recorded appearances of Halley's Comet (negative years are B.C.).

The programs for A100748, there is no canonical definition to state claims against.
-/

/-! ## A100748.P11328481300226061318

`A316341(A305122(n))+A072235(n+1)`
-/

namespace A100748.P11328481300226061318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 (A305122 n).toNat + A072235 (n + 1)

end

end A100748.P11328481300226061318

/-! ## A100748.P11492507545103059101

`A316341(A000071(n+1))+A072235(n+1)`
-/

namespace A100748.P11492507545103059101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 (A000071 (n + 1)).toNat + A072235 (n + 1)

end

end A100748.P11492507545103059101

/-! ## A100748.P16730826011589959523

`A072235(n+1)+A010051(A011260(n+1))`
-/

namespace A100748.P16730826011589959523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072235 (n + 1) + A010051 (A011260 (n + 1)).toNat

end

end A100748.P16730826011589959523

/-! ## A100748.P11383023262424070509

`A072235(n+1)+A010051(A001405(n))`
-/

namespace A100748.P11383023262424070509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072235 (n + 1) + A010051 (A001405 n).toNat

end

end A100748.P11383023262424070509

/-! ## A100748.P15203617237554328770

`A326072(A206419(n+1))+A072235(n+1)`
-/

namespace A100748.P15203617237554328770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326072 (A206419 (n + 1)).toNat + A072235 (n + 1)

end

end A100748.P15203617237554328770

/-!
# A100749: Triangle read by rows: T(n,k)=number of 231- and 312-avoiding permutations of [n] having k fixed points.

The programs for A100749, the canonical program `A100749.P2993982527896392758` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100749 has offset 0).

The definition of A100749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100749.P2993982527896392758

`(A329918(comp[∑[n]])+A329918(n))/2`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A100749

/-- `(A329918(comp[∑[n]])+A329918(n))/2` -/
def P2993982527896392758.Spec : Prop :=
  ∀ n, P2993982527896392758.a n = (A100749 n : ℚ)

end A100749

/-! ## A100749.P14000894247085899519

`A117707(A054450(n)*A112743(n))`
-/

namespace A100749.P14000894247085899519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A054450 n * A112743 n).toNat

end

end A100749.P14000894247085899519

namespace A100749

/-- `A117707(A054450(n)*A112743(n))` -/
def P14000894247085899519.Spec : Prop :=
  ∀ n, P14000894247085899519.a n = A100749 n

end A100749

/-! ## A100749.P16265021169295399079

`A117707(A046854(n)*A131321(n))`
-/

namespace A100749.P16265021169295399079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A046854 n * A131321 n).toNat

end

end A100749.P16265021169295399079

namespace A100749

/-- `A117707(A046854(n)*A131321(n))` -/
def P16265021169295399079.Spec : Prop :=
  ∀ n, P16265021169295399079.a n = A100749 n

end A100749

/-! ## A100749.P13342325581941022323

`A054055(A103919(n)*A156690(n))`
-/

namespace A100749.P13342325581941022323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A103919 n * A156690 n).toNat

end

end A100749.P13342325581941022323

namespace A100749

/-- `A054055(A103919(n)*A156690(n))` -/
def P13342325581941022323.Spec : Prop :=
  ∀ n, P13342325581941022323.a n = A100749 n

end A100749

/-! ## A100749.P13329608453055283216

`A282691(A097591(n))`
-/

namespace A100749.P13329608453055283216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282691 (A097591 n).toNat

end

end A100749.P13329608453055283216

namespace A100749

/-- `A282691(A097591(n))` -/
def P13329608453055283216.Spec : Prop :=
  ∀ n, P13329608453055283216.a n = A100749 n

end A100749

/-!
# A100750: Primes p such that p-100 or p+100 (or both) is prime.

The programs for A100750, there is no canonical definition to state claims against.
-/

/-! ## A100750.P11759197231932534013

`A105435(n+1)-A278297(A167656(n))`
-/

namespace A100750.P11759197231932534013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105435 (n + 1) - A278297 (A167656 n).toNat

end

end A100750.P11759197231932534013

/-! ## A100750.P12624296367649741038

`A105435(n+1)-A158465(A299852(n+1))`
-/

namespace A100750.P12624296367649741038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105435 (n + 1) - A158465 (A299852 (n + 1)).toNat

end

end A100750.P12624296367649741038

/-! ## A100750.P7270273968217047664

`A105435(A062399(n+1))`
-/

namespace A100750.P7270273968217047664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105435 (A062399 (n + 1)).toNat

end

end A100750.P7270273968217047664

/-! ## A100750.P11095843213632077815

`A105435(A351870(n+1))`
-/

namespace A100750.P11095843213632077815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105435 (A351870 (n + 1)).toNat

end

end A100750.P11095843213632077815

/-! ## A100750.P10883500757111525274

`A105435(A227549(n+1)+1)`
-/

namespace A100750.P10883500757111525274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105435 (A227549 (n + 1) + 1).toNat

end

end A100750.P10883500757111525274

/-!
# A100751: Concatenate all natural numbers starting with 1 in binary like this 11011100101110111100010011010..., then a(n) = the number formed from the next n digits (by dropping leading zeros). 1, 10, 111, 0010, 11101, 111000, ... 1, 10, 111, 10, 11101, 111000, ...

The programs for A100751, there is no canonical definition to state claims against.
-/

/-! ## A100751.P18087778768277891249

`A007088(A100489(n+1))`
-/

namespace A100751.P18087778768277891249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A100489 (n + 1)).toNat

end

end A100751.P18087778768277891249

/-! ## A100751.P18240521400868761446

`A185544(2*A100489(n+1))`
-/

namespace A100751.P18240521400868761446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A100489 (n + 1)).toNat

end

end A100751.P18240521400868761446

/-! ## A100751.P4945870940189325927

`A185544(A100489(n+1)+A100489(n+1))`
-/

namespace A100751.P4945870940189325927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A100489 (n + 1) + A100489 (n + 1)).toNat

end

end A100751.P4945870940189325927

/-!
# A100752: a(n) is the number of positive integers <= 10^n that are divisible by no prime exceeding 3.

The programs for A100752, there is no canonical definition to state claims against.
-/

/-! ## A100752.P12614779309458932786

`A253635(∑[n+2])`
-/

namespace A100752.P12614779309458932786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253635 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100752.P12614779309458932786

/-! ## A100752.P6655937537803705562

`A179986(n)+A010054(A291451(n))`
-/

namespace A100752.P6655937537803705562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179986 n + A010054 (A291451 n).toNat

end

end A100752.P6655937537803705562

/-! ## A100752.P12814406754113401514

`A179986(n)+A284992(n)^A284899(n)`
-/

namespace A100752.P12814406754113401514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179986 n : ℚ) + (A284992 n : ℚ) ^ (A284899 n : ℤ)

end

end A100752.P12814406754113401514

/-! ## A100752.P1133739456837531036

`A275973(A146612(n+1)²)+A179986(n)`
-/

namespace A100752.P1133739456837531036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275973 (A146612 (n + 1) ^ 2).toNat + A179986 n

end

end A100752.P1133739456837531036

/-! ## A100752.P1921783967532823707

`A179986(n)+A284992(n)^A284898(n+1)`
-/

namespace A100752.P1921783967532823707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179986 n : ℚ) + (A284992 n : ℚ) ^ (A284898 (n + 1) : ℤ)

end

end A100752.P1921783967532823707

/-!
# A100753: Numbers which can be obtained as the product of one or more of their digits (used with multiplicity).

The programs for A100753, there is no canonical definition to state claims against.
-/

/-! ## A100753.P18132536119460350577

`A359494(n+1)+A359485(A079704(n+1))`
-/

namespace A100753.P18132536119460350577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359494 (n + 1) + A359485 (A079704 (n + 1)).toNat

end

end A100753.P18132536119460350577

/-! ## A100753.P2976863076604144186

`A359494(n+1)+A359472(A265808(n+2))`
-/

namespace A100753.P2976863076604144186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359494 (n + 1) + A359472 (A265808 (n + 2)).toNat

end

end A100753.P2976863076604144186

/-! ## A100753.P138882875300262909

`A359552(A208164(3*n+4))+A359494(n+1)`
-/

namespace A100753.P138882875300262909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359552 (A208164 (3 * n + 4)).toNat + A359494 (n + 1)

end

end A100753.P138882875300262909

/-! ## A100753.P2980193299705082612

`A359494(n+1)+A359456(A359480(3*n+5))`
-/

namespace A100753.P2980193299705082612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359494 (n + 1) + A359456 (A359480 (3 * n + 5)).toNat

end

end A100753.P2980193299705082612

/-! ## A100753.P14075851690717667184

`A359494(n+1)-A359465(A359480(3*n+4))`
-/

namespace A100753.P14075851690717667184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359494 (n + 1) - A359465 (A359480 (3 * n + 4)).toNat

end

end A100753.P14075851690717667184

/-!
# A100754: Triangle read by rows: T(n, k) = number of hill-free Dyck paths (i.e., no peaks at height 1) of semilength n and having k peaks.

The programs for A100754, there is no canonical definition to state claims against.
-/

/-! ## A100754.P7584979027180446076

`A135304(A119307(n)+A028326(n))`
-/

namespace A100754.P7584979027180446076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135304 (A119307 n + A028326 n).toNat

end

end A100754.P7584979027180446076

/-! ## A100754.P12808004210783779375

`A118759(A319251(n+1)+A225413(n))`
-/

namespace A100754.P12808004210783779375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A319251 (n + 1) + A225413 n).toNat

end

end A100754.P12808004210783779375

/-! ## A100754.P16761352347259120443

`A168389(A119307(n))`
-/

namespace A100754.P16761352347259120443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168389 (A119307 n).toNat

end

end A100754.P16761352347259120443

/-! ## A100754.P18418717738391386389

`A338331(A319251(n+1))`
-/

namespace A100754.P18418717738391386389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (A319251 (n + 1)).toNat

end

end A100754.P18418717738391386389

/-!
# A100759: Beginning with 2, least prime not occurring earlier such that the concatenation of first n terms has the least prime factor prime(n).

The programs for A100759, there is no canonical definition to state claims against.
-/

/-! ## A100759.P46487847343070315

`A333238(∑[∏[2*(n+1)]])`
-/

namespace A100759.P46487847343070315
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333238 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100759.P46487847343070315

/-!
# A100760: Primes of the form 47n+5.

The programs for A100760, the canonical program `A100760.P3841706727858406933` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100760 has offset 1).

The definition of A100760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1718 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100760.P3841706727858406933

`p?[47*n+5]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A100760

/-- `p?[47*n+5]` -/
def P3841706727858406933.Spec : Prop :=
  ∀ n, (P3841706727858406933.a n : ℤ) = A100760 (n + 1)

theorem P3841706727858406933.correct : P3841706727858406933.Spec := by
  intro n
  simp only [A100760, Nat.add_sub_cancel]

end A100760

/-! ## A100760.P3174258306210547982

`A000027(p?[A044102(n)+A017449(n)])`
-/

namespace A100760.P3174258306210547982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 n + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A100760.P3174258306210547982

namespace A100760

/-- `A000027(p?[A044102(n)+A017449(n)])` -/
def P3174258306210547982.Spec : Prop :=
  ∀ n, P3174258306210547982.a n = A100760 (n + 1)

end A100760

/-! ## A100760.P9382378787534986990

`p?[A044102(n)+A017449(n)]%A017186(n)²`
-/

namespace A100760.P9382378787534986990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 n + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017186 n ^ 2)

end

end A100760.P9382378787534986990

namespace A100760

/-- `p?[A044102(n)+A017449(n)]%A017186(n)²` -/
def P9382378787534986990.Spec : Prop :=
  ∀ n, P9382378787534986990.a n = A100760 (n + 1)

end A100760

/-! ## A100760.P4923701248500495945

`A000007(n+1)+p?[A044102(n)+A017449(n)]`
-/

namespace A100760.P4923701248500495945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 n + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100760.P4923701248500495945

namespace A100760

/-- `A000007(n+1)+p?[A044102(n)+A017449(n)]` -/
def P4923701248500495945.Spec : Prop :=
  ∀ n, P4923701248500495945.a n = A100760 (n + 1)

end A100760

/-! ## A100760.P10099003597071805340

`p?[A044102(n)+A017449(n)]/(A010673(n)-1)²`
-/

namespace A100760.P10099003597071805340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 n + A017449 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / ((A010673 n - 1) ^ 2 : ℚ)

end

end A100760.P10099003597071805340

namespace A100760

/-- `p?[A044102(n)+A017449(n)]/(A010673(n)-1)²` -/
def P10099003597071805340.Spec : Prop :=
  ∀ n, P10099003597071805340.a n = (A100760 (n + 1) : ℚ)

end A100760

/-! ## A100760.P10351210545963002649

`record[A020639(47*n+5)]`
-/

namespace A100760.P10351210545963002649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (47 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100760.P10351210545963002649

namespace A100760

/-- `record[A020639(47*n+5)]` -/
def P10351210545963002649.Spec : Prop :=
  ∀ n, P10351210545963002649.a n = A100760 (n + 1)

end A100760

/-! ## A100760.P18204699438374342558

`A000265(p?[A044102(n)+A017449(n)])`
-/

namespace A100760.P18204699438374342558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 n + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A100760.P18204699438374342558

namespace A100760

/-- `A000265(p?[A044102(n)+A017449(n)])` -/
def P18204699438374342558.Spec : Prop :=
  ∀ n, P18204699438374342558.a n = A100760 (n + 1)

end A100760

/-! ## A100760.P7568062735744047209

`A000040(record[A297109(47*n+5)])`
-/

namespace A100760.P7568062735744047209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (47 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100760.P7568062735744047209

namespace A100760

/-- `A000040(record[A297109(47*n+5)])` -/
def P7568062735744047209.Spec : Prop :=
  ∀ n, P7568062735744047209.a n = A100760 (n + 1)

end A100760

/-!
# A100762: Let n = 2^e_2 * 3^e_3 * 5^e_5 * ... be the prime factorization of n and let P(n) = A100549(n); then a(n) = Product_{ q <= P(n) } q^e_q; a(1) = 1 by convention.

The programs for A100762, there is no canonical definition to state claims against.
-/

/-! ## A100762.P1186007264050584389

`(n+1)/A082725(n+1)`
-/

namespace A100762.P1186007264050584389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A082725 (n + 1) : ℚ)

end

end A100762.P1186007264050584389

/-! ## A100762.P5450350619913702995

`(n+1)*A082725(n+1)^A008683(A003629(n+1))`
-/

namespace A100762.P5450350619913702995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A082725 (n + 1) : ℚ) ^ (A008683 (A003629 (n + 1)).toNat : ℤ)

end

end A100762.P5450350619913702995

/-! ## A100762.P10924252864340821065

`gcd(n+1, A334664(n+1)^4)`
-/

namespace A100762.P10924252864340821065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A334664 (n + 1) ^ 4)

end

end A100762.P10924252864340821065

/-! ## A100762.P13911680762498044138

`gcd(n+1, A001016(A253139(n+1)))`
-/

namespace A100762.P13911680762498044138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001016 (A253139 (n + 1)).toNat)

end

end A100762.P13911680762498044138

/-! ## A100762.P18277594919206709049

`val(A000079(n), A000079(A082725(n+1)))+1`
-/

namespace A100762.P18277594919206709049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 n).toNat (A000079 (A082725 (n + 1)).toNat).toNat + 1

end

end A100762.P18277594919206709049

/-! ## A100762.P1409809345172621136

`A126988(A082725(n+1)+∑[n])`
-/

namespace A100762.P1409809345172621136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A082725 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A100762.P1409809345172621136

/-! ## A100762.P5286320938426875959

`A051537(A082725(n+1)+A000217(n))`
-/

namespace A100762.P5286320938426875959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A082725 (n + 1) + A000217 n).toNat

end

end A100762.P5286320938426875959

/-!
# A100763: a(1) = 2; for n>1, a(n) is the least prime with all prime digits which is == 1 (mod a(n-1)).

The programs for A100763, there is no canonical definition to state claims against.
-/

/-! ## A100763.P2558913837613510224

`p?[3*2^n*a(n-1)+1]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=7`
-/

namespace A100763.P2558913837613510224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 7] fun n f1 =>
  3 * (2 ^ n * f1 (n - 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A100763.P2558913837613510224

/-!
# A100764: a(1) = 1, a(2) = 2, a(3) = 3, a(n) = least number not the sum of three or fewer previous terms.

The programs for A100764, the canonical program `A100764.P12436467256271386227` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100764 has offset 1).

The definition of A100764 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100764.P12436467256271386227

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=7, a(4)=13`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A100764

/-- `2*a(n-1)-a(n-2)` -/
def P12436467256271386227.Spec : Prop :=
  ∀ n, P12436467256271386227.a n = A100764 (n + 1)

theorem P12436467256271386227.correct : P12436467256271386227.Spec := by
  intro n
  simp only [A100764, Nat.add_sub_cancel]

end A100764

/-!
# A100765: Numbers for which the values of the Moebius function (A008683) and the Mertens function (A002321) are both -1.

The programs for A100765, the canonical program `A100765.P16629331524842649418` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100765 has offset 1).

The definition of A100765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3026 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100765.P16629331524842649418

`∩[A100306(n+1), A171096(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A100765

/-- `∩[A100306(n+1), A171096(n+1)]` -/
def P16629331524842649418.Spec : Prop :=
  ∀ n, (P16629331524842649418.a n : ℤ) = A100765 (n + 1)

theorem P16629331524842649418.correct : P16629331524842649418.Spec := by
  intro n
  simp only [A100765, Nat.add_sub_cancel]

end A100765

/-! ## A100765.P5228398297926826395

`∩[A028442(n+1)+1, A171096(n+1)]`
-/

namespace A100765.P5228398297926826395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028442 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100765.P5228398297926826395

namespace A100765

/-- `∩[A028442(n+1)+1, A171096(n+1)]` -/
def P5228398297926826395.Spec : Prop :=
  ∀ n, (P5228398297926826395.a n : ℤ) = A100765 (n + 1)

end A100765

/-! ## A100765.P10319837632083961518

`filter[A100306(n+1), A252233(#)]`
-/

namespace A100765.P10319837632083961518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A100765.P10319837632083961518

namespace A100765

/-- `filter[A100306(n+1), A252233(#)]` -/
def P10319837632083961518.Spec : Prop :=
  ∀ n, P10319837632083961518.a n = A100765 (n + 1)

end A100765

/-! ## A100765.P9319749328334975360

`filter[A171096(n+1), A252233(#)]`
-/

namespace A100765.P9319749328334975360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A100765.P9319749328334975360

namespace A100765

/-- `filter[A171096(n+1), A252233(#)]` -/
def P9319749328334975360.Spec : Prop :=
  ∀ n, P9319749328334975360.a n = A100765 (n + 1)

end A100765

/-! ## A100765.P12669391673367934193

`∩[A062982(n+1)+1, A171096(n+1)]`
-/

namespace A100765.P12669391673367934193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062982 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100765.P12669391673367934193

namespace A100765

/-- `∩[A062982(n+1)+1, A171096(n+1)]` -/
def P12669391673367934193.Spec : Prop :=
  ∀ n, (P12669391673367934193.a n : ℤ) = A100765 (n + 1)

end A100765

/-! ## A100765.P13811022305318527843

`∩[A030059(n+1), A100306(n+1)]`
-/

namespace A100765.P13811022305318527843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100765.P13811022305318527843

namespace A100765

/-- `∩[A030059(n+1), A100306(n+1)]` -/
def P13811022305318527843.Spec : Prop :=
  ∀ n, (P13811022305318527843.a n : ℤ) = A100765 (n + 1)

end A100765

/-! ## A100765.P16900121556743532196

`∩[A030059(n+1), A171096(n+1)]`
-/

namespace A100765.P16900121556743532196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100765.P16900121556743532196

namespace A100765

/-- `∩[A030059(n+1), A171096(n+1)]` -/
def P16900121556743532196.Spec : Prop :=
  ∀ n, (P16900121556743532196.a n : ℤ) = A100765 (n + 1)

end A100765

/-!
# A100766: Numbers for which the values of the Moebius function (A008683) and the Mertens function (A002321) are both 0.

The programs for A100766, the canonical program `A100766.P15279316833382098196` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100766 has offset 1).

The definition of A100766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3909 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100766.P14587837699632682953

`∩[A028442(n+1), A100306(n+1)]`
-/

namespace A100766.P14587837699632682953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100766.P14587837699632682953

namespace A100766

/-- `∩[A028442(n+1), A100306(n+1)]` -/
def P14587837699632682953.Spec : Prop :=
  ∀ n, (P14587837699632682953.a n : ℤ) = A100766 (n + 1)

end A100766

/-! ## A100766.P2120945183877620846

`record[gcd(A028442(n+3), A100306(n+3))]`
-/

namespace A100766.P2120945183877620846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028442 (n + 3)) (A100306 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100766.P2120945183877620846

namespace A100766

/-- `record[gcd(A028442(n+3), A100306(n+3))]` -/
def P2120945183877620846.Spec : Prop :=
  ∀ n, (P2120945183877620846.a n : ℤ) = A100766 (n + 1)

end A100766

/-! ## A100766.P16119506419820194907

`∩[A028442(n+2)+1, A028442(n+2)]`
-/

namespace A100766.P16119506419820194907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028442 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028442 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100766.P16119506419820194907

namespace A100766

/-- `∩[A028442(n+2)+1, A028442(n+2)]` -/
def P16119506419820194907.Spec : Prop :=
  ∀ n, (P16119506419820194907.a n : ℤ) = A100766 (n + 1)

end A100766

/-! ## A100766.P15279316833382098196

`∩[A100306(n+2)-1, A100306(n+2)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A100766

/-- `∩[A100306(n+2)-1, A100306(n+2)]` -/
def P15279316833382098196.Spec : Prop :=
  ∀ n, (P15279316833382098196.a n : ℤ) = A100766 (n + 1)

theorem P15279316833382098196.correct : P15279316833382098196.Spec := by
  intro n
  simp only [A100766, Nat.add_sub_cancel]

end A100766

/-! ## A100766.P8883991589407431206

`record[A105570(A028442(n+3))]`
-/

namespace A100766.P8883991589407431206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A028442 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100766.P8883991589407431206

namespace A100766

/-- `record[A105570(A028442(n+3))]` -/
def P8883991589407431206.Spec : Prop :=
  ∀ n, P8883991589407431206.a n = A100766 (n + 1)

end A100766

/-! ## A100766.P2504269689570896868

`record[A105570(A100306(n+3))]`
-/

namespace A100766.P2504269689570896868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A100306 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100766.P2504269689570896868

namespace A100766

/-- `record[A105570(A100306(n+3))]` -/
def P2504269689570896868.Spec : Prop :=
  ∀ n, P2504269689570896868.a n = A100766 (n + 1)

end A100766

/-! ## A100766.P16662452597118986438

`filter[A028442(n+1), A087049(#)]`
-/

namespace A100766.P16662452597118986438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A100766.P16662452597118986438

namespace A100766

/-- `filter[A028442(n+1), A087049(#)]` -/
def P16662452597118986438.Spec : Prop :=
  ∀ n, P16662452597118986438.a n = A100766 (n + 1)

end A100766

/-! ## A100766.P4633179172487796065

`filter[A100306(n+2), A087049(#)]`
-/

namespace A100766.P4633179172487796065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100306 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A100766.P4633179172487796065

namespace A100766

/-- `filter[A100306(n+2), A087049(#)]` -/
def P4633179172487796065.Spec : Prop :=
  ∀ n, P4633179172487796065.a n = A100766 (n + 1)

end A100766

/-! ## A100766.P7275334042807430856

`record[A105570(A062982(n+4))]`
-/

namespace A100766.P7275334042807430856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A062982 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100766.P7275334042807430856

namespace A100766

/-- `record[A105570(A062982(n+4))]` -/
def P7275334042807430856.Spec : Prop :=
  ∀ n, P7275334042807430856.a n = A100766 (n + 1)

end A100766

/-! ## A100766.P10146642669777198248

`filter[A062982(n+2), A087049(#)]`
-/

namespace A100766.P10146642669777198248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062982 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A100766.P10146642669777198248

namespace A100766

/-- `filter[A062982(n+2), A087049(#)]` -/
def P10146642669777198248.Spec : Prop :=
  ∀ n, P10146642669777198248.a n = A100766 (n + 1)

end A100766

/-! ## A100766.P4791983704729385124

`A028442(eq[0, A008683(A062982(n+1))])`
-/

namespace A100766.P4791983704729385124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A062982 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A100766.P4791983704729385124

namespace A100766

/-- `A028442(eq[0, A008683(A062982(n+1))])` -/
def P4791983704729385124.Spec : Prop :=
  ∀ n, P4791983704729385124.a n = A100766 (n + 1)

end A100766

/-! ## A100766.P7624846654002032954

`∩[A028442(n+1), A049199(n+1)]`
-/

namespace A100766.P7624846654002032954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100766.P7624846654002032954

namespace A100766

/-- `∩[A028442(n+1), A049199(n+1)]` -/
def P7624846654002032954.Spec : Prop :=
  ∀ n, (P7624846654002032954.a n : ℤ) = A100766 (n + 1)

end A100766

/-! ## A100766.P4357313688226770970

`∩[A049199(n+1), A100306(n+1)]`
-/

namespace A100766.P4357313688226770970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100766.P4357313688226770970

namespace A100766

/-- `∩[A049199(n+1), A100306(n+1)]` -/
def P4357313688226770970.Spec : Prop :=
  ∀ n, (P4357313688226770970.a n : ℤ) = A100766 (n + 1)

end A100766

/-! ## A100766.P10663577630084502498

`∩[A013929(n+1), A028442(n+1)]`
-/

namespace A100766.P10663577630084502498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100766.P10663577630084502498

namespace A100766

/-- `∩[A013929(n+1), A028442(n+1)]` -/
def P10663577630084502498.Spec : Prop :=
  ∀ n, (P10663577630084502498.a n : ℤ) = A100766 (n + 1)

end A100766

/-! ## A100766.P6256979205599411854

`∩[A028442(n+1), A080756(n+1)]`
-/

namespace A100766.P6256979205599411854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100766.P6256979205599411854

namespace A100766

/-- `∩[A028442(n+1), A080756(n+1)]` -/
def P6256979205599411854.Spec : Prop :=
  ∀ n, (P6256979205599411854.a n : ℤ) = A100766 (n + 1)

end A100766

/-! ## A100766.P15529745410446888263

`∩[A013929(n+1), A100306(n+1)]`
-/

namespace A100766.P15529745410446888263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100766.P15529745410446888263

namespace A100766

/-- `∩[A013929(n+1), A100306(n+1)]` -/
def P15529745410446888263.Spec : Prop :=
  ∀ n, (P15529745410446888263.a n : ℤ) = A100766 (n + 1)

end A100766

/-! ## A100766.P8408551010351759923

`∩[A080756(n+1), A100306(n+1)]`
-/

namespace A100766.P8408551010351759923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100766.P8408551010351759923

namespace A100766

/-- `∩[A080756(n+1), A100306(n+1)]` -/
def P8408551010351759923.Spec : Prop :=
  ∀ n, (P8408551010351759923.a n : ℤ) = A100766 (n + 1)

end A100766

/-! ## A100766.P13474115015384772786

`∩[A028442(n+1), A162966(n+1)]`
-/

namespace A100766.P13474115015384772786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100766.P13474115015384772786

namespace A100766

/-- `∩[A028442(n+1), A162966(n+1)]` -/
def P13474115015384772786.Spec : Prop :=
  ∀ n, (P13474115015384772786.a n : ℤ) = A100766 (n + 1)

end A100766

/-! ## A100766.P9601645565442490854

`filter[A028442(n+1), A107078(#)]`
-/

namespace A100766.P9601645565442490854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A100766.P9601645565442490854

namespace A100766

/-- `filter[A028442(n+1), A107078(#)]` -/
def P9601645565442490854.Spec : Prop :=
  ∀ n, P9601645565442490854.a n = A100766 (n + 1)

end A100766

/-! ## A100766.P10144082675382670929

`filter[A062982(n+1), A107078(#)]`
-/

namespace A100766.P10144082675382670929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A100766.P10144082675382670929

namespace A100766

/-- `filter[A062982(n+1), A107078(#)]` -/
def P10144082675382670929.Spec : Prop :=
  ∀ n, P10144082675382670929.a n = A100766 (n + 1)

end A100766

/-!
# A100767: Numbers for which the values of the Moebius function (A008683) and the Mertens function (A002321) are both 1.

The programs for A100767, the canonical program `A100767.P5794492009017109982` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100767 has offset 1).

The definition of A100767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3065 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100767.P5794492009017109982

`∩[A100306(n+1), A118684(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A100767

/-- `∩[A100306(n+1), A118684(n+1)]` -/
def P5794492009017109982.Spec : Prop :=
  ∀ n, (P5794492009017109982.a n : ℤ) = A100767 (n + 1)

theorem P5794492009017109982.correct : P5794492009017109982.Spec := by
  intro n
  simp only [A100767, Nat.add_sub_cancel]

end A100767

/-! ## A100767.P16750309796050006906

`filter[A100306(n+1), A353629(#)]`
-/

namespace A100767.P16750309796050006906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353629 (f1 j).toNat = 1) n)

end

end A100767.P16750309796050006906

namespace A100767

/-- `filter[A100306(n+1), A353629(#)]` -/
def P16750309796050006906.Spec : Prop :=
  ∀ n, P16750309796050006906.a n = A100767 (n + 1)

end A100767

/-! ## A100767.P15959861211085323855

`filter[A118684(n+1), A353629(#)]`
-/

namespace A100767.P15959861211085323855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353629 (f1 j).toNat = 1) n)

end

end A100767.P15959861211085323855

namespace A100767

/-- `filter[A118684(n+1), A353629(#)]` -/
def P15959861211085323855.Spec : Prop :=
  ∀ n, P15959861211085323855.a n = A100767 (n + 1)

end A100767

/-! ## A100767.P2283405149432453307

`∩[A030229(n+1), A100306(n+1)]`
-/

namespace A100767.P2283405149432453307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100767.P2283405149432453307

namespace A100767

/-- `∩[A030229(n+1), A100306(n+1)]` -/
def P2283405149432453307.Spec : Prop :=
  ∀ n, (P2283405149432453307.a n : ℤ) = A100767 (n + 1)

end A100767

/-! ## A100767.P12035544902942580594

`∩[A030229(n+1), A118684(n+1)]`
-/

namespace A100767.P12035544902942580594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100767.P12035544902942580594

namespace A100767

/-- `∩[A030229(n+1), A118684(n+1)]` -/
def P12035544902942580594.Spec : Prop :=
  ∀ n, (P12035544902942580594.a n : ℤ) = A100767 (n + 1)

end A100767

/-! ## A100767.P954246176997388434

`record[A055615(A100306(n+1))]`
-/

namespace A100767.P954246176997388434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A100306 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100767.P954246176997388434

namespace A100767

/-- `record[A055615(A100306(n+1))]` -/
def P954246176997388434.Spec : Prop :=
  ∀ n, P954246176997388434.a n = A100767 (n + 1)

end A100767

/-! ## A100767.P440868588820297213

`record[A055615(A118684(n+1))]`
-/

namespace A100767.P440868588820297213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A118684 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100767.P440868588820297213

namespace A100767

/-- `record[A055615(A118684(n+1))]` -/
def P440868588820297213.Spec : Prop :=
  ∀ n, P440868588820297213.a n = A100767 (n + 1)

end A100767

/-! ## A100767.P10175466233242871977

`record[A055615(A062982(n+1)+A057427(n))]`
-/

namespace A100767.P10175466233242871977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A062982 (n + 1) + A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100767.P10175466233242871977

namespace A100767

/-- `record[A055615(A062982(n+1)+A057427(n))]` -/
def P10175466233242871977.Spec : Prop :=
  ∀ n, P10175466233242871977.a n = A100767 (n + 1)

end A100767

/-! ## A100767.P14602617413708739143

`record[A055615(A062982(n+1)-A057428(n))]`
-/

namespace A100767.P14602617413708739143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A062982 (n + 1) - A057428 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100767.P14602617413708739143

namespace A100767

/-- `record[A055615(A062982(n+1)-A057428(n))]` -/
def P14602617413708739143.Spec : Prop :=
  ∀ n, P14602617413708739143.a n = A100767 (n + 1)

end A100767

/-! ## A100767.P3632873648049958142

`record[A055615(A062982(n+1)+A057428(n)²)]`
-/

namespace A100767.P3632873648049958142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A062982 (n + 1) + A057428 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100767.P3632873648049958142

namespace A100767

/-- `record[A055615(A062982(n+1)+A057428(n)²)]` -/
def P3632873648049958142.Spec : Prop :=
  ∀ n, P3632873648049958142.a n = A100767 (n + 1)

end A100767

/-! ## A100767.P1952740934068866276

`record[A055615(A028442(n+1)-A153881(n+1))]`
-/

namespace A100767.P1952740934068866276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A028442 (n + 1) - A153881 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100767.P1952740934068866276

namespace A100767

/-- `record[A055615(A028442(n+1)-A153881(n+1))]` -/
def P1952740934068866276.Spec : Prop :=
  ∀ n, P1952740934068866276.a n = A100767 (n + 1)

end A100767

/-! ## A100767.P2672830594185704898

`record[A143443(A062982(n+1)-A057428(n))]`
-/

namespace A100767.P2672830594185704898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143443 (A062982 (n + 1) - A057428 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100767.P2672830594185704898

namespace A100767

/-- `record[A143443(A062982(n+1)-A057428(n))]` -/
def P2672830594185704898.Spec : Prop :=
  ∀ n, P2672830594185704898.a n = A100767 (n + 1)

end A100767

/-! ## A100767.P1744869046129914563

`record[A143443(A062982(n+1)+A057428(n)²)]`
-/

namespace A100767.P1744869046129914563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143443 (A062982 (n + 1) + A057428 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100767.P1744869046129914563

namespace A100767

/-- `record[A143443(A062982(n+1)+A057428(n)²)]` -/
def P1744869046129914563.Spec : Prop :=
  ∀ n, P1744869046129914563.a n = A100767 (n + 1)

end A100767

/-!
# A100768: a(n) = p * (n^p) - 1 where p = prime(n).

The programs for A100768, there is no canonical definition to state claims against.
-/

/-! ## A100768.P14477847557420985307

`A000040(n+1)*A062481(n+1)-1`
-/

namespace A100768.P14477847557420985307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A062481 (n + 1) - 1

end

end A100768.P14477847557420985307

/-! ## A100768.P14326505087863224999

`A030291(n+1)*A062481(n+1)-1`
-/

namespace A100768.P14326505087863224999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1) * A062481 (n + 1) - 1

end

end A100768.P14326505087863224999

/-! ## A100768.P159162355516021443

`A030475(n+1)*A062481(n+1)-1`
-/

namespace A100768.P159162355516021443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030475 (n + 1) * A062481 (n + 1) - 1

end

end A100768.P159162355516021443

/-! ## A100768.P15991380338591675759

`A038618(n+1)*A062481(n+1)-1`
-/

namespace A100768.P15991380338591675759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1) * A062481 (n + 1) - 1

end

end A100768.P15991380338591675759

/-! ## A100768.P510410764683696929

`A057448(n+1)*A062481(n+1)-1`
-/

namespace A100768.P510410764683696929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057448 (n + 1) * A062481 (n + 1) - 1

end

end A100768.P510410764683696929

/-!
# A100770: Concatenation of first n terms of A100769 divided by n.

The programs for A100770, there is no canonical definition to state claims against.
-/

/-! ## A100770.P11042566339841773774

`A054353(A392701(2*(n+1)²))`
-/

namespace A100770.P11042566339841773774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (A392701 (2 * (n + 1) ^ 2)).toNat

end

end A100770.P11042566339841773774

/-!
# A100771: Distance from the nearest palindrome.

The programs for A100771, there is no canonical definition to state claims against.
-/

/-! ## A100771.P15219452444904252220

`A319468(2*A064834(n))`
-/

namespace A100771.P15219452444904252220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319468 (2 * A064834 n).toNat

end

end A100771.P15219452444904252220

/-!
# A100772: a(1) = 1; for n>1, a(n+1) is the least number such that there are a(n) palindromes between a(n) and a(n+1) with both ends excluded.

The programs for A100772, there is no canonical definition to state claims against.
-/

/-! ## A100772.P17662491102246734467

`A304083(A001611(n²))`
-/

namespace A100772.P17662491102246734467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304083 (A001611 (n ^ 2)).toNat

end

end A100772.P17662491102246734467

/-!
# A100773: a(1) = 1, a(2) = (2*1)/1 = 2. a(n+1) = (n+1)*a(n) divided by the largest prime divisor of a(n).

The programs for A100773, there is no canonical definition to state claims against.
-/

/-! ## A100773.P12641143061547773112

`(n+1)/A006530(a(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A100773.P12641143061547773112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) / (A006530 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) * a (n - 1)

end

end A100773.P12641143061547773112

/-! ## A100773.P2870504166378077344

`(n+1)*A052126(a(n-1))` with `a(0)=1`
-/

namespace A100773.P2870504166378077344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A052126 (a (n - 1)).toNat

end

end A100773.P2870504166378077344

/-! ## A100773.P7411295565581424516

`(n+1)/A006530(A094543(n))*a(n-1)` with `a(0)=1`
-/

namespace A100773.P7411295565581424516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) / (A006530 (A094543 n).toNat : ℚ) * a (n - 1)

end

end A100773.P7411295565581424516

/-! ## A100773.P2884419802059020584

`(n+1)*A327395(a(n-1))` with `a(0)=1`
-/

namespace A100773.P2884419802059020584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A327395 (a (n - 1)).toNat

end

end A100773.P2884419802059020584

/-! ## A100773.P1337809869554437352

`(n+1)*A332741(a(n-1))` with `a(0)=1`
-/

namespace A100773.P1337809869554437352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A332741 (a (n - 1)).toNat

end

end A100773.P1337809869554437352

/-!
# A100774: a(n) = 2*(3^n - 1).

The programs for A100774, the canonical program `A100774.P2437826719099000407` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100774 has offset 0).

The definition of A100774 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(3^n-1)` (program `A100774.P2437826719099000407`, by `A100774.P2437826719099000407.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100774.P2437826719099000407

`2*(3^n-1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A100774

/-- `2*(3^n-1)` -/
def P2437826719099000407.Spec : Prop :=
  ∀ n, P2437826719099000407.a n = A100774 n

theorem P2437826719099000407.correct : P2437826719099000407.Spec := by
  intro n
  simp only [A100774]

end A100774

/-! ## A100774.P598867798638989635

`3*a(n-1)+4` with `a(0)=0`
-/

namespace A100774.P598867798638989635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 * a (n - 1) + 4

end

end A100774.P598867798638989635

namespace A100774

/-- `3*a(n-1)+4` -/
def P598867798638989635.Spec : Prop :=
  ∀ n, (P598867798638989635.a n : ℤ) = A100774 n

theorem P598867798638989635.correct : P598867798638989635.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A100774, Nat.add_sub_cancel, A100774.P598867798638989635.a, A100774.P2437826719099000407.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A100774, Nat.add_sub_cancel, A100774.P598867798638989635.a, A100774.P2437826719099000407.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A100774

/-! ## A100774.P8302109076274606739

`A048473(n)-1`
-/

namespace A100774.P8302109076274606739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048473 n - 1

end

end A100774.P8302109076274606739

namespace A100774

/-- `A048473(n)-1` -/
def P8302109076274606739.Spec : Prop :=
  ∀ n, P8302109076274606739.a n = A100774 n

end A100774

/-! ## A100774.P15859714856820201846

`xor(2, Δ[3^n])`
-/

namespace A100774.P15859714856820201846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A100774.P15859714856820201846

namespace A100774

/-- `xor(2, Δ[3^n])` -/
def P15859714856820201846.Spec : Prop :=
  ∀ n, P15859714856820201846.a n = A100774 n

end A100774

/-! ## A100774.P346991449679288135

`and(Δ[3^n], -3)`
-/

namespace A100774.P346991449679288135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (-3)

end

end A100774.P346991449679288135

namespace A100774

/-- `and(Δ[3^n], -3)` -/
def P346991449679288135.Spec : Prop :=
  ∀ n, P346991449679288135.a n = A100774 n

end A100774

/-! ## A100774.P17728888002124767133

`abs(2-lcm(2, 3^n))`
-/

namespace A100774.P17728888002124767133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (Nat.lcm 2 (3 ^ n) : ℤ)|

end

end A100774.P17728888002124767133

namespace A100774

/-- `abs(2-lcm(2, 3^n))` -/
def P17728888002124767133.Spec : Prop :=
  ∀ n, P17728888002124767133.a n = A100774 n

end A100774

/-! ## A100774.P14006500515794116239

`∑[3*a(n-1)]` with `a(0)=0, a(1)=4`
-/

namespace A100774.P14006500515794116239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100774.P14006500515794116239

namespace A100774

/-- `∑[3*a(n-1)]` -/
def P14006500515794116239.Spec : Prop :=
  ∀ n, (P14006500515794116239.a n : ℤ) = A100774 n

end A100774

/-! ## A100774.P507974671818534218

`-xor(3*a(n-1), -4)` with `a(0)=0`
-/

namespace A100774.P507974671818534218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  -Int.xor (3 * a (n - 1)) (-4)

end

end A100774.P507974671818534218

namespace A100774

/-- `-xor(3*a(n-1), -4)` -/
def P507974671818534218.Spec : Prop :=
  ∀ n, P507974671818534218.a n = A100774 n

end A100774

/-! ## A100774.P16939201405063711411

`Δ[A061981(n)]`
-/

namespace A100774.P16939201405063711411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100774.P16939201405063711411

namespace A100774

/-- `Δ[A061981(n)]` -/
def P16939201405063711411.Spec : Prop :=
  ∀ n, P16939201405063711411.a n = A100774 n

end A100774

/-! ## A100774.P12089529867511337622

`Δ[A186948(n)]`
-/

namespace A100774.P12089529867511337622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100774.P12089529867511337622

namespace A100774

/-- `Δ[A186948(n)]` -/
def P12089529867511337622.Spec : Prop :=
  ∀ n, P12089529867511337622.a n = A100774 n

end A100774

/-! ## A100774.P5118200022124476407

`A117862(2*n)`
-/

namespace A100774.P5118200022124476407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117862 (2 * n)

end

end A100774.P5118200022124476407

namespace A100774

/-- `A117862(2*n)` -/
def P5118200022124476407.Spec : Prop :=
  ∀ n, P5118200022124476407.a n = A100774 n

end A100774

/-! ## A100774.P14495250939208100233

`A302507(n)/2`
-/

namespace A100774.P14495250939208100233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302507 n : ℚ) / 2

end

end A100774.P14495250939208100233

namespace A100774

/-- `A302507(n)/2` -/
def P14495250939208100233.Spec : Prop :=
  ∀ n, P14495250939208100233.a n = (A100774 n : ℚ)

end A100774

/-! ## A100774.P8417418873689705751

`∑[4*A140429(n)]`
-/

namespace A100774.P8417418873689705751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A140429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100774.P8417418873689705751

namespace A100774

/-- `∑[4*A140429(n)]` -/
def P8417418873689705751.Spec : Prop :=
  ∀ n, P8417418873689705751.a n = A100774 n

end A100774

/-! ## A100774.P13216415903323138173

`Δ[4*A111277(n)]`
-/

namespace A100774.P13216415903323138173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A111277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100774.P13216415903323138173

namespace A100774

/-- `Δ[4*A111277(n)]` -/
def P13216415903323138173.Spec : Prop :=
  ∀ n, P13216415903323138173.a n = A100774 n

end A100774

/-! ## A100774.P12538376384734265187

`Δ[A107583(n)+n]`
-/

namespace A100774.P12538376384734265187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107583 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100774.P12538376384734265187

namespace A100774

/-- `Δ[A107583(n)+n]` -/
def P12538376384734265187.Spec : Prop :=
  ∀ n, P12538376384734265187.a n = A100774 n

end A100774

/-!
# A100775: a(n) = 97*n + 101.

The programs for A100775, the canonical program `A100775.P1611566993164136409` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100775 has offset 0).

The definition of A100775 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `97*n+101` (program `A100775.P1611566993164136409`, by `A100775.P1611566993164136409.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100775.P1611566993164136409

`97*n+101`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A100775

/-- `97*n+101` -/
def P1611566993164136409.Spec : Prop :=
  ∀ n, (P1611566993164136409.a n : ℤ) = A100775 n

theorem P1611566993164136409.correct : P1611566993164136409.Spec := by
  intro n
  simp only [A100775]

end A100775

/-!
# A100776: a(n) = 997*n + 1009.

The programs for A100776, the canonical program `A100776.P6673390157140184545` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100776 has offset 0).

The definition of A100776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100776.P6673390157140184545

`A362361(n+1)-A154266(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A100776

/-- `A362361(n+1)-A154266(n)` -/
def P6673390157140184545.Spec : Prop :=
  ∀ n, P6673390157140184545.a n = A100776 n

theorem P6673390157140184545.correct : P6673390157140184545.Spec := by
  intro n
  simp only [A100776]

end A100776

/-!
# A100777: Square-factorial numbers: a(1) = 1, a(n+1) = a(n) * largest square divisor of (n+1).

The programs for A100777, the canonical program `A100777.P7440440407592815012` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100777 has offset 1).

The definition of A100777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100777.P674184416388137485

`∏[∏{p}[n+1, #^val(n+1, #²)]²]`
-/

namespace A100777.P674184416388137485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100777.P674184416388137485

namespace A100777

/-- `∏[∏{p}[n+1, #^val(n+1, #²)]²]` -/
def P674184416388137485.Spec : Prop :=
  ∀ n, (P674184416388137485.a n : ℤ) = A100777 (n + 1)

end A100777

/-! ## A100777.P2307430352268132921

`∏{p}[n+1, #^val(n+1, #²)]²*a(n-1)` with `a(0)=1`
-/

namespace A100777.P2307430352268132921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 * a (n - 1)

end

end A100777.P2307430352268132921

namespace A100777

/-- `∏{p}[n+1, #^val(n+1, #²)]²*a(n-1)` -/
def P2307430352268132921.Spec : Prop :=
  ∀ n, (P2307430352268132921.a n : ℤ) = A100777 (n + 1)

end A100777

/-! ## A100777.P6321369212031301493

`∏[A008833(n+1)]`
-/

namespace A100777.P6321369212031301493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100777.P6321369212031301493

namespace A100777

/-- `∏[A008833(n+1)]` -/
def P6321369212031301493.Spec : Prop :=
  ∀ n, P6321369212031301493.a n = A100777 (n + 1)

end A100777

/-! ## A100777.P7440440407592815012

`∏[abs(A358272(n+1))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A100777

/-- `∏[abs(A358272(n+1))]` -/
def P7440440407592815012.Spec : Prop :=
  ∀ n, P7440440407592815012.a n = A100777 (n + 1)

theorem P7440440407592815012.correct : P7440440407592815012.Spec := by
  intro n
  simp only [A100777, Nat.add_sub_cancel]

end A100777

/-! ## A100777.P7919694367734785507

`∏[A000188(n+1)²]`
-/

namespace A100777.P7919694367734785507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100777.P7919694367734785507

namespace A100777

/-- `∏[A000188(n+1)²]` -/
def P7919694367734785507.Spec : Prop :=
  ∀ n, P7919694367734785507.a n = A100777 (n + 1)

end A100777

/-! ## A100777.P16172982173320893857

`∏[A336642(n+1)+1]`
-/

namespace A100777.P16172982173320893857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336642 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100777.P16172982173320893857

namespace A100777

/-- `∏[A336642(n+1)+1]` -/
def P16172982173320893857.Spec : Prop :=
  ∀ n, P16172982173320893857.a n = A100777 (n + 1)

end A100777

/-! ## A100777.P2307473856948767325

`∏[A117811(2*(n+1))²]`
-/

namespace A100777.P2307473856948767325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117811 (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100777.P2307473856948767325

namespace A100777

/-- `∏[A117811(2*(n+1))²]` -/
def P2307473856948767325.Spec : Prop :=
  ∀ n, P2307473856948767325.a n = A100777 (n + 1)

end A100777

/-! ## A100777.P2660333353210398059

`∏[A337101(2*(n+1))²]`
-/

namespace A100777.P2660333353210398059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100777.P2660333353210398059

namespace A100777

/-- `∏[A337101(2*(n+1))²]` -/
def P2660333353210398059.Spec : Prop :=
  ∀ n, P2660333353210398059.a n = A100777 (n + 1)

end A100777

/-! ## A100777.P11772542872518234136

`∏[(n+1)/A007913(n+1)]`
-/

namespace A100777.P11772542872518234136
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007913 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100777.P11772542872518234136

namespace A100777

/-- `∏[(n+1)/A007913(n+1)]` -/
def P11772542872518234136.Spec : Prop :=
  ∀ n, P11772542872518234136.a n = (A100777 (n + 1) : ℚ)

end A100777

/-! ## A100777.P8918508868257892834

`∏[gcd(n+1, A011264(n+1))]`
-/

namespace A100777.P8918508868257892834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A011264 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100777.P8918508868257892834

namespace A100777

/-- `∏[gcd(n+1, A011264(n+1))]` -/
def P8918508868257892834.Spec : Prop :=
  ∀ n, (P8918508868257892834.a n : ℤ) = A100777 (n + 1)

end A100777

/-! ## A100777.P17558004402916615295

`∏[A059479(n+1)%(n+2)]`
-/

namespace A100777.P17558004402916615295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059479 (n + 1)) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100777.P17558004402916615295

namespace A100777

/-- `∏[A059479(n+1)%(n+2)]` -/
def P17558004402916615295.Spec : Prop :=
  ∀ n, P17558004402916615295.a n = A100777 (n + 1)

end A100777

/-! ## A100777.P10280953889671966582

`∏[A053143(A003557(n+1))]`
-/

namespace A100777.P10280953889671966582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (A003557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100777.P10280953889671966582

namespace A100777

/-- `∏[A053143(A003557(n+1))]` -/
def P10280953889671966582.Spec : Prop :=
  ∀ n, P10280953889671966582.a n = A100777 (n + 1)

end A100777

/-! ## A100777.P11964276531328395681

`∏[A332012(A057521(n+1))]`
-/

namespace A100777.P11964276531328395681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332012 (A057521 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100777.P11964276531328395681

namespace A100777

/-- `∏[A332012(A057521(n+1))]` -/
def P11964276531328395681.Spec : Prop :=
  ∀ n, P11964276531328395681.a n = A100777 (n + 1)

end A100777

/-! ## A100777.P11843580332533009111

`∏[A162400(A235872(n+1))]`
-/

namespace A100777.P11843580332533009111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162400 (A235872 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100777.P11843580332533009111

namespace A100777

/-- `∏[A162400(A235872(n+1))]` -/
def P11843580332533009111.Spec : Prop :=
  ∀ n, P11843580332533009111.a n = A100777 (n + 1)

end A100777

/-! ## A100777.P16232776279575293267

`∏[A061800(A336642(n+1))]`
-/

namespace A100777.P16232776279575293267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (A336642 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100777.P16232776279575293267

namespace A100777

/-- `∏[A061800(A336642(n+1))]` -/
def P16232776279575293267.Spec : Prop :=
  ∀ n, P16232776279575293267.a n = A100777 (n + 1)

end A100777

/-! ## A100777.P8584413797628223232

`∏[A235872(A214682(n+1))]`
-/

namespace A100777.P8584413797628223232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235872 (A214682 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100777.P8584413797628223232

namespace A100777

/-- `∏[A235872(A214682(n+1))]` -/
def P8584413797628223232.Spec : Prop :=
  ∀ n, P8584413797628223232.a n = A100777 (n + 1)

end A100777

/-! ## A100777.P3298991150677556069

`∏[A336644(n+1)+A336643(n+1)]`
-/

namespace A100777.P3298991150677556069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336644 (n + 1) + A336643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100777.P3298991150677556069

namespace A100777

/-- `∏[A336644(n+1)+A336643(n+1)]` -/
def P3298991150677556069.Spec : Prop :=
  ∀ n, P3298991150677556069.a n = A100777 (n + 1)

end A100777

/-! ## A100777.P17049059931511966594

`∏[(A295657(A129202(n))/A295657(n+1))²]`
-/

namespace A100777.P17049059931511966594
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A295657 (A129202 n).toNat : ℚ) / (A295657 (n + 1) : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100777.P17049059931511966594

namespace A100777

/-- `∏[(A295657(A129202(n))/A295657(n+1))²]` -/
def P17049059931511966594.Spec : Prop :=
  ∀ n, P17049059931511966594.a n = (A100777 (n + 1) : ℚ)

end A100777

/-!
# A100778: Integer powers of primorial numbers.

The programs for A100778, there is no canonical definition to state claims against.
-/

/-! ## A100778.P11300353898477290736

`∩[A133808(n+1), A317087(n+1)]`
-/

namespace A100778.P11300353898477290736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100778.P11300353898477290736

/-! ## A100778.P12859111218749611413

`∩[A025487(n+1), A133808(n+1)]`
-/

namespace A100778.P12859111218749611413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100778.P12859111218749611413

/-! ## A100778.P17389573553849027759

`∩[A025487(n+1), A317087(n+1)]`
-/

namespace A100778.P17389573553849027759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100778.P17389573553849027759

/-! ## A100778.P2219085234768715471

`record[lcm(A181815(n+1), A329899(n+1))]`
-/

namespace A100778.P2219085234768715471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A181815 (n + 1)) (A329899 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100778.P2219085234768715471

/-! ## A100778.P16418558266231652051

`A025487(eq[A061394(n+1)+1, A182861(n+1)]+1)`
-/

namespace A100778.P16418558266231652051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061394 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A100778.P16418558266231652051

/-!
# A100782: First column of A100781.

The programs for A100782, there is no canonical definition to state claims against.
-/

/-! ## A100782.P36570278089813304

`gcd(A004525(A239612(n+1)), A075384(n+1))`
-/

namespace A100782.P36570278089813304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004525 (A239612 (n + 1)).toNat) (A075384 (n + 1))

end

end A100782.P36570278089813304

/-! ## A100782.P5977952133344222321

`gcd(A075384(A187829(n+1)), A239612(n+1))`
-/

namespace A100782.P5977952133344222321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075384 (A187829 (n + 1)).toNat) (A239612 (n + 1))

end

end A100782.P5977952133344222321

/-! ## A100782.P18388399188078063727

`A102631(n+1)+A002262(A173505(n))`
-/

namespace A100782.P18388399188078063727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (n + 1) + A002262 (A173505 n).toNat

end

end A100782.P18388399188078063727

/-! ## A100782.P3276005786674311250

`A135874(n+1)+A045840(A180669(n))`
-/

namespace A100782.P3276005786674311250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135874 (n + 1) + A045840 (A180669 n).toNat

end

end A100782.P3276005786674311250

/-!
# A100783: Leading diagonal of A100781.

The programs for A100783, there is no canonical definition to state claims against.
-/

/-! ## A100783.P16392395962471798368

`A100781(∑[n+1])`
-/

namespace A100783.P16392395962471798368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100781 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100783.P16392395962471798368

/-! ## A100783.P10986971001452020848

`or(A100781(A033444(n+2)), A341000(n))`
-/

namespace A100783.P10986971001452020848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A100781 (A033444 (n + 2)).toNat) (A341000 (n + 285))

end

end A100783.P10986971001452020848

/-! ## A100783.P12252248396938257209

`A216602(n+1)+A100781(A000217(n+1))`
-/

namespace A100783.P12252248396938257209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216602 (n + 1) + A100781 (A000217 (n + 1)).toNat

end

end A100783.P12252248396938257209

/-! ## A100783.P6741280200809174642

`A100781(A000217(n+1))*A184240(n+1)`
-/

namespace A100783.P6741280200809174642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100781 (A000217 (n + 1)).toNat * A184240 (n + 1)

end

end A100783.P6741280200809174642

/-! ## A100783.P16532782232756155054

`A100781(A033444(n+2))%A045710(n+1)`
-/

namespace A100783.P16532782232756155054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100781 (A033444 (n + 2)).toNat) (A045710 (n + 1))

end

end A100783.P16532782232756155054

/-!
# A100784: Row sums in A100781.

The programs for A100784, there is no canonical definition to state claims against.
-/

/-! ## A100784.P16008630473475415620

`(n+1)*A100785(n+1)`
-/

namespace A100784.P16008630473475415620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A100785 (n + 1)

end

end A100784.P16008630473475415620

/-! ## A100784.P5702962113094118164

`A100785(A100793(n))*A100793(n)`
-/

namespace A100784.P5702962113094118164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100785 (A100793 n).toNat * A100793 n

end

end A100784.P5702962113094118164

/-!
# A100785: Arithmetic mean of rows in A100781.

The programs for A100785, there is no canonical definition to state claims against.
-/

/-! ## A100785.P11769486022965460992

`A100784(n+1)/(n+1)`
-/

namespace A100785.P11769486022965460992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100784 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A100785.P11769486022965460992

/-!
# A100786: Apply the function n -> A100762(n) to the terms of A141586.

The programs for A100786, there is no canonical definition to state claims against.
-/

/-! ## A100786.P14433089800058954491

`A306693(gcd(A141586(3*n+4)², A141586(n+1)))`
-/

namespace A100786.P14433089800058954491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306693 (Int.gcd (A141586 (3 * n + 4) ^ 2) (A141586 (n + 1)))

end

end A100786.P14433089800058954491

/-! ## A100786.P14269059818384204852

`A100762(gcd(A141758(n+3)², A141586(n+1)))`
-/

namespace A100786.P14269059818384204852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100762 (Int.gcd (A141758 (n + 3) ^ 2) (A141586 (n + 1)))

end

end A100786.P14269059818384204852

/-! ## A100786.P7788542102012473161

`A100762(A141586(n+1))`
-/

namespace A100786.P7788542102012473161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100762 (A141586 (n + 1)).toNat

end

end A100786.P7788542102012473161

/-! ## A100786.P14495491073888312256

`A141586(A000027(n+1))/A082725(A141586(n+1))`
-/

namespace A100786.P14495491073888312256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141586 (A000027 (n + 1)).toNat : ℚ) / (A082725 (A141586 (n + 1)).toNat : ℚ)

end

end A100786.P14495491073888312256

/-!
# A100787: First differences give the same sequence written as a string of individual digits.

The programs for A100787, there is no canonical definition to state claims against.
-/

/-! ## A100787.P10123575333966359789

`A100880(n)+a(n-1)` with `a(0)=1`
-/

namespace A100787.P10123575333966359789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A100880 n + a (n - 1)

end

end A100787.P10123575333966359789

/-! ## A100787.P14435991951779014422

`∑[A100880(floor(sqrt(n²+1)))]`
-/

namespace A100787.P14435991951779014422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100880 (Nat.sqrt (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100787.P14435991951779014422

/-! ## A100787.P10034031653855883256

`∑[A100880(abs(1-n)+1)]-1`
-/

namespace A100787.P10034031653855883256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100880 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A100787.P10034031653855883256

/-! ## A100787.P3916432954321925644

`∑[dr(A100880(A028310(n)))]`
-/

namespace A100787.P3916432954321925644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A100880 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100787.P3916432954321925644

/-! ## A100787.P6650420439281705402

`A023443(∑[A100880(abs(1-n)+1)])`
-/

namespace A100787.P6650420439281705402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100880 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A100787.P6650420439281705402

/-!
# A100788: First differences of A063843.

The programs for A100788, the canonical program `A100788.P6119317323625712770` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100788 has offset 0).

The definition of A100788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100788.P6119317323625712770

`Δ[A063843(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A100788

/-- `Δ[A063843(n)]` -/
def P6119317323625712770.Spec : Prop :=
  ∀ n, P6119317323625712770.a n = A100788 n

theorem P6119317323625712770.correct : P6119317323625712770.Spec := by
  intro n
  simp only [A100788]

end A100788

/-! ## A100788.P17501824628590103764

`A063843(n+1)-A063843(n)`
-/

namespace A100788.P17501824628590103764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063843 (n + 1) - A063843 n

end

end A100788.P17501824628590103764

namespace A100788

/-- `A063843(n+1)-A063843(n)` -/
def P17501824628590103764.Spec : Prop :=
  ∀ n, P17501824628590103764.a n = A100788 n

theorem P17501824628590103764.correct : P17501824628590103764.Spec := by
  intro n
  simp only [A100788, Nat.add_sub_cancel, A100788.P17501824628590103764.a, A100788.P6119317323625712770.f1, A100788.P6119317323625712770.a, SequenceMachineLib.memo_apply]

end A100788

/-! ## A100788.P6699610456911490408

`record[A063843(abs(1-n))]-A063843(n)`
-/

namespace A100788.P6699610456911490408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063843 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A063843 n

end

end A100788.P6699610456911490408

namespace A100788

/-- `record[A063843(abs(1-n))]-A063843(n)` -/
def P6699610456911490408.Spec : Prop :=
  ∀ n, P6699610456911490408.a n = A100788 n

end A100788

/-! ## A100788.P2397430598824314454

`record[Δ[A327084(A145018(n+1))]]`
-/

namespace A100788.P2397430598824314454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327084 (A145018 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100788.P2397430598824314454

namespace A100788

/-- `record[Δ[A327084(A145018(n+1))]]` -/
def P2397430598824314454.Spec : Prop :=
  ∀ n, P2397430598824314454.a n = A100788 n

end A100788

/-! ## A100788.P15387864015011378867

`Δ[lcm(n, A327084(A167614(n+1)+1))]`
-/

namespace A100788.P15387864015011378867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A327084 (A167614 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A100788.P15387864015011378867

namespace A100788

/-- `Δ[lcm(n, A327084(A167614(n+1)+1))]` -/
def P15387864015011378867.Spec : Prop :=
  ∀ n, P15387864015011378867.a n = A100788 n

end A100788

/-!
# A100789: First differences of A000543.

The programs for A100789, the canonical program `A100789.P571457685267019163` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100789 has offset 0).

The definition of A100789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100789.P571457685267019163

`Δ[A000543(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A100789

/-- `Δ[A000543(n)]` -/
def P571457685267019163.Spec : Prop :=
  ∀ n, P571457685267019163.a n = A100789 n

theorem P571457685267019163.correct : P571457685267019163.Spec := by
  intro n
  simp only [A100789]

end A100789

/-! ## A100789.P6310593171964025766

`A000543(n+1)-A000543(n)`
-/

namespace A100789.P6310593171964025766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000543 (n + 1) - A000543 n

end

end A100789.P6310593171964025766

namespace A100789

/-- `A000543(n+1)-A000543(n)` -/
def P6310593171964025766.Spec : Prop :=
  ∀ n, P6310593171964025766.a n = A100789 n

theorem P6310593171964025766.correct : P6310593171964025766.Spec := by
  intro n
  simp only [A100789, Nat.add_sub_cancel, A100789.P6310593171964025766.a, A100789.P571457685267019163.f1, A100789.P571457685267019163.a, SequenceMachineLib.memo_apply]

end A100789

/-! ## A100789.P15890125454872677777

`record[A000543(A291769(n))]-A000543(n)`
-/

namespace A100789.P15890125454872677777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000543 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000543 n

end

end A100789.P15890125454872677777

namespace A100789

/-- `record[A000543(A291769(n))]-A000543(n)` -/
def P15890125454872677777.Spec : Prop :=
  ∀ n, P15890125454872677777.a n = A100789 n

end A100789

/-! ## A100789.P1759245847370689139

`record[A000543(A292266(n))]-A000543(n)`
-/

namespace A100789.P1759245847370689139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000543 (A292266 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000543 n

end

end A100789.P1759245847370689139

namespace A100789

/-- `record[A000543(A292266(n))]-A000543(n)` -/
def P1759245847370689139.Spec : Prop :=
  ∀ n, P1759245847370689139.a n = A100789 n

end A100789

/-! ## A100789.P11931480139717577145

`record[A000543(A328399(n))]-A000543(n)`
-/

namespace A100789.P11931480139717577145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000543 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000543 n

end

end A100789.P11931480139717577145

namespace A100789

/-- `record[A000543(A328399(n))]-A000543(n)` -/
def P11931480139717577145.Spec : Prop :=
  ∀ n, P11931480139717577145.a n = A100789 n

end A100789

/-! ## A100789.P13757411725046322196

`record[A000543(A286544(n))]-A000543(n)`
-/

namespace A100789.P13757411725046322196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000543 (A286544 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000543 n

end

end A100789.P13757411725046322196

namespace A100789

/-- `record[A000543(A286544(n))]-A000543(n)` -/
def P13757411725046322196.Spec : Prop :=
  ∀ n, P13757411725046322196.a n = A100789 n

end A100789

/-! ## A100789.P15463276352100831577

`record[A000543(A134478(n))]-A000543(n)`
-/

namespace A100789.P15463276352100831577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000543 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000543 n

end

end A100789.P15463276352100831577

namespace A100789

/-- `record[A000543(A134478(n))]-A000543(n)` -/
def P15463276352100831577.Spec : Prop :=
  ∀ n, P15463276352100831577.a n = A100789 n

end A100789

/-!
# A100790: First differences of A047780.

The programs for A100790, the canonical program `A100790.P16888007787904654983` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100790 has offset 0).

The definition of A100790 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100790.P16888007787904654983

`(n+1)*(6*n^4+9*n^3+23*n²+46*n+24)/24`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A100790

/-- `(n+1)*(6*n^4+9*n^3+23*n²+46*n+24)/24` -/
def P16888007787904654983.Spec : Prop :=
  ∀ n, P16888007787904654983.a n = (A100790 n : ℚ)

end A100790

/-! ## A100790.P13215996191905581514

`A290312(n)+n*A000217(n)²`
-/

namespace A100790.P13215996191905581514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290312 n + (n : ℤ) * A000217 n ^ 2

end

end A100790.P13215996191905581514

namespace A100790

/-- `A290312(n)+n*A000217(n)²` -/
def P13215996191905581514.Spec : Prop :=
  ∀ n, P13215996191905581514.a n = A100790 n

end A100790

/-! ## A100790.P338579595061692137

`Δ[C(n², 3)+∑[2*n]²]/4`
-/

namespace A100790.P338579595061692137
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 3 + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 4

end

end A100790.P338579595061692137

namespace A100790

/-- `Δ[C(n², 3)+∑[2*n]²]/4` -/
def P338579595061692137.Spec : Prop :=
  ∀ n, P338579595061692137.a n = (A100790 n : ℚ)

end A100790

/-! ## A100790.P9851402985545344754

`Δ[A047780(n)]`
-/

namespace A100790.P9851402985545344754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100790.P9851402985545344754

namespace A100790

/-- `Δ[A047780(n)]` -/
def P9851402985545344754.Spec : Prop :=
  ∀ n, P9851402985545344754.a n = A100790 n

end A100790

/-! ## A100790.P9001930980434748352

`Δ[A115286(n)/4]`
-/

namespace A100790.P9001930980434748352
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115286 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100790.P9001930980434748352

namespace A100790

/-- `Δ[A115286(n)/4]` -/
def P9001930980434748352.Spec : Prop :=
  ∀ n, P9001930980434748352.a n = (A100790 n : ℚ)

end A100790

/-! ## A100790.P13147639587292411786

`A047780(n+1)-A047780(n)`
-/

namespace A100790.P13147639587292411786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047780 (n + 1) - A047780 n

end

end A100790.P13147639587292411786

namespace A100790

/-- `A047780(n+1)-A047780(n)` -/
def P13147639587292411786.Spec : Prop :=
  ∀ n, P13147639587292411786.a n = A100790 n

end A100790

/-!
# A100791: Group the natural numbers so that the n-th group contains n(n+1)/2 = T(n) terms: (1), (2,3,4), (5,6,7,8,9,10), (11,12,13,14,15,16,17,18,19,20),(21,22,23,24,25,26,27,28,29,30,31,32,33,34,35),... The n-th row of the following triangle is formed from the sum of first n terms, next n-1 terms,next n-2 terms ... of the n-th group; e.g. third row is (5+6+7), (8+9), (10) or 18,17,10. Sequence contains the triangle read by rows.

The programs for A100791, the canonical program `A100791.P13433836889308004350` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100791 has offset 1).

The definition of A100791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1555 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100791.P13433836889308004350

`Δ[A000217(A212013(n+1)-A004736(n+1))]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A100791

/-- `Δ[A000217(A212013(n+1)-A004736(n+1))]` -/
def P13433836889308004350.Spec : Prop :=
  ∀ n, P13433836889308004350.a n = A100791 (n + 1)

theorem P13433836889308004350.correct : P13433836889308004350.Spec := by
  intro n
  simp only [A100791, Nat.add_sub_cancel]

end A100791

/-! ## A100791.P5293748677463565546

`Δ[A000124(A212013(n+1)-A004736(n+1))]`
-/

namespace A100791.P5293748677463565546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A212013 (n + 1) - A004736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100791.P5293748677463565546

namespace A100791

/-- `Δ[A000124(A212013(n+1)-A004736(n+1))]` -/
def P5293748677463565546.Spec : Prop :=
  ∀ n, P5293748677463565546.a n = A100791 (n + 1)

end A100791

/-! ## A100791.P11924672895528686784

`Δ[A000124(eq[1, A192710(n+1)])]`
-/

namespace A100791.P11924672895528686784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192710 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100791.P11924672895528686784

namespace A100791

/-- `Δ[A000124(eq[1, A192710(n+1)])]` -/
def P11924672895528686784.Spec : Prop :=
  ∀ n, P11924672895528686784.a n = A100791 (n + 1)

end A100791

/-! ## A100791.P17290648722501947190

`Δ[A000217(eq[1, A192710(n+1)])]`
-/

namespace A100791.P17290648722501947190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192710 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100791.P17290648722501947190

namespace A100791

/-- `Δ[A000217(eq[1, A192710(n+1)])]` -/
def P17290648722501947190.Spec : Prop :=
  ∀ n, P17290648722501947190.a n = A100791 (n + 1)

end A100791

/-! ## A100791.P4614908345196453116

`Δ[A000124(record[n/A192710(n+1)])]`
-/

namespace A100791.P4614908345196453116
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A192710 (n + 1) : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100791.P4614908345196453116

namespace A100791

/-- `Δ[A000124(record[n/A192710(n+1)])]` -/
def P4614908345196453116.Spec : Prop :=
  ∀ n, P4614908345196453116.a n = A100791 (n + 1)

end A100791

/-!
# A100792: Group the natural numbers so that the n-th group contains n(n+1)/2 = T(n) terms: (1), (2,3,4), (5,6,7,8,9,10), (11,12,13,14,15,16,17,18,19,20),(21,22,23,24,25,26,27,28,29,30,31,32,33,34,35),... The r-th term of the n-th row of the following triangle is the sum of the next r terms of the n-th group, e.g. third row is (5),(6+7), (8+9+10) or 5,13,27. Sequence contains the triangle read by rows.

The programs for A100792, there is no canonical definition to state claims against.
-/

/-! ## A100792.P16330521033985555708

`Δ[A000124(eq[0, A056558(n)])]`
-/

namespace A100792.P16330521033985555708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100792.P16330521033985555708

/-! ## A100792.P6672796331623245761

`Δ[A000217(eq[0, A056558(n)])]`
-/

namespace A100792.P6672796331623245761
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100792.P6672796331623245761

/-! ## A100792.P16939269635919305490

`Δ[A000124(A111138(n+1)+A057944(n))]`
-/

namespace A100792.P16939269635919305490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A111138 (n + 1) + A057944 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100792.P16939269635919305490

/-! ## A100792.P1033803951397018391

`Δ[A000217(A111138(n+1)+A057944(n))]`
-/

namespace A100792.P1033803951397018391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A111138 (n + 1) + A057944 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100792.P1033803951397018391

/-! ## A100792.P16896208107590232696

`Δ[A000124(A014370(n+1)-A002260(n+1))]`
-/

namespace A100792.P16896208107590232696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A014370 (n + 1) - A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100792.P16896208107590232696

/-! ## A100792.P18042763501406328207

`Δ[A000217(A014370(n+1)-A002260(n+1))]`
-/

namespace A100792.P18042763501406328207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A014370 (n + 1) - A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100792.P18042763501406328207

/-! ## A100792.P6653738349827024671

`Δ[A000124(A229470(n+1)-A014132(n+1))]`
-/

namespace A100792.P6653738349827024671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A229470 (n + 1) - A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100792.P6653738349827024671

/-!
# A100793: Beginning with 1, least natural number such that sum as well the difference of successive terms are both palindromes, otherwise 0 if no such term exists.

The programs for A100793, there is no canonical definition to state claims against.
-/

/-! ## A100793.P6898306032771254433

`(n+1)*A006966(C(n, 5))`
-/

namespace A100793.P6898306032771254433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006966 (Nat.choose n 5)

end

end A100793.P6898306032771254433

/-! ## A100793.P12580875953078068727

`(n+1)*A360119(n^n)`
-/

namespace A100793.P12580875953078068727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A360119 (n ^ n)

end

end A100793.P12580875953078068727

/-! ## A100793.P9931159836617422063

`(n+1)*A184340(n²+1)`
-/

namespace A100793.P9931159836617422063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A184340 (n ^ 2 + 1)

end

end A100793.P9931159836617422063

/-!
# A100794: First differences of A060530.

The programs for A100794, the canonical program `A100794.P18098992418490120474` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100794 has offset 0).

The definition of A100794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100794.P14906926858807857121

`A199406(n+1)+A337406(n+1)-A060530(n)`
-/

namespace A100794.P14906926858807857121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199406 (n + 1) + (A337406 (n + 1) - A060530 n)

end

end A100794.P14906926858807857121

namespace A100794

/-- `A199406(n+1)+A337406(n+1)-A060530(n)` -/
def P14906926858807857121.Spec : Prop :=
  ∀ n, P14906926858807857121.a n = A100794 n

end A100794

/-! ## A100794.P18098992418490120474

`Δ[A060530(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A100794

/-- `Δ[A060530(n)]` -/
def P18098992418490120474.Spec : Prop :=
  ∀ n, P18098992418490120474.a n = A100794 n

theorem P18098992418490120474.correct : P18098992418490120474.Spec := by
  intro n
  simp only [A100794]

end A100794

/-! ## A100794.P13386578220093616969

`A060530(n+1)-A060530(n)`
-/

namespace A100794.P13386578220093616969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060530 (n + 1) - A060530 n

end

end A100794.P13386578220093616969

namespace A100794

/-- `A060530(n+1)-A060530(n)` -/
def P13386578220093616969.Spec : Prop :=
  ∀ n, P13386578220093616969.a n = A100794 n

theorem P13386578220093616969.correct : P13386578220093616969.Spec := by
  intro n
  simp only [A100794, Nat.add_sub_cancel, A100794.P13386578220093616969.a, A100794.P18098992418490120474.f1, A100794.P18098992418490120474.a, SequenceMachineLib.memo_apply]

end A100794

/-!
# A100795: n occurs n times, as early as possible subject to the constraint that no two successive terms are identical.

The programs for A100795, the canonical program `A100795.P16356930551648143733` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100795 has offset 1).

The definition of A100795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100795.P16356930551648143733

`a(or(1, n)-a(n-1))+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A100795

/-- `a(or(1, n)-a(n-1))+1` -/
def P16356930551648143733.Spec : Prop :=
  ∀ n, (P16356930551648143733.a n : ℤ) = A100795 (n + 1)

theorem P16356930551648143733.correct : P16356930551648143733.Spec := by
  intro n
  simp only [A100795, Nat.add_sub_cancel]

end A100795

/-! ## A100795.P9694682645083918092

`a(n-a(n-gcd(2, n)))+1` with `a(0)=1`
-/

namespace A100795.P9694682645083918092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - a (n - Nat.gcd 2 n)) + 1

end

end A100795.P9694682645083918092

namespace A100795

/-- `a(n-a(n-gcd(2, n)))+1` -/
def P9694682645083918092.Spec : Prop :=
  ∀ n, (P9694682645083918092.a n : ℤ) = A100795 (n + 1)

end A100795

/-! ## A100795.P5668257521674923482

`a(n-a(n-char[2*n]-1))+1` with `a(0)=1`
-/

namespace A100795.P5668257521674923482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - a ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 1).toNat) + 1

end

end A100795.P5668257521674923482

namespace A100795

/-- `a(n-a(n-char[2*n]-1))+1` -/
def P5668257521674923482.Spec : Prop :=
  ∀ n, (P5668257521674923482.a n : ℤ) = A100795 (n + 1)

end A100795

/-! ## A100795.P16914452592979542295

`A116939(n)+1`
-/

namespace A100795.P16914452592979542295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 n + 1

end

end A100795.P16914452592979542295

namespace A100795

/-- `A116939(n)+1` -/
def P16914452592979542295.Spec : Prop :=
  ∀ n, P16914452592979542295.a n = A100795 (n + 1)

end A100795

/-! ## A100795.P8108402837650623959

`or(1, A103128(n+1)+n)-n`
-/

namespace A100795.P8108402837650623959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A103128 (n + 1) + (n : ℤ)) - (n : ℤ)

end

end A100795.P8108402837650623959

namespace A100795

/-- `or(1, A103128(n+1)+n)-n` -/
def P8108402837650623959.Spec : Prop :=
  ∀ n, P8108402837650623959.a n = A100795 (n + 1)

end A100795

/-! ## A100795.P16272691533234226347

`A001316(A001316(n))-(1-A116939(n))`
-/

namespace A100795.P16272691533234226347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A001316 n).toNat - (1 - A116939 n)

end

end A100795.P16272691533234226347

namespace A100795

/-- `A001316(A001316(n))-(1-A116939(n))` -/
def P16272691533234226347.Spec : Prop :=
  ∀ n, P16272691533234226347.a n = A100795 (n + 1)

end A100795

/-! ## A100795.P3163895599908724263

`A004442(2*A116939(n))-A116939(n)`
-/

namespace A100795.P3163895599908724263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A116939 n).toNat - A116939 n

end

end A100795.P3163895599908724263

namespace A100795

/-- `A004442(2*A116939(n))-A116939(n)` -/
def P3163895599908724263.Spec : Prop :=
  ∀ n, P3163895599908724263.a n = A100795 (n + 1)

end A100795

/-! ## A100795.P2011588632563621286

`A003056(A116942(n))+1`
-/

namespace A100795.P2011588632563621286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A116942 n).toNat + 1

end

end A100795.P2011588632563621286

namespace A100795

/-- `A003056(A116942(n))+1` -/
def P2011588632563621286.Spec : Prop :=
  ∀ n, P2011588632563621286.a n = A100795 (n + 1)

end A100795

/-! ## A100795.P5704169298210087310

`∑[A033999(comp[A047838(n+2)])]`
-/

namespace A100795.P5704169298210087310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100795.P5704169298210087310

namespace A100795

/-- `∑[A033999(comp[A047838(n+2)])]` -/
def P5704169298210087310.Spec : Prop :=
  ∀ n, P5704169298210087310.a n = A100795 (n + 1)

end A100795

/-! ## A100795.P4571875803068419021

`A109613(A172471(n)+n)-n`
-/

namespace A100795.P4571875803068419021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A172471 n + (n : ℤ)).toNat - (n : ℤ)

end

end A100795.P4571875803068419021

namespace A100795

/-- `A109613(A172471(n)+n)-n` -/
def P4571875803068419021.Spec : Prop :=
  ∀ n, P4571875803068419021.a n = A100795 (n + 1)

end A100795

/-! ## A100795.P18227820681113411815

`A052928(A182834(n+2))-(n+1)`
-/

namespace A100795.P18227820681113411815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A182834 (n + 2)).toNat - (n + 1 : ℤ)

end

end A100795.P18227820681113411815

namespace A100795

/-- `A052928(A182834(n+2))-(n+1)` -/
def P18227820681113411815.Spec : Prop :=
  ∀ n, P18227820681113411815.a n = A100795 (n + 1)

end A100795

/-! ## A100795.P5810522205903675390

`A116939(A081352(A116939(n))-n)`
-/

namespace A100795.P5810522205903675390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A081352 (A116939 n).toNat - (n : ℤ)).toNat

end

end A100795.P5810522205903675390

namespace A100795

/-- `A116939(A081352(A116939(n))-n)` -/
def P5810522205903675390.Spec : Prop :=
  ∀ n, P5810522205903675390.a n = A100795 (n + 1)

end A100795

/-! ## A100795.P1523089883367085490

`∑[A033999(n-A000196(2*n))]`
-/

namespace A100795.P1523089883367085490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 ((n : ℤ) - A000196 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100795.P1523089883367085490

namespace A100795

/-- `∑[A033999(n-A000196(2*n))]` -/
def P1523089883367085490.Spec : Prop :=
  ∀ n, P1523089883367085490.a n = A100795 (n + 1)

end A100795

/-! ## A100795.P11285141830289998194

`∑[A033999(A059851(2*n)-n)]`
-/

namespace A100795.P11285141830289998194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A059851 (2 * n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100795.P11285141830289998194

namespace A100795

/-- `∑[A033999(A059851(2*n)-n)]` -/
def P11285141830289998194.Spec : Prop :=
  ∀ n, P11285141830289998194.a n = A100795 (n + 1)

end A100795

/-! ## A100795.P2680875966471631805

`A128622(A183218(n+1))`
-/

namespace A100795.P2680875966471631805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128622 (A183218 (n + 1)).toNat

end

end A100795.P2680875966471631805

namespace A100795

/-- `A128622(A183218(n+1))` -/
def P2680875966471631805.Spec : Prop :=
  ∀ n, P2680875966471631805.a n = A100795 (n + 1)

end A100795

/-! ## A100795.P5957380747971030261

`round(sqrt(A170950(A170950(2*n+1))))`
-/

namespace A100795.P5957380747971030261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A170950 (A170950 (2 * n + 1)).toNat : ℝ))

end

end A100795.P5957380747971030261

namespace A100795

/-- `round(sqrt(A170950(A170950(2*n+1))))` -/
def P5957380747971030261.Spec : Prop :=
  ∀ n, P5957380747971030261.a n = A100795 (n + 1)

end A100795

/-! ## A100795.P261527404661252335

`A119557(A047471(n+1))+1`
-/

namespace A100795.P261527404661252335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119557 (A047471 (n + 1)).toNat + 1

end

end A100795.P261527404661252335

namespace A100795

/-- `A119557(A047471(n+1))+1` -/
def P261527404661252335.Spec : Prop :=
  ∀ n, P261527404661252335.a n = A100795 (n + 1)

end A100795

/-! ## A100795.P17673215915307728110

`A119557(A047522(n+1))+1`
-/

namespace A100795.P17673215915307728110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119557 (A047522 (n + 1)).toNat + 1

end

end A100795.P17673215915307728110

namespace A100795

/-- `A119557(A047522(n+1))+1` -/
def P17673215915307728110.Spec : Prop :=
  ∀ n, P17673215915307728110.a n = A100795 (n + 1)

end A100795

/-! ## A100795.P1516332975309687743

`A119557(A047550(n+1))+1`
-/

namespace A100795.P1516332975309687743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119557 (A047550 (n + 1)).toNat + 1

end

end A100795.P1516332975309687743

namespace A100795

/-- `A119557(A047550(n+1))+1` -/
def P1516332975309687743.Spec : Prop :=
  ∀ n, P1516332975309687743.a n = A100795 (n + 1)

end A100795

/-! ## A100795.P1079580081211575776

`A086520(record[xor(2, n)])`
-/

namespace A100795.P1079580081211575776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A100795.P1079580081211575776

namespace A100795

/-- `A086520(record[xor(2, n)])` -/
def P1079580081211575776.Spec : Prop :=
  ∀ n, P1079580081211575776.a n = A100795 (n + 1)

end A100795

/-!
# A100798: n occurs n times, as early as possible subject to the constraint that two successive occurrences of n are separated by at least by n terms.

The programs for A100798, there is no canonical definition to state claims against.
-/

/-! ## A100798.P5733481321580454407

`A375136(A006521(n+2))`
-/

namespace A100798.P5733481321580454407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375136 (A006521 (n + 2)).toNat

end

end A100798.P5733481321580454407

/-! ## A100798.P16464209857727882373

`A375136(A289257(n+2))`
-/

namespace A100798.P16464209857727882373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375136 (A289257 (n + 2)).toNat

end

end A100798.P16464209857727882373

/-!
# A100799: a(1) = 1, a(2) = 2, a(n) = product of nonzero digits of previous two terms.

The programs for A100799, there is no canonical definition to state claims against.
-/

/-! ## A100799.P7984325936433663910

`A051801(a(n-1))*A051801(a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A100799.P7984325936433663910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A051801 (a (n - 1)).toNat * A051801 (a (n - 2)).toNat

end

end A100799.P7984325936433663910

