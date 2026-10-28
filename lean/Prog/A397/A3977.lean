import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C037
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A397700: Numbers p*q*r where p, q and r are distinct primes with p^2 + r^2 = 2*q^2.

The programs for A397700, there is no canonical definition to state claims against.
-/

/-! ## A397700.P4898258774625555413

`∩[A255356(n+1), A284876(n+1)]`
-/

namespace A397700.P4898258774625555413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397700.P4898258774625555413

/-! ## A397700.P15838960596116968742

`∩[A134604(n+1), A284876(n+1)]`
-/

namespace A397700.P15838960596116968742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397700.P15838960596116968742

/-! ## A397700.P6550818892459227512

`∩[A134601(n+1), A284876(n+1)]`
-/

namespace A397700.P6550818892459227512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397700.P6550818892459227512

/-!
# A397704: a(0) = 0; for n > 0, a(n) = 1 + Sum_{k} a(e_k) where n = Sum_{k} 2^(e_k) is the binary expansion of n.

The programs for A397704, there is no canonical definition to state claims against.
-/

/-! ## A397704.P11472667493242571999

`A116549(n)-A033922(n)`
-/

namespace A397704.P11472667493242571999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116549 n - A033922 n

end

end A397704.P11472667493242571999

/-! ## A397704.P2595415535898688406

`A003434(A019565(n))`
-/

namespace A397704.P2595415535898688406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (A019565 n).toNat

end

end A397704.P2595415535898688406

/-!
# A397705: Odd numbers m > 5, with no representation m = p + 2q with p, q prime and p <= q.

The programs for A397705, there is no canonical definition to state claims against.
-/

/-! ## A397705.P5640822378625968954

`2*A092873(n+1)+1`
-/

namespace A397705.P5640822378625968954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092873 (n + 1) + 1

end

end A397705.P5640822378625968954

/-!
# A397706: Number of ways to tile an equilateral triangle of side n in the triangular grid with n congruent polyiamonds, up to rotation and reflection of the triangle.

The programs for A397706, there is no canonical definition to state claims against.
-/

/-! ## A397706.P13903763201229009685

`A289522(A253413(n+1))`
-/

namespace A397706.P13903763201229009685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289522 (A253413 (n + 1)).toNat

end

end A397706.P13903763201229009685

/-!
# A397708: Number of face-connected components of n polyhedral cells in the sphenoid hendecahedral honeycomb, up to translation, rotation, and reflection of the honeycomb.

The programs for A397708, there is no canonical definition to state claims against.
-/

/-! ## A397708.P11941962714254562990

`A076594(a(n-1)+2)` with `a(0)=1, a(1)=1`
-/

namespace A397708.P11941962714254562990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A076594 (a (n - 1) + 2).toNat

end

end A397708.P11941962714254562990

/-!
# A397710: Composite numbers k such that k = rad(k) * lpf(k), where rad = A007947 and lpf is the least prime factor of k.

The programs for A397710, the canonical program `A397710.P1647549694478266187` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397710 has offset 1).

The definition of A397710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397710.P1647549694478266187

`∪[A001248(n+1), A366825(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A397710

/-- `∪[A001248(n+1), A366825(n+1)]` -/
def P1647549694478266187.Spec : Prop :=
  ∀ n, (P1647549694478266187.a n : ℤ) = A397710 (n + 1)

theorem P1647549694478266187.correct : P1647549694478266187.Spec := by
  intro n
  simp only [A397710, Nat.add_sub_cancel]

end A397710

/-! ## A397710.P16829304776891405333

`filter[A398264(n+1), A359466(#)]`
-/

namespace A397710.P16829304776891405333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A397710.P16829304776891405333

namespace A397710

/-- `filter[A398264(n+1), A359466(#)]` -/
def P16829304776891405333.Spec : Prop :=
  ∀ n, P16829304776891405333.a n = A397710 (n + 1)

end A397710

/-! ## A397710.P5997212769702006858

`filter[A398264(n+1), A359471(#)]`
-/

namespace A397710.P5997212769702006858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A397710.P5997212769702006858

namespace A397710

/-- `filter[A398264(n+1), A359471(#)]` -/
def P5997212769702006858.Spec : Prop :=
  ∀ n, P5997212769702006858.a n = A397710 (n + 1)

end A397710

/-! ## A397710.P16937883952332007534

`filter[A398264(n+1), A359474(#)]`
-/

namespace A397710.P16937883952332007534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A397710.P16937883952332007534

namespace A397710

/-- `filter[A398264(n+1), A359474(#)]` -/
def P16937883952332007534.Spec : Prop :=
  ∀ n, P16937883952332007534.a n = A397710 (n + 1)

end A397710

/-! ## A397710.P11109433275379799630

`filter[A060687(n+1), A319710(#)]`
-/

namespace A397710.P11109433275379799630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A397710.P11109433275379799630

namespace A397710

/-- `filter[A060687(n+1), A319710(#)]` -/
def P11109433275379799630.Spec : Prop :=
  ∀ n, P11109433275379799630.a n = A397710 (n + 1)

end A397710

/-! ## A397710.P2305503982297440829

`∩[A060687(n+1), A398264(n+1)]`
-/

namespace A397710.P2305503982297440829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397710.P2305503982297440829

namespace A397710

/-- `∩[A060687(n+1), A398264(n+1)]` -/
def P2305503982297440829.Spec : Prop :=
  ∀ n, (P2305503982297440829.a n : ℤ) = A397710 (n + 1)

end A397710

/-! ## A397710.P9260827658123599430

`filter[A365869(n+1), A359471(#)]`
-/

namespace A397710.P9260827658123599430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A397710.P9260827658123599430

namespace A397710

/-- `filter[A365869(n+1), A359471(#)]` -/
def P9260827658123599430.Spec : Prop :=
  ∀ n, P9260827658123599430.a n = A397710 (n + 1)

end A397710

/-! ## A397710.P11641252561103182974

`filter[A365869(n+1), A359474(#)]`
-/

namespace A397710.P11641252561103182974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A397710.P11641252561103182974

namespace A397710

/-- `filter[A365869(n+1), A359474(#)]` -/
def P11641252561103182974.Spec : Prop :=
  ∀ n, P11641252561103182974.a n = A397710 (n + 1)

end A397710

/-! ## A397710.P3706902204169464973

`∩[A060687(n+1), A365869(n+1)]`
-/

namespace A397710.P3706902204169464973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397710.P3706902204169464973

namespace A397710

/-- `∩[A060687(n+1), A365869(n+1)]` -/
def P3706902204169464973.Spec : Prop :=
  ∀ n, (P3706902204169464973.a n : ℤ) = A397710 (n + 1)

end A397710

/-! ## A397710.P948922913249545134

`∩[A381311(n+1), A398264(n+1)]`
-/

namespace A397710.P948922913249545134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397710.P948922913249545134

namespace A397710

/-- `∩[A381311(n+1), A398264(n+1)]` -/
def P948922913249545134.Spec : Prop :=
  ∀ n, (P948922913249545134.a n : ℤ) = A397710 (n + 1)

end A397710

/-! ## A397710.P11248030943144771147

`∩[A082293(n+1), A365869(n+1)]`
-/

namespace A397710.P11248030943144771147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397710.P11248030943144771147

namespace A397710

/-- `∩[A082293(n+1), A365869(n+1)]` -/
def P11248030943144771147.Spec : Prop :=
  ∀ n, (P11248030943144771147.a n : ℤ) = A397710 (n + 1)

end A397710

/-! ## A397710.P3110757545383306149

`∩[A082293(n+1), A398264(n+1)]`
-/

namespace A397710.P3110757545383306149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397710.P3110757545383306149

namespace A397710

/-- `∩[A082293(n+1), A398264(n+1)]` -/
def P3110757545383306149.Spec : Prop :=
  ∀ n, (P3110757545383306149.a n : ℤ) = A397710 (n + 1)

end A397710

/-! ## A397710.P16304342007590332068

`∩[A365869(n+1), A370076(n+1)]`
-/

namespace A397710.P16304342007590332068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397710.P16304342007590332068

namespace A397710

/-- `∩[A365869(n+1), A370076(n+1)]` -/
def P16304342007590332068.Spec : Prop :=
  ∀ n, (P16304342007590332068.a n : ℤ) = A397710 (n + 1)

end A397710

/-! ## A397710.P2474081657605488544

`∩[A370076(n+1), A398264(n+1)]`
-/

namespace A397710.P2474081657605488544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397710.P2474081657605488544

namespace A397710

/-- `∩[A370076(n+1), A398264(n+1)]` -/
def P2474081657605488544.Spec : Prop :=
  ∀ n, (P2474081657605488544.a n : ℤ) = A397710 (n + 1)

end A397710

/-! ## A397710.P10544490802259450947

`filter[A371601(n+1), A359471(#)]`
-/

namespace A397710.P10544490802259450947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A397710.P10544490802259450947

namespace A397710

/-- `filter[A371601(n+1), A359471(#)]` -/
def P10544490802259450947.Spec : Prop :=
  ∀ n, P10544490802259450947.a n = A397710 (n + 1)

end A397710

/-! ## A397710.P697148787000455104

`filter[A371601(n+1), A359474(#)]`
-/

namespace A397710.P697148787000455104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A397710.P697148787000455104

namespace A397710

/-- `filter[A371601(n+1), A359474(#)]` -/
def P697148787000455104.Spec : Prop :=
  ∀ n, P697148787000455104.a n = A397710 (n + 1)

end A397710

/-! ## A397710.P9753389592818651353

`∩[A060687(n+1), A371601(n+1)]`
-/

namespace A397710.P9753389592818651353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397710.P9753389592818651353

namespace A397710

/-- `∩[A060687(n+1), A371601(n+1)]` -/
def P9753389592818651353.Spec : Prop :=
  ∀ n, (P9753389592818651353.a n : ℤ) = A397710 (n + 1)

end A397710

/-! ## A397710.P12712148000538077738

`filter[A283050(n+1), A359471(#)]`
-/

namespace A397710.P12712148000538077738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A397710.P12712148000538077738

namespace A397710

/-- `filter[A283050(n+1), A359471(#)]` -/
def P12712148000538077738.Spec : Prop :=
  ∀ n, P12712148000538077738.a n = A397710 (n + 1)

end A397710

/-! ## A397710.P8849739273806725131

`filter[A283050(n+1), A359474(#)]`
-/

namespace A397710.P8849739273806725131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A397710.P8849739273806725131

namespace A397710

/-- `filter[A283050(n+1), A359474(#)]` -/
def P8849739273806725131.Spec : Prop :=
  ∀ n, P8849739273806725131.a n = A397710 (n + 1)

end A397710

/-! ## A397710.P11653793293903573550

`∩[A060687(n+1), A283050(n+1)]`
-/

namespace A397710.P11653793293903573550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397710.P11653793293903573550

namespace A397710

/-- `∩[A060687(n+1), A283050(n+1)]` -/
def P11653793293903573550.Spec : Prop :=
  ∀ n, (P11653793293903573550.a n : ℤ) = A397710 (n + 1)

end A397710

/-!
# A397711: Number of acyclic digraphs (or DAGs) on n labeled nodes in which every node has in-degree at most 2.

The programs for A397711, there is no canonical definition to state claims against.
-/

/-! ## A397711.P1442832148510990887

`A109598(A041737(n))`
-/

namespace A397711.P1442832148510990887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109598 (A041737 n).toNat

end

end A397711.P1442832148510990887

/-!
# A397713: Triangle read by rows: T(n,k) is the number of binary digits in binomial(n,k).

The programs for A397713, the canonical program `A397713.P732737537006810765` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397713 has offset 0).

The definition of A397713 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397713.P732737537006810765

`A070939(A007318(n))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A397713

/-- `A070939(A007318(n))` -/
def P732737537006810765.Spec : Prop :=
  ∀ n, P732737537006810765.a n = A397713 n

theorem P732737537006810765.correct : P732737537006810765.Spec := by
  intro n
  simp only [A397713]

end A397713

/-! ## A397713.P3064584432461958766

`floor(log2(A028326(n)))`
-/

namespace A397713.P3064584432461958766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A028326 n).toNat

end

end A397713.P3064584432461958766

namespace A397713

/-- `floor(log2(A028326(n)))` -/
def P3064584432461958766.Spec : Prop :=
  ∀ n, (P3064584432461958766.a n : ℤ) = A397713 n

end A397713

/-! ## A397713.P3808276583467712207

`ceil(log2(A014473(n)+2))`
-/

namespace A397713.P3808276583467712207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A014473 n + 2 : ℝ)⌉

end

end A397713.P3808276583467712207

namespace A397713

/-- `ceil(log2(A014473(n)+2))` -/
def P3808276583467712207.Spec : Prop :=
  ∀ n, P3808276583467712207.a n = A397713 n

end A397713

/-! ## A397713.P2046316940566666411

`A070939(A206735(n))`
-/

namespace A397713.P2046316940566666411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A206735 n).toNat

end

end A397713.P2046316940566666411

namespace A397713

/-- `A070939(A206735(n))` -/
def P2046316940566666411.Spec : Prop :=
  ∀ n, P2046316940566666411.a n = A397713 n

end A397713

/-! ## A397713.P13692445663422396109

`A070939(abs(A130595(n)))`
-/

namespace A397713.P13692445663422396109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 |A130595 n|.toNat

end

end A397713.P13692445663422396109

namespace A397713

/-- `A070939(abs(A130595(n)))` -/
def P13692445663422396109.Spec : Prop :=
  ∀ n, P13692445663422396109.a n = A397713 n

end A397713

/-! ## A397713.P1062796943059542113

`A029837(A007318(n)+1)`
-/

namespace A397713.P1062796943059542113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A007318 n + 1).toNat

end

end A397713.P1062796943059542113

namespace A397713

/-- `A029837(A007318(n)+1)` -/
def P1062796943059542113.Spec : Prop :=
  ∀ n, P1062796943059542113.a n = A397713 n

end A397713

/-! ## A397713.P11513266348090992650

`A070939(abs(2-A173740(n)))`
-/

namespace A397713.P11513266348090992650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 |2 - A173740 n|.toNat

end

end A397713.P11513266348090992650

namespace A397713

/-- `A070939(abs(2-A173740(n)))` -/
def P11513266348090992650.Spec : Prop :=
  ∀ n, P11513266348090992650.a n = A397713 n

end A397713

/-! ## A397713.P7086301021738352035

`A000523(A028326(n))`
-/

namespace A397713.P7086301021738352035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A028326 n).toNat

end

end A397713.P7086301021738352035

namespace A397713

/-- `A000523(A028326(n))` -/
def P7086301021738352035.Spec : Prop :=
  ∀ n, P7086301021738352035.a n = A397713 n

end A397713

/-! ## A397713.P9959297305166146306

`A238845(A124927(n))`
-/

namespace A397713.P9959297305166146306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238845 (A124927 n).toNat

end

end A397713.P9959297305166146306

namespace A397713

/-- `A238845(A124927(n))` -/
def P9959297305166146306.Spec : Prop :=
  ∀ n, P9959297305166146306.a n = A397713 n

end A397713

/-! ## A397713.P15181419968728827328

`A238845(A129994(n))`
-/

namespace A397713.P15181419968728827328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238845 (A129994 n).toNat

end

end A397713.P15181419968728827328

namespace A397713

/-- `A238845(A129994(n))` -/
def P15181419968728827328.Spec : Prop :=
  ∀ n, P15181419968728827328.a n = A397713 n

end A397713

/-! ## A397713.P15278151468349718912

`A238845(A132046(n))`
-/

namespace A397713.P15278151468349718912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238845 (A132046 n).toNat

end

end A397713.P15278151468349718912

namespace A397713

/-- `A238845(A132046(n))` -/
def P15278151468349718912.Spec : Prop :=
  ∀ n, P15278151468349718912.a n = A397713 n

end A397713

/-! ## A397713.P5558801037855271651

`A238845(A134058(n))`
-/

namespace A397713.P5558801037855271651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238845 (A134058 n).toNat

end

end A397713.P5558801037855271651

namespace A397713

/-- `A238845(A134058(n))` -/
def P5558801037855271651.Spec : Prop :=
  ∀ n, P5558801037855271651.a n = A397713 n

end A397713

/-! ## A397713.P8247269534091975563

`A000523(2*A007318(n))`
-/

namespace A397713.P8247269534091975563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * A007318 n).toNat

end

end A397713.P8247269534091975563

namespace A397713

/-- `A000523(2*A007318(n))` -/
def P8247269534091975563.Spec : Prop :=
  ∀ n, P8247269534091975563.a n = A397713 n

end A397713

/-! ## A397713.P9122501266487873452

`A119387(2*A007318(n))`
-/

namespace A397713.P9122501266487873452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119387 (2 * A007318 n).toNat

end

end A397713.P9122501266487873452

namespace A397713

/-- `A119387(2*A007318(n))` -/
def P9122501266487873452.Spec : Prop :=
  ∀ n, P9122501266487873452.a n = A397713 n

end A397713

/-! ## A397713.P6367836530700071678

`A000523(A007318(n)+A007318(n))`
-/

namespace A397713.P6367836530700071678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A007318 n + A007318 n).toNat

end

end A397713.P6367836530700071678

namespace A397713

/-- `A000523(A007318(n)+A007318(n))` -/
def P6367836530700071678.Spec : Prop :=
  ∀ n, P6367836530700071678.a n = A397713 n

end A397713

/-! ## A397713.P13230401038723524361

`A119387(A007318(n)+A007318(n))`
-/

namespace A397713.P13230401038723524361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119387 (A007318 n + A007318 n).toNat

end

end A397713.P13230401038723524361

namespace A397713

/-- `A119387(A007318(n)+A007318(n))` -/
def P13230401038723524361.Spec : Prop :=
  ∀ n, P13230401038723524361.a n = A397713 n

end A397713

/-! ## A397713.P3568510554056630634

`A340251(A131112(n))`
-/

namespace A397713.P3568510554056630634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340251 (A131112 n).toNat

end

end A397713.P3568510554056630634

namespace A397713

/-- `A340251(A131112(n))` -/
def P3568510554056630634.Spec : Prop :=
  ∀ n, P3568510554056630634.a n = A397713 n

end A397713

/-! ## A397713.P8899881790501101088

`A340251(A132200(n))`
-/

namespace A397713.P8899881790501101088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340251 (A132200 n).toNat

end

end A397713.P8899881790501101088

namespace A397713

/-- `A340251(A132200(n))` -/
def P8899881790501101088.Spec : Prop :=
  ∀ n, P8899881790501101088.a n = A397713 n

end A397713

/-!
# A397715: Self-convolution of hyperfactorials (A002109).

The programs for A397715, the canonical program `A397715.P8063238104841521262` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397715 has offset 0).

The definition of A397715 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397715.P8063238104841521262

`∑{#}[n, A002109(#)*A002109(n-#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A397715

/-- `∑{#}[n, A002109(#)*A002109(n-#)]` -/
def P8063238104841521262.Spec : Prop :=
  ∀ n, P8063238104841521262.a n = A397715 n

theorem P8063238104841521262.correct : P8063238104841521262.Spec := by
  intro n
  simp only [A397715]

end A397715

/-! ## A397715.P5975815092129806823

`A002109(n)+A397716(n)+A002109(n)`
-/

namespace A397715.P5975815092129806823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002109 n + (A397716 n + A002109 n)

end

end A397715.P5975815092129806823

namespace A397715

/-- `A002109(n)+A397716(n)+A002109(n)` -/
def P5975815092129806823.Spec : Prop :=
  ∀ n, P5975815092129806823.a n = A397715 n

theorem P5975815092129806823.correct : P5975815092129806823.Spec := by
  intro n
  simp only [A397715, Nat.add_sub_cancel, A397715.P5975815092129806823.a, A397715.P8063238104841521262.f1, A397715.P8063238104841521262.a, A002109, A002109.P17544473173197383261.a, A397716, A397716.P910235112666114565.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A397715

/-!
# A397716: a(n) = A397715(n) - 2*A002109(n).

The programs for A397716, the canonical program `A397716.P910235112666114565` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397716 has offset 0).

The definition of A397716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397716.P910235112666114565

`A397715(n)-2*A002109(n)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A397716

/-- `A397715(n)-2*A002109(n)` -/
def P910235112666114565.Spec : Prop :=
  ∀ n, P910235112666114565.a n = A397716 n

theorem P910235112666114565.correct : P910235112666114565.Spec := by
  intro n
  simp only [A397716]

end A397716

/-!
# A397717: Convolution of hyperfactorials and superfactorials.

The programs for A397717, the canonical program `A397717.P3044417372378662278` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397717 has offset 0).

The definition of A397717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397717.P3044417372378662278

`∑{#}[n, A002109(#)*A000178(n-#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A397717

/-- `∑{#}[n, A002109(#)*A000178(n-#)]` -/
def P3044417372378662278.Spec : Prop :=
  ∀ n, P3044417372378662278.a n = A397717 n

theorem P3044417372378662278.correct : P3044417372378662278.Spec := by
  intro n
  simp only [A397717]

end A397717

/-!
# A397718: Self-convolution of superfactorials (A000178).

The programs for A397718, the canonical program `A397718.P14206182388537485238` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397718 has offset 0).

The definition of A397718 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397718.P14206182388537485238

`∑{#}[n, A000178(#)*A000178(n-#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A397718

/-- `∑{#}[n, A000178(#)*A000178(n-#)]` -/
def P14206182388537485238.Spec : Prop :=
  ∀ n, P14206182388537485238.a n = A397718 n

theorem P14206182388537485238.correct : P14206182388537485238.Spec := by
  intro n
  simp only [A397718]

end A397718

/-!
# A397729: Inverse permutation to A397728.

The programs for A397729, there is no canonical definition to state claims against.
-/

/-! ## A397729.P17187851817978727060

`A062537(A333931(n+1))`
-/

namespace A397729.P17187851817978727060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062537 (A333931 (n + 1)).toNat

end

end A397729.P17187851817978727060

/-! ## A397729.P593564483186099624

`A062537(A353899(n+1))`
-/

namespace A397729.P593564483186099624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062537 (A353899 (n + 1)).toNat

end

end A397729.P593564483186099624

/-! ## A397729.P12504898134370373148

`A062537(A377139(n+1))`
-/

namespace A397729.P12504898134370373148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062537 (A377139 (n + 1)).toNat

end

end A397729.P12504898134370373148

/-!
# A397730: a(n) is the number of distinct triples of triangles chosen from n^2 unit triangles of a triangular grid up to rotation such that no two triangles share common side.

The programs for A397730, there is no canonical definition to state claims against.
-/

/-! ## A397730.P5286987892584806929

`A026741(A062861(n)+A002275(n))`
-/

namespace A397730.P5286987892584806929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A062861 n + A002275 n).toNat

end

end A397730.P5286987892584806929

/-!
# A397731: a(n) is the number of distinct triples of triangles chosen from n^2 unit triangles of a triangular grid up to rotation and reflection such that no two triangles share a common side.

The programs for A397731, the canonical program `A397731.P7457786100204349227` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397731 has offset 1).

The definition of A397731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397731.P7457786100204349227

`ogf((x+6x^2+32x^3+75x^4+78x^5+49x^6+4x^7-3x^8-3x^9+x^10)/(1-4x+4x^2+3x^3-6x^4+6x^7-3x^8-4x^9+4x^10-x^11))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A397731

/-- `ogf((x+6x^2+32x^3+75x^4+78x^5+49x^6+4x^7-3x^8-3x^9+x^10)/(1-4x+4x^2+3x^3-6x^4+6x^7-3x^8-4x^9+4x^10-x^11))` -/
def P7457786100204349227.Spec : Prop :=
  ∀ n, P7457786100204349227.a n = A397731 (n + 1)

theorem P7457786100204349227.correct : P7457786100204349227.Spec := by
  intro n
  simp only [A397731, Nat.add_sub_cancel]

end A397731

/-!
# A397732: a(n) is the number of distinct triples of triangles chosen from n^2 unit triangles of a triangular grid up to rotation such that no two triangles share a common point.

The programs for A397732, there is no canonical definition to state claims against.
-/

/-! ## A397732.P15832910783593622349

`ogf((2x^2+18x^3+78x^4+56x^5+6x^6-42x^7-10x^8+12x^9)/(1-6x+15x^2-21x^3+21x^4-21x^5+21x^6-15x^7+6x^8-x^9))`
-/

namespace A397732.P15832910783593622349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, 18, 78, 56, 6, -42, -10, 12] [1, -6, 15, -21, 21, -21, 21, -15, 6, -1] n

end

end A397732.P15832910783593622349

/-!
# A397733: a(n) = Sum_{k=1..n} gcd(k^5,n).

The programs for A397733, the canonical program `A397733.P809762997915975337` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397733 has offset 1).

The definition of A397733 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, gcd((#+1)^5, n+1)]` (program `A397733.P809762997915975337`, by `A397733.P809762997915975337.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A397733.P809762997915975337

`∑{#}[n, gcd((#+1)^5, n+1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A397733

/-- `∑{#}[n, gcd((#+1)^5, n+1)]` -/
def P809762997915975337.Spec : Prop :=
  ∀ n, (P809762997915975337.a n : ℤ) = A397733 (n + 1)

theorem P809762997915975337.correct : P809762997915975337.Spec := by
  intro n
  simp only [A397733, Nat.add_sub_cancel]

end A397733

/-!
# A397736: a(n) is the number of Motzkin paths of length n in which level steps on even levels come in 2 colors.

The programs for A397736, there is no canonical definition to state claims against.
-/

/-! ## A397736.P7968041851908845028

`A059027(A037442(n+1))`
-/

namespace A397736.P7968041851908845028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059027 (A037442 (n + 1)).toNat

end

end A397736.P7968041851908845028

/-! ## A397736.P5068122912535458451

`A059027(A065666(n+1))`
-/

namespace A397736.P5068122912535458451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059027 (A065666 (n + 1)).toNat

end

end A397736.P5068122912535458451

/-! ## A397736.P4291008760848167470

`A059027(A141769(n+1))`
-/

namespace A397736.P4291008760848167470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059027 (A141769 (n + 1)).toNat

end

end A397736.P4291008760848167470

/-!
# A397739: Squarefree composite numbers k whose second smallest distinct prime factor is smaller than the square of the least prime factor.

The programs for A397739, there is no canonical definition to state claims against.
-/

/-! ## A397739.P18120429058447418426

`filter[A397805(n+1), A008966(#)]`
-/

namespace A397739.P18120429058447418426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A397739.P18120429058447418426

/-! ## A397739.P13422331101034804966

`filter[A397805(n+1), A354819(#)]`
-/

namespace A397739.P13422331101034804966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A397739.P13422331101034804966

/-! ## A397739.P15970046237824455644

`∩[A005117(n+1), A397805(n+1)]`
-/

namespace A397739.P15970046237824455644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397739.P15970046237824455644

/-! ## A397739.P16440614788756501098

`∩[A000469(n+1), A397805(n+1)]`
-/

namespace A397739.P16440614788756501098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397739.P16440614788756501098

/-! ## A397739.P5082387178916597535

`∩[A120944(n+1), A397805(n+1)]`
-/

namespace A397739.P5082387178916597535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397739.P5082387178916597535

/-! ## A397739.P1714358994688333883

`∩[A388427(n+1), A397805(n+1)]`
-/

namespace A397739.P1714358994688333883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397739.P1714358994688333883

/-! ## A397739.P10091329970717204506

`∩[A087249(n+1), A397805(n+1)]`
-/

namespace A397739.P10091329970717204506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397739.P10091329970717204506

/-! ## A397739.P12022343661280590902

`∩[A144338(n+1), A397805(n+1)]`
-/

namespace A397739.P12022343661280590902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397739.P12022343661280590902

/-! ## A397739.P4948762461395059579

`∩[A167207(n+1), A397805(n+1)]`
-/

namespace A397739.P4948762461395059579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397739.P4948762461395059579

/-! ## A397739.P13088466072350785866

`∩[A303554(n+1), A397805(n+1)]`
-/

namespace A397739.P13088466072350785866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397739.P13088466072350785866

/-! ## A397739.P13551189683959989012

`∩[A285100(n+1), A397805(n+1)]`
-/

namespace A397739.P13551189683959989012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397739.P13551189683959989012

/-! ## A397739.P4744788381748550771

`A395978(∑[n]+1)`
-/

namespace A397739.P4744788381748550771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395978 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A397739.P4744788381748550771

/-!
# A397740: Partial sums of A400000.

The programs for A397740, there is no canonical definition to state claims against.
-/

/-! ## A397740.P3280265687956436835

`∑[A400000(n+1)]`
-/

namespace A397740.P3280265687956436835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397740.P3280265687956436835

/-! ## A397740.P213693297528369904

`∑[n-A400110(n+1)]`
-/

namespace A397740.P213693297528369904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A400110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397740.P213693297528369904

/-!
# A397741: a(n) is the number of distinct values in the addition triangle with base (a(0), ..., a(n-1)).

The programs for A397741, there is no canonical definition to state claims against.
-/

/-! ## A397741.P18011590591584292783

`∑[A000120(Δ[A181315(n)])]`
-/

namespace A397741.P18011590591584292783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181315 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397741.P18011590591584292783

/-! ## A397741.P1785101254724721822

`eq[A161678(n+1), A284606(n+1)]`
-/

namespace A397741.P1785101254724721822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284606 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A397741.P1785101254724721822

/-! ## A397741.P11436042675788858859

`eq[A162618(n+1), A339310(n+1)]`
-/

namespace A397741.P11436042675788858859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A397741.P11436042675788858859

/-! ## A397741.P3877377028526300255

`A010059(A004110(n))+A000982(n)`
-/

namespace A397741.P3877377028526300255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A004110 n).toNat + A000982 n

end

end A397741.P3877377028526300255

/-! ## A397741.P6144005866787629708

`A000217(n)-A001221(A064062(n))`
-/

namespace A397741.P6144005866787629708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A001221 (A064062 n).toNat

end

end A397741.P6144005866787629708

/-!
# A397742: Numbers k such that A008479(k) = 3.

The programs for A397742, there is no canonical definition to state claims against.
-/

/-! ## A397742.P1605270930515673999

`∪[A399125(n+1), A399127(n+1)]`
-/

namespace A397742.P1605270930515673999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A397742.P1605270930515673999

/-! ## A397742.P10006597387590457691

`eq[3, A008479(n+1)]+1`
-/

namespace A397742.P10006597387590457691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A397742.P10006597387590457691

/-!
# A397745: Number of assembly trees for the n-ladder graph.

The programs for A397745, there is no canonical definition to state claims against.
-/

/-! ## A397745.P562689917043526962

`A397746(∑[n+2])`
-/

namespace A397745.P562689917043526962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397746 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397745.P562689917043526962

/-!
# A397749: Number of minimum independent dominating sets in the n X n grid graph.

The programs for A397749, there is no canonical definition to state claims against.
-/

/-! ## A397749.P16742505986599425781

`A397748((n+1)²+n²)`
-/

namespace A397749.P16742505986599425781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397748 ((n + 1) ^ 2 + n ^ 2)

end

end A397749.P16742505986599425781

/-!
# A397750: Number of minimum independent dominating sets in the n-path graph.

The programs for A397750, the canonical program `A397750.P11650886659018461077` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397750 has offset 0).

The definition of A397750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397750.P2549723199384017353

`ogf((1+x+2x^2-2x^3-3x^5+x^6+x^8)/(1-3x^3+3x^6-x^9))`
-/

namespace A397750.P2549723199384017353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, -2, 0, -3, 1, 0, 1] [1, 0, 0, -3, 0, 0, 3, 0, 0, -1] n

end

end A397750.P2549723199384017353

namespace A397750

/-- `ogf((1+x+2x^2-2x^3-3x^5+x^6+x^8)/(1-3x^3+3x^6-x^9))` -/
def P2549723199384017353.Spec : Prop :=
  ∀ n, P2549723199384017353.a n = A397750 n

end A397750

/-! ## A397750.P11650886659018461077

`3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1, a(4)=3, a(5)=3, a(6)=1, a(7)=6, a(8)=4`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A397750

/-- `3*a(n-3)-3*a(n-6)+a(n-9)` -/
def P11650886659018461077.Spec : Prop :=
  ∀ n, P11650886659018461077.a n = A397750 n

theorem P11650886659018461077.correct : P11650886659018461077.Spec := by
  intro n
  simp only [A397750]

end A397750

/-! ## A397750.P7078347621781483133

`A007318(eq[1, A068914(n+1)])`
-/

namespace A397750.P7078347621781483133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A397750.P7078347621781483133

namespace A397750

/-- `A007318(eq[1, A068914(n+1)])` -/
def P7078347621781483133.Spec : Prop :=
  ∀ n, P7078347621781483133.a n = A397750 n

end A397750

/-! ## A397750.P18243217304308419078

`A007318(lt[A038622(n), A005843(n)])`
-/

namespace A397750.P18243217304308419078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A397750.P18243217304308419078

namespace A397750

/-- `A007318(lt[A038622(n), A005843(n)])` -/
def P18243217304308419078.Spec : Prop :=
  ∀ n, P18243217304308419078.a n = A397750 n

end A397750

/-! ## A397750.P11229908370054985191

`A007318(lt[A055248(n), A285964(n+1)])`
-/

namespace A397750.P11229908370054985191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A397750.P11229908370054985191

namespace A397750

/-- `A007318(lt[A055248(n), A285964(n+1)])` -/
def P11229908370054985191.Spec : Prop :=
  ∀ n, P11229908370054985191.a n = A397750 n

end A397750

/-! ## A397750.P7995291215603390836

`A007318(lt[A236830(n), A171581(n+1)])`
-/

namespace A397750.P7995291215603390836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236830 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A397750.P7995291215603390836

namespace A397750

/-- `A007318(lt[A236830(n), A171581(n+1)])` -/
def P7995291215603390836.Spec : Prop :=
  ∀ n, P7995291215603390836.a n = A397750 n

end A397750

/-! ## A397750.P11073953417775318333

`A109449(lt[A109449(n), A109449(n+3)])`
-/

namespace A397750.P11073953417775318333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A397750.P11073953417775318333

namespace A397750

/-- `A109449(lt[A109449(n), A109449(n+3)])` -/
def P11073953417775318333.Spec : Prop :=
  ∀ n, P11073953417775318333.a n = A397750 n

end A397750

/-! ## A397750.P4222685367712326363

`A030528(A251599(n+2))`
-/

namespace A397750.P4222685367712326363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (A251599 (n + 2)).toNat

end

end A397750.P4222685367712326363

namespace A397750

/-- `A030528(A251599(n+2))` -/
def P4222685367712326363.Spec : Prop :=
  ∀ n, P4222685367712326363.a n = A397750 n

end A397750

/-! ## A397750.P6562296642493209379

`A007318(lt[A084938(n), A007318(n)])`
-/

namespace A397750.P6562296642493209379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A397750.P6562296642493209379

namespace A397750

/-- `A007318(lt[A084938(n), A007318(n)])` -/
def P6562296642493209379.Spec : Prop :=
  ∀ n, P6562296642493209379.a n = A397750 n

end A397750

/-! ## A397750.P392964933964821186

`A007318(lt[A097364(n+1), 2])`
-/

namespace A397750.P392964933964821186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097364 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A397750.P392964933964821186

namespace A397750

/-- `A007318(lt[A097364(n+1), 2])` -/
def P392964933964821186.Spec : Prop :=
  ∀ n, P392964933964821186.a n = A397750 n

end A397750

/-!
# A397751: Number of minimum independent dominating sets in the n-cycle graph.

The programs for A397751, the canonical program `A397751.P13062730902191877539` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397751 has offset 0).

The definition of A397751 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397751.P4722217998708174924

`ogf((3+2x^2-6x^3+2x^4-x^5+3x^6+x^7-x^8)/(1-3x^3+3x^6-x^9))`
-/

namespace A397751.P4722217998708174924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, 2, -6, 2, -1, 3, 1, -1] [1, 0, 0, -3, 0, 0, 3, 0, 0, -1] n

end

end A397751.P4722217998708174924

namespace A397751

/-- `ogf((3+2x^2-6x^3+2x^4-x^5+3x^6+x^7-x^8)/(1-3x^3+3x^6-x^9))` -/
def P4722217998708174924.Spec : Prop :=
  ∀ n, P4722217998708174924.a n = A397751 n

end A397751

/-! ## A397751.P13062730902191877539

`3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=3, a(1)=0, a(2)=2, a(3)=3, a(4)=2, a(5)=5, a(6)=3, a(7)=7, a(8)=8`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A397751

/-- `3*a(n-3)-3*a(n-6)+a(n-9)` -/
def P13062730902191877539.Spec : Prop :=
  ∀ n, P13062730902191877539.a n = A397751 n

theorem P13062730902191877539.correct : P13062730902191877539.Spec := by
  intro n
  simp only [A397751]

end A397751

/-!
# A397752: Number of unlabeled bridgeless polygonal snake graphs with n vertices.

The programs for A397752, the canonical program `A397752.P6709378289792760726` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397752 has offset 1).

The definition of A397752 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397752.P6709378289792760726

`ogf((x^2-2x^4-2x^5-2x^6+x^7+2x^8+2x^9+2x^10-x^12)/(1-x-3x^2+x^3+x^4+2x^5+3x^6-x^8-x^9-2x^10+x^12))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A397752

/-- `ogf((x^2-2x^4-2x^5-2x^6+x^7+2x^8+2x^9+2x^10-x^12)/(1-x-3x^2+x^3+x^4+2x^5+3x^6-x^8-x^9-2x^10+x^12))` -/
def P6709378289792760726.Spec : Prop :=
  ∀ n, P6709378289792760726.a n = A397752 (n + 1)

theorem P6709378289792760726.correct : P6709378289792760726.Spec := by
  intro n
  simp only [A397752, Nat.add_sub_cancel]

end A397752

/-! ## A397752.P10531709509179427418

`A084359(A148029(n))`
-/

namespace A397752.P10531709509179427418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084359 (A148029 n).toNat

end

end A397752.P10531709509179427418

namespace A397752

/-- `A084359(A148029(n))` -/
def P10531709509179427418.Spec : Prop :=
  ∀ n, P10531709509179427418.a n = A397752 (n + 1)

end A397752

/-! ## A397752.P7189558769517088392

`A084359(A148036(n))`
-/

namespace A397752.P7189558769517088392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084359 (A148036 n).toNat

end

end A397752.P7189558769517088392

namespace A397752

/-- `A084359(A148036(n))` -/
def P7189558769517088392.Spec : Prop :=
  ∀ n, P7189558769517088392.a n = A397752 (n + 1)

end A397752

/-!
# A397754: Numbers that don't contain digit 0 but have a divisor that does.

The programs for A397754, the canonical program `A397754.P18151342160138794166` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397754 has offset 1).

The definition of A397754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397754.P18151342160138794166

`∩[A209932(n+1), A259315(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A397754

/-- `∩[A209932(n+1), A259315(n+1)]` -/
def P18151342160138794166.Spec : Prop :=
  ∀ n, (P18151342160138794166.a n : ℤ) = A397754 (n + 1)

theorem P18151342160138794166.correct : P18151342160138794166.Spec := by
  intro n
  simp only [A397754, Nat.add_sub_cancel]

end A397754

/-! ## A397754.P7661821968192008251

`filter[A209932(n+1), A168046(#)]`
-/

namespace A397754.P7661821968192008251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A397754.P7661821968192008251

namespace A397754

/-- `filter[A209932(n+1), A168046(#)]` -/
def P7661821968192008251.Spec : Prop :=
  ∀ n, P7661821968192008251.a n = A397754 (n + 1)

end A397754

/-!
# A397757: Maximum length of a snake polyomino in a 6 X n rectangle.

The programs for A397757, the canonical program `A397757.P7073493250673476325` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397757 has offset 1).

The definition of A397757 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397757.P7073493250673476325

`a(n-4)+15` with `a(0)=6, a(1)=9, a(2)=14, a(3)=17, a(4)=21, a(5)=24, a(6)=29, a(7)=32, a(8)=36, a(9)=40`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A397757

/-- `a(n-4)+15` -/
def P7073493250673476325.Spec : Prop :=
  ∀ n, (P7073493250673476325.a n : ℤ) = A397757 (n + 1)

theorem P7073493250673476325.correct : P7073493250673476325.Spec := by
  intro n
  simp only [A397757, Nat.add_sub_cancel]

end A397757

/-! ## A397757.P7379891921052895330

`ogf((6+3x+5x^2+3x^3-2x^4+x^9-x^10)/(1-x-x^4+x^5))`
-/

namespace A397757.P7379891921052895330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 3, 5, 3, -2, 0, 0, 0, 0, 1, -1] [1, -1, 0, 0, -1, 1] n

end

end A397757.P7379891921052895330

namespace A397757

/-- `ogf((6+3x+5x^2+3x^3-2x^4+x^9-x^10)/(1-x-x^4+x^5))` -/
def P7379891921052895330.Spec : Prop :=
  ∀ n, P7379891921052895330.a n = A397757 (n + 1)

end A397757

/-! ## A397757.P16276318623530317769

`A360917(A374007(n+1))`
-/

namespace A397757.P16276318623530317769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360917 (A374007 (n + 1)).toNat

end

end A397757.P16276318623530317769

namespace A397757

/-- `A360917(A374007(n+1))` -/
def P16276318623530317769.Spec : Prop :=
  ∀ n, P16276318623530317769.a n = A397757 (n + 1)

end A397757

/-! ## A397757.P13530422384046527772

`A112318(A246299(n+2))`
-/

namespace A397757.P13530422384046527772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (A246299 (n + 2)).toNat

end

end A397757.P13530422384046527772

namespace A397757

/-- `A112318(A246299(n+2))` -/
def P13530422384046527772.Spec : Prop :=
  ∀ n, P13530422384046527772.a n = A397757 (n + 1)

end A397757

/-! ## A397757.P13146021160317645828

`A029903(A047408(n+2))`
-/

namespace A397757.P13146021160317645828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029903 (A047408 (n + 2)).toNat

end

end A397757.P13146021160317645828

namespace A397757

/-- `A029903(A047408(n+2))` -/
def P13146021160317645828.Spec : Prop :=
  ∀ n, P13146021160317645828.a n = A397757 (n + 1)

end A397757

/-!
# A397768: a(n) = sum of powers of 2 where the exponents are the digits of n.

The programs for A397768, the canonical program `A397768.P10342280064419444199` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397768 has offset 0).

The definition of A397768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397768.P10342280064419444199

`∑{digits}[n, 2^#]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A397768

/-- `∑{digits}[n, 2^#]` -/
def P10342280064419444199.Spec : Prop :=
  ∀ n, (P10342280064419444199.a n : ℤ) = A397768 n

theorem P10342280064419444199.correct : P10342280064419444199.Spec := by
  intro n
  simp only [A397768]

end A397768

/-! ## A397768.P3276979016091620160

`A048675(A359802(n))`
-/

namespace A397768.P3276979016091620160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A359802 n).toNat

end

end A397768.P3276979016091620160

namespace A397768

/-- `A048675(A359802(n))` -/
def P3276979016091620160.Spec : Prop :=
  ∀ n, P3276979016091620160.a n = A397768 n

end A397768

/-! ## A397768.P10840430973581174508

`A162439(A101440(n))`
-/

namespace A397768.P10840430973581174508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162439 (A101440 n).toNat

end

end A397768.P10840430973581174508

namespace A397768

/-- `A162439(A101440(n))` -/
def P10840430973581174508.Spec : Prop :=
  ∀ n, P10840430973581174508.a n = A397768 n

end A397768

/-! ## A397768.P9333151510414993011

`A086066(n)*A228525(A345943(n+1))`
-/

namespace A397768.P9333151510414993011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n * A228525 (A345943 (n + 1)).toNat

end

end A397768.P9333151510414993011

namespace A397768

/-- `A086066(n)*A228525(A345943(n+1))` -/
def P9333151510414993011.Spec : Prop :=
  ∀ n, P9333151510414993011.a n = A397768 n

end A397768

/-! ## A397768.P4610646849637983935

`A174869(A166327(n+1))`
-/

namespace A397768.P4610646849637983935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174869 (A166327 (n + 1)).toNat

end

end A397768.P4610646849637983935

namespace A397768

/-- `A174869(A166327(n+1))` -/
def P4610646849637983935.Spec : Prop :=
  ∀ n, P4610646849637983935.a n = A397768 n

end A397768

/-!
# A397771: Number of homeomorphism classes of stable curves in the closure of the hyperelliptic locus of the moduli space of stable curves of genus g.

The programs for A397771, there is no canonical definition to state claims against.
-/

/-! ## A397771.P18090200364998251612

`A168044(A001519(n)²)`
-/

namespace A397771.P18090200364998251612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168044 (A001519 n ^ 2).toNat

end

end A397771.P18090200364998251612

/-!
# A397772: Inverse Möbius transform of A351830.

The programs for A397772, the canonical program `A397772.P11304897747839409447` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397772 has offset 1).

The definition of A397772 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397772.P11304897747839409447

`∑{d}[n+1, A351830(#)]`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A397772

/-- `∑{d}[n+1, A351830(#)]` -/
def P11304897747839409447.Spec : Prop :=
  ∀ n, P11304897747839409447.a n = A397772 (n + 1)

theorem P11304897747839409447.correct : P11304897747839409447.Spec := by
  intro n
  simp only [A397772, Nat.add_sub_cancel]

end A397772

/-!
# A397773: a(n) is the number of distinct values of Sum_{x=0..n-1} exp(2*Pi*i*c*x^n/n^2) as c runs over the residues s^(2*(n-1)) mod n^2 with gcd(s,n) = 1.

The programs for A397773, there is no canonical definition to state claims against.
-/

/-! ## A397773.P2497051534690485319

`A336319(2^(n+1))`
-/

namespace A397773.P2497051534690485319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336319 (2 ^ (n + 1))

end

end A397773.P2497051534690485319

/-! ## A397773.P2557287661880621322

`A007913(A001792(n))`
-/

namespace A397773.P2557287661880621322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A001792 n).toNat

end

end A397773.P2557287661880621322

/-! ## A397773.P12755562226398265729

`A364900(A077168(n))`
-/

namespace A397773.P12755562226398265729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364900 (A077168 n).toNat

end

end A397773.P12755562226398265729

/-! ## A397773.P14137652924450731817

`A055231((n+1)²*∑[n+1])`
-/

namespace A397773.P14137652924450731817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 ((n + 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A397773.P14137652924450731817

/-! ## A397773.P17111588538101952749

`A364900(A144129(n+1))`
-/

namespace A397773.P17111588538101952749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364900 (A144129 (n + 1)).toNat

end

end A397773.P17111588538101952749

/-!
# A397775: Array read by ascending antidiagonals: A(0, k) = 1 and A(n, k) = n*A(n-1, k) + k, with k >= 0.

The programs for A397775, there is no canonical definition to state claims against.
-/

/-! ## A397775.P14307964614430023558

`A113007(A125278(n))`
-/

namespace A397775.P14307964614430023558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113007 (A125278 n).toNat

end

end A397775.P14307964614430023558

/-! ## A397775.P816532807705608918

`A265519(A134558(n))`
-/

namespace A397775.P816532807705608918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265519 (A134558 n).toNat

end

end A397775.P816532807705608918

/-!
# A397776: Main diagonal of the array A397775.

The programs for A397776, there is no canonical definition to state claims against.
-/

/-! ## A397776.P13641530702057783206

`n!+∑{#}[n-1, #!*C(n, #)*n]`
-/

namespace A397776.P13641530702057783206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.factorial k * Nat.choose n k * n

end

end A397776.P13641530702057783206

/-! ## A397776.P13828949491739140843

`A397775(∑[4*n])`
-/

namespace A397776.P13828949491739140843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397775 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397776.P13828949491739140843

/-!
# A397777: Antidiagonal sums of the array A397775.

The programs for A397777, there is no canonical definition to state claims against.
-/

/-! ## A397777.P13850190860704413585

`A324689(A017920(n))`
-/

namespace A397777.P13850190860704413585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324689 (A017920 n).toNat

end

end A397777.P13850190860704413585

/-!
# A397778: Lengths of longest legs of Pythagorean triangles corresponding to a record number of such triangles.

The programs for A397778, there is no canonical definition to state claims against.
-/

/-! ## A397778.P754515214245580535

`filter[A356573(n+3), A164056(#)]`
-/

namespace A397778.P754515214245580535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356573 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164056 (f1 j).toNat = 1) n)

end

end A397778.P754515214245580535

/-! ## A397778.P15923069636759130585

`A075617(A332037(n+1))`
-/

namespace A397778.P15923069636759130585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075617 (A332037 (n + 1)).toNat

end

end A397778.P15923069636759130585

/-! ## A397778.P16452099676177183361

`A075617(A332039(n+1))`
-/

namespace A397778.P16452099676177183361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075617 (A332039 (n + 1)).toNat

end

end A397778.P16452099676177183361

/-! ## A397778.P5513646739760955907

`∩[A277015(n), A356573(n+1)]`
-/

namespace A397778.P5513646739760955907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277015 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397778.P5513646739760955907

/-!
# A397779: 2-adic valuation of the triple factorial of n.

The programs for A397779, the canonical program `A397779.P3478401780238339042` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397779 has offset 0).

The definition of A397779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397779.P3478401780238339042

`a(n-3)+A007814(n)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A397779

/-- `a(n-3)+A007814(n)` -/
def P3478401780238339042.Spec : Prop :=
  ∀ n, P3478401780238339042.a n = A397779 n

theorem P3478401780238339042.correct : P3478401780238339042.Spec := by
  intro n
  simp only [A397779]

end A397779

/-! ## A397779.P15824108019620319070

`A007814(A007661(n))`
-/

namespace A397779.P15824108019620319070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A007661 n).toNat

end

end A397779.P15824108019620319070

namespace A397779

/-- `A007814(A007661(n))` -/
def P15824108019620319070.Spec : Prop :=
  ∀ n, P15824108019620319070.a n = A397779 n

end A397779

/-! ## A397779.P16473036284666042937

`a(n-3)+val(n, 2)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A397779.P16473036284666042937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 3) + SequenceMachineLib.valuation n 2

end

end A397779.P16473036284666042937

namespace A397779

/-- `a(n-3)+val(n, 2)` -/
def P16473036284666042937.Spec : Prop :=
  ∀ n, (P16473036284666042937.a n : ℤ) = A397779 n

end A397779

/-! ## A397779.P16305179384621959739

`val(A007661(n), 2)`
-/

namespace A397779.P16305179384621959739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007661 n).toNat 2

end

end A397779.P16305179384621959739

namespace A397779

/-- `val(A007661(n), 2)` -/
def P16305179384621959739.Spec : Prop :=
  ∀ n, (P16305179384621959739.a n : ℤ) = A397779 n

end A397779

/-! ## A397779.P3831041684659830354

`A362832(A089484(n+1))`
-/

namespace A397779.P3831041684659830354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362832 (A089484 (n + 1)).toNat

end

end A397779.P3831041684659830354

namespace A397779

/-- `A362832(A089484(n+1))` -/
def P3831041684659830354.Spec : Prop :=
  ∀ n, P3831041684659830354.a n = A397779 n

end A397779

/-!
# A397782: Number of nonisomorphic rectangular doppelsemigroups of order n.

The programs for A397782, there is no canonical definition to state claims against.
-/

/-! ## A397782.P15986776198315760542

`A229791(A289501(n))`
-/

namespace A397782.P15986776198315760542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229791 (A289501 n).toNat

end

end A397782.P15986776198315760542

/-!
# A397787: Number of even primitive Dirichlet characters modulo n.

The programs for A397787, the canonical program `A397787.P9925276150095344826` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397787 has offset 1).

The definition of A397787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397787.P17149103821857417093

`A397788(n+1)+A359591(n+1)`
-/

namespace A397787.P17149103821857417093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397788 (n + 1) + A359591 (n + 1)

end

end A397787.P17149103821857417093

namespace A397787

/-- `A397788(n+1)+A359591(n+1)` -/
def P17149103821857417093.Spec : Prop :=
  ∀ n, P17149103821857417093.a n = A397787 (n + 1)

end A397787

/-! ## A397787.P7986382940004985129

`A007431(n+1)-A397788(n+1)`
-/

namespace A397787.P7986382940004985129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (n + 1) - A397788 (n + 1)

end

end A397787.P7986382940004985129

namespace A397787

/-- `A007431(n+1)-A397788(n+1)` -/
def P7986382940004985129.Spec : Prop :=
  ∀ n, P7986382940004985129.a n = A397787 (n + 1)

end A397787

/-! ## A397787.P6784399360976448081

`∑{d}[n+1, A007428(#)*A069734((n+1)/#)]`
-/

namespace A397787.P6784399360976448081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A069734 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A397787.P6784399360976448081

namespace A397787

/-- `∑{d}[n+1, A007428(#)*A069734((n+1)/#)]` -/
def P6784399360976448081.Spec : Prop :=
  ∀ n, P6784399360976448081.a n = A397787 (n + 1)

end A397787

/-! ## A397787.P9925276150095344826

`∑{d}[n+1, A007427(#)*A080513((n+1)/#-1)]`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A397787

/-- `∑{d}[n+1, A007427(#)*A080513((n+1)/#-1)]` -/
def P9925276150095344826.Spec : Prop :=
  ∀ n, P9925276150095344826.a n = A397787 (n + 1)

theorem P9925276150095344826.correct : P9925276150095344826.Spec := by
  intro n
  simp only [A397787, Nat.add_sub_cancel]

end A397787

/-! ## A397787.P8043866841049355004

`∑{d}[n+1, A106466(#-1)*A327276((n+1)/#)]`
-/

namespace A397787.P8043866841049355004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A106466 (d - 1) * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A397787.P8043866841049355004

namespace A397787

/-- `∑{d}[n+1, A106466(#-1)*A327276((n+1)/#)]` -/
def P8043866841049355004.Spec : Prop :=
  ∀ n, P8043866841049355004.a n = A397787 (n + 1)

end A397787

/-!
# A397788: Number of odd primitive Dirichlet characters modulo n.

The programs for A397788, the canonical program `A397788.P10557389323205216915` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397788 has offset 1).

The definition of A397788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397788.P1281935528772717675

`A007431(n+1)-A397787(n+1)`
-/

namespace A397788.P1281935528772717675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (n + 1) - A397787 (n + 1)

end

end A397788.P1281935528772717675

namespace A397788

/-- `A007431(n+1)-A397787(n+1)` -/
def P1281935528772717675.Spec : Prop :=
  ∀ n, P1281935528772717675.a n = A397788 (n + 1)

end A397788

/-! ## A397788.P8382073756989630414

`A397787(n+1)-A359591(n+1)`
-/

namespace A397788.P8382073756989630414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397787 (n + 1) - A359591 (n + 1)

end

end A397788.P8382073756989630414

namespace A397788

/-- `A397787(n+1)-A359591(n+1)` -/
def P8382073756989630414.Spec : Prop :=
  ∀ n, P8382073756989630414.a n = A397788 (n + 1)

end A397788

/-! ## A397788.P15815620302229492738

`∑{d}[n+1, A304183(#)*A326415((n+1)/#)]`
-/

namespace A397788.P15815620302229492738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A304183 d * A326415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A397788.P15815620302229492738

namespace A397788

/-- `∑{d}[n+1, A304183(#)*A326415((n+1)/#)]` -/
def P15815620302229492738.Spec : Prop :=
  ∀ n, P15815620302229492738.a n = A397788 (n + 1)

end A397788

/-! ## A397788.P10557389323205216915

`∑{d}[n+1, A004526(#-1)*A007427((n+1)/#)]`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A397788

/-- `∑{d}[n+1, A004526(#-1)*A007427((n+1)/#)]` -/
def P10557389323205216915.Spec : Prop :=
  ∀ n, P10557389323205216915.a n = A397788 (n + 1)

theorem P10557389323205216915.correct : P10557389323205216915.Spec := by
  intro n
  simp only [A397788, Nat.add_sub_cancel]

end A397788

/-! ## A397788.P4720625291422377857

`A055396(n+1)-A306710(A033451(n+4))`
-/

namespace A397788.P4720625291422377857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) - A306710 (A033451 (n + 4)).toNat

end

end A397788.P4720625291422377857

namespace A397788

/-- `A055396(n+1)-A306710(A033451(n+4))` -/
def P4720625291422377857.Spec : Prop :=
  ∀ n, P4720625291422377857.a n = A397788 (n + 1)

end A397788

/-!
# A397789: a(n) = nearest prime to prime(n)^(3/2).

The programs for A397789, there is no canonical definition to state claims against.
-/

/-! ## A397789.P7930584531504908003

`sqrt(A397790(n+1))`
-/

namespace A397789.P7930584531504908003
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A397790 (n + 1) : ℝ)

end

end A397789.P7930584531504908003

/-!
# A397790: a(n) = prime^2 closest to prime(n)^3.

The programs for A397790, there is no canonical definition to state claims against.
-/

/-! ## A397790.P11883728269990970925

`A397789(n+1)²`
-/

namespace A397790.P11883728269990970925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397789 (n + 1) ^ 2

end

end A397790.P11883728269990970925

/-! ## A397790.P12729477817410630030

`A397789(A000027(n+1))^2`
-/

namespace A397790.P12729477817410630030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397789 (A000027 (n + 1)).toNat ^ 2

end

end A397790.P12729477817410630030

/-! ## A397790.P16481718391643726946

`A397789(A000027(n+1))*A397789(n+1)`
-/

namespace A397790.P16481718391643726946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397789 (A000027 (n + 1)).toNat * A397789 (n + 1)

end

end A397790.P16481718391643726946

/-! ## A397790.P13798478486699294677

`A397789(n+1)^A001055(A001248(n+1))`
-/

namespace A397790.P13798478486699294677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A397789 (n + 1) : ℚ) ^ (A001055 (A001248 (n + 1)).toNat : ℤ)

end

end A397790.P13798478486699294677

/-!
# A397792: Number of ways to tile a 2 X n strip with alternate corners missing, using squares, dominoes, and Z-shaped tetrominoes.

The programs for A397792, the canonical program `A397792.P18121253684873005119` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397792 has offset 2).

The definition of A397792 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397792.P2765707412277532913

`ogf((1+4x-2x^2-3x^3+x^5)/(1-2x-6x^2+2x^3+4x^4-x^6))`
-/

namespace A397792.P2765707412277532913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -2, -3, 0, 1] [1, -2, -6, 2, 4, 0, -1] n

end

end A397792.P2765707412277532913

namespace A397792

/-- `ogf((1+4x-2x^2-3x^3+x^5)/(1-2x-6x^2+2x^3+4x^4-x^6))` -/
def P2765707412277532913.Spec : Prop :=
  ∀ n, P2765707412277532913.a n = A397792 (n + 2)

end A397792

/-! ## A397792.P18121253684873005119

`2*a(n-1)+6*a(n-2)-2*a(n-3)-4*a(n-4)+a(n-6)` with `a(0)=1, a(1)=6, a(2)=16, a(3)=63, a(4)=206, a(5)=735`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A397792

/-- `2*a(n-1)+6*a(n-2)-2*a(n-3)-4*a(n-4)+a(n-6)` -/
def P18121253684873005119.Spec : Prop :=
  ∀ n, P18121253684873005119.a n = A397792 (n + 2)

theorem P18121253684873005119.correct : P18121253684873005119.Spec := by
  intro n
  simp only [A397792, Nat.add_sub_cancel]

end A397792

/-! ## A397792.P6043046596642953414

`A397582(n+1)+A397583(n+1)-A397793(n+2)`
-/

namespace A397792.P6043046596642953414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397582 (n + 1) + (A397583 (n + 1) - A397793 (n + 2))

end

end A397792.P6043046596642953414

namespace A397792

/-- `A397582(n+1)+A397583(n+1)-A397793(n+2)` -/
def P6043046596642953414.Spec : Prop :=
  ∀ n, P6043046596642953414.a n = A397792 (n + 2)

end A397792

/-!
# A397793: Number of ways to tile a 2 X n strip with both bottom corners missing, using squares, dominoes, and Z-shaped tetrominoes.

The programs for A397793, the canonical program `A397793.P2151155837396120395` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397793 has offset 2).

The definition of A397793 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397793.P14603880046088945573

`ogf((2-x^2)/(1-2x-6x^2+2x^3+4x^4-x^6))`
-/

namespace A397793.P14603880046088945573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -1] [1, -2, -6, 2, 4, 0, -1] n

end

end A397793.P14603880046088945573

namespace A397793

/-- `ogf((2-x^2)/(1-2x-6x^2+2x^3+4x^4-x^6))` -/
def P14603880046088945573.Spec : Prop :=
  ∀ n, P14603880046088945573.a n = A397793 (n + 2)

end A397793

/-! ## A397793.P2151155837396120395

`2*a(n-1)+6*a(n-2)-2*a(n-3)-4*a(n-4)+a(n-6)` with `a(0)=2, a(1)=4, a(2)=19, a(3)=58, a(4)=214, a(5)=722`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A397793

/-- `2*a(n-1)+6*a(n-2)-2*a(n-3)-4*a(n-4)+a(n-6)` -/
def P2151155837396120395.Spec : Prop :=
  ∀ n, P2151155837396120395.a n = A397793 (n + 2)

theorem P2151155837396120395.correct : P2151155837396120395.Spec := by
  intro n
  simp only [A397793, Nat.add_sub_cancel]

end A397793

/-! ## A397793.P15546778771765710076

`A397582(n+1)+A397583(n+1)-A397792(n+2)`
-/

namespace A397793.P15546778771765710076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397582 (n + 1) + (A397583 (n + 1) - A397792 (n + 2))

end

end A397793.P15546778771765710076

namespace A397793

/-- `A397582(n+1)+A397583(n+1)-A397792(n+2)` -/
def P15546778771765710076.Spec : Prop :=
  ∀ n, P15546778771765710076.a n = A397793 (n + 2)

end A397793

/-!
# A397794: a(n) is the decimal encoding of the unique snowball numeral <d_k...d_1> having value n.

The programs for A397794, there is no canonical definition to state claims against.
-/

/-! ## A397794.P7808329362672444185

`A007623(A397851(n))`
-/

namespace A397794.P7808329362672444185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A397851 n).toNat

end

end A397794.P7808329362672444185

/-! ## A397794.P11877279596505146225

`A007088(n)%A107931(A013680(n))`
-/

namespace A397794.P11877279596505146225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007088 n) (A107931 (A013680 n).toNat)

end

end A397794.P11877279596505146225

/-!
# A397797: Number of free ouroboros polyknights with 2*n cells.

The programs for A397797, there is no canonical definition to state claims against.
-/

/-! ## A397797.P11422927829358829027

`A092459(A394732(n))`
-/

namespace A397797.P11422927829358829027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092459 (A394732 n).toNat

end

end A397797.P11422927829358829027

/-!
# A397798: Lexicographically earliest sequence of distinct 5-rough numbers greater than 1 whose sum of reciprocals is 1.

The programs for A397798, there is no canonical definition to state claims against.
-/

/-! ## A397798.P13900017435752593420

`∑[A393507((n+1)²)]-n`
-/

namespace A397798.P13900017435752593420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393507 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A397798.P13900017435752593420

/-! ## A397798.P1847784973636038713

`floor(A145265(3*n+5)/3)`
-/

namespace A397798.P1847784973636038713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A145265 (3 * n + 5) : ℚ) / 3⌋

end

end A397798.P1847784973636038713

/-! ## A397798.P1808435920122376587

`A131919(A117748(n+2))`
-/

namespace A397798.P1808435920122376587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131919 (A117748 (n + 2)).toNat

end

end A397798.P1808435920122376587

/-! ## A397798.P10370607869805185133

`eq[A010125(n), A306149(n)]`
-/

namespace A397798.P10370607869805185133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010125 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306149 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A397798.P10370607869805185133

/-! ## A397798.P4799087869585375611

`eq[A010155(n), A306149(n)]`
-/

namespace A397798.P4799087869585375611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306149 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A397798.P4799087869585375611

