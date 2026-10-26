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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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
# A121300: Triangle read by rows: T(n,k) is the number of directed column-convex polyominoes of area n and having k cells in the longest column (1<=k<=n).

The programs for A121300, there is no canonical definition to state claims against.
-/

/-! ## A121300.P1695911819084625285

`A179745(A000005(2^n))`
-/

namespace A121300.P1695911819084625285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179745 (A000005 (2 ^ n)).toNat

end

end A121300.P1695911819084625285

/-! ## A121300.P7951656467061788510

`A179745(∑[A278657(n)²])`
-/

namespace A121300.P7951656467061788510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179745 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A121300.P7951656467061788510

/-! ## A121300.P17238271882880175396

`A179745(∑[A278657(n)!])`
-/

namespace A121300.P17238271882880175396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A278657 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179745 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121300.P17238271882880175396

/-! ## A121300.P10333322652006807620

`A179745(A278657(n)²+n)`
-/

namespace A121300.P10333322652006807620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179745 (A278657 n ^ 2 + (n : ℤ)).toNat

end

end A121300.P10333322652006807620

/-! ## A121300.P9558781382814354824

`A179745((n+1)*A278657(n))`
-/

namespace A121300.P9558781382814354824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179745 ((n + 1 : ℤ) * A278657 n).toNat

end

end A121300.P9558781382814354824

/-!
# A121302: Number of directed column-convex polyominoes having at least one 1-cell column.

The programs for A121302, the canonical program `A121302.P2926939976869836642` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121302 has offset 1).

The definition of A121302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121302.P2926939976869836642

`A122367(n)-A106803(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121302

/-- `A122367(n)-A106803(n)` -/
def P2926939976869836642.Spec : Prop :=
  ∀ n, P2926939976869836642.a n = A121302 (n + 1)

theorem P2926939976869836642.correct : P2926939976869836642.Spec := by
  intro n
  simp only [A121302, Nat.add_sub_cancel]

end A121302

/-! ## A121302.P18125042483939008268

`Δ[A001906(n)-A006054(n)]`
-/

namespace A121302.P18125042483939008268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n - A006054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121302.P18125042483939008268

namespace A121302

/-- `Δ[A001906(n)-A006054(n)]` -/
def P18125042483939008268.Spec : Prop :=
  ∀ n, P18125042483939008268.a n = A121302 (n + 1)

end A121302

/-! ## A121302.P1874048533219916332

`Δ[A055588(n)-A006054(n)]`
-/

namespace A121302.P1874048533219916332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055588 n - A006054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121302.P1874048533219916332

namespace A121302

/-- `Δ[A055588(n)-A006054(n)]` -/
def P1874048533219916332.Spec : Prop :=
  ∀ n, P1874048533219916332.a n = A121302 (n + 1)

end A121302

/-! ## A121302.P15602214074953434757

`A000045(Δ[n²])-A106803(n)`
-/

namespace A121302.P15602214074953434757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A106803 n

end

end A121302.P15602214074953434757

namespace A121302

/-- `A000045(Δ[n²])-A106803(n)` -/
def P15602214074953434757.Spec : Prop :=
  ∀ n, P15602214074953434757.a n = A121302 (n + 1)

end A121302

/-! ## A121302.P6662119426123301295

`A001519(n+1)-Δ[A006054(n)]`
-/

namespace A121302.P6662119426123301295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) - (f1 (n + 1) - f1 n)

end

end A121302.P6662119426123301295

namespace A121302

/-- `A001519(n+1)-Δ[A006054(n)]` -/
def P6662119426123301295.Spec : Prop :=
  ∀ n, P6662119426123301295.a n = A121302 (n + 1)

end A121302

/-! ## A121302.P7121209572979117922

`Δ[A000045(2*n)-A006054(n)]`
-/

namespace A121302.P7121209572979117922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) - A006054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121302.P7121209572979117922

namespace A121302

/-- `Δ[A000045(2*n)-A006054(n)]` -/
def P7121209572979117922.Spec : Prop :=
  ∀ n, P7121209572979117922.a n = A121302 (n + 1)

end A121302

/-! ## A121302.P3098860334230817153

`Δ[A000045(2*n)]-A106803(n)`
-/

namespace A121302.P3098860334230817153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A106803 n

end

end A121302.P3098860334230817153

namespace A121302

/-- `Δ[A000045(2*n)]-A106803(n)` -/
def P3098860334230817153.Spec : Prop :=
  ∀ n, P3098860334230817153.a n = A121302 (n + 1)

end A121302

/-! ## A121302.P3606346853619964962

`A000045(Δ[n²])-Δ[A006054(n)]`
-/

namespace A121302.P3606346853619964962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (f2 (n + 1) - f2 n)

end

end A121302.P3606346853619964962

namespace A121302

/-- `A000045(Δ[n²])-Δ[A006054(n)]` -/
def P3606346853619964962.Spec : Prop :=
  ∀ n, P3606346853619964962.a n = A121302 (n + 1)

end A121302

/-! ## A121302.P8222698874359942179

`A001519(n+1)-A187070(2*n)`
-/

namespace A121302.P8222698874359942179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) - A187070 (2 * n)

end

end A121302.P8222698874359942179

namespace A121302

/-- `A001519(n+1)-A187070(2*n)` -/
def P8222698874359942179.Spec : Prop :=
  ∀ n, P8222698874359942179.a n = A121302 (n + 1)

end A121302

/-! ## A121302.P14307278665887485311

`Δ[A000045(2*n)-A187069(2*n)]`
-/

namespace A121302.P14307278665887485311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) - A187069 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121302.P14307278665887485311

namespace A121302

/-- `Δ[A000045(2*n)-A187069(2*n)]` -/
def P14307278665887485311.Spec : Prop :=
  ∀ n, P14307278665887485311.a n = A121302 (n + 1)

end A121302

/-! ## A121302.P1282078585268558216

`A000045(2*n+1)-A187070(2*n)`
-/

namespace A121302.P1282078585268558216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) - A187070 (2 * n)

end

end A121302.P1282078585268558216

namespace A121302

/-- `A000045(2*n+1)-A187070(2*n)` -/
def P1282078585268558216.Spec : Prop :=
  ∀ n, P1282078585268558216.a n = A121302 (n + 1)

end A121302

/-! ## A121302.P12212601085907768387

`A001519(n+1)+A006054(n)-A006054(n+1)`
-/

namespace A121302.P12212601085907768387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) + (A006054 n - A006054 (n + 1))

end

end A121302.P12212601085907768387

namespace A121302

/-- `A001519(n+1)+A006054(n)-A006054(n+1)` -/
def P12212601085907768387.Spec : Prop :=
  ∀ n, P12212601085907768387.a n = A121302 (n + 1)

end A121302

/-! ## A121302.P11072410193959144251

`Δ[Δ[A001519(n)]-A006054(n)]`
-/

namespace A121302.P11072410193959144251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A006054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121302.P11072410193959144251

namespace A121302

/-- `Δ[Δ[A001519(n)]-A006054(n)]` -/
def P11072410193959144251.Spec : Prop :=
  ∀ n, P11072410193959144251.a n = A121302 (n + 1)

end A121302

/-!
# A121303: Triangle read by rows: T(n,k) is the number of compositions of n into k primes (i.e., ordered sequences of k primes having sum n; n>=2, k>=1).

The programs for A121303, there is no canonical definition to state claims against.
-/

/-! ## A121303.P377808481778051500

`and(A077196(n+1), A287729(A066838(n+1)))`
-/

namespace A121303.P377808481778051500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077196 (n + 1)) (A287729 (A066838 (n + 1)).toNat)

end

end A121303.P377808481778051500

/-! ## A121303.P7201029486613560370

`A238451(A175427(3*n+4)+A107814(n+2)+1)`
-/

namespace A121303.P7201029486613560370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238451 (A175427 (3 * n + 4) + A107814 (n + 2) + 1).toNat

end

end A121303.P7201029486613560370

/-! ## A121303.P751527372010676166

`A259285(Δ[A333193(n)²])`
-/

namespace A121303.P751527372010676166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333193 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259285 (f1 (n + 1) - f1 n).toNat

end

end A121303.P751527372010676166

/-! ## A121303.P11391614035319771821

`A276729(and(A023458(n), A084636(n)))`
-/

namespace A121303.P11391614035319771821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 (Int.land (A023458 n) (A084636 n)).toNat

end

end A121303.P11391614035319771821

/-! ## A121303.P13699449116148413255

`A335889(gcd(A335848(n+1), A335879(n+1)))`
-/

namespace A121303.P13699449116148413255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335889 (Int.gcd (A335848 (n + 1)) (A335879 (n + 1)))

end

end A121303.P13699449116148413255

/-!
# A121306: Array read by antidiagonals: a(m,n) = a(m,n-1)+a(m-1,n) but with initialization values a(0,0)=0, a(m>=1,0)=1, a(0,1)=1, a(0,n>1)=0.

The programs for A121306, there is no canonical definition to state claims against.
-/

/-! ## A121306.P7884899658371111374

`A029653(lt[1, A131305(n)])`
-/

namespace A121306.P7884899658371111374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A121306.P7884899658371111374

/-! ## A121306.P7208935785725096414

`A029653(lt[1, A359576(n+1)])`
-/

namespace A121306.P7208935785725096414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A121306.P7208935785725096414

/-! ## A121306.P17875433285630705366

`A029656(n+1)%A234702(A359352(n+1))`
-/

namespace A121306.P17875433285630705366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029656 (n + 1)) (A234702 (A359352 (n + 1)).toNat)

end

end A121306.P17875433285630705366

/-! ## A121306.P3215393494751679756

`A029656(n+1)%A002762(n)`
-/

namespace A121306.P3215393494751679756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029656 (n + 1)) (A002762 n)

end

end A121306.P3215393494751679756

/-! ## A121306.P1773233065071536195

`gcd(A029656(n+1), A330771(n+1))`
-/

namespace A121306.P1773233065071536195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029656 (n + 1)) (A330771 (n + 1))

end

end A121306.P1773233065071536195

/-!
# A121307: Products of three primes of the form 3n-1 (A003627), not necessarily distinct.

The programs for A121307, the canonical program `A121307.P5032943004208249277` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121307 has offset 1).

The definition of A121307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1921 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121307.P1511600428597185922

`filter[A373589(n+2), A340369(#)]`
-/

namespace A121307.P1511600428597185922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373589 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A121307.P1511600428597185922

namespace A121307

/-- `filter[A373589(n+2), A340369(#)]` -/
def P1511600428597185922.Spec : Prop :=
  ∀ n, P1511600428597185922.a n = A121307 (n + 1)

end A121307

/-! ## A121307.P5032943004208249277

`∩[A004612(n+1), A014612(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A121307

/-- `∩[A004612(n+1), A014612(n+1)]` -/
def P5032943004208249277.Spec : Prop :=
  ∀ n, (P5032943004208249277.a n : ℤ) = A121307 (n + 1)

theorem P5032943004208249277.correct : P5032943004208249277.Spec := by
  intro n
  simp only [A121307, Nat.add_sub_cancel]

end A121307

/-! ## A121307.P13552888952936551474

`∩[A014612(n+1), A373589(n+1)]`
-/

namespace A121307.P13552888952936551474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121307.P13552888952936551474

namespace A121307

/-- `∩[A014612(n+1), A373589(n+1)]` -/
def P13552888952936551474.Spec : Prop :=
  ∀ n, (P13552888952936551474.a n : ℤ) = A121307 (n + 1)

end A121307

/-! ## A121307.P11250978659416325593

`∩[A326111(n+1), A373589(n+1)]`
-/

namespace A121307.P11250978659416325593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121307.P11250978659416325593

namespace A121307

/-- `∩[A326111(n+1), A373589(n+1)]` -/
def P11250978659416325593.Spec : Prop :=
  ∀ n, (P11250978659416325593.a n : ℤ) = A121307 (n + 1)

end A121307

/-! ## A121307.P1201418656002810100

`∩[A168645(n+1), A373589(n+1)]`
-/

namespace A121307.P1201418656002810100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121307.P1201418656002810100

namespace A121307

/-- `∩[A168645(n+1), A373589(n+1)]` -/
def P1201418656002810100.Spec : Prop :=
  ∀ n, (P1201418656002810100.a n : ℤ) = A121307 (n + 1)

end A121307

/-! ## A121307.P9857840927853342330

`∩[A063989(n+1), A373589(n+1)]`
-/

namespace A121307.P9857840927853342330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121307.P9857840927853342330

namespace A121307

/-- `∩[A063989(n+1), A373589(n+1)]` -/
def P9857840927853342330.Spec : Prop :=
  ∀ n, (P9857840927853342330.a n : ℤ) = A121307 (n + 1)

end A121307

/-! ## A121307.P9084678722322976527

`record[A343430(A014612(n+1))]`
-/

namespace A121307.P9084678722322976527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343430 (A014612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121307.P9084678722322976527

namespace A121307

/-- `record[A343430(A014612(n+1))]` -/
def P9084678722322976527.Spec : Prop :=
  ∀ n, P9084678722322976527.a n = A121307 (n + 1)

end A121307

/-! ## A121307.P15875487995628899422

`filter[A004612(n+1), A101605(#)]`
-/

namespace A121307.P15875487995628899422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A121307.P15875487995628899422

namespace A121307

/-- `filter[A004612(n+1), A101605(#)]` -/
def P15875487995628899422.Spec : Prop :=
  ∀ n, P15875487995628899422.a n = A121307 (n + 1)

end A121307

/-! ## A121307.P16935393118280161435

`filter[A373589(n+1), A101605(#)]`
-/

namespace A121307.P16935393118280161435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A121307.P16935393118280161435

namespace A121307

/-- `filter[A373589(n+1), A101605(#)]` -/
def P16935393118280161435.Spec : Prop :=
  ∀ n, P16935393118280161435.a n = A121307 (n + 1)

end A121307

/-!
# A121308: Number of 2-anisohedral polyiamonds of order n.

The programs for A121308, there is no canonical definition to state claims against.
-/

/-! ## A121308.P11734452205719167690

`∑{p}[A341935(A147166(n+1)), #]`
-/

namespace A121308.P11734452205719167690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341935 (A147166 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A121308.P11734452205719167690

/-! ## A121308.P12987030178838789990

`∑{p}[A341935(A147265(n+1)), #]`
-/

namespace A121308.P12987030178838789990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341935 (A147265 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A121308.P12987030178838789990

/-! ## A121308.P5751366150871091930

`∑[(2*n)%A151800(A205577(n+1))]`
-/

namespace A121308.P5751366150871091930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n : ℤ) (A151800 (A205577 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121308.P5751366150871091930

/-! ## A121308.P3751418895814401278

`A247098(n)%A000010(A306852(n))`
-/

namespace A121308.P3751418895814401278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247098 n) (A000010 (A306852 n).toNat)

end

end A121308.P3751418895814401278

/-! ## A121308.P13080918529854846134

`A000051(n)%A117816(A374726(n+1))`
-/

namespace A121308.P13080918529854846134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000051 n) (A117816 (A374726 (n + 1)).toNat)

end

end A121308.P13080918529854846134

/-!
# A121311: a(0) = 1, a(1) = 2, a(2) = 5; for n >= 3, a(n) = a(n - 1) - 2*a(n - 2) + a(n - 3).

The programs for A121311, the canonical program `A121311.P13220220200302279622` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121311 has offset 0).

The definition of A121311 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-2*a(n-2)+a(n-3)` (program `A121311.P13220220200302279622`, by `A121311.P13220220200302279622.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121311.P13220220200302279622

`a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121311

/-- `a(n-1)-2*a(n-2)+a(n-3)` -/
def P13220220200302279622.Spec : Prop :=
  ∀ n, P13220220200302279622.a n = A121311 n

theorem P13220220200302279622.correct : P13220220200302279622.Spec := by
  intro n
  simp only [A121311]

end A121311

/-! ## A121311.P11185870623437431306

`ogf((1+x+5x^2)/(1-x+2x^2-x^3))`
-/

namespace A121311.P11185870623437431306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 5] [1, -1, 2, -1] n

end

end A121311.P11185870623437431306

namespace A121311

/-- `ogf((1+x+5x^2)/(1-x+2x^2-x^3))` -/
def P11185870623437431306.Spec : Prop :=
  ∀ n, P11185870623437431306.a n = A121311 n

end A121311

/-! ## A121311.P17806198234117549125

`a(n-4)-(a(n-2)+a(n-3))` with `a(0)=1, a(1)=2, a(2)=5, a(3)=2`
-/

namespace A121311.P17806198234117549125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 2] fun n a =>
  a (n - 4) - (a (n - 2) + a (n - 3))

end

end A121311.P17806198234117549125

namespace A121311

/-- `a(n-4)-(a(n-2)+a(n-3))` -/
def P17806198234117549125.Spec : Prop :=
  ∀ n, P17806198234117549125.a n = A121311 n

end A121311

/-! ## A121311.P7625182716660082737

`a(n-4)-a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=2`
-/

namespace A121311.P7625182716660082737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 2] fun n a =>
  a (n - 4) - a (n - 2) - a (n - 3)

end

end A121311.P7625182716660082737

namespace A121311

/-- `a(n-4)-a(n-2)-a(n-3)` -/
def P7625182716660082737.Spec : Prop :=
  ∀ n, P7625182716660082737.a n = A121311 n

end A121311

/-!
# A121312: Number of pairs of probabilistically independent subsets in a set composed of n elements.

The programs for A121312, there is no canonical definition to state claims against.
-/

/-! ## A121312.P10183815328561292738

`A340135(n)+A173033(n)`
-/

namespace A121312.P10183815328561292738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340135 n + A173033 n

end

end A121312.P10183815328561292738

/-! ## A121312.P9446956494787187407

`A340135(n)+A023758(∑[n+2])`
-/

namespace A121312.P9446956494787187407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340135 n + A023758 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121312.P9446956494787187407

/-! ## A121312.P12652864895026849514

`A340135(n)+A000203(A003945(n))`
-/

namespace A121312.P12652864895026849514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340135 n + A000203 (A003945 n).toNat

end

end A121312.P12652864895026849514

/-! ## A121312.P13147696126370629893

`A340135(n)+A000203(record[A164073(n+1)])`
-/

namespace A121312.P13147696126370629893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340135 n + A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A121312.P13147696126370629893

/-! ## A121312.P4926240021671027932

`A340135(n)+A008574(A000225(n))`
-/

namespace A121312.P4926240021671027932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340135 n + A008574 (A000225 n).toNat

end

end A121312.P4926240021671027932

/-!
# A121314: Triangle T(n,k), 0 <= k <= n, read by rows given by [0, 1, 0, 0, 0, 0, ...] DELTA [1, 0, 1, 0, 0, 0, 0, 0, 0, 0, ...] where DELTA is the operator defined in A084938.

The programs for A121314, the canonical program `A121314.P5912152767662340236` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121314 has offset 0).

The definition of A121314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121314.P5912152767662340236

`C(A051162(A056943(n)), 2*A025581(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121314

/-- `C(A051162(A056943(n)), 2*A025581(n))` -/
def P5912152767662340236.Spec : Prop :=
  ∀ n, (P5912152767662340236.a n : ℤ) = A121314 n

theorem P5912152767662340236.correct : P5912152767662340236.Spec := by
  intro n
  simp only [A121314]

end A121314

/-! ## A121314.P4738142012431391276

`A054142(n+1)+A054142(n)-A172431(n+2)`
-/

namespace A121314.P4738142012431391276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 (n + 1) + (A054142 n - A172431 (n + 2))

end

end A121314.P4738142012431391276

namespace A121314

/-- `A054142(n+1)+A054142(n)-A172431(n+2)` -/
def P4738142012431391276.Spec : Prop :=
  ∀ n, P4738142012431391276.a n = A121314 n

end A121314

/-! ## A121314.P9060906741427372803

`A165253(A061579(n))`
-/

namespace A121314.P9060906741427372803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165253 (A061579 n).toNat

end

end A121314.P9060906741427372803

namespace A121314

/-- `A165253(A061579(n))` -/
def P9060906741427372803.Spec : Prop :=
  ∀ n, P9060906741427372803.a n = A121314 n

end A121314

/-! ## A121314.P4418131461641317823

`A165253(A038722(n+1)-1)`
-/

namespace A121314.P4418131461641317823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165253 (A038722 (n + 1) - 1).toNat

end

end A121314.P4418131461641317823

namespace A121314

/-- `A165253(A038722(n+1)-1)` -/
def P4418131461641317823.Spec : Prop :=
  ∀ n, P4418131461641317823.a n = A121314 n

end A121314

/-! ## A121314.P12035126955261535796

`A165253((n²+n)%A007401(n+2))`
-/

namespace A121314.P12035126955261535796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165253 (Int.tmod (n ^ 2 + n : ℤ) (A007401 (n + 2))).toNat

end

end A121314.P12035126955261535796

namespace A121314

/-- `A165253((n²+n)%A007401(n+2))` -/
def P12035126955261535796.Spec : Prop :=
  ∀ n, P12035126955261535796.a n = A121314 n

end A121314

/-! ## A121314.P9991582722787911710

`A165253(A038722(n+2))`
-/

namespace A121314.P9991582722787911710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165253 (A038722 (n + 2)).toNat

end

end A121314.P9991582722787911710

namespace A121314

/-- `A165253(A038722(n+2))` -/
def P9991582722787911710.Spec : Prop :=
  ∀ n, P9991582722787911710.a n = A121314 n

end A121314

/-! ## A121314.P17627423960799300207

`A054142(n)-A128908(A038722(n+2))`
-/

namespace A121314.P17627423960799300207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 n - A128908 (A038722 (n + 2)).toNat

end

end A121314.P17627423960799300207

namespace A121314

/-- `A054142(n)-A128908(A038722(n+2))` -/
def P17627423960799300207.Spec : Prop :=
  ∀ n, P17627423960799300207.a n = A121314 n

end A121314

/-! ## A121314.P12140482527154904129

`A103631(A185868(n+1)-1)`
-/

namespace A121314.P12140482527154904129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (A185868 (n + 1) - 1).toNat

end

end A121314.P12140482527154904129

namespace A121314

/-- `A103631(A185868(n+1)-1)` -/
def P12140482527154904129.Spec : Prop :=
  ∀ n, P12140482527154904129.a n = A121314 n

end A121314

/-!
# A121315: Products of two consecutive prime powers.

The programs for A121315, the canonical program `A121315.P10392602224709161572` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121315 has offset 1).

The definition of A121315 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A121315.P10392602224709161572

`A000961(n+1)*A000961(n+2)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A121315

/-- `A000961(n+1)*A000961(n+2)` -/
def P10392602224709161572.Spec : Prop :=
  ∀ n, P10392602224709161572.a n = A121315 (n + 1)

theorem P10392602224709161572.correct : P10392602224709161572.Spec := by
  intro n
  simp only [A121315, Nat.add_sub_cancel]

end A121315

/-! ## A121315.P7145524778019962166

`lcm(A000961(n+1), A246655(n+1))`
-/

namespace A121315.P7145524778019962166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000961 (n + 1)) (A246655 (n + 1))

end

end A121315.P7145524778019962166

namespace A121315

/-- `lcm(A000961(n+1), A246655(n+1))` -/
def P7145524778019962166.Spec : Prop :=
  ∀ n, (P7145524778019962166.a n : ℤ) = A121315 (n + 1)

end A121315

/-! ## A121315.P5552378644220078906

`sqrt(A056798(n+1))*A246655(n+1)`
-/

namespace A121315.P5552378644220078906
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056798 (n + 1) : ℝ) * (A246655 (n + 1) : ℝ)

end

end A121315.P5552378644220078906

namespace A121315

/-- `sqrt(A056798(n+1))*A246655(n+1)` -/
def P5552378644220078906.Spec : Prop :=
  ∀ n, P5552378644220078906.a n = (A121315 (n + 1) : ℝ)

end A121315

/-! ## A121315.P15146506249396157521

`(A181062(n+1)+1)*A246655(n+1)`
-/

namespace A121315.P15146506249396157521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A181062 (n + 1) + 1) * A246655 (n + 1)

end

end A121315.P15146506249396157521

namespace A121315

/-- `(A181062(n+1)+1)*A246655(n+1)` -/
def P15146506249396157521.Spec : Prop :=
  ∀ n, P15146506249396157521.a n = A121315 (n + 1)

theorem P15146506249396157521.correct : P15146506249396157521.Spec := by
  intro n
  simp only [A121315, Nat.add_sub_cancel, A121315.P15146506249396157521.a, A121315.P10392602224709161572.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A181062, A181062.P6529548857799504333.a, A246655, A246655.P2302191067120461210.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A121315

/-! ## A121315.P15727553327600414851

`A138929(n+1)/2*A246655(n+1)`
-/

namespace A121315.P15727553327600414851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138929 (n + 1) : ℚ) / 2 * (A246655 (n + 1) : ℚ)

end

end A121315.P15727553327600414851

namespace A121315

/-- `A138929(n+1)/2*A246655(n+1)` -/
def P15727553327600414851.Spec : Prop :=
  ∀ n, P15727553327600414851.a n = (A121315 (n + 1) : ℚ)

theorem P15727553327600414851.correct : P15727553327600414851.Spec := by
  intro n
  simp only [A121315, Nat.add_sub_cancel, A121315.P15727553327600414851.a, A121315.P10392602224709161572.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A138929, A138929.P2871587686834618281.a, A246655, A246655.P2302191067120461210.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A121315

/-! ## A121315.P10821200907087647221

`(A181062(n+1)+1)*∑[A275120(n+1)]`
-/

namespace A121315.P10821200907087647221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A181062 (n + 1) + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121315.P10821200907087647221

namespace A121315

/-- `(A181062(n+1)+1)*∑[A275120(n+1)]` -/
def P10821200907087647221.Spec : Prop :=
  ∀ n, P10821200907087647221.a n = A121315 (n + 1)

end A121315

/-! ## A121315.P5120154456885143491

`A138929(n+1)/2*∑[A275120(n+1)]`
-/

namespace A121315.P5120154456885143491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275120 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138929 (n + 1) : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A121315.P5120154456885143491

namespace A121315

/-- `A138929(n+1)/2*∑[A275120(n+1)]` -/
def P5120154456885143491.Spec : Prop :=
  ∀ n, P5120154456885143491.a n = (A121315 (n + 1) : ℚ)

end A121315

/-! ## A121315.P10298918866887209640

`lcm(A246655(n+1), A246655(A028310(n)))`
-/

namespace A121315.P10298918866887209640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A246655 (n + 1)) (A246655 (A028310 n).toNat)

end

end A121315.P10298918866887209640

namespace A121315

/-- `lcm(A246655(n+1), A246655(A028310(n)))` -/
def P10298918866887209640.Spec : Prop :=
  ∀ n, (P10298918866887209640.a n : ℤ) = A121315 (n + 1)

end A121315

/-! ## A121315.P3750680694255385251

`(A246655(n+1)-A057820(n+1))*A246655(n+1)`
-/

namespace A121315.P3750680694255385251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A246655 (n + 1) - A057820 (n + 1)) * A246655 (n + 1)

end

end A121315.P3750680694255385251

namespace A121315

/-- `(A246655(n+1)-A057820(n+1))*A246655(n+1)` -/
def P3750680694255385251.Spec : Prop :=
  ∀ n, P3750680694255385251.a n = A121315 (n + 1)

theorem P3750680694255385251.correct : P3750680694255385251.Spec := by
  intro n
  simp only [A121315, Nat.add_sub_cancel, A121315.P3750680694255385251.a, A121315.P10392602224709161572.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A057820, A057820.P915405789854175386.a, A246655, A246655.P2302191067120461210.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A121315

/-! ## A121315.P16344115070127408600

`(A309269(n+1)-A246655(n+1))*A246655(n+1)`
-/

namespace A121315.P16344115070127408600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A309269 (n + 1) - A246655 (n + 1)) * A246655 (n + 1)

end

end A121315.P16344115070127408600

namespace A121315

/-- `(A309269(n+1)-A246655(n+1))*A246655(n+1)` -/
def P16344115070127408600.Spec : Prop :=
  ∀ n, P16344115070127408600.a n = A121315 (n + 1)

theorem P16344115070127408600.correct : P16344115070127408600.Spec := by
  intro n
  simp only [A121315, Nat.add_sub_cancel, A121315.P16344115070127408600.a, A121315.P10392602224709161572.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A246655, A246655.P2302191067120461210.a, A309269, A309269.P6439327140874271105.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A121315

/-! ## A121315.P17900653072780400405

`(lt[A001221(n+1), 2]+1)*record[(n+2)/A001221(2*n-(n-2))]`
-/

namespace A121315.P17900653072780400405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A001221 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℚ) * f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

end

end A121315.P17900653072780400405

namespace A121315

/-- `(lt[A001221(n+1), 2]+1)*record[(n+2)/A001221(2*n-(n-2))]` -/
def P17900653072780400405.Spec : Prop :=
  ∀ n, P17900653072780400405.a n = (A121315 (n + 1) : ℚ)

end A121315

/-! ## A121315.P11459346383283078188

`(lt[A001221(n+1), 2]+1)*record[A020639(n+2)^A001222(n+2)]`
-/

namespace A121315.P11459346383283078188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 2) : ℚ) ^ (A001222 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℚ) * f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

end

end A121315.P11459346383283078188

namespace A121315

/-- `(lt[A001221(n+1), 2]+1)*record[A020639(n+2)^A001222(n+2)]` -/
def P11459346383283078188.Spec : Prop :=
  ∀ n, P11459346383283078188.a n = (A121315 (n + 1) : ℚ)

end A121315

/-! ## A121315.P16124477484499742507

`(eq[1, A001221(n+1)]+1)*(lt[A001221(n+1), 2]+1)`
-/

namespace A121315.P16124477484499742507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) * (SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 1)

end

end A121315.P16124477484499742507

namespace A121315

/-- `(eq[1, A001221(n+1)]+1)*(lt[A001221(n+1), 2]+1)` -/
def P16124477484499742507.Spec : Prop :=
  ∀ n, (P16124477484499742507.a n : ℤ) = A121315 (n + 1)

end A121315

/-! ## A121315.P1155180225710066013

`record[A000015(n+2)*A136623(n+2)]`
-/

namespace A121315.P1155180225710066013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 2) * A136623 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121315.P1155180225710066013

namespace A121315

/-- `record[A000015(n+2)*A136623(n+2)]` -/
def P1155180225710066013.Spec : Prop :=
  ∀ n, P1155180225710066013.a n = A121315 (n + 1)

end A121315

/-! ## A121315.P7314175486787307615

`record[A076388(n+1)+1]*A246655(n+1)`
-/

namespace A121315.P7314175486787307615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076388 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A246655 (n + 1)

end

end A121315.P7314175486787307615

namespace A121315

/-- `record[A076388(n+1)+1]*A246655(n+1)` -/
def P7314175486787307615.Spec : Prop :=
  ∀ n, P7314175486787307615.a n = A121315 (n + 1)

end A121315

/-!
# A121316: Unlabeled version of A055203: number of different relations between n intervals (of nonzero length) on a line, up to permutation of intervals.

The programs for A121316, there is no canonical definition to state claims against.
-/

/-! ## A121316.P16258750884259986759

`ceil(A121227(n)/2)`
-/

namespace A121316.P16258750884259986759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A121227 n : ℚ) / 2⌉

end

end A121316.P16258750884259986759

/-! ## A121316.P14370098815179495814

`A121227(A028310(n))/2`
-/

namespace A121316.P14370098815179495814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121227 (A028310 n).toNat : ℚ) / 2

end

end A121316.P14370098815179495814

/-! ## A121316.P12716669630360886952

`A121227(n)/A151963(A292032(n))`
-/

namespace A121316.P12716669630360886952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121227 n : ℚ) / (A151963 (A292032 n).toNat : ℚ)

end

end A121316.P12716669630360886952

/-! ## A121316.P12301552030306297136

`A121227(n)/A034444(A034444(n+1))`
-/

namespace A121316.P12301552030306297136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121227 n : ℚ) / (A034444 (A034444 (n + 1)).toNat : ℚ)

end

end A121316.P12301552030306297136

/-! ## A121316.P9870628396194318774

`A121227(n)/A009205(A333200(n+1))`
-/

namespace A121316.P9870628396194318774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121227 n : ℚ) / (A009205 (A333200 (n + 1)).toNat : ℚ)

end

end A121316.P9870628396194318774

/-! ## A121316.P15242733777658057263

`A121227(n)/A009205(A020482(n+2))`
-/

namespace A121316.P15242733777658057263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121227 n : ℚ) / (A009205 (A020482 (n + 2)).toNat : ℚ)

end

end A121316.P15242733777658057263

/-! ## A121316.P7752805275137765553

`A011782(n)/A011782(n+1)*A121227(n)`
-/

namespace A121316.P7752805275137765553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n : ℚ) / (A011782 (n + 1) : ℚ) * (A121227 n : ℚ)

end

end A121316.P7752805275137765553

/-!
# A121317: Minimum molecular topological index for alkane trees with n vertices.

The programs for A121317, there is no canonical definition to state claims against.
-/

/-! ## A121317.P11922469503455357016

`A318584(A046092(n))+(2*n)²`
-/

namespace A121317.P11922469503455357016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318584 (A046092 n).toNat + ((2 * n) ^ 2 : ℤ)

end

end A121317.P11922469503455357016

/-! ## A121317.P4168925723143668073

`∑[3*lt[n, A000005(A143608(n)+1)]]+n²`
-/

namespace A121317.P4168925723143668073
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A143608 n + 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2

end

end A121317.P4168925723143668073

/-! ## A121317.P8765375549209037798

`A261652(n)-A067824(A096101(n+1))`
-/

namespace A121317.P8765375549209037798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261652 n - A067824 (A096101 (n + 1)).toNat

end

end A121317.P8765375549209037798

/-!
# A121318: Molecular topological indices of the path graphs P_n.

The programs for A121318, the canonical program `A121318.P6154366513792279252` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121318 has offset 1).

The definition of A121318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121318.P6154366513792279252

`record[lcm(2, n)]+∑[2*n²]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121318

/-- `record[lcm(2, n)]+∑[2*n²]` -/
def P6154366513792279252.Spec : Prop :=
  ∀ n, (P6154366513792279252.a n : ℤ) = A121318 (n + 1)

theorem P6154366513792279252.correct : P6154366513792279252.Spec := by
  intro n
  simp only [A121318, Nat.add_sub_cancel]

end A121318

/-! ## A121318.P1948128923179709471

`a(n-1)+2*(n²+2)` with `a(0)=0, a(1)=4`
-/

namespace A121318.P1948128923179709471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 1) + 2 * (n ^ 2 + 2)

end

end A121318.P1948128923179709471

namespace A121318

/-- `a(n-1)+2*(n²+2)` -/
def P1948128923179709471.Spec : Prop :=
  ∀ n, (P1948128923179709471.a n : ℤ) = A121318 (n + 1)

end A121318

/-! ## A121318.P17752952010746719579

`2*n*n+a(n-1)+4` with `a(0)=0, a(1)=4`
-/

namespace A121318.P17752952010746719579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  2 * (n * n) + (a (n - 1) + 4)

end

end A121318.P17752952010746719579

namespace A121318

/-- `2*n*n+a(n-1)+4` -/
def P17752952010746719579.Spec : Prop :=
  ∀ n, (P17752952010746719579.a n : ℤ) = A121318 (n + 1)

end A121318

/-! ## A121318.P14392237039769841424

`∑[(n+1)²]+a(n-1)/2` with `a(0)=0, a(1)=4`
-/

namespace A121318.P14392237039769841424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 4] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + a (n - 1) / 2

end

end A121318.P14392237039769841424

namespace A121318

/-- `∑[(n+1)²]+a(n-1)/2` -/
def P14392237039769841424.Spec : Prop :=
  ∀ n, P14392237039769841424.a n = (A121318 (n + 1) : ℚ)

end A121318

/-! ## A121318.P350297606066566677

`record[2*n/gcd(2, n)²]+∑[2*n²]`
-/

namespace A121318.P350297606066566677
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (Nat.gcd 2 n ^ 2 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A121318.P350297606066566677

namespace A121318

/-- `record[2*n/gcd(2, n)²]+∑[2*n²]` -/
def P350297606066566677.Spec : Prop :=
  ∀ n, P350297606066566677.a n = (A121318 (n + 1) : ℚ)

end A121318

/-! ## A121318.P7034949696930083564

`2*(A004273(n)+∑[n²])`
-/

namespace A121318.P7034949696930083564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A004273 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A121318.P7034949696930083564

namespace A121318

/-- `2*(A004273(n)+∑[n²])` -/
def P7034949696930083564.Spec : Prop :=
  ∀ n, P7034949696930083564.a n = A121318 (n + 1)

end A121318

/-! ## A121318.P15324362119783954282

`A130824(n)+A006331(n)`
-/

namespace A121318.P15324362119783954282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n + A006331 n

end

end A121318.P15324362119783954282

namespace A121318

/-- `A130824(n)+A006331(n)` -/
def P15324362119783954282.Spec : Prop :=
  ∀ n, P15324362119783954282.a n = A121318 (n + 1)

end A121318

/-! ## A121318.P5316918190500272162

`A130824(n)+2*A000330(n)`
-/

namespace A121318.P5316918190500272162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n + 2 * A000330 n

end

end A121318.P5316918190500272162

namespace A121318

/-- `A130824(n)+2*A000330(n)` -/
def P5316918190500272162.Spec : Prop :=
  ∀ n, P5316918190500272162.a n = A121318 (n + 1)

end A121318

/-! ## A121318.P12263191593656370420

`2*(A283551(n)+A003600(n))`
-/

namespace A121318.P12263191593656370420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A283551 n + A003600 n)

end

end A121318.P12263191593656370420

namespace A121318

/-- `2*(A283551(n)+A003600(n))` -/
def P12263191593656370420.Spec : Prop :=
  ∀ n, P12263191593656370420.a n = A121318 (n + 1)

end A121318

/-! ## A121318.P1583668023880864444

`∑[A001105(n)]+2*A004273(n)`
-/

namespace A121318.P1583668023880864444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A004273 n

end

end A121318.P1583668023880864444

namespace A121318

/-- `∑[A001105(n)]+2*A004273(n)` -/
def P1583668023880864444.Spec : Prop :=
  ∀ n, P1583668023880864444.a n = A121318 (n + 1)

end A121318

/-! ## A121318.P3409893520136045379

`∑[∑[4*n-2%A000041(n)]]`
-/

namespace A121318.P3409893520136045379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - Int.tmod 2 (A000041 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121318.P3409893520136045379

namespace A121318

/-- `∑[∑[4*n-2%A000041(n)]]` -/
def P3409893520136045379.Spec : Prop :=
  ∀ n, P3409893520136045379.a n = A121318 (n + 1)

end A121318

/-! ## A121318.P3565086121485630882

`A004275(2*n)+∑[2*n²]`
-/

namespace A121318.P3565086121485630882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (2 * n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A121318.P3565086121485630882

namespace A121318

/-- `A004275(2*n)+∑[2*n²]` -/
def P3565086121485630882.Spec : Prop :=
  ∀ n, P3565086121485630882.a n = A121318 (n + 1)

end A121318

/-! ## A121318.P9593633084709262257

`A006331(n)+record[A064680(n)]`
-/

namespace A121318.P9593633084709262257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121318.P9593633084709262257

namespace A121318

/-- `A006331(n)+record[A064680(n)]` -/
def P9593633084709262257.Spec : Prop :=
  ∀ n, P9593633084709262257.a n = A121318 (n + 1)

end A121318

/-! ## A121318.P1502413138858286382

`A006331(n)+A004275(2*n)`
-/

namespace A121318.P1502413138858286382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n + A004275 (2 * n)

end

end A121318.P1502413138858286382

namespace A121318

/-- `A006331(n)+A004275(2*n)` -/
def P1502413138858286382.Spec : Prop :=
  ∀ n, P1502413138858286382.a n = A121318 (n + 1)

end A121318

/-! ## A121318.P8900967424994473984

`A004277(A004277(n))+A006331(n)-2`
-/

namespace A121318.P8900967424994473984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A004277 n).toNat + (A006331 n - 2)

end

end A121318.P8900967424994473984

namespace A121318

/-- `A004277(A004277(n))+A006331(n)-2` -/
def P8900967424994473984.Spec : Prop :=
  ∀ n, P8900967424994473984.a n = A121318 (n + 1)

end A121318

/-! ## A121318.P15321516083238149973

`A266595(2*n)+∑[2*n²]`
-/

namespace A121318.P15321516083238149973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266595 (2 * n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A121318.P15321516083238149973

namespace A121318

/-- `A266595(2*n)+∑[2*n²]` -/
def P15321516083238149973.Spec : Prop :=
  ∀ n, P15321516083238149973.a n = A121318 (n + 1)

end A121318

/-! ## A121318.P15779720049887210361

`A267354(2*n)+∑[2*n²]`
-/

namespace A121318.P15779720049887210361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267354 (2 * n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A121318.P15779720049887210361

namespace A121318

/-- `A267354(2*n)+∑[2*n²]` -/
def P15779720049887210361.Spec : Prop :=
  ∀ n, P15779720049887210361.a n = A121318 (n + 1)

end A121318

/-! ## A121318.P5727231951571455242

`A006584(2*n+1)+2*A289207(2*n+1)`
-/

namespace A121318.P5727231951571455242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006584 (2 * n + 1) + 2 * A289207 (2 * n + 1)

end

end A121318.P5727231951571455242

namespace A121318

/-- `A006584(2*n+1)+2*A289207(2*n+1)` -/
def P5727231951571455242.Spec : Prop :=
  ∀ n, P5727231951571455242.a n = A121318 (n + 1)

end A121318

/-!
# A121320: Number of vertices in all ordered (plane) trees with n edges that are at distance two from all the leaves above them.

The programs for A121320, there is no canonical definition to state claims against.
-/

/-! ## A121320.P11627697129013727226

`A070098(or(A148804(n), A323155(n+1)))`
-/

namespace A121320.P11627697129013727226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070098 (Int.lor (A148804 n) (A323155 (n + 1))).toNat

end

end A121320.P11627697129013727226

/-! ## A121320.P7064177768562264394

`A071841(A150245(n))`
-/

namespace A121320.P7064177768562264394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071841 (A150245 n).toNat

end

end A121320.P7064177768562264394

/-! ## A121320.P16229292025410549962

`A230418(A008932(n))-1`
-/

namespace A121320.P16229292025410549962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230418 (A008932 n).toNat - 1

end

end A121320.P16229292025410549962

/-! ## A121320.P10406782555957261629

`A008676(abs(A304521(2*(n+1))-3))`
-/

namespace A121320.P10406782555957261629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 |A304521 (2 * (n + 1)) - 3|.toNat

end

end A121320.P10406782555957261629

/-!
# A121321: Numbers k such that every digit occurs at least once in k^4.

The programs for A121321, there is no canonical definition to state claims against.
-/

/-! ## A121321.P47879626021001223

`sqrt(A190682(n+1))`
-/

namespace A121321.P47879626021001223
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A190682 (n + 1) : ℝ)

end

end A121321.P47879626021001223

/-! ## A121321.P1325538076140641910

`root(A190682(n+1), A020639(6*(n+3)))`
-/

namespace A121321.P1325538076140641910
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A190682 (n + 1) : ℝ) ^ (1 / (A020639 (6 * (n + 3)) : ℝ))

end

end A121321.P1325538076140641910

/-! ## A121321.P5809712235615173916

`root(A190682(n+1), 2%A031969(n+1))`
-/

namespace A121321.P5809712235615173916
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A190682 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A031969 (n + 1)) : ℝ))

end

end A121321.P5809712235615173916

/-! ## A121321.P2807877472315667853

`root(A190682(n+1), A001316(A001316(n)))`
-/

namespace A121321.P2807877472315667853
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A190682 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A121321.P2807877472315667853

/-! ## A121321.P10996265711382542955

`root(A190682(n+1), A141310(A141310(2*n)))`
-/

namespace A121321.P10996265711382542955
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A190682 (n + 1) : ℝ) ^ (1 / (A141310 (A141310 (2 * n)).toNat : ℝ))

end

end A121321.P10996265711382542955

/-!
# A121323: a(n) = (2*n+1)*a(n-1) - a(n-2) starting a(0)=0, a(1)=1.

The programs for A121323, the canonical program `A121323.P15468428802319259560` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121323 has offset 0).

The definition of A121323 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*a(n-1)-a(n-2)` (program `A121323.P15468428802319259560`, by `A121323.P15468428802319259560.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121323.P15468428802319259560

`(2*n+1)*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121323

/-- `(2*n+1)*a(n-1)-a(n-2)` -/
def P15468428802319259560.Spec : Prop :=
  ∀ n, P15468428802319259560.a n = A121323 n

theorem P15468428802319259560.correct : P15468428802319259560.Spec := by
  intro n
  simp only [A121323]

end A121323

/-! ## A121323.P9365193135067014239

`a(n-1)*Δ[n²]-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A121323.P9365193135067014239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - a (n - 2)

end

end A121323.P9365193135067014239

namespace A121323

/-- `a(n-1)*Δ[n²]-a(n-2)` -/
def P9365193135067014239.Spec : Prop :=
  ∀ n, P9365193135067014239.a n = A121323 n

end A121323

/-! ## A121323.P4852380565754895303

`2*n*a(n-1)-(a(n-2)-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A121323.P4852380565754895303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * ((n : ℤ) * a (n - 1)) - (a (n - 2) - a (n - 1))

end

end A121323.P4852380565754895303

namespace A121323

/-- `2*n*a(n-1)-(a(n-2)-a(n-1))` -/
def P4852380565754895303.Spec : Prop :=
  ∀ n, P4852380565754895303.a n = A121323 n

theorem P4852380565754895303.correct : P4852380565754895303.Spec := by
  intro n
  simp only [A121323, Nat.add_sub_cancel, A121323.P4852380565754895303.a, A121323.P15468428802319259560.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A121323

/-! ## A121323.P6278892930649424012

`A053984(n+1)-A053983(n+1)`
-/

namespace A121323.P6278892930649424012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053984 (n + 1) - A053983 (n + 1)

end

end A121323.P6278892930649424012

namespace A121323

/-- `A053984(n+1)-A053983(n+1)` -/
def P6278892930649424012.Spec : Prop :=
  ∀ n, P6278892930649424012.a n = A121323 n

end A121323

/-! ## A121323.P12500455099704911743

`A053983(n+1)-A257859(n+1)`
-/

namespace A121323.P12500455099704911743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053983 (n + 1) - A257859 (n + 1)

end

end A121323.P12500455099704911743

namespace A121323

/-- `A053983(n+1)-A257859(n+1)` -/
def P12500455099704911743.Spec : Prop :=
  ∀ n, P12500455099704911743.a n = A121323 n

end A121323

/-! ## A121323.P16358370863305759575

`2*A053984(n+1)-A242227(n+1)`
-/

namespace A121323.P16358370863305759575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053984 (n + 1) - A242227 (n + 1)

end

end A121323.P16358370863305759575

namespace A121323

/-- `2*A053984(n+1)-A242227(n+1)` -/
def P16358370863305759575.Spec : Prop :=
  ∀ n, P16358370863305759575.a n = A121323 n

end A121323

/-! ## A121323.P13680626767377624112

`A242227(n+1)-2*A053983(n+1)`
-/

namespace A121323.P13680626767377624112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242227 (n + 1) - 2 * A053983 (n + 1)

end

end A121323.P13680626767377624112

namespace A121323

/-- `A242227(n+1)-2*A053983(n+1)` -/
def P13680626767377624112.Spec : Prop :=
  ∀ n, P13680626767377624112.a n = A121323 n

end A121323

/-! ## A121323.P2079066669948503708

`(A053984(n+1)-A257859(n+1))/2`
-/

namespace A121323.P2079066669948503708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053984 (n + 1) - A257859 (n + 1) : ℚ) / 2

end

end A121323.P2079066669948503708

namespace A121323

/-- `(A053984(n+1)-A257859(n+1))/2` -/
def P2079066669948503708.Spec : Prop :=
  ∀ n, P2079066669948503708.a n = (A121323 n : ℚ)

end A121323

/-!
# A121324: Number of digits in quotient {R_(n*R_n)}/(R_n)^2, where R_n=A002275(n),n*R_n=A053422(n).

The programs for A121324, there is no canonical definition to state claims against.
-/

/-! ## A121324.P3764045086610977528

`record[A091693(n)-2*n]`
-/

namespace A121324.P3764045086610977528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091693 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121324.P3764045086610977528

/-! ## A121324.P12099011650414127535

`record[A053422(n)+1-2*n]`
-/

namespace A121324.P12099011650414127535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053422 n + (1 - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121324.P12099011650414127535

/-! ## A121324.P4999449530325676781

`(n+1)*A285612(2*n)-n`
-/

namespace A121324.P4999449530325676781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285612 (2 * n) - (n : ℤ)

end

end A121324.P4999449530325676781

/-! ## A121324.P18006277655777236432

`record[A053422(A142150(n))+1-n]`
-/

namespace A121324.P18006277655777236432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053422 (A142150 n).toNat + 1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121324.P18006277655777236432

/-! ## A121324.P14805315584234439200

`A000042(n+1)*A254667(n+1)-A005408(n)`
-/

namespace A121324.P14805315584234439200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) * A254667 (n + 1) - A005408 n

end

end A121324.P14805315584234439200

/-!
# A121325: Irregular triangle read by rows in which the n-th row gives the prime factors of 4*n^2 + 1 with repetition.

The programs for A121325, there is no canonical definition to state claims against.
-/

/-! ## A121325.P14956727936878867065

`p?[A206738(n)*A281793(n)]`
-/

namespace A121325.P14956727936878867065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206738 n * A281793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121325.P14956727936878867065

/-! ## A121325.P7126970785002804200

`A006530((A169884(n+1)+2)^4-1)`
-/

namespace A121325.P7126970785002804200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((A169884 (n + 1) + 2) ^ 4 - 1).toNat

end

end A121325.P7126970785002804200

/-!
# A121326: Primes of the form 4*k^2 + 1.

The programs for A121326, the canonical program `A121326.P7190985811209929169` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121326 has offset 1).

The definition of A121326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121326.P10027814850206605337

`∑[A193558(n+1)]+2`
-/

namespace A121326.P10027814850206605337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A121326.P10027814850206605337

namespace A121326

/-- `∑[A193558(n+1)]+2` -/
def P10027814850206605337.Spec : Prop :=
  ∀ n, P10027814850206605337.a n = A121326 (n + 1)

end A121326

/-! ## A121326.P10359996428512767624

`(2*A001912(n+1))²+1`
-/

namespace A121326.P10359996428512767624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A001912 (n + 1)) ^ 2 + 1

end

end A121326.P10359996428512767624

namespace A121326

/-- `(2*A001912(n+1))²+1` -/
def P10359996428512767624.Spec : Prop :=
  ∀ n, P10359996428512767624.a n = A121326 (n + 1)

end A121326

/-! ## A121326.P7850042286856770602

`A193558(n+1)+A002496(n+1)`
-/

namespace A121326.P7850042286856770602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193558 (n + 1) + A002496 (n + 1)

end

end A121326.P7850042286856770602

namespace A121326

/-- `A193558(n+1)+A002496(n+1)` -/
def P7850042286856770602.Spec : Prop :=
  ∀ n, P7850042286856770602.a n = A121326 (n + 1)

theorem P7850042286856770602.correct : P7850042286856770602.Spec := by
  intro n
  simp only [A121326, Nat.add_sub_cancel, A121326.P7850042286856770602.a, A121326.P7190985811209929169.a, A002496, A002496.P13667531374760205001.a, A009005, A009005.P4556890301061570360.a, A054964, A054964.P645230808875844543.f1, A054964.P645230808875844543.a, A193558, A193558.P5296547298766818004.a, A002522, A002522.P3778392011853271743.a, A333167, A333167.P7830250556896041600.a, A333169, A333169.P11111623842642408816.a, A000010, A000010.P4673923239450215316.a, A105397, A105397.P12786109591907576801.a, A193432, A193432.P8452424332635996808.a, A000005, A000005.P16091521709108585461.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A121326

/-! ## A121326.P15139144864087172695

`A193558(n+1)+A075408(n+1)+1`
-/

namespace A121326.P15139144864087172695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193558 (n + 1) + (A075408 (n + 1) + 1)

end

end A121326.P15139144864087172695

namespace A121326

/-- `A193558(n+1)+A075408(n+1)+1` -/
def P15139144864087172695.Spec : Prop :=
  ∀ n, P15139144864087172695.a n = A121326 (n + 1)

theorem P15139144864087172695.correct : P15139144864087172695.Spec := by
  intro n
  simp only [A121326, Nat.add_sub_cancel, A121326.P15139144864087172695.a, A121326.P7190985811209929169.a, A009005, A009005.P4556890301061570360.a, A054964, A054964.P645230808875844543.f1, A054964.P645230808875844543.a, A075408, A075408.P15345791535842021127.a, A193558, A193558.P5296547298766818004.a, A002496, A002496.P13667531374760205001.a, A002522, A002522.P3778392011853271743.a, A333167, A333167.P7830250556896041600.a, A333169, A333169.P11111623842642408816.a, A000010, A000010.P4673923239450215316.a, A105397, A105397.P12786109591907576801.a, A193432, A193432.P8452424332635996808.a, A000005, A000005.P16091521709108585461.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A121326

/-! ## A121326.P5014134122286471112

`A193558(n+1)+(A089593(n+1)+1)²+1`
-/

namespace A121326.P5014134122286471112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193558 (n + 1) + ((A089593 (n + 1) + 1) ^ 2 + 1)

end

end A121326.P5014134122286471112

namespace A121326

/-- `A193558(n+1)+(A089593(n+1)+1)²+1` -/
def P5014134122286471112.Spec : Prop :=
  ∀ n, P5014134122286471112.a n = A121326 (n + 1)

end A121326

/-! ## A121326.P3382675600127961558

`A193558(n+1)+(A090693(n+1)-1)²+1`
-/

namespace A121326.P3382675600127961558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193558 (n + 1) + ((A090693 (n + 1) - 1) ^ 2 + 1)

end

end A121326.P3382675600127961558

namespace A121326

/-- `A193558(n+1)+(A090693(n+1)-1)²+1` -/
def P3382675600127961558.Spec : Prop :=
  ∀ n, P3382675600127961558.a n = A121326 (n + 1)

end A121326

/-! ## A121326.P329772582616043964

`A002496(n+2)`
-/

namespace A121326.P329772582616043964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 2)

end

end A121326.P329772582616043964

namespace A121326

/-- `A002496(n+2)` -/
def P329772582616043964.Spec : Prop :=
  ∀ n, P329772582616043964.a n = A121326 (n + 1)

end A121326

/-! ## A121326.P15030815019585982301

`A075408(n+2)+1`
-/

namespace A121326.P15030815019585982301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075408 (n + 2) + 1

end

end A121326.P15030815019585982301

namespace A121326

/-- `A075408(n+2)+1` -/
def P15030815019585982301.Spec : Prop :=
  ∀ n, P15030815019585982301.a n = A121326 (n + 1)

end A121326

/-! ## A121326.P4902444111154538895

`A005574(n+2)²+1`
-/

namespace A121326.P4902444111154538895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 2) ^ 2 + 1

end

end A121326.P4902444111154538895

namespace A121326

/-- `A005574(n+2)²+1` -/
def P4902444111154538895.Spec : Prop :=
  ∀ n, P4902444111154538895.a n = A121326 (n + 1)

end A121326

/-! ## A121326.P7190985811209929169

`A054964(A009005(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A121326

/-- `A054964(A009005(n+1))` -/
def P7190985811209929169.Spec : Prop :=
  ∀ n, P7190985811209929169.a n = A121326 (n + 1)

theorem P7190985811209929169.correct : P7190985811209929169.Spec := by
  intro n
  simp only [A121326, Nat.add_sub_cancel]

end A121326

/-! ## A121326.P5559439725147847233

`A090693(n+2)+A005574(n+2)*A089593(n+2)`
-/

namespace A121326.P5559439725147847233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 2) + A005574 (n + 2) * A089593 (n + 2)

end

end A121326.P5559439725147847233

namespace A121326

/-- `A090693(n+2)+A005574(n+2)*A089593(n+2)` -/
def P5559439725147847233.Spec : Prop :=
  ∀ n, P5559439725147847233.a n = A121326 (n + 1)

end A121326

/-! ## A121326.P4484641965686147347

`A163588(n+3)`
-/

namespace A121326.P4484641965686147347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163588 (n + 3)

end

end A121326.P4484641965686147347

namespace A121326

/-- `A163588(n+3)` -/
def P4484641965686147347.Spec : Prop :=
  ∀ n, P4484641965686147347.a n = A121326 (n + 1)

end A121326

/-! ## A121326.P15319894844282266479

`∩[A054754(n+1), A125557(n+1)]`
-/

namespace A121326.P15319894844282266479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121326.P15319894844282266479

namespace A121326

/-- `∩[A054754(n+1), A125557(n+1)]` -/
def P15319894844282266479.Spec : Prop :=
  ∀ n, (P15319894844282266479.a n : ℤ) = A121326 (n + 1)

end A121326

/-! ## A121326.P13232754024186750120

`∩[A054754(n+1), A206864(n+1)]`
-/

namespace A121326.P13232754024186750120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121326.P13232754024186750120

namespace A121326

/-- `∩[A054754(n+1), A206864(n+1)]` -/
def P13232754024186750120.Spec : Prop :=
  ∀ n, (P13232754024186750120.a n : ℤ) = A121326 (n + 1)

end A121326

/-! ## A121326.P6648004814363485103

`∩[A054755(n+1), A206864(n+1)]`
-/

namespace A121326.P6648004814363485103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121326.P6648004814363485103

namespace A121326

/-- `∩[A054755(n+1), A206864(n+1)]` -/
def P6648004814363485103.Spec : Prop :=
  ∀ n, (P6648004814363485103.a n : ℤ) = A121326 (n + 1)

end A121326

/-! ## A121326.P3031282283353940015

`∩[A054964(n+1), A206864(n+1)]`
-/

namespace A121326.P3031282283353940015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121326.P3031282283353940015

namespace A121326

/-- `∩[A054964(n+1), A206864(n+1)]` -/
def P3031282283353940015.Spec : Prop :=
  ∀ n, (P3031282283353940015.a n : ℤ) = A121326 (n + 1)

end A121326

/-! ## A121326.P12172711487513995300

`∩[A276460(n+1), A206864(n+1)]`
-/

namespace A121326.P12172711487513995300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121326.P12172711487513995300

namespace A121326

/-- `∩[A276460(n+1), A206864(n+1)]` -/
def P12172711487513995300.Spec : Prop :=
  ∀ n, (P12172711487513995300.a n : ℤ) = A121326 (n + 1)

end A121326

/-! ## A121326.P12380181333182918087

`record[A256970(n+1)]`
-/

namespace A121326.P12380181333182918087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121326.P12380181333182918087

namespace A121326

/-- `record[A256970(n+1)]` -/
def P12380181333182918087.Spec : Prop :=
  ∀ n, P12380181333182918087.a n = A121326 (n + 1)

end A121326

/-! ## A121326.P7833738897947602084

`A053755(A001912(n+1))`
-/

namespace A121326.P7833738897947602084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 (A001912 (n + 1)).toNat

end

end A121326.P7833738897947602084

namespace A121326

/-- `A053755(A001912(n+1))` -/
def P7833738897947602084.Spec : Prop :=
  ∀ n, P7833738897947602084.a n = A121326 (n + 1)

end A121326

/-! ## A121326.P11320925919868983115

`A053755(A005574(n+2)/2)`
-/

namespace A121326.P11320925919868983115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 (SequenceMachineLib.roundAway ((A005574 (n + 2) : ℚ) / 2)).toNat

end

end A121326.P11320925919868983115

namespace A121326

/-- `A053755(A005574(n+2)/2)` -/
def P11320925919868983115.Spec : Prop :=
  ∀ n, P11320925919868983115.a n = A121326 (n + 1)

end A121326

/-!
# A121327: Number of fused bicyclic skeletons with n carbon atoms (see Parks et al. for precise definition).

The programs for A121327, there is no canonical definition to state claims against.
-/

/-! ## A121327.P1663750228638093217

`A125671(n+4)-A121165(n+4)`
-/

namespace A121327.P1663750228638093217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125671 (n + 4) - A121165 (n + 4)

end

end A121327.P1663750228638093217

/-! ## A121327.P13426184209465251030

`and(A340764(Δ[4^n-3^n]^C(n, 5)!)-1, -n)`
-/

namespace A121327.P13426184209465251030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A340764 ((f1 (n + 1) - f1 n) ^ Nat.factorial (Nat.choose n 5)).toNat - 1) (-(n : ℤ))

end

end A121327.P13426184209465251030

/-!
# A121328: Number of bridged bicyclic skeletons with n carbon atoms (see Parks et al. for precise definition).

The programs for A121328, there is no canonical definition to state claims against.
-/

/-! ## A121328.P12378534658969285012

`A213219(A081881(n+1))+A046800(n)`
-/

namespace A121328.P12378534658969285012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213219 (A081881 (n + 1)).toNat + A046800 n

end

end A121328.P12378534658969285012

/-! ## A121328.P5919364098403335669

`A337698(n)+A335725(n+1)`
-/

namespace A121328.P5919364098403335669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337698 n + A335725 (n + 1)

end

end A121328.P5919364098403335669

/-! ## A121328.P9835225428006397087

`A052945(n)+A001221(A270670(n))`
-/

namespace A121328.P9835225428006397087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052945 n + A001221 (A270670 n).toNat

end

end A121328.P9835225428006397087

/-!
# A121329: Number of bridged bicyclic skeletons with n carbon atoms (see Parks et al. for precise definition).

The programs for A121329, there is no canonical definition to state claims against.
-/

/-! ## A121329.P17036538613615611358

`A302538(A097556(n)+n)`
-/

namespace A121329.P17036538613615611358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302538 (A097556 n + (n : ℤ)).toNat

end

end A121329.P17036538613615611358

/-!
# A121331: Number of bridged bicyclic skeletons with n carbon atoms (see Parks et al. for precise definition).

The programs for A121331, there is no canonical definition to state claims against.
-/

/-! ## A121331.P3868407554424348078

`A210357(A024495(n)+A017925(n))`
-/

namespace A121331.P3868407554424348078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A024495 n + A017925 n).toNat

end

end A121331.P3868407554424348078

/-! ## A121331.P18430959240651147927

`A024417(A330796(n+1))`
-/

namespace A121331.P18430959240651147927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A330796 (n + 1)).toNat

end

end A121331.P18430959240651147927

/-! ## A121331.P1443464560477163073

`A243283(A150155(n+1))`
-/

namespace A121331.P1443464560477163073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A150155 (n + 1)).toNat

end

end A121331.P1443464560477163073

/-!
# A121332: Number of bridged bicyclic skeletons with n carbon atoms (see Parks et al. for precise definition).

The programs for A121332, there is no canonical definition to state claims against.
-/

/-! ## A121332.P16096401431040378886

`∑[A137588(∑[A081113(n+1)])]`
-/

namespace A121332.P16096401431040378886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081113 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137588 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121332.P16096401431040378886

/-! ## A121332.P12464485777308184837

`A321378(A299106(n))+A001629(2*n)`
-/

namespace A121332.P12464485777308184837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321378 (A299106 n).toNat + A001629 (2 * n)

end

end A121332.P12464485777308184837

/-!
# A121333: Number of bridged bicyclic skeletons with n carbon atoms (see Parks et al. for precise definition).

The programs for A121333, there is no canonical definition to state claims against.
-/

/-! ## A121333.P4613946735915093930

`A260652(A170941(n))`
-/

namespace A121333.P4613946735915093930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260652 (A170941 n).toNat

end

end A121333.P4613946735915093930

/-! ## A121333.P9505677551874601793

`A345167(A114464(n))`
-/

namespace A121333.P9505677551874601793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A114464 n).toNat

end

end A121333.P9505677551874601793

/-! ## A121333.P3969980488293541037

`A385807(A099950(n))`
-/

namespace A121333.P3969980488293541037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385807 (A099950 n).toNat

end

end A121333.P3969980488293541037

/-!
# A121334: Triangle, read by rows, where T(n,k) = C( n*(n+1)/2 + n-k, n-k), for n>=k>=0.

The programs for A121334, the canonical program `A121334.P12871118839021292647` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121334 has offset 0).

The definition of A121334 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n)*(row(n)+1)/2+row(n)-col(n), row(n)-col(n))` (program `A121334.P12871118839021292647`, by `A121334.P12871118839021292647.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121334.P12871118839021292647

`C(row(n)*(row(n)+1)/2+row(n)-col(n), row(n)-col(n))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121334

/-- `C(row(n)*(row(n)+1)/2+row(n)-col(n), row(n)-col(n))` -/
def P12871118839021292647.Spec : Prop :=
  ∀ n, (P12871118839021292647.a n : ℤ) = A121334 n

theorem P12871118839021292647.correct : P12871118839021292647.Spec := by
  intro n
  simp only [A121334]

end A121334

/-! ## A121334.P15437131930343848754

`C(∑[2*n]%comp[∑[n]], C(∑[char[∑[n]]], 2))`
-/

namespace A121334.P15437131930343848754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2)

end

end A121334.P15437131930343848754

namespace A121334

/-- `C(∑[2*n]%comp[∑[n]], C(∑[char[∑[n]]], 2))` -/
def P15437131930343848754.Spec : Prop :=
  ∀ n, (P15437131930343848754.a n : ℤ) = A121334 n

end A121334

/-! ## A121334.P11995709968061685620

`C(A061579(n), C(∑[char[∑[n]]], 2))`
-/

namespace A121334.P11995709968061685620
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A061579 n).toNat (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A121334.P11995709968061685620

namespace A121334

/-- `C(A061579(n), C(∑[char[∑[n]]], 2))` -/
def P11995709968061685620.Spec : Prop :=
  ∀ n, (P11995709968061685620.a n : ℤ) = A121334 n

end A121334

/-! ## A121334.P3639353810499750824

`C(∑[2*n]%comp[∑[n]], A025581(n))`
-/

namespace A121334.P3639353810499750824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) (A025581 n).toNat

end

end A121334.P3639353810499750824

namespace A121334

/-- `C(∑[2*n]%comp[∑[n]], A025581(n))` -/
def P3639353810499750824.Spec : Prop :=
  ∀ n, (P3639353810499750824.a n : ℤ) = A121334 n

end A121334

/-! ## A121334.P15127504268922816077

`C(A023443(∑[char[∑[n]]]²-n), C(∑[char[∑[n]]], 2))`
-/

namespace A121334.P15127504268922816077
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A023443 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)).toNat (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2)

end

end A121334.P15127504268922816077

namespace A121334

/-- `C(A023443(∑[char[∑[n]]]²-n), C(∑[char[∑[n]]], 2))` -/
def P15127504268922816077.Spec : Prop :=
  ∀ n, (P15127504268922816077.a n : ℤ) = A121334 n

end A121334

/-!
# A121335: Triangle, read by rows, where T(n,k) = C( n*(n+1)/2 + n-k + 1, n-k), for n>=k>=0.

The programs for A121335, the canonical program `A121335.P6635556749212179266` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121335 has offset 0).

The definition of A121335 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n)*(row(n)+1)/2+row(n)-col(n)+1, row(n)-col(n))` (program `A121335.P6635556749212179266`, by `A121335.P6635556749212179266.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121335.P6635556749212179266

`C(row(n)*(row(n)+1)/2+row(n)-col(n)+1, row(n)-col(n))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121335

/-- `C(row(n)*(row(n)+1)/2+row(n)-col(n)+1, row(n)-col(n))` -/
def P6635556749212179266.Spec : Prop :=
  ∀ n, (P6635556749212179266.a n : ℤ) = A121335 n

theorem P6635556749212179266.correct : P6635556749212179266.Spec := by
  intro n
  simp only [A121335]

end A121335

/-! ## A121335.P4508840879208889402

`C(∑[char[∑[n]]]²-n, C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A121335.P4508840879208889402
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ)).toNat ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat

end

end A121335.P4508840879208889402

namespace A121335

/-- `C(∑[char[∑[n]]]²-n, C(comp[∑[n]]-n, 2)-(n+1))` -/
def P4508840879208889402.Spec : Prop :=
  ∀ n, (P4508840879208889402.a n : ℤ) = A121335 n

end A121335

/-! ## A121335.P12465170096806104931

`C(∑[char[∑[n]]]²-n, A025581(n))`
-/

namespace A121335.P12465170096806104931
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ)).toNat (A025581 n).toNat

end

end A121335.P12465170096806104931

namespace A121335

/-- `C(∑[char[∑[n]]]²-n, A025581(n))` -/
def P12465170096806104931.Spec : Prop :=
  ∀ n, (P12465170096806104931.a n : ℤ) = A121335 n

end A121335

/-! ## A121335.P6911908689151099873

`C(∑[char[∑[n]]]²-n, log2(A130321(n)))`
-/

namespace A121335.P6911908689151099873
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ)).toNat (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A121335.P6911908689151099873

namespace A121335

/-- `C(∑[char[∑[n]]]²-n, log2(A130321(n)))` -/
def P6911908689151099873.Spec : Prop :=
  ∀ n, (P6911908689151099873.a n : ℤ) = A121335 n

end A121335

/-! ## A121335.P1882812619168389850

`C(∑[char[∑[n]]]²-n, A025660(n+1))`
-/

namespace A121335.P1882812619168389850
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ)).toNat (A025660 (n + 1)).toNat

end

end A121335.P1882812619168389850

namespace A121335

/-- `C(∑[char[∑[n]]]²-n, A025660(n+1))` -/
def P1882812619168389850.Spec : Prop :=
  ∀ n, (P1882812619168389850.a n : ℤ) = A121335 n

end A121335

/-!
# A121336: Triangle, read by rows, where T(n,k) = C( n*(n+1)/2 + n-k + 2, n-k), for n>=k>=0.

The programs for A121336, the canonical program `A121336.P8997147283660773936` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121336 has offset 0).

The definition of A121336 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n)*(row(n)+1)/2+row(n)-col(n)+2, row(n)-col(n))` (program `A121336.P8997147283660773936`, by `A121336.P8997147283660773936.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121336.P8997147283660773936

`C(row(n)*(row(n)+1)/2+row(n)-col(n)+2, row(n)-col(n))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121336

/-- `C(row(n)*(row(n)+1)/2+row(n)-col(n)+2, row(n)-col(n))` -/
def P8997147283660773936.Spec : Prop :=
  ∀ n, (P8997147283660773936.a n : ℤ) = A121336 n

theorem P8997147283660773936.correct : P8997147283660773936.Spec := by
  intro n
  simp only [A121336]

end A121336

/-! ## A121336.P10348535816387270608

`C(A020725(∑[char[∑[n]]]²-n), C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A121336.P10348535816387270608
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020725 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)).toNat ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat

end

end A121336.P10348535816387270608

namespace A121336

/-- `C(A020725(∑[char[∑[n]]]²-n), C(comp[∑[n]]-n, 2)-(n+1))` -/
def P10348535816387270608.Spec : Prop :=
  ∀ n, (P10348535816387270608.a n : ℤ) = A121336 n

end A121336

/-! ## A121336.P798592931898022522

`C(A065475(∑[char[∑[n]]]²-n), C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A121336.P798592931898022522
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065475 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)).toNat ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat

end

end A121336.P798592931898022522

namespace A121336

/-- `C(A065475(∑[char[∑[n]]]²-n), C(comp[∑[n]]-n, 2)-(n+1))` -/
def P798592931898022522.Spec : Prop :=
  ∀ n, (P798592931898022522.a n : ℤ) = A121336 n

end A121336

/-! ## A121336.P14111780644398306867

`C(A326178(∑[char[∑[n]]]²-n), C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A121336.P14111780644398306867
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A326178 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)).toNat ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat

end

end A121336.P14111780644398306867

namespace A121336

/-- `C(A326178(∑[char[∑[n]]]²-n), C(comp[∑[n]]-n, 2)-(n+1))` -/
def P14111780644398306867.Spec : Prop :=
  ∀ n, (P14111780644398306867.a n : ℤ) = A121336 n

end A121336

/-! ## A121336.P6919345189525981149

`C(A061579(n)+2, A025581(n))`
-/

namespace A121336.P6919345189525981149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A061579 n + 2).toNat (A025581 n).toNat

end

end A121336.P6919345189525981149

namespace A121336

/-- `C(A061579(n)+2, A025581(n))` -/
def P6919345189525981149.Spec : Prop :=
  ∀ n, (P6919345189525981149.a n : ℤ) = A121336 n

end A121336

/-!
# A121337: Number of idempotent relations on n labeled elements.

The programs for A121337, there is no canonical definition to state claims against.
-/

/-! ## A121337.P2773822182908763041

`A043090(A020555(n))`
-/

namespace A121337.P2773822182908763041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043090 (A020555 n).toNat

end

end A121337.P2773822182908763041

/-!
# A121339: Periodic part of continued fraction for square roots of integers.

The programs for A121339, there is no canonical definition to state claims against.
-/

/-! ## A121339.P13132089212891490678

`A240071(comp[∑[A067280(n+1)]-1]+2)`
-/

namespace A121339.P13132089212891490678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240071 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A121339.P13132089212891490678

/-! ## A121339.P12166411902541567554

`A284050(A065891(n+2))`
-/

namespace A121339.P12166411902541567554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284050 (A065891 (n + 2)).toNat

end

end A121339.P12166411902541567554

/-! ## A121339.P17494492060537148284

`2^A002324(A080107(n+1))`
-/

namespace A121339.P17494492060537148284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002324 (A080107 (n + 1)).toNat : ℤ)

end

end A121339.P17494492060537148284

/-! ## A121339.P18125583125899080819

`gcd(4, A171580(A006908(n+1)))`
-/

namespace A121339.P18125583125899080819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A171580 (A006908 (n + 1)).toNat)

end

end A121339.P18125583125899080819

/-! ## A121339.P12591550577438797665

`gcd(4/gcd(2, n), A070767(A070807(n+1)))`
-/

namespace A121339.P12591550577438797665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (4 / (Nat.gcd 2 n : ℚ))) (A070767 (A070807 (n + 1)).toNat)

end

end A121339.P12591550577438797665

/-!
# A121340: List of triples {1^(2^n), 2^(2^n), 3^(2^n)} for n >= 0.

The programs for A121340, there is no canonical definition to state claims against.
-/

/-! ## A121340.P3013346346667555446

`a(n-3)²` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A121340.P3013346346667555446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 3) ^ 2

end

end A121340.P3013346346667555446

/-! ## A121340.P6526126836578502959

`a(n-3)^2` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A121340.P6526126836578502959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 3) ^ 2

end

end A121340.P6526126836578502959

/-! ## A121340.P9819907769532088041

`root(a(n-3), 1/2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A121340.P9819907769532088041
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 3) ^ (1 / ((1 : ℚ) / 2 : ℝ))

end

end A121340.P9819907769532088041

/-! ## A121340.P3577592530406276917

`a(n-3)*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A121340.P3577592530406276917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 3) * a (n - 3)

end

end A121340.P3577592530406276917

/-! ## A121340.P17505142011004611058

`A010882(n)^A045674(A004396(n))`
-/

namespace A121340.P17505142011004611058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010882 n : ℚ) ^ (A045674 (A004396 n).toNat : ℤ)

end

end A121340.P17505142011004611058

/-!
# A121341: Number of decimal places before 1/n either recurs or terminates.

The programs for A121341, there is no canonical definition to state claims against.
-/

/-! ## A121341.P17216233336895980976

`A051628(n+1)+A051626(n+1)`
-/

namespace A121341.P17216233336895980976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051628 (n + 1) + A051626 (n + 1)

end

end A121341.P17216233336895980976

/-! ## A121341.P13595298553895338530

`A054710(n+1)-char[A158911(n+1)]`
-/

namespace A121341.P13595298553895338530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158911 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054710 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A121341.P13595298553895338530

/-! ## A121341.P7995142446455920615

`A054710(n+1)-A000007(A051626(n+1))`
-/

namespace A121341.P7995142446455920615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054710 (n + 1) - A000007 (A051626 (n + 1)).toNat

end

end A121341.P7995142446455920615

/-! ## A121341.P10686198857381336202

`A054710(n+1)-A000007(A056968(n+1))`
-/

namespace A121341.P10686198857381336202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054710 (n + 1) - A000007 (A056968 (n + 1)).toNat

end

end A121341.P10686198857381336202

/-! ## A121341.P17489761199354811093

`A054710(n+1)-A183919(A132740(n+1))`
-/

namespace A121341.P17489761199354811093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054710 (n + 1) - A183919 (A132740 (n + 1)).toNat

end

end A121341.P17489761199354811093

/-! ## A121341.P11526952007593932299

`A054710(n+1)-A327172(A132740(2*(n+1)))`
-/

namespace A121341.P11526952007593932299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054710 (n + 1) - A327172 (A132740 (2 * (n + 1))).toNat

end

end A121341.P11526952007593932299

/-! ## A121341.P4335717177212878471

`A051626(n+1)+A054710(n+1)-A007732(n+1)`
-/

namespace A121341.P4335717177212878471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (n + 1) + (A054710 (n + 1) - A007732 (n + 1))

end

end A121341.P4335717177212878471

/-! ## A121341.P17651475097819389953

`A051628(n+1)+A007732(n+1)%A132740(n+1)`
-/

namespace A121341.P17651475097819389953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051628 (n + 1) + Int.tmod (A007732 (n + 1)) (A132740 (n + 1))

end

end A121341.P17651475097819389953

/-! ## A121341.P1129467086708491825

`A051628(n+1)+A007732(n+1)-char[A003592(n+1)-1]`
-/

namespace A121341.P1129467086708491825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051628 (n + 1) + (A007732 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A121341.P1129467086708491825

/-! ## A121341.P10628205824630207109

`A054710(n+1)-A151667(A000265((n+1)²))`
-/

namespace A121341.P10628205824630207109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054710 (n + 1) - A151667 (A000265 ((n + 1) ^ 2)).toNat

end

end A121341.P10628205824630207109

/-! ## A121341.P4673062692714304701

`A054710(n+1)-A151667(A132740(n+1)²)`
-/

namespace A121341.P4673062692714304701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054710 (n + 1) - A151667 (A132740 (n + 1) ^ 2).toNat

end

end A121341.P4673062692714304701

/-!
# A121342: Composite numbers that are a concatenation of their distinct prime divisors in some order.

The programs for A121342, there is no canonical definition to state claims against.
-/

/-! ## A121342.P13274563996717545105

`∩[A083360(n+1), A324260(n+1)]`
-/

namespace A121342.P13274563996717545105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121342.P13274563996717545105

/-! ## A121342.P8178111339330789994

`∩[A324258(n+1), A324260(n+1)]`
-/

namespace A121342.P8178111339330789994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121342.P8178111339330789994

/-!
# A121343: a(n) = Fibonacci(n) mod n(n+1)/2.

The programs for A121343, the canonical program `A121343.P4155292252380405521` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121343 has offset 0).

The definition of A121343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121343.P12097900390445241864

`A000045(n)%A179865(n+1)`
-/

namespace A121343.P12097900390445241864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 n) (A179865 (n + 1))

end

end A121343.P12097900390445241864

namespace A121343

/-- `A000045(n)%A179865(n+1)` -/
def P12097900390445241864.Spec : Prop :=
  ∀ n, P12097900390445241864.a n = A121343 n

end A121343

/-! ## A121343.P12293690650055746470

`A324969(n+1)%A179865(n+1)`
-/

namespace A121343.P12293690650055746470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324969 (n + 1)) (A179865 (n + 1))

end

end A121343.P12293690650055746470

namespace A121343

/-- `A324969(n+1)%A179865(n+1)` -/
def P12293690650055746470.Spec : Prop :=
  ∀ n, P12293690650055746470.a n = A121343 n

end A121343

/-! ## A121343.P17898989346206657884

`A000045(n)%A008805(A004273(n))`
-/

namespace A121343.P17898989346206657884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 n) (A008805 (A004273 n).toNat)

end

end A121343.P17898989346206657884

namespace A121343

/-- `A000045(n)%A008805(A004273(n))` -/
def P17898989346206657884.Spec : Prop :=
  ∀ n, P17898989346206657884.a n = A121343 n

end A121343

/-! ## A121343.P16104139652886705200

`A212804(n+1)%A000217(A028310(n))`
-/

namespace A121343.P16104139652886705200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212804 (n + 1)) (A000217 (A028310 n).toNat)

end

end A121343.P16104139652886705200

namespace A121343

/-- `A212804(n+1)%A000217(A028310(n))` -/
def P16104139652886705200.Spec : Prop :=
  ∀ n, P16104139652886705200.a n = A121343 n

end A121343

/-! ## A121343.P4155292252380405521

`(A001611(n)-1)%A000217(A028310(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A121343

/-- `(A001611(n)-1)%A000217(A028310(n))` -/
def P4155292252380405521.Spec : Prop :=
  ∀ n, P4155292252380405521.a n = A121343 n

theorem P4155292252380405521.correct : P4155292252380405521.Spec := by
  intro n
  simp only [A121343]

end A121343

/-! ## A121343.P4664099494490512195

`(A065220(n)+n)%A000217(A028310(n))`
-/

namespace A121343.P4664099494490512195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065220 n + (n : ℤ)) (A000217 (A028310 n).toNat)

end

end A121343.P4664099494490512195

namespace A121343

/-- `(A065220(n)+n)%A000217(A028310(n))` -/
def P4664099494490512195.Spec : Prop :=
  ∀ n, P4664099494490512195.a n = A121343 n

theorem P4664099494490512195.correct : P4664099494490512195.Spec := by
  intro n
  simp only [A121343, Nat.add_sub_cancel, A121343.P4664099494490512195.a, A121343.P4155292252380405521.a, A000217, A000217.P10269402890581615239.a, A001611, A001611.P16593652898942925329.a, A028310, A028310.P18130301328277559831.a, A065220, A065220.P6653459094866898540.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A121343

/-! ## A121343.P4957563064777682524

`(A002062(n)-n)%A000217(A028310(n))`
-/

namespace A121343.P4957563064777682524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002062 n - (n : ℤ)) (A000217 (A028310 n).toNat)

end

end A121343.P4957563064777682524

namespace A121343

/-- `(A002062(n)-n)%A000217(A028310(n))` -/
def P4957563064777682524.Spec : Prop :=
  ∀ n, P4957563064777682524.a n = A121343 n

theorem P4957563064777682524.correct : P4957563064777682524.Spec := by
  intro n
  simp only [A121343, Nat.add_sub_cancel, A121343.P4957563064777682524.a, A121343.P4155292252380405521.a, A000217, A000217.P10269402890581615239.a, A001611, A001611.P16593652898942925329.a, A002062, A002062.P4072436808255348786.a, A028310, A028310.P18130301328277559831.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A121343

/-! ## A121343.P7733487044775850823

`∑{d}[n, A007436(#)]%A000217(A028310(n))`
-/

namespace A121343.P7733487044775850823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), A007436 d) (A000217 (A028310 n).toNat)

end

end A121343.P7733487044775850823

namespace A121343

/-- `∑{d}[n, A007436(#)]%A000217(A028310(n))` -/
def P7733487044775850823.Spec : Prop :=
  ∀ n, P7733487044775850823.a n = A121343 n

end A121343

/-! ## A121343.P14020276339227835583

`Δ[A000071(n+1)]%A000217(A028310(n))`
-/

namespace A121343.P14020276339227835583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000217 (A028310 n).toNat)

end

end A121343.P14020276339227835583

namespace A121343

/-- `Δ[A000071(n+1)]%A000217(A028310(n))` -/
def P14020276339227835583.Spec : Prop :=
  ∀ n, P14020276339227835583.a n = A121343 n

end A121343

/-! ## A121343.P14689075595228169102

`(A000032(n)-A118658(n))%A000217(A028310(n))`
-/

namespace A121343.P14689075595228169102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 n - A118658 n) (A000217 (A028310 n).toNat)

end

end A121343.P14689075595228169102

namespace A121343

/-- `(A000032(n)-A118658(n))%A000217(A028310(n))` -/
def P14689075595228169102.Spec : Prop :=
  ∀ n, P14689075595228169102.a n = A121343 n

end A121343

/-! ## A121343.P9001529878337346042

`Δ[A000045(n+1)]%A007318(∑[n+1]+2)`
-/

namespace A121343.P9001529878337346042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 2))

end

end A121343.P9001529878337346042

namespace A121343

/-- `Δ[A000045(n+1)]%A007318(∑[n+1]+2)` -/
def P9001529878337346042.Spec : Prop :=
  ∀ n, P9001529878337346042.a n = A121343 n

end A121343

/-!
# A121345: Number of osculating polygons of perimeter 2n on square lattice.

The programs for A121345, there is no canonical definition to state claims against.
-/

/-! ## A121345.P7757098458603345557

`A002264(A008485(n))+A000120(n)`
-/

namespace A121345.P7757098458603345557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A008485 n).toNat + A000120 n

end

end A121345.P7757098458603345557

/-! ## A121345.P7244214373457647234

`A189631(A008485(n))+A001222(n+1)`
-/

namespace A121345.P7244214373457647234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189631 (A008485 n).toNat + A001222 (n + 1)

end

end A121345.P7244214373457647234

/-! ## A121345.P5006157347173879210

`A189663(A001190(2*(n+1)))-A328828(n)`
-/

namespace A121345.P5006157347173879210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A001190 (2 * (n + 1))).toNat - A328828 n

end

end A121345.P5006157347173879210

/-!
# A121346: Conjectured lower bound for the number of spheres of radius 1 that can be packed in a sphere of radius n.

The programs for A121346, the canonical program `A121346.P6760223630996277292` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121346 has offset 2).

The definition of A121346 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121346.P6760223630996277292

`floor((n+2)²*(π*n*sqrt(2)+3)/6)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121346

/-- `floor((n+2)²*(π*n*sqrt(2)+3)/6)` -/
def P6760223630996277292.Spec : Prop :=
  ∀ n, P6760223630996277292.a n = A121346 (n + 2)

theorem P6760223630996277292.correct : P6760223630996277292.Spec := by
  intro n
  simp only [A121346, Nat.add_sub_cancel]

end A121346

/-! ## A121346.P6064293960302770130

`A213259(A187829(2*n+1))+A181120(3*n+4)`
-/

namespace A121346.P6064293960302770130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213259 (A187829 (2 * n + 1)).toNat + A181120 (3 * n + 4)

end

end A121346.P6064293960302770130

namespace A121346

/-- `A213259(A187829(2*n+1))+A181120(3*n+4)` -/
def P6064293960302770130.Spec : Prop :=
  ∀ n, P6064293960302770130.a n = A121346 (n + 2)

end A121346

/-! ## A121346.P536980542107311160

`A192023(n+1)+A030203(A192849(n+1))`
-/

namespace A121346.P536980542107311160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192023 (n + 1) + A030203 (A192849 (n + 1)).toNat

end

end A121346.P536980542107311160

namespace A121346

/-- `A192023(n+1)+A030203(A192849(n+1))` -/
def P536980542107311160.Spec : Prop :=
  ∀ n, P536980542107311160.a n = A121346 (n + 2)

end A121346

/-!
# A121347: Largest number whose factorial is less than (n!)^2.

The programs for A121347, there is no canonical definition to state claims against.
-/

/-! ## A121347.P17920203836934858275

`A075357(n+2)+1+n`
-/

namespace A121347.P17920203836934858275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (n + 2) + 1 + (n : ℤ)

end

end A121347.P17920203836934858275

/-! ## A121347.P14097079526009893441

`A094331(n+2)+1+n`
-/

namespace A121347.P14097079526009893441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094331 (n + 2) + 1 + (n : ℤ)

end

end A121347.P14097079526009893441

/-! ## A121347.P3193138361274711365

`A225515(n)+a(n-1)` with `a(0)=2`
-/

namespace A121347.P3193138361274711365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A225515 n + a (n - 1)

end

end A121347.P3193138361274711365

/-! ## A121347.P15878038672949239004

`∑[A225515(A000007(n)+n)]`
-/

namespace A121347.P15878038672949239004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225515 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121347.P15878038672949239004

/-! ## A121347.P16818502101304894904

`∑[A225515(or(n, A000007(n)))]`
-/

namespace A121347.P16818502101304894904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225515 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121347.P16818502101304894904

/-! ## A121347.P15430840057787836334

`A020725(A094331(n+2))+n`
-/

namespace A121347.P15430840057787836334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A094331 (n + 2)).toNat + (n : ℤ)

end

end A121347.P15430840057787836334

/-! ## A121347.P8184694345305592059

`∑[A000029(Δ[A075357(n+1)])]`
-/

namespace A121347.P8184694345305592059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121347.P8184694345305592059

/-! ## A121347.P10230479558520245750

`∑[A000031(Δ[A075357(n+1)])]`
-/

namespace A121347.P10230479558520245750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121347.P10230479558520245750

/-! ## A121347.P15419185508442581844

`∑[A000034(Δ[A075357(n+1)])]`
-/

namespace A121347.P15419185508442581844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121347.P15419185508442581844

/-! ## A121347.P12089644266806233750

`∑[A000050(Δ[A075357(n+1)])]`
-/

namespace A121347.P12089644266806233750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000050 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121347.P12089644266806233750

/-! ## A121347.P14744523043866772545

`∑[A000070(Δ[A075357(n+1)])]`
-/

namespace A121347.P14744523043866772545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121347.P14744523043866772545

/-! ## A121347.P16630168996527004210

`∑[A075371(Δ[A075357(n+1)])]`
-/

namespace A121347.P16630168996527004210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075371 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121347.P16630168996527004210

/-! ## A121347.P1652052791859368368

`∑[A225515(n+2-A225515(n+2))]`
-/

namespace A121347.P1652052791859368368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225515 ((n + 2 : ℤ) - A225515 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121347.P1652052791859368368

/-! ## A121347.P16144277770924164624

`∑[A225515(A024000(n)+A004273(n))]`
-/

namespace A121347.P16144277770924164624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225515 (A024000 n + A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121347.P16144277770924164624

/-!
# A121349: a(n) = round(Pi*2^(n-1)) for n >= 1, a(0) = 1.

The programs for A121349, the canonical program `A121349.P15763248953113553043` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121349 has offset 0).

The definition of A121349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121349.P7713214244294337781

`round(2^n*acot(round(acot(n+1))))`
-/

namespace A121349.P7713214244294337781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℝ) * SequenceMachineLib.acot (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n + 1 : ℝ)) : ℝ))

end

end A121349.P7713214244294337781

namespace A121349

/-- `round(2^n*acot(round(acot(n+1))))` -/
def P7713214244294337781.Spec : Prop :=
  ∀ n, P7713214244294337781.a n = A121349 n

end A121349

/-! ## A121349.P15763248953113553043

`A155996((n+1)%(2*n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121349

/-- `A155996((n+1)%(2*n+1))` -/
def P15763248953113553043.Spec : Prop :=
  ∀ n, P15763248953113553043.a n = A121349 n

theorem P15763248953113553043.correct : P15763248953113553043.Spec := by
  intro n
  simp only [A121349]

end A121349

/-! ## A121349.P12036403278035207462

`Δ[A155996(n)]+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A121349.P12036403278035207462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155996 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1)

end

end A121349.P12036403278035207462

namespace A121349

/-- `Δ[A155996(n)]+a(n-1)` -/
def P12036403278035207462.Spec : Prop :=
  ∀ n, P12036403278035207462.a n = A121349 n

end A121349

/-! ## A121349.P1845630456792737257

`round(2^n*acos(0)-A000007(n))`
-/

namespace A121349.P1845630456792737257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℝ) * Real.arccos (0 : ℝ) - (A000007 n : ℝ))

end

end A121349.P1845630456792737257

namespace A121349

/-- `round(2^n*acos(0)-A000007(n))` -/
def P1845630456792737257.Spec : Prop :=
  ∀ n, P1845630456792737257.a n = A121349 n

end A121349

/-! ## A121349.P10706943462273048241

`A155996(A087156(n+1))`
-/

namespace A121349.P10706943462273048241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155996 (A087156 (n + 1)).toNat

end

end A121349.P10706943462273048241

namespace A121349

/-- `A155996(A087156(n+1))` -/
def P10706943462273048241.Spec : Prop :=
  ∀ n, P10706943462273048241.a n = A121349 n

end A121349

/-! ## A121349.P14086329862566773993

`A155996(A199969(n+2))`
-/

namespace A121349.P14086329862566773993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155996 (A199969 (n + 2)).toNat

end

end A121349.P14086329862566773993

namespace A121349

/-- `A155996(A199969(n+2))` -/
def P14086329862566773993.Spec : Prop :=
  ∀ n, P14086329862566773993.a n = A121349 n

end A121349

/-! ## A121349.P13265796423469502348

`Δ[a(n-1)+round(2^n*atan(1))]` with `a(0)=2, a(1)=3`
-/

namespace A121349.P13265796423469502348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.roundAway ((2 ^ n : ℝ) * Real.arctan (1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121349.P13265796423469502348

namespace A121349

/-- `Δ[a(n-1)+round(2^n*atan(1))]` -/
def P13265796423469502348.Spec : Prop :=
  ∀ n, P13265796423469502348.a n = A121349 n

end A121349

/-! ## A121349.P882311345135709387

`Δ[ceil(2/(n+1))+floor(2^n*asin(1))]`
-/

namespace A121349.P882311345135709387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (n + 1 : ℚ)⌉ + ⌊(2 ^ n : ℝ) * Real.arcsin (1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121349.P882311345135709387

namespace A121349

/-- `Δ[ceil(2/(n+1))+floor(2^n*asin(1))]` -/
def P882311345135709387.Spec : Prop :=
  ∀ n, P882311345135709387.a n = A121349 n

end A121349

/-! ## A121349.P432513043873396618

`Δ[floor(2^n*acos(0))-ceil(n/(n+1))]`
-/

namespace A121349.P432513043873396618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℝ) * Real.arccos (0 : ℝ)⌋ - ⌈(n : ℚ) / (n + 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121349.P432513043873396618

namespace A121349

/-- `Δ[floor(2^n*acos(0))-ceil(n/(n+1))]` -/
def P432513043873396618.Spec : Prop :=
  ∀ n, P432513043873396618.a n = A121349 n

end A121349

/-!
# A121351: a(n) = (3*n+1)*a(n-1) - a(n-2), starting a(0)=0, a(1)=1.

The programs for A121351, the canonical program `A121351.P11707567602371011420` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121351 has offset 0).

The definition of A121351 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+1)*a(n-1)-a(n-2)` (program `A121351.P11707567602371011420`, by `A121351.P11707567602371011420.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121351.P11707567602371011420

`(3*n+1)*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121351

/-- `(3*n+1)*a(n-1)-a(n-2)` -/
def P11707567602371011420.Spec : Prop :=
  ∀ n, P11707567602371011420.a n = A121351 n

theorem P11707567602371011420.correct : P11707567602371011420.Spec := by
  intro n
  simp only [A121351]

end A121351

/-! ## A121351.P7209685982159011201

`3*n*a(n-1)-(a(n-2)-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A121351.P7209685982159011201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * ((n : ℤ) * a (n - 1)) - (a (n - 2) - a (n - 1))

end

end A121351.P7209685982159011201

namespace A121351

/-- `3*n*a(n-1)-(a(n-2)-a(n-1))` -/
def P7209685982159011201.Spec : Prop :=
  ∀ n, P7209685982159011201.a n = A121351 n

theorem P7209685982159011201.correct : P7209685982159011201.Spec := by
  intro n
  simp only [A121351, Nat.add_sub_cancel, A121351.P7209685982159011201.a, A121351.P11707567602371011420.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A121351

/-! ## A121351.P17484327472146709918

`a(n-1)*A016777(n)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A121351.P17484327472146709918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) * A016777 n - a (n - 2)

end

end A121351.P17484327472146709918

namespace A121351

/-- `a(n-1)*A016777(n)-a(n-2)` -/
def P17484327472146709918.Spec : Prop :=
  ∀ n, P17484327472146709918.a n = A121351 n

end A121351

/-!
# A121353: a(n) = (3*n - 2)*a(n-1) - a(n-2) starting a(0)=0, a(1)=1.

The programs for A121353, the canonical program `A121353.P18433929594438572204` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121353 has offset 0).

The definition of A121353 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n-2)*a(n-1)-a(n-2)` (program `A121353.P18433929594438572204`, by `A121353.P18433929594438572204.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121353.P18433929594438572204

`(3*n-2)*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121353

/-- `(3*n-2)*a(n-1)-a(n-2)` -/
def P18433929594438572204.Spec : Prop :=
  ∀ n, P18433929594438572204.a n = A121353 n

theorem P18433929594438572204.correct : P18433929594438572204.Spec := by
  intro n
  simp only [A121353]

end A121353

/-!
# A121354: a(n) = (3*n-1)*a(n-1) - a(n-2).

The programs for A121354, the canonical program `A121354.P104115956168390821` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121354 has offset 0).

The definition of A121354 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n-1)*a(n-1)-a(n-2)` (program `A121354.P104115956168390821`, by `A121354.P104115956168390821.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121354.P104115956168390821

`(3*n-1)*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121354

/-- `(3*n-1)*a(n-1)-a(n-2)` -/
def P104115956168390821.Spec : Prop :=
  ∀ n, P104115956168390821.a n = A121354 n

theorem P104115956168390821.correct : P104115956168390821.Spec := by
  intro n
  simp only [A121354]

end A121354

/-! ## A121354.P12852718627391675265

`A185180((3*n-1)*a(n-1))+1` with `a(0)=0, a(1)=1`
-/

namespace A121354.P12852718627391675265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A185180 (((3 * n : ℤ) - 1) * a (n - 1)).toNat + 1

end

end A121354.P12852718627391675265

namespace A121354

/-- `A185180((3*n-1)*a(n-1))+1` -/
def P12852718627391675265.Spec : Prop :=
  ∀ n, P12852718627391675265.a n = A121354 n

end A121354

/-!
# A121355: Number of transitive PSL_2(ZZ) actions on a finite labeled set of size n.

The programs for A121355, there is no canonical definition to state claims against.
-/

/-! ## A121355.P9461824890710305346

`n!*A005133(n+1)`
-/

namespace A121355.P9461824890710305346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A005133 (n + 1)

end

end A121355.P9461824890710305346

/-! ## A121355.P13016891147620905902

`A000142(n)*A005133(n+1)`
-/

namespace A121355.P13016891147620905902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A005133 (n + 1)

end

end A121355.P13016891147620905902

/-! ## A121355.P4087089314581525167

`∏[A028310(n)]*A005133(n+1)`
-/

namespace A121355.P4087089314581525167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A005133 (n + 1)

end

end A121355.P4087089314581525167

/-! ## A121355.P9269079025422463179

`A005133(n+1)*A130534(A000217(n))`
-/

namespace A121355.P9269079025422463179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005133 (n + 1) * A130534 (A000217 n).toNat

end

end A121355.P9269079025422463179

/-! ## A121355.P4994977182616265915

`A121356(n+1)/(n+1)`
-/

namespace A121355.P4994977182616265915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121356 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A121355.P4994977182616265915

/-!
# A121356: Number of transitive PSL_2(ZZ) actions on a finite dotted and labeled set of size n.

The programs for A121356, there is no canonical definition to state claims against.
-/

/-! ## A121356.P11381220423400340311

`A121355(n+1)*(n+1)`
-/

namespace A121356.P11381220423400340311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121355 (n + 1) * (n + 1 : ℤ)

end

end A121356.P11381220423400340311

/-! ## A121356.P14864559367296750695

`∏[n+1]*A005133(n+1)`
-/

namespace A121356.P14864559367296750695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A005133 (n + 1)

end

end A121356.P14864559367296750695

/-! ## A121356.P6249470183568693985

`(n+1)*A000142(n)*A005133(n+1)`
-/

namespace A121356.P6249470183568693985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000142 n * A005133 (n + 1))

end

end A121356.P6249470183568693985

/-! ## A121356.P11867358743063335917

`n!*A005133(n+1)*A339333(record[A286157(n+1)])`
-/

namespace A121356.P11867358743063335917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A005133 (n + 1) * A339333 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A121356.P11867358743063335917

/-! ## A121356.P17295258251102139296

`A000142(n+1)*A028310(A005133(n+1))`
-/

namespace A121356.P17295258251102139296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A028310 (A005133 (n + 1)).toNat

end

end A121356.P17295258251102139296

/-!
# A121357: Number of different, not necessarily connected, labeled trivalent diagrams of size n.

The programs for A121357, the canonical program `A121357.P16255230545232394079` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121357 has offset 0).

The definition of A121357 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121357.P16255230545232394079

`A000085(n)*A001470(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121357

/-- `A000085(n)*A001470(n)` -/
def P16255230545232394079.Spec : Prop :=
  ∀ n, P16255230545232394079.a n = A121357 n

theorem P16255230545232394079.correct : P16255230545232394079.Spec := by
  intro n
  simp only [A121357]

end A121357

/-! ## A121357.P7807168851206106125

`(A001471(n)+1)*A000085(n)`
-/

namespace A121357.P7807168851206106125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001471 n + 1) * A000085 n

end

end A121357.P7807168851206106125

namespace A121357

/-- `(A001471(n)+1)*A000085(n)` -/
def P7807168851206106125.Spec : Prop :=
  ∀ n, P7807168851206106125.a n = A121357 n

end A121357

/-! ## A121357.P6640774416919820474

`A000085(n)*A008307(∑[n+1]+3)`
-/

namespace A121357.P6640774416919820474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n * A008307 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A121357.P6640774416919820474

namespace A121357

/-- `A000085(n)*A008307(∑[n+1]+3)` -/
def P6640774416919820474.Spec : Prop :=
  ∀ n, P6640774416919820474.a n = A121357 n

end A121357

/-! ## A121357.P15227658901084401498

`A001470(n)*A099020(A000217(n))`
-/

namespace A121357.P15227658901084401498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001470 n * A099020 (A000217 n).toNat

end

end A121357.P15227658901084401498

namespace A121357

/-- `A001470(n)*A099020(A000217(n))` -/
def P15227658901084401498.Spec : Prop :=
  ∀ n, P15227658901084401498.a n = A121357 n

end A121357

/-! ## A121357.P7953945280168423201

`A001470(n)*A008307(A133263(n))`
-/

namespace A121357.P7953945280168423201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001470 n * A008307 (A133263 n).toNat

end

end A121357.P7953945280168423201

namespace A121357

/-- `A001470(n)*A008307(A133263(n))` -/
def P7953945280168423201.Spec : Prop :=
  ∀ n, P7953945280168423201.a n = A121357 n

end A121357

/-! ## A121357.P4091920586296004840

`A001470(n)*A008307(A000217(n)+2)`
-/

namespace A121357.P4091920586296004840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001470 n * A008307 (A000217 n + 2).toNat

end

end A121357.P4091920586296004840

namespace A121357

/-- `A001470(n)*A008307(A000217(n)+2)` -/
def P4091920586296004840.Spec : Prop :=
  ∀ n, P4091920586296004840.a n = A121357 n

end A121357

/-!
# A121358: Least prime factor of pyramidal number A000292(n), a(1) = 1.

The programs for A121358, there is no canonical definition to state claims against.
-/

/-! ## A121358.P9328287830089126858

`A020639((n+1)*(n+2)*(n+3)/6)`
-/

namespace A121358.P9328287830089126858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (((n + 1) * (n + 2) * (n + 3) : ℚ) / 6)).toNat

end

end A121358.P9328287830089126858

/-!
# A121359: Greatest prime factor of pyramidal number A000292(n).

The programs for A121359, the canonical program `A121359.P104378795013916928` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121359 has offset 2).

The definition of A121359 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A121359.P104378795013916928

`A006530(A000292(n+2))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A121359

/-- `A006530(A000292(n+2))` -/
def P104378795013916928.Spec : Prop :=
  ∀ n, P104378795013916928.a n = A121359 (n + 2)

theorem P104378795013916928.correct : P104378795013916928.Spec := by
  intro n
  simp only [A121359, Nat.add_sub_cancel]

end A121359

/-! ## A121359.P5055926826861123220

`A093074(n+3)-floor(acot(n))`
-/

namespace A121359.P5055926826861123220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 3) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A121359.P5055926826861123220

namespace A121359

/-- `A093074(n+3)-floor(acot(n))` -/
def P5055926826861123220.Spec : Prop :=
  ∀ n, P5055926826861123220.a n = A121359 (n + 2)

end A121359

/-! ## A121359.P4106739247441934485

`p?[A093074(n+1)-C(2, n)]`
-/

namespace A121359.P4106739247441934485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1) - (Nat.choose 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121359.P4106739247441934485

namespace A121359

/-- `p?[A093074(n+1)-C(2, n)]` -/
def P4106739247441934485.Spec : Prop :=
  ∀ n, P4106739247441934485.a n = A121359 (n + 2)

end A121359

/-! ## A121359.P15964053073471571261

`A093074(xor(2, round(acot(n)))+n+1)`
-/

namespace A121359.P15964053073471571261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (Int.xor 2 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ))) + (n : ℤ) + 1).toNat

end

end A121359.P15964053073471571261

namespace A121359

/-- `A093074(xor(2, round(acot(n)))+n+1)` -/
def P15964053073471571261.Spec : Prop :=
  ∀ n, P15964053073471571261.a n = A121359 (n + 2)

end A121359

/-! ## A121359.P7407055123225813069

`A093074(2*n-abs(1-n)+2)`
-/

namespace A121359.P7407055123225813069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 ((2 * n : ℤ) - |1 - (n : ℤ)| + 2).toNat

end

end A121359.P7407055123225813069

namespace A121359

/-- `A093074(2*n-abs(1-n)+2)` -/
def P7407055123225813069.Spec : Prop :=
  ∀ n, P7407055123225813069.a n = A121359 (n + 2)

end A121359

/-! ## A121359.P3006201406438760402

`A093074(n+3)-A000007(n)`
-/

namespace A121359.P3006201406438760402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 3) - A000007 n

end

end A121359.P3006201406438760402

namespace A121359

/-- `A093074(n+3)-A000007(n)` -/
def P3006201406438760402.Spec : Prop :=
  ∀ n, P3006201406438760402.a n = A121359 (n + 2)

end A121359

/-! ## A121359.P10406811527624639027

`filter[A093074(n+1), A011655(#)]`
-/

namespace A121359.P10406811527624639027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A121359.P10406811527624639027

namespace A121359

/-- `filter[A093074(n+1), A011655(#)]` -/
def P10406811527624639027.Spec : Prop :=
  ∀ n, P10406811527624639027.a n = A121359 (n + 2)

end A121359

/-! ## A121359.P11666278165021469780

`filter[A093074(n+1), A014578(#)]`
-/

namespace A121359.P11666278165021469780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A121359.P11666278165021469780

namespace A121359

/-- `filter[A093074(n+1), A014578(#)]` -/
def P11666278165021469780.Spec : Prop :=
  ∀ n, P11666278165021469780.a n = A121359 (n + 2)

end A121359

/-! ## A121359.P15814116335496028171

`filter[A093074(n+1), A123110(#)]`
-/

namespace A121359.P15814116335496028171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123110 (f1 j).toNat = 1) n)

end

end A121359.P15814116335496028171

namespace A121359

/-- `filter[A093074(n+1), A123110(#)]` -/
def P15814116335496028171.Spec : Prop :=
  ∀ n, P15814116335496028171.a n = A121359 (n + 2)

end A121359

/-! ## A121359.P8765595208894210898

`filter[A093074(n+1), A174282(#)]`
-/

namespace A121359.P8765595208894210898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174282 (f1 j).toNat = 1) n)

end

end A121359.P8765595208894210898

namespace A121359

/-- `filter[A093074(n+1), A174282(#)]` -/
def P8765595208894210898.Spec : Prop :=
  ∀ n, P8765595208894210898.a n = A121359 (n + 2)

end A121359

/-! ## A121359.P10948525130199641298

`filter[A093074(n+1), A266246(#)]`
-/

namespace A121359.P10948525130199641298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A121359.P10948525130199641298

namespace A121359

/-- `filter[A093074(n+1), A266246(#)]` -/
def P10948525130199641298.Spec : Prop :=
  ∀ n, P10948525130199641298.a n = A121359 (n + 2)

end A121359

/-! ## A121359.P14600739848215661687

`filter[A093074(n+1), A266611(#)]`
-/

namespace A121359.P14600739848215661687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A121359.P14600739848215661687

namespace A121359

/-- `filter[A093074(n+1), A266611(#)]` -/
def P14600739848215661687.Spec : Prop :=
  ∀ n, P14600739848215661687.a n = A121359 (n + 2)

end A121359

/-! ## A121359.P14180509798279174081

`filter[A093074(n+1), A267208(#)]`
-/

namespace A121359.P14180509798279174081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A121359.P14180509798279174081

namespace A121359

/-- `filter[A093074(n+1), A267208(#)]` -/
def P14180509798279174081.Spec : Prop :=
  ∀ n, P14180509798279174081.a n = A121359 (n + 2)

end A121359

/-! ## A121359.P893779648809968337

`filter[A093074(n+1), A267594(#)]`
-/

namespace A121359.P893779648809968337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A121359.P893779648809968337

namespace A121359

/-- `filter[A093074(n+1), A267594(#)]` -/
def P893779648809968337.Spec : Prop :=
  ∀ n, P893779648809968337.a n = A121359 (n + 2)

end A121359

/-! ## A121359.P13102234588338064140

`filter[A093074(n+1), A267848(#)]`
-/

namespace A121359.P13102234588338064140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267848 (f1 j).toNat = 1) n)

end

end A121359.P13102234588338064140

namespace A121359

/-- `filter[A093074(n+1), A267848(#)]` -/
def P13102234588338064140.Spec : Prop :=
  ∀ n, P13102234588338064140.a n = A121359 (n + 2)

end A121359

/-! ## A121359.P7897887929103898570

`filter[A093074(n+1), A267866(#)]`
-/

namespace A121359.P7897887929103898570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267866 (f1 j).toNat = 1) n)

end

end A121359.P7897887929103898570

namespace A121359

/-- `filter[A093074(n+1), A267866(#)]` -/
def P7897887929103898570.Spec : Prop :=
  ∀ n, P7897887929103898570.a n = A121359 (n + 2)

end A121359

/-! ## A121359.P12685662059678911409

`filter[A093074(n+1), A323511(#)]`
-/

namespace A121359.P12685662059678911409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323511 (f1 j).toNat = 1) n)

end

end A121359.P12685662059678911409

namespace A121359

/-- `filter[A093074(n+1), A323511(#)]` -/
def P12685662059678911409.Spec : Prop :=
  ∀ n, P12685662059678911409.a n = A121359 (n + 2)

end A121359

/-! ## A121359.P13140220722575106406

`filter[A093074(n+1), A323512(#)]`
-/

namespace A121359.P13140220722575106406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323512 (f1 j).toNat = 1) n)

end

end A121359.P13140220722575106406

namespace A121359

/-- `filter[A093074(n+1), A323512(#)]` -/
def P13140220722575106406.Spec : Prop :=
  ∀ n, P13140220722575106406.a n = A121359 (n + 2)

end A121359

/-! ## A121359.P17620518148307867813

`filter[A093074(n+1), A356162(#)]`
-/

namespace A121359.P17620518148307867813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356162 (f1 j).toNat = 1) n)

end

end A121359.P17620518148307867813

namespace A121359

/-- `filter[A093074(n+1), A356162(#)]` -/
def P17620518148307867813.Spec : Prop :=
  ∀ n, P17620518148307867813.a n = A121359 (n + 2)

end A121359

/-! ## A121359.P13586066895262921901

`filter[A093074(n+1), A359172(#)]`
-/

namespace A121359.P13586066895262921901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359172 (f1 j).toNat = 1) n)

end

end A121359.P13586066895262921901

namespace A121359

/-- `filter[A093074(n+1), A359172(#)]` -/
def P13586066895262921901.Spec : Prop :=
  ∀ n, P13586066895262921901.a n = A121359 (n + 2)

end A121359

/-!
# A121360: Smallest k such that A002217(k)=n.

The programs for A121360, there is no canonical definition to state claims against.
-/

/-! ## A121360.P11694270861704915343

`gcd(C(2, n+1), A048133(n))`
-/

namespace A121360.P11694270861704915343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 1) : ℤ) (A048133 n)

end

end A121360.P11694270861704915343

/-! ## A121360.P10042899568855448958

`A048133(n)^abs(A105812(n))`
-/

namespace A121360.P10042899568855448958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048133 n : ℚ) ^ (|A105812 n| : ℤ)

end

end A121360.P10042899568855448958

/-! ## A121360.P9429551996902918885

`A048133(n)%Δ[A267042(n)]`
-/

namespace A121360.P9429551996902918885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048133 n) (f1 (n + 1) - f1 n)

end

end A121360.P9429551996902918885

/-! ## A121360.P1433338947717128498

`A048133(n)^A001221(A112032(n))`
-/

namespace A121360.P1433338947717128498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048133 n : ℚ) ^ (A001221 (A112032 n).toNat : ℤ)

end

end A121360.P1433338947717128498

/-! ## A121360.P13399197107145163090

`A048133(n)^A008683(A001748(n+1))`
-/

namespace A121360.P13399197107145163090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048133 n : ℚ) ^ (A008683 (A001748 (n + 1)).toNat : ℤ)

end

end A121360.P13399197107145163090

/-!
# A121361: Expansion of f(x^1, x^5) * psi(x^2) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A121361, the canonical program `A121361.P14605367141512656592` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121361 has offset 0).

The definition of A121361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121361.P12037555081331891100

`A119395(A016825(3*n+1)+1)`
-/

namespace A121361.P12037555081331891100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119395 (A016825 (3 * n + 1) + 1).toNat

end

end A121361.P12037555081331891100

namespace A121361

/-- `A119395(A016825(3*n+1)+1)` -/
def P12037555081331891100.Spec : Prop :=
  ∀ n, P12037555081331891100.a n = A121361 n

end A121361

/-! ## A121361.P5569593338998935091

`A097195(Δ[n²])/2`
-/

namespace A121361.P5569593338998935091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097195 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A121361.P5569593338998935091

namespace A121361

/-- `A097195(Δ[n²])/2` -/
def P5569593338998935091.Spec : Prop :=
  ∀ n, P5569593338998935091.a n = (A121361 n : ℚ)

end A121361

/-! ## A121361.P14605367141512656592

`floor(A097195(record[xor(1, n)])/2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A121361

/-- `floor(A097195(record[xor(1, n)])/2)` -/
def P14605367141512656592.Spec : Prop :=
  ∀ n, P14605367141512656592.a n = A121361 n

theorem P14605367141512656592.correct : P14605367141512656592.Spec := by
  intro n
  simp only [A121361]

end A121361

/-! ## A121361.P13079924783156877335

`abs(A129451(2*n+1)/2)`
-/

namespace A121361.P13079924783156877335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A129451 (2 * n + 1) : ℚ) / 2|

end

end A121361.P13079924783156877335

namespace A121361

/-- `abs(A129451(2*n+1)/2)` -/
def P13079924783156877335.Spec : Prop :=
  ∀ n, P13079924783156877335.a n = (A121361 n : ℚ)

end A121361

/-! ## A121361.P1652542908759070280

`floor(A097195(2*n+1)/2)`
-/

namespace A121361.P1652542908759070280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097195 (2 * n + 1) : ℚ) / 2⌋

end

end A121361.P1652542908759070280

namespace A121361

/-- `floor(A097195(2*n+1)/2)` -/
def P1652542908759070280.Spec : Prop :=
  ∀ n, P1652542908759070280.a n = A121361 n

end A121361

/-! ## A121361.P13632126802187932342

`gcd(A129451(2*n+1)/2, A000038(n))`
-/

namespace A121361.P13632126802187932342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A129451 (2 * n + 1) : ℚ) / 2)) (A000038 n)

end

end A121361.P13632126802187932342

namespace A121361

/-- `gcd(A129451(2*n+1)/2, A000038(n))` -/
def P13632126802187932342.Spec : Prop :=
  ∀ n, (P13632126802187932342.a n : ℤ) = A121361 n

end A121361

/-! ## A121361.P1276901928603490546

`A129451(2*n+1)/(A000038(n+1)-2)`
-/

namespace A121361.P1276901928603490546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129451 (2 * n + 1) : ℚ) / (A000038 (n + 1) - 2 : ℚ)

end

end A121361.P1276901928603490546

namespace A121361

/-- `A129451(2*n+1)/(A000038(n+1)-2)` -/
def P1276901928603490546.Spec : Prop :=
  ∀ n, P1276901928603490546.a n = (A121361 n : ℚ)

end A121361

/-! ## A121361.P7906405615010430306

`lcm(A000034(n+1), A129451(2*n+1))/2`
-/

namespace A121361.P7906405615010430306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A129451 (2 * n + 1)) : ℚ) / 2

end

end A121361.P7906405615010430306

namespace A121361

/-- `lcm(A000034(n+1), A129451(2*n+1))/2` -/
def P7906405615010430306.Spec : Prop :=
  ∀ n, P7906405615010430306.a n = (A121361 n : ℚ)

end A121361

/-! ## A121361.P3016527093755032058

`A129451(2*n+1)/(A033999(2*n+1)-1)`
-/

namespace A121361.P3016527093755032058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129451 (2 * n + 1) : ℚ) / (A033999 (2 * n + 1) - 1 : ℚ)

end

end A121361.P3016527093755032058

namespace A121361

/-- `A129451(2*n+1)/(A033999(2*n+1)-1)` -/
def P3016527093755032058.Spec : Prop :=
  ∀ n, P3016527093755032058.a n = (A121361 n : ℚ)

end A121361

/-! ## A121361.P11387956480217467121

`A129451(2*n+1)/(A005408(2*n)-(4*n+3))`
-/

namespace A121361.P11387956480217467121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129451 (2 * n + 1) : ℚ) / (A005408 (2 * n) - (4 * n + 3 : ℤ) : ℚ)

end

end A121361.P11387956480217467121

namespace A121361

/-- `A129451(2*n+1)/(A005408(2*n)-(4*n+3))` -/
def P11387956480217467121.Spec : Prop :=
  ∀ n, P11387956480217467121.a n = (A121361 n : ℚ)

end A121361

/-! ## A121361.P17303876184690084070

`A129451(2*n+1)/A000034(2*n+1)-A129451(2*n+1)`
-/

namespace A121361.P17303876184690084070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129451 (2 * n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ) - (A129451 (2 * n + 1) : ℚ)

end

end A121361.P17303876184690084070

namespace A121361

/-- `A129451(2*n+1)/A000034(2*n+1)-A129451(2*n+1)` -/
def P17303876184690084070.Spec : Prop :=
  ∀ n, P17303876184690084070.a n = (A121361 n : ℚ)

end A121361

/-! ## A121361.P2658394236980406874

`A112605(A008585(n)+1)/2`
-/

namespace A121361.P2658394236980406874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112605 (A008585 n + 1).toNat : ℚ) / 2

end

end A121361.P2658394236980406874

namespace A121361

/-- `A112605(A008585(n)+1)/2` -/
def P2658394236980406874.Spec : Prop :=
  ∀ n, P2658394236980406874.a n = (A121361 n : ℚ)

end A121361

/-! ## A121361.P10723509592896761716

`A112605(A005408(n)+n)/2`
-/

namespace A121361.P10723509592896761716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112605 (A005408 n + (n : ℤ)).toNat : ℚ) / 2

end

end A121361.P10723509592896761716

namespace A121361

/-- `A112605(A005408(n)+n)/2` -/
def P10723509592896761716.Spec : Prop :=
  ∀ n, P10723509592896761716.a n = (A121361 n : ℚ)

end A121361

/-! ## A121361.P10561132210308185488

`A033687(4*n+2)/2`
-/

namespace A121361.P10561132210308185488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033687 (4 * n + 2) : ℚ) / 2

end

end A121361.P10561132210308185488

namespace A121361

/-- `A033687(4*n+2)/2` -/
def P10561132210308185488.Spec : Prop :=
  ∀ n, P10561132210308185488.a n = (A121361 n : ℚ)

end A121361

/-! ## A121361.P3182249632860274783

`A129576(A016813(n)+1)/2`
-/

namespace A121361.P3182249632860274783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129576 (A016813 n + 1).toNat : ℚ) / 2

end

end A121361.P3182249632860274783

namespace A121361

/-- `A129576(A016813(n)+1)/2` -/
def P3182249632860274783.Spec : Prop :=
  ∀ n, P3182249632860274783.a n = (A121361 n : ℚ)

end A121361

/-! ## A121361.P13650784276526066401

`A033762(6*n+3)/2`
-/

namespace A121361.P13650784276526066401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033762 (6 * n + 3) : ℚ) / 2

end

end A121361.P13650784276526066401

namespace A121361

/-- `A033762(6*n+3)/2` -/
def P13650784276526066401.Spec : Prop :=
  ∀ n, P13650784276526066401.a n = (A121361 n : ℚ)

end A121361

/-! ## A121361.P5667802177787350301

`A001221(A097195(2*n+1)!)`
-/

namespace A121361.P5667802177787350301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A097195 (2 * n + 1)).toNat)

end

end A121361.P5667802177787350301

namespace A121361

/-- `A001221(A097195(2*n+1)!)` -/
def P5667802177787350301.Spec : Prop :=
  ∀ n, P5667802177787350301.a n = A121361 n

end A121361

/-! ## A121361.P15521436892736869084

`A002324(12*n+7)/2`
-/

namespace A121361.P15521436892736869084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002324 (12 * n + 7) : ℚ) / 2

end

end A121361.P15521436892736869084

namespace A121361

/-- `A002324(12*n+7)/2` -/
def P15521436892736869084.Spec : Prop :=
  ∀ n, P15521436892736869084.a n = (A121361 n : ℚ)

end A121361

/-! ## A121361.P17508600119788714314

`A035178(12*n+7)/2`
-/

namespace A121361.P17508600119788714314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035178 (12 * n + 7) : ℚ) / 2

end

end A121361.P17508600119788714314

namespace A121361

/-- `A035178(12*n+7)/2` -/
def P17508600119788714314.Spec : Prop :=
  ∀ n, P17508600119788714314.a n = (A121361 n : ℚ)

end A121361

/-!
# A121362: Expansion of eta(q)*eta(q^6)*eta(q^10)*eta(q^15)/(eta(q^3)*eta(q^5)) in powers of q.

The programs for A121362, the canonical program `A121362.P4931692809741161158` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121362 has offset 1).

The definition of A121362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121362.P4931692809741161158

`A128616(n+1)-A128617(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A121362

/-- `A128616(n+1)-A128617(n+1)` -/
def P4931692809741161158.Spec : Prop :=
  ∀ n, P4931692809741161158.a n = A121362 (n + 1)

theorem P4931692809741161158.correct : P4931692809741161158.Spec := by
  intro n
  simp only [A121362, Nat.add_sub_cancel]

end A121362

/-! ## A121362.P3324652461186046700

`A106406(n+1)/A001511(n+1)`
-/

namespace A121362.P3324652461186046700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106406 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A121362.P3324652461186046700

namespace A121362

/-- `A106406(n+1)/A001511(n+1)` -/
def P3324652461186046700.Spec : Prop :=
  ∀ n, P3324652461186046700.a n = (A121362 (n + 1) : ℚ)

end A121362

/-! ## A121362.P3041565799630749433

`2*A128616(n+1)-A082451(n+1)`
-/

namespace A121362.P3041565799630749433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128616 (n + 1) - A082451 (n + 1)

end

end A121362.P3041565799630749433

namespace A121362

/-- `2*A128616(n+1)-A082451(n+1)` -/
def P3041565799630749433.Spec : Prop :=
  ∀ n, P3041565799630749433.a n = A121362 (n + 1)

theorem P3041565799630749433.correct : P3041565799630749433.Spec := by
  intro n
  simp only [A121362, Nat.add_sub_cancel, A121362.P3041565799630749433.a, A121362.P4931692809741161158.a, A082451, A082451.P7121663205053929701.a, A128616, A128616.P5791470407128350833.a, A128617, A128617.P2599063269449293282.a, A000265, A000265.P2772582252347773295.a, A035175, A035175.P2871059185806058886.f1, A035175.P2871059185806058886.a, A156595, A156595.P4549591963331449160.f1, A156595.P4549591963331449160.a, A003602, A003602.P7612175048291952394.a, A081603, A081603.P9418366050176887204.a, A316569, A316569.P8191093053662298645.a, A053735, A053735.P3640341592284089632.a, A062756, A062756.P3953090966624310992.a, A110963, A110963.P3344771894533151408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A121362

/-! ## A121362.P16479025308896253950

`A082451(n+1)-2*A128617(n+1)`
-/

namespace A121362.P16479025308896253950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082451 (n + 1) - 2 * A128617 (n + 1)

end

end A121362.P16479025308896253950

namespace A121362

/-- `A082451(n+1)-2*A128617(n+1)` -/
def P16479025308896253950.Spec : Prop :=
  ∀ n, P16479025308896253950.a n = A121362 (n + 1)

theorem P16479025308896253950.correct : P16479025308896253950.Spec := by
  intro n
  simp only [A121362, Nat.add_sub_cancel, A121362.P16479025308896253950.a, A121362.P4931692809741161158.a, A082451, A082451.P7121663205053929701.a, A128616, A128616.P5791470407128350833.a, A128617, A128617.P2599063269449293282.a, A000265, A000265.P2772582252347773295.a, A035175, A035175.P2871059185806058886.f1, A035175.P2871059185806058886.a, A156595, A156595.P4549591963331449160.f1, A156595.P4549591963331449160.a, A003602, A003602.P7612175048291952394.a, A081603, A081603.P9418366050176887204.a, A316569, A316569.P8191093053662298645.a, A053735, A053735.P3640341592284089632.a, A062756, A062756.P3953090966624310992.a, A110963, A110963.P3344771894533151408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A121362

/-! ## A121362.P9191545638212653212

`∑{d}[n+1, A019590(#)*A106406((n+1)/#)]`
-/

namespace A121362.P9191545638212653212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019590 d * A106406 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A121362.P9191545638212653212

namespace A121362

/-- `∑{d}[n+1, A019590(#)*A106406((n+1)/#)]` -/
def P9191545638212653212.Spec : Prop :=
  ∀ n, P9191545638212653212.a n = A121362 (n + 1)

end A121362

/-! ## A121362.P2640247127505628797

`A140728(2*(n+1))+A140728(n+1)`
-/

namespace A121362.P2640247127505628797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140728 (2 * (n + 1)) + A140728 (n + 1)

end

end A121362.P2640247127505628797

namespace A121362

/-- `A140728(2*(n+1))+A140728(n+1)` -/
def P2640247127505628797.Spec : Prop :=
  ∀ n, P2640247127505628797.a n = A121362 (n + 1)

end A121362

/-! ## A121362.P4040133975764020286

`A128617(2*(n+1))-A128617(n+1)`
-/

namespace A121362.P4040133975764020286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128617 (2 * (n + 1)) - A128617 (n + 1)

end

end A121362.P4040133975764020286

namespace A121362

/-- `A128617(2*(n+1))-A128617(n+1)` -/
def P4040133975764020286.Spec : Prop :=
  ∀ n, P4040133975764020286.a n = A121362 (n + 1)

end A121362

/-! ## A121362.P6134298795057979105

`A128616(n+1)-A128616(2*(n+1))`
-/

namespace A121362.P6134298795057979105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128616 (n + 1) - A128616 (2 * (n + 1))

end

end A121362.P6134298795057979105

namespace A121362

/-- `A128616(n+1)-A128616(2*(n+1))` -/
def P6134298795057979105.Spec : Prop :=
  ∀ n, P6134298795057979105.a n = A121362 (n + 1)

end A121362

/-! ## A121362.P17958006841281320988

`A140727(A165998(n))-A140727(2*(n+1))`
-/

namespace A121362.P17958006841281320988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140727 (A165998 n).toNat - A140727 (2 * (n + 1))

end

end A121362.P17958006841281320988

namespace A121362

/-- `A140727(A165998(n))-A140727(2*(n+1))` -/
def P17958006841281320988.Spec : Prop :=
  ∀ n, P17958006841281320988.a n = A121362 (n + 1)

end A121362

/-! ## A121362.P174082771300471093

`A140727(2*(n+1))+A140727(A195161(n+1))`
-/

namespace A121362.P174082771300471093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140727 (2 * (n + 1)) + A140727 (A195161 (n + 1)).toNat

end

end A121362.P174082771300471093

namespace A121362

/-- `A140727(2*(n+1))+A140727(A195161(n+1))` -/
def P174082771300471093.Spec : Prop :=
  ∀ n, P174082771300471093.a n = A121362 (n + 1)

end A121362

/-! ## A121362.P12828135076732679725

`A140727(2*(n+1))+A140727(A008574(n+1))`
-/

namespace A121362.P12828135076732679725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140727 (2 * (n + 1)) + A140727 (A008574 (n + 1)).toNat

end

end A121362.P12828135076732679725

namespace A121362

/-- `A140727(2*(n+1))+A140727(A008574(n+1))` -/
def P12828135076732679725.Spec : Prop :=
  ∀ n, P12828135076732679725.a n = A121362 (n + 1)

end A121362

/-! ## A121362.P11738379426447846053

`A140727(2*(n+1))+A140727(A008586(n+1))`
-/

namespace A121362.P11738379426447846053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140727 (2 * (n + 1)) + A140727 (A008586 (n + 1)).toNat

end

end A121362.P11738379426447846053

namespace A121362

/-- `A140727(2*(n+1))+A140727(A008586(n+1))` -/
def P11738379426447846053.Spec : Prop :=
  ∀ n, P11738379426447846053.a n = A121362 (n + 1)

end A121362

/-! ## A121362.P18059202430141017189

`A140727(A195817(n+1))-A140727(2*(n+1))`
-/

namespace A121362.P18059202430141017189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140727 (A195817 (n + 1)).toNat - A140727 (2 * (n + 1))

end

end A121362.P18059202430141017189

namespace A121362

/-- `A140727(A195817(n+1))-A140727(2*(n+1))` -/
def P18059202430141017189.Spec : Prop :=
  ∀ n, P18059202430141017189.a n = A121362 (n + 1)

end A121362

/-! ## A121362.P12394393263506669482

`A106406(A394497(n+1))`
-/

namespace A121362.P12394393263506669482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106406 (A394497 (n + 1)).toNat

end

end A121362.P12394393263506669482

namespace A121362

/-- `A106406(A394497(n+1))` -/
def P12394393263506669482.Spec : Prop :=
  ∀ n, P12394393263506669482.a n = A121362 (n + 1)

end A121362

/-! ## A121362.P12084517536634526345

`A117444(A122373(n+1))`
-/

namespace A121362.P12084517536634526345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117444 (A122373 (n + 1)).toNat

end

end A121362.P12084517536634526345

namespace A121362

/-- `A117444(A122373(n+1))` -/
def P12084517536634526345.Spec : Prop :=
  ∀ n, P12084517536634526345.a n = A121362 (n + 1)

end A121362

/-!
# A121363: Expansion of q^(-1/4)(eta(q)*eta(q^6)*eta(q^9)/eta(q^3))^2/(eta(q^2)eta(q^18)) in powers of q.

The programs for A121363, the canonical program `A121363.P18122927571743324693` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121363 has offset 0).

The definition of A121363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121363.P4344736606663025694

`(n+1)%3*A258291(n)`
-/

namespace A121363.P4344736606663025694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 3 : ℕ) : ℤ) * A258291 n

end

end A121363.P4344736606663025694

namespace A121363

/-- `(n+1)%3*A258291(n)` -/
def P4344736606663025694.Spec : Prop :=
  ∀ n, P4344736606663025694.a n = A121363 n

end A121363

/-! ## A121363.P1155094885931047716

`(xor(1, n)-n)*A208955(n)`
-/

namespace A121363.P1155094885931047716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 n : ℤ) - (n : ℤ)) * A208955 n

end

end A121363.P1155094885931047716

namespace A121363

/-- `(xor(1, n)-n)*A208955(n)` -/
def P1155094885931047716.Spec : Prop :=
  ∀ n, P1155094885931047716.a n = A121363 n

end A121363

/-! ## A121363.P18122927571743324693

`A008441(n)*A049347(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A121363

/-- `A008441(n)*A049347(n)` -/
def P18122927571743324693.Spec : Prop :=
  ∀ n, P18122927571743324693.a n = A121363 n

theorem P18122927571743324693.correct : P18122927571743324693.Spec := by
  intro n
  simp only [A121363]

end A121363

/-! ## A121363.P6151594218903208875

`A010892(n)*A134343(n)`
-/

namespace A121363.P6151594218903208875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A134343 n

end

end A121363.P6151594218903208875

namespace A121363

/-- `A010892(n)*A134343(n)` -/
def P6151594218903208875.Spec : Prop :=
  ∀ n, P6151594218903208875.a n = A121363 n

end A121363

/-! ## A121363.P3489871600302387767

`A033999(n)*A208955(n)`
-/

namespace A121363.P3489871600302387767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A208955 n

end

end A121363.P3489871600302387767

namespace A121363

/-- `A033999(n)*A208955(n)` -/
def P3489871600302387767.Spec : Prop :=
  ∀ n, P3489871600302387767.a n = A121363 n

end A121363

/-! ## A121363.P4214158655315354486

`A008441(n)*A010892(2*n+1)`
-/

namespace A121363.P4214158655315354486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n * A010892 (2 * n + 1)

end

end A121363.P4214158655315354486

namespace A121363

/-- `A008441(n)*A010892(2*n+1)` -/
def P4214158655315354486.Spec : Prop :=
  ∀ n, P4214158655315354486.a n = A121363 n

end A121363

/-! ## A121363.P9282751420692298835

`A129448(4*n+1)`
-/

namespace A121363.P9282751420692298835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129448 (4 * n + 1)

end

end A121363.P9282751420692298835

namespace A121363

/-- `A129448(4*n+1)` -/
def P9282751420692298835.Spec : Prop :=
  ∀ n, P9282751420692298835.a n = A121363 n

end A121363

/-! ## A121363.P11143624774386986408

`A002654(4*n+1)*A102283(n+1)`
-/

namespace A121363.P11143624774386986408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (4 * n + 1) * A102283 (n + 1)

end

end A121363.P11143624774386986408

namespace A121363

/-- `A002654(4*n+1)*A102283(n+1)` -/
def P11143624774386986408.Spec : Prop :=
  ∀ n, P11143624774386986408.a n = A121363 n

end A121363

/-! ## A121363.P18177121287634259525

`A002654(4*n+1)*A010892(4*n)`
-/

namespace A121363.P18177121287634259525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (4 * n + 1) * A010892 (4 * n)

end

end A121363.P18177121287634259525

namespace A121363

/-- `A002654(4*n+1)*A010892(4*n)` -/
def P18177121287634259525.Spec : Prop :=
  ∀ n, P18177121287634259525.a n = A121363 n

end A121363

/-! ## A121363.P13365559973306359666

`A002654(4*n+1)*A091338(4*n+1)`
-/

namespace A121363.P13365559973306359666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (4 * n + 1) * A091338 (4 * n + 1)

end

end A121363.P13365559973306359666

namespace A121363

/-- `A002654(4*n+1)*A091338(4*n+1)` -/
def P13365559973306359666.Spec : Prop :=
  ∀ n, P13365559973306359666.a n = A121363 n

end A121363

/-! ## A121363.P8031291829162336250

`A035154(4*n+1)*A091338(4*n+1)`
-/

namespace A121363.P8031291829162336250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (4 * n + 1) * A091338 (4 * n + 1)

end

end A121363.P8031291829162336250

namespace A121363

/-- `A035154(4*n+1)*A091338(4*n+1)` -/
def P8031291829162336250.Spec : Prop :=
  ∀ n, P8031291829162336250.a n = A121363 n

end A121363

/-! ## A121363.P18446205331504697111

`A091338(4*n+1)*A113446(4*n+1)`
-/

namespace A121363.P18446205331504697111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091338 (4 * n + 1) * A113446 (4 * n + 1)

end

end A121363.P18446205331504697111

namespace A121363

/-- `A091338(4*n+1)*A113446(4*n+1)` -/
def P18446205331504697111.Spec : Prop :=
  ∀ n, P18446205331504697111.a n = A121363 n

end A121363

/-! ## A121363.P9342108985358787570

`A091338(4*n+1)*A122864(4*n+1)`
-/

namespace A121363.P9342108985358787570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091338 (4 * n + 1) * A122864 (4 * n + 1)

end

end A121363.P9342108985358787570

namespace A121363

/-- `A091338(4*n+1)*A122864(4*n+1)` -/
def P9342108985358787570.Spec : Prop :=
  ∀ n, P9342108985358787570.a n = A121363 n

end A121363

/-! ## A121363.P3708419565206795334

`A091338(4*n+1)*A138950(4*n+1)`
-/

namespace A121363.P3708419565206795334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091338 (4 * n + 1) * A138950 (4 * n + 1)

end

end A121363.P3708419565206795334

namespace A121363

/-- `A091338(4*n+1)*A138950(4*n+1)` -/
def P3708419565206795334.Spec : Prop :=
  ∀ n, P3708419565206795334.a n = A121363 n

end A121363

/-! ## A121363.P18191275841686844838

`A091338(4*n+1)*A163746(4*n+1)`
-/

namespace A121363.P18191275841686844838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091338 (4 * n + 1) * A163746 (4 * n + 1)

end

end A121363.P18191275841686844838

namespace A121363

/-- `A091338(4*n+1)*A163746(4*n+1)` -/
def P18191275841686844838.Spec : Prop :=
  ∀ n, P18191275841686844838.a n = A121363 n

end A121363

/-!
# A121364: Convolution of A066983 with the double Fibonacci sequence A103609.

The programs for A121364, the canonical program `A121364.P3533980564977280468` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121364 has offset 1).

The definition of A121364 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121364.P3533980564977280468

`A000045(n+1)-A000045(floor((n+2)/2))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121364

/-- `A000045(n+1)-A000045(floor((n+2)/2))` -/
def P3533980564977280468.Spec : Prop :=
  ∀ n, P3533980564977280468.a n = A121364 (n + 1)

theorem P3533980564977280468.correct : P3533980564977280468.Spec := by
  intro n
  simp only [A121364, Nat.add_sub_cancel]

end A121364

/-! ## A121364.P2230313863269358676

`∑[A212804(n)]-A103609(n+2)`
-/

namespace A121364.P2230313863269358676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A103609 (n + 2)

end

end A121364.P2230313863269358676

namespace A121364

/-- `∑[A212804(n)]-A103609(n+2)` -/
def P2230313863269358676.Spec : Prop :=
  ∀ n, P2230313863269358676.a n = A121364 (n + 1)

end A121364

/-! ## A121364.P8196647731655511100

`A000045(n+1)-A103609(n+2)`
-/

namespace A121364.P8196647731655511100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A103609 (n + 2)

end

end A121364.P8196647731655511100

namespace A121364

/-- `A000045(n+1)-A103609(n+2)` -/
def P8196647731655511100.Spec : Prop :=
  ∀ n, P8196647731655511100.a n = A121364 (n + 1)

end A121364

/-! ## A121364.P3767101797061552062

`A212804(n+2)-A103609(n+2)`
-/

namespace A121364.P3767101797061552062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) - A103609 (n + 2)

end

end A121364.P3767101797061552062

namespace A121364

/-- `A212804(n+2)-A103609(n+2)` -/
def P3767101797061552062.Spec : Prop :=
  ∀ n, P3767101797061552062.a n = A121364 (n + 1)

end A121364

/-! ## A121364.P16904896423419485992

`A079977(2*n)-A103609(n+2)`
-/

namespace A121364.P16904896423419485992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (2 * n) - A103609 (n + 2)

end

end A121364.P16904896423419485992

namespace A121364

/-- `A079977(2*n)-A103609(n+2)` -/
def P16904896423419485992.Spec : Prop :=
  ∀ n, P16904896423419485992.a n = A121364 (n + 1)

end A121364

/-! ## A121364.P4853799004638437519

`A103609(2*(n+1))-A103609(n+2)`
-/

namespace A121364.P4853799004638437519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * (n + 1)) - A103609 (n + 2)

end

end A121364.P4853799004638437519

namespace A121364

/-- `A103609(2*(n+1))-A103609(n+2)` -/
def P4853799004638437519.Spec : Prop :=
  ∀ n, P4853799004638437519.a n = A121364 (n + 1)

end A121364

/-! ## A121364.P9162069248918401023

`A000071(n+1)-A000071(A008619(n))`
-/

namespace A121364.P9162069248918401023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) - A000071 (A008619 n).toNat

end

end A121364.P9162069248918401023

namespace A121364

/-- `A000071(n+1)-A000071(A008619(n))` -/
def P9162069248918401023.Spec : Prop :=
  ∀ n, P9162069248918401023.a n = A121364 (n + 1)

end A121364

/-! ## A121364.P10518782758022116254

`A001611(n+1)-A001611(A008619(n))`
-/

namespace A121364.P10518782758022116254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1) - A001611 (A008619 n).toNat

end

end A121364.P10518782758022116254

namespace A121364

/-- `A001611(n+1)-A001611(A008619(n))` -/
def P10518782758022116254.Spec : Prop :=
  ∀ n, P10518782758022116254.a n = A121364 (n + 1)

end A121364

/-! ## A121364.P11395480936488586089

`A000071(n+1)-A000071(A004526(n)+1)`
-/

namespace A121364.P11395480936488586089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) - A000071 (A004526 n + 1).toNat

end

end A121364.P11395480936488586089

namespace A121364

/-- `A000071(n+1)-A000071(A004526(n)+1)` -/
def P11395480936488586089.Spec : Prop :=
  ∀ n, P11395480936488586089.a n = A121364 (n + 1)

end A121364

/-! ## A121364.P2570510484035302020

`A000071(n+1)-A000071(A065033(n+1))`
-/

namespace A121364.P2570510484035302020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) - A000071 (A065033 (n + 1)).toNat

end

end A121364.P2570510484035302020

namespace A121364

/-- `A000071(n+1)-A000071(A065033(n+1))` -/
def P2570510484035302020.Spec : Prop :=
  ∀ n, P2570510484035302020.a n = A121364 (n + 1)

end A121364

/-! ## A121364.P1644258891901448898

`A001611(n+1)-A001611(A065033(n+1))`
-/

namespace A121364.P1644258891901448898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1) - A001611 (A065033 (n + 1)).toNat

end

end A121364.P1644258891901448898

namespace A121364

/-- `A001611(n+1)-A001611(A065033(n+1))` -/
def P1644258891901448898.Spec : Prop :=
  ∀ n, P1644258891901448898.a n = A121364 (n + 1)

end A121364

/-! ## A121364.P17132997121754602419

`A001611(n+1)-A001611(A008621(2*n))`
-/

namespace A121364.P17132997121754602419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1) - A001611 (A008621 (2 * n)).toNat

end

end A121364.P17132997121754602419

namespace A121364

/-- `A001611(n+1)-A001611(A008621(2*n))` -/
def P17132997121754602419.Spec : Prop :=
  ∀ n, P17132997121754602419.a n = A121364 (n + 1)

end A121364

/-! ## A121364.P11825297140222068261

`A157726(n+1)-A157726(A008624(2*n))`
-/

namespace A121364.P11825297140222068261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 (n + 1) - A157726 (A008624 (2 * n)).toNat

end

end A121364.P11825297140222068261

namespace A121364

/-- `A157726(n+1)-A157726(A008624(2*n))` -/
def P11825297140222068261.Spec : Prop :=
  ∀ n, P11825297140222068261.a n = A121364 (n + 1)

end A121364

/-! ## A121364.P11287624559976855826

`A000071(n+1)-A000071(A001651(n+1)-n)`
-/

namespace A121364.P11287624559976855826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) - A000071 (A001651 (n + 1) - (n : ℤ)).toNat

end

end A121364.P11287624559976855826

namespace A121364

/-- `A000071(n+1)-A000071(A001651(n+1)-n)` -/
def P11287624559976855826.Spec : Prop :=
  ∀ n, P11287624559976855826.a n = A121364 (n + 1)

end A121364

/-! ## A121364.P4174610108980831586

`A000045(n+1)+A079977(n+1)-A123231(n+1)`
-/

namespace A121364.P4174610108980831586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A079977 (n + 1) - A123231 (n + 1))

end

end A121364.P4174610108980831586

namespace A121364

/-- `A000045(n+1)+A079977(n+1)-A123231(n+1)` -/
def P4174610108980831586.Spec : Prop :=
  ∀ n, P4174610108980831586.a n = A121364 (n + 1)

end A121364

/-! ## A121364.P4336728449337839957

`A000045(n+1)+A258085(n+1)-A259625(n+2)`
-/

namespace A121364.P4336728449337839957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A258085 (n + 1) - A259625 (n + 2))

end

end A121364.P4336728449337839957

namespace A121364

/-- `A000045(n+1)+A258085(n+1)-A259625(n+2)` -/
def P4336728449337839957.Spec : Prop :=
  ∀ n, P4336728449337839957.a n = A121364 (n + 1)

end A121364

/-! ## A121364.P3960030688665672581

`A000045(n+1)+A259623(n+1)-A259626(n+2)`
-/

namespace A121364.P3960030688665672581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A259623 (n + 1) - A259626 (n + 2))

end

end A121364.P3960030688665672581

namespace A121364

/-- `A000045(n+1)+A259623(n+1)-A259626(n+2)` -/
def P3960030688665672581.Spec : Prop :=
  ∀ n, P3960030688665672581.a n = A121364 (n + 1)

end A121364

/-! ## A121364.P13920994493585789665

`A163227(2*n+1)-A163227(A109613(n))`
-/

namespace A121364.P13920994493585789665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163227 (2 * n + 1) - A163227 (A109613 n).toNat

end

end A121364.P13920994493585789665

namespace A121364

/-- `A163227(2*n+1)-A163227(A109613(n))` -/
def P13920994493585789665.Spec : Prop :=
  ∀ n, P13920994493585789665.a n = A121364 (n + 1)

end A121364

/-! ## A121364.P11058937080489263314

`Δ[A000071(n+2)]-A103609(n+2)`
-/

namespace A121364.P11058937080489263314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A103609 (n + 2)

end

end A121364.P11058937080489263314

namespace A121364

/-- `Δ[A000071(n+2)]-A103609(n+2)` -/
def P11058937080489263314.Spec : Prop :=
  ∀ n, P11058937080489263314.a n = A121364 (n + 1)

end A121364

/-! ## A121364.P1391385041761203159

`A000071(n+1)-A000071(A129696(n+1)-A001924(n))`
-/

namespace A121364.P1391385041761203159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) - A000071 (A129696 (n + 1) - A001924 n).toNat

end

end A121364.P1391385041761203159

namespace A121364

/-- `A000071(n+1)-A000071(A129696(n+1)-A001924(n))` -/
def P1391385041761203159.Spec : Prop :=
  ∀ n, P1391385041761203159.a n = A121364 (n + 1)

end A121364

/-!
# A121365: a(n) = 6*a(n-1) - 9*a(n-2) + n + 1.

The programs for A121365, the canonical program `A121365.P3487118667794837779` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121365 has offset 1).

The definition of A121365 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-9*a(n-2)+n+1+1` (program `A121365.P3487118667794837779`, by `A121365.P3487118667794837779.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121365.P3487118667794837779

`6*a(n-1)-9*a(n-2)+n+1+1` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121365

/-- `6*a(n-1)-9*a(n-2)+n+1+1` -/
def P3487118667794837779.Spec : Prop :=
  ∀ n, P3487118667794837779.a n = A121365 (n + 1)

theorem P3487118667794837779.correct : P3487118667794837779.Spec := by
  intro n
  simp only [A121365, Nat.add_sub_cancel]

end A121365

/-! ## A121365.P6136519091899953159

`(9*(n+5)+(n-3)*3^(n+1))/36`
-/

namespace A121365.P6136519091899953159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * (n + 5) : ℤ) + ((n : ℤ) - 3) * (3 ^ (n + 1) : ℤ) : ℚ) / 36

end

end A121365.P6136519091899953159

namespace A121365

/-- `(9*(n+5)+(n-3)*3^(n+1))/36` -/
def P6136519091899953159.Spec : Prop :=
  ∀ n, P6136519091899953159.a n = (A121365 (n + 1) : ℚ)

theorem P6136519091899953159.correct : P6136519091899953159.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A121365, Nat.add_sub_cancel, A121365.P6136519091899953159.a, A121365.P3487118667794837779.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A121365, Nat.add_sub_cancel, A121365.P6136519091899953159.a, A121365.P3487118667794837779.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A121365

/-! ## A121365.P2946436167817733956

`6*a(n-1)-9*a(n-2)+n+2` with `a(0)=1, a(1)=1`
-/

namespace A121365.P2946436167817733956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  6 * a (n - 1) - 9 * a (n - 2) + (n + 2 : ℤ)

end

end A121365.P2946436167817733956

namespace A121365

/-- `6*a(n-1)-9*a(n-2)+n+2` -/
def P2946436167817733956.Spec : Prop :=
  ∀ n, P2946436167817733956.a n = A121365 (n + 1)

theorem P2946436167817733956.correct : P2946436167817733956.Spec := by
  intro n
  simp only [A121365, Nat.add_sub_cancel, A121365.P2946436167817733956.a, A121365.P3487118667794837779.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A121365

/-! ## A121365.P7555216559516001373

`ceil((A082306(n)+1-3^n)/2)`
-/

namespace A121365.P7555216559516001373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A082306 n + 1 - (3 ^ n : ℤ) : ℚ) / 2⌉

end

end A121365.P7555216559516001373

namespace A121365

/-- `ceil((A082306(n)+1-3^n)/2)` -/
def P7555216559516001373.Spec : Prop :=
  ∀ n, P7555216559516001373.a n = A121365 (n + 1)

end A121365

/-! ## A121365.P16588059841322097624

`∑[A014915(A028310(n))]-A176177(n)`
-/

namespace A121365.P16588059841322097624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014915 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A176177 n

end

end A121365.P16588059841322097624

namespace A121365

/-- `∑[A014915(A028310(n))]-A176177(n)` -/
def P16588059841322097624.Spec : Prop :=
  ∀ n, P16588059841322097624.a n = A121365 (n + 1)

end A121365

/-! ## A121365.P18298970698139501101

`∑[A259653(∑[n-2]+3)]`
-/

namespace A121365.P18298970698139501101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259653 (∑ j ∈ Finset.range (n + 1), f2 j + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121365.P18298970698139501101

namespace A121365

/-- `∑[A259653(∑[n-2]+3)]` -/
def P18298970698139501101.Spec : Prop :=
  ∀ n, P18298970698139501101.a n = A121365 (n + 1)

end A121365

/-!
# A121366: a(n) = 2^(n*(3n+5)/2) = 2^A115067(n+1).

The programs for A121366, the canonical program `A121366.P12119860525904488746` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121366 has offset 0).

The definition of A121366 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121366.P12119860525904488746

`2^(n*(3*n+5)/2)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121366

/-- `2^(n*(3*n+5)/2)` -/
def P12119860525904488746.Spec : Prop :=
  ∀ n, P12119860525904488746.a n = (A121366 n : ℝ)

end A121366

/-! ## A121366.P16765439957475796332

`2^A115067(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121366.P16765439957475796332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A115067 (n + 1) : ℤ)

end

end A121366.P16765439957475796332

namespace A121366

/-- `2^A115067(n+1)` -/
def P16765439957475796332.Spec : Prop :=
  ∀ n, P16765439957475796332.a n = (A121366 n : ℚ)

end A121366

/-! ## A121366.P15371841532697248252

`∏[8*a(n-1)]` with `a(0)=1, a(1)=16`
-/

namespace A121366.P15371841532697248252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A121366.P15371841532697248252

namespace A121366

/-- `∏[8*a(n-1)]` -/
def P15371841532697248252.Spec : Prop :=
  ∀ n, (P15371841532697248252.a n : ℤ) = A121366 n

end A121366

/-! ## A121366.P1287064885082101870

`∏[8^n*ceil(cosh(sin(n)))]`
-/

namespace A121366.P1287064885082101870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * ⌈Real.cosh (Real.sin (n : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A121366.P1287064885082101870

namespace A121366

/-- `∏[8^n*ceil(cosh(sin(n)))]` -/
def P1287064885082101870.Spec : Prop :=
  ∀ n, P1287064885082101870.a n = A121366 n

end A121366

/-! ## A121366.P2325057441425417372

`A166077(n+1)/2`
-/

namespace A121366.P2325057441425417372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166077 (n + 1) : ℚ) / 2

end

end A121366.P2325057441425417372

namespace A121366

/-- `A166077(n+1)/2` -/
def P2325057441425417372.Spec : Prop :=
  ∀ n, P2325057441425417372.a n = (A121366 n : ℚ)

end A121366

/-!
# A121367: a(1) = a(2) = 1, a(n) = a(n-1) + A007947(a(n-2)) for n >= 3, i.e., a(n) = a(n-1) plus the largest squarefree divisor of a(n-2).

The programs for A121367, the canonical program `A121367.P2179851518222068180` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121367 has offset 1).

The definition of A121367 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A007947(a(n-2))` (program `A121367.P2179851518222068180`, by `A121367.P2179851518222068180.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121367.P2179851518222068180

`a(n-1)+A007947(a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121367

/-- `a(n-1)+A007947(a(n-2))` -/
def P2179851518222068180.Spec : Prop :=
  ∀ n, P2179851518222068180.a n = A121367 (n + 1)

theorem P2179851518222068180.correct : P2179851518222068180.Spec := by
  intro n
  simp only [A121367, Nat.add_sub_cancel]

end A121367

/-! ## A121367.P9799208162988250242

`A015052(a(n-2))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A121367.P9799208162988250242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A015052 (a (n - 2)).toNat + a (n - 1)

end

end A121367.P9799208162988250242

namespace A121367

/-- `A015052(a(n-2))+a(n-1)` -/
def P9799208162988250242.Spec : Prop :=
  ∀ n, P9799208162988250242.a n = A121367 (n + 1)

end A121367

/-! ## A121367.P252322520152054247

`A015053(a(n-2))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A121367.P252322520152054247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A015053 (a (n - 2)).toNat + a (n - 1)

end

end A121367.P252322520152054247

namespace A121367

/-- `A015053(a(n-2))+a(n-1)` -/
def P252322520152054247.Spec : Prop :=
  ∀ n, P252322520152054247.a n = A121367 (n + 1)

end A121367

/-! ## A121367.P8237812058925739042

`a(n-1)+A073353(a(n-2))-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A121367.P8237812058925739042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (A073353 (a (n - 2)).toNat - a (n - 2))

end

end A121367.P8237812058925739042

namespace A121367

/-- `a(n-1)+A073353(a(n-2))-a(n-2)` -/
def P8237812058925739042.Spec : Prop :=
  ∀ n, P8237812058925739042.a n = A121367 (n + 1)

end A121367

/-! ## A121367.P469879605380136875

`A237284(A000108(n))+2^(n-∑[val(n+1, 2)])`
-/

namespace A121367.P469879605380136875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237284 (A000108 n).toNat : ℚ) + (2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ)

end

end A121367.P469879605380136875

namespace A121367

/-- `A237284(A000108(n))+2^(n-∑[val(n+1, 2)])` -/
def P469879605380136875.Spec : Prop :=
  ∀ n, P469879605380136875.a n = (A121367 (n + 1) : ℚ)

end A121367

/-!
# A121368: a(1) = a(2) = 1, a(n) = A007947(a(n-1)) + a(n-2), for n >= 3, i.e., a(n) = a(n-2) plus the largest squarefree divisor of a(n-1).

The programs for A121368, the canonical program `A121368.P15912026071733467497` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121368 has offset 1).

The definition of A121368 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007947(a(n-1))+a(n-2)` (program `A121368.P15912026071733467497`, by `A121368.P15912026071733467497.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121368.P15912026071733467497

`A007947(a(n-1))+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121368

/-- `A007947(a(n-1))+a(n-2)` -/
def P15912026071733467497.Spec : Prop :=
  ∀ n, P15912026071733467497.a n = A121368 (n + 1)

theorem P15912026071733467497.correct : P15912026071733467497.Spec := by
  intro n
  simp only [A121368, Nat.add_sub_cancel]

end A121368

/-! ## A121368.P6633289878577810628

`A083346(a(n-1))+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A121368.P6633289878577810628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A083346 (a (n - 1)).toNat + a (n - 2)

end

end A121368.P6633289878577810628

namespace A121368

/-- `A083346(a(n-1))+a(n-2)` -/
def P6633289878577810628.Spec : Prop :=
  ∀ n, P6633289878577810628.a n = A121368 (n + 1)

end A121368

/-! ## A121368.P11124660502663857336

`A348036(a(n-1))+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A121368.P11124660502663857336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A348036 (a (n - 1)).toNat + a (n - 2)

end

end A121368.P11124660502663857336

namespace A121368

/-- `A348036(a(n-1))+a(n-2)` -/
def P11124660502663857336.Spec : Prop :=
  ∀ n, P11124660502663857336.a n = A121368 (n + 1)

end A121368

/-! ## A121368.P579733366169025630

`A015052(a(n-1))+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A121368.P579733366169025630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A015052 (a (n - 1)).toNat + a (n - 2)

end

end A121368.P579733366169025630

namespace A121368

/-- `A015052(a(n-1))+a(n-2)` -/
def P579733366169025630.Spec : Prop :=
  ∀ n, P579733366169025630.a n = A121368 (n + 1)

end A121368

/-!
# A121369: a(1) = a(2) = 1, a(n) = A007947(a(n-1)) + A007947(a(n-2)) for n >= 3, i.e., a(n) is the largest squarefree divisor of a(n-1) plus the largest squarefree divisor of a(n-2).

The programs for A121369, the canonical program `A121369.P7456332223395737425` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121369 has offset 1).

The definition of A121369 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007947(a(n-1))+A007947(a(n-2))` (program `A121369.P7456332223395737425`, by `A121369.P7456332223395737425.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121369.P7456332223395737425

`A007947(a(n-1))+A007947(a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121369

/-- `A007947(a(n-1))+A007947(a(n-2))` -/
def P7456332223395737425.Spec : Prop :=
  ∀ n, P7456332223395737425.a n = A121369 (n + 1)

theorem P7456332223395737425.correct : P7456332223395737425.Spec := by
  intro n
  simp only [A121369, Nat.add_sub_cancel]

end A121369

/-! ## A121369.P9984745382434631799

`A165911(abs(1-n))+A165911(n)`
-/

namespace A121369.P9984745382434631799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165911 |1 - (n : ℤ)|.toNat + A165911 n

end

end A121369.P9984745382434631799

namespace A121369

/-- `A165911(abs(1-n))+A165911(n)` -/
def P9984745382434631799.Spec : Prop :=
  ∀ n, P9984745382434631799.a n = A121369 (n + 1)

end A121369

/-! ## A121369.P4913017959578525487

`A007947(a(n-2))+A007947(A165911(n))` with `a(0)=1, a(1)=1`
-/

namespace A121369.P4913017959578525487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A007947 (a (n - 2)).toNat + A007947 (A165911 n).toNat

end

end A121369.P4913017959578525487

namespace A121369

/-- `A007947(a(n-2))+A007947(A165911(n))` -/
def P4913017959578525487.Spec : Prop :=
  ∀ n, P4913017959578525487.a n = A121369 (n + 1)

end A121369

/-! ## A121369.P17454193331707839323

`A354184(A078315(A121367(n+1))+n)`
-/

namespace A121369.P17454193331707839323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354184 (A078315 (A121367 (n + 1)).toNat + (n : ℤ)).toNat

end

end A121369.P17454193331707839323

namespace A121369

/-- `A354184(A078315(A121367(n+1))+n)` -/
def P17454193331707839323.Spec : Prop :=
  ∀ n, P17454193331707839323.a n = A121369 (n + 1)

end A121369

/-! ## A121369.P5566133447684459735

`A354184(A078315(A121368(n+1))+n)`
-/

namespace A121369.P5566133447684459735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354184 (A078315 (A121368 (n + 1)).toNat + (n : ℤ)).toNat

end

end A121369.P5566133447684459735

namespace A121369

/-- `A354184(A078315(A121368(n+1))+n)` -/
def P5566133447684459735.Spec : Prop :=
  ∀ n, P5566133447684459735.a n = A121369 (n + 1)

end A121369

/-!
# A121371: Least number k such that (k*M(n))^2 + k*M(n) - 1 and (k*M(n))^2 + k*M(n) + 1 are twin primes where M(n) is the n-th Mersenne prime.

The programs for A121371, there is no canonical definition to state claims against.
-/

/-! ## A121371.P2077214015247220519

`A331991(A150655(n+1))`
-/

namespace A121371.P2077214015247220519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331991 (A150655 (n + 1)).toNat

end

end A121371.P2077214015247220519

/-! ## A121371.P1580183262299523370

`A156061(A098097(n+1)+A001844(n))`
-/

namespace A121371.P1580183262299523370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (A098097 (n + 1) + A001844 n).toNat

end

end A121371.P1580183262299523370

/-!
# A121372: Triangle, read by rows of length A003056(n) for n >= 1, defined by the recurrence: T(n,k) = T(n-k,k-1) - T(n-k,k) for n > k > 1, with T(n,1) =(-1)^(n-1) for n >= 1.

The programs for A121372, there is no canonical definition to state claims against.
-/

/-! ## A121372.P17787254381908584823

`A291954(lt[1, A291968(n)])`
-/

namespace A121372.P17787254381908584823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291954 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A121372.P17787254381908584823

/-! ## A121372.P1834349075001539009

`A291954(lt[1, A291970(n)])`
-/

namespace A121372.P1834349075001539009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291954 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A121372.P1834349075001539009

/-! ## A121372.P1726551009780652265

`A291954(lt[1, A291971(n)])`
-/

namespace A121372.P1726551009780652265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291954 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A121372.P1726551009780652265

/-! ## A121372.P3421844696878231874

`A291954(comp[∑[A123578(n)]])`
-/

namespace A121372.P3421844696878231874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291954 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A121372.P3421844696878231874

/-! ## A121372.P1412072439542524025

`A291954(lt[A000007(n), A291895(n)])`
-/

namespace A121372.P1412072439542524025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291954 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A121372.P1412072439542524025

/-! ## A121372.P13030175263181957440

`A291954(lt[0, n*A291895(n)])`
-/

namespace A121372.P13030175263181957440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A291895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291954 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A121372.P13030175263181957440

/-! ## A121372.P3114351549242951703

`A291954(lt[A000007(n), A291929(n)])`
-/

namespace A121372.P3114351549242951703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291954 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A121372.P3114351549242951703

/-! ## A121372.P8191797844145523163

`A291954(lt[0, n*A291929(n)])`
-/

namespace A121372.P8191797844145523163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A291929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291954 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A121372.P8191797844145523163

/-!
# A121373: Expansion of f(x) = f(x, -x^2) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A121373, the canonical program `A121373.P13063866257632154363` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121373 has offset 0).

The definition of A121373 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A121373.P13063866257632154363

`(-1)^n*A010815(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A121373

/-- `(-1)^n*A010815(n)` -/
def P13063866257632154363.Spec : Prop :=
  ∀ n, P13063866257632154363.a n = A121373 n

theorem P13063866257632154363.correct : P13063866257632154363.Spec := by
  intro n
  simp only [A121373]

end A121373

/-! ## A121373.P3292494794282451876

`A010815(char[1]+n)/(-1)^n`
-/

namespace A121373.P3292494794282451876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 ((if ∃ j, f1 j = n then 1 else 0) + n) : ℚ) / ((-1) ^ n : ℚ)

end

end A121373.P3292494794282451876

namespace A121373

/-- `A010815(char[1]+n)/(-1)^n` -/
def P3292494794282451876.Spec : Prop :=
  ∀ n, P3292494794282451876.a n = (A121373 n : ℚ)

end A121373

/-! ## A121373.P6432169131597082030

`A010815(n)*A033999(n)`
-/

namespace A121373.P6432169131597082030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A033999 n

end

end A121373.P6432169131597082030

namespace A121373

/-- `A010815(n)*A033999(n)` -/
def P6432169131597082030.Spec : Prop :=
  ∀ n, P6432169131597082030.a n = A121373 n

theorem P6432169131597082030.correct : P6432169131597082030.Spec := by
  intro n
  simp only [A121373, Nat.add_sub_cancel, A121373.P6432169131597082030.a, A121373.P13063866257632154363.a, A010815, A010815.P5219802530418017542.f1, A010815.P5219802530418017542.a, A033999, A033999.P17703899380244199787.a, A078616, A078616.P11557008643438510974.a, A007877, A007877.P13957624937217873679.a, A235963, A235963.P8917601203416474347.a, A085141, A085141.P2552504133626541575.a, A180447, A180447.P3440103669525281536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A121373

/-! ## A121373.P2136384176250398757

`A010815(n)*A133985(n)`
-/

namespace A121373.P2136384176250398757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A133985 n

end

end A121373.P2136384176250398757

namespace A121373

/-- `A010815(n)*A133985(n)` -/
def P2136384176250398757.Spec : Prop :=
  ∀ n, P2136384176250398757.a n = A121373 n

end A121373

/-! ## A121373.P13016785868195892598

`A057077(n)*A206959(n)`
-/

namespace A121373.P13016785868195892598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A206959 n

end

end A121373.P13016785868195892598

namespace A121373

/-- `A057077(n)*A206959(n)` -/
def P13016785868195892598.Spec : Prop :=
  ∀ n, P13016785868195892598.a n = A121373 n

end A121373

/-! ## A121373.P14300539363683166014

`A087960(n)*A206958(n)`
-/

namespace A121373.P14300539363683166014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A206958 n

end

end A121373.P14300539363683166014

namespace A121373

/-- `A087960(n)*A206958(n)` -/
def P14300539363683166014.Spec : Prop :=
  ∀ n, P14300539363683166014.a n = A121373 n

end A121373

/-! ## A121373.P918723955843823761

`A010815(n)*A062157(n+1)`
-/

namespace A121373.P918723955843823761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A062157 (n + 1)

end

end A121373.P918723955843823761

namespace A121373

/-- `A010815(n)*A062157(n+1)` -/
def P918723955843823761.Spec : Prop :=
  ∀ n, P918723955843823761.a n = A121373 n

theorem P918723955843823761.correct : P918723955843823761.Spec := by
  intro n
  simp only [A121373, Nat.add_sub_cancel, A121373.P918723955843823761.a, A121373.P13063866257632154363.a, A010815, A010815.P5219802530418017542.f1, A010815.P5219802530418017542.a, A062157, A062157.P13834877263571195293.a, A078616, A078616.P11557008643438510974.a, A007877, A007877.P13957624937217873679.a, A235963, A235963.P8917601203416474347.a, A085141, A085141.P2552504133626541575.a, A180447, A180447.P3440103669525281536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A121373

/-! ## A121373.P13253163897767561889

`2*A247223(n)-A133985(n)`
-/

namespace A121373.P13253163897767561889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247223 n - A133985 n

end

end A121373.P13253163897767561889

namespace A121373

/-- `2*A247223(n)-A133985(n)` -/
def P13253163897767561889.Spec : Prop :=
  ∀ n, P13253163897767561889.a n = A121373 n

end A121373

/-! ## A121373.P856014074794868321

`A010815(n)*A206958(n)*A206959(n)`
-/

namespace A121373.P856014074794868321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A206958 n * A206959 n

end

end A121373.P856014074794868321

namespace A121373

/-- `A010815(n)*A206958(n)*A206959(n)` -/
def P856014074794868321.Spec : Prop :=
  ∀ n, P856014074794868321.a n = A121373 n

end A121373

/-! ## A121373.P17524466325266923134

`A000009(n)*A010815(n)/A081360(n)`
-/

namespace A121373.P17524466325266923134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 n * A010815 n : ℚ) / (A081360 n : ℚ)

end

end A121373.P17524466325266923134

namespace A121373

/-- `A000009(n)*A010815(n)/A081360(n)` -/
def P17524466325266923134.Spec : Prop :=
  ∀ n, P17524466325266923134.a n = (A121373 n : ℚ)

end A121373

/-! ## A121373.P17422586099856282983

`A001935(n)*A010815(n)/A083365(n)`
-/

namespace A121373.P17422586099856282983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001935 n * A010815 n : ℚ) / (A083365 n : ℚ)

end

end A121373.P17422586099856282983

namespace A121373

/-- `A001935(n)*A010815(n)/A083365(n)` -/
def P17422586099856282983.Spec : Prop :=
  ∀ n, P17422586099856282983.a n = (A121373 n : ℚ)

end A121373

/-! ## A121373.P16421682840786970900

`A010815(n)*A022597(n)/A073252(n)`
-/

namespace A121373.P16421682840786970900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 n * A022597 n : ℚ) / (A073252 n : ℚ)

end

end A121373.P16421682840786970900

namespace A121373

/-- `A010815(n)*A022597(n)/A073252(n)` -/
def P16421682840786970900.Spec : Prop :=
  ∀ n, P16421682840786970900.a n = (A121373 n : ℚ)

end A121373

/-! ## A121373.P3360734459647864397

`A000118(n)*A010815(n)/A096727(n)`
-/

namespace A121373.P3360734459647864397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000118 n * A010815 n : ℚ) / (A096727 n : ℚ)

end

end A121373.P3360734459647864397

namespace A121373

/-- `A000118(n)*A010815(n)/A096727(n)` -/
def P3360734459647864397.Spec : Prop :=
  ∀ n, P3360734459647864397.a n = (A121373 n : ℚ)

end A121373

/-! ## A121373.P13265595903059029997

`A004011(n)*A010815(n)/A103640(n)`
-/

namespace A121373.P13265595903059029997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004011 n * A010815 n : ℚ) / (A103640 n : ℚ)

end

end A121373.P13265595903059029997

namespace A121373

/-- `A004011(n)*A010815(n)/A103640(n)` -/
def P13265595903059029997.Spec : Prop :=
  ∀ n, P13265595903059029997.a n = (A121373 n : ℚ)

end A121373

/-! ## A121373.P3936063468484964154

`A010815(n)*A029839(n)/A082304(n)`
-/

namespace A121373.P3936063468484964154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 n * A029839 n : ℚ) / (A082304 n : ℚ)

end

end A121373.P3936063468484964154

namespace A121373

/-- `A010815(n)*A029839(n)/A082304(n)` -/
def P3936063468484964154.Spec : Prop :=
  ∀ n, P3936063468484964154.a n = (A121373 n : ℚ)

end A121373

/-! ## A121373.P1607329511721941725

`A006950(n)*A010815(n)/A106507(n)`
-/

namespace A121373.P1607329511721941725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006950 n * A010815 n : ℚ) / (A106507 n : ℚ)

end

end A121373.P1607329511721941725

namespace A121373

/-- `A006950(n)*A010815(n)/A106507(n)` -/
def P1607329511721941725.Spec : Prop :=
  ∀ n, P1607329511721941725.a n = (A121373 n : ℚ)

end A121373

/-! ## A121373.P5127397704237103280

`A008438(n)*A010815(n)/A121613(n)`
-/

namespace A121373.P5127397704237103280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008438 n * A010815 n : ℚ) / (A121613 n : ℚ)

end

end A121373.P5127397704237103280

namespace A121373

/-- `A008438(n)*A010815(n)/A121613(n)` -/
def P5127397704237103280.Spec : Prop :=
  ∀ n, P5127397704237103280.a n = (A121373 n : ℚ)

end A121373

/-! ## A121373.P6896314523069515149

`A010815(n)*A022598(n)/A107635(n)`
-/

namespace A121373.P6896314523069515149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 n * A022598 n : ℚ) / (A107635 n : ℚ)

end

end A121373.P6896314523069515149

namespace A121373

/-- `A010815(n)*A022598(n)/A107635(n)` -/
def P6896314523069515149.Spec : Prop :=
  ∀ n, P6896314523069515149.a n = (A121373 n : ℚ)

end A121373

/-! ## A121373.P1575640231659440257

`A010815(n)*A036018(n)/A101195(n)`
-/

namespace A121373.P1575640231659440257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 n * A036018 n : ℚ) / (A101195 n : ℚ)

end

end A121373.P1575640231659440257

namespace A121373

/-- `A010815(n)*A036018(n)/A101195(n)` -/
def P1575640231659440257.Spec : Prop :=
  ∀ n, P1575640231659440257.a n = (A121373 n : ℚ)

end A121373

/-! ## A121373.P16731724931301786478

`A010815(n)*A030211(n)/A134461(n)`
-/

namespace A121373.P16731724931301786478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 n * A030211 n : ℚ) / (A134461 n : ℚ)

end

end A121373.P16731724931301786478

namespace A121373

/-- `A010815(n)*A030211(n)/A134461(n)` -/
def P16731724931301786478.Spec : Prop :=
  ∀ n, P16731724931301786478.a n = (A121373 n : ℚ)

end A121373

/-!
# A121381: a(n) = ceiling(n*Pi).

The programs for A121381, the canonical program `A121381.P3795312850453560731` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121381 has offset 0).

The definition of A121381 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*π)` (program `A121381.P3795312850453560731`, by `A121381.P3795312850453560731.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121381.P3795312850453560731

`ceil(n*π)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121381

/-- `ceil(n*π)` -/
def P3795312850453560731.Spec : Prop :=
  ∀ n, P3795312850453560731.a n = A121381 n

theorem P3795312850453560731.correct : P3795312850453560731.Spec := by
  intro n
  simp only [A121381]

end A121381

/-! ## A121381.P681478446174102175

`comp[floor(sin(2*n)+n+1)]`
-/

namespace A121381.P681478446174102175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (2 * n : ℝ) + (n + 1 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A121381.P681478446174102175

namespace A121381

/-- `comp[floor(sin(2*n)+n+1)]` -/
def P681478446174102175.Spec : Prop :=
  ∀ n, (P681478446174102175.a n : ℤ) = A121381 n

end A121381

/-! ## A121381.P13171424413768947168

`(floor(π*n)+1)%(floor(π*n)+1)²`
-/

namespace A121381.P13171424413768947168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊Real.pi * (n : ℝ)⌋ + 1) ((⌊Real.pi * (n : ℝ)⌋ + 1) ^ 2)

end

end A121381.P13171424413768947168

namespace A121381

/-- `(floor(π*n)+1)%(floor(π*n)+1)²` -/
def P13171424413768947168.Spec : Prop :=
  ∀ n, P13171424413768947168.a n = A121381 n

end A121381

/-! ## A121381.P14745730420177051656

`floor(π*n)-A057428(n)`
-/

namespace A121381.P14745730420177051656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n : ℝ)⌋ - A057428 n

end

end A121381.P14745730420177051656

namespace A121381

/-- `floor(π*n)-A057428(n)` -/
def P14745730420177051656.Spec : Prop :=
  ∀ n, P14745730420177051656.a n = A121381 n

end A121381

/-! ## A121381.P2056116490091330800

`A022844(n)+ceil(abs(sin(n)))`
-/

namespace A121381.P2056116490091330800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n + ⌈|Real.sin (n : ℝ)|⌉

end

end A121381.P2056116490091330800

namespace A121381

/-- `A022844(n)+ceil(abs(sin(n)))` -/
def P2056116490091330800.Spec : Prop :=
  ∀ n, P2056116490091330800.a n = A121381 n

end A121381

/-! ## A121381.P8284238818118314772

`A057427(n)+A022844(n)`
-/

namespace A121381.P8284238818118314772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A022844 n

end

end A121381.P8284238818118314772

namespace A121381

/-- `A057427(n)+A022844(n)` -/
def P8284238818118314772.Spec : Prop :=
  ∀ n, P8284238818118314772.a n = A121381 n

end A121381

/-! ## A121381.P10119873306951379943

`A087156(n+1)+A063459(n)`
-/

namespace A121381.P10119873306951379943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + A063459 n

end

end A121381.P10119873306951379943

namespace A121381

/-- `A087156(n+1)+A063459(n)` -/
def P10119873306951379943.Spec : Prop :=
  ∀ n, P10119873306951379943.a n = A121381 n

end A121381

/-! ## A121381.P8991852186768823813

`A004084(n+1)-A000007(n)`
-/

namespace A121381.P8991852186768823813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 1) - A000007 n

end

end A121381.P8991852186768823813

namespace A121381

/-- `A004084(n+1)-A000007(n)` -/
def P8991852186768823813.Spec : Prop :=
  ∀ n, P8991852186768823813.a n = A121381 n

end A121381

/-! ## A121381.P2293367030858981377

`A022844(n)+1-A000007(n)`
-/

namespace A121381.P2293367030858981377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n + (1 - A000007 n)

end

end A121381.P2293367030858981377

namespace A121381

/-- `A022844(n)+1-A000007(n)` -/
def P2293367030858981377.Spec : Prop :=
  ∀ n, P2293367030858981377.a n = A121381 n

end A121381

/-! ## A121381.P17333093742448465943

`A004084(n+1)*A057427(n)`
-/

namespace A121381.P17333093742448465943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 1) * A057427 n

end

end A121381.P17333093742448465943

namespace A121381

/-- `A004084(n+1)*A057427(n)` -/
def P17333093742448465943.Spec : Prop :=
  ∀ n, P17333093742448465943.a n = A121381 n

end A121381

/-! ## A121381.P3079967849412021170

`A022844(n)+A019426(2*n)`
-/

namespace A121381.P3079967849412021170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n + A019426 (2 * n)

end

end A121381.P3079967849412021170

namespace A121381

/-- `A022844(n)+A019426(2*n)` -/
def P3079967849412021170.Spec : Prop :=
  ∀ n, P3079967849412021170.a n = A121381 n

end A121381

/-! ## A121381.P1457179823494639172

`A022844(n)+A019431(2*n)`
-/

namespace A121381.P1457179823494639172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n + A019431 (2 * n)

end

end A121381.P1457179823494639172

namespace A121381

/-- `A022844(n)+A019431(2*n)` -/
def P1457179823494639172.Spec : Prop :=
  ∀ n, P1457179823494639172.a n = A121381 n

end A121381

/-! ## A121381.P13706497814471052780

`and(A004084(n+1), A057428(n))`
-/

namespace A121381.P13706497814471052780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004084 (n + 1)) (A057428 n)

end

end A121381.P13706497814471052780

namespace A121381

/-- `and(A004084(n+1), A057428(n))` -/
def P13706497814471052780.Spec : Prop :=
  ∀ n, P13706497814471052780.a n = A121381 n

end A121381

/-! ## A121381.P11479484422522597009

`A057427(n)+A063459(n)+n`
-/

namespace A121381.P11479484422522597009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (A063459 n + (n : ℤ))

end

end A121381.P11479484422522597009

namespace A121381

/-- `A057427(n)+A063459(n)+n` -/
def P11479484422522597009.Spec : Prop :=
  ∀ n, P11479484422522597009.a n = A121381 n

end A121381

/-! ## A121381.P15564931456389743161

`A063459(n)+n-A057428(n)`
-/

namespace A121381.P15564931456389743161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063459 n + ((n : ℤ) - A057428 n)

end

end A121381.P15564931456389743161

namespace A121381

/-- `A063459(n)+n-A057428(n)` -/
def P15564931456389743161.Spec : Prop :=
  ∀ n, P15564931456389743161.a n = A121381 n

end A121381

/-! ## A121381.P6472398194781593429

`A022844(n)+A020639(A004277(n))-1`
-/

namespace A121381.P6472398194781593429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n + (A020639 (A004277 n).toNat - 1)

end

end A121381.P6472398194781593429

namespace A121381

/-- `A022844(n)+A020639(A004277(n))-1` -/
def P6472398194781593429.Spec : Prop :=
  ∀ n, P6472398194781593429.a n = A121381 n

end A121381

/-! ## A121381.P14310256433997348053

`A022844(n)+A135039(n)-A066643(n)`
-/

namespace A121381.P14310256433997348053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n + (A135039 n - A066643 n)

end

end A121381.P14310256433997348053

namespace A121381

/-- `A022844(n)+A135039(n)-A066643(n)` -/
def P14310256433997348053.Spec : Prop :=
  ∀ n, P14310256433997348053.a n = A121381 n

end A121381

/-! ## A121381.P17246111904476397374

`A022844(n)+A135973(n)-A066645(n)`
-/

namespace A121381.P17246111904476397374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n + (A135973 n - A066645 n)

end

end A121381.P17246111904476397374

namespace A121381

/-- `A022844(n)+A135973(n)-A066645(n)` -/
def P17246111904476397374.Spec : Prop :=
  ∀ n, P17246111904476397374.a n = A121381 n

end A121381

/-! ## A121381.P15906673511072064407

`A022844(n)+A248758(n)-A240977(n)`
-/

namespace A121381.P15906673511072064407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n + (A248758 n - A240977 n)

end

end A121381.P15906673511072064407

namespace A121381

/-- `A022844(n)+A248758(n)-A240977(n)` -/
def P15906673511072064407.Spec : Prop :=
  ∀ n, P15906673511072064407.a n = A121381 n

end A121381

/-!
# A121382: Number of ways of writing n as x*y*z, with x <= y <= z and gcd(x,y) = gcd(y,z) = 1.

The programs for A121382, there is no canonical definition to state claims against.
-/

/-! ## A121382.P4764407473665697099

`A218800(A017077(n)%A173675(n+1))`
-/

namespace A121382.P4764407473665697099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218800 (Int.tmod (A017077 n) (A173675 (n + 1))).toNat

end

end A121382.P4764407473665697099

/-! ## A121382.P16190287634548730660

`A340020(n+1)%A305150(n+1)+1`
-/

namespace A121382.P16190287634548730660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340020 (n + 1)) (A305150 (n + 1)) + 1

end

end A121382.P16190287634548730660

/-! ## A121382.P6566637186833937876

`A019565(A340020(n+1)%A305150(n+1))`
-/

namespace A121382.P6566637186833937876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (Int.tmod (A340020 (n + 1)) (A305150 (n + 1))).toNat

end

end A121382.P6566637186833937876

/-! ## A121382.P14892991821630281067

`A166588(A140550(n+1)%A008480(n+1))`
-/

namespace A121382.P14892991821630281067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166588 (Int.tmod (A140550 (n + 1)) (A008480 (n + 1))).toNat

end

end A121382.P14892991821630281067

/-! ## A121382.P14009172061282480254

`A305150(n+1)-A178798(A225630(n))`
-/

namespace A121382.P14009172061282480254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305150 (n + 1) - A178798 (A225630 n).toNat

end

end A121382.P14009172061282480254

/-!
# A121383: a(0)=3. a(n) = number of earlier terms which, each added to n, sum to a square.

The programs for A121383, there is no canonical definition to state claims against.
-/

/-! ## A121383.P992592423054297132

`C(A361902(n), A361902(A078356(n+1)))`
-/

namespace A121383.P992592423054297132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A361902 n).toNat (A361902 (A078356 (n + 1)).toNat).toNat

end

end A121383.P992592423054297132

/-! ## A121383.P14279269464338086421

`A301856(gcd(A005449(n), A270339(3*n+4)))`
-/

namespace A121383.P14279269464338086421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301856 (Int.gcd (A005449 n) (A270339 (3 * n + 4)))

end

end A121383.P14279269464338086421

/-!
# A121384: a(n) = ceiling(n*e).

The programs for A121384, the canonical program `A121384.P6174891099336009590` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121384 has offset 0).

The definition of A121384 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*e)` (program `A121384.P6174891099336009590`, by `A121384.P6174891099336009590.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121384.P6174891099336009590

`ceil(n*e)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121384

/-- `ceil(n*e)` -/
def P6174891099336009590.Spec : Prop :=
  ∀ n, P6174891099336009590.a n = A121384 n

theorem P6174891099336009590.correct : P6174891099336009590.Spec := by
  intro n
  simp only [A121384]

end A121384

/-! ## A121384.P4077440105539220806

`floor(n*(acot(n)+e))`
-/

namespace A121384.P4077440105539220806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (SequenceMachineLib.acot (n : ℝ) + Real.exp 1)⌋

end

end A121384.P4077440105539220806

namespace A121384

/-- `floor(n*(acot(n)+e))` -/
def P4077440105539220806.Spec : Prop :=
  ∀ n, P4077440105539220806.a n = A121384 n

end A121384

/-! ## A121384.P15192021641940431603

`(A022843(n)+1)%(n+1)²`
-/

namespace A121384.P15192021641940431603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022843 n + 1) ((n + 1) ^ 2 : ℤ)

end

end A121384.P15192021641940431603

namespace A121384

/-- `(A022843(n)+1)%(n+1)²` -/
def P15192021641940431603.Spec : Prop :=
  ∀ n, P15192021641940431603.a n = A121384 n

end A121384

/-! ## A121384.P5146450979875400555

`A057427(n)+A022843(n)`
-/

namespace A121384.P5146450979875400555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A022843 n

end

end A121384.P5146450979875400555

namespace A121384

/-- `A057427(n)+A022843(n)` -/
def P5146450979875400555.Spec : Prop :=
  ∀ n, P5146450979875400555.a n = A121384 n

end A121384

/-! ## A121384.P2779149425110305147

`A022843(n)-A057428(n)`
-/

namespace A121384.P2779149425110305147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n - A057428 n

end

end A121384.P2779149425110305147

namespace A121384

/-- `A022843(n)-A057428(n)` -/
def P2779149425110305147.Spec : Prop :=
  ∀ n, P2779149425110305147.a n = A121384 n

end A121384

/-! ## A121384.P9950088383614868041

`A022843(n)+1-A000007(n)`
-/

namespace A121384.P9950088383614868041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n + (1 - A000007 n)

end

end A121384.P9950088383614868041

namespace A121384

/-- `A022843(n)+1-A000007(n)` -/
def P9950088383614868041.Spec : Prop :=
  ∀ n, P9950088383614868041.a n = A121384 n

end A121384

/-! ## A121384.P4076095793110471659

`A022843(n)+2-A054977(n)`
-/

namespace A121384.P4076095793110471659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n + (2 - A054977 n)

end

end A121384.P4076095793110471659

namespace A121384

/-- `A022843(n)+2-A054977(n)` -/
def P4076095793110471659.Spec : Prop :=
  ∀ n, P4076095793110471659.a n = A121384 n

end A121384

/-! ## A121384.P5861227217231595747

`A022843(n)+n/A028310(n)`
-/

namespace A121384.P5861227217231595747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022843 n : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A121384.P5861227217231595747

namespace A121384

/-- `A022843(n)+n/A028310(n)` -/
def P5861227217231595747.Spec : Prop :=
  ∀ n, P5861227217231595747.a n = (A121384 n : ℚ)

end A121384

/-! ## A121384.P805922330712871698

`A022843(n)+∑[A028815(n)]%2`
-/

namespace A121384.P805922330712871698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n + Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A121384.P805922330712871698

namespace A121384

/-- `A022843(n)+∑[A028815(n)]%2` -/
def P805922330712871698.Spec : Prop :=
  ∀ n, P805922330712871698.a n = A121384 n

end A121384

/-! ## A121384.P16074978961129809813

`A022843(n)--1%A002858(n+1)`
-/

namespace A121384.P16074978961129809813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n - Int.tmod (-1) (A002858 (n + 1))

end

end A121384.P16074978961129809813

namespace A121384

/-- `A022843(n)--1%A002858(n+1)` -/
def P16074978961129809813.Spec : Prop :=
  ∀ n, P16074978961129809813.a n = A121384 n

end A121384

/-! ## A121384.P3970091295300817760

`A022843(n)+A001221(A303809(n+1))`
-/

namespace A121384.P3970091295300817760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n + A001221 (A303809 (n + 1)).toNat

end

end A121384.P3970091295300817760

namespace A121384

/-- `A022843(n)+A001221(A303809(n+1))` -/
def P3970091295300817760.Spec : Prop :=
  ∀ n, P3970091295300817760.a n = A121384 n

end A121384

/-! ## A121384.P5820980882172935332

`(floor(e*n)+1)%A314445(n)`
-/

namespace A121384.P5820980882172935332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊Real.exp 1 * (n : ℝ)⌋ + 1) (A314445 n)

end

end A121384.P5820980882172935332

namespace A121384

/-- `(floor(e*n)+1)%A314445(n)` -/
def P5820980882172935332.Spec : Prop :=
  ∀ n, P5820980882172935332.a n = A121384 n

end A121384

/-! ## A121384.P13785140323680697769

`(record[A108599(n+1)]-A276859(n+1)+1)%A310500(n)`
-/

namespace A121384.P13785140323680697769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A276859 (n + 1) + 1) (A310500 n)

end

end A121384.P13785140323680697769

namespace A121384

/-- `(record[A108599(n+1)]-A276859(n+1)+1)%A310500(n)` -/
def P13785140323680697769.Spec : Prop :=
  ∀ n, P13785140323680697769.a n = A121384 n

end A121384

/-! ## A121384.P10929143944613483192

`A276853(n)-A140106(A276853(n)+1)`
-/

namespace A121384.P10929143944613483192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276853 n - A140106 (A276853 n + 1).toNat

end

end A121384.P10929143944613483192

namespace A121384

/-- `A276853(n)-A140106(A276853(n)+1)` -/
def P10929143944613483192.Spec : Prop :=
  ∀ n, P10929143944613483192.a n = A121384 n

end A121384

/-! ## A121384.P8477281175284801366

`A022843(n)+1-A076141(7*n)`
-/

namespace A121384.P8477281175284801366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n + (1 - A076141 (7 * n))

end

end A121384.P8477281175284801366

namespace A121384

/-- `A022843(n)+1-A076141(7*n)` -/
def P8477281175284801366.Spec : Prop :=
  ∀ n, P8477281175284801366.a n = A121384 n

end A121384

/-! ## A121384.P14021206497580000865

`A059841(A006093(n+1))+A022843(n)`
-/

namespace A121384.P14021206497580000865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A006093 (n + 1)).toNat + A022843 n

end

end A121384.P14021206497580000865

namespace A121384

/-- `A059841(A006093(n+1))+A022843(n)` -/
def P14021206497580000865.Spec : Prop :=
  ∀ n, P14021206497580000865.a n = A121384 n

end A121384

/-! ## A121384.P16790245693164401179

`A372544(A062409(n+1))+A022843(n)`
-/

namespace A121384.P16790245693164401179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372544 (A062409 (n + 1)).toNat + A022843 n

end

end A121384.P16790245693164401179

namespace A121384

/-- `A372544(A062409(n+1))+A022843(n)` -/
def P16790245693164401179.Spec : Prop :=
  ∀ n, P16790245693164401179.a n = A121384 n

end A121384

/-! ## A121384.P6742461930197341538

`A103762(n+1)+A022843(n)-A136616(n)`
-/

namespace A121384.P6742461930197341538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103762 (n + 1) + (A022843 n - A136616 n)

end

end A121384.P6742461930197341538

namespace A121384

/-- `A103762(n+1)+A022843(n)-A136616(n)` -/
def P6742461930197341538.Spec : Prop :=
  ∀ n, P6742461930197341538.a n = A121384 n

end A121384

/-! ## A121384.P5028611365561327401

`A213908(n+1)+A022843(n)-A136617(n+1)`
-/

namespace A121384.P5028611365561327401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213908 (n + 1) + (A022843 n - A136617 (n + 1))

end

end A121384.P5028611365561327401

namespace A121384

/-- `A213908(n+1)+A022843(n)-A136617(n+1)` -/
def P5028611365561327401.Spec : Prop :=
  ∀ n, P5028611365561327401.a n = A121384 n

end A121384

/-!
# A121385: Minimal number of monochromatic three-term arithmetic progressions that a two-coloring of {1,...,n} can contain.

The programs for A121385, there is no canonical definition to state claims against.
-/

/-! ## A121385.P1912063950684282948

`∑[A061217(n+2)%A307153(n+2)]`
-/

namespace A121385.P1912063950684282948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061217 (n + 2)) (A307153 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121385.P1912063950684282948

/-! ## A121385.P10729609923769174810

`∑[A061217((n+1)%A036040(∑[n]+1)+1)]`
-/

namespace A121385.P10729609923769174810
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061217 (Int.tmod (n + 1 : ℤ) (A036040 (∑ j ∈ Finset.range (n + 1), f2 j + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121385.P10729609923769174810

/-! ## A121385.P15724546934616362892

`∑[A059995(n+2)%A146434(n+1)]`
-/

namespace A121385.P15724546934616362892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059995 (n + 2)) (A146434 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121385.P15724546934616362892

/-!
# A121387: Semiprimes p*q with p and q primes of the form 4k+1 (A002144).

The programs for A121387, the canonical program `A121387.P5734124028624995740` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121387 has offset 1).

The definition of A121387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3607 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121387.P102726667373495516

`∩[A008846(n+1), A108181(n+1)]`
-/

namespace A121387.P102726667373495516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121387.P102726667373495516

namespace A121387

/-- `∩[A008846(n+1), A108181(n+1)]` -/
def P102726667373495516.Spec : Prop :=
  ∀ n, (P102726667373495516.a n : ℤ) = A121387 (n + 1)

end A121387

/-! ## A121387.P14256728869974220056

`∩[A085625(n+1), A108181(n+1)]`
-/

namespace A121387.P14256728869974220056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121387.P14256728869974220056

namespace A121387

/-- `∩[A085625(n+1), A108181(n+1)]` -/
def P14256728869974220056.Spec : Prop :=
  ∀ n, (P14256728869974220056.a n : ℤ) = A121387 (n + 1)

end A121387

/-! ## A121387.P7435456003804007005

`∩[A108181(n+1), A120961(n+1)]`
-/

namespace A121387.P7435456003804007005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121387.P7435456003804007005

namespace A121387

/-- `∩[A108181(n+1), A120961(n+1)]` -/
def P7435456003804007005.Spec : Prop :=
  ∀ n, (P7435456003804007005.a n : ℤ) = A121387 (n + 1)

end A121387

/-! ## A121387.P4026350440611275349

`∩[A004613(n+1), A108181(n+1)]`
-/

namespace A121387.P4026350440611275349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121387.P4026350440611275349

namespace A121387

/-- `∩[A004613(n+1), A108181(n+1)]` -/
def P4026350440611275349.Spec : Prop :=
  ∀ n, (P4026350440611275349.a n : ℤ) = A121387 (n + 1)

end A121387

/-! ## A121387.P15598228818360231880

`∩[A108181(n+1), A174051(n+1)]`
-/

namespace A121387.P15598228818360231880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121387.P15598228818360231880

namespace A121387

/-- `∩[A108181(n+1), A174051(n+1)]` -/
def P15598228818360231880.Spec : Prop :=
  ∀ n, (P15598228818360231880.a n : ℤ) = A121387 (n + 1)

end A121387

/-! ## A121387.P9382837455048614810

`filter[A085625(n+1), A359828(#)]`
-/

namespace A121387.P9382837455048614810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A121387.P9382837455048614810

namespace A121387

/-- `filter[A085625(n+1), A359828(#)]` -/
def P9382837455048614810.Spec : Prop :=
  ∀ n, P9382837455048614810.a n = A121387 (n + 1)

end A121387

/-! ## A121387.P5734124028624995740

`filter[A108181(n+1), A353814(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A121387

/-- `filter[A108181(n+1), A353814(#)]` -/
def P5734124028624995740.Spec : Prop :=
  ∀ n, P5734124028624995740.a n = A121387 (n + 1)

theorem P5734124028624995740.correct : P5734124028624995740.Spec := by
  intro n
  simp only [A121387, Nat.add_sub_cancel]

end A121387

/-! ## A121387.P11194283781619868202

`filter[A120961(n+1), A359828(#)]`
-/

namespace A121387.P11194283781619868202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A121387.P11194283781619868202

namespace A121387

/-- `filter[A120961(n+1), A359828(#)]` -/
def P11194283781619868202.Spec : Prop :=
  ∀ n, P11194283781619868202.a n = A121387 (n + 1)

end A121387

/-! ## A121387.P8049439042429142732

`filter[A174051(n+1), A359828(#)]`
-/

namespace A121387.P8049439042429142732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A121387.P8049439042429142732

namespace A121387

/-- `filter[A174051(n+1), A359828(#)]` -/
def P8049439042429142732.Spec : Prop :=
  ∀ n, P8049439042429142732.a n = A121387 (n + 1)

end A121387

/-! ## A121387.P3887709026408325990

`filter[A397070(n+1), A359595(#)]`
-/

namespace A121387.P3887709026408325990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359595 (f1 j).toNat = 1) n)

end

end A121387.P3887709026408325990

namespace A121387

/-- `filter[A397070(n+1), A359595(#)]` -/
def P3887709026408325990.Spec : Prop :=
  ∀ n, P3887709026408325990.a n = A121387 (n + 1)

end A121387

/-! ## A121387.P75222111626167239

`filter[A397070(n+2), A359781(#)]`
-/

namespace A121387.P75222111626167239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359781 (f1 j).toNat = 1) n)

end

end A121387.P75222111626167239

namespace A121387

/-- `filter[A397070(n+2), A359781(#)]` -/
def P75222111626167239.Spec : Prop :=
  ∀ n, P75222111626167239.a n = A121387 (n + 1)

end A121387

/-! ## A121387.P1838708949282355680

`filter[A397070(n+2), A359828(#)]`
-/

namespace A121387.P1838708949282355680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A121387.P1838708949282355680

namespace A121387

/-- `filter[A397070(n+2), A359828(#)]` -/
def P1838708949282355680.Spec : Prop :=
  ∀ n, P1838708949282355680.a n = A121387 (n + 1)

end A121387

/-! ## A121387.P9510079122593188135

`filter[A118882(n+1), A359828(#)]`
-/

namespace A121387.P9510079122593188135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A121387.P9510079122593188135

namespace A121387

/-- `filter[A118882(n+1), A359828(#)]` -/
def P9510079122593188135.Spec : Prop :=
  ∀ n, P9510079122593188135.a n = A121387 (n + 1)

end A121387

/-! ## A121387.P8301829583330765231

`∩[A108181(n+1), A118882(n+1)]`
-/

namespace A121387.P8301829583330765231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121387.P8301829583330765231

namespace A121387

/-- `∩[A108181(n+1), A118882(n+1)]` -/
def P8301829583330765231.Spec : Prop :=
  ∀ n, (P8301829583330765231.a n : ℤ) = A121387 (n + 1)

end A121387

/-! ## A121387.P17277651577356072464

`∩[A001358(n+1), A004613(n+1)]`
-/

namespace A121387.P17277651577356072464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121387.P17277651577356072464

namespace A121387

/-- `∩[A001358(n+1), A004613(n+1)]` -/
def P17277651577356072464.Spec : Prop :=
  ∀ n, (P17277651577356072464.a n : ℤ) = A121387 (n + 1)

end A121387

/-! ## A121387.P2128208387175525272

`∩[A001358(n+1), A008846(n+1)]`
-/

namespace A121387.P2128208387175525272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121387.P2128208387175525272

namespace A121387

/-- `∩[A001358(n+1), A008846(n+1)]` -/
def P2128208387175525272.Spec : Prop :=
  ∀ n, (P2128208387175525272.a n : ℤ) = A121387 (n + 1)

end A121387

/-! ## A121387.P976473240181732222

`∩[A001358(n+1), A085625(n+1)]`
-/

namespace A121387.P976473240181732222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121387.P976473240181732222

namespace A121387

/-- `∩[A001358(n+1), A085625(n+1)]` -/
def P976473240181732222.Spec : Prop :=
  ∀ n, (P976473240181732222.a n : ℤ) = A121387 (n + 1)

end A121387

/-! ## A121387.P6880885685107734172

`∩[A001358(n+1), A118882(n+1)]`
-/

namespace A121387.P6880885685107734172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121387.P6880885685107734172

namespace A121387

/-- `∩[A001358(n+1), A118882(n+1)]` -/
def P6880885685107734172.Spec : Prop :=
  ∀ n, (P6880885685107734172.a n : ℤ) = A121387 (n + 1)

end A121387

/-! ## A121387.P9937551906399385367

`∩[A001358(n+1), A120961(n+1)]`
-/

namespace A121387.P9937551906399385367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121387.P9937551906399385367

namespace A121387

/-- `∩[A001358(n+1), A120961(n+1)]` -/
def P9937551906399385367.Spec : Prop :=
  ∀ n, (P9937551906399385367.a n : ℤ) = A121387 (n + 1)

end A121387

/-! ## A121387.P3965936129248809711

`filter[A054520(n+2), A359828(#)]`
-/

namespace A121387.P3965936129248809711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054520 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A121387.P3965936129248809711

namespace A121387

/-- `filter[A054520(n+2), A359828(#)]` -/
def P3965936129248809711.Spec : Prop :=
  ∀ n, P3965936129248809711.a n = A121387 (n + 1)

end A121387

/-!
# A121389: a(n) = 10^Fibonacci(n) - 1.

The programs for A121389, the canonical program `A121389.P1164192073827013039` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121389 has offset 0).

The definition of A121389 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121389.P1164192073827013039

`a(n-2)*a(n-1)+a(n-2)+a(n-1)` with `a(0)=0, a(1)=9`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121389

/-- `a(n-2)*a(n-1)+a(n-2)+a(n-1)` -/
def P1164192073827013039.Spec : Prop :=
  ∀ n, (P1164192073827013039.a n : ℤ) = A121389 n

theorem P1164192073827013039.correct : P1164192073827013039.Spec := by
  intro n
  simp only [A121389]

end A121389

/-! ## A121389.P18348527982547633247

`10^A000045(n)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121389.P18348527982547633247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A000045 n : ℤ) - 1

end

end A121389.P18348527982547633247

namespace A121389

/-- `10^A000045(n)-1` -/
def P18348527982547633247.Spec : Prop :=
  ∀ n, P18348527982547633247.a n = (A121389 n : ℚ)

end A121389

/-! ## A121389.P7902469794227427839

`A010100(n)-1`
-/

namespace A121389.P7902469794227427839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010100 n - 1

end

end A121389.P7902469794227427839

namespace A121389

/-- `A010100(n)-1` -/
def P7902469794227427839.Spec : Prop :=
  ∀ n, P7902469794227427839.a n = A121389 n

end A121389

/-! ## A121389.P15699580708817182283

`9*A131293(n)`
-/

namespace A121389.P15699580708817182283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A131293 n

end

end A121389.P15699580708817182283

namespace A121389

/-- `9*A131293(n)` -/
def P15699580708817182283.Spec : Prop :=
  ∀ n, P15699580708817182283.a n = A121389 n

end A121389

/-! ## A121389.P16476840767248105800

`A002283(A000045(n))`
-/

namespace A121389.P16476840767248105800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (A000045 n).toNat

end

end A121389.P16476840767248105800

namespace A121389

/-- `A002283(A000045(n))` -/
def P16476840767248105800.Spec : Prop :=
  ∀ n, P16476840767248105800.a n = A121389 n

end A121389

/-!
# A121391: Triangle T, read by rows, where column k equals column k of T^(k+1) shift down 1 row, with T(n,n)=T(n+1,n)=1 for n>=0.

The programs for A121391, there is no canonical definition to state claims against.
-/

/-! ## A121391.P17753108632627160481

`A055570(A008550(n))`
-/

namespace A121391.P17753108632627160481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A008550 n).toNat

end

end A121391.P17753108632627160481

/-! ## A121391.P13869855110233056990

`A055571(A008550(n)+1)`
-/

namespace A121391.P13869855110233056990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055571 (A008550 n + 1).toNat

end

end A121391.P13869855110233056990

/-! ## A121391.P16245541040855614580

`A159803(A152795(n)+1)`
-/

namespace A121391.P16245541040855614580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159803 (A152795 n + 1).toNat

end

end A121391.P16245541040855614580

/-! ## A121391.P10404888347519506856

`A347644(A382223(n+1))`
-/

namespace A121391.P10404888347519506856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347644 (A382223 (n + 1)).toNat

end

end A121391.P10404888347519506856

/-! ## A121391.P14990679009538833961

`A184964(A055807(n))+A008550(n)`
-/

namespace A121391.P14990679009538833961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184964 (A055807 n).toNat + A008550 n

end

end A121391.P14990679009538833961

/-!
# A121392: Column 1 of triangle A121391, where column k of T=A121391 equals column k of T^(k+1) shift down 1 row.

The programs for A121392, there is no canonical definition to state claims against.
-/

/-! ## A121392.P10994369633173031330

`A121391(∑[n+1]+1)`
-/

namespace A121392.P10994369633173031330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121391 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A121392.P10994369633173031330

/-! ## A121392.P15560222472785974770

`A119963(n)*A121391(A134869(n+1))`
-/

namespace A121392.P15560222472785974770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 n * A121391 (A134869 (n + 1)).toNat

end

end A121392.P15560222472785974770

/-! ## A121392.P13797346531460139287

`A121391(A134869(n+1))*A133687(n)`
-/

namespace A121392.P13797346531460139287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121391 (A134869 (n + 1)).toNat * A133687 n

end

end A121392.P13797346531460139287

/-! ## A121392.P2777287564322063985

`A119963(n)*A121391(A254835(n+1))`
-/

namespace A121392.P2777287564322063985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 n * A121391 (A254835 (n + 1)).toNat

end

end A121392.P2777287564322063985

/-! ## A121392.P15975333768010795758

`A121391(A254835(n+1))*A133687(n)`
-/

namespace A121392.P15975333768010795758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121391 (A254835 (n + 1)).toNat * A133687 n

end

end A121392.P15975333768010795758

/-!
# A121393: Column 2 of triangle A121391, where column k of T=A121391 equals column k of T^(k+1) shift down 1 row.

The programs for A121393, there is no canonical definition to state claims against.
-/

/-! ## A121393.P18437352200195085874

`A121391(∑[n+2]+3)`
-/

namespace A121393.P18437352200195085874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121391 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A121393.P18437352200195085874

/-! ## A121393.P16523449007381338179

`A028391(A084785(n))+A020069(n)`
-/

namespace A121393.P16523449007381338179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A084785 n).toNat + A020069 n

end

end A121393.P16523449007381338179

/-! ## A121393.P16758325722352717469

`A008619(A177518(n+1))-A182665(n+1)`
-/

namespace A121393.P16758325722352717469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A177518 (n + 1)).toNat - A182665 (n + 1)

end

end A121393.P16758325722352717469

/-!
# A121394: Column 3 of triangle A121391, where column k of T=A121391 equals column k of T^(k+1) shift down 1 row.

The programs for A121394, there is no canonical definition to state claims against.
-/

/-! ## A121394.P10202011068653908388

`A121391(A167614(n+2))`
-/

namespace A121394.P10202011068653908388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121391 (A167614 (n + 2)).toNat

end

end A121394.P10202011068653908388

/-! ## A121394.P18002345187192728102

`A121391(A141214(n)+6)`
-/

namespace A121394.P18002345187192728102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121391 (A141214 n + 6).toNat

end

end A121394.P18002345187192728102

/-! ## A121394.P13515158421908738301

`A121391(A052905(n)+8)`
-/

namespace A121394.P13515158421908738301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121391 (A052905 n + 8).toNat

end

end A121394.P13515158421908738301

/-! ## A121394.P16292906144607383915

`A121391(A055999(n)+9)`
-/

namespace A121394.P16292906144607383915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121391 (A055999 n + 9).toNat

end

end A121394.P16292906144607383915

/-!
# A121396: Column 1 of triangle T=A121395, where column k of T equals column k of T^(2^k) shift down 1 row.

The programs for A121396, there is no canonical definition to state claims against.
-/

/-! ## A121396.P8182567925182955849

`A121395(∑[n+1]+1)`
-/

namespace A121396.P8182567925182955849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121395 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A121396.P8182567925182955849

/-! ## A121396.P1145689315615442009

`or(char[1], A121395(A134869(n+1)))`
-/

namespace A121396.P1145689315615442009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A121395 (A134869 (n + 1)).toNat)

end

end A121396.P1145689315615442009

/-! ## A121396.P3649009235976762733

`A121395(A000124(n+1))+A054899(n)`
-/

namespace A121396.P3649009235976762733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121395 (A000124 (n + 1)).toNat + A054899 n

end

end A121396.P3649009235976762733

/-! ## A121396.P6727919341826321509

`A121395(A134869(n+1))+A025469(n)`
-/

namespace A121396.P6727919341826321509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121395 (A134869 (n + 1)).toNat + A025469 n

end

end A121396.P6727919341826321509

/-! ## A121396.P17990755450311246109

`A326688(n)+A121395(A134869(n+1))`
-/

namespace A121396.P17990755450311246109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326688 n + A121395 (A134869 (n + 1)).toNat

end

end A121396.P17990755450311246109

/-!
# A121397: Column 2 of triangle T=A121395, where column k of T equals column k of T^(2^k) shift down 1 row.

The programs for A121397, there is no canonical definition to state claims against.
-/

/-! ## A121397.P2301586135073430977

`A121395(∑[n+2]+3)`
-/

namespace A121397.P2301586135073430977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121395 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A121397.P2301586135073430977

/-! ## A121397.P10416210783866062713

`A141199(n)+A045763(A002110(n))`
-/

namespace A121397.P10416210783866062713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141199 n + A045763 (A002110 n).toNat

end

end A121397.P10416210783866062713

/-!
# A121398: Main diagonal of triangle A121400; also equals the partial sums of column 0 (A121399) of the same triangle.

The programs for A121398, there is no canonical definition to state claims against.
-/

/-! ## A121398.P14401387420388516564

`∑[A121399(n)]`
-/

namespace A121398.P14401387420388516564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121398.P14401387420388516564

/-! ## A121398.P3904995624288817279

`a(n-1)+A121399(n)+A000007(n)` with `a(0)=1`
-/

namespace A121398.P3904995624288817279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A121399 n + A000007 n)

end

end A121398.P3904995624288817279

/-! ## A121398.P15436463367620567470

`∑[A121400(∑[n])]`
-/

namespace A121398.P15436463367620567470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121400 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121398.P15436463367620567470

/-! ## A121398.P13280613812857252590

`A121400(C(n+1, 2)+n)`
-/

namespace A121398.P13280613812857252590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121400 (Nat.choose (n + 1) 2 + n)

end

end A121398.P13280613812857252590

/-! ## A121398.P11252528320747845092

`A121400(A000096(n))`
-/

namespace A121398.P11252528320747845092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121400 (A000096 n).toNat

end

end A121398.P11252528320747845092

/-!
# A121399: G.f. satisfies: A(x) = G(x)*A(x^2*G(x)) where G(x) is the g.f. of the Motzkin numbers (A001006): G = (1 + x*G + x^2*G^2).

The programs for A121399, there is no canonical definition to state claims against.
-/

/-! ## A121399.P7225468088513926841

`abs(Δ[A121398(abs(1-n))])`
-/

namespace A121399.P7225468088513926841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121398 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A121399.P7225468088513926841

/-! ## A121399.P2169880579664369239

`Δ[A121398(A004273(n)-n)+A057427(n)]`
-/

namespace A121399.P2169880579664369239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121398 (A004273 n - (n : ℤ)).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121399.P2169880579664369239

/-! ## A121399.P9115764210756572961

`A121400(∑[n])`
-/

namespace A121399.P9115764210756572961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121400 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121399.P9115764210756572961

/-! ## A121399.P13037255922838770231

`A121400(A000217(n))%A050278(n+1)`
-/

namespace A121399.P13037255922838770231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121400 (A000217 n).toNat) (A050278 (n + 1))

end

end A121399.P13037255922838770231

