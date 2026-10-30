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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A283800: Numbers such that the sum of trits of its balanced ternary representation is 1 or -1.

The programs for A283800, the canonical program `A283800.P14027803973692212953` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283800 has offset 1).

The definition of A283800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2920 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283800.P14027803973692212953

`eq[1, abs(A065363(n))]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A283800

/-- `eq[1, abs(A065363(n))]` -/
def P14027803973692212953.Spec : Prop :=
  ∀ n, (P14027803973692212953.a n : ℤ) = A283800 (n + 1)

theorem P14027803973692212953.correct : P14027803973692212953.Spec := by
  intro n
  simp only [A283800, Nat.add_sub_cancel]

end A283800

/-! ## A283800.P10909194209484066060

`eq[1, A007088(A065363(n)²)]`
-/

namespace A283800.P10909194209484066060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A065363 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283800.P10909194209484066060

namespace A283800

/-- `eq[1, A007088(A065363(n)²)]` -/
def P10909194209484066060.Spec : Prop :=
  ∀ n, (P10909194209484066060.a n : ℤ) = A283800 (n + 1)

end A283800

/-! ## A283800.P6316005503703733963

`eq[1, A127427(A065363(n)²)]`
-/

namespace A283800.P6316005503703733963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127427 (A065363 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283800.P6316005503703733963

namespace A283800

/-- `eq[1, A127427(A065363(n)²)]` -/
def P6316005503703733963.Spec : Prop :=
  ∀ n, (P6316005503703733963.a n : ℤ) = A283800 (n + 1)

end A283800

/-! ## A283800.P16147606676559924525

`eq[2, A000079(A065363(n)²)]`
-/

namespace A283800.P16147606676559924525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A065363 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283800.P16147606676559924525

namespace A283800

/-- `eq[2, A000079(A065363(n)²)]` -/
def P16147606676559924525.Spec : Prop :=
  ∀ n, (P16147606676559924525.a n : ℤ) = A283800 (n + 1)

end A283800

/-! ## A283800.P4398096775492843667

`eq[2, A000124(A065363(n)²)]`
-/

namespace A283800.P4398096775492843667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A065363 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283800.P4398096775492843667

namespace A283800

/-- `eq[2, A000124(A065363(n)²)]` -/
def P4398096775492843667.Spec : Prop :=
  ∀ n, (P4398096775492843667.a n : ℤ) = A283800 (n + 1)

end A283800

/-! ## A283800.P15755216844304449500

`eq[4, A312058(A065363(n)²)]`
-/

namespace A283800.P15755216844304449500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312058 (A065363 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283800.P15755216844304449500

namespace A283800

/-- `eq[4, A312058(A065363(n)²)]` -/
def P15755216844304449500.Spec : Prop :=
  ∀ n, (P15755216844304449500.a n : ℤ) = A283800 (n + 1)

end A283800

/-! ## A283800.P10914911753834708151

`eq[1, A007953(A065363(n)^4)]`
-/

namespace A283800.P10914911753834708151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A065363 n ^ 4).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283800.P10914911753834708151

namespace A283800

/-- `eq[1, A007953(A065363(n)^4)]` -/
def P10914911753834708151.Spec : Prop :=
  ∀ n, (P10914911753834708151.a n : ℤ) = A283800 (n + 1)

end A283800

/-! ## A283800.P14766172150863014889

`eq[A065363(n)^6, A040446(n)]`
-/

namespace A283800.P14766172150863014889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n ^ 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040446 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283800.P14766172150863014889

namespace A283800

/-- `eq[A065363(n)^6, A040446(n)]` -/
def P14766172150863014889.Spec : Prop :=
  ∀ n, (P14766172150863014889.a n : ℤ) = A283800 (n + 1)

end A283800

/-! ## A283800.P3739153915196945880

`eq[A020985(n)², A065363(n)²]`
-/

namespace A283800.P3739153915196945880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283800.P3739153915196945880

namespace A283800

/-- `eq[A020985(n)², A065363(n)²]` -/
def P3739153915196945880.Spec : Prop :=
  ∀ n, (P3739153915196945880.a n : ℤ) = A283800 (n + 1)

end A283800

/-! ## A283800.P14753761770843225895

`eq[1, (A000989(n)-A089643(n))²]`
-/

namespace A283800.P14753761770843225895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000989 n - A089643 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283800.P14753761770843225895

namespace A283800

/-- `eq[1, (A000989(n)-A089643(n))²]` -/
def P14753761770843225895.Spec : Prop :=
  ∀ n, (P14753761770843225895.a n : ℤ) = A283800 (n + 1)

end A283800

/-! ## A283800.P4840912412174744530

`eq[1, (A134022(n)-A134024(n))²]`
-/

namespace A283800.P4840912412174744530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134022 n - A134024 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283800.P4840912412174744530

namespace A283800

/-- `eq[1, (A134022(n)-A134024(n))²]` -/
def P4840912412174744530.Spec : Prop :=
  ∀ n, (P4840912412174744530.a n : ℤ) = A283800 (n + 1)

end A283800

/-! ## A283800.P6600934064569384909

`eq[1, A179239(A065363(n)*A065363(n))]`
-/

namespace A283800.P6600934064569384909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 (A065363 n * A065363 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283800.P6600934064569384909

namespace A283800

/-- `eq[1, A179239(A065363(n)*A065363(n))]` -/
def P6600934064569384909.Spec : Prop :=
  ∀ n, (P6600934064569384909.a n : ℤ) = A283800 (n + 1)

end A283800

/-! ## A283800.P10640820890993293689

`eq[2, A000124(A065363(n)*A065363(n))]`
-/

namespace A283800.P10640820890993293689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A065363 n * A065363 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283800.P10640820890993293689

namespace A283800

/-- `eq[2, A000124(A065363(n)*A065363(n))]` -/
def P10640820890993293689.Spec : Prop :=
  ∀ n, (P10640820890993293689.a n : ℤ) = A283800 (n + 1)

end A283800

/-! ## A283800.P4787764810151132735

`eq[4, A312058(A065363(n)*A065363(n))]`
-/

namespace A283800.P4787764810151132735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312058 (A065363 n * A065363 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283800.P4787764810151132735

namespace A283800

/-- `eq[4, A312058(A065363(n)*A065363(n))]` -/
def P4787764810151132735.Spec : Prop :=
  ∀ n, (P4787764810151132735.a n : ℤ) = A283800 (n + 1)

end A283800

/-! ## A283800.P9302105942232588079

`eq[1, A065363(3*n)²]`
-/

namespace A283800.P9302105942232588079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (3 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283800.P9302105942232588079

namespace A283800

/-- `eq[1, A065363(3*n)²]` -/
def P9302105942232588079.Spec : Prop :=
  ∀ n, (P9302105942232588079.a n : ℤ) = A283800 (n + 1)

end A283800

/-!
# A283803: Expansion of exp( Sum_{n>=1} -A283369(n)/n*x^n ) in powers of x.

The programs for A283803, there is no canonical definition to state claims against.
-/

/-! ## A283803.P9184367770691698859

`A283675(A052905(n+2))`
-/

namespace A283803.P9184367770691698859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283675 (A052905 (n + 2)).toNat

end

end A283803.P9184367770691698859

/-! ## A283803.P16476098629721136995

`A283675(eq[5, A004736(n+1)])`
-/

namespace A283803.P16476098629721136995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283803.P16476098629721136995

/-! ## A283803.P3301435199386615244

`A283675(A034856(n+3)-A001489(n+2))`
-/

namespace A283803.P3301435199386615244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283675 (A034856 (n + 3) - A001489 (n + 2)).toNat

end

end A283803.P3301435199386615244

/-!
# A283806: Odd numbers which are uniquely decomposable into the sum of a prime and a power of two.

The programs for A283806, there is no canonical definition to state claims against.
-/

/-! ## A283806.P6472638106792512850

`filter[2*n+1, A109925(#)]`
-/

namespace A283806.P6472638106792512850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109925 (f1 j) = 1) n)

end

end A283806.P6472638106792512850

/-! ## A283806.P8169422503259410887

`eq[1, A109925(A093178(n))]`
-/

namespace A283806.P8169422503259410887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283806.P8169422503259410887

/-! ## A283806.P7681784479793686721

`A005408(eq[1, A109925(2*n+1)])`
-/

namespace A283806.P7681784479793686721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283806.P7681784479793686721

/-! ## A283806.P4315215058888310429

`A144396(eq[1, A109925(2*n+1)])`
-/

namespace A283806.P4315215058888310429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283806.P4315215058888310429

/-! ## A283806.P12337727911957495454

`eq[A109925(n+1), A135561(n+1)]+1`
-/

namespace A283806.P12337727911957495454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A283806.P12337727911957495454

/-! ## A283806.P12327259877899782323

`A000265(eq[(n+1)*A109925(n+1), A000265(n+1)]+1)`
-/

namespace A283806.P12327259877899782323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A109925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A283806.P12327259877899782323

/-! ## A283806.P869931556427494055

`eq[A057979(n+4), A109925(n+1)]+1`
-/

namespace A283806.P869931556427494055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A283806.P869931556427494055

/-!
# A283807: Smallest prime p such that A005117(k+1) - A005117(k-1) = n, where p = A005117(k) for some k.

The programs for A283807, there is no canonical definition to state claims against.
-/

/-! ## A283807.P2638461463488433416

`A107810(A018086(n+1))`
-/

namespace A283807.P2638461463488433416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107810 (A018086 (n + 1)).toNat

end

end A283807.P2638461463488433416

/-! ## A283807.P10402891122233531582

`filter[A270996(n), A091225(#)]`
-/

namespace A283807.P10402891122233531582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091225 (f1 j).toNat = 1) n)

end

end A283807.P10402891122233531582

/-!
# A283808: Numbers k such that phi(phi(k)) divides k, where phi(k) is A000010(k).

The programs for A283808, the canonical program `A283808.P7073396927989824590` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283808 has offset 1).

The definition of A283808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283808.P7073396927989824590

`record[gcd(n+1, (n+1)%A000010(A000010(n+1)))]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A283808

/-- `record[gcd(n+1, (n+1)%A000010(A000010(n+1)))]` -/
def P7073396927989824590.Spec : Prop :=
  ∀ n, (P7073396927989824590.a n : ℤ) = A283808 (n + 1)

theorem P7073396927989824590.correct : P7073396927989824590.Spec := by
  intro n
  simp only [A283808, Nat.add_sub_cancel]

end A283808

/-! ## A283808.P4187857388403864473

`eq[0, (n+1)%A000010(A000010(n+1))]+1`
-/

namespace A283808.P4187857388403864473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000010 (A000010 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283808.P4187857388403864473

namespace A283808

/-- `eq[0, (n+1)%A000010(A000010(n+1))]+1` -/
def P4187857388403864473.Spec : Prop :=
  ∀ n, (P4187857388403864473.a n : ℤ) = A283808 (n + 1)

end A283808

/-! ## A283808.P1498265449604735036

`eq[n+1, lcm(n+1, A010554(n+1))]+1`
-/

namespace A283808.P1498265449604735036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A010554 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A283808.P1498265449604735036

namespace A283808

/-- `eq[n+1, lcm(n+1, A010554(n+1))]+1` -/
def P1498265449604735036.Spec : Prop :=
  ∀ n, (P1498265449604735036.a n : ℤ) = A283808 (n + 1)

end A283808

/-! ## A283808.P5119179339157330097

`eq[2, A011754(A073407(n+1))]+1`
-/

namespace A283808.P5119179339157330097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011754 (A073407 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283808.P5119179339157330097

namespace A283808

/-- `eq[2, A011754(A073407(n+1))]+1` -/
def P5119179339157330097.Spec : Prop :=
  ∀ n, (P5119179339157330097.a n : ℤ) = A283808 (n + 1)

end A283808

/-! ## A283808.P2137618391942708996

`record[A005843(n+1)/A011754(A073407(n+1))]`
-/

namespace A283808.P2137618391942708996
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A011754 (A073407 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283808.P2137618391942708996

namespace A283808

/-- `record[A005843(n+1)/A011754(A073407(n+1))]` -/
def P2137618391942708996.Spec : Prop :=
  ∀ n, P2137618391942708996.a n = (A283808 (n + 1) : ℚ)

end A283808

/-!
# A283809: Squarefree numbers k such that 6*k - 1 and 6*k + 1 are twin primes.

The programs for A283809, the canonical program `A283809.P4521532784836078013` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283809 has offset 1).

The definition of A283809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283809.P4521532784836078013

`record[A007913(A002822(n+1))]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A283809

/-- `record[A007913(A002822(n+1))]` -/
def P4521532784836078013.Spec : Prop :=
  ∀ n, P4521532784836078013.a n = A283809 (n + 1)

theorem P4521532784836078013.correct : P4521532784836078013.Spec := by
  intro n
  simp only [A283809, Nat.add_sub_cancel]

end A283809

/-! ## A283809.P17991766521466286345

`filter[A002822(n+1), A008966(#)]`
-/

namespace A283809.P17991766521466286345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A283809.P17991766521466286345

namespace A283809

/-- `filter[A002822(n+1), A008966(#)]` -/
def P17991766521466286345.Spec : Prop :=
  ∀ n, P17991766521466286345.a n = A283809 (n + 1)

end A283809

/-! ## A283809.P16282551772303646966

`record[A007947(A167379(n+1)/2)]`
-/

namespace A283809.P16282551772303646966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A167379 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283809.P16282551772303646966

namespace A283809

/-- `record[A007947(A167379(n+1)/2)]` -/
def P16282551772303646966.Spec : Prop :=
  ∀ n, P16282551772303646966.a n = A283809 (n + 1)

end A283809

/-! ## A283809.P5304246735708036586

`record[A007947(A040040(n+2)-A167379(n+1))]`
-/

namespace A283809.P5304246735708036586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A040040 (n + 2) - A167379 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283809.P5304246735708036586

namespace A283809

/-- `record[A007947(A040040(n+2)-A167379(n+1))]` -/
def P5304246735708036586.Spec : Prop :=
  ∀ n, P5304246735708036586.a n = A283809 (n + 1)

end A283809

/-! ## A283809.P8392941139234635737

`∩[A002822(n+1), A005117(n+1)]`
-/

namespace A283809.P8392941139234635737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283809.P8392941139234635737

namespace A283809

/-- `∩[A002822(n+1), A005117(n+1)]` -/
def P8392941139234635737.Spec : Prop :=
  ∀ n, (P8392941139234635737.a n : ℤ) = A283809 (n + 1)

end A283809

/-! ## A283809.P1806534142388715429

`filter[A002822(n+1), A323154(#)]`
-/

namespace A283809.P1806534142388715429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A283809.P1806534142388715429

namespace A283809

/-- `filter[A002822(n+1), A323154(#)]` -/
def P1806534142388715429.Spec : Prop :=
  ∀ n, P1806534142388715429.a n = A283809 (n + 1)

end A283809

/-! ## A283809.P18151238744530333269

`∩[A002822(n+1), A064594(n+1)]`
-/

namespace A283809.P18151238744530333269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283809.P18151238744530333269

namespace A283809

/-- `∩[A002822(n+1), A064594(n+1)]` -/
def P18151238744530333269.Spec : Prop :=
  ∀ n, (P18151238744530333269.a n : ℤ) = A283809 (n + 1)

end A283809

/-! ## A283809.P17242984713346752082

`∩[A002822(n+1), A243348(n+1)+n+1]`
-/

namespace A283809.P17242984713346752082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243348 (n + 1) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283809.P17242984713346752082

namespace A283809

/-- `∩[A002822(n+1), A243348(n+1)+n+1]` -/
def P17242984713346752082.Spec : Prop :=
  ∀ n, (P17242984713346752082.a n : ℤ) = A283809 (n + 1)

end A283809

/-! ## A283809.P2382504340275630861

`filter[A002822(n+1), A003557(#)]`
-/

namespace A283809.P2382504340275630861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A003557 (f1 j).toNat = 1) n)

end

end A283809.P2382504340275630861

namespace A283809

/-- `filter[A002822(n+1), A003557(#)]` -/
def P2382504340275630861.Spec : Prop :=
  ∀ n, P2382504340275630861.a n = A283809 (n + 1)

end A283809

/-! ## A283809.P12778733650821007901

`filter[A005117(n+1), A100923(#)]`
-/

namespace A283809.P12778733650821007901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A100923 (f1 j).toNat = 1) n)

end

end A283809.P12778733650821007901

namespace A283809

/-- `filter[A005117(n+1), A100923(#)]` -/
def P12778733650821007901.Spec : Prop :=
  ∀ n, P12778733650821007901.a n = A283809 (n + 1)

end A283809

/-! ## A283809.P9735645206421448278

`filter[A064594(n+1), A100923(#)]`
-/

namespace A283809.P9735645206421448278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A100923 (f1 j).toNat = 1) n)

end

end A283809.P9735645206421448278

namespace A283809

/-- `filter[A064594(n+1), A100923(#)]` -/
def P9735645206421448278.Spec : Prop :=
  ∀ n, P9735645206421448278.a n = A283809 (n + 1)

end A283809

/-! ## A283809.P11925401986379175155

`filter[A088610(2*n+1), A100923(#)]`
-/

namespace A283809.P11925401986379175155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A100923 (f1 j).toNat = 1) n)

end

end A283809.P11925401986379175155

namespace A283809

/-- `filter[A088610(2*n+1), A100923(#)]` -/
def P11925401986379175155.Spec : Prop :=
  ∀ n, P11925401986379175155.a n = A283809 (n + 1)

end A283809

/-!
# A283811: Poly-Bernoulli numbers B_n^(k) with k = -5.

The programs for A283811, the canonical program `A283811.P14132772696831068304` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283811 has offset 0).

The definition of A283811 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283811.P14132772696831068304

`120*6^n-240*5^n+150*4^n-30*3^n+2^n`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A283811

/-- `120*6^n-240*5^n+150*4^n-30*3^n+2^n` -/
def P14132772696831068304.Spec : Prop :=
  ∀ n, P14132772696831068304.a n = A283811 n

theorem P14132772696831068304.correct : P14132772696831068304.Spec := by
  intro n
  simp only [A283811]

end A283811

/-! ## A283811.P9421039178658974716

`A099594(A167499(n+4))`
-/

namespace A283811.P9421039178658974716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A167499 (n + 4)).toNat

end

end A283811.P9421039178658974716

namespace A283811

/-- `A099594(A167499(n+4))` -/
def P9421039178658974716.Spec : Prop :=
  ∀ n, P9421039178658974716.a n = A283811 n

end A283811

/-! ## A283811.P12274740879165916394

`A099594(A000217(n+5)+5)`
-/

namespace A283811.P12274740879165916394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A000217 (n + 5) + 5).toNat

end

end A283811.P12274740879165916394

namespace A283811

/-- `A099594(A000217(n+5)+5)` -/
def P12274740879165916394.Spec : Prop :=
  ∀ n, P12274740879165916394.a n = A283811 n

end A283811

/-! ## A283811.P11179843164309721383

`A099594(A052905(n+2)+10)`
-/

namespace A283811.P11179843164309721383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A052905 (n + 2) + 10).toNat

end

end A283811.P11179843164309721383

namespace A283811

/-- `A099594(A052905(n+2)+10)` -/
def P11179843164309721383.Spec : Prop :=
  ∀ n, P11179843164309721383.a n = A283811 n

end A283811

/-! ## A283811.P18304383354530142240

`A099594(A055999(n+3))`
-/

namespace A283811.P18304383354530142240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A055999 (n + 3)).toNat

end

end A283811.P18304383354530142240

namespace A283811

/-- `A099594(A055999(n+3))` -/
def P18304383354530142240.Spec : Prop :=
  ∀ n, P18304383354530142240.a n = A283811 n

end A283811

/-! ## A283811.P12528843242507547744

`A099594(A056119(n)+15)`
-/

namespace A283811.P12528843242507547744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A056119 n + 15).toNat

end

end A283811.P12528843242507547744

namespace A283811

/-- `A099594(A056119(n)+15)` -/
def P12528843242507547744.Spec : Prop :=
  ∀ n, P12528843242507547744.a n = A283811 n

end A283811

/-! ## A283811.P14246819298542335660

`A099594(Δ[A023551(n+1)])`
-/

namespace A283811.P14246819298542335660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (f1 (n + 1) - f1 n).toNat

end

end A283811.P14246819298542335660

namespace A283811

/-- `A099594(Δ[A023551(n+1)])` -/
def P14246819298542335660.Spec : Prop :=
  ∀ n, P14246819298542335660.a n = A283811 n

end A283811

/-! ## A283811.P10392112939241808599

`A099594(Δ[A026054(n+3)])`
-/

namespace A283811.P10392112939241808599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (f1 (n + 1) - f1 n).toNat

end

end A283811.P10392112939241808599

namespace A283811

/-- `A099594(Δ[A026054(n+3)])` -/
def P10392112939241808599.Spec : Prop :=
  ∀ n, P10392112939241808599.a n = A283811 n

end A283811

/-!
# A283812: Poly-Bernoulli numbers B_n^(k) with k = -6.

The programs for A283812, there is no canonical definition to state claims against.
-/

/-! ## A283812.P11786040842180339388

`A099594(A056119(n)+27)`
-/

namespace A283812.P11786040842180339388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A056119 n + 27).toNat

end

end A283812.P11786040842180339388

/-! ## A283812.P14178931658969187979

`A099594(A167499(n+5)+1)`
-/

namespace A283812.P14178931658969187979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A167499 (n + 5) + 1).toNat

end

end A283812.P14178931658969187979

/-! ## A283812.P778810996536212675

`A099594(A167614(n+5)+3)`
-/

namespace A283812.P778810996536212675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A167614 (n + 5) + 3).toNat

end

end A283812.P778810996536212675

/-! ## A283812.P2079613043845093553

`A099594(A145018(n+7)+2)`
-/

namespace A283812.P2079613043845093553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A145018 (n + 7) + 2).toNat

end

end A283812.P2079613043845093553

/-! ## A283812.P6246830048617698859

`A099594(A001489(n+2)+A000124(n+7))`
-/

namespace A283812.P6246830048617698859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A001489 (n + 2) + A000124 (n + 7)).toNat

end

end A283812.P6246830048617698859

/-! ## A283812.P5417094194254443175

`A099594(A005408(n+8)+A000217(n+4))`
-/

namespace A283812.P5417094194254443175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A005408 (n + 8) + A000217 (n + 4)).toNat

end

end A283812.P5417094194254443175

/-! ## A283812.P12934912605648081024

`A099594(A055998(n+5)-4)`
-/

namespace A283812.P12934912605648081024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A055998 (n + 5) - 4).toNat

end

end A283812.P12934912605648081024

/-! ## A283812.P3391290035591150250

`A099594(A000217(n+7)-7)`
-/

namespace A283812.P3391290035591150250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A000217 (n + 7) - 7).toNat

end

end A283812.P3391290035591150250

/-! ## A283812.P5251806192827331677

`A099594(A000124(n+7)-8)`
-/

namespace A283812.P5251806192827331677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A000124 (n + 7) - 8).toNat

end

end A283812.P5251806192827331677

/-! ## A283812.P4964430303903850645

`A099594(Δ[A023551(n+2)]-1)`
-/

namespace A283812.P4964430303903850645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (f1 (n + 1) - f1 n - 1).toNat

end

end A283812.P4964430303903850645

/-!
# A283813: Poly-Bernoulli numbers B_n^(k) with k = -7.

The programs for A283813, there is no canonical definition to state claims against.
-/

/-! ## A283813.P648776877503084924

`A099594(A167487(n+6))`
-/

namespace A283813.P648776877503084924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A167487 (n + 6)).toNat

end

end A283813.P648776877503084924

/-! ## A283813.P10750369713467466981

`A099594(eq[7, A002262(n)])`
-/

namespace A283813.P10750369713467466981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283813.P10750369713467466981

/-! ## A283813.P14827821671974013896

`A099594(A056119(n+1)+28)`
-/

namespace A283813.P14827821671974013896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A056119 (n + 1) + 28).toNat

end

end A283813.P14827821671974013896

/-! ## A283813.P7378183474638414245

`A099594(eq[7, A144328(n+1)])`
-/

namespace A283813.P7378183474638414245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283813.P7378183474638414245

/-! ## A283813.P14526438753957523734

`A099594(eq[8, A002260(n+1)])`
-/

namespace A283813.P14526438753957523734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283813.P14526438753957523734

/-! ## A283813.P4994963208624899384

`A099594(A155212(n+4))`
-/

namespace A283813.P4994963208624899384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A155212 (n + 4)).toNat

end

end A283813.P4994963208624899384

/-! ## A283813.P14224296852002799495

`A099594(eq[7, A025581(n)])`
-/

namespace A283813.P14224296852002799495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283813.P14224296852002799495

/-! ## A283813.P7787011150629505118

`A099594(eq[8, A193739(n)])`
-/

namespace A283813.P7787011150629505118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283813.P7787011150629505118

/-! ## A283813.P3602865805706522710

`A099594(eq[8, A004736(n+1)])`
-/

namespace A283813.P3602865805706522710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283813.P3602865805706522710

/-!
# A283814: Irregular triangle read by rows in which n-th row lists the numbers m such that 2*prime(m) can be represented as the sum of two primes in exactly n ways.

The programs for A283814, there is no canonical definition to state claims against.
-/

/-! ## A283814.P16548657757751779268

`A000720(p?[A004526(A189562(n))])`
-/

namespace A283814.P16548657757751779268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A189562 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A283814.P16548657757751779268

/-! ## A283814.P2726764761062226125

`A000720(p?[A026741(A189562(n))])`
-/

namespace A283814.P2726764761062226125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A189562 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A283814.P2726764761062226125

/-! ## A283814.P10924532017977902767

`A000720(p?[A032742(A189562(n))])`
-/

namespace A283814.P10924532017977902767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A189562 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A283814.P10924532017977902767

/-! ## A283814.P14994193498720049952

`A058933(p?[A004525(A189562(n))])`
-/

namespace A283814.P14994193498720049952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A189562 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A283814.P14994193498720049952

/-! ## A283814.P5322562448702623413

`A252464(p?[A123108(A189562(n))])`
-/

namespace A283814.P5322562448702623413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A189562 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A283814.P5322562448702623413

/-!
# A283815: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 726", based on the 5-celled von Neumann neighborhood.

The programs for A283815, there is no canonical definition to state claims against.
-/

/-! ## A283815.P5921099151843720666

`A007088(A283817(n))`
-/

namespace A283815.P5921099151843720666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283817 n).toNat

end

end A283815.P5921099151843720666

/-! ## A283815.P13501328465073623015

`A305989(A283818(n))`
-/

namespace A283815.P13501328465073623015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283818 n).toNat

end

end A283815.P13501328465073623015

/-! ## A283815.P2232573502507460109

`A185544(2*A283817(n))`
-/

namespace A283815.P2232573502507460109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283817 n).toNat

end

end A283815.P2232573502507460109

/-! ## A283815.P13339212130895795931

`A185544(lcm(2, A283817(n)))`
-/

namespace A283815.P13339212130895795931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283817 n))

end

end A283815.P13339212130895795931

/-! ## A283815.P14534972782821589781

`A185544(A283817(n)+A283817(n))`
-/

namespace A283815.P14534972782821589781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A283817 n + A283817 n).toNat

end

end A283815.P14534972782821589781

/-!
# A283816: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 726", based on the 5-celled von Neumann neighborhood.

The programs for A283816, there is no canonical definition to state claims against.
-/

/-! ## A283816.P10054701922165994076

`A007088(A283818(n))`
-/

namespace A283816.P10054701922165994076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283818 n).toNat

end

end A283816.P10054701922165994076

/-! ## A283816.P12809522439046806797

`A305989(A283817(n))`
-/

namespace A283816.P12809522439046806797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283817 n).toNat

end

end A283816.P12809522439046806797

/-! ## A283816.P2009572065875898734

`A185544(2*A283818(n))`
-/

namespace A283816.P2009572065875898734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283818 n).toNat

end

end A283816.P2009572065875898734

/-! ## A283816.P6682708036617803585

`A185544(lcm(2, A283818(n)))`
-/

namespace A283816.P6682708036617803585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283818 n))

end

end A283816.P6682708036617803585

/-! ## A283816.P2225129771793615195

`A185544(A283818(n)+A283818(n))`
-/

namespace A283816.P2225129771793615195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A283818 n + A283818 n).toNat

end

end A283816.P2225129771793615195

/-!
# A283817: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 726", based on the 5-celled von Neumann neighborhood.

The programs for A283817, there is no canonical definition to state claims against.
-/

/-! ## A283817.P7760735285746714257

`and(A126646(n), A264618(A283818(n)))`
-/

namespace A283817.P7760735285746714257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A264618 (A283818 n).toNat)

end

end A283817.P7760735285746714257

/-! ## A283817.P16517196436696687534

`A057889(A283818(n))`
-/

namespace A283817.P16517196436696687534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A283818 n).toNat

end

end A283817.P16517196436696687534

/-! ## A283817.P183248466613114231

`A030101(A283818(n))`
-/

namespace A283817.P183248466613114231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A283818 n).toNat

end

end A283817.P183248466613114231

/-! ## A283817.P8621947458403408818

`A281589(2*A283818(n))`
-/

namespace A283817.P8621947458403408818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A283818 n).toNat

end

end A283817.P8621947458403408818

/-! ## A283817.P2665437417836933757

`A325401(2*A283818(n))`
-/

namespace A283817.P2665437417836933757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A283818 n).toNat

end

end A283817.P2665437417836933757

/-!
# A283818: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 726", based on the 5-celled von Neumann neighborhood.

The programs for A283818, there is no canonical definition to state claims against.
-/

/-! ## A283818.P8143879359465018489

`and(A126646(n), A264618(A283817(n)))`
-/

namespace A283818.P8143879359465018489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A264618 (A283817 n).toNat)

end

end A283818.P8143879359465018489

/-! ## A283818.P7436589577371911992

`A057889(A283817(n))`
-/

namespace A283818.P7436589577371911992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A283817 n).toNat

end

end A283818.P7436589577371911992

/-! ## A283818.P4146230981716230176

`A030101(A283817(n))`
-/

namespace A283818.P4146230981716230176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A283817 n).toNat

end

end A283818.P4146230981716230176

/-! ## A283818.P8173558949017541870

`A281589(2*A283817(n))`
-/

namespace A283818.P8173558949017541870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A283817 n).toNat

end

end A283818.P8173558949017541870

/-! ## A283818.P5531780636184906317

`A325401(2*A283817(n))`
-/

namespace A283818.P5531780636184906317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A283817 n).toNat

end

end A283818.P5531780636184906317

/-!
# A283819: a(n) = (1 + Sum_{j=1..K-2} a(n-j)*a(n-j-1))/a(n-K) with a(1),...,a(K)=1, where K=5.

The programs for A283819, there is no canonical definition to state claims against.
-/

/-! ## A283819.P11814570621175330070

`A352130(A289508(n+2)+A198518(n+1))`
-/

namespace A283819.P11814570621175330070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352130 (A289508 (n + 2) + A198518 (n + 1)).toNat

end

end A283819.P11814570621175330070

/-! ## A283819.P3780847190489053098

`A321378(A320322(2*n))+A005251(A321347(3*n+1))`
-/

namespace A283819.P3780847190489053098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321378 (A320322 (2 * n)).toNat + A005251 (A321347 (3 * n + 1)).toNat

end

end A283819.P3780847190489053098

/-!
# A283820: a(n) = (1 + Sum_{j=1..K-2} a(n-j)*a(n-j-1))/a(n-K) with a(1),...,a(K)=1, where K=7.

The programs for A283820, there is no canonical definition to state claims against.
-/

/-! ## A283820.P9093116116578677043

`A114172(A275441(n))`
-/

namespace A283820.P9093116116578677043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114172 (A275441 n).toNat

end

end A283820.P9093116116578677043

/-! ## A283820.P14284021539354248429

`A202845(A080498(n+1))`
-/

namespace A283820.P14284021539354248429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202845 (A080498 (n + 1)).toNat

end

end A283820.P14284021539354248429

/-! ## A283820.P314494412593061988

`A377050(A006820(n))+1`
-/

namespace A283820.P314494412593061988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377050 (A006820 n).toNat + 1

end

end A283820.P314494412593061988

/-! ## A283820.P2587085114173689863

`A139605(A261588(n)%A175762(n+1))`
-/

namespace A283820.P2587085114173689863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139605 (Int.tmod (A261588 n) (A175762 (n + 1))).toNat

end

end A283820.P2587085114173689863

/-! ## A283820.P15256857325660018080

`ceil(A002314(A374548(n))/A082522(n+1))`
-/

namespace A283820.P15256857325660018080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002314 (A374548 n).toNat : ℚ) / (A082522 (n + 1) : ℚ)⌉

end

end A283820.P15256857325660018080

/-!
# A283821: a(n) = (1 + Sum_{j=1..K-2} a(n-j)*a(n-j-1))/a(n-K) with a(1),...,a(K)=1, where K=9.

The programs for A283821, there is no canonical definition to state claims against.
-/

/-! ## A283821.P15490672593546805797

`ceil(A223081(n+1)/A014612(3*n+5))`
-/

namespace A283821.P15490672593546805797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A223081 (n + 1) : ℚ) / (A014612 (3 * n + 5) : ℚ)⌉

end

end A283821.P15490672593546805797

/-! ## A283821.P17622208488943547645

`A300362(A164005(n)*A309438(n+1))`
-/

namespace A283821.P17622208488943547645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300362 (A164005 n * A309438 (n + 1)).toNat

end

end A283821.P17622208488943547645

/-!
# A283822: Triangle read by rows: T(n,k) (n>=1, 2<=k<=n+1) = number of graphs with n edges, no isolated nodes, and k nodes in largest connected component.

The programs for A283822, there is no canonical definition to state claims against.
-/

/-! ## A283822.P14649519709614281219

`A324381(A156289(n+1)+3)`
-/

namespace A283822.P14649519709614281219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324381 (A156289 (n + 1) + 3).toNat

end

end A283822.P14649519709614281219

/-! ## A283822.P3167086499850444978

`A238598(floor(sqrt(A156289(n+1))))`
-/

namespace A283822.P3167086499850444978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238598 (Int.sqrt (A156289 (n + 1))).toNat

end

end A283822.P3167086499850444978

/-! ## A283822.P6899687741187049894

`A088519(A028246(n+1))+char[14]`
-/

namespace A283822.P6899687741187049894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088519 (A028246 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A283822.P6899687741187049894

/-! ## A283822.P14105547813120226945

`A325678(A131689(n)+A008518(n))`
-/

namespace A283822.P14105547813120226945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A131689 n + A008518 n).toNat

end

end A283822.P14105547813120226945

/-! ## A283822.P13502587162881388192

`A325678(A131689(n)+A008277(n+1))`
-/

namespace A283822.P13502587162881388192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A131689 n + A008277 (n + 1)).toNat

end

end A283822.P13502587162881388192

/-!
# A283826: Irregular triangle read by rows: T(n,k) = number of trees on n nodes with radius k, n>=1, 1 <= k <= floor(n/2).

The programs for A283826, there is no canonical definition to state claims against.
-/

/-! ## A283826.P6533806564366704515

`A380363(n+1)-A030217(A000045(n+2))`
-/

namespace A283826.P6533806564366704515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380363 (n + 1) - A030217 (A000045 (n + 2)).toNat

end

end A283826.P6533806564366704515

/-! ## A283826.P5733634475929485890

`A380363(n+1)%A000203(A380336(n+2))`
-/

namespace A283826.P5733634475929485890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380363 (n + 1)) (A000203 (A380336 (n + 2)).toNat)

end

end A283826.P5733634475929485890

/-! ## A283826.P10721985934877162640

`A380363(n+1)-A000007(A007088(n))`
-/

namespace A283826.P10721985934877162640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380363 (n + 1) - A000007 (A007088 n).toNat

end

end A283826.P10721985934877162640

/-! ## A283826.P7924059432553707110

`A380363(n+1)-A000007(A323939(n+3))`
-/

namespace A283826.P7924059432553707110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380363 (n + 1) - A000007 (A323939 (n + 3)).toNat

end

end A283826.P7924059432553707110

/-! ## A283826.P18022530770703010384

`A380363(A053165(n+1))%A123286(n)`
-/

namespace A283826.P18022530770703010384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380363 (A053165 (n + 1)).toNat) (A123286 (n + 31))

end

end A283826.P18022530770703010384

/-!
# A283827: Irregular triangle read by rows: T(n,k) = number of trees on n nodes with load k, n>=1, 1 <= k <= floor(n/2).

The programs for A283827, there is no canonical definition to state claims against.
-/

/-! ## A283827.P6899139900502595724

`A122087(n+1)%A193094(3*n)`
-/

namespace A283827.P6899139900502595724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122087 (n + 1)) (A193094 (3 * n))

end

end A283827.P6899139900502595724

/-! ## A283827.P10634177652976454260

`A122087(A187829(n+1))%(2^n)`
-/

namespace A283827.P10634177652976454260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122087 (A187829 (n + 1)).toNat) (2 ^ n : ℤ)

end

end A283827.P10634177652976454260

/-! ## A283827.P5666400953881353670

`and(A122087(n+1), A270814(2^n))`
-/

namespace A283827.P5666400953881353670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122087 (n + 1)) (A270814 (2 ^ n))

end

end A283827.P5666400953881353670

/-! ## A283827.P8961893253466426330

`A122087(n+1)%A122079(A250120(n))`
-/

namespace A283827.P8961893253466426330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122087 (n + 1)) (A122079 (A250120 n).toNat)

end

end A283827.P8961893253466426330

/-! ## A283827.P16748804831539821096

`A122087(n+1)-A008683(A167363(n+1))`
-/

namespace A283827.P16748804831539821096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122087 (n + 1) - A008683 (A167363 (n + 1)).toNat

end

end A283827.P16748804831539821096

/-!
# A283828: Number of bounded regions in the Linial arrangement L_{n-1}.

The programs for A283828, there is no canonical definition to state claims against.
-/

/-! ## A283828.P1740565923429061115

`abs(A349719(n+1))*A057427(n)`
-/

namespace A283828.P1740565923429061115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A349719 (n + 1)| * A057427 n

end

end A283828.P1740565923429061115

/-! ## A283828.P2809217616831840818

`abs(A349719(n+2-A057427(n)))`
-/

namespace A283828.P2809217616831840818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A349719 ((n + 2 : ℤ) - A057427 n).toNat|

end

end A283828.P2809217616831840818

/-! ## A283828.P11488773779348725153

`abs(A349719(n+1))*A076511(A020639(n+1))`
-/

namespace A283828.P11488773779348725153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A349719 (n + 1)| * A076511 (A020639 (n + 1)).toNat

end

end A283828.P11488773779348725153

/-! ## A283828.P17247886022675048846

`abs(A349719(n+1))%A052622(n)`
-/

namespace A283828.P17247886022675048846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A349719 (n + 1)| (A052622 n)

end

end A283828.P17247886022675048846

/-! ## A283828.P15676388873986585738

`abs(A349719(n+1)%A013499(n))`
-/

namespace A283828.P15676388873986585738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A349719 (n + 1)) (A013499 n)|

end

end A283828.P15676388873986585738

/-! ## A283828.P8575433574865553758

`abs(A349719(n+1))%A037992(n)`
-/

namespace A283828.P8575433574865553758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A349719 (n + 1)| (A037992 n)

end

end A283828.P8575433574865553758

/-!
# A283829: Number of singular vector tuples for a general 5-dimensional n X n X n X n X n tensor.

The programs for A283829, there is no canonical definition to state claims against.
-/

/-! ## A283829.P11714304136179788732

`A284308(Δ[A264443(n)])`
-/

namespace A283829.P11714304136179788732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284308 (f1 (n + 1) - f1 n).toNat

end

end A283829.P11714304136179788732

/-! ## A283829.P4909939781028031350

`A284308(A056115(n)+11)`
-/

namespace A283829.P4909939781028031350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284308 (A056115 n + 11).toNat

end

end A283829.P4909939781028031350

/-! ## A283829.P8227795935913032275

`A284308(eq[4, A054123(n)])`
-/

namespace A283829.P8227795935913032275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284308 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283829.P8227795935913032275

/-! ## A283829.P2276720697112801503

`A284308(Δ[A023545(n+1)])`
-/

namespace A283829.P2276720697112801503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284308 (f1 (n + 1) - f1 n).toNat

end

end A283829.P2276720697112801503

/-! ## A283829.P4381445155758954545

`A284308(eq[5, A194921(n+1)])`
-/

namespace A283829.P4381445155758954545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284308 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283829.P4381445155758954545

/-!
# A283830: Number of singular vector tuples for a general 6-dimensional n X n X n X n X n X n tensor.

The programs for A283830, there is no canonical definition to state claims against.
-/

/-! ## A283830.P2982450811264219806

`A284308(Δ[Δ[A006504(n+1)]])`
-/

namespace A283830.P2982450811264219806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284308 (f1 (n + 1) - f1 n).toNat

end

end A283830.P2982450811264219806

/-! ## A283830.P922717937735414646

`A284308(Δ[A264443(n+1)]-1)`
-/

namespace A283830.P922717937735414646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284308 (f1 (n + 1) - f1 n - 1).toNat

end

end A283830.P922717937735414646

/-!
# A283831: Take every fourth term of A104203.

The programs for A283831, there is no canonical definition to state claims against.
-/

/-! ## A283831.P12217103958698605400

`A104203(4*n+1)`
-/

namespace A283831.P12217103958698605400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104203 (4 * n + 1)

end

end A283831.P12217103958698605400

/-! ## A283831.P4377074950001547174

`A190904(2*n+2*n+1)`
-/

namespace A283831.P4377074950001547174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190904 (2 * n + (2 * n + 1))

end

end A283831.P4377074950001547174

/-!
# A283832: First differences of A280774.

The programs for A283832, there is no canonical definition to state claims against.
-/

/-! ## A283832.P13521281024276961698

`A028310(Δ[A280774(A028310(n))])`
-/

namespace A283832.P13521281024276961698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280774 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A283832.P13521281024276961698

/-! ## A283832.P6831983649598345638

`A028310(A280774(n+1)-A280774(A028310(n)))`
-/

namespace A283832.P6831983649598345638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A280774 (n + 1) - A280774 (A028310 n).toNat).toNat

end

end A283832.P6831983649598345638

/-! ## A283832.P5364024053882943637

`A280774(n+1)-record[n/A280738(n+1)]`
-/

namespace A283832.P5364024053882943637
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A280738 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280774 (n + 1) : ℚ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283832.P5364024053882943637

/-! ## A283832.P3771546215040282094

`Δ[record[n/A280738(n+1)]]`
-/

namespace A283832.P3771546215040282094
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A280738 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283832.P3771546215040282094

/-! ## A283832.P15125452077475313274

`A280774(n+1)-eq[1, A280738(n+1)]`
-/

namespace A283832.P15125452077475313274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280774 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A283832.P15125452077475313274

/-! ## A283832.P10623393178791911647

`Δ[eq[1, A280738(n+1)]]`
-/

namespace A283832.P10623393178791911647
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280738 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A283832.P10623393178791911647

/-!
# A283833: For t >= 0, if 2^t + t - 3 <= n <= 2^t + t - 1 then a(n) = 2^t - 1, while if 2^t + t - 1 < n < 2^(t+1) + t - 3 then a(n) = 2^(t+1) + t - 2 - n.

The programs for A283833, the canonical program `A283833.P14205388821880758029` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283833 has offset 0).

The definition of A283833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283833.P10517189328100326885

`A002260(∑[∑[char[comp[2^n+n]]]])`
-/

namespace A283833.P10517189328100326885
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283833.P10517189328100326885

namespace A283833

/-- `A002260(∑[∑[char[comp[2^n+n]]]])` -/
def P10517189328100326885.Spec : Prop :=
  ∀ n, P10517189328100326885.a n = A283833 n

end A283833

/-! ## A283833.P15365244531969562108

`or(char[1], A002260(A006697(n)))`
-/

namespace A283833.P15365244531969562108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A002260 (A006697 n).toNat)

end

end A283833.P15365244531969562108

namespace A283833

/-- `or(char[1], A002260(A006697(n)))` -/
def P15365244531969562108.Spec : Prop :=
  ∀ n, P15365244531969562108.a n = A283833 n

end A283833

/-! ## A283833.P14205388821880758029

`abs(1-A002260(A006697(abs(2*n-n))))+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A283833

/-- `abs(1-A002260(A006697(abs(2*n-n))))+1` -/
def P14205388821880758029.Spec : Prop :=
  ∀ n, P14205388821880758029.a n = A283833 n

theorem P14205388821880758029.correct : P14205388821880758029.Spec := by
  intro n
  simp only [A283833]

end A283833

/-! ## A283833.P4932825008388861942

`A002260(A006697(n))%A002148(n)`
-/

namespace A283833.P4932825008388861942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (A006697 n).toNat) (A002148 n)

end

end A283833.P4932825008388861942

namespace A283833

/-- `A002260(A006697(n))%A002148(n)` -/
def P4932825008388861942.Spec : Prop :=
  ∀ n, P4932825008388861942.a n = A283833 n

end A283833

/-! ## A283833.P16099699422147332320

`lcm(A002260(A006697(n)), A033999(n))`
-/

namespace A283833.P16099699422147332320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002260 (A006697 n).toNat) (A033999 n)

end

end A283833.P16099699422147332320

namespace A283833

/-- `lcm(A002260(A006697(n)), A033999(n))` -/
def P16099699422147332320.Spec : Prop :=
  ∀ n, (P16099699422147332320.a n : ℤ) = A283833 n

end A283833

/-! ## A283833.P3393577931216466289

`A002260(A006697(n))+A000007(n+2)`
-/

namespace A283833.P3393577931216466289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A006697 n).toNat + A000007 (n + 2)

end

end A283833.P3393577931216466289

namespace A283833

/-- `A002260(A006697(n))+A000007(n+2)` -/
def P3393577931216466289.Spec : Prop :=
  ∀ n, P3393577931216466289.a n = A283833 n

end A283833

/-! ## A283833.P4230709168727765295

`A106400(n)^4*A002260(A006697(n))`
-/

namespace A283833.P4230709168727765295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n ^ 4 * A002260 (A006697 n).toNat

end

end A283833.P4230709168727765295

namespace A283833

/-- `A106400(n)^4*A002260(A006697(n))` -/
def P4230709168727765295.Spec : Prop :=
  ∀ n, P4230709168727765295.a n = A283833 n

end A283833

/-! ## A283833.P3429409492656731279

`A014963(6*(n+1))*A002260(A006697(n))`
-/

namespace A283833.P3429409492656731279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A002260 (A006697 n).toNat

end

end A283833.P3429409492656731279

namespace A283833

/-- `A014963(6*(n+1))*A002260(A006697(n))` -/
def P3429409492656731279.Spec : Prop :=
  ∀ n, P3429409492656731279.a n = A283833 n

end A283833

/-! ## A283833.P1858799463890244982

`A002260(A006697(n))+floor(A001221(n+1)/4)`
-/

namespace A283833.P1858799463890244982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A006697 n).toNat + ⌊(A001221 (n + 1) : ℚ) / 4⌋

end

end A283833.P1858799463890244982

namespace A283833

/-- `A002260(A006697(n))+floor(A001221(n+1)/4)` -/
def P1858799463890244982.Spec : Prop :=
  ∀ n, P1858799463890244982.a n = A283833 n

end A283833

/-! ## A283833.P11322486927492722984

`A002260(A006697(n))/2*A020639(A016825(n))`
-/

namespace A283833.P11322486927492722984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (A006697 n).toNat : ℚ) / 2 * (A020639 (A016825 n).toNat : ℚ)

end

end A283833.P11322486927492722984

namespace A283833

/-- `A002260(A006697(n))/2*A020639(A016825(n))` -/
def P11322486927492722984.Spec : Prop :=
  ∀ n, P11322486927492722984.a n = (A283833 n : ℚ)

end A283833

/-! ## A283833.P14958508313041639968

`abs(A140756(∑[A103354(n+1)]))`
-/

namespace A283833.P14958508313041639968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A283833.P14958508313041639968

namespace A283833

/-- `abs(A140756(∑[A103354(n+1)]))` -/
def P14958508313041639968.Spec : Prop :=
  ∀ n, P14958508313041639968.a n = A283833 n

end A283833

/-! ## A283833.P4226918513765905740

`A000720(A037126(∑[A103354(n+1)]))`
-/

namespace A283833.P4226918513765905740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A037126 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A283833.P4226918513765905740

namespace A283833

/-- `A000720(A037126(∑[A103354(n+1)]))` -/
def P4226918513765905740.Spec : Prop :=
  ∀ n, P4226918513765905740.a n = A283833 n

end A283833

/-! ## A283833.P15461197504419965708

`A004736(A038722(∑[A103354(n+1)]))`
-/

namespace A283833.P15461197504419965708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A283833.P15461197504419965708

namespace A283833

/-- `A004736(A038722(∑[A103354(n+1)]))` -/
def P15461197504419965708.Spec : Prop :=
  ∀ n, P15461197504419965708.a n = A283833 n

end A283833

/-! ## A283833.P18433009239326624948

`gcd(-A159075(n), A140756(∑[A103354(n+1)]))`
-/

namespace A283833.P18433009239326624948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103354 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A159075 n) (A140756 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A283833.P18433009239326624948

namespace A283833

/-- `gcd(-A159075(n), A140756(∑[A103354(n+1)]))` -/
def P18433009239326624948.Spec : Prop :=
  ∀ n, (P18433009239326624948.a n : ℤ) = A283833 n

end A283833

/-! ## A283833.P12069746256341865943

`A008619(A053186(∑[A088948(n+1)]))`
-/

namespace A283833.P12069746256341865943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A053186 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A283833.P12069746256341865943

namespace A283833

/-- `A008619(A053186(∑[A088948(n+1)]))` -/
def P12069746256341865943.Spec : Prop :=
  ∀ n, P12069746256341865943.a n = A283833 n

end A283833

/-!
# A283834: Number of length-n binary vectors beginning with 0, ending with 1, and avoiding 4 consecutive 0's and 4 consecutive 1's.

The programs for A283834, the canonical program `A283834.P6566756163978164435` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283834 has offset 0).

The definition of A283834 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283834.P6566756163978164435

`ogf(1/(1-x^2-2x^3-3x^4-2x^5-x^6))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A283834

/-- `ogf(1/(1-x^2-2x^3-3x^4-2x^5-x^6))` -/
def P6566756163978164435.Spec : Prop :=
  ∀ n, P6566756163978164435.a n = A283834 n

theorem P6566756163978164435.correct : P6566756163978164435.Spec := by
  intro n
  simp only [A283834]

end A283834

/-! ## A283834.P17938430144001037038

`A075111(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A283834.P17938430144001037038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A075111 (n + 1) - a (n - 1)

end

end A283834.P17938430144001037038

namespace A283834

/-- `A075111(n+1)-a(n-1)` -/
def P17938430144001037038.Spec : Prop :=
  ∀ n, P17938430144001037038.a n = A283834 n

end A283834

/-! ## A283834.P17038275671478341297

`A108351(n)-A110655(n)`
-/

namespace A283834.P17038275671478341297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108351 n - A110655 n

end

end A283834.P17038275671478341297

namespace A283834

/-- `A108351(n)-A110655(n)` -/
def P17038275671478341297.Spec : Prop :=
  ∀ n, P17038275671478341297.a n = A283834 n

end A283834

/-! ## A283834.P18182769408958531025

`floor((A089068(n)+A196563(val(n+1, 2))+1)/2)`
-/

namespace A283834.P18182769408958531025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A089068 n + (A196563 (SequenceMachineLib.valuation (n + 1) 2) + 1) : ℚ) / 2⌋

end

end A283834.P18182769408958531025

namespace A283834

/-- `floor((A089068(n)+A196563(val(n+1, 2))+1)/2)` -/
def P18182769408958531025.Spec : Prop :=
  ∀ n, P18182769408958531025.a n = A283834 n

end A283834

/-! ## A283834.P17165072788538699085

`Δ[ceil(A008937(n)/2)]`
-/

namespace A283834.P17165072788538699085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008937 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283834.P17165072788538699085

namespace A283834

/-- `Δ[ceil(A008937(n)/2)]` -/
def P17165072788538699085.Spec : Prop :=
  ∀ n, P17165072788538699085.a n = A283834 n

end A283834

/-! ## A283834.P8041072564339399587

`Δ[round(A008937(n)/A040000(n))]`
-/

namespace A283834.P8041072564339399587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008937 n : ℚ) / (A040000 n : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283834.P8041072564339399587

namespace A283834

/-- `Δ[round(A008937(n)/A040000(n))]` -/
def P8041072564339399587.Spec : Prop :=
  ∀ n, P8041072564339399587.a n = A283834 n

end A283834

/-! ## A283834.P16006304311319009258

`Δ[floor(A288465(n)/4)]`
-/

namespace A283834.P16006304311319009258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A288465 n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283834.P16006304311319009258

namespace A283834

/-- `Δ[floor(A288465(n)/4)]` -/
def P16006304311319009258.Spec : Prop :=
  ∀ n, P16006304311319009258.a n = A283834 n

end A283834

/-! ## A283834.P8995951308392084424

`Δ[round(A000213(n+2)/4)]`
-/

namespace A283834.P8995951308392084424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000213 (n + 2) : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283834.P8995951308392084424

namespace A283834

/-- `Δ[round(A000213(n+2)/4)]` -/
def P8995951308392084424.Spec : Prop :=
  ∀ n, P8995951308392084424.a n = A283834 n

end A283834

/-! ## A283834.P16493433092183633118

`Δ[ceil((2*(∑[A000073(n+1)]+1)+1)/4)]`
-/

namespace A283834.P16493433092183633118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * (∑ j ∈ Finset.range (n + 1), f2 j + 1) + 1 : ℤ) : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283834.P16493433092183633118

namespace A283834

/-- `Δ[ceil((2*(∑[A000073(n+1)]+1)+1)/4)]` -/
def P16493433092183633118.Spec : Prop :=
  ∀ n, P16493433092183633118.a n = A283834 n

end A283834

/-! ## A283834.P17487878035694587838

`Δ[round(A008937(n)/A178815(n+1))]`
-/

namespace A283834.P17487878035694587838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008937 n : ℚ) / (A178815 (n + 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283834.P17487878035694587838

namespace A283834

/-- `Δ[round(A008937(n)/A178815(n+1))]` -/
def P17487878035694587838.Spec : Prop :=
  ∀ n, P17487878035694587838.a n = A283834 n

end A283834

/-!
# A283835: Number of length-n binary vectors beginning with 0, ending with 1, and avoiding 5 consecutive 0's and 5 consecutive 1's.

The programs for A283835, the canonical program `A283835.P3275158727238866991` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283835 has offset 0).

The definition of A283835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283835.P3275158727238866991

`ogf(1/(1-x^2-2x^3-3x^4-4x^5-3x^6-2x^7-x^8))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A283835

/-- `ogf(1/(1-x^2-2x^3-3x^4-4x^5-3x^6-2x^7-x^8))` -/
def P3275158727238866991.Spec : Prop :=
  ∀ n, P3275158727238866991.a n = A283835 n

theorem P3275158727238866991.correct : P3275158727238866991.Spec := by
  intro n
  simp only [A283835]

end A283835

/-! ## A283835.P9859982128392497524

`Δ[round(A000288(n+3)/6)]`
-/

namespace A283835.P9859982128392497524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000288 (n + 3) : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283835.P9859982128392497524

namespace A283835

/-- `Δ[round(A000288(n+3)/6)]` -/
def P9859982128392497524.Spec : Prop :=
  ∀ n, P9859982128392497524.a n = A283835 n

end A283835

/-! ## A283835.P2205130876074722578

`A123108(A187950(n+1)+A000078(n+3))`
-/

namespace A283835.P2205130876074722578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A187950 (n + 1) + A000078 (n + 3)).toNat

end

end A283835.P2205130876074722578

namespace A283835

/-- `A123108(A187950(n+1)+A000078(n+3))` -/
def P2205130876074722578.Spec : Prop :=
  ∀ n, P2205130876074722578.a n = A283835 n

end A283835

/-! ## A283835.P465139973326623827

`Δ[A008619((A000288(n+3)+2)/3)]`
-/

namespace A283835.P465139973326623827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A000288 (n + 3) + 2 : ℚ) / 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283835.P465139973326623827

namespace A283835

/-- `Δ[A008619((A000288(n+3)+2)/3)]` -/
def P465139973326623827.Spec : Prop :=
  ∀ n, P465139973326623827.a n = A283835 n

end A283835

/-! ## A283835.P11748322326088647687

`Δ[A008615(A000288(n+3))]`
-/

namespace A283835.P11748322326088647687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A000288 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283835.P11748322326088647687

namespace A283835

/-- `Δ[A008615(A000288(n+3))]` -/
def P11748322326088647687.Spec : Prop :=
  ∀ n, P11748322326088647687.a n = A283835 n

end A283835

/-!
# A283836: Number of length-n binary vectors beginning with 0, ending with 1, and avoiding 6 consecutive 0's and 6 consecutive 1's.

The programs for A283836, the canonical program `A283836.P2333235315371612861` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283836 has offset 0).

The definition of A283836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283836.P2333235315371612861

`ogf(1/(1-x^2-2x^3-3x^4-4x^5-5x^6-4x^7-3x^8-2x^9-x^10))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A283836

/-- `ogf(1/(1-x^2-2x^3-3x^4-4x^5-5x^6-4x^7-3x^8-2x^9-x^10))` -/
def P2333235315371612861.Spec : Prop :=
  ∀ n, P2333235315371612861.a n = A283836 n

theorem P2333235315371612861.correct : P2333235315371612861.Spec := by
  intro n
  simp only [A283836]

end A283836

/-! ## A283836.P12151570932681974270

`Δ[ceil(A001949(n+4)/2)]`
-/

namespace A283836.P12151570932681974270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001949 (n + 4) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283836.P12151570932681974270

namespace A283836

/-- `Δ[ceil(A001949(n+4)/2)]` -/
def P12151570932681974270.Spec : Prop :=
  ∀ n, P12151570932681974270.a n = A283836 n

end A283836

/-! ## A283836.P14382888825325389075

`Δ[floor((∑[A001591(n+3)]+1)/2)]`
-/

namespace A283836.P14382888825325389075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℤ) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283836.P14382888825325389075

namespace A283836

/-- `Δ[floor((∑[A001591(n+3)]+1)/2)]` -/
def P14382888825325389075.Spec : Prop :=
  ∀ n, P14382888825325389075.a n = A283836 n

end A283836

/-! ## A283836.P15766060895666260738

`A110654(Δ[A001949(n+4)]-and(1, n))`
-/

namespace A283836.P15766060895666260738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001949 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (n + 1) - f1 n - (Nat.land 1 n : ℤ)).toNat

end

end A283836.P15766060895666260738

namespace A283836

/-- `A110654(Δ[A001949(n+4)]-and(1, n))` -/
def P15766060895666260738.Spec : Prop :=
  ∀ n, P15766060895666260738.a n = A283836 n

end A283836

/-! ## A283836.P6297908686498347990

`A004526(Δ[A001949(n+4)]+and(1, n+1))`
-/

namespace A283836.P6297908686498347990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001949 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n + (Nat.land 1 (n + 1) : ℤ)).toNat

end

end A283836.P6297908686498347990

namespace A283836

/-- `A004526(Δ[A001949(n+4)]+and(1, n+1))` -/
def P6297908686498347990.Spec : Prop :=
  ∀ n, P6297908686498347990.a n = A283836 n

end A283836

/-!
# A283837: Number of length-n binary vectors beginning with 0, ending with 1, and avoiding 7 consecutive 0's and 7 consecutive 1's.

The programs for A283837, the canonical program `A283837.P4683050274417914431` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283837 has offset 0).

The definition of A283837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283837.P4683050274417914431

`ogf(1/(1-x^2-2x^3-3x^4-4x^5-5x^6-6x^7-5x^8-4x^9-3x^10-2x^11-x^12))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A283837

/-- `ogf(1/(1-x^2-2x^3-3x^4-4x^5-5x^6-6x^7-5x^8-4x^9-3x^10-2x^11-x^12))` -/
def P4683050274417914431.Spec : Prop :=
  ∀ n, P4683050274417914431.a n = A283837 n

theorem P4683050274417914431.correct : P4683050274417914431.Spec := by
  intro n
  simp only [A283837]

end A283837

/-! ## A283837.P10782895946493399609

`A034008(n)-A067168(A000032(n))`
-/

namespace A283837.P10782895946493399609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n - A067168 ((A000032 n).toNat + 10)

end

end A283837.P10782895946493399609

namespace A283837

/-- `A034008(n)-A067168(A000032(n))` -/
def P10782895946493399609.Spec : Prop :=
  ∀ n, P10782895946493399609.a n = A283837 n

end A283837

/-! ## A283837.P10595463849439285301

`A034008(n)-A051659(A310458(n))`
-/

namespace A283837.P10595463849439285301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n - A051659 (A310458 n).toNat

end

end A283837.P10595463849439285301

namespace A283837

/-- `A034008(n)-A051659(A310458(n))` -/
def P10595463849439285301.Spec : Prop :=
  ∀ n, P10595463849439285301.a n = A283837 n

end A283837

/-! ## A283837.P18364106408601359453

`Δ[A166444(n)]-A051659(A310458(n))`
-/

namespace A283837.P18364106408601359453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A051659 (A310458 n).toNat

end

end A283837.P18364106408601359453

namespace A283837

/-- `Δ[A166444(n)]-A051659(A310458(n))` -/
def P18364106408601359453.Spec : Prop :=
  ∀ n, P18364106408601359453.a n = A283837 n

end A283837

/-! ## A283837.P6689306693216229261

`A194629(n+1)-A010059(A000296(n))`
-/

namespace A283837.P6689306693216229261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194629 (n + 1) - A010059 (A000296 n).toNat

end

end A283837.P6689306693216229261

namespace A283837

/-- `A194629(n+1)-A010059(A000296(n))` -/
def P6689306693216229261.Spec : Prop :=
  ∀ n, P6689306693216229261.a n = A283837 n

end A283837

/-!
# A283839: Row sums of A283838.

The programs for A283839, there is no canonical definition to state claims against.
-/

/-! ## A283839.P17736939410069185717

`A358334(n+2)+A057428(A061130(n))`
-/

namespace A283839.P17736939410069185717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358334 (n + 2) + A057428 (A061130 n).toNat

end

end A283839.P17736939410069185717

/-! ## A283839.P7210157335878387055

`A358334(n+2)+A057428(A102469(n))`
-/

namespace A283839.P7210157335878387055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358334 (n + 2) + A057428 (A102469 n).toNat

end

end A283839.P7210157335878387055

/-! ## A283839.P13470201560463410192

`A358334(n+2)-A033630(A000244(n))`
-/

namespace A283839.P13470201560463410192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358334 (n + 2) - A033630 (A000244 n).toNat

end

end A283839.P13470201560463410192

/-! ## A283839.P6818935380846119936

`A358334(n+2)-A121420(A000096(n))`
-/

namespace A283839.P6818935380846119936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358334 (n + 2) - A121420 (A000096 n).toNat

end

end A283839.P6818935380846119936

/-! ## A283839.P17420484109852053705

`A358334(n+2)-A003415(A225403(n+1))`
-/

namespace A283839.P17420484109852053705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358334 (n + 2) - A003415 (A225403 (n + 1)).toNat

end

end A283839.P17420484109852053705

/-!
# A283842: Expansion of x^3*(2-3*x)/((1-x)^2*(1-2*x)*(1-5*x+5*x^2)).

The programs for A283842, the canonical program `A283842.P13853442280916338008` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283842 has offset 0).

The definition of A283842 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2x^3-3x^4)/(1-9x+30x^2-47x^3+35x^4-10x^5))` (program `A283842.P13853442280916338008`, by `A283842.P13853442280916338008.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A283842.P13853442280916338008

`ogf((2x^3-3x^4)/(1-9x+30x^2-47x^3+35x^4-10x^5))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A283842

/-- `ogf((2x^3-3x^4)/(1-9x+30x^2-47x^3+35x^4-10x^5))` -/
def P13853442280916338008.Spec : Prop :=
  ∀ n, P13853442280916338008.a n = A283842 n

theorem P13853442280916338008.correct : P13853442280916338008.Spec := by
  intro n
  simp only [A283842]

end A283842

/-! ## A283842.P10514628770414901418

`A111855(A032207(n))`
-/

namespace A283842.P10514628770414901418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111855 (A032207 (n + 11)).toNat

end

end A283842.P10514628770414901418

namespace A283842

/-- `A111855(A032207(n))` -/
def P10514628770414901418.Spec : Prop :=
  ∀ n, P10514628770414901418.a n = A283842 n

end A283842

/-! ## A283842.P17339427633879046077

`A111859(A172025(n))`
-/

namespace A283842.P17339427633879046077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111859 (A172025 n).toNat

end

end A283842.P17339427633879046077

namespace A283842

/-- `A111859(A172025(n))` -/
def P17339427633879046077.Spec : Prop :=
  ∀ n, P17339427633879046077.a n = A283842 n

end A283842

/-!
# A283843: a(n) = A063776(n) + 1.

The programs for A283843, the canonical program `A283843.P15067060620591103805` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283843 has offset 1).

The definition of A283843 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063776, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A283843.P15067060620591103805

`A063776(n+1)+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A283843

/-- `A063776(n+1)+1` -/
def P15067060620591103805.Spec : Prop :=
  ∀ n, P15067060620591103805.a n = A283843 (n + 1)

theorem P15067060620591103805.correct : P15067060620591103805.Spec := by
  intro n
  simp only [A283843, Nat.add_sub_cancel]

end A283843

/-! ## A283843.P14850009985865663977

`A082550(n+1)+2`
-/

namespace A283843.P14850009985865663977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082550 (n + 1) + 2

end

end A283843.P14850009985865663977

namespace A283843

/-- `A082550(n+1)+2` -/
def P14850009985865663977.Spec : Prop :=
  ∀ n, P14850009985865663977.a n = A283843 (n + 1)

theorem P14850009985865663977.correct : P14850009985865663977.Spec := by
  intro n
  simp only [A283843, Nat.add_sub_cancel, A283843.P14850009985865663977.a, A283843.P15067060620591103805.a, A063776, A063776.P17139330215910369702.a, A082550, A082550.P6841504247689330333.a, A053636, A053636.P10200428342403151043.f1, A053636.P10200428342403151043.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A283843

/-! ## A283843.P9708192556687535510

`2*Δ[A133670(n)]+1`
-/

namespace A283843.P9708192556687535510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) + 1

end

end A283843.P9708192556687535510

namespace A283843

/-- `2*Δ[A133670(n)]+1` -/
def P9708192556687535510.Spec : Prop :=
  ∀ n, P9708192556687535510.a n = A283843 (n + 1)

end A283843

/-! ## A283843.P39073598506380626

`2*A000016(n+1)+1`
-/

namespace A283843.P39073598506380626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000016 (n + 1) + 1

end

end A283843.P39073598506380626

namespace A283843

/-- `2*A000016(n+1)+1` -/
def P39073598506380626.Spec : Prop :=
  ∀ n, P39073598506380626.a n = A283843 (n + 1)

end A283843

/-! ## A283843.P764172902439973060

`2*A096010(n+1)-1`
-/

namespace A283843.P764172902439973060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096010 (n + 1) - 1

end

end A283843.P764172902439973060

namespace A283843

/-- `2*A096010(n+1)-1` -/
def P764172902439973060.Spec : Prop :=
  ∀ n, P764172902439973060.a n = A283843 (n + 1)

end A283843

/-! ## A283843.P7810559909713266987

`A096010(n+1)+A000016(n+1)`
-/

namespace A283843.P7810559909713266987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096010 (n + 1) + A000016 (n + 1)

end

end A283843.P7810559909713266987

namespace A283843

/-- `A096010(n+1)+A000016(n+1)` -/
def P7810559909713266987.Spec : Prop :=
  ∀ n, P7810559909713266987.a n = A283843 (n + 1)

end A283843

/-! ## A283843.P308804828823456806

`A096010(n+1)+A133670(n+1)-A133670(n)`
-/

namespace A283843.P308804828823456806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096010 (n + 1) + (A133670 (n + 1) - A133670 n)

end

end A283843.P308804828823456806

namespace A283843

/-- `A096010(n+1)+A133670(n+1)-A133670(n)` -/
def P308804828823456806.Spec : Prop :=
  ∀ n, P308804828823456806.a n = A283843 (n + 1)

end A283843

/-! ## A283843.P5070511963183099399

`A000048(n+1)+A096010(n+1)+A053734(n+1)`
-/

namespace A283843.P5070511963183099399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (n + 1) + (A096010 (n + 1) + A053734 (n + 1))

end

end A283843.P5070511963183099399

namespace A283843

/-- `A000048(n+1)+A096010(n+1)+A053734(n+1)` -/
def P5070511963183099399.Spec : Prop :=
  ∀ n, P5070511963183099399.a n = A283843 (n + 1)

end A283843

/-! ## A283843.P11264276648955433214

`A000031(n+1)+A096010(n+1)-A000013(n+1)`
-/

namespace A283843.P11264276648955433214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 1) + (A096010 (n + 1) - A000013 (n + 1))

end

end A283843.P11264276648955433214

namespace A283843

/-- `A000031(n+1)+A096010(n+1)-A000013(n+1)` -/
def P11264276648955433214.Spec : Prop :=
  ∀ n, P11264276648955433214.a n = A283843 (n + 1)

end A283843

/-! ## A283843.P1250565780754242621

`Δ[A327475(n)]+2`
-/

namespace A283843.P1250565780754242621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A283843.P1250565780754242621

namespace A283843

/-- `Δ[A327475(n)]+2` -/
def P1250565780754242621.Spec : Prop :=
  ∀ n, P1250565780754242621.a n = A283843 (n + 1)

end A283843

/-! ## A283843.P13827183096137812041

`A053636(n+1)/(n+1)+1`
-/

namespace A283843.P13827183096137812041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053636 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A283843.P13827183096137812041

namespace A283843

/-- `A053636(n+1)/(n+1)+1` -/
def P13827183096137812041.Spec : Prop :=
  ∀ n, P13827183096137812041.a n = (A283843 (n + 1) : ℚ)

end A283843

/-! ## A283843.P5818399066739648738

`2*A053633(∑[n])+1`
-/

namespace A283843.P5818399066739648738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053633 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A283843.P5818399066739648738

namespace A283843

/-- `2*A053633(∑[n])+1` -/
def P5818399066739648738.Spec : Prop :=
  ∀ n, P5818399066739648738.a n = A283843 (n + 1)

end A283843

/-! ## A283843.P13074481636367758522

`A000016(n+1)+A053633(∑[n])+1`
-/

namespace A283843.P13074481636367758522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 (n + 1) + (A053633 (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A283843.P13074481636367758522

namespace A283843

/-- `A000016(n+1)+A053633(∑[n])+1` -/
def P13074481636367758522.Spec : Prop :=
  ∀ n, P13074481636367758522.a n = A283843 (n + 1)

end A283843

/-! ## A283843.P2730575055843860473

`∑[A147980(n+1)]+2`
-/

namespace A283843.P2730575055843860473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A283843.P2730575055843860473

namespace A283843

/-- `∑[A147980(n+1)]+2` -/
def P2730575055843860473.Spec : Prop :=
  ∀ n, P2730575055843860473.a n = A283843 (n + 1)

end A283843

/-!
# A283844: a(n) = A063776(2*n) + 1.

The programs for A283844, the canonical program `A283844.P7909332745208675623` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283844 has offset 1).

The definition of A283844 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063776, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A283844.P7909332745208675623

`A063776(2*(n+1))+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A283844

/-- `A063776(2*(n+1))+1` -/
def P7909332745208675623.Spec : Prop :=
  ∀ n, P7909332745208675623.a n = A283844 (n + 1)

theorem P7909332745208675623.correct : P7909332745208675623.Spec := by
  intro n
  simp only [A283844, Nat.add_sub_cancel]

end A283844

/-! ## A283844.P16418047384171687257

`A283843(2*(n+1))`
-/

namespace A283844.P16418047384171687257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283843 (2 * (n + 1))

end

end A283844.P16418047384171687257

namespace A283844

/-- `A283843(2*(n+1))` -/
def P16418047384171687257.Spec : Prop :=
  ∀ n, P16418047384171687257.a n = A283844 (n + 1)

end A283844

/-! ## A283844.P12444785954519970403

`2*A300668(n+1)+1`
-/

namespace A283844.P12444785954519970403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A300668 (n + 1) + 1

end

end A283844.P12444785954519970403

namespace A283844

/-- `2*A300668(n+1)+1` -/
def P12444785954519970403.Spec : Prop :=
  ∀ n, P12444785954519970403.a n = A283844 (n + 1)

end A283844

/-! ## A283844.P3524819326216363843

`A082550(2*(n+1))+2`
-/

namespace A283844.P3524819326216363843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082550 (2 * (n + 1)) + 2

end

end A283844.P3524819326216363843

namespace A283844

/-- `A082550(2*(n+1))+2` -/
def P3524819326216363843.Spec : Prop :=
  ∀ n, P3524819326216363843.a n = A283844 (n + 1)

theorem P3524819326216363843.correct : P3524819326216363843.Spec := by
  intro n
  simp only [A283844, Nat.add_sub_cancel, A283844.P3524819326216363843.a, A283844.P7909332745208675623.a, A063776, A063776.P17139330215910369702.a, A082550, A082550.P6841504247689330333.a, A053636, A053636.P10200428342403151043.f1, A053636.P10200428342403151043.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A283844

/-! ## A283844.P13281776097091381539

`record[A283843(lcm(2, n+1)-n)]`
-/

namespace A283844.P13281776097091381539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283843 (Nat.lcm 2 (n + 1) - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283844.P13281776097091381539

namespace A283844

/-- `record[A283843(lcm(2, n+1)-n)]` -/
def P13281776097091381539.Spec : Prop :=
  ∀ n, P13281776097091381539.a n = A283844 (n + 1)

end A283844

/-! ## A283844.P1337700184787538139

`2*A000016(2*(n+1))+1`
-/

namespace A283844.P1337700184787538139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000016 (2 * (n + 1)) + 1

end

end A283844.P1337700184787538139

namespace A283844

/-- `2*A000016(2*(n+1))+1` -/
def P1337700184787538139.Spec : Prop :=
  ∀ n, P1337700184787538139.a n = A283844 (n + 1)

end A283844

/-! ## A283844.P11007958991162089229

`2*A096010(2*(n+1))-1`
-/

namespace A283844.P11007958991162089229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096010 (2 * (n + 1)) - 1

end

end A283844.P11007958991162089229

namespace A283844

/-- `2*A096010(2*(n+1))-1` -/
def P11007958991162089229.Spec : Prop :=
  ∀ n, P11007958991162089229.a n = A283844 (n + 1)

end A283844

/-! ## A283844.P2884625092310977029

`A008965(2*(n+1))+2-A000013(n+1)`
-/

namespace A283844.P2884625092310977029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (2 * (n + 1)) + (2 - A000013 (n + 1))

end

end A283844.P2884625092310977029

namespace A283844

/-- `A008965(2*(n+1))+2-A000013(n+1)` -/
def P2884625092310977029.Spec : Prop :=
  ∀ n, P2884625092310977029.a n = A283844 (n + 1)

end A283844

/-! ## A283844.P1751116368556480465

`A057428(n+1)+2*A096010(2*(n+1))`
-/

namespace A283844.P1751116368556480465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + 2 * A096010 (2 * (n + 1))

end

end A283844.P1751116368556480465

namespace A283844

/-- `A057428(n+1)+2*A096010(2*(n+1))` -/
def P1751116368556480465.Spec : Prop :=
  ∀ n, P1751116368556480465.a n = A283844 (n + 1)

end A283844

/-! ## A283844.P16603690446434098997

`A114702(2*(n+1))+A096010(2*(n+1))`
-/

namespace A283844.P16603690446434098997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114702 (2 * (n + 1)) + A096010 (2 * (n + 1))

end

end A283844.P16603690446434098997

namespace A283844

/-- `A114702(2*(n+1))+A096010(2*(n+1))` -/
def P16603690446434098997.Spec : Prop :=
  ∀ n, P16603690446434098997.a n = A283844 (n + 1)

end A283844

/-! ## A283844.P4801947653494441099

`A051293(2*(n+1))+2-A051293(2*n+1)`
-/

namespace A283844.P4801947653494441099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051293 (2 * (n + 1)) + (2 - A051293 (2 * n + 1))

end

end A283844.P4801947653494441099

namespace A283844

/-- `A051293(2*(n+1))+2-A051293(2*n+1)` -/
def P4801947653494441099.Spec : Prop :=
  ∀ n, P4801947653494441099.a n = A283844 (n + 1)

end A283844

/-! ## A283844.P3909265147563051249

`record[2*A300628(n)+1]`
-/

namespace A283844.P3909265147563051249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A300628 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283844.P3909265147563051249

namespace A283844

/-- `record[2*A300628(n)+1]` -/
def P3909265147563051249.Spec : Prop :=
  ∀ n, P3909265147563051249.a n = A283844 (n + 1)

end A283844

/-!
# A283845: Square array read by antidiagonals: T(1,1) = T(1,2) = T(2,1) = T(2,2) = 1; thereafter T(m,n) = min {T(m,n-2) + T(m,n-1), T(m-2,n) + T(m-1,n), T(m-2,n-2) + T(m-1,n-1)}.

The programs for A283845, the canonical program `A283845.P12175913799182392741` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283845 has offset 1).

The definition of A283845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283845.P17453437286033275633

`A000045(A003984(n)+1)`
-/

namespace A283845.P17453437286033275633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003984 n + 1).toNat

end

end A283845.P17453437286033275633

namespace A283845

/-- `A000045(A003984(n)+1)` -/
def P17453437286033275633.Spec : Prop :=
  ∀ n, P17453437286033275633.a n = A283845 (n + 1)

end A283845

/-! ## A283845.P16279992846293477987

`A000045(A051125(n+1))`
-/

namespace A283845.P16279992846293477987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A051125 (n + 1)).toNat

end

end A283845.P16279992846293477987

namespace A283845

/-- `A000045(A051125(n+1))` -/
def P16279992846293477987.Spec : Prop :=
  ∀ n, P16279992846293477987.a n = A283845 (n + 1)

end A283845

/-! ## A283845.P12175913799182392741

`A123231(A204022(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A283845

/-- `A123231(A204022(n+1))` -/
def P12175913799182392741.Spec : Prop :=
  ∀ n, P12175913799182392741.a n = A283845 (n + 1)

theorem P12175913799182392741.correct : P12175913799182392741.Spec := by
  intro n
  simp only [A283845, Nat.add_sub_cancel]

end A283845

/-! ## A283845.P4979073482317031321

`A000045(ceil(sqrt(A375510(n))))`
-/

namespace A283845.P4979073482317031321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈Real.sqrt (A375510 n : ℝ)⌉.toNat

end

end A283845.P4979073482317031321

namespace A283845

/-- `A000045(ceil(sqrt(A375510(n))))` -/
def P4979073482317031321.Spec : Prop :=
  ∀ n, P4979073482317031321.a n = A283845 (n + 1)

end A283845

/-! ## A283845.P5975074456575512804

`A105800(A204022(n+1)+1)`
-/

namespace A283845.P5975074456575512804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105800 (A204022 (n + 1) + 1).toNat

end

end A283845.P5975074456575512804

namespace A283845

/-- `A105800(A204022(n+1)+1)` -/
def P5975074456575512804.Spec : Prop :=
  ∀ n, P5975074456575512804.a n = A283845 (n + 1)

end A283845

/-! ## A283845.P4431879744966103808

`A000045(ceil(sqrt(A213921(n+1))))`
-/

namespace A283845.P4431879744966103808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈Real.sqrt (A213921 (n + 1) : ℝ)⌉.toNat

end

end A283845.P4431879744966103808

namespace A283845

/-- `A000045(ceil(sqrt(A213921(n+1))))` -/
def P4431879744966103808.Spec : Prop :=
  ∀ n, P4431879744966103808.a n = A283845 (n + 1)

end A283845

/-! ## A283845.P15162762862442369280

`A000045(ceil(sqrt(A213922(n+1))))`
-/

namespace A283845.P15162762862442369280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈Real.sqrt (A213922 (n + 1) : ℝ)⌉.toNat

end

end A283845.P15162762862442369280

namespace A283845

/-- `A000045(ceil(sqrt(A213922(n+1))))` -/
def P15162762862442369280.Spec : Prop :=
  ∀ n, P15162762862442369280.a n = A283845 (n + 1)

end A283845

/-! ## A283845.P1826977522899336261

`A000045(ceil(sqrt(A213928(n+1))))`
-/

namespace A283845.P1826977522899336261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈Real.sqrt (A213928 (n + 1) : ℝ)⌉.toNat

end

end A283845.P1826977522899336261

namespace A283845

/-- `A000045(ceil(sqrt(A213928(n+1))))` -/
def P1826977522899336261.Spec : Prop :=
  ∀ n, P1826977522899336261.a n = A283845 (n + 1)

end A283845

/-! ## A283845.P7681446355123316043

`A000045(A003057(n+2)-A003983(n+1))`
-/

namespace A283845.P7681446355123316043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003057 (n + 2) - A003983 (n + 1)).toNat

end

end A283845.P7681446355123316043

namespace A283845

/-- `A000045(A003057(n+2)-A003983(n+1))` -/
def P7681446355123316043.Spec : Prop :=
  ∀ n, P7681446355123316043.a n = A283845 (n + 1)

end A283845

/-! ## A283845.P18018085982920322557

`A000045(A003991(n+1)/A003983(n+1))`
-/

namespace A283845.P18018085982920322557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A003991 (n + 1) : ℚ) / (A003983 (n + 1) : ℚ))).toNat

end

end A283845.P18018085982920322557

namespace A283845

/-- `A000045(A003991(n+1)/A003983(n+1))` -/
def P18018085982920322557.Spec : Prop :=
  ∀ n, P18018085982920322557.a n = A283845 (n + 1)

end A283845

/-! ## A283845.P16723700080736366454

`A000045(A003059(A060734(n+1)))`
-/

namespace A283845.P16723700080736366454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003059 (A060734 (n + 1)).toNat).toNat

end

end A283845.P16723700080736366454

namespace A283845

/-- `A000045(A003059(A060734(n+1)))` -/
def P16723700080736366454.Spec : Prop :=
  ∀ n, P16723700080736366454.a n = A283845 (n + 1)

end A283845

/-! ## A283845.P11406735283340368758

`A000045(A003059(A081344(n+1)))`
-/

namespace A283845.P11406735283340368758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003059 (A081344 (n + 1)).toNat).toNat

end

end A283845.P11406735283340368758

namespace A283845

/-- `A000045(A003059(A081344(n+1)))` -/
def P11406735283340368758.Spec : Prop :=
  ∀ n, P11406735283340368758.a n = A283845 (n + 1)

end A283845

/-! ## A283845.P4172148207295006772

`A054494(A058071(n))`
-/

namespace A283845.P4172148207295006772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054494 (A058071 n).toNat

end

end A283845.P4172148207295006772

namespace A283845

/-- `A054494(A058071(n))` -/
def P4172148207295006772.Spec : Prop :=
  ∀ n, P4172148207295006772.a n = A283845 (n + 1)

end A283845

/-! ## A283845.P12633181452105985804

`A000045(A003313(A271709(n)))`
-/

namespace A283845.P12633181452105985804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003313 (A271709 n).toNat).toNat

end

end A283845.P12633181452105985804

namespace A283845

/-- `A000045(A003313(A271709(n)))` -/
def P12633181452105985804.Spec : Prop :=
  ∀ n, P12633181452105985804.a n = A283845 (n + 1)

end A283845

/-! ## A283845.P17510164650538457228

`A124230(A131816(n))`
-/

namespace A283845.P17510164650538457228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124230 (A131816 n).toNat

end

end A283845.P17510164650538457228

namespace A283845

/-- `A124230(A131816(n))` -/
def P17510164650538457228.Spec : Prop :=
  ∀ n, P17510164650538457228.a n = A283845 (n + 1)

end A283845

/-!
# A283846: Number of n-gonal inositol homologs with 2 kinds of achiral proligands.

The programs for A283846, there is no canonical definition to state claims against.
-/

/-! ## A283846.P15930154933883351264

`A123046(n+1)+2^n`
-/

namespace A283846.P15930154933883351264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123046 (n + 1) + (2 ^ n : ℤ)

end

end A283846.P15930154933883351264

/-! ## A283846.P2001607578077183117

`A034917(n+1)+A002024(A119033(n+1))`
-/

namespace A283846.P2001607578077183117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034917 (n + 1) + A002024 (A119033 (n + 1)).toNat

end

end A283846.P2001607578077183117

/-!
# A283847: Number of n-gonal inositol homologs with 2 kinds of achiral proligands.

The programs for A283847, the canonical program `A283847.P7791407435432316522` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283847 has offset 3).

The definition of A283847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283847.P5744926420999839759

`2*A256216(2*(n+3))`
-/

namespace A283847.P5744926420999839759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256216 (2 * (n + 3))

end

end A283847.P5744926420999839759

namespace A283847

/-- `2*A256216(2*(n+3))` -/
def P5744926420999839759.Spec : Prop :=
  ∀ n, P5744926420999839759.a n = A283847 (n + 3)

end A283847

/-! ## A283847.P7791407435432316522

`A300668(n+3)-2^(n+2)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A283847

/-- `A300668(n+3)-2^(n+2)` -/
def P7791407435432316522.Spec : Prop :=
  ∀ n, P7791407435432316522.a n = A283847 (n + 3)

theorem P7791407435432316522.correct : P7791407435432316522.Spec := by
  intro n
  simp only [A283847, Nat.add_sub_cancel]

end A283847

/-! ## A283847.P2838008833775801325

`A123045(n+3)-A283846(n+3)`
-/

namespace A283847.P2838008833775801325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123045 (n + 3) - A283846 (n + 3)

end

end A283847.P2838008833775801325

namespace A283847

/-- `A123045(n+3)-A283846(n+3)` -/
def P2838008833775801325.Spec : Prop :=
  ∀ n, P2838008833775801325.a n = A283847 (n + 3)

end A283847

/-! ## A283847.P18280541570304386853

`A283846(n+3)-A283848(n+3)`
-/

namespace A283847.P18280541570304386853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283846 (n + 3) - A283848 (n + 3)

end

end A283847.P18280541570304386853

namespace A283847

/-- `A283846(n+3)-A283848(n+3)` -/
def P18280541570304386853.Spec : Prop :=
  ∀ n, P18280541570304386853.a n = A283847 (n + 3)

end A283847

/-! ## A283847.P17697854115595871880

`A000016(2*(n+3))-A000079(n+2)`
-/

namespace A283847.P17697854115595871880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 (2 * (n + 3)) - A000079 (n + 2)

end

end A283847.P17697854115595871880

namespace A283847

/-- `A000016(2*(n+3))-A000079(n+2)` -/
def P17697854115595871880.Spec : Prop :=
  ∀ n, P17697854115595871880.a n = A283847 (n + 3)

theorem P17697854115595871880.correct : P17697854115595871880.Spec := by
  intro n
  simp only [A283847, Nat.add_sub_cancel, A283847.P17697854115595871880.a, A283847.P7791407435432316522.a, A000016, A000016.P8500875009608658723.a, A000079, A000079.P10855139691139572931.a, A300668, A300668.P3762773084760890773.a, A011782, A011782.P7461078519819856082.a, A327477, A327477.P17478202587199191785.f1, A327477.P17478202587199191785.a, A327471, A327471.P11969612927539878657.a, A000051, A000051.P14067217022188782580.a, A133670, A133670.P186027561368392954.f1, A133670.P186027561368392954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A283847

/-! ## A283847.P10364774554849859118

`A000013(2*(n+3))-(A000079(n+2)+A000013(n+3))`
-/

namespace A283847.P10364774554849859118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 (2 * (n + 3)) - (A000079 (n + 2) + A000013 (n + 3))

end

end A283847.P10364774554849859118

namespace A283847

/-- `A000013(2*(n+3))-(A000079(n+2)+A000013(n+3))` -/
def P10364774554849859118.Spec : Prop :=
  ∀ n, P10364774554849859118.a n = A283847 (n + 3)

end A283847

/-! ## A283847.P14977957557850337622

`A000013(2*(n+3))-(A164090(2*n+3)+A000013(n+3))`
-/

namespace A283847.P14977957557850337622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 (2 * (n + 3)) - (A164090 (2 * n + 3) + A000013 (n + 3))

end

end A283847.P14977957557850337622

namespace A283847

/-- `A000013(2*(n+3))-(A164090(2*n+3)+A000013(n+3))` -/
def P14977957557850337622.Spec : Prop :=
  ∀ n, P14977957557850337622.a n = A283847 (n + 3)

end A283847

/-!
# A283848: Number of n-gonal inositol homologs with 2 kinds of achiral proligands.

The programs for A283848, there is no canonical definition to state claims against.
-/

/-! ## A283848.P16441517968095012951

`A283846(n+3)-A283847(n+3)`
-/

namespace A283848.P16441517968095012951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283846 (n + 3) - A283847 (n + 3)

end

end A283848.P16441517968095012951

/-! ## A283848.P5644692954896111727

`A283846(n+3)-2*A256216(2*(n+3))`
-/

namespace A283848.P5644692954896111727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283846 (n + 3) - 2 * A256216 (2 * (n + 3))

end

end A283848.P5644692954896111727

/-! ## A283848.P11163106696753348734

`A283846(n+3)+A283846(n+3)-A123045(n+3)`
-/

namespace A283848.P11163106696753348734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283846 (n + 3) + (A283846 (n + 3) - A123045 (n + 3))

end

end A283848.P11163106696753348734

/-! ## A283848.P2321279978805495028

`A123045(n+3)-A283847(n+3)-A283847(n+3)`
-/

namespace A283848.P2321279978805495028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123045 (n + 3) - A283847 (n + 3) - A283847 (n + 3)

end

end A283848.P2321279978805495028

/-! ## A283848.P4472088445831282341

`A283846(n+3)-(A000016(2*(n+3))-A000079(n+2))`
-/

namespace A283848.P4472088445831282341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283846 (n + 3) - (A000016 (2 * (n + 3)) - A000079 (n + 2))

end

end A283848.P4472088445831282341

/-! ## A283848.P6243305745219524259

`A283846(n+3)-(A000013(2*(n+3))-(A164090(2*n+3)+A000013(n+3)))`
-/

namespace A283848.P6243305745219524259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283846 (n + 3) - (A000013 (2 * (n + 3)) - (A164090 (2 * n + 3) + A000013 (n + 3)))

end

end A283848.P6243305745219524259

/-!
# A283849: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 734", based on the 5-celled von Neumann neighborhood.

The programs for A283849, there is no canonical definition to state claims against.
-/

/-! ## A283849.P1296589172102411565

`A007088(A283864(n))`
-/

namespace A283849.P1296589172102411565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283864 n).toNat

end

end A283849.P1296589172102411565

/-! ## A283849.P5262492986295908921

`A305989(A283865(n))`
-/

namespace A283849.P5262492986295908921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283865 n).toNat

end

end A283849.P5262492986295908921

/-! ## A283849.P6865770295199713150

`A185544(2*A283864(n))`
-/

namespace A283849.P6865770295199713150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283864 n).toNat

end

end A283849.P6865770295199713150

/-! ## A283849.P16257924095174059433

`A185544(lcm(2, A283864(n)))`
-/

namespace A283849.P16257924095174059433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283864 n))

end

end A283849.P16257924095174059433

/-! ## A283849.P3989383089926456928

`A185544(2*A283606(n))-A261424(A305989(n))`
-/

namespace A283849.P3989383089926456928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283606 n).toNat - A261424 (A305989 n).toNat

end

end A283849.P3989383089926456928

/-!
# A283850: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 734", based on the 5-celled von Neumann neighborhood.

The programs for A283850, there is no canonical definition to state claims against.
-/

/-! ## A283850.P8499499102423660698

`A007088(A283865(n))`
-/

namespace A283850.P8499499102423660698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283865 n).toNat

end

end A283850.P8499499102423660698

/-! ## A283850.P9598995609709312729

`A305989(A283864(n))`
-/

namespace A283850.P9598995609709312729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283864 n).toNat

end

end A283850.P9598995609709312729

/-! ## A283850.P14020657812024663960

`A185544(2*A283865(n))`
-/

namespace A283850.P14020657812024663960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283865 n).toNat

end

end A283850.P14020657812024663960

/-! ## A283850.P5798899295443214539

`A185544(lcm(2, A283865(n)))`
-/

namespace A283850.P5798899295443214539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283865 n))

end

end A283850.P5798899295443214539

/-! ## A283850.P6958561946651364737

`A185544(A283865(n)+A283865(n))`
-/

namespace A283850.P6958561946651364737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A283865 n + A283865 n).toNat

end

end A283850.P6958561946651364737

/-!
# A283851: Number of n X n 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283851, there is no canonical definition to state claims against.
-/

/-! ## A283851.P10044564050836218615

`A283857(∑[4*n]+1)`
-/

namespace A283851.P10044564050836218615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A283851.P10044564050836218615

/-! ## A283851.P18104457901723138565

`record[A003982(n)*A283857(n+1)]`
-/

namespace A283851.P18104457901723138565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A283857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283851.P18104457901723138565

/-! ## A283851.P2446002306344246344

`record[gcd(A049581(n), A283857(n+1))]`
-/

namespace A283851.P2446002306344246344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A283857 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283851.P2446002306344246344

/-! ## A283851.P11545258678324406795

`record[root(A283857(n+1), A204143(n+1))]`
-/

namespace A283851.P11545258678324406795
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A283857 (n + 1) : ℝ) ^ (1 / (A204143 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283851.P11545258678324406795

/-! ## A283851.P6905559221522453998

`A283857(A001844(n))+A185284(n)`
-/

namespace A283851.P6905559221522453998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (A001844 n).toNat + A185284 n

end

end A283851.P6905559221522453998

/-!
# A283852: Number of n X 3 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283852, the canonical program `A283852.P16844900337539098051` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283852 has offset 1).

The definition of A283852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283852.P16844900337539098051

`ogf((8+5x-2x^2-56x^3-24x^4-4x^5+72x^6-32x^7)/(1-7x+2x^2-19x^3+50x^4+2x^5+48x^6-88x^7+32x^8))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A283852

/-- `ogf((8+5x-2x^2-56x^3-24x^4-4x^5+72x^6-32x^7)/(1-7x+2x^2-19x^3+50x^4+2x^5+48x^6-88x^7+32x^8))` -/
def P16844900337539098051.Spec : Prop :=
  ∀ n, P16844900337539098051.a n = A283852 (n + 1)

theorem P16844900337539098051.correct : P16844900337539098051.Spec := by
  intro n
  simp only [A283852, Nat.add_sub_cancel]

end A283852

/-! ## A283852.P7073141961424532449

`A283857(∑[n+3]+1)`
-/

namespace A283852.P7073141961424532449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A283852.P7073141961424532449

namespace A283852

/-- `A283857(∑[n+3]+1)` -/
def P7073141961424532449.Spec : Prop :=
  ∀ n, P7073141961424532449.a n = A283852 (n + 1)

end A283852

/-! ## A283852.P9568937227011804048

`record[A283857(A198464(n+1))]`
-/

namespace A283852.P9568937227011804048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283852.P9568937227011804048

namespace A283852

/-- `record[A283857(A198464(n+1))]` -/
def P9568937227011804048.Spec : Prop :=
  ∀ n, P9568937227011804048.a n = A283852 (n + 1)

end A283852

/-! ## A283852.P15260357358196143713

`A283857(A141214(n)+1)+A000007(n+1)`
-/

namespace A283852.P15260357358196143713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (A141214 n + 1).toNat + A000007 (n + 1)

end

end A283852.P15260357358196143713

namespace A283852

/-- `A283857(A141214(n)+1)+A000007(n+1)` -/
def P15260357358196143713.Spec : Prop :=
  ∀ n, P15260357358196143713.a n = A283852 (n + 1)

end A283852

/-! ## A283852.P9044242865965701523

`A283857(A055999(n)+4)+A000007(3*n+1)`
-/

namespace A283852.P9044242865965701523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (A055999 n + 4).toNat + A000007 (3 * n + 1)

end

end A283852.P9044242865965701523

namespace A283852

/-- `A283857(A055999(n)+4)+A000007(3*n+1)` -/
def P9044242865965701523.Spec : Prop :=
  ∀ n, P9044242865965701523.a n = A283852 (n + 1)

end A283852

/-!
# A283853: Number of nX4 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283853, there is no canonical definition to state claims against.
-/

/-! ## A283853.P15690909069130523646

`A283857(A141214(n+1))`
-/

namespace A283853.P15690909069130523646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (A141214 (n + 1)).toNat

end

end A283853.P15690909069130523646

/-! ## A283853.P11318698079501994888

`A283857(A027379(n+2))`
-/

namespace A283853.P11318698079501994888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (A027379 (n + 2)).toNat

end

end A283853.P11318698079501994888

/-! ## A283853.P5188575473001806576

`A283857(A055998(n+2))`
-/

namespace A283853.P5188575473001806576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (A055998 (n + 2)).toNat

end

end A283853.P5188575473001806576

/-! ## A283853.P3833402513718876297

`A283857(eq[3, A193592(n)])`
-/

namespace A283853.P3833402513718876297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283853.P3833402513718876297

/-! ## A283853.P2279116657282182744

`A283857(eq[4, A166065(n)])`
-/

namespace A283853.P2279116657282182744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283853.P2279116657282182744

/-!
# A283854: Number of nX5 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283854, there is no canonical definition to state claims against.
-/

/-! ## A283854.P13681576187699337528

`A283857(Δ[A264443(n)])`
-/

namespace A283854.P13681576187699337528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (f1 (n + 1) - f1 n).toNat

end

end A283854.P13681576187699337528

/-! ## A283854.P8141332852992194226

`A283857(eq[4, A193592(n)])`
-/

namespace A283854.P8141332852992194226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283854.P8141332852992194226

/-! ## A283854.P8453743086451421493

`A283857(eq[8, A166065(n)])`
-/

namespace A283854.P8453743086451421493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283854.P8453743086451421493

/-! ## A283854.P255137450735742644

`A283857(Δ[A023545(n+1)])`
-/

namespace A283854.P255137450735742644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (f1 (n + 1) - f1 n).toNat

end

end A283854.P255137450735742644

/-! ## A283854.P17811795411850660221

`A283857(A052905(n+2)+1)`
-/

namespace A283854.P17811795411850660221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (A052905 (n + 2) + 1).toNat

end

end A283854.P17811795411850660221

/-!
# A283855: Number of nX6 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283855, there is no canonical definition to state claims against.
-/

/-! ## A283855.P5025196632439821764

`A283857(A052905(n+3))`
-/

namespace A283855.P5025196632439821764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (A052905 (n + 3)).toNat

end

end A283855.P5025196632439821764

/-! ## A283855.P5068569864757472455

`A283857(eq[3, A219347(n)])`
-/

namespace A283855.P5068569864757472455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283855.P5068569864757472455

/-! ## A283855.P6504131539557470546

`A283857(eq[5, A193592(n)])`
-/

namespace A283855.P6504131539557470546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283855.P6504131539557470546

/-! ## A283855.P1075898775464073974

`A283857(eq[6, A200370(n+1)])`
-/

namespace A283855.P1075898775464073974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283855.P1075898775464073974

/-! ## A283855.P13504791623933159040

`A283857(eq[8, A185782(n+1)])`
-/

namespace A283855.P13504791623933159040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283855.P13504791623933159040

/-!
# A283856: Number of n X 7 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283856, there is no canonical definition to state claims against.
-/

/-! ## A283856.P1050800355178153354

`A283857(A055999(n+4))`
-/

namespace A283856.P1050800355178153354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (A055999 (n + 4)).toNat

end

end A283856.P1050800355178153354

/-! ## A283856.P9432796451528607957

`A283857(eq[4, A219347(n)])`
-/

namespace A283856.P9432796451528607957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283856.P9432796451528607957

/-! ## A283856.P7412216268305174744

`A283857(eq[6, A193592(n)])`
-/

namespace A283856.P7412216268305174744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283856.P7412216268305174744

/-! ## A283856.P3691034506217403247

`A283857(A056115(n+2)+9)`
-/

namespace A283856.P3691034506217403247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (A056115 (n + 2) + 9).toNat

end

end A283856.P3691034506217403247

/-! ## A283856.P16072784551273235770

`A283857(eq[10, A185782(n+1)])`
-/

namespace A283856.P16072784551273235770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283856.P16072784551273235770

/-!
# A283857: T(n,k)=Number of nXk 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283857, there is no canonical definition to state claims against.
-/

/-! ## A283857.P12391912729520203855

`A301784(n+1)+A303469(n+1)+A016389(A022166(n))`
-/

namespace A283857.P12391912729520203855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (n + 1) + (A303469 (n + 1) + A016389 (A022166 n).toNat)

end

end A283857.P12391912729520203855

/-! ## A283857.P16712139821764178982

`A301784(n+1)+A303469(n+1)+A016389(A027336(n))`
-/

namespace A283857.P16712139821764178982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (n + 1) + (A303469 (n + 1) + A016389 (A027336 n).toNat)

end

end A283857.P16712139821764178982

/-! ## A283857.P16029013344069745549

`A301784(n+1)+A303469(n+1)+A016389(A176561(n))`
-/

namespace A283857.P16029013344069745549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (n + 1) + (A303469 (n + 1) + A016389 (A176561 n).toNat)

end

end A283857.P16029013344069745549

/-! ## A283857.P14005114929654675351

`A301784(n+1)+A303469(n+1)-A001221(A299905(n)!)`
-/

namespace A283857.P14005114929654675351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (n + 1) + (A303469 (n + 1) - A001221 (Nat.factorial (A299905 n).toNat))

end

end A283857.P14005114929654675351

/-! ## A283857.P16618576735287169521

`A301784(n+1)+A303469(n+1)-A001222(A299905(n)!)`
-/

namespace A283857.P16618576735287169521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (n + 1) + (A303469 (n + 1) - A001222 (Nat.factorial (A299905 n).toNat))

end

end A283857.P16618576735287169521

/-!
# A283858: Number of 2 X n 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283858, the canonical program `A283858.P636249354258647788` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283858 has offset 1).

The definition of A283858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283858.P12740130716341446115

`ogf((4+4x+9x^2+6x^3)/(1-3x-x^2-7x^3-6x^4))`
-/

namespace A283858.P12740130716341446115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 4, 9, 6] [1, -3, -1, -7, -6] n

end

end A283858.P12740130716341446115

namespace A283858

/-- `ogf((4+4x+9x^2+6x^3)/(1-3x-x^2-7x^3-6x^4))` -/
def P12740130716341446115.Spec : Prop :=
  ∀ n, P12740130716341446115.a n = A283858 (n + 1)

end A283858

/-! ## A283858.P636249354258647788

`3*a(n-1)+a(n-2)+7*a(n-3)+6*a(n-4)` with `a(0)=4, a(1)=16, a(2)=61, a(3)=233`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A283858

/-- `3*a(n-1)+a(n-2)+7*a(n-3)+6*a(n-4)` -/
def P636249354258647788.Spec : Prop :=
  ∀ n, (P636249354258647788.a n : ℤ) = A283858 (n + 1)

theorem P636249354258647788.correct : P636249354258647788.Spec := by
  intro n
  simp only [A283858, Nat.add_sub_cancel]

end A283858

/-! ## A283858.P3776317398587424866

`A283857(∑[n+1]+2)`
-/

namespace A283858.P3776317398587424866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A283858.P3776317398587424866

namespace A283858

/-- `A283857(∑[n+1]+2)` -/
def P3776317398587424866.Spec : Prop :=
  ∀ n, P3776317398587424866.a n = A283858 (n + 1)

end A283858

/-! ## A283858.P8144333569991183473

`record[root(A283857(n+2), A200370(n+1))]`
-/

namespace A283858.P8144333569991183473
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A283857 (n + 2) : ℝ) ^ (1 / (A200370 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283858.P8144333569991183473

namespace A283858

/-- `record[root(A283857(n+2), A200370(n+1))]` -/
def P8144333569991183473.Spec : Prop :=
  ∀ n, P8144333569991183473.a n = (A283858 (n + 1) : ℝ)

end A283858

/-! ## A283858.P10431404030701997687

`record[root(A283857(n+1), A131818(n+1))²]`
-/

namespace A283858.P10431404030701997687
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A283857 (n + 1) : ℝ) ^ (1 / (A131818 (n + 1) : ℝ))) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283858.P10431404030701997687

namespace A283858

/-- `record[root(A283857(n+1), A131818(n+1))²]` -/
def P10431404030701997687.Spec : Prop :=
  ∀ n, P10431404030701997687.a n = (A283858 (n + 1) : ℝ)

end A283858

/-!
# A283859: Number of 3Xn 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283859, there is no canonical definition to state claims against.
-/

/-! ## A283859.P4010017996303593661

`A283857(∑[n+2]+4)`
-/

namespace A283859.P4010017996303593661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A283859.P4010017996303593661

/-! ## A283859.P17429918045863499671

`A283857(A167614(n+1))+A025438(n)`
-/

namespace A283859.P17429918045863499671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (A167614 (n + 1)).toNat + A025438 n

end

end A283859.P17429918045863499671

/-! ## A283859.P962416703843512344

`A283857(A167614(n+1))+A185284(n)`
-/

namespace A283859.P962416703843512344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (A167614 (n + 1)).toNat + A185284 n

end

end A283859.P962416703843512344

/-! ## A283859.P15260049835805264187

`A036225(n)*A283857(A167614(n+1))`
-/

namespace A283859.P15260049835805264187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A283857 (A167614 (n + 1)).toNat

end

end A283859.P15260049835805264187

/-! ## A283859.P16418561175001073545

`A139553(n)*A283857(A167614(n+1))`
-/

namespace A283859.P16418561175001073545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139553 n * A283857 (A167614 (n + 1)).toNat

end

end A283859.P16418561175001073545

/-!
# A283860: Number of 4Xn 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283860, there is no canonical definition to state claims against.
-/

/-! ## A283860.P141490218013975549

`A283857(A141214(n)+7)`
-/

namespace A283860.P141490218013975549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (A141214 n + 7).toNat

end

end A283860.P141490218013975549

/-! ## A283860.P6931324466448901007

`A283857(A052905(n)+9)`
-/

namespace A283860.P6931324466448901007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (A052905 n + 9).toNat

end

end A283860.P6931324466448901007

/-! ## A283860.P3490816616746310731

`A283857(A055999(n)+10)`
-/

namespace A283860.P3490816616746310731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (A055999 n + 10).toNat

end

end A283860.P3490816616746310731

/-! ## A283860.P4340213693781886462

`A283857(A167614(n+2)+1)`
-/

namespace A283860.P4340213693781886462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (A167614 (n + 2) + 1).toNat

end

end A283860.P4340213693781886462

/-! ## A283860.P3161138823510956129

`A283857(eq[5, A131818(n+1)])`
-/

namespace A283860.P3161138823510956129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283860.P3161138823510956129

/-!
# A283861: Number of 5Xn 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283861, there is no canonical definition to state claims against.
-/

/-! ## A283861.P16789966245507133878

`A283857(A167499(n+3))`
-/

namespace A283861.P16789966245507133878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (A167499 (n + 3)).toNat

end

end A283861.P16789966245507133878

/-! ## A283861.P16981424858798853975

`A283857(A155212(n)+13)`
-/

namespace A283861.P16981424858798853975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (A155212 n + 13).toNat

end

end A283861.P16981424858798853975

/-! ## A283861.P925162887595977319

`A283857(A056000(n)+15)`
-/

namespace A283861.P925162887595977319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (A056000 n + 15).toNat

end

end A283861.P925162887595977319

/-! ## A283861.P2283326694645444019

`A283857(A055998(n+2)+8)`
-/

namespace A283861.P2283326694645444019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (A055998 (n + 2) + 8).toNat

end

end A283861.P2283326694645444019

/-! ## A283861.P16281634558043272324

`A283857(eq[6, A131818(n+1)])`
-/

namespace A283861.P16281634558043272324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283861.P16281634558043272324

/-!
# A283862: Number of 6Xn 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283862, there is no canonical definition to state claims against.
-/

/-! ## A283862.P11828597200681903917

`A283857(A056115(n)+21)`
-/

namespace A283862.P11828597200681903917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (A056115 n + 21).toNat

end

end A283862.P11828597200681903917

/-! ## A283862.P7966908129939107729

`A283857(A000124(n+5)+5)`
-/

namespace A283862.P7966908129939107729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (A000124 (n + 5) + 5).toNat

end

end A283862.P7966908129939107729

/-! ## A283862.P8393435986222207322

`A283857(A000217(n+5)+6)`
-/

namespace A283862.P8393435986222207322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (A000217 (n + 5) + 6).toNat

end

end A283862.P8393435986222207322

/-! ## A283862.P6603348559946347651

`A283857(A141214(n+2)+9)`
-/

namespace A283862.P6603348559946347651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (A141214 (n + 2) + 9).toNat

end

end A283862.P6603348559946347651

/-! ## A283862.P8164985177174349425

`A283857(eq[7, A131818(n+1)])`
-/

namespace A283862.P8164985177174349425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283862.P8164985177174349425

/-!
# A283863: Number of 7Xn 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283863, there is no canonical definition to state claims against.
-/

/-! ## A283863.P12775848015233191228

`A283857(A056119(n)+28)`
-/

namespace A283863.P12775848015233191228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (A056119 n + 28).toNat

end

end A283863.P12775848015233191228

/-! ## A283863.P12095959921759671498

`A283857(eq[11, A066657(n)])`
-/

namespace A283863.P12095959921759671498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283863.P12095959921759671498

/-! ## A283863.P9881254829865939748

`A283857(A141214(n+3)+10)`
-/

namespace A283863.P9881254829865939748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (A141214 (n + 3) + 10).toNat

end

end A283863.P9881254829865939748

/-! ## A283863.P16766673001326431695

`A283857(eq[6, A002262(n)]+1)`
-/

namespace A283863.P16766673001326431695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A283863.P16766673001326431695

/-! ## A283863.P202661274371688867

`A283857(eq[8, A131818(n+1)])`
-/

namespace A283863.P202661274371688867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283863.P202661274371688867

/-!
# A283864: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 734", based on the 5-celled von Neumann neighborhood.

The programs for A283864, there is no canonical definition to state claims against.
-/

/-! ## A283864.P15699236254946213022

`and(A126646(n), A264618(A283865(n)))`
-/

namespace A283864.P15699236254946213022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A264618 (A283865 n).toNat)

end

end A283864.P15699236254946213022

/-! ## A283864.P1630723149476281728

`A057889(A283865(n))`
-/

namespace A283864.P1630723149476281728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A283865 n).toNat

end

end A283864.P1630723149476281728

/-! ## A283864.P3979190115627585979

`A030101(A283865(n))`
-/

namespace A283864.P3979190115627585979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A283865 n).toNat

end

end A283864.P3979190115627585979

/-! ## A283864.P11571640636972095677

`A281589(2*A283865(n))`
-/

namespace A283864.P11571640636972095677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A283865 n).toNat

end

end A283864.P11571640636972095677

/-! ## A283864.P13898432774514088983

`A325401(2*A283865(n))`
-/

namespace A283864.P13898432774514088983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A283865 n).toNat

end

end A283864.P13898432774514088983

/-!
# A283865: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 734", based on the 5-celled von Neumann neighborhood.

The programs for A283865, there is no canonical definition to state claims against.
-/

/-! ## A283865.P3038974173296093889

`and(A126646(n), A264618(A283864(n)))`
-/

namespace A283865.P3038974173296093889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A264618 (A283864 n).toNat)

end

end A283865.P3038974173296093889

/-! ## A283865.P14134401556139644659

`A057889(A283864(n))`
-/

namespace A283865.P14134401556139644659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A283864 n).toNat

end

end A283865.P14134401556139644659

/-! ## A283865.P1574894235748812514

`A325401(lcm(A086995(n+1), A283864(n)))`
-/

namespace A283865.P1574894235748812514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm (A086995 (n + 1)) (A283864 n))

end

end A283865.P1574894235748812514

/-! ## A283865.P12490904160384629052

`A325401(A086995(2*n+1)*A283864(n))`
-/

namespace A283865.P12490904160384629052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A086995 (2 * n + 1) * A283864 n).toNat

end

end A283865.P12490904160384629052

/-! ## A283865.P18300054690625543774

`A030101(A283864(n))`
-/

namespace A283865.P18300054690625543774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A283864 n).toNat

end

end A283865.P18300054690625543774

/-!
# A283866: Multiplicities of prime factors of A243103(n).

The programs for A283866, there is no canonical definition to state claims against.
-/

/-! ## A283866.P15714703936626837198

`A001222(xor(A004736(n+1), A298841(5*n+2)))`
-/

namespace A283866.P15714703936626837198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.xor (A004736 (n + 1)) (A298841 (5 * n + 2))).toNat

end

end A283866.P15714703936626837198

/-!
# A283868: For all n, the set including the terms {a(1), a(2), a(3), ..., a(n)} has a nonprime number of digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9.

The programs for A283868, there is no canonical definition to state claims against.
-/

/-! ## A283868.P12831014035237788023

`A083434(A083434(n+1)%A178243(3*(n+1)))`
-/

namespace A283868.P12831014035237788023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083434 (Int.tmod (A083434 (n + 1)) (A178243 (3 * (n + 1)))).toNat

end

end A283868.P12831014035237788023

/-! ## A283868.P16367536607093527791

`A083434(A083434(n+1))%A083464(2*n+3)`
-/

namespace A283868.P16367536607093527791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083434 (A083434 (n + 1)).toNat) (A083464 (2 * n + 3))

end

end A283868.P16367536607093527791

/-! ## A283868.P12689766296346290181

`A083434(A083434(n+1))%A107116(A183534(n+1))`
-/

namespace A283868.P12689766296346290181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083434 (A083434 (n + 1)).toNat) (A107116 (A183534 (n + 1)).toNat)

end

end A283868.P12689766296346290181

/-!
# A283869: Primes p such that p+12, (p+1)/2, and (p+13)/2 are also prime.

The programs for A283869, the canonical program `A283869.P5336619644577166002` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283869 has offset 1).

The definition of A283869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283869.P5336619644577166002

`∩[A005383(n+1)-12, A005383(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A283869

/-- `∩[A005383(n+1)-12, A005383(n+1)]` -/
def P5336619644577166002.Spec : Prop :=
  ∀ n, (P5336619644577166002.a n : ℤ) = A283869 (n + 1)

theorem P5336619644577166002.correct : P5336619644577166002.Spec := by
  intro n
  simp only [A283869, Nat.add_sub_cancel]

end A283869

/-! ## A283869.P1689873827860735904

`∩[A265396(n+1)-12, A265396(n+1)]`
-/

namespace A283869.P1689873827860735904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265396 (n + 1) - 12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283869.P1689873827860735904

namespace A283869

/-- `∩[A265396(n+1)-12, A265396(n+1)]` -/
def P1689873827860735904.Spec : Prop :=
  ∀ n, (P1689873827860735904.a n : ℤ) = A283869 (n + 1)

end A283869

/-! ## A283869.P18157236029971183323

`p?[A018804(A053685(n+1)-6)]`
-/

namespace A283869.P18157236029971183323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (A053685 (n + 1) - 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A283869.P18157236029971183323

namespace A283869

/-- `p?[A018804(A053685(n+1)-6)]` -/
def P18157236029971183323.Spec : Prop :=
  ∀ n, P18157236029971183323.a n = A283869 (n + 1)

end A283869

/-!
# A283870: For all n, the set consisting of the terms {a(1), a(2), a(3), ..., a(n)} has an odd number or 0 of digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9.

The programs for A283870, there is no canonical definition to state claims against.
-/

/-! ## A283870.P306857524531985318

`record[A265525(A077342(n+1))]`
-/

namespace A283870.P306857524531985318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (A077342 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283870.P306857524531985318

/-!
# A283871: For all n, the set consisting of the terms {a(1), a(2), a(3), ..., a(n)} has an even number of digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9.

The programs for A283871, there is no canonical definition to state claims against.
-/

/-! ## A283871.P14441717075023832057

`∩[A115853(n+1), A283870(n+1)]`
-/

namespace A283871.P14441717075023832057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283871.P14441717075023832057

/-! ## A283871.P13770512684157865331

`∩[A001637(n+1), A283870(n+1)]`
-/

namespace A283871.P13770512684157865331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283871.P13770512684157865331

/-! ## A283871.P2888610351628258151

`eq[0, A196564(A139337(n))]`
-/

namespace A283871.P2888610351628258151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283871.P2888610351628258151

/-! ## A283871.P14290423432419228520

`record[A321797(A064544(n+1))]`
-/

namespace A283871.P14290423432419228520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 (A064544 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283871.P14290423432419228520

/-! ## A283871.P14540119402219361704

`record[A321797(A001637(n+2))]`
-/

namespace A283871.P14540119402219361704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 (A001637 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283871.P14540119402219361704

/-!
# A283874: The Pierce expansion of the number Sum_{k>=1} 1/3^((2^k) - 1).

The programs for A283874, there is no canonical definition to state claims against.
-/

/-! ## A283874.P13925946119106168206

`(n+1)%2+3^A131577(A110654(n))`
-/

namespace A283874.P13925946119106168206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℚ) + (3 : ℚ) ^ (A131577 (A110654 n).toNat : ℤ)

end

end A283874.P13925946119106168206

/-! ## A283874.P12043461997624636127

`A083658(A060546(n))+A059841(n)`
-/

namespace A283874.P12043461997624636127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083658 (A060546 n).toNat + A059841 n

end

end A283874.P12043461997624636127

/-! ## A283874.P12852184359250484026

`A062318(A051032(n+1))+A040001(n)`
-/

namespace A283874.P12852184359250484026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062318 (A051032 (n + 1)).toNat + A040001 n

end

end A283874.P12852184359250484026

/-! ## A283874.P10543194893516632699

`record[A038754(A059268(n))+A025676(n+1)]`
-/

namespace A283874.P10543194893516632699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (A059268 n).toNat + A025676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283874.P10543194893516632699

/-! ## A283874.P14330508777860106233

`record[A048158(n+1)+A038754(A059268(n))]`
-/

namespace A283874.P14330508777860106233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (n + 1) + A038754 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283874.P14330508777860106233

/-!
# A283875: Number of partitions of n into twin primes (A001097).

The programs for A283875, there is no canonical definition to state claims against.
-/

/-! ## A283875.P2416612252310676993

`A178798(A239239(n))+A099773(n)`
-/

namespace A283875.P2416612252310676993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A239239 n).toNat + A099773 n

end

end A283875.P2416612252310676993

/-! ## A283875.P10229580964030565756

`A099773(A163533(A251762(n))+n)`
-/

namespace A283875.P10229580964030565756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099773 (A163533 (A251762 n).toNat + (n : ℤ)).toNat

end

end A283875.P10229580964030565756

/-! ## A283875.P7552414304087419720

`A099773(n)-A163533(2*A251762(n))`
-/

namespace A283875.P7552414304087419720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099773 n - A163533 (2 * A251762 n).toNat

end

end A283875.P7552414304087419720

/-!
# A283876: Number of partitions of n into distinct twin primes (A001097).

The programs for A283876, there is no canonical definition to state claims against.
-/

/-! ## A283876.P2153297255267560245

`A178798(A239239(n))+A024939(n)`
-/

namespace A283876.P2153297255267560245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A239239 n).toNat + A024939 n

end

end A283876.P2153297255267560245

/-! ## A283876.P6269025621410789345

`A178798(A239239(n))+A024937(n+2)`
-/

namespace A283876.P6269025621410789345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A239239 n).toNat + A024937 (n + 2)

end

end A283876.P6269025621410789345

/-! ## A283876.P3110965720501503082

`A184171(xor(1, n+1))+A178798(A239239(n))`
-/

namespace A283876.P3110965720501503082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184171 (Nat.xor 1 (n + 1)) + A178798 (A239239 n).toNat

end

end A283876.P3110965720501503082

/-! ## A283876.P14547533508092607433

`A184172(xor(1, n)+1)+A178798(A239239(n))`
-/

namespace A283876.P14547533508092607433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184172 (Nat.xor 1 n + 1) + A178798 (A239239 n).toNat

end

end A283876.P14547533508092607433

/-! ## A283876.P15940970411111386495

`A184171(2*n%2+n)+A178798(A239239(n))`
-/

namespace A283876.P15940970411111386495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184171 (2 * (n % 2) + n) + A178798 (A239239 n).toNat

end

end A283876.P15940970411111386495

/-!
# A283877: Number of non-isomorphic set-systems of weight n.

The programs for A283877, there is no canonical definition to state claims against.
-/

/-! ## A283877.P13073471329688988402

`A330053(n)+A306005(n)`
-/

namespace A283877.P13073471329688988402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330053 n + A306005 n

end

end A283877.P13073471329688988402

/-! ## A283877.P4547719100383634394

`A330054(n)+A330052(n)`
-/

namespace A283877.P4547719100383634394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330054 n + A330052 n

end

end A283877.P4547719100383634394

/-! ## A283877.P3521571541599734285

`A306005(n)-A057428(n)*A330053(n)`
-/

namespace A283877.P3521571541599734285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306005 n - A057428 n * A330053 n

end

end A283877.P3521571541599734285

/-! ## A283877.P196092547519867043

`A368095(n)+A368094(n)`
-/

namespace A283877.P196092547519867043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368095 n + A368094 n

end

end A283877.P196092547519867043

/-! ## A283877.P17194739897278607031

`A003407(n)-A160127(A000992(n+1))`
-/

namespace A283877.P17194739897278607031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003407 n - A160127 (A000992 (n + 1)).toNat

end

end A283877.P17194739897278607031

/-!
# A283878: An eventually quasilinear solution to Hofstadter's Q recurrence.

The programs for A283878, the canonical program `A283878.P12685203666607970033` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283878 has offset 1).

The definition of A283878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283878.P15480621541441021127

`ogf((2x+3x^2+x^3-x^4-x^6-x^7)/(1-2x^3+x^6))`
-/

namespace A283878.P15480621541441021127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3, 1, -1, 0, -1, -1] [1, 0, 0, -2, 0, 0, 1] n

end

end A283878.P15480621541441021127

namespace A283878

/-- `ogf((2x+3x^2+x^3-x^4-x^6-x^7)/(1-2x^3+x^6))` -/
def P15480621541441021127.Spec : Prop :=
  ∀ n, P15480621541441021127.a n = A283878 (n + 1)

end A283878

/-! ## A283878.P12685203666607970033

`2*a(n-3)-a(n-6)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=1, a(4)=3, a(5)=6, a(6)=1, a(7)=3`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A283878

/-- `2*a(n-3)-a(n-6)` -/
def P12685203666607970033.Spec : Prop :=
  ∀ n, P12685203666607970033.a n = A283878 (n + 1)

theorem P12685203666607970033.correct : P12685203666607970033.Spec := by
  intro n
  simp only [A283878, Nat.add_sub_cancel]

end A283878

/-! ## A283878.P15744084507711419593

`a(n-a(n-1))+a(n-a(n-2))` with `a(0)=0, a(1)=2, a(2)=3, a(3)=1`
-/

namespace A283878.P15744084507711419593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 1] fun n a =>
  a (n - a (n - 1)) + a (n - a (n - 2))

end

end A283878.P15744084507711419593

namespace A283878

/-- `a(n-a(n-1))+a(n-a(n-2))` -/
def P15744084507711419593.Spec : Prop :=
  ∀ n, (P15744084507711419593.a n : ℤ) = A283878 (n + 1)

end A283878

/-! ## A283878.P6798422934489634122

`n%3+a(n-a(n-1))+1` with `a(0)=0, a(1)=2`
-/

namespace A283878.P6798422934489634122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  n % 3 + (a (n - a (n - 1)) + 1)

end

end A283878.P6798422934489634122

namespace A283878

/-- `n%3+a(n-a(n-1))+1` -/
def P6798422934489634122.Spec : Prop :=
  ∀ n, (P6798422934489634122.a n : ℤ) = A283878 (n + 1)

end A283878

/-! ## A283878.P5132955084285016912

`a(n-3)+xor(1, a(a(n-2)))` with `a(0)=0, a(1)=2, a(2)=3, a(3)=1, a(4)=3`
-/

namespace A283878.P5132955084285016912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 1, 3] fun n a =>
  a (n - 3) + Nat.xor 1 (a (a (n - 2)))

end

end A283878.P5132955084285016912

namespace A283878

/-- `a(n-3)+xor(1, a(a(n-2)))` -/
def P5132955084285016912.Spec : Prop :=
  ∀ n, (P5132955084285016912.a n : ℤ) = A283878 (n + 1)

end A283878

/-! ## A283878.P12555065684892618360

`ceil(A087156(n+1)/A347629(n+1))`
-/

namespace A283878.P12555065684892618360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087156 (n + 1) : ℚ) / (A347629 (n + 1) : ℚ)⌉

end

end A283878.P12555065684892618360

namespace A283878

/-- `ceil(A087156(n+1)/A347629(n+1))` -/
def P12555065684892618360.Spec : Prop :=
  ∀ n, P12555065684892618360.a n = A283878 (n + 1)

end A283878

/-! ## A283878.P16921741945235970189

`A064429(A264756(n+1)-A049347(n))`
-/

namespace A283878.P16921741945235970189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A264756 (n + 1) - A049347 n).toNat

end

end A283878.P16921741945235970189

namespace A283878

/-- `A064429(A264756(n+1)-A049347(n))` -/
def P16921741945235970189.Spec : Prop :=
  ∀ n, P16921741945235970189.a n = A283878 (n + 1)

end A283878

/-! ## A283878.P15719529898402587375

`A064429(A264756(n+1)-A010892(2*n+1))`
-/

namespace A283878.P15719529898402587375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A264756 (n + 1) - A010892 (2 * n + 1)).toNat

end

end A283878.P15719529898402587375

namespace A283878

/-- `A064429(A264756(n+1)-A010892(2*n+1))` -/
def P15719529898402587375.Spec : Prop :=
  ∀ n, P15719529898402587375.a n = A283878 (n + 1)

end A283878

/-!
# A283879: An eventually quasilinear solution to Hofstadter's Q recurrence.

The programs for A283879, the canonical program `A283879.P15717076715504069464` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283879 has offset 1).

The definition of A283879 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283879.P15717076715504069464

`ogf((4-3x+3x^2-5x^4+4x^5+2x^7+3x^8-3x^9-x^10)/(1-x+x^2-x^3-x^4+x^5-x^6+x^7))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A283879

/-- `ogf((4-3x+3x^2-5x^4+4x^5+2x^7+3x^8-3x^9-x^10)/(1-x+x^2-x^3-x^4+x^5-x^6+x^7))` -/
def P15717076715504069464.Spec : Prop :=
  ∀ n, P15717076715504069464.a n = A283879 (n + 1)

theorem P15717076715504069464.correct : P15717076715504069464.Spec := by
  intro n
  simp only [A283879, Nat.add_sub_cancel]

end A283879

/-! ## A283879.P16064292986120617482

`a(n-a(n-1))+a(n-a(n-2))` with `a(0)=4, a(1)=1, a(2)=0, a(3)=3, a(4)=3, a(5)=1, a(6)=4, a(7)=8`
-/

namespace A283879.P16064292986120617482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 1, 0, 3, 3, 1, 4, 8] fun n a =>
  a (n - a (n - 1)) + a (n - a (n - 2))

end

end A283879.P16064292986120617482

namespace A283879

/-- `a(n-a(n-1))+a(n-a(n-2))` -/
def P16064292986120617482.Spec : Prop :=
  ∀ n, (P16064292986120617482.a n : ℤ) = A283879 (n + 1)

end A283879

/-!
# A283889: Relative of Hofstadter Q-sequence: a(n) = max(0, n+10000) for n <= 0; a(n) = a(n-a(n-1)) + a(n-a(n-2)) + a(n-a(n-3)) + a(n-a(n-4)) for n > 0.

The programs for A283889, there is no canonical definition to state claims against.
-/

/-! ## A283889.P2747075158982093335

`A283890(n+1)-A267605(A215143(n))`
-/

namespace A283889.P2747075158982093335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283890 (n + 1) - A267605 (A215143 n).toNat

end

end A283889.P2747075158982093335

/-! ## A283889.P17019621939043506038

`A283890(n+1)-A267605(A319512(n))`
-/

namespace A283889.P17019621939043506038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283890 (n + 1) - A267605 (A319512 n).toNat

end

end A283889.P17019621939043506038

/-! ## A283889.P17195666741281678418

`A283890(n+1)-A010060(A042048(n))`
-/

namespace A283889.P17195666741281678418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283890 (n + 1) - A010060 (A042048 n).toNat

end

end A283889.P17195666741281678418

/-!
# A283890: Relative of Hofstadter Q-sequence: a(n) = max(0, n+10001) for n <= 0; a(n) = a(n-a(n-1)) + a(n-a(n-2)) + a(n-a(n-3)) + a(n-a(n-4)) for n > 0.

The programs for A283890, there is no canonical definition to state claims against.
-/

/-! ## A283890.P4487708980485832548

`A359764(A066109(2*n+3))+A283889(n+1)`
-/

namespace A283890.P4487708980485832548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359764 (A066109 (2 * n + 3)).toNat + A283889 (n + 1)

end

end A283890.P4487708980485832548

/-! ## A283890.P6514558691921005742

`A283889(n+1)+A048158(A002805(n+3))`
-/

namespace A283890.P6514558691921005742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283889 (n + 1) + A048158 (A002805 (n + 3)).toNat

end

end A283890.P6514558691921005742

/-!
# A283891: Relative of Hofstadter Q-sequence.

The programs for A283891, there is no canonical definition to state claims against.
-/

/-! ## A283891.P16394132755050989584

`A283892(n+1)-A308187(A283864(n))`
-/

namespace A283891.P16394132755050989584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283892 (n + 1) - A308187 (A283864 n).toNat

end

end A283891.P16394132755050989584

/-! ## A283891.P4860295624953319681

`A283892(n+1)-A047999(A127820(n+1))`
-/

namespace A283891.P4860295624953319681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283892 (n + 1) - A047999 (A127820 (n + 1)).toNat

end

end A283891.P4860295624953319681

/-! ## A283891.P15899306382748832098

`A283892(n+1)-A104234(A276085(n+1))`
-/

namespace A283891.P15899306382748832098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283892 (n + 1) - A104234 (A276085 (n + 1)).toNat

end

end A283891.P15899306382748832098

/-!
# A283892: Relative of Hofstadter Q-sequence.

The programs for A283892, there is no canonical definition to state claims against.
-/

/-! ## A283892.P15497521193877048471

`A308187(A283864(n))+A283891(n+1)`
-/

namespace A283892.P15497521193877048471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308187 (A283864 n).toNat + A283891 (n + 1)

end

end A283892.P15497521193877048471

/-! ## A283892.P2345452430182800893

`A283891(n+1)+A047999(A127820(n+1))`
-/

namespace A283892.P2345452430182800893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283891 (n + 1) + A047999 (A127820 (n + 1)).toNat

end

end A283892.P2345452430182800893

/-!
# A283893: Relative of Hofstadter Q-sequence: a(1) = 3, a(2) = 2; thereafter a(n) = a(n-a(n-1)) + a(n-a(n-2)).

The programs for A283893, the canonical program `A283893.P17542430917813880452` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283893 has offset 1).

The definition of A283893 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-2))` (program `A283893.P17542430917813880452`, by `A283893.P17542430917813880452.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A283893.P17542430917813880452

`a(n-a(n-1))+a(n-a(n-2))` with `a(0)=3, a(1)=2, a(2)=3, a(3)=5, a(4)=2, a(5)=8, a(6)=2, a(7)=8`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A283893

/-- `a(n-a(n-1))+a(n-a(n-2))` -/
def P17542430917813880452.Spec : Prop :=
  ∀ n, (P17542430917813880452.a n : ℤ) = A283893 (n + 1)

theorem P17542430917813880452.correct : P17542430917813880452.Spec := by
  intro n
  simp only [A283893, Nat.add_sub_cancel]

end A283893

/-!
# A283894: Relative of Hofstadter Q-sequence: a(1) = 17, a(2) = 2; thereafter a(n) = a(n-a(n-1)) + a(n-a(n-2)).

The programs for A283894, there is no canonical definition to state claims against.
-/

/-! ## A283894.P11219476858353592922

`A062710(gcd(n, a(n-1)))` with `a(0)=17`
-/

namespace A283894.P11219476858353592922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [17] fun n a =>
  A062710 (Int.gcd (n : ℤ) (a (n - 1)))

end

end A283894.P11219476858353592922

/-! ## A283894.P7424877348016122619

`A143845((6*n+2)²)+2`
-/

namespace A283894.P7424877348016122619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143845 ((6 * n + 2) ^ 2) + 2

end

end A283894.P7424877348016122619

/-! ## A283894.P15249105606960538552

`A118824(n^4+1)^4+1`
-/

namespace A283894.P15249105606960538552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (n ^ 4 + 1) ^ 4 + 1

end

end A283894.P15249105606960538552

/-! ## A283894.P10933769053496008542

`a(n-2)%A239978(3*n+2)` with `a(0)=17, a(1)=2`
-/

namespace A283894.P10933769053496008542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [17, 2] fun n a =>
  Int.tmod (a (n - 2)) (A239978 (3 * n + 2))

end

end A283894.P10933769053496008542

/-! ## A283894.P12399839561490789059

`a(and(n-2, -(A291636(3*n+5)+1)))` with `a(0)=17, a(1)=2`
-/

namespace A283894.P12399839561490789059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [17, 2] fun n a =>
  a (Int.land ((n : ℤ) - 2) (-(A291636 (3 * n + 5) + 1))).toNat

end

end A283894.P12399839561490789059

/-!
# A283895: Relative of Hofstadter Q-sequence: a(1) = 41, a(2) = 2; thereafter a(n) = a(n-a(n-1)) + a(n-a(n-2)).

The programs for A283895, there is no canonical definition to state claims against.
-/

/-! ## A283895.P8985375935668798632

`a(n-2)%A119760(n)` with `a(0)=41, a(1)=2`
-/

namespace A283895.P8985375935668798632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [41, 2] fun n a =>
  Int.tmod (a (n - 2)) (A119760 n)

end

end A283895.P8985375935668798632

/-! ## A283895.P14306106911922666644

`A020639(A060395(n)²²+25)`
-/

namespace A283895.P14306106911922666644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((A060395 n ^ 2) ^ 2 + 25).toNat

end

end A283895.P14306106911922666644

/-! ## A283895.P9044539678520673362

`A089120(A089120(3*n+1)+294)`
-/

namespace A283895.P9044539678520673362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (A089120 (3 * n + 1) + 294).toNat

end

end A283895.P9044539678520673362

/-! ## A283895.P9538036512728849190

`a(gcd(n-1, A091732(A340385(n+4)))-1)` with `a(0)=41, a(1)=2`
-/

namespace A283895.P9538036512728849190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [41, 2] fun n a =>
  a (Int.gcd ((n : ℤ) - 1) (A091732 (A340385 (n + 4)).toNat) - 1)

end

end A283895.P9538036512728849190

/-! ## A283895.P6691973202777022076

`A070349(A247541(n+1))`
-/

namespace A283895.P6691973202777022076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070349 (A247541 (n + 1)).toNat

end

end A283895.P6691973202777022076

/-!
# A283896: Relative of Hofstadter Q-sequence: a(-88) = 89, a(-87) = 2; thereafter a(n) = a(n-a(n-1)) + a(n-a(n-2)).

The programs for A283896, there is no canonical definition to state claims against.
-/

/-! ## A283896.P3255870095006722351

`89*ceil(atan((-n)^n*A000035(n+1)))+2`
-/

namespace A283896.P3255870095006722351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  89 * ⌈Real.arctan ((-(n : ℤ)) ^ n * A000035 (n + 1) : ℝ)⌉ + 2

end

end A283896.P3255870095006722351

/-!
# A283897: Relative of Hofstadter Q-sequence: a(-90) = 91, a(-89) = 2; thereafter a(n) = a(n-a(n-1)) + a(n-a(n-2)).

The programs for A283897, there is no canonical definition to state claims against.
-/

/-! ## A283897.P6279791349343117450

`A323885(A007018(n))+A283896(n+1)`
-/

namespace A283897.P6279791349343117450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323885 (A007018 n).toNat + A283896 (n + 1)

end

end A283897.P6279791349343117450

