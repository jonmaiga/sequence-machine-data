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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
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
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A094401: Composite n such that n divides both Fibonacci(n-1) and Fibonacci(n) - 1.

The programs for A094401, there is no canonical definition to state claims against.
-/

/-! ## A094401.P781719455334940807

`∩[A005845(n+1), A069106(n+1)]`
-/

namespace A094401.P781719455334940807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094401.P781719455334940807

/-! ## A094401.P13754247476012801797

`∩[A069106(n+1), A337625(n+1)]`
-/

namespace A094401.P13754247476012801797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094401.P13754247476012801797

/-! ## A094401.P6625006179121123823

`∩[A005845(n+1), A094394(n+1)]`
-/

namespace A094401.P6625006179121123823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094401.P6625006179121123823

/-! ## A094401.P238712564184057866

`∩[A069106(n+1), A094394(n+1)]`
-/

namespace A094401.P238712564184057866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094401.P238712564184057866

/-! ## A094401.P4429742129726663650

`∩[A094394(n+1), A337625(n+1)]`
-/

namespace A094401.P4429742129726663650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094401.P4429742129726663650

/-! ## A094401.P14969523146941863680

`∩[A069106(n+1), A337627(n+1)]`
-/

namespace A094401.P14969523146941863680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094401.P14969523146941863680

/-! ## A094401.P6100404971957588224

`∩[A094394(n+1), A337627(n+1)]`
-/

namespace A094401.P6100404971957588224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094401.P6100404971957588224

/-! ## A094401.P8111683959826925708

`∩[A069106(n+1), A335670(n+1)]`
-/

namespace A094401.P8111683959826925708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094401.P8111683959826925708

/-! ## A094401.P6416783856323800360

`∩[A094394(n+1), A335670(n+1)]`
-/

namespace A094401.P6416783856323800360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094401.P6416783856323800360

/-! ## A094401.P13064552737659147940

`∩[A069106(n+1), A279072(n+1)]`
-/

namespace A094401.P13064552737659147940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094401.P13064552737659147940

/-!
# A094402: Numbers k that divide both Fibonacci(k+1) and Lucas(k) + 1.

The programs for A094402, there is no canonical definition to state claims against.
-/

/-! ## A094402.P15367583453742830731

`∩[A094398(n+1), A124456(n+1)]`
-/

namespace A094402.P15367583453742830731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094402.P15367583453742830731

/-! ## A094402.P17045114672824113313

`∩[A094398(n+1), A111035(n+1)]`
-/

namespace A094402.P17045114672824113313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094402.P17045114672824113313

/-!
# A094403: a(1) = 1; a(n) = (sum of previous terms)^n mod n.

The programs for A094403, there is no canonical definition to state claims against.
-/

/-! ## A094403.P1455375945806241819

`and(A006218(2*n+1), A095048(A002995(n+2)))`
-/

namespace A094403.P1455375945806241819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006218 (2 * n + 1)) (A095048 (A002995 (n + 2)).toNat)

end

end A094403.P1455375945806241819

/-!
# A094404: Numerators of low-water marks of mu(n)/n, where mu(n) is A002034.

The programs for A094404, the canonical program `A094404.P9489888441643309865` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094404 has offset 1).

The definition of A094404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094404.P9489888441643309865

`gcd(2*(n+1)-∏{e}[n+1, #+1], ∏{p}[n+1, gcd(n+1, #²)]-n)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A094404

/-- `gcd(2*(n+1)-∏{e}[n+1, #+1], ∏{p}[n+1, gcd(n+1, #²)]-n)` -/
def P9489888441643309865.Spec : Prop :=
  ∀ n, (P9489888441643309865.a n : ℤ) = A094404 (n + 1)

theorem P9489888441643309865.correct : P9489888441643309865.Spec := by
  intro n
  simp only [A094404, Nat.add_sub_cancel]

end A094404

/-! ## A094404.P9115100184735544777

`A039599(and((n+1)*∏{p}[n+1, #-1/#], ∏{e}[n+1, #+1]))`
-/

namespace A094404.P9115100184735544777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (Int.land (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℚ) - 1 / (p : ℚ))))) ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)).toNat

end

end A094404.P9115100184735544777

namespace A094404

/-- `A039599(and((n+1)*∏{p}[n+1, #-1/#], ∏{e}[n+1, #+1]))` -/
def P9115100184735544777.Spec : Prop :=
  ∀ n, P9115100184735544777.a n = A094404 (n + 1)

end A094404

/-! ## A094404.P16010943482171092463

`A027023(gcd(n, A067581(n)))`
-/

namespace A094404.P16010943482171092463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 (Int.gcd (n : ℤ) (A067581 n))

end

end A094404.P16010943482171092463

namespace A094404

/-- `A027023(gcd(n, A067581(n)))` -/
def P16010943482171092463.Spec : Prop :=
  ∀ n, P16010943482171092463.a n = A094404 (n + 1)

end A094404

/-! ## A094404.P11256141388249085570

`A109543(Δ[A330991(n+1)])`
-/

namespace A094404.P11256141388249085570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109543 (f1 (n + 1) - f1 n).toNat

end

end A094404.P11256141388249085570

namespace A094404

/-- `A109543(Δ[A330991(n+1)])` -/
def P11256141388249085570.Spec : Prop :=
  ∀ n, P11256141388249085570.a n = A094404 (n + 1)

end A094404

/-! ## A094404.P2914470003359339249

`A028234(A045814(n+3)-1)`
-/

namespace A094404.P2914470003359339249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A045814 (n + 3) - 1).toNat

end

end A094404.P2914470003359339249

namespace A094404

/-- `A028234(A045814(n+3)-1)` -/
def P2914470003359339249.Spec : Prop :=
  ∀ n, P2914470003359339249.a n = A094404 (n + 1)

end A094404

/-! ## A094404.P8991131559249058463

`A052409(or(3, A263652(n+1)))`
-/

namespace A094404.P8991131559249058463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (Int.lor 3 (A263652 (n + 1))).toNat

end

end A094404.P8991131559249058463

namespace A094404

/-- `A052409(or(3, A263652(n+1)))` -/
def P8991131559249058463.Spec : Prop :=
  ∀ n, P8991131559249058463.a n = A094404 (n + 1)

end A094404

/-! ## A094404.P244558653315911429

`A274658(or(2, A134744(n+5)))`
-/

namespace A094404.P244558653315911429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274658 (Int.lor 2 (A134744 (n + 5))).toNat

end

end A094404.P244558653315911429

namespace A094404

/-- `A274658(or(2, A134744(n+5)))` -/
def P244558653315911429.Spec : Prop :=
  ∀ n, P244558653315911429.a n = A094404 (n + 1)

end A094404

/-! ## A094404.P11698792106939336490

`gcd(A056206(n), A067399(n+7))`
-/

namespace A094404.P11698792106939336490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056206 n) (A067399 (n + 7))

end

end A094404.P11698792106939336490

namespace A094404

/-- `gcd(A056206(n), A067399(n+7))` -/
def P11698792106939336490.Spec : Prop :=
  ∀ n, (P11698792106939336490.a n : ℤ) = A094404 (n + 1)

end A094404

/-! ## A094404.P227890131719597967

`A175432(A132733(n*and(1, n)))`
-/

namespace A094404.P227890131719597967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175432 (A132733 (n * Nat.land 1 n)).toNat

end

end A094404.P227890131719597967

namespace A094404

/-- `A175432(A132733(n*and(1, n)))` -/
def P227890131719597967.Spec : Prop :=
  ∀ n, P227890131719597967.a n = A094404 (n + 1)

end A094404

/-! ## A094404.P3011353023775595428

`A175432(and((-1)^n, A132733(n)))`
-/

namespace A094404.P3011353023775595428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175432 (Int.land ((-1) ^ n) (A132733 n)).toNat

end

end A094404.P3011353023775595428

namespace A094404

/-- `A175432(and((-1)^n, A132733(n)))` -/
def P3011353023775595428.Spec : Prop :=
  ∀ n, P3011353023775595428.a n = A094404 (n + 1)

end A094404

/-! ## A094404.P13927217304814528578

`dr(gcd(A007088(n), A348947(n+1)))`
-/

namespace A094404.P13927217304814528578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.gcd (A007088 n) (A348947 (n + 1)) : ℤ)

end

end A094404.P13927217304814528578

namespace A094404

/-- `dr(gcd(A007088(n), A348947(n+1)))` -/
def P13927217304814528578.Spec : Prop :=
  ∀ n, (P13927217304814528578.a n : ℤ) = A094404 (n + 1)

end A094404

/-! ## A094404.P1939887417698565174

`A066743(gcd(n-1, A000961(n+1)))`
-/

namespace A094404.P1939887417698565174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066743 (Int.gcd ((n : ℤ) - 1) (A000961 (n + 1)))

end

end A094404.P1939887417698565174

namespace A094404

/-- `A066743(gcd(n-1, A000961(n+1)))` -/
def P1939887417698565174.Spec : Prop :=
  ∀ n, P1939887417698565174.a n = A094404 (n + 1)

end A094404

/-! ## A094404.P16848332640672235436

`A340084(p?[A000005(A001952(n+1))])`
-/

namespace A094404.P16848332640672235436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001952 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A094404.P16848332640672235436

namespace A094404

/-- `A340084(p?[A000005(A001952(n+1))])` -/
def P16848332640672235436.Spec : Prop :=
  ∀ n, P16848332640672235436.a n = A094404 (n + 1)

end A094404

/-! ## A094404.P10645700024631399518

`gcd(A027023(n), A057431(A071178(n+1)))`
-/

namespace A094404.P10645700024631399518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027023 n) (A057431 (A071178 (n + 1)).toNat)

end

end A094404.P10645700024631399518

namespace A094404

/-- `gcd(A027023(n), A057431(A071178(n+1)))` -/
def P10645700024631399518.Spec : Prop :=
  ∀ n, (P10645700024631399518.a n : ℤ) = A094404 (n + 1)

end A094404

/-! ## A094404.P9750164458897897579

`gcd(A000961(A017233(n)), A232100(n+1))`
-/

namespace A094404.P9750164458897897579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000961 (A017233 n).toNat) (A232100 (n + 1))

end

end A094404.P9750164458897897579

namespace A094404

/-- `gcd(A000961(A017233(n)), A232100(n+1))` -/
def P9750164458897897579.Spec : Prop :=
  ∀ n, (P9750164458897897579.a n : ℤ) = A094404 (n + 1)

end A094404

/-! ## A094404.P2331764392078615222

`gcd(A319627(A064317(n)), A342671(n+1))`
-/

namespace A094404.P2331764392078615222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A319627 (A064317 n).toNat) (A342671 (n + 1))

end

end A094404.P2331764392078615222

namespace A094404

/-- `gcd(A319627(A064317(n)), A342671(n+1))` -/
def P2331764392078615222.Spec : Prop :=
  ∀ n, (P2331764392078615222.a n : ℤ) = A094404 (n + 1)

end A094404

/-! ## A094404.P18059435861635001906

`gcd(A105562(n+1), A243499(A000720(n+1)))`
-/

namespace A094404.P18059435861635001906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105562 (n + 1)) (A243499 (A000720 (n + 1)).toNat)

end

end A094404.P18059435861635001906

namespace A094404

/-- `gcd(A105562(n+1), A243499(A000720(n+1)))` -/
def P18059435861635001906.Spec : Prop :=
  ∀ n, (P18059435861635001906.a n : ℤ) = A094404 (n + 1)

end A094404

/-!
# A094405: a(1) = 1; a(n) = (sum of previous terms) mod n.

The programs for A094405, the canonical program `A094405.P3151932794600885057` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094405 has offset 1).

The definition of A094405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094405.P3151932794600885057

`floor(A066910(n+2)+acot(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A094405

/-- `floor(A066910(n+2)+acot(n))` -/
def P3151932794600885057.Spec : Prop :=
  ∀ n, P3151932794600885057.a n = A094405 (n + 1)

theorem P3151932794600885057.correct : P3151932794600885057.Spec := by
  intro n
  simp only [A094405, Nat.add_sub_cancel]

end A094405

/-!
# A094406: Smallest unhappy number that takes n steps to reach any of the unhappy cycle (4, 16, 37, 58, 89, 145, 42, 20) under iteration of sum of squares of digits map.

The programs for A094406, there is no canonical definition to state claims against.
-/

/-! ## A094406.P13716397963046265561

`A176762(n+7)`
-/

namespace A094406.P13716397963046265561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176762 (n + 7)

end

end A094406.P13716397963046265561

/-!
# A094407: Primes of the form 16n+1.

The programs for A094407, the canonical program `A094407.P7772671639782416397` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094407 has offset 1).

The definition of A094407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9761 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094407.P7772671639782416397

`p?[16*n+1]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A094407

/-- `p?[16*n+1]` -/
def P7772671639782416397.Spec : Prop :=
  ∀ n, (P7772671639782416397.a n : ℤ) = A094407 (n + 1)

theorem P7772671639782416397.correct : P7772671639782416397.Spec := by
  intro n
  simp only [A094407, Nat.add_sub_cancel]

end A094407

/-! ## A094407.P2838342499338622296

`∏{p}[p?[a(n-1)+16], #]` with `a(0)=1`
-/

namespace A094407.P2838342499338622296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 16

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A094407.P2838342499338622296

namespace A094407

/-- `∏{p}[p?[a(n-1)+16], #]` -/
def P2838342499338622296.Spec : Prop :=
  ∀ n, (P2838342499338622296.a n : ℤ) = A094407 (n + 1)

end A094407

/-! ## A094407.P10494676711121202130

`∩[A214588(n+1), A004625(n+1)]`
-/

namespace A094407.P10494676711121202130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094407.P10494676711121202130

namespace A094407

/-- `∩[A214588(n+1), A004625(n+1)]` -/
def P10494676711121202130.Spec : Prop :=
  ∀ n, (P10494676711121202130.a n : ℤ) = A094407 (n + 1)

end A094407

/-! ## A094407.P988915458194418749

`∩[A007519(n+1), A214588(n+1)]`
-/

namespace A094407.P988915458194418749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094407.P988915458194418749

namespace A094407

/-- `∩[A007519(n+1), A214588(n+1)]` -/
def P988915458194418749.Spec : Prop :=
  ∀ n, (P988915458194418749.a n : ℤ) = A094407 (n + 1)

end A094407

/-! ## A094407.P9267054641383594139

`∩[A214588(n+1), A263011(n+1)]`
-/

namespace A094407.P9267054641383594139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094407.P9267054641383594139

namespace A094407

/-- `∩[A214588(n+1), A263011(n+1)]` -/
def P9267054641383594139.Spec : Prop :=
  ∀ n, (P9267054641383594139.a n : ℤ) = A094407 (n + 1)

end A094407

/-! ## A094407.P11042457948042029340

`∩[A332227(n+1), A214588(n+1)]`
-/

namespace A094407.P11042457948042029340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094407.P11042457948042029340

namespace A094407

/-- `∩[A332227(n+1), A214588(n+1)]` -/
def P11042457948042029340.Spec : Prop :=
  ∀ n, (P11042457948042029340.a n : ℤ) = A094407 (n + 1)

end A094407

/-! ## A094407.P10101017539427671121

`A158057(A155942(n+1))`
-/

namespace A094407.P10101017539427671121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 (A155942 (n + 1)).toNat

end

end A094407.P10101017539427671121

namespace A094407

/-- `A158057(A155942(n+1))` -/
def P10101017539427671121.Spec : Prop :=
  ∀ n, P10101017539427671121.a n = A094407 (n + 1)

end A094407

/-! ## A094407.P8771027641173983734

`∩[A001132(n+1), A158057(n)]`
-/

namespace A094407.P8771027641173983734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094407.P8771027641173983734

namespace A094407

/-- `∩[A001132(n+1), A158057(n)]` -/
def P8771027641173983734.Spec : Prop :=
  ∀ n, (P8771027641173983734.a n : ℤ) = A094407 (n + 1)

end A094407

/-! ## A094407.P5983744474315152876

`∩[A002144(n+1), A158057(n)]`
-/

namespace A094407.P5983744474315152876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094407.P5983744474315152876

namespace A094407

/-- `∩[A002144(n+1), A158057(n)]` -/
def P5983744474315152876.Spec : Prop :=
  ∀ n, (P5983744474315152876.a n : ℤ) = A094407 (n + 1)

end A094407

/-! ## A094407.P1284836529324309740

`∩[A002313(n+1), A158057(n)]`
-/

namespace A094407.P1284836529324309740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094407.P1284836529324309740

namespace A094407

/-- `∩[A002313(n+1), A158057(n)]` -/
def P1284836529324309740.Spec : Prop :=
  ∀ n, (P1284836529324309740.a n : ℤ) = A094407 (n + 1)

end A094407

/-! ## A094407.P15143738187808316900

`∩[A007519(n+1), A158057(n)]`
-/

namespace A094407.P15143738187808316900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094407.P15143738187808316900

namespace A094407

/-- `∩[A007519(n+1), A158057(n)]` -/
def P15143738187808316900.Spec : Prop :=
  ∀ n, (P15143738187808316900.a n : ℤ) = A094407 (n + 1)

end A094407

/-! ## A094407.P12946934988685189556

`∩[A033200(n+1), A158057(n)]`
-/

namespace A094407.P12946934988685189556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094407.P12946934988685189556

namespace A094407

/-- `∩[A033200(n+1), A158057(n)]` -/
def P12946934988685189556.Spec : Prop :=
  ∀ n, (P12946934988685189556.a n : ℤ) = A094407 (n + 1)

end A094407

/-! ## A094407.P3538844920333234766

`∩[A033203(n+1), A158057(n)]`
-/

namespace A094407.P3538844920333234766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094407.P3538844920333234766

namespace A094407

/-- `∩[A033203(n+1), A158057(n)]` -/
def P3538844920333234766.Spec : Prop :=
  ∀ n, (P3538844920333234766.a n : ℤ) = A094407 (n + 1)

end A094407

/-! ## A094407.P9565490080375930384

`∩[A038873(n+1), A158057(n)]`
-/

namespace A094407.P9565490080375930384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094407.P9565490080375930384

namespace A094407

/-- `∩[A038873(n+1), A158057(n)]` -/
def P9565490080375930384.Spec : Prop :=
  ∀ n, (P9565490080375930384.a n : ℤ) = A094407 (n + 1)

end A094407

/-! ## A094407.P7151540573325874205

`∩[A045390(n+1), A158057(n)]`
-/

namespace A094407.P7151540573325874205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094407.P7151540573325874205

namespace A094407

/-- `∩[A045390(n+1), A158057(n)]` -/
def P7151540573325874205.Spec : Prop :=
  ∀ n, (P7151540573325874205.a n : ℤ) = A094407 (n + 1)

end A094407

/-! ## A094407.P2940184481306496277

`∩[A049092(n+1), A158057(n)]`
-/

namespace A094407.P2940184481306496277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094407.P2940184481306496277

namespace A094407

/-- `∩[A049092(n+1), A158057(n)]` -/
def P2940184481306496277.Spec : Prop :=
  ∀ n, (P2940184481306496277.a n : ℤ) = A094407 (n + 1)

end A094407

/-! ## A094407.P13649336222141299615

`∩[A055673(n+1), A158057(n)]`
-/

namespace A094407.P13649336222141299615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094407.P13649336222141299615

namespace A094407

/-- `∩[A055673(n+1), A158057(n)]` -/
def P13649336222141299615.Spec : Prop :=
  ∀ n, (P13649336222141299615.a n : ℤ) = A094407 (n + 1)

end A094407

/-! ## A094407.P4813829491480007317

`∩[A079348(n+1), A158057(n)]`
-/

namespace A094407.P4813829491480007317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094407.P4813829491480007317

namespace A094407

/-- `∩[A079348(n+1), A158057(n)]` -/
def P4813829491480007317.Spec : Prop :=
  ∀ n, (P4813829491480007317.a n : ℤ) = A094407 (n + 1)

end A094407

/-! ## A094407.P17999820455782034288

`∩[A089200(n+1), A158057(n)]`
-/

namespace A094407.P17999820455782034288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094407.P17999820455782034288

namespace A094407

/-- `∩[A089200(n+1), A158057(n)]` -/
def P17999820455782034288.Spec : Prop :=
  ∀ n, (P17999820455782034288.a n : ℤ) = A094407 (n + 1)

end A094407

/-! ## A094407.P15795681835759304588

`∩[A095283(n+1), A158057(n)]`
-/

namespace A094407.P15795681835759304588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094407.P15795681835759304588

namespace A094407

/-- `∩[A095283(n+1), A158057(n)]` -/
def P15795681835759304588.Spec : Prop :=
  ∀ n, (P15795681835759304588.a n : ℤ) = A094407 (n + 1)

end A094407

/-!
# A094408: a(n) = Sum_{k = 0..n} 3^k*A085707(n,k).

The programs for A094408, there is no canonical definition to state claims against.
-/

/-! ## A094408.P4888232481396440735

`A322335(A000108(n))+A177385(n)`
-/

namespace A094408.P4888232481396440735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322335 (A000108 n).toNat + A177385 n

end

end A094408.P4888232481396440735

/-!
# A094411: Composite numbers k that divide both Fibonacci(k+1) and Fibonacci(k) + 1.

The programs for A094411, there is no canonical definition to state claims against.
-/

/-! ## A094411.P9657483144024009776

`∩[A005845(n+1), A069107(n+1)]`
-/

namespace A094411.P9657483144024009776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094411.P9657483144024009776

/-! ## A094411.P5766699063897154702

`∩[A069107(n+1), A337625(n+1)]`
-/

namespace A094411.P5766699063897154702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094411.P5766699063897154702

/-! ## A094411.P13683248149405393830

`∩[A005845(n+1), A182504(n+1)]`
-/

namespace A094411.P13683248149405393830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094411.P13683248149405393830

/-! ## A094411.P2210949558254017500

`∩[A182504(n+1), A337625(n+1)]`
-/

namespace A094411.P2210949558254017500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094411.P2210949558254017500

/-! ## A094411.P7532412972082675336

`∩[A069107(n+1), A337627(n+1)]`
-/

namespace A094411.P7532412972082675336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094411.P7532412972082675336

/-! ## A094411.P5790962976200356350

`∩[A069107(n+1), A335670(n+1)]`
-/

namespace A094411.P5790962976200356350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094411.P5790962976200356350

/-! ## A094411.P4032233654757603013

`∩[A094395(n+1), A337625(n+1)]`
-/

namespace A094411.P4032233654757603013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094411.P4032233654757603013

/-! ## A094411.P15661991281528550485

`∩[A005845(n+1), A094395(n+1)]`
-/

namespace A094411.P15661991281528550485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094411.P15661991281528550485

/-! ## A094411.P4670298430915936279

`∩[A069107(n+1), A094395(n+1)]`
-/

namespace A094411.P4670298430915936279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094411.P4670298430915936279

/-! ## A094411.P17509664400231674902

`∩[A094395(n+1), A182504(n+1)]`
-/

namespace A094411.P17509664400231674902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094411.P17509664400231674902

/-!
# A094412: Numbers k that divide Fibonacci(k+1) but do not divide Fibonacci(k) + 1.

The programs for A094412, there is no canonical definition to state claims against.
-/

/-! ## A094412.P9754304393761020540

`A069107(∑[A014963(A131121(n+1))])`
-/

namespace A094412.P9754304393761020540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A131121 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069107 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A094412.P9754304393761020540

/-! ## A094412.P6525511741296083456

`A069107(gcd(A002183(n+1), A146074(3*n+1)))`
-/

namespace A094412.P6525511741296083456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069107 (Int.gcd (A002183 (n + 1)) (A146074 (3 * n + 1)))

end

end A094412.P6525511741296083456

/-! ## A094412.P6789027686449161659

`A069107(eq[A055265(n+1), A255734(n+1)]+1)`
-/

namespace A094412.P6789027686449161659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069107 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A094412.P6789027686449161659

/-! ## A094412.P10238488504642486507

`A069107(lt[A159847(3*n+1), A126710(n+3)])`
-/

namespace A094412.P10238488504642486507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159847 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126710 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069107 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A094412.P10238488504642486507

/-!
# A094414: Triangle T read by rows: dot product * .

The programs for A094414, there is no canonical definition to state claims against.
-/

/-! ## A094414.P7599999752022155664

`A006002(∑[A010054(n)])-A094415(n)`
-/

namespace A094414.P7599999752022155664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A094415 n

end

end A094414.P7599999752022155664

/-! ## A094414.P10643853358622066579

`A006002(A002024(n+1))-A094415(n)`
-/

namespace A094414.P10643853358622066579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 (A002024 (n + 1)).toNat - A094415 n

end

end A094414.P10643853358622066579

/-! ## A094414.P8751353801756364100

`A006002(A003056(n)+1)-A094415(n)`
-/

namespace A094414.P8751353801756364100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 (A003056 n + 1).toNat - A094415 n

end

end A094414.P8751353801756364100

/-! ## A094414.P171459187621908935

`A156207(A001292(n+1))`
-/

namespace A094414.P171459187621908935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156207 (A001292 (n + 1)).toNat

end

end A094414.P171459187621908935

/-!
# A094415: Triangle T read by rows: dot product * .

The programs for A094415, there is no canonical definition to state claims against.
-/

/-! ## A094415.P919077639788458102

`A006002(A002024(n+1))-A094414(n)`
-/

namespace A094415.P919077639788458102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 (A002024 (n + 1)).toNat - A094414 n

end

end A094415.P919077639788458102

/-! ## A094415.P15410111508221951799

`A006002(A003056(n)+1)-A094414(n)`
-/

namespace A094415.P15410111508221951799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 (A003056 n + 1).toNat - A094414 n

end

end A094415.P15410111508221951799

/-! ## A094415.P17330055823832889720

`A384125(n+1)+A212013(n+1)`
-/

namespace A094415.P17330055823832889720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384125 (n + 1) + A212013 (n + 1)

end

end A094415.P17330055823832889720

/-! ## A094415.P1465020818087934332

`A006002(A002024(n+1))-A156207(A001292(n+1))`
-/

namespace A094415.P1465020818087934332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 (A002024 (n + 1)).toNat - A156207 (A001292 (n + 1)).toNat

end

end A094415.P1465020818087934332

/-!
# A094416: Array read by antidiagonals: generalized ordered Bell numbers Bo(r,n).

The programs for A094416, there is no canonical definition to state claims against.
-/

/-! ## A094416.P15412050460219600090

`A344499(A140978(n+1)-n)`
-/

namespace A094416.P15412050460219600090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344499 (A140978 (n + 1) - (n : ℤ)).toNat

end

end A094416.P15412050460219600090

/-! ## A094416.P6507527259370934920

`A344499(A003057(n+2)²-n)`
-/

namespace A094416.P6507527259370934920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344499 (A003057 (n + 2) ^ 2 - (n : ℤ)).toNat

end

end A094416.P6507527259370934920

/-!
# A094417: Generalized ordered Bell numbers Bo(4,n).

The programs for A094417, there is no canonical definition to state claims against.
-/

/-! ## A094417.P12629192152273229855

`A036453(n+1)²*A050353(n)`
-/

namespace A094417.P12629192152273229855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) ^ 2 * A050353 n

end

end A094417.P12629192152273229855

/-! ## A094417.P17308488312992981419

`(A057427(n)+1)²*A050353(n)`
-/

namespace A094417.P17308488312992981419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) ^ 2 * A050353 n

end

end A094417.P17308488312992981419

/-! ## A094417.P15401855383515123605

`(A178334(n)+1)²*A050353(n)`
-/

namespace A094417.P15401855383515123605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178334 n + 1) ^ 2 * A050353 n

end

end A094417.P15401855383515123605

/-! ## A094417.P13544065014995303270

`(2-A000007(n))²*A050353(n)`
-/

namespace A094417.P13544065014995303270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) ^ 2 * A050353 n

end

end A094417.P13544065014995303270

/-! ## A094417.P13764304296167544479

`A036453(n+1)²*ceil(A201365(n)/5)`
-/

namespace A094417.P13764304296167544479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) ^ 2 * ⌈(A201365 n : ℚ) / 5⌉

end

end A094417.P13764304296167544479

/-! ## A094417.P11326437422607154391

`A008579(A178334(n))*A050353(n)`
-/

namespace A094417.P11326437422607154391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 (A178334 n).toNat * A050353 n

end

end A094417.P11326437422607154391

/-! ## A094417.P8193095477326936001

`A020639(A004277(n))²*A050353(n)`
-/

namespace A094417.P8193095477326936001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat ^ 2 * A050353 n

end

end A094417.P8193095477326936001

/-! ## A094417.P17882447951055697985

`A000007(n)+A201365(n)-A050353(n)`
-/

namespace A094417.P17882447951055697985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A201365 n - A050353 n)

end

end A094417.P17882447951055697985

/-!
# A094418: Generalized ordered Bell numbers Bo(5,n).

The programs for A094418, there is no canonical definition to state claims against.
-/

/-! ## A094418.P442489940585070948

`A344499(A167499(n+4))`
-/

namespace A094418.P442489940585070948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344499 (A167499 (n + 4)).toNat

end

end A094418.P442489940585070948

/-!
# A094419: Generalized ordered Bell numbers Bo(6,n).

The programs for A094419, there is no canonical definition to state claims against.
-/

/-! ## A094419.P17762394729538120723

`A094416(A052905(n+2)%A052268(n+1))`
-/

namespace A094419.P17762394729538120723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094416 (Int.tmod (A052905 (n + 2)) (A052268 (n + 1))).toNat

end

end A094419.P17762394729538120723

/-!
# A094420: Generalized ordered Bell numbers Bo(n,n).

The programs for A094420, there is no canonical definition to state claims against.
-/

/-! ## A094420.P14031283520255109432

`A028310(n)*A321189(n)`
-/

namespace A094420.P14031283520255109432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A321189 n

end

end A094420.P14031283520255109432

/-! ## A094420.P17730312600282218234

`A000007(n)+n*A321189(n)`
-/

namespace A094420.P17730312600282218234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A321189 n

end

end A094420.P17730312600282218234

/-! ## A094420.P3346659986074408771

`(1-A057427(n)+n)*A321189(n)`
-/

namespace A094420.P3346659986074408771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057427 n + (n : ℤ)) * A321189 n

end

end A094420.P3346659986074408771

/-! ## A094420.P922790986033331863

`or(n, A000108(n)%2)*A321189(n)`
-/

namespace A094420.P922790986033331863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (Int.tmod (A000108 n) 2) * A321189 n

end

end A094420.P922790986033331863

/-! ## A094420.P14791731379760652185

`A007318(A000124(n))*A321189(n)`
-/

namespace A094420.P14791731379760652185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat * A321189 n

end

end A094420.P14791731379760652185

/-!
# A094421: a(n) = n * (6*n^2 + 6*n + 1).

The programs for A094421, the canonical program `A094421.P7734776028087042325` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094421 has offset 1).

The definition of A094421 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(6*(n+1)²+6*(n+1)+1)` (program `A094421.P7734776028087042325`, by `A094421.P7734776028087042325.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094421.P7734776028087042325

`(n+1)*(6*(n+1)²+6*(n+1)+1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A094421

/-- `(n+1)*(6*(n+1)²+6*(n+1)+1)` -/
def P7734776028087042325.Spec : Prop :=
  ∀ n, (P7734776028087042325.a n : ℤ) = A094421 (n + 1)

theorem P7734776028087042325.correct : P7734776028087042325.Spec := by
  intro n
  simp only [A094421, Nat.add_sub_cancel]

end A094421

/-! ## A094421.P3444752631697404990

`∑[A298037(2*n+1)]`
-/

namespace A094421.P3444752631697404990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298037 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094421.P3444752631697404990

namespace A094421

/-- `∑[A298037(2*n+1)]` -/
def P3444752631697404990.Spec : Prop :=
  ∀ n, P3444752631697404990.a n = A094421 (n + 1)

end A094421

/-! ## A094421.P4665351403119201015

`∑[ceil(A016969(n)²/2)]`
-/

namespace A094421.P4665351403119201015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016969 n ^ 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094421.P4665351403119201015

namespace A094421

/-- `∑[ceil(A016969(n)²/2)]` -/
def P4665351403119201015.Spec : Prop :=
  ∀ n, P4665351403119201015.a n = A094421 (n + 1)

end A094421

/-! ## A094421.P1906283548266869565

`∑[2*A304163(n+1)-1]`
-/

namespace A094421.P1906283548266869565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A304163 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094421.P1906283548266869565

namespace A094421

/-- `∑[2*A304163(n+1)-1]` -/
def P1906283548266869565.Spec : Prop :=
  ∀ n, P1906283548266869565.a n = A094421 (n + 1)

end A094421

/-! ## A094421.P15060506199651099482

`4*A085789(n+1)+n+1`
-/

namespace A094421.P15060506199651099482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A085789 (n + 1) + (n + 1 : ℤ)

end

end A094421.P15060506199651099482

namespace A094421

/-- `4*A085789(n+1)+n+1` -/
def P15060506199651099482.Spec : Prop :=
  ∀ n, P15060506199651099482.a n = A094421 (n + 1)

end A094421

/-! ## A094421.P14933209650559667102

`∑[3*(n+1)*A016957(n)+1]`
-/

namespace A094421.P14933209650559667102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) * A016957 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094421.P14933209650559667102

namespace A094421

/-- `∑[3*(n+1)*A016957(n)+1]` -/
def P14933209650559667102.Spec : Prop :=
  ∀ n, P14933209650559667102.a n = A094421 (n + 1)

end A094421

/-! ## A094421.P1204233834403551683

`(n+2)*A033581(n+1)+n+1`
-/

namespace A094421.P1204233834403551683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A033581 (n + 1) + (n + 1 : ℤ)

end

end A094421.P1204233834403551683

namespace A094421

/-- `(n+2)*A033581(n+1)+n+1` -/
def P1204233834403551683.Spec : Prop :=
  ∀ n, P1204233834403551683.a n = A094421 (n + 1)

end A094421

/-! ## A094421.P9861267763803481861

`A228888(n+1)+A085789(n+1)`
-/

namespace A094421.P9861267763803481861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228888 (n + 1) + A085789 (n + 1)

end

end A094421.P9861267763803481861

namespace A094421

/-- `A228888(n+1)+A085789(n+1)` -/
def P9861267763803481861.Spec : Prop :=
  ∀ n, P9861267763803481861.a n = A094421 (n + 1)

end A094421

/-! ## A094421.P16155837218861377604

`∑[A081589(n+1)]`
-/

namespace A094421.P16155837218861377604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094421.P16155837218861377604

namespace A094421

/-- `∑[A081589(n+1)]` -/
def P16155837218861377604.Spec : Prop :=
  ∀ n, P16155837218861377604.a n = A094421 (n + 1)

end A094421

/-! ## A094421.P2090148010708459561

`∑[A153792(n+1)+1]`
-/

namespace A094421.P2090148010708459561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153792 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094421.P2090148010708459561

namespace A094421

/-- `∑[A153792(n+1)+1]` -/
def P2090148010708459561.Spec : Prop :=
  ∀ n, P2090148010708459561.a n = A094421 (n + 1)

end A094421

/-! ## A094421.P15768863502859205654

`2*A249354(n+1)-(n+1)`
-/

namespace A094421.P15768863502859205654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A249354 (n + 1) - (n + 1 : ℤ)

end

end A094421.P15768863502859205654

namespace A094421

/-- `2*A249354(n+1)-(n+1)` -/
def P15768863502859205654.Spec : Prop :=
  ∀ n, P15768863502859205654.a n = A094421 (n + 1)

end A094421

/-! ## A094421.P2650686842453515126

`3*A181617(n+2)+n+1`
-/

namespace A094421.P2650686842453515126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A181617 (n + 2) + (n + 1 : ℤ)

end

end A094421.P2650686842453515126

namespace A094421

/-- `3*A181617(n+2)+n+1` -/
def P2650686842453515126.Spec : Prop :=
  ∀ n, P2650686842453515126.a n = A094421 (n + 1)

end A094421

/-! ## A094421.P14254476387952652982

`n+1+12*A002411(n+1)`
-/

namespace A094421.P14254476387952652982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + 12 * A002411 (n + 1)

end

end A094421.P14254476387952652982

namespace A094421

/-- `n+1+12*A002411(n+1)` -/
def P14254476387952652982.Spec : Prop :=
  ∀ n, P14254476387952652982.a n = A094421 (n + 1)

end A094421

/-! ## A094421.P2611557116230766337

`A049453(n+1)+2*A117642(n+1)`
-/

namespace A094421.P2611557116230766337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049453 (n + 1) + 2 * A117642 (n + 1)

end

end A094421.P2611557116230766337

namespace A094421

/-- `A049453(n+1)+2*A117642(n+1)` -/
def P2611557116230766337.Spec : Prop :=
  ∀ n, P2611557116230766337.a n = A094421 (n + 1)

end A094421

/-! ## A094421.P8692110323190791084

`A316224(n+1)-2*A000578(n+1)`
-/

namespace A094421.P8692110323190791084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316224 (n + 1) - 2 * A000578 (n + 1)

end

end A094421.P8692110323190791084

namespace A094421

/-- `A316224(n+1)-2*A000578(n+1)` -/
def P8692110323190791084.Spec : Prop :=
  ∀ n, P8692110323190791084.a n = A094421 (n + 1)

end A094421

/-! ## A094421.P7621650067110069495

`A000217(2*n+1)+2*A067389(n+1)`
-/

namespace A094421.P7621650067110069495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n + 1) + 2 * A067389 (n + 1)

end

end A094421.P7621650067110069495

namespace A094421

/-- `A000217(2*n+1)+2*A067389(n+1)` -/
def P7621650067110069495.Spec : Prop :=
  ∀ n, P7621650067110069495.a n = A094421 (n + 1)

end A094421

/-! ## A094421.P15454460781388293428

`A005563(n+1)+A002378(n+1)*(6*n+5)`
-/

namespace A094421.P15454460781388293428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 1) + A002378 (n + 1) * (6 * n + 5 : ℤ)

end

end A094421.P15454460781388293428

namespace A094421

/-- `A005563(n+1)+A002378(n+1)*(6*n+5)` -/
def P15454460781388293428.Spec : Prop :=
  ∀ n, P15454460781388293428.a n = A094421 (n + 1)

end A094421

/-! ## A094421.P9642810965033775105

`Δ[A000096(n)*A003215(n)]-A003215(n)`
-/

namespace A094421.P9642810965033775105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n * A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A003215 n

end

end A094421.P9642810965033775105

namespace A094421

/-- `Δ[A000096(n)*A003215(n)]-A003215(n)` -/
def P9642810965033775105.Spec : Prop :=
  ∀ n, P9642810965033775105.a n = A094421 (n + 1)

end A094421

/-! ## A094421.P4598119681041430771

`A000217(n+1)*A017533(n+1)-A000217(n)`
-/

namespace A094421.P4598119681041430771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A017533 (n + 1) - A000217 n

end

end A094421.P4598119681041430771

namespace A094421

/-- `A000217(n+1)*A017533(n+1)-A000217(n)` -/
def P4598119681041430771.Spec : Prop :=
  ∀ n, P4598119681041430771.a n = A094421 (n + 1)

end A094421

/-! ## A094421.P15649592997500519130

`A001105(n+1)+A117642(n+1)+A027903(n+1)`
-/

namespace A094421.P15649592997500519130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (n + 1) + (A117642 (n + 1) + A027903 (n + 1))

end

end A094421.P15649592997500519130

namespace A094421

/-- `A001105(n+1)+A117642(n+1)+A027903(n+1)` -/
def P15649592997500519130.Spec : Prop :=
  ∀ n, P15649592997500519130.a n = A094421 (n + 1)

end A094421

/-!
# A094422: Antidiagonal sums of array A094416.

The programs for A094422, there is no canonical definition to state claims against.
-/

/-! ## A094422.P3771442454150409850

`A372346(n+2)-1`
-/

namespace A094422.P3771442454150409850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372346 (n + 2) - 1

end

end A094422.P3771442454150409850

/-! ## A094422.P14998768705371788565

`∑[abs(Δ[A372346(n+1)])]`
-/

namespace A094422.P14998768705371788565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372346 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094422.P14998768705371788565

/-! ## A094422.P5744724811842074047

`record[Δ[A372346(A067815(2*(n+1)))]]`
-/

namespace A094422.P5744724811842074047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372346 (A067815 (2 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094422.P5744724811842074047

/-!
# A094423: a(n) = A045873(n)^2.

The programs for A094423, the canonical program `A094423.P2012346371814557566` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094423 has offset 1).

The definition of A094423 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094423.P2012346371814557566

`A045873(n+1)²`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A094423

/-- `A045873(n+1)²` -/
def P2012346371814557566.Spec : Prop :=
  ∀ n, P2012346371814557566.a n = A094423 (n + 1)

theorem P2012346371814557566.correct : P2012346371814557566.Spec := by
  intro n
  simp only [A094423, Nat.add_sub_cancel]

end A094423

/-! ## A094423.P12599720976236860056

`A250102(n+1)/16`
-/

namespace A094423.P12599720976236860056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250102 (n + 1) : ℚ) / 16

end

end A094423.P12599720976236860056

namespace A094423

/-- `A250102(n+1)/16` -/
def P12599720976236860056.Spec : Prop :=
  ∀ n, P12599720976236860056.a n = (A094423 (n + 1) : ℚ)

end A094423

/-! ## A094423.P16769189703927711579

`∏[2-5/a(n-1)]²` with `a(0)=1, a(1)=2`
-/

namespace A094423.P16769189703927711579
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 - 5 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A094423.P16769189703927711579

namespace A094423

/-- `∏[2-5/a(n-1)]²` -/
def P16769189703927711579.Spec : Prop :=
  ∀ n, P16769189703927711579.a n = (A094423 (n + 1) : ℚ)

end A094423

/-! ## A094423.P11233443411292513625

`∑[A006495(n)]²`
-/

namespace A094423.P11233443411292513625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A094423.P11233443411292513625

namespace A094423

/-- `∑[A006495(n)]²` -/
def P11233443411292513625.Spec : Prop :=
  ∀ n, P11233443411292513625.a n = A094423 (n + 1)

end A094423

/-! ## A094423.P16322481274585687760

`∑[-Δ[A045873(n)]]²`
-/

namespace A094423.P16322481274585687760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045873 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A094423.P16322481274585687760

namespace A094423

/-- `∑[-Δ[A045873(n)]]²` -/
def P16322481274585687760.Spec : Prop :=
  ∀ n, P16322481274585687760.a n = A094423 (n + 1)

end A094423

/-! ## A094423.P5189044972379647884

`(A006496(n+1)/2)²`
-/

namespace A094423.P5189044972379647884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A006496 (n + 1) : ℚ) / 2) ^ 2

end

end A094423.P5189044972379647884

namespace A094423

/-- `(A006496(n+1)/2)²` -/
def P5189044972379647884.Spec : Prop :=
  ∀ n, P5189044972379647884.a n = (A094423 (n + 1) : ℚ)

end A094423

/-! ## A094423.P11494791435268651800

`(A045873(n)-A116483(n))²`
-/

namespace A094423.P11494791435268651800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A045873 n - A116483 n) ^ 2

end

end A094423.P11494791435268651800

namespace A094423

/-- `(A045873(n)-A116483(n))²` -/
def P11494791435268651800.Spec : Prop :=
  ∀ n, P11494791435268651800.a n = A094423 (n + 1)

end A094423

/-! ## A094423.P16270474221058225493

`((A116483(n)+A006495(n))/2)²`
-/

namespace A094423.P16270474221058225493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A116483 n + A006495 n : ℚ) / 2) ^ 2

end

end A094423.P16270474221058225493

namespace A094423

/-- `((A116483(n)+A006495(n))/2)²` -/
def P16270474221058225493.Spec : Prop :=
  ∀ n, P16270474221058225493.a n = (A094423 (n + 1) : ℚ)

end A094423

/-! ## A094423.P17709805608443267375

`(A006496(n)/2-A116483(n))²`
-/

namespace A094423.P17709805608443267375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A006496 n : ℚ) / 2 - (A116483 n : ℚ)) ^ 2

end

end A094423.P17709805608443267375

namespace A094423

/-- `(A006496(n)/2-A116483(n))²` -/
def P17709805608443267375.Spec : Prop :=
  ∀ n, P17709805608443267375.a n = (A094423 (n + 1) : ℚ)

end A094423

/-! ## A094423.P1698980018088541114

`∑[A006495(n)]*A045873(n+1)`
-/

namespace A094423.P1698980018088541114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A045873 (n + 1)

end

end A094423.P1698980018088541114

namespace A094423

/-- `∑[A006495(n)]*A045873(n+1)` -/
def P1698980018088541114.Spec : Prop :=
  ∀ n, P1698980018088541114.a n = A094423 (n + 1)

end A094423

/-! ## A094423.P6757417101017114977

`∑[A006495(n)]^(A007051(n)%3)`
-/

namespace A094423.P6757417101017114977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006495 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (Int.tmod (A007051 n) 3 : ℤ)

end

end A094423.P6757417101017114977

namespace A094423

/-- `∑[A006495(n)]^(A007051(n)%3)` -/
def P6757417101017114977.Spec : Prop :=
  ∀ n, P6757417101017114977.a n = (A094423 (n + 1) : ℚ)

end A094423

/-! ## A094423.P4659806757094299898

`∑[A006495(n)]^A020639(A001223(n+1))`
-/

namespace A094423.P4659806757094299898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006495 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A020639 (A001223 (n + 1)).toNat : ℤ)

end

end A094423.P4659806757094299898

namespace A094423

/-- `∑[A006495(n)]^A020639(A001223(n+1))` -/
def P4659806757094299898.Spec : Prop :=
  ∀ n, P4659806757094299898.a n = (A094423 (n + 1) : ℚ)

end A094423

/-! ## A094423.P6944725115440275515

`∑[A006495(n)]^A020639(A000010(n+2))`
-/

namespace A094423.P6944725115440275515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006495 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A020639 (A000010 (n + 2)).toNat : ℤ)

end

end A094423.P6944725115440275515

namespace A094423

/-- `∑[A006495(n)]^A020639(A000010(n+2))` -/
def P6944725115440275515.Spec : Prop :=
  ∀ n, P6944725115440275515.a n = (A094423 (n + 1) : ℚ)

end A094423

/-! ## A094423.P5525782630768919518

`A010684(2*n)*A045873(n+1)*A045873(n+1)`
-/

namespace A094423.P5525782630768919518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (2 * n) * A045873 (n + 1) * A045873 (n + 1)

end

end A094423.P5525782630768919518

namespace A094423

/-- `A010684(2*n)*A045873(n+1)*A045873(n+1)` -/
def P5525782630768919518.Spec : Prop :=
  ∀ n, P5525782630768919518.a n = A094423 (n + 1)

end A094423

/-!
# A094424: Array read by antidiagonals: Solutions to Schmidt's Problem.

The programs for A094424, there is no canonical definition to state claims against.
-/

/-! ## A094424.P4035460771781409175

`A265241(A238794(n)+A004885(n+1))`
-/

namespace A094424.P4035460771781409175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265241 (A238794 n + A004885 (n + 1)).toNat

end

end A094424.P4035460771781409175

/-! ## A094424.P5832433456877282671

`and(A062545(A290132(n+1)), A265241(n+1))`
-/

namespace A094424.P5832433456877282671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062545 (A290132 (n + 1)).toNat) (A265241 (n + 1))

end

end A094424.P5832433456877282671

/-!
# A094426: Terms of A094302 without repetition.

The programs for A094426, there is no canonical definition to state claims against.
-/

/-! ## A094426.P10540696144083840063

`A094302(lt[A094299(n), (2*n)²])`
-/

namespace A094426.P10540696144083840063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094299 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094302 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A094426.P10540696144083840063

/-! ## A094426.P17745991051045992410

`A355143(A057602(n+1))`
-/

namespace A094426.P17745991051045992410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355143 (A057602 (n + 1)).toNat

end

end A094426.P17745991051045992410

/-! ## A094426.P6447012615207683942

`A094302(eq[0, A263395(n)])`
-/

namespace A094426.P6447012615207683942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094426.P6447012615207683942

/-! ## A094426.P4433080602107746530

`A094302(lt[A263395(n), 1])`
-/

namespace A094426.P4433080602107746530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263395 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094302 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A094426.P4433080602107746530

/-!
# A094429: Given the 3 X 3 matrix M = [0 1 0 / 0 0 1 / 7 -14 7], a(n) = (-) rightmost term of M^n * [1 1 1].

The programs for A094429, the canonical program `A094429.P17963008024076301721` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094429 has offset 1).

The definition of A094429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094429.P17963008024076301721

`7*a(n-1)-14*a(n-2)+7*a(n-3)` with `a(0)=0, a(1)=7, a(2)=42`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A094429

/-- `7*a(n-1)-14*a(n-2)+7*a(n-3)` -/
def P17963008024076301721.Spec : Prop :=
  ∀ n, P17963008024076301721.a n = A094429 (n + 1)

theorem P17963008024076301721.correct : P17963008024076301721.Spec := by
  intro n
  simp only [A094429, Nat.add_sub_cancel]

end A094429

/-! ## A094429.P6452121636002204430

`∑[A217274(n+1)]-1`
-/

namespace A094429.P6452121636002204430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A094429.P6452121636002204430

namespace A094429

/-- `∑[A217274(n+1)]-1` -/
def P6452121636002204430.Spec : Prop :=
  ∀ n, P6452121636002204430.a n = A094429 (n + 1)

end A094429

/-! ## A094429.P13828344109811944504

`A217274(n+1)+A217274(n+1)-A215143(n+1)`
-/

namespace A094429.P13828344109811944504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217274 (n + 1) + (A217274 (n + 1) - A215143 (n + 1))

end

end A094429.P13828344109811944504

namespace A094429

/-- `A217274(n+1)+A217274(n+1)-A215143(n+1)` -/
def P13828344109811944504.Spec : Prop :=
  ∀ n, P13828344109811944504.a n = A094429 (n + 1)

end A094429

/-! ## A094429.P8845645883316617568

`Δ[A215510(n)]-A215494(n+1)`
-/

namespace A094429.P8845645883316617568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A215494 (n + 1)

end

end A094429.P8845645883316617568

namespace A094429

/-- `Δ[A215510(n)]-A215494(n+1)` -/
def P8845645883316617568.Spec : Prop :=
  ∀ n, P8845645883316617568.a n = A094429 (n + 1)

end A094429

/-! ## A094429.P14356769866169102276

`A215143(n+2)-A215494(n+1)`
-/

namespace A094429.P14356769866169102276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215143 (n + 2) - A215494 (n + 1)

end

end A094429.P14356769866169102276

namespace A094429

/-- `A215143(n+2)-A215494(n+1)` -/
def P14356769866169102276.Spec : Prop :=
  ∀ n, P14356769866169102276.a n = A094429 (n + 1)

end A094429

/-! ## A094429.P17637899559825644905

`A217274(n+2)-A215143(n+2)`
-/

namespace A094429.P17637899559825644905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217274 (n + 2) - A215143 (n + 2)

end

end A094429.P17637899559825644905

namespace A094429

/-- `A217274(n+2)-A215143(n+2)` -/
def P17637899559825644905.Spec : Prop :=
  ∀ n, P17637899559825644905.a n = A094429 (n + 1)

end A094429

/-! ## A094429.P9747934289269835997

`A215510(n+1)-(A215510(n)+A215494(n+1))`
-/

namespace A094429.P9747934289269835997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215510 (n + 1) - (A215510 n + A215494 (n + 1))

end

end A094429.P9747934289269835997

namespace A094429

/-- `A215510(n+1)-(A215510(n)+A215494(n+1))` -/
def P9747934289269835997.Spec : Prop :=
  ∀ n, P9747934289269835997.a n = A094429 (n + 1)

end A094429

/-! ## A094429.P3146230688880165343

`∑[A217274(n+1)%A217321(n+9)]`
-/

namespace A094429.P3146230688880165343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217274 (n + 1)) (A217321 (n + 9))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094429.P3146230688880165343

namespace A094429

/-- `∑[A217274(n+1)%A217321(n+9)]` -/
def P3146230688880165343.Spec : Prop :=
  ∀ n, P3146230688880165343.a n = A094429 (n + 1)

end A094429

/-! ## A094429.P1392447610365358025

`∑[A217274(n+1)%A217322(n)]`
-/

namespace A094429.P1392447610365358025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217274 (n + 1)) (A217322 (n + 10))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094429.P1392447610365358025

namespace A094429

/-- `∑[A217274(n+1)%A217322(n)]` -/
def P1392447610365358025.Spec : Prop :=
  ∀ n, P1392447610365358025.a n = A094429 (n + 1)

end A094429

/-!
# A094430: a(n) is the rightmost term of M^n * [1 0 0], where M is the 3 X 3 matrix [0 1 0 / 0 0 1 / 7 -14 7].

The programs for A094430, the canonical program `A094430.P13102228262642934732` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094430 has offset 1).

The definition of A094430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094430.P13102228262642934732

`7*a(n-1)-14*a(n-2)+7*a(n-3)` with `a(0)=7, a(1)=49, a(2)=245`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A094430

/-- `7*a(n-1)-14*a(n-2)+7*a(n-3)` -/
def P13102228262642934732.Spec : Prop :=
  ∀ n, P13102228262642934732.a n = A094430 (n + 1)

theorem P13102228262642934732.correct : P13102228262642934732.Spec := by
  intro n
  simp only [A094430, Nat.add_sub_cancel]

end A094430

/-! ## A094430.P15296845057785007402

`∑[A094429(n+2)]`
-/

namespace A094430.P15296845057785007402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094429 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094430.P15296845057785007402

namespace A094430

/-- `∑[A094429(n+2)]` -/
def P15296845057785007402.Spec : Prop :=
  ∀ n, P15296845057785007402.a n = A094430 (n + 1)

end A094430

/-! ## A094430.P7910959429378340551

`7*A217274(n+1)`
-/

namespace A094430.P7910959429378340551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A217274 (n + 1)

end

end A094430.P7910959429378340551

namespace A094430

/-- `7*A217274(n+1)` -/
def P7910959429378340551.Spec : Prop :=
  ∀ n, P7910959429378340551.a n = A094430 (n + 1)

end A094430

/-! ## A094430.P6606772477061877402

`∑[∑[A217274(n+2)]]`
-/

namespace A094430.P6606772477061877402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217274 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094430.P6606772477061877402

namespace A094430

/-- `∑[∑[A217274(n+2)]]` -/
def P6606772477061877402.Spec : Prop :=
  ∀ n, P6606772477061877402.a n = A094430 (n + 1)

end A094430

/-! ## A094430.P7175698373830533003

`∑[7*Δ[A217274(n)]]`
-/

namespace A094430.P7175698373830533003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217274 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094430.P7175698373830533003

namespace A094430

/-- `∑[7*Δ[A217274(n)]]` -/
def P7175698373830533003.Spec : Prop :=
  ∀ n, P7175698373830533003.a n = A094430 (n + 1)

end A094430

/-! ## A094430.P4320460343917278769

`A094429(n+2)+A094429(n+2)-A215510(n+1)`
-/

namespace A094430.P4320460343917278769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094429 (n + 2) + (A094429 (n + 2) - A215510 (n + 1))

end

end A094430.P4320460343917278769

namespace A094430

/-- `A094429(n+2)+A094429(n+2)-A215510(n+1)` -/
def P4320460343917278769.Spec : Prop :=
  ∀ n, P4320460343917278769.a n = A094430 (n + 1)

end A094430

/-! ## A094430.P4342816124786074672

`A094429(n+3)-A215510(n+2)`
-/

namespace A094430.P4342816124786074672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094429 (n + 3) - A215510 (n + 2)

end

end A094430.P4342816124786074672

namespace A094430

/-- `A094429(n+3)-A215510(n+2)` -/
def P4342816124786074672.Spec : Prop :=
  ∀ n, P4342816124786074672.a n = A094430 (n + 1)

end A094430

/-!
# A094431: a(n) = left term in M^n * [1 0 0], where M = the 3 X 3 matrix [1 -1 0 / -1 4 -3 / 0 -3 3].

The programs for A094431, the canonical program `A094431.P7411796327442222615` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094431 has offset 0).

The definition of A094431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094431.P7411796327442222615

`8*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A094431

/-- `8*a(n-1)-9*a(n-2)` -/
def P7411796327442222615.Spec : Prop :=
  ∀ n, P7411796327442222615.a n = A094431 n

theorem P7411796327442222615.correct : P7411796327442222615.Spec := by
  intro n
  simp only [A094431]

end A094431

/-!
# A094432: a(n) = rightmost term in M^n * [1 0 0]. M = the 3 X 3 stiffness matrix [1 -1 0 / -1 4 -3 / 0 -3 3].

The programs for A094432, the canonical program `A094432.P3534482235275954877` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094432 has offset 1).

The definition of A094432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094432.P3534482235275954877

`8*(a(n-1)-a(n-2))-a(n-2)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A094432

/-- `8*(a(n-1)-a(n-2))-a(n-2)` -/
def P3534482235275954877.Spec : Prop :=
  ∀ n, P3534482235275954877.a n = A094432 (n + 1)

theorem P3534482235275954877.correct : P3534482235275954877.Spec := by
  intro n
  simp only [A094432, Nat.add_sub_cancel]

end A094432

/-! ## A094432.P8755041784368117808

`∑[A297189(2*n)]`
-/

namespace A094432.P8755041784368117808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297189 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094432.P8755041784368117808

namespace A094432

/-- `∑[A297189(2*n)]` -/
def P8755041784368117808.Spec : Prop :=
  ∀ n, P8755041784368117808.a n = A094432 (n + 1)

end A094432

/-! ## A094432.P8478938995623578263

`3*A002536(2*n)`
-/

namespace A094432.P8478938995623578263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002536 (2 * n)

end

end A094432.P8478938995623578263

namespace A094432

/-- `3*A002536(2*n)` -/
def P8478938995623578263.Spec : Prop :=
  ∀ n, P8478938995623578263.a n = A094432 (n + 1)

end A094432

/-! ## A094432.P18098180532288437645

`3*A174988(2*n)/2`
-/

namespace A094432.P18098180532288437645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A174988 (2 * n) : ℚ) / 2

end

end A094432.P18098180532288437645

namespace A094432

/-- `3*A174988(2*n)/2` -/
def P18098180532288437645.Spec : Prop :=
  ∀ n, P18098180532288437645.a n = (A094432 (n + 1) : ℚ)

end A094432

/-! ## A094432.P8404839593691720503

`A297189(n+n)+a(n-1)` with `a(0)=0`
-/

namespace A094432.P8404839593691720503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A297189 (n + n) + a (n - 1)

end

end A094432.P8404839593691720503

namespace A094432

/-- `A297189(n+n)+a(n-1)` -/
def P8404839593691720503.Spec : Prop :=
  ∀ n, P8404839593691720503.a n = A094432 (n + 1)

end A094432

/-! ## A094432.P5922278268569381770

`lcm(3, A002536(A005843(n)))`
-/

namespace A094432.P5922278268569381770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A002536 (A005843 n).toNat)

end

end A094432.P5922278268569381770

namespace A094432

/-- `lcm(3, A002536(A005843(n)))` -/
def P5922278268569381770.Spec : Prop :=
  ∀ n, (P5922278268569381770.a n : ℤ) = A094432 (n + 1)

end A094432

/-! ## A094432.P9249328501170901563

`∑[record[A297189(A014681(n))]]`
-/

namespace A094432.P9249328501170901563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297189 (A014681 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094432.P9249328501170901563

namespace A094432

/-- `∑[record[A297189(A014681(n))]]` -/
def P9249328501170901563.Spec : Prop :=
  ∀ n, P9249328501170901563.a n = A094432 (n + 1)

end A094432

/-!
# A094433: a(n) is the left term in M^n * [1 0 0], M = the 3 X 3 matrix [1 -1 0 / -1 3 -2 / 0 -2 2].

The programs for A094433, the canonical program `A094433.P1130071707216133329` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094433 has offset 0).

The definition of A094433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094433.P1130071707216133329

`6*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A094433

/-- `6*(a(n-1)-a(n-2))` -/
def P1130071707216133329.Spec : Prop :=
  ∀ n, P1130071707216133329.a n = A094433 n

theorem P1130071707216133329.correct : P1130071707216133329.Spec := by
  intro n
  simp only [A094433]

end A094433

/-! ## A094433.P186371700245936662

`A080876(n)*A182522(n)`
-/

namespace A094433.P186371700245936662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080876 n * A182522 n

end

end A094433.P186371700245936662

namespace A094433

/-- `A080876(n)*A182522(n)` -/
def P186371700245936662.Spec : Prop :=
  ∀ n, P186371700245936662.a n = A094433 n

end A094433

/-! ## A094433.P10645116244706793988

`ceil(A068911(n)/2*A080876(n))`
-/

namespace A094433.P10645116244706793988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A068911 n : ℚ) / 2 * (A080876 n : ℚ)⌉

end

end A094433.P10645116244706793988

namespace A094433

/-- `ceil(A068911(n)/2*A080876(n))` -/
def P10645116244706793988.Spec : Prop :=
  ∀ n, P10645116244706793988.a n = A094433 n

end A094433

/-! ## A094433.P11797985309641008457

`(A068911(n)*A080876(n)/2)^A000217((n+2)%(n+1))`
-/

namespace A094433.P11797985309641008457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A068911 n * A080876 n : ℚ) / 2) ^ (A000217 ((n + 2) % (n + 1)) : ℤ)

end

end A094433.P11797985309641008457

namespace A094433

/-- `(A068911(n)*A080876(n)/2)^A000217((n+2)%(n+1))` -/
def P11797985309641008457.Spec : Prop :=
  ∀ n, P11797985309641008457.a n = (A094433 n : ℚ)

end A094433

/-! ## A094433.P4073463290438349767

`A068911(n)*A080876(n)/A001222(2*A006530(n+1))`
-/

namespace A094433.P4073463290438349767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068911 n * A080876 n : ℚ) / (A001222 (2 * A006530 (n + 1)).toNat : ℚ)

end

end A094433.P4073463290438349767

namespace A094433

/-- `A068911(n)*A080876(n)/A001222(2*A006530(n+1))` -/
def P4073463290438349767.Spec : Prop :=
  ∀ n, P4073463290438349767.a n = (A094433 n : ℚ)

end A094433

/-! ## A094433.P3696309346316034064

`A094434(A028310(n))+A083881(n)-A094434(n+1)`
-/

namespace A094433.P3696309346316034064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094434 (A028310 n).toNat + (A083881 n - A094434 (n + 1))

end

end A094433.P3696309346316034064

namespace A094433

/-- `A094434(A028310(n))+A083881(n)-A094434(n+1)` -/
def P3696309346316034064.Spec : Prop :=
  ∀ n, P3696309346316034064.a n = A094433 n

end A094433

/-! ## A094433.P5428966409076726486

`A068911(n)*A080876(n)/2*A000034(A025487(n+1))`
-/

namespace A094433.P5428966409076726486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068911 n * A080876 n : ℚ) / 2 * (A000034 (A025487 (n + 1)).toNat : ℚ)

end

end A094433.P5428966409076726486

namespace A094433

/-- `A068911(n)*A080876(n)/2*A000034(A025487(n+1))` -/
def P5428966409076726486.Spec : Prop :=
  ∀ n, P5428966409076726486.a n = (A094433 n : ℚ)

end A094433

/-! ## A094433.P3697655952462397518

`A068911(n)*A080876(n)/2*A042974(A172976(n+1))`
-/

namespace A094433.P3697655952462397518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068911 n * A080876 n : ℚ) / 2 * (A042974 (A172976 (n + 1)).toNat : ℚ)

end

end A094433.P3697655952462397518

namespace A094433

/-- `A068911(n)*A080876(n)/2*A042974(A172976(n+1))` -/
def P3697655952462397518.Spec : Prop :=
  ∀ n, P3697655952462397518.a n = (A094433 n : ℚ)

end A094433

/-! ## A094433.P16292355505993470544

`A068911(n)/A020639(A181821(n+1))*A080876(n)`
-/

namespace A094433.P16292355505993470544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068911 n : ℚ) / (A020639 (A181821 (n + 1)).toNat : ℚ) * (A080876 n : ℚ)

end

end A094433.P16292355505993470544

namespace A094433

/-- `A068911(n)/A020639(A181821(n+1))*A080876(n)` -/
def P16292355505993470544.Spec : Prop :=
  ∀ n, P16292355505993470544.a n = (A094433 n : ℚ)

end A094433

/-!
# A094434: a(n) = rightmost term of M^n * [1 0 0], with M = the 3 X 3 matrix [1 -1 0 / -1 3 -2 / 0 -2 2].

The programs for A094434, the canonical program `A094434.P16660625150671131354` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094434 has offset 1).

The definition of A094434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094434.P16660625150671131354

`6*a(n-1)-6*a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A094434

/-- `6*a(n-1)-6*a(n-2)` -/
def P16660625150671131354.Spec : Prop :=
  ∀ n, P16660625150671131354.a n = A094434 (n + 1)

theorem P16660625150671131354.correct : P16660625150671131354.Spec := by
  intro n
  simp only [A094434, Nat.add_sub_cancel]

end A094434

/-! ## A094434.P1124843934609632855

`6*(a(n-1)-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A094434.P1124843934609632855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  6 * (a (n - 1) - a (n - 2))

end

end A094434.P1124843934609632855

namespace A094434

/-- `6*(a(n-1)-a(n-2))` -/
def P1124843934609632855.Spec : Prop :=
  ∀ n, P1124843934609632855.a n = A094434 (n + 1)

theorem P1124843934609632855.correct : P1124843934609632855.Spec := by
  intro n
  simp only [A094434, Nat.add_sub_cancel, A094434.P1124843934609632855.a, A094434.P16660625150671131354.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A094434

/-! ## A094434.P4130546595137600211

`∑[A083881(n)-A094433(n)]`
-/

namespace A094434.P4130546595137600211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083881 n - A094433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094434.P4130546595137600211

namespace A094434

/-- `∑[A083881(n)-A094433(n)]` -/
def P4130546595137600211.Spec : Prop :=
  ∀ n, P4130546595137600211.a n = A094434 (n + 1)

end A094434

/-! ## A094434.P9437423413922725799

`A086405(n)-A094433(n+1)`
-/

namespace A094434.P9437423413922725799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086405 n - A094433 (n + 1)

end

end A094434.P9437423413922725799

namespace A094434

/-- `A086405(n)-A094433(n+1)` -/
def P9437423413922725799.Spec : Prop :=
  ∀ n, P9437423413922725799.a n = A094434 (n + 1)

end A094434

/-! ## A094434.P17933634711081868653

`2*(A086405(n)-A083881(n))`
-/

namespace A094434.P17933634711081868653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A086405 n - A083881 n)

end

end A094434.P17933634711081868653

namespace A094434

/-- `2*(A086405(n)-A083881(n))` -/
def P17933634711081868653.Spec : Prop :=
  ∀ n, P17933634711081868653.a n = A094434 (n + 1)

end A094434

/-! ## A094434.P10194479608504227139

`∑[A083881(n)-A080876(n)*A182522(n)]`
-/

namespace A094434.P10194479608504227139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083881 n - A080876 n * A182522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094434.P10194479608504227139

namespace A094434

/-- `∑[A083881(n)-A080876(n)*A182522(n)]` -/
def P10194479608504227139.Spec : Prop :=
  ∀ n, P10194479608504227139.a n = A094434 (n + 1)

end A094434

/-! ## A094434.P13572202277274487998

`A030192(n)-A086405(n)`
-/

namespace A094434.P13572202277274487998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030192 n - A086405 n

end

end A094434.P13572202277274487998

namespace A094434

/-- `A030192(n)-A086405(n)` -/
def P13572202277274487998.Spec : Prop :=
  ∀ n, P13572202277274487998.a n = A094434 (n + 1)

end A094434

/-! ## A094434.P5525167947770576455

`A086405(n+1)%A086405(n)`
-/

namespace A094434.P5525167947770576455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086405 (n + 1)) (A086405 n)

end

end A094434.P5525167947770576455

namespace A094434

/-- `A086405(n+1)%A086405(n)` -/
def P5525167947770576455.Spec : Prop :=
  ∀ n, P5525167947770576455.a n = A094434 (n + 1)

end A094434

/-! ## A094434.P13528718974877469198

`A030192(n)-Δ[A094433(n+1)]`
-/

namespace A094434.P13528718974877469198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030192 n - (f1 (n + 1) - f1 n)

end

end A094434.P13528718974877469198

namespace A094434

/-- `A030192(n)-Δ[A094433(n+1)]` -/
def P13528718974877469198.Spec : Prop :=
  ∀ n, P13528718974877469198.a n = A094434 (n + 1)

end A094434

/-! ## A094434.P11226050582955841852

`Δ[A086405(n)]-A083881(n+1)`
-/

namespace A094434.P11226050582955841852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A083881 (n + 1)

end

end A094434.P11226050582955841852

namespace A094434

/-- `Δ[A086405(n)]-A083881(n+1)` -/
def P11226050582955841852.Spec : Prop :=
  ∀ n, P11226050582955841852.a n = A094434 (n + 1)

end A094434

/-! ## A094434.P15436999369448991458

`2*(∑[A140766(n+1)]-A140766(n+1))`
-/

namespace A094434.P15436999369448991458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A140766 (n + 1))

end

end A094434.P15436999369448991458

namespace A094434

/-- `2*(∑[A140766(n+1)]-A140766(n+1))` -/
def P15436999369448991458.Spec : Prop :=
  ∀ n, P15436999369448991458.a n = A094434 (n + 1)

end A094434

/-!
# A094435: Triangular array read by rows: T(n,k) = Fibonacci(k)*C(n,k), k = 1...n; n>=1.

The programs for A094435, the canonical program `A094435.P5485803587513593441` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094435 has offset 1).

The definition of A094435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094435.P12238310605234837591

`A104763(n+1)*A135278(n)`
-/

namespace A094435.P12238310605234837591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) * A135278 n

end

end A094435.P12238310605234837591

namespace A094435

/-- `A104763(n+1)*A135278(n)` -/
def P12238310605234837591.Spec : Prop :=
  ∀ n, P12238310605234837591.a n = A094435 (n + 1)

end A094435

/-! ## A094435.P5485803587513593441

`A000045(A002260(n+1))*A074909(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A094435

/-- `A000045(A002260(n+1))*A074909(n+1)` -/
def P5485803587513593441.Spec : Prop :=
  ∀ n, P5485803587513593441.a n = A094435 (n + 1)

theorem P5485803587513593441.correct : P5485803587513593441.Spec := by
  intro n
  simp only [A094435, Nat.add_sub_cancel]

end A094435

/-! ## A094435.P17816852305611251485

`A094436(n)+abs(A113020(n+1))`
-/

namespace A094435.P17816852305611251485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094436 n + |A113020 (n + 1)|

end

end A094435.P17816852305611251485

namespace A094435

/-- `A094436(n)+abs(A113020(n+1))` -/
def P17816852305611251485.Spec : Prop :=
  ∀ n, P17816852305611251485.a n = A094435 (n + 1)

end A094435

/-! ## A094435.P13869297777550306530

`A094437(n+1)+A094436(n)-A094436(n+1)`
-/

namespace A094435.P13869297777550306530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094437 (n + 1) + (A094436 n - A094436 (n + 1))

end

end A094435.P13869297777550306530

namespace A094435

/-- `A094437(n+1)+A094436(n)-A094436(n+1)` -/
def P13869297777550306530.Spec : Prop :=
  ∀ n, P13869297777550306530.a n = A094435 (n + 1)

end A094435

/-! ## A094435.P4233736031137303395

`A094440(A038722(n+1))`
-/

namespace A094435.P4233736031137303395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094440 (A038722 (n + 1)).toNat

end

end A094435.P4233736031137303395

namespace A094435

/-- `A094440(A038722(n+1))` -/
def P4233736031137303395.Spec : Prop :=
  ∀ n, P4233736031137303395.a n = A094435 (n + 1)

end A094435

/-! ## A094435.P13031067912710341763

`A094440(A061579(n)+1)`
-/

namespace A094435.P13031067912710341763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094440 (A061579 n + 1).toNat

end

end A094435.P13031067912710341763

namespace A094435

/-- `A094440(A061579(n)+1)` -/
def P13031067912710341763.Spec : Prop :=
  ∀ n, P13031067912710341763.a n = A094435 (n + 1)

end A094435

/-! ## A094435.P5953268339486995047

`A171731(A380649(n+1))`
-/

namespace A094435.P5953268339486995047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171731 (A380649 (n + 1)).toNat

end

end A094435.P5953268339486995047

namespace A094435

/-- `A171731(A380649(n+1))` -/
def P5953268339486995047.Spec : Prop :=
  ∀ n, P5953268339486995047.a n = A094435 (n + 1)

end A094435

/-! ## A094435.P14219791502968086044

`A117965(n+1)/A131410(n+1)`
-/

namespace A094435.P14219791502968086044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117965 (n + 1) : ℚ) / (A131410 (n + 1) : ℚ)

end

end A094435.P14219791502968086044

namespace A094435

/-- `A117965(n+1)/A131410(n+1)` -/
def P14219791502968086044.Spec : Prop :=
  ∀ n, P14219791502968086044.a n = (A094435 (n + 1) : ℚ)

end A094435

/-!
# A094436: Triangular array T(n,k) = Fibonacci(k+1)*binomial(n,k) for k = 0..n; n >= 0.

The programs for A094436, the canonical program `A094436.P7881674701604932164` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094436 has offset 0).

The definition of A094436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094436.P6074015286014527412

`A094438(n)-A094437(n)`
-/

namespace A094436.P6074015286014527412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094438 n - A094437 n

end

end A094436.P6074015286014527412

namespace A094436

/-- `A094438(n)-A094437(n)` -/
def P6074015286014527412.Spec : Prop :=
  ∀ n, P6074015286014527412.a n = A094436 n

end A094436

/-! ## A094436.P2279347397712187840

`A125100(n)-A216973(n)`
-/

namespace A094436.P2279347397712187840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125100 n - A216973 n

end

end A094436.P2279347397712187840

namespace A094436

/-- `A125100(n)-A216973(n)` -/
def P2279347397712187840.Spec : Prop :=
  ∀ n, P2279347397712187840.a n = A094436 n

end A094436

/-! ## A094436.P7881674701604932164

`A007318(n)*A104763(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A094436

/-- `A007318(n)*A104763(n+1)` -/
def P7881674701604932164.Spec : Prop :=
  ∀ n, P7881674701604932164.a n = A094436 n

theorem P7881674701604932164.correct : P7881674701604932164.Spec := by
  intro n
  simp only [A094436]

end A094436

/-! ## A094436.P12473031089750634088

`A109906(n)/A104762(n+1)`
-/

namespace A094436.P12473031089750634088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109906 n : ℚ) / (A104762 (n + 1) : ℚ)

end

end A094436.P12473031089750634088

namespace A094436

/-- `A109906(n)/A104762(n+1)` -/
def P12473031089750634088.Spec : Prop :=
  ∀ n, P12473031089750634088.a n = (A094436 n : ℚ)

end A094436

/-! ## A094436.P15405624321606319426

`2*A094438(n)-A094439(n)`
-/

namespace A094436.P15405624321606319426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094438 n - A094439 n

end

end A094436.P15405624321606319426

namespace A094436

/-- `2*A094438(n)-A094439(n)` -/
def P15405624321606319426.Spec : Prop :=
  ∀ n, P15405624321606319426.a n = A094436 n

end A094436

/-! ## A094436.P14741313955269664231

`A094439(n)-2*A094437(n)`
-/

namespace A094436.P14741313955269664231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094439 n - 2 * A094437 n

end

end A094436.P14741313955269664231

namespace A094436

/-- `A094439(n)-2*A094437(n)` -/
def P14741313955269664231.Spec : Prop :=
  ∀ n, P14741313955269664231.a n = A094436 n

end A094436

/-! ## A094436.P166060808600026531

`A000045(A002260(n+1))*A007318(n)`
-/

namespace A094436.P166060808600026531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002260 (n + 1)).toNat * A007318 n

end

end A094436.P166060808600026531

namespace A094436

/-- `A000045(A002260(n+1))*A007318(n)` -/
def P166060808600026531.Spec : Prop :=
  ∀ n, P166060808600026531.a n = A094436 n

end A094436

/-! ## A094436.P4201687320418228610

`A000045(A002262(n)+1)*A007318(n)`
-/

namespace A094436.P4201687320418228610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002262 n + 1).toNat * A007318 n

end

end A094436.P4201687320418228610

namespace A094436

/-- `A000045(A002262(n)+1)*A007318(n)` -/
def P4201687320418228610.Spec : Prop :=
  ∀ n, P4201687320418228610.a n = A094436 n

end A094436

/-! ## A094436.P18115530854053935775

`A000045(A134868(n+1))*A007318(n)`
-/

namespace A094436.P18115530854053935775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A134868 (n + 1)).toNat * A007318 n

end

end A094436.P18115530854053935775

namespace A094436

/-- `A000045(A134868(n+1))*A007318(n)` -/
def P18115530854053935775.Spec : Prop :=
  ∀ n, P18115530854053935775.a n = A094436 n

end A094436

/-! ## A094436.P8797777058567641429

`(A014473(n)+1)*A000045(A002260(n+1))`
-/

namespace A094436.P8797777058567641429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A000045 (A002260 (n + 1)).toNat

end

end A094436.P8797777058567641429

namespace A094436

/-- `(A014473(n)+1)*A000045(A002260(n+1))` -/
def P8797777058567641429.Spec : Prop :=
  ∀ n, P8797777058567641429.a n = A094436 n

end A094436

/-! ## A094436.P4797697707993093946

`A000045(A144328(n+1)+1)*A007318(n)`
-/

namespace A094436.P4797697707993093946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A144328 (n + 1) + 1).toNat * A007318 n

end

end A094436.P4797697707993093946

namespace A094436

/-- `A000045(A144328(n+1)+1)*A007318(n)` -/
def P4797697707993093946.Spec : Prop :=
  ∀ n, P4797697707993093946.a n = A094436 n

end A094436

/-! ## A094436.P7780572706817053782

`A104763(n+1)/A058071(n)*A109906(n)`
-/

namespace A094436.P7780572706817053782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104763 (n + 1) : ℚ) / (A058071 n : ℚ) * (A109906 n : ℚ)

end

end A094436.P7780572706817053782

namespace A094436

/-- `A104763(n+1)/A058071(n)*A109906(n)` -/
def P7780572706817053782.Spec : Prop :=
  ∀ n, P7780572706817053782.a n = (A094436 n : ℚ)

end A094436

/-! ## A094436.P16003078384785824558

`ceil(A134059(n)/3)*A000045(A002260(n+1))`
-/

namespace A094436.P16003078384785824558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉ * A000045 (A002260 (n + 1)).toNat

end

end A094436.P16003078384785824558

namespace A094436

/-- `ceil(A134059(n)/3)*A000045(A002260(n+1))` -/
def P16003078384785824558.Spec : Prop :=
  ∀ n, P16003078384785824558.a n = A094436 n

end A094436

/-! ## A094436.P5978694277775731464

`ceil(A135087(n)/4)*A000045(A002260(n+1))`
-/

namespace A094436.P5978694277775731464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135087 n : ℚ) / 4⌉ * A000045 (A002260 (n + 1)).toNat

end

end A094436.P5978694277775731464

namespace A094436

/-- `ceil(A135087(n)/4)*A000045(A002260(n+1))` -/
def P5978694277775731464.Spec : Prop :=
  ∀ n, P5978694277775731464.a n = A094436 n

end A094436

/-! ## A094436.P8714889846761598454

`ceil(A135089(n)/5)*A000045(A002260(n+1))`
-/

namespace A094436.P8714889846761598454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135089 n : ℚ) / 5⌉ * A000045 (A002260 (n + 1)).toNat

end

end A094436.P8714889846761598454

namespace A094436

/-- `ceil(A135089(n)/5)*A000045(A002260(n+1))` -/
def P8714889846761598454.Spec : Prop :=
  ∀ n, P8714889846761598454.a n = A094436 n

end A094436

/-! ## A094436.P16047090171579278771

`A000045(A103406(n)/A007318(n))*A007318(n)`
-/

namespace A094436.P16047090171579278771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A103406 n : ℚ) / (A007318 n : ℚ))).toNat * A007318 n

end

end A094436.P16047090171579278771

namespace A094436

/-- `A000045(A103406(n)/A007318(n))*A007318(n)` -/
def P16047090171579278771.Spec : Prop :=
  ∀ n, P16047090171579278771.a n = A094436 n

end A094436

/-! ## A094436.P14602558904766377937

`A134059(A028310(n))/3*A000045(A002260(n+1))`
-/

namespace A094436.P14602558904766377937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134059 (A028310 n).toNat : ℚ) / 3 * (A000045 (A002260 (n + 1)).toNat : ℚ)

end

end A094436.P14602558904766377937

namespace A094436

/-- `A134059(A028310(n))/3*A000045(A002260(n+1))` -/
def P14602558904766377937.Spec : Prop :=
  ∀ n, P14602558904766377937.a n = (A094436 n : ℚ)

end A094436

/-! ## A094436.P578912413858398200

`(A285118(n)+A285116(n))*A000045(A002260(n+1))`
-/

namespace A094436.P578912413858398200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285118 n + A285116 n) * A000045 (A002260 (n + 1)).toNat

end

end A094436.P578912413858398200

namespace A094436

/-- `(A285118(n)+A285116(n))*A000045(A002260(n+1))` -/
def P578912413858398200.Spec : Prop :=
  ∀ n, P578912413858398200.a n = A094436 n

end A094436

/-! ## A094436.P12656859686365716404

`A104763(n+1)/A016095(A057944(n))*A016095(n)`
-/

namespace A094436.P12656859686365716404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104763 (n + 1) : ℚ) / (A016095 (A057944 n).toNat : ℚ) * (A016095 n : ℚ)

end

end A094436.P12656859686365716404

namespace A094436

/-- `A104763(n+1)/A016095(A057944(n))*A016095(n)` -/
def P12656859686365716404.Spec : Prop :=
  ∀ n, P12656859686365716404.a n = (A094436 n : ℚ)

end A094436

/-! ## A094436.P4928861047241677806

`A094441(A061579(n))`
-/

namespace A094436.P4928861047241677806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094441 (A061579 n).toNat

end

end A094436.P4928861047241677806

namespace A094436

/-- `A094441(A061579(n))` -/
def P4928861047241677806.Spec : Prop :=
  ∀ n, P4928861047241677806.a n = A094436 n

end A094436

/-!
# A094437: Triangular array T(n,k) = Fibonacci(k+2)*C(n,k), k=0..n, n>=0.

The programs for A094437, the canonical program `A094437.P2545889634383283461` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094437 has offset 0).

The definition of A094437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094437.P17370047357798252987

`A094438(n)-A094436(n)`
-/

namespace A094437.P17370047357798252987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094438 n - A094436 n

end

end A094437.P17370047357798252987

namespace A094437

/-- `A094438(n)-A094436(n)` -/
def P17370047357798252987.Spec : Prop :=
  ∀ n, P17370047357798252987.a n = A094437 n

end A094437

/-! ## A094437.P16121018857949161416

`A094439(n)-A094438(n)`
-/

namespace A094437.P16121018857949161416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094439 n - A094438 n

end

end A094437.P16121018857949161416

namespace A094437

/-- `A094439(n)-A094438(n)` -/
def P16121018857949161416.Spec : Prop :=
  ∀ n, P16121018857949161416.a n = A094437 n

end A094437

/-! ## A094437.P2545889634383283461

`A007318(n)*A193588(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A094437

/-- `A007318(n)*A193588(n)` -/
def P2545889634383283461.Spec : Prop :=
  ∀ n, P2545889634383283461.a n = A094437 n

theorem P2545889634383283461.correct : P2545889634383283461.Spec := by
  intro n
  simp only [A094437]

end A094437

/-! ## A094437.P2222336284816761689

`A094436(n)+abs(A113020(n))`
-/

namespace A094437.P2222336284816761689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094436 n + |A113020 n|

end

end A094437.P2222336284816761689

namespace A094437

/-- `A094436(n)+abs(A113020(n))` -/
def P2222336284816761689.Spec : Prop :=
  ∀ n, P2222336284816761689.a n = A094437 n

end A094437

/-! ## A094437.P220296059275507211

`ceil(A134059(n)/3)*A193588(n)`
-/

namespace A094437.P220296059275507211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉ * A193588 n

end

end A094437.P220296059275507211

namespace A094437

/-- `ceil(A134059(n)/3)*A193588(n)` -/
def P220296059275507211.Spec : Prop :=
  ∀ n, P220296059275507211.a n = A094437 n

end A094437

/-! ## A094437.P16325586999971056518

`ceil(A135087(n)/4)*A193588(n)`
-/

namespace A094437.P16325586999971056518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135087 n : ℚ) / 4⌉ * A193588 n

end

end A094437.P16325586999971056518

namespace A094437

/-- `ceil(A135087(n)/4)*A193588(n)` -/
def P16325586999971056518.Spec : Prop :=
  ∀ n, P16325586999971056518.a n = A094437 n

end A094437

/-! ## A094437.P8497588983575301171

`ceil(A135089(n)/5)*A193588(n)`
-/

namespace A094437.P8497588983575301171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135089 n : ℚ) / 5⌉ * A193588 n

end

end A094437.P8497588983575301171

namespace A094437

/-- `ceil(A135089(n)/5)*A193588(n)` -/
def P8497588983575301171.Spec : Prop :=
  ∀ n, P8497588983575301171.a n = A094437 n

end A094437

/-! ## A094437.P8573206348302591145

`A000045(A002262(n)+2)*A007318(n)`
-/

namespace A094437.P8573206348302591145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002262 n + 2).toNat * A007318 n

end

end A094437.P8573206348302591145

namespace A094437

/-- `A000045(A002262(n)+2)*A007318(n)` -/
def P8573206348302591145.Spec : Prop :=
  ∀ n, P8573206348302591145.a n = A094437 n

end A094437

/-! ## A094437.P11477653051129561499

`A134059(A028310(n))/3*A193588(n)`
-/

namespace A094437.P11477653051129561499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134059 (A028310 n).toNat : ℚ) / 3 * (A193588 n : ℚ)

end

end A094437.P11477653051129561499

namespace A094437

/-- `A134059(A028310(n))/3*A193588(n)` -/
def P11477653051129561499.Spec : Prop :=
  ∀ n, P11477653051129561499.a n = (A094437 n : ℚ)

end A094437

/-! ## A094437.P2882138254752063991

`(A285118(n)+A285116(n))*A193588(n)`
-/

namespace A094437.P2882138254752063991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285118 n + A285116 n) * A193588 n

end

end A094437.P2882138254752063991

namespace A094437

/-- `(A285118(n)+A285116(n))*A193588(n)` -/
def P2882138254752063991.Spec : Prop :=
  ∀ n, P2882138254752063991.a n = A094437 n

end A094437

/-! ## A094437.P15581312426733777447

`gcd(A124927(n), A124928(n))*A193588(n)`
-/

namespace A094437.P15581312426733777447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A124927 n) (A124928 n) : ℤ) * A193588 n

end

end A094437.P15581312426733777447

namespace A094437

/-- `gcd(A124927(n), A124928(n))*A193588(n)` -/
def P15581312426733777447.Spec : Prop :=
  ∀ n, P15581312426733777447.a n = A094437 n

end A094437

/-! ## A094437.P5387652904196861487

`A000045(A002260(n+1)+1)*A007318(n)`
-/

namespace A094437.P5387652904196861487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002260 (n + 1) + 1).toNat * A007318 n

end

end A094437.P5387652904196861487

namespace A094437

/-- `A000045(A002260(n+1)+1)*A007318(n)` -/
def P5387652904196861487.Spec : Prop :=
  ∀ n, P5387652904196861487.a n = A094437 n

end A094437

/-! ## A094437.P18199510391310851725

`A189675(n+1)/A171567(n)*A007318(n)`
-/

namespace A094437.P18199510391310851725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189675 (n + 1) : ℚ) / (A171567 n : ℚ) * (A007318 n : ℚ)

end

end A094437.P18199510391310851725

namespace A094437

/-- `A189675(n+1)/A171567(n)*A007318(n)` -/
def P18199510391310851725.Spec : Prop :=
  ∀ n, P18199510391310851725.a n = (A094437 n : ℚ)

end A094437

/-! ## A094437.P14163023494951926581

`C(A002024(n+1)-1, A002262(n))*A193588(n)`
-/

namespace A094437.P14163023494951926581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A002024 (n + 1) - 1).toNat (A002262 n).toNat : ℤ) * A193588 n

end

end A094437.P14163023494951926581

namespace A094437

/-- `C(A002024(n+1)-1, A002262(n))*A193588(n)` -/
def P14163023494951926581.Spec : Prop :=
  ∀ n, P14163023494951926581.a n = A094437 n

end A094437

/-! ## A094437.P10369583687581285072

`C(A003056(n), A002260(n+1)-1)*A193588(n)`
-/

namespace A094437.P10369583687581285072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003056 n).toNat (A002260 (n + 1) - 1).toNat : ℤ) * A193588 n

end

end A094437.P10369583687581285072

namespace A094437

/-- `C(A003056(n), A002260(n+1)-1)*A193588(n)` -/
def P10369583687581285072.Spec : Prop :=
  ∀ n, P10369583687581285072.a n = A094437 n

end A094437

/-! ## A094437.P16384420967051661114

`C(A003056(n), A004736(n+1)-1)*A193588(n)`
-/

namespace A094437.P16384420967051661114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003056 n).toNat (A004736 (n + 1) - 1).toNat : ℤ) * A193588 n

end

end A094437.P16384420967051661114

namespace A094437

/-- `C(A003056(n), A004736(n+1)-1)*A193588(n)` -/
def P16384420967051661114.Spec : Prop :=
  ∀ n, P16384420967051661114.a n = A094437 n

end A094437

/-! ## A094437.P12444797334489395171

`A094442(A061579(n))`
-/

namespace A094437.P12444797334489395171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094442 (A061579 n).toNat

end

end A094437.P12444797334489395171

namespace A094437

/-- `A094442(A061579(n))` -/
def P12444797334489395171.Spec : Prop :=
  ∀ n, P12444797334489395171.a n = A094437 n

end A094437

/-! ## A094437.P17659863792694770270

`A094442(A114327(n)+n)`
-/

namespace A094437.P17659863792694770270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094442 (A114327 n + (n : ℤ)).toNat

end

end A094437.P17659863792694770270

namespace A094437

/-- `A094442(A114327(n)+n)` -/
def P17659863792694770270.Spec : Prop :=
  ∀ n, P17659863792694770270.a n = A094437 n

end A094437

/-! ## A094437.P17762884115589141199

`A094442(A038722(n+1)-1)`
-/

namespace A094437.P17762884115589141199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094442 (A038722 (n + 1) - 1).toNat

end

end A094437.P17762884115589141199

namespace A094437

/-- `A094442(A038722(n+1)-1)` -/
def P17762884115589141199.Spec : Prop :=
  ∀ n, P17762884115589141199.a n = A094437 n

end A094437

/-! ## A094437.P8028633479807907110

`A193554(comp[∑[n]])*A193588(n)`
-/

namespace A094437.P8028633479807907110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193554 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A193588 n

end

end A094437.P8028633479807907110

namespace A094437

/-- `A193554(comp[∑[n]])*A193588(n)` -/
def P8028633479807907110.Spec : Prop :=
  ∀ n, P8028633479807907110.a n = A094437 n

end A094437

/-!
# A094438: Triangular array T(n,k) = Fibonacci(k+3)*C(n,k), k=0..n, n>=0.

The programs for A094438, the canonical program `A094438.P6192063394348362589` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094438 has offset 0).

The definition of A094438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094438.P6192063394348362589

`A094437(n)+A094436(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A094438

/-- `A094437(n)+A094436(n)` -/
def P6192063394348362589.Spec : Prop :=
  ∀ n, P6192063394348362589.a n = A094438 n

theorem P6192063394348362589.correct : P6192063394348362589.Spec := by
  intro n
  simp only [A094438]

end A094438

/-! ## A094438.P11634141848713804724

`A094439(n)-A094437(n)`
-/

namespace A094438.P11634141848713804724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094439 n - A094437 n

end

end A094438.P11634141848713804724

namespace A094438

/-- `A094439(n)-A094437(n)` -/
def P11634141848713804724.Spec : Prop :=
  ∀ n, P11634141848713804724.a n = A094438 n

end A094438

/-! ## A094438.P10607831450242882003

`abs(A113020(n))+2*A094436(n)`
-/

namespace A094438.P10607831450242882003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113020 n| + 2 * A094436 n

end

end A094438.P10607831450242882003

namespace A094438

/-- `abs(A113020(n))+2*A094436(n)` -/
def P10607831450242882003.Spec : Prop :=
  ∀ n, P10607831450242882003.a n = A094438 n

end A094438

/-! ## A094438.P5245455363083417419

`A000045(A002260(n+1)+2)*A007318(n)`
-/

namespace A094438.P5245455363083417419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002260 (n + 1) + 2).toNat * A007318 n

end

end A094438.P5245455363083417419

namespace A094438

/-- `A000045(A002260(n+1)+2)*A007318(n)` -/
def P5245455363083417419.Spec : Prop :=
  ∀ n, P5245455363083417419.a n = A094438 n

end A094438

/-! ## A094438.P2252765294416605891

`A094443(A061579(n))`
-/

namespace A094438.P2252765294416605891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094443 (A061579 n).toNat

end

end A094438.P2252765294416605891

namespace A094438

/-- `A094443(A061579(n))` -/
def P2252765294416605891.Spec : Prop :=
  ∀ n, P2252765294416605891.a n = A094438 n

end A094438

/-! ## A094438.P16817275256388940536

`A094443(A114327(n)+n)`
-/

namespace A094438.P16817275256388940536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094443 (A114327 n + (n : ℤ)).toNat

end

end A094438.P16817275256388940536

namespace A094438

/-- `A094443(A114327(n)+n)` -/
def P16817275256388940536.Spec : Prop :=
  ∀ n, P16817275256388940536.a n = A094438 n

end A094438

/-! ## A094438.P13443514547901033279

`A007318(n)*A193588(lt[1, A007318(n)])`
-/

namespace A094438.P13443514547901033279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A193588 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A094438.P13443514547901033279

namespace A094438

/-- `A007318(n)*A193588(lt[1, A007318(n)])` -/
def P13443514547901033279.Spec : Prop :=
  ∀ n, P13443514547901033279.a n = A094438 n

end A094438

/-! ## A094438.P12013105604303004758

`A176348(n)/A176346(n)*A000045(A002260(n+1)+2)`
-/

namespace A094438.P12013105604303004758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176348 n : ℚ) / (A176346 n : ℚ) * (A000045 (A002260 (n + 1) + 2).toNat : ℚ)

end

end A094438.P12013105604303004758

namespace A094438

/-- `A176348(n)/A176346(n)*A000045(A002260(n+1)+2)` -/
def P12013105604303004758.Spec : Prop :=
  ∀ n, P12013105604303004758.a n = (A094438 n : ℚ)

end A094438

/-! ## A094438.P13315689775463569579

`A007318(n)*A022290(2*A059268(n))`
-/

namespace A094438.P13315689775463569579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A022290 (2 * A059268 n).toNat

end

end A094438.P13315689775463569579

namespace A094438

/-- `A007318(n)*A022290(2*A059268(n))` -/
def P13315689775463569579.Spec : Prop :=
  ∀ n, P13315689775463569579.a n = A094438 n

end A094438

/-!
# A094439: Triangular array T(n,k) = Fibonacci(k+4)*C(n,k), k=0..n, n>=0.

The programs for A094439, the canonical program `A094439.P8547368482496176600` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094439 has offset 0).

The definition of A094439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094439.P8547368482496176600

`A094438(n)+A094437(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A094439

/-- `A094438(n)+A094437(n)` -/
def P8547368482496176600.Spec : Prop :=
  ∀ n, P8547368482496176600.a n = A094439 n

theorem P8547368482496176600.correct : P8547368482496176600.Spec := by
  intro n
  simp only [A094439]

end A094439

/-! ## A094439.P14022295772091923883

`A094436(n)+2*A094437(n)`
-/

namespace A094439.P14022295772091923883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094436 n + 2 * A094437 n

end

end A094439.P14022295772091923883

namespace A094439

/-- `A094436(n)+2*A094437(n)` -/
def P14022295772091923883.Spec : Prop :=
  ∀ n, P14022295772091923883.a n = A094439 n

end A094439

/-! ## A094439.P12867941222093563666

`2*A094438(n)-A094436(n)`
-/

namespace A094439.P12867941222093563666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094438 n - A094436 n

end

end A094439.P12867941222093563666

namespace A094439

/-- `2*A094438(n)-A094436(n)` -/
def P12867941222093563666.Spec : Prop :=
  ∀ n, P12867941222093563666.a n = A094439 n

end A094439

/-! ## A094439.P7619280006440591991

`A000045(A002260(n+1)+3)*A007318(n)`
-/

namespace A094439.P7619280006440591991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002260 (n + 1) + 3).toNat * A007318 n

end

end A094439.P7619280006440591991

namespace A094439

/-- `A000045(A002260(n+1)+3)*A007318(n)` -/
def P7619280006440591991.Spec : Prop :=
  ∀ n, P7619280006440591991.a n = A094439 n

end A094439

/-! ## A094439.P8841249090592745802

`A094444(A061579(n))`
-/

namespace A094439.P8841249090592745802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094444 (A061579 n).toNat

end

end A094439.P8841249090592745802

namespace A094439

/-- `A094444(A061579(n))` -/
def P8841249090592745802.Spec : Prop :=
  ∀ n, P8841249090592745802.a n = A094439 n

end A094439

/-! ## A094439.P12598087514113726261

`A007318(n)*A193588(lt[2, A193588(n)])`
-/

namespace A094439.P12598087514113726261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A193588 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A094439.P12598087514113726261

namespace A094439

/-- `A007318(n)*A193588(lt[2, A193588(n)])` -/
def P12598087514113726261.Spec : Prop :=
  ∀ n, P12598087514113726261.a n = A094439 n

end A094439

/-!
# A094440: Triangular array read by rows: T(n,k) = Fibonacci(n+1-k)*C(n,k-1), k = 1..n; n >= 1.

The programs for A094440, the canonical program `A094440.P13667524023593120163` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094440 has offset 1).

The definition of A094440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094440.P12954207077141448865

`A074909(n)*A104762(n+1)`
-/

namespace A094440.P12954207077141448865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A104762 (n + 1)

end

end A094440.P12954207077141448865

namespace A094440

/-- `A074909(n)*A104762(n+1)` -/
def P12954207077141448865.Spec : Prop :=
  ∀ n, P12954207077141448865.a n = A094440 (n + 1)

end A094440

/-! ## A094440.P13667524023593120163

`A000045(A004736(n+1))*A074909(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A094440

/-- `A000045(A004736(n+1))*A074909(n)` -/
def P13667524023593120163.Spec : Prop :=
  ∀ n, P13667524023593120163.a n = A094440 (n + 1)

theorem P13667524023593120163.correct : P13667524023593120163.Spec := by
  intro n
  simp only [A094440, Nat.add_sub_cancel]

end A094440

/-! ## A094440.P26890566755576018

`A000045(A004736(n+1))*A007318(A007401(n+1))`
-/

namespace A094440.P26890566755576018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004736 (n + 1)).toNat * A007318 (A007401 (n + 1)).toNat

end

end A094440.P26890566755576018

namespace A094440

/-- `A000045(A004736(n+1))*A007318(A007401(n+1))` -/
def P26890566755576018.Spec : Prop :=
  ∀ n, P26890566755576018.a n = A094440 (n + 1)

end A094440

/-! ## A094440.P3229460708804189984

`A094435(A038722(n+1))`
-/

namespace A094440.P3229460708804189984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094435 (A038722 (n + 1)).toNat

end

end A094440.P3229460708804189984

namespace A094440

/-- `A094435(A038722(n+1))` -/
def P3229460708804189984.Spec : Prop :=
  ∀ n, P3229460708804189984.a n = A094440 (n + 1)

end A094440

/-! ## A094440.P14423277765983754156

`A094435(A061579(n)+1)`
-/

namespace A094440.P14423277765983754156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094435 (A061579 n + 1).toNat

end

end A094440.P14423277765983754156

namespace A094440

/-- `A094435(A061579(n)+1)` -/
def P14423277765983754156.Spec : Prop :=
  ∀ n, P14423277765983754156.a n = A094440 (n + 1)

end A094440

/-! ## A094440.P9309046410239179170

`A094435(A002024(n+1)²-n)`
-/

namespace A094440.P9309046410239179170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094435 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A094440.P9309046410239179170

namespace A094440

/-- `A094435(A002024(n+1)²-n)` -/
def P9309046410239179170.Spec : Prop :=
  ∀ n, P9309046410239179170.a n = A094440 (n + 1)

end A094440

/-! ## A094440.P13505477664883295021

`A171731(A007401(n+1))`
-/

namespace A094440.P13505477664883295021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171731 (A007401 (n + 1)).toNat

end

end A094440.P13505477664883295021

namespace A094440

/-- `A171731(A007401(n+1))` -/
def P13505477664883295021.Spec : Prop :=
  ∀ n, P13505477664883295021.a n = A094440 (n + 1)

end A094440

/-! ## A094440.P4397931005799337564

`A171731(lt[0, A171731(n)])`
-/

namespace A094440.P4397931005799337564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171731 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A094440.P4397931005799337564

namespace A094440

/-- `A171731(lt[0, A171731(n)])` -/
def P4397931005799337564.Spec : Prop :=
  ∀ n, P4397931005799337564.a n = A094440 (n + 1)

end A094440

/-!
# A094441: Triangular array T(n,k) = Fibonacci(n+1-k)*C(n,k), 0 <= k <= n.

The programs for A094441, the canonical program `A094441.P3669008604322146488` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094441 has offset 0).

The definition of A094441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094441.P8297136002327258844

`A094443(n)-A094442(n)`
-/

namespace A094441.P8297136002327258844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094443 n - A094442 n

end

end A094441.P8297136002327258844

namespace A094441

/-- `A094443(n)-A094442(n)` -/
def P8297136002327258844.Spec : Prop :=
  ∀ n, P8297136002327258844.a n = A094441 n

end A094441

/-! ## A094441.P15017180895887210944

`A094442(n)-A171731(n)`
-/

namespace A094441.P15017180895887210944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094442 n - A171731 n

end

end A094441.P15017180895887210944

namespace A094441

/-- `A094442(n)-A171731(n)` -/
def P15017180895887210944.Spec : Prop :=
  ∀ n, P15017180895887210944.a n = A094441 n

end A094441

/-! ## A094441.P3669008604322146488

`A007318(n)*A104762(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A094441

/-- `A007318(n)*A104762(n+1)` -/
def P3669008604322146488.Spec : Prop :=
  ∀ n, P3669008604322146488.a n = A094441 n

theorem P3669008604322146488.correct : P3669008604322146488.Spec := by
  intro n
  simp only [A094441]

end A094441

/-! ## A094441.P13623413766191819921

`A109906(n)/A104763(n+1)`
-/

namespace A094441.P13623413766191819921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109906 n : ℚ) / (A104763 (n + 1) : ℚ)

end

end A094441.P13623413766191819921

namespace A094441

/-- `A109906(n)/A104763(n+1)` -/
def P13623413766191819921.Spec : Prop :=
  ∀ n, P13623413766191819921.a n = (A094441 n : ℚ)

end A094441

/-! ## A094441.P13442110601846250313

`2*A094443(n)-A094444(n)`
-/

namespace A094441.P13442110601846250313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094443 n - A094444 n

end

end A094441.P13442110601846250313

namespace A094441

/-- `2*A094443(n)-A094444(n)` -/
def P13442110601846250313.Spec : Prop :=
  ∀ n, P13442110601846250313.a n = A094441 n

end A094441

/-! ## A094441.P12100058037148398536

`A094444(n)-2*A094442(n)`
-/

namespace A094441.P12100058037148398536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094444 n - 2 * A094442 n

end

end A094441.P12100058037148398536

namespace A094441

/-- `A094444(n)-2*A094442(n)` -/
def P12100058037148398536.Spec : Prop :=
  ∀ n, P12100058037148398536.a n = A094441 n

end A094441

/-! ## A094441.P5349095836316179687

`A000045(A004736(n+1))*A007318(n)`
-/

namespace A094441.P5349095836316179687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004736 (n + 1)).toNat * A007318 n

end

end A094441.P5349095836316179687

namespace A094441

/-- `A000045(A004736(n+1))*A007318(n)` -/
def P5349095836316179687.Spec : Prop :=
  ∀ n, P5349095836316179687.a n = A094441 n

end A094441

/-! ## A094441.P8848723227608430675

`A007318(n)*A000045(A025581(n)+1)`
-/

namespace A094441.P8848723227608430675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000045 (A025581 n + 1).toNat

end

end A094441.P8848723227608430675

namespace A094441

/-- `A007318(n)*A000045(A025581(n)+1)` -/
def P8848723227608430675.Spec : Prop :=
  ∀ n, P8848723227608430675.a n = A094441 n

end A094441

/-! ## A094441.P17238267488785899613

`A007318(n)*A103609(A099375(n)+1)`
-/

namespace A094441.P17238267488785899613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A103609 (A099375 n + 1).toNat

end

end A094441.P17238267488785899613

namespace A094441

/-- `A007318(n)*A103609(A099375(n)+1)` -/
def P17238267488785899613.Spec : Prop :=
  ∀ n, P17238267488785899613.a n = A094441 n

end A094441

/-! ## A094441.P9107344421074505907

`A007318(n)*A302126(A099375(n)+1)`
-/

namespace A094441.P9107344421074505907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A302126 (A099375 n + 1).toNat

end

end A094441.P9107344421074505907

namespace A094441

/-- `A007318(n)*A302126(A099375(n)+1)` -/
def P9107344421074505907.Spec : Prop :=
  ∀ n, P9107344421074505907.a n = A094441 n

end A094441

/-! ## A094441.P4153940089876323316

`ceil(A134059(n)/3)*A000045(A004736(n+1))`
-/

namespace A094441.P4153940089876323316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉ * A000045 (A004736 (n + 1)).toNat

end

end A094441.P4153940089876323316

namespace A094441

/-- `ceil(A134059(n)/3)*A000045(A004736(n+1))` -/
def P4153940089876323316.Spec : Prop :=
  ∀ n, P4153940089876323316.a n = A094441 n

end A094441

/-! ## A094441.P17427344875632199347

`ceil(A135087(n)/4)*A000045(A004736(n+1))`
-/

namespace A094441.P17427344875632199347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135087 n : ℚ) / 4⌉ * A000045 (A004736 (n + 1)).toNat

end

end A094441.P17427344875632199347

namespace A094441

/-- `ceil(A135087(n)/4)*A000045(A004736(n+1))` -/
def P17427344875632199347.Spec : Prop :=
  ∀ n, P17427344875632199347.a n = A094441 n

end A094441

/-! ## A094441.P4132207677636795635

`ceil(A135089(n)/5)*A000045(A004736(n+1))`
-/

namespace A094441.P4132207677636795635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135089 n : ℚ) / 5⌉ * A000045 (A004736 (n + 1)).toNat

end

end A094441.P4132207677636795635

namespace A094441

/-- `ceil(A135089(n)/5)*A000045(A004736(n+1))` -/
def P4132207677636795635.Spec : Prop :=
  ∀ n, P4132207677636795635.a n = A094441 n

end A094441

/-! ## A094441.P3036103650479566149

`A134059(A028310(n))/3*A000045(A004736(n+1))`
-/

namespace A094441.P3036103650479566149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134059 (A028310 n).toNat : ℚ) / 3 * (A000045 (A004736 (n + 1)).toNat : ℚ)

end

end A094441.P3036103650479566149

namespace A094441

/-- `A134059(A028310(n))/3*A000045(A004736(n+1))` -/
def P3036103650479566149.Spec : Prop :=
  ∀ n, P3036103650479566149.a n = (A094441 n : ℚ)

end A094441

/-! ## A094441.P8073632079048069444

`(A285118(n)+A285116(n))*A000045(A004736(n+1))`
-/

namespace A094441.P8073632079048069444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285118 n + A285116 n) * A000045 (A004736 (n + 1)).toNat

end

end A094441.P8073632079048069444

namespace A094441

/-- `(A285118(n)+A285116(n))*A000045(A004736(n+1))` -/
def P8073632079048069444.Spec : Prop :=
  ∀ n, P8073632079048069444.a n = A094441 n

end A094441

/-! ## A094441.P17037645122738253054

`A094436(A061579(n))`
-/

namespace A094441.P17037645122738253054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094436 (A061579 n).toNat

end

end A094441.P17037645122738253054

namespace A094441

/-- `A094436(A061579(n))` -/
def P17037645122738253054.Spec : Prop :=
  ∀ n, P17037645122738253054.a n = A094441 n

end A094441

/-! ## A094441.P10357603620348684347

`A094436(A038722(n+1)-1)`
-/

namespace A094441.P10357603620348684347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094436 (A038722 (n + 1) - 1).toNat

end

end A094441.P10357603620348684347

namespace A094441

/-- `A094436(A038722(n+1)-1)` -/
def P10357603620348684347.Spec : Prop :=
  ∀ n, P10357603620348684347.a n = A094441 n

end A094441

/-! ## A094441.P7497539316274444577

`A094440(n+1)-abs(A113020(A038722(n+1)))`
-/

namespace A094441.P7497539316274444577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094440 (n + 1) - |A113020 (A038722 (n + 1)).toNat|

end

end A094441.P7497539316274444577

namespace A094441

/-- `A094440(n+1)-abs(A113020(A038722(n+1)))` -/
def P7497539316274444577.Spec : Prop :=
  ∀ n, P7497539316274444577.a n = A094441 n

end A094441

/-! ## A094441.P9407205329836580243

`A094436(A038722(n+2))`
-/

namespace A094441.P9407205329836580243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094436 (A038722 (n + 2)).toNat

end

end A094441.P9407205329836580243

namespace A094441

/-- `A094436(A038722(n+2))` -/
def P9407205329836580243.Spec : Prop :=
  ∀ n, P9407205329836580243.a n = A094441 n

end A094441

/-! ## A094441.P15978289913784495247

`A000045(A004736(n+1))/A176346(n)*A176348(n)`
-/

namespace A094441.P15978289913784495247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A004736 (n + 1)).toNat : ℚ) / (A176346 n : ℚ) * (A176348 n : ℚ)

end

end A094441.P15978289913784495247

namespace A094441

/-- `A000045(A004736(n+1))/A176346(n)*A176348(n)` -/
def P15978289913784495247.Spec : Prop :=
  ∀ n, P15978289913784495247.a n = (A094441 n : ℚ)

end A094441

/-!
# A094442: Triangular array T(n,k) = Fibonacci(n+2-k)*C(n,k), 0 <= k <= n.

The programs for A094442, the canonical program `A094442.P2673208053571215716` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094442 has offset 0).

The definition of A094442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094442.P2609999105334813517

`A171731(n)+A094441(n)`
-/

namespace A094442.P2609999105334813517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171731 n + A094441 n

end

end A094442.P2609999105334813517

namespace A094442

/-- `A171731(n)+A094441(n)` -/
def P2609999105334813517.Spec : Prop :=
  ∀ n, P2609999105334813517.a n = A094442 n

end A094442

/-! ## A094442.P1728820620342927160

`A094443(n)-A094441(n)`
-/

namespace A094442.P1728820620342927160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094443 n - A094441 n

end

end A094442.P1728820620342927160

namespace A094442

/-- `A094443(n)-A094441(n)` -/
def P1728820620342927160.Spec : Prop :=
  ∀ n, P1728820620342927160.a n = A094442 n

end A094442

/-! ## A094442.P13108281876409998543

`A094444(n)-A094443(n)`
-/

namespace A094442.P13108281876409998543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094444 n - A094443 n

end

end A094442.P13108281876409998543

namespace A094442

/-- `A094444(n)-A094443(n)` -/
def P13108281876409998543.Spec : Prop :=
  ∀ n, P13108281876409998543.a n = A094442 n

end A094442

/-! ## A094442.P2673208053571215716

`A007318(n)*A000045(A025581(n)+2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A094442

/-- `A007318(n)*A000045(A025581(n)+2)` -/
def P2673208053571215716.Spec : Prop :=
  ∀ n, P2673208053571215716.a n = A094442 n

theorem P2673208053571215716.correct : P2673208053571215716.Spec := by
  intro n
  simp only [A094442]

end A094442

/-! ## A094442.P11503215185544193405

`A000045(A004736(n+1)+1)*A007318(n)`
-/

namespace A094442.P11503215185544193405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004736 (n + 1) + 1).toNat * A007318 n

end

end A094442.P11503215185544193405

namespace A094442

/-- `A000045(A004736(n+1)+1)*A007318(n)` -/
def P11503215185544193405.Spec : Prop :=
  ∀ n, P11503215185544193405.a n = A094442 n

end A094442

/-! ## A094442.P17841779270863136954

`A094440(n+2)+A094441(n)-A094441(n+1)`
-/

namespace A094442.P17841779270863136954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094440 (n + 2) + (A094441 n - A094441 (n + 1))

end

end A094442.P17841779270863136954

namespace A094442

/-- `A094440(n+2)+A094441(n)-A094441(n+1)` -/
def P17841779270863136954.Spec : Prop :=
  ∀ n, P17841779270863136954.a n = A094442 n

end A094442

/-! ## A094442.P8693968174661046085

`A094437(A061579(n))`
-/

namespace A094442.P8693968174661046085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094437 (A061579 n).toNat

end

end A094442.P8693968174661046085

namespace A094442

/-- `A094437(A061579(n))` -/
def P8693968174661046085.Spec : Prop :=
  ∀ n, P8693968174661046085.a n = A094442 n

end A094442

/-! ## A094442.P12547660694529268474

`A094437(A038722(n+1)-1)`
-/

namespace A094442.P12547660694529268474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094437 (A038722 (n + 1) - 1).toNat

end

end A094442.P12547660694529268474

namespace A094442

/-- `A094437(A038722(n+1)-1)` -/
def P12547660694529268474.Spec : Prop :=
  ∀ n, P12547660694529268474.a n = A094442 n

end A094442

/-! ## A094442.P7692245027219363709

`A094437(A038722(n+2))`
-/

namespace A094442.P7692245027219363709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094437 (A038722 (n + 2)).toNat

end

end A094442.P7692245027219363709

namespace A094442

/-- `A094437(A038722(n+2))` -/
def P7692245027219363709.Spec : Prop :=
  ∀ n, P7692245027219363709.a n = A094442 n

end A094442

/-!
# A094443: Triangular array T(n,k) = Fibonacci(n+3-k)*C(n,k), k=0..n, n>=0.

The programs for A094443, the canonical program `A094443.P15865139998827493558` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094443 has offset 0).

The definition of A094443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094443.P15865139998827493558

`A094442(n)+A094441(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A094443

/-- `A094442(n)+A094441(n)` -/
def P15865139998827493558.Spec : Prop :=
  ∀ n, P15865139998827493558.a n = A094443 n

theorem P15865139998827493558.correct : P15865139998827493558.Spec := by
  intro n
  simp only [A094443]

end A094443

/-! ## A094443.P7267596894174490344

`A094444(n)-A094442(n)`
-/

namespace A094443.P7267596894174490344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094444 n - A094442 n

end

end A094443.P7267596894174490344

namespace A094443

/-- `A094444(n)-A094442(n)` -/
def P7267596894174490344.Spec : Prop :=
  ∀ n, P7267596894174490344.a n = A094443 n

end A094443

/-! ## A094443.P17344040399699558550

`A171731(n)+2*A094441(n)`
-/

namespace A094443.P17344040399699558550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171731 n + 2 * A094441 n

end

end A094443.P17344040399699558550

namespace A094443

/-- `A171731(n)+2*A094441(n)` -/
def P17344040399699558550.Spec : Prop :=
  ∀ n, P17344040399699558550.a n = A094443 n

end A094443

/-! ## A094443.P12150470632392702689

`2*A094442(n)-A171731(n)`
-/

namespace A094443.P12150470632392702689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094442 n - A171731 n

end

end A094443.P12150470632392702689

namespace A094443

/-- `2*A094442(n)-A171731(n)` -/
def P12150470632392702689.Spec : Prop :=
  ∀ n, P12150470632392702689.a n = A094443 n

end A094443

/-! ## A094443.P11552663980933653577

`(A104582(n+1)+1)*A007318(n)`
-/

namespace A094443.P11552663980933653577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A104582 (n + 1) + 1) * A007318 n

end

end A094443.P11552663980933653577

namespace A094443

/-- `(A104582(n+1)+1)*A007318(n)` -/
def P11552663980933653577.Spec : Prop :=
  ∀ n, P11552663980933653577.a n = A094443 n

end A094443

/-! ## A094443.P12032557432588965511

`A000045(A004736(n+1)+2)*A007318(n)`
-/

namespace A094443.P12032557432588965511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004736 (n + 1) + 2).toNat * A007318 n

end

end A094443.P12032557432588965511

namespace A094443

/-- `A000045(A004736(n+1)+2)*A007318(n)` -/
def P12032557432588965511.Spec : Prop :=
  ∀ n, P12032557432588965511.a n = A094443 n

end A094443

/-! ## A094443.P9118098043095216201

`A094438(A061579(n))`
-/

namespace A094443.P9118098043095216201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094438 (A061579 n).toNat

end

end A094443.P9118098043095216201

namespace A094443

/-- `A094438(A061579(n))` -/
def P9118098043095216201.Spec : Prop :=
  ∀ n, P9118098043095216201.a n = A094443 n

end A094443

/-! ## A094443.P15549458897314853402

`A094438(A038722(n+1)-1)`
-/

namespace A094443.P15549458897314853402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094438 (A038722 (n + 1) - 1).toNat

end

end A094443.P15549458897314853402

namespace A094443

/-- `A094438(A038722(n+1)-1)` -/
def P15549458897314853402.Spec : Prop :=
  ∀ n, P15549458897314853402.a n = A094443 n

end A094443

/-! ## A094443.P5783254747340546336

`A094438(A038722(n+2))`
-/

namespace A094443.P5783254747340546336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094438 (A038722 (n + 2)).toNat

end

end A094443.P5783254747340546336

namespace A094443

/-- `A094438(A038722(n+2))` -/
def P5783254747340546336.Spec : Prop :=
  ∀ n, P5783254747340546336.a n = A094443 n

end A094443

/-!
# A094444: Triangular array T(n,k) = Fibonacci(n+4-k)*C(n,k), k=0..n, n>=0.

The programs for A094444, the canonical program `A094444.P11066417991049071357` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094444 has offset 0).

The definition of A094444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094444.P11066417991049071357

`A094443(n)+A094442(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A094444

/-- `A094443(n)+A094442(n)` -/
def P11066417991049071357.Spec : Prop :=
  ∀ n, P11066417991049071357.a n = A094444 n

theorem P11066417991049071357.correct : P11066417991049071357.Spec := by
  intro n
  simp only [A094444]

end A094444

/-! ## A094444.P10687287883277474841

`A094441(n)+2*A094442(n)`
-/

namespace A094444.P10687287883277474841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094441 n + 2 * A094442 n

end

end A094444.P10687287883277474841

namespace A094444

/-- `A094441(n)+2*A094442(n)` -/
def P10687287883277474841.Spec : Prop :=
  ∀ n, P10687287883277474841.a n = A094444 n

end A094444

/-! ## A094444.P13138038284801180988

`2*A094443(n)-A094441(n)`
-/

namespace A094444.P13138038284801180988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094443 n - A094441 n

end

end A094444.P13138038284801180988

namespace A094444

/-- `2*A094443(n)-A094441(n)` -/
def P13138038284801180988.Spec : Prop :=
  ∀ n, P13138038284801180988.a n = A094444 n

end A094444

/-! ## A094444.P5423918317805970215

`A007318(n)*A000045(A025581(n)+4)`
-/

namespace A094444.P5423918317805970215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000045 (A025581 n + 4).toNat

end

end A094444.P5423918317805970215

namespace A094444

/-- `A007318(n)*A000045(A025581(n)+4)` -/
def P5423918317805970215.Spec : Prop :=
  ∀ n, P5423918317805970215.a n = A094444 n

end A094444

/-! ## A094444.P12639279234669437310

`A094439(A061579(n))`
-/

namespace A094444.P12639279234669437310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094439 (A061579 n).toNat

end

end A094444.P12639279234669437310

namespace A094444

/-- `A094439(A061579(n))` -/
def P12639279234669437310.Spec : Prop :=
  ∀ n, P12639279234669437310.a n = A094444 n

end A094444

/-! ## A094444.P1731130637477411876

`A094439(A038722(n+1)-1)`
-/

namespace A094444.P1731130637477411876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094439 (A038722 (n + 1) - 1).toNat

end

end A094444.P1731130637477411876

namespace A094444

/-- `A094439(A038722(n+1)-1)` -/
def P1731130637477411876.Spec : Prop :=
  ∀ n, P1731130637477411876.a n = A094444 n

end A094444

/-! ## A094444.P4810239237353969210

`A094439(A038722(n+2))`
-/

namespace A094444.P4810239237353969210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094439 (A038722 (n + 2)).toNat

end

end A094444.P4810239237353969210

namespace A094444

/-- `A094439(A038722(n+2))` -/
def P4810239237353969210.Spec : Prop :=
  ∀ n, P4810239237353969210.a n = A094444 n

end A094444

/-!
# A094447: Numbers which are the sum of two positive cubes and divisible by 13.

The programs for A094447, there is no canonical definition to state claims against.
-/

/-! ## A094447.P58276907924680061

`∩[13*n, A003325(n+1)]`
-/

namespace A094447.P58276907924680061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094447.P58276907924680061

/-! ## A094447.P2130535252830200883

`∩[A003325(n+1), A008595(n)]`
-/

namespace A094447.P2130535252830200883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094447.P2130535252830200883

/-! ## A094447.P2571226379866390644

`A117358(∩[A008595(2*n), A339993(n+1)])`
-/

namespace A094447.P2571226379866390644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339993 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A094447.P2571226379866390644

/-! ## A094447.P11948253485697392105

`∩[A117358(A339993(n+1)), A008595(n)]`
-/

namespace A094447.P11948253485697392105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A339993 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094447.P11948253485697392105

/-!
# A094448: Number of indecomposable groups of order 2^n.

The programs for A094448, there is no canonical definition to state claims against.
-/

/-! ## A094448.P1735917000090613092

`A090751(2^n)`
-/

namespace A094448.P1735917000090613092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090751 (2 ^ n)

end

end A094448.P1735917000090613092

/-! ## A094448.P7375196191777184704

`and(-1, A090751(A000079(n)))`
-/

namespace A094448.P7375196191777184704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A090751 (A000079 n).toNat)

end

end A094448.P7375196191777184704

/-! ## A094448.P1414772182889052647

`A090751(A000079(n))+A025443(n)`
-/

namespace A094448.P1414772182889052647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090751 (A000079 n).toNat + A025443 n

end

end A094448.P1414772182889052647

/-! ## A094448.P1446975594812685317

`A090751(A000079(n))*A224697(n)`
-/

namespace A094448.P1446975594812685317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090751 (A000079 n).toNat * A224697 n

end

end A094448.P1446975594812685317

/-!
# A094449: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n and having sum of pyramid heights equal to k.

The programs for A094449, there is no canonical definition to state claims against.
-/

/-! ## A094449.P13461980571947430049

`A192396(n+2)^A300820(A000079(n))`
-/

namespace A094449.P13461980571947430049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192396 (n + 2) : ℚ) ^ (A300820 (A000079 n).toNat : ℤ)

end

end A094449.P13461980571947430049

/-! ## A094449.P6769721189377190068

`A192396(n+2)^A300820(A007088(2*n+1))`
-/

namespace A094449.P6769721189377190068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192396 (n + 2) : ℚ) ^ (A300820 (A007088 (2 * n + 1)).toNat : ℤ)

end

end A094449.P6769721189377190068

/-! ## A094449.P12901574414365667996

`A121465(A055646(n))+char[11]`
-/

namespace A094449.P12901574414365667996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121465 (A055646 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A094449.P12901574414365667996

/-! ## A094449.P8099110857139173707

`A001222(A085058(n)^A121465(n))`
-/

namespace A094449.P8099110857139173707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A085058 n : ℚ) ^ (A121465 n : ℤ))).toNat

end

end A094449.P8099110857139173707

/-! ## A094449.P3786585086853544761

`A225901(A011782(n))%A200082(n+3)`
-/

namespace A094449.P3786585086853544761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225901 (A011782 n).toNat) (A200082 (n + 3))

end

end A094449.P3786585086853544761

/-!
# A094451: a(n) = A033485(n) modulo 3.

The programs for A094451, the canonical program `A094451.P11549358343079505487` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094451 has offset 1).

The definition of A094451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094451.P11549358343079505487

`(a(floor((n-1)/2))+a(n-1))%3` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A094451

/-- `(a(floor((n-1)/2))+a(n-1))%3` -/
def P11549358343079505487.Spec : Prop :=
  ∀ n, (P11549358343079505487.a n : ℤ) = A094451 (n + 1)

theorem P11549358343079505487.correct : P11549358343079505487.Spec := by
  intro n
  simp only [A094451, Nat.add_sub_cancel]

end A094451

/-! ## A094451.P13032773794166070385

`A033485(n+1)%3`
-/

namespace A094451.P13032773794166070385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033485 (n + 1)) 3

end

end A094451.P13032773794166070385

namespace A094451

/-- `A033485(n+1)%3` -/
def P13032773794166070385.Spec : Prop :=
  ∀ n, P13032773794166070385.a n = A094451 (n + 1)

end A094451

/-! ## A094451.P1419610874856847240

`(2*A000123(n+1))%3`
-/

namespace A094451.P1419610874856847240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A000123 (n + 1)) 3

end

end A094451.P1419610874856847240

namespace A094451

/-- `(2*A000123(n+1))%3` -/
def P1419610874856847240.Spec : Prop :=
  ∀ n, P1419610874856847240.a n = A094451 (n + 1)

end A094451

/-! ## A094451.P4512263619085348298

`Δ[A022905(n+1)/3]%3`
-/

namespace A094451.P4512263619085348298
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022905 (n + 1) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)) 3

end

end A094451.P4512263619085348298

namespace A094451

/-- `Δ[A022905(n+1)/3]%3` -/
def P4512263619085348298.Spec : Prop :=
  ∀ n, P4512263619085348298.a n = A094451 (n + 1)

end A094451

/-! ## A094451.P8435081821669134531

`A040039(2*n)%3`
-/

namespace A094451.P8435081821669134531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040039 (2 * n)) 3

end

end A094451.P8435081821669134531

namespace A094451

/-- `A040039(2*n)%3` -/
def P8435081821669134531.Spec : Prop :=
  ∀ n, P8435081821669134531.a n = A094451 (n + 1)

end A094451

/-! ## A094451.P9328174005494304198

`Δ[A018819(4*n+2)]%3`
-/

namespace A094451.P9328174005494304198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A094451.P9328174005494304198

namespace A094451

/-- `Δ[A018819(4*n+2)]%3` -/
def P9328174005494304198.Spec : Prop :=
  ∀ n, P9328174005494304198.a n = A094451 (n + 1)

end A094451

/-! ## A094451.P11009808382315289058

`abs(A000123(n+1)-(A001339(n)+2)-n)%3`
-/

namespace A094451.P11009808382315289058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A000123 (n + 1) - (A001339 n + 2) - (n : ℤ)| 3

end

end A094451.P11009808382315289058

namespace A094451

/-- `abs(A000123(n+1)-(A001339(n)+2)-n)%3` -/
def P11009808382315289058.Spec : Prop :=
  ∀ n, P11009808382315289058.a n = A094451 (n + 1)

end A094451

/-! ## A094451.P15945232221143991133

`A010872(A033485(n+1))`
-/

namespace A094451.P15945232221143991133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A033485 (n + 1)).toNat

end

end A094451.P15945232221143991133

namespace A094451

/-- `A010872(A033485(n+1))` -/
def P15945232221143991133.Spec : Prop :=
  ∀ n, P15945232221143991133.a n = A094451 (n + 1)

end A094451

/-! ## A094451.P10887731097110855843

`A080425(A000123(n+1))`
-/

namespace A094451.P10887731097110855843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A000123 (n + 1)).toNat

end

end A094451.P10887731097110855843

namespace A094451

/-- `A080425(A000123(n+1))` -/
def P10887731097110855843.Spec : Prop :=
  ∀ n, P10887731097110855843.a n = A094451 (n + 1)

end A094451

/-! ## A094451.P7782877098653741893

`A060572(A102378(n+1))`
-/

namespace A094451.P7782877098653741893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060572 (A102378 (n + 1)).toNat

end

end A094451.P7782877098653741893

namespace A094451

/-- `A060572(A102378(n+1))` -/
def P7782877098653741893.Spec : Prop :=
  ∀ n, P7782877098653741893.a n = A094451 (n + 1)

end A094451

/-!
# A094453: Numbers k such that binomial(2*k, k)/(k+2) is not an integer.

The programs for A094453, there is no canonical definition to state claims against.
-/

/-! ## A094453.P8882933301823712750

`A019469(n+2)-2`
-/

namespace A094453.P8882933301823712750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019469 (n + 2) - 2

end

end A094453.P8882933301823712750

/-! ## A094453.P18073573730551040863

`∑[abs(Δ[A019469(n+1)])]`
-/

namespace A094453.P18073573730551040863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019469 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094453.P18073573730551040863

/-! ## A094453.P2669852666561691966

`∑[A000027(Δ[A019469(n+1)])]`
-/

namespace A094453.P2669852666561691966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019469 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094453.P2669852666561691966

/-! ## A094453.P13841975015557760690

`lt[acot(n), A067770(n)]`
-/

namespace A094453.P13841975015557760690
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067770 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A094453.P13841975015557760690

/-! ## A094453.P9178536856431209935

`record[(n+1)%(A065344(n+1)+1)]`
-/

namespace A094453.P9178536856431209935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A065344 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094453.P9178536856431209935

/-! ## A094453.P6745122004732648063

`A023444(A019469(n+2))`
-/

namespace A094453.P6745122004732648063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A019469 (n + 2)).toNat

end

end A094453.P6745122004732648063

/-! ## A094453.P1680886510695792559

`lt[A000045(C(2, n+2)), A067770(n)]`
-/

namespace A094453.P1680886510695792559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067770 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094453.P1680886510695792559

/-! ## A094453.P11343593610438290133

`eq[char[A019470(n+1)-2], A000007(n)]`
-/

namespace A094453.P11343593610438290133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019470 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A094453.P11343593610438290133

/-! ## A094453.P8190199116595948274

`eq[A000007(n), A000007(A067770(n))]`
-/

namespace A094453.P8190199116595948274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A067770 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094453.P8190199116595948274

/-! ## A094453.P11288833553005565635

`lt[A347697(n), n*A067770(n)]`
-/

namespace A094453.P11288833553005565635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A067770 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094453.P11288833553005565635

/-! ## A094453.P17549345525136899388

`lt[A067770(2*n+1), A067770(n)²]`
-/

namespace A094453.P17549345525136899388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067770 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067770 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094453.P17549345525136899388

/-!
# A094456: Triangle T(n,k), 0<=k<=n, read by rows; given by [0, 1, 0, 2, 0, 3, 0, 4, 0, 5, 0, ...] DELTA [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, ...] where DELTA is the operator defined in A084938.

The programs for A094456, there is no canonical definition to state claims against.
-/

/-! ## A094456.P886008250938892280

`A100910(A038227(n))+A086810(n)`
-/

namespace A094456.P886008250938892280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A038227 n).toNat + A086810 n

end

end A094456.P886008250938892280

/-! ## A094456.P17804910658927108575

`A124764(A326474(n))+A086810(n)`
-/

namespace A094456.P17804910658927108575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (A326474 n).toNat + A086810 n

end

end A094456.P17804910658927108575

/-! ## A094456.P17998798912267159432

`A166698(A259180(n+1))+A086810(n)`
-/

namespace A094456.P17998798912267159432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A259180 (n + 1)).toNat + A086810 n

end

end A094456.P17998798912267159432

/-! ## A094456.P5748728856998883354

`A086810(n)+A020987(A369851(n+1))`
-/

namespace A094456.P5748728856998883354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 n + A020987 (A369851 (n + 1)).toNat

end

end A094456.P5748728856998883354

/-! ## A094456.P16599587980832039805

`A163352(A287315(n))`
-/

namespace A094456.P16599587980832039805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A287315 n).toNat

end

end A094456.P16599587980832039805

/-!
# A094460: a(n) is the third term in Euclid-Mullin (EM) prime sequence initiated with n-th prime.

The programs for A094460, there is no canonical definition to state claims against.
-/

/-! ## A094460.P4725448998828814281

`A023592(ceil(acot(n)+n))`
-/

namespace A094460.P4725448998828814281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023592 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A094460.P4725448998828814281

/-! ## A094460.P1951801473511715965

`A020639(or(3, 2*p?[xor(1, n)]))`
-/

namespace A094460.P1951801473511715965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lor 3 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A094460.P1951801473511715965

/-! ## A094460.P786950010852150223

`A023592(comp[2*(n+1)]+2-n)`
-/

namespace A094460.P786950010852150223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023592 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (2 - (n : ℤ))).toNat

end

end A094460.P786950010852150223

/-! ## A094460.P12823542048119032635

`A020639(2*(p?[abs(2*n-3)]+1)-1)`
-/

namespace A094460.P12823542048119032635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 3|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1) - 1).toNat

end

end A094460.P12823542048119032635

/-! ## A094460.P7732349465629640495

`A125255(A130291(n+1))`
-/

namespace A094460.P7732349465629640495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125255 (A130291 (n + 1)).toNat

end

end A094460.P7732349465629640495

/-! ## A094460.P4934153545781958836

`A090368(A175216(n+1))`
-/

namespace A094460.P4934153545781958836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (A175216 (n + 1)).toNat

end

end A094460.P4934153545781958836

/-! ## A094460.P9941178484061725509

`A020639(or(2, A072055(n+1)))`
-/

namespace A094460.P9941178484061725509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 2 (A072055 (n + 1))).toNat

end

end A094460.P9941178484061725509

/-! ## A094460.P8922921981555416184

`A023592(n+1)+A000038(n)`
-/

namespace A094460.P8922921981555416184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023592 (n + 1) + A000038 n

end

end A094460.P8922921981555416184

/-!
# A094463: a(n) is the 7th term in Euclid-Mullin (EM) prime sequence initiated with n-th prime.

The programs for A094463, there is no canonical definition to state claims against.
-/

/-! ## A094463.P3686180262296179178

`A006512(A003066(n+4)^A139601(n))`
-/

namespace A094463.P3686180262296179178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (SequenceMachineLib.roundAway ((A003066 (n + 4) : ℚ) ^ (A139601 n : ℤ))).toNat

end

end A094463.P3686180262296179178

/-!
# A094464: Least initial value for a Euclid/Mullin sequence whose 3rd term (= least prime divisor of 1+2p) equals the n-th prime. prime(1)=2 is never a third term, so offset=2.

The programs for A094464, there is no canonical definition to state claims against.
-/

/-! ## A094464.P7276751179697688678

`p?[A333884(A276599(n+1))]`
-/

namespace A094464.P7276751179697688678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (A276599 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094464.P7276751179697688678

/-!
# A094469: Numbers k such that sum of 11th powers of divisors of k is divisible by the square of Euler-phi of k.

The programs for A094469, there is no canonical definition to state claims against.
-/

/-! ## A094469.P14850336712435574031

`A019565(n)*A255405(A084954(n+1))`
-/

namespace A094469.P14850336712435574031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n * A255405 (A084954 (n + 1)).toNat

end

end A094469.P14850336712435574031

/-! ## A094469.P13240121277120519125

`lcm(A053438(n), A146466(A053437(n+1)))`
-/

namespace A094469.P13240121277120519125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053438 n) (A146466 (A053437 (n + 1)).toNat)

end

end A094469.P13240121277120519125

/-!
# A094470: Numbers k such that phi(k) | sigma_18(k).

The programs for A094470, there is no canonical definition to state claims against.
-/

/-! ## A094470.P12830665433003925935

`A015764(A043315(n+1))`
-/

namespace A094470.P12830665433003925935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015764 (A043315 (n + 1)).toNat

end

end A094470.P12830665433003925935

/-! ## A094470.P1131165450205769192

`A015764(A044912(n+1))`
-/

namespace A094470.P1131165450205769192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015764 (A044912 (n + 1)).toNat

end

end A094470.P1131165450205769192

/-! ## A094470.P8562084280198918127

`A015764(A055649(n+1))`
-/

namespace A094470.P8562084280198918127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015764 (A055649 (n + 1)).toNat

end

end A094470.P8562084280198918127

/-! ## A094470.P5769672262982358456

`A015764(A061378(n+1))`
-/

namespace A094470.P5769672262982358456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015764 (A061378 (n + 1)).toNat

end

end A094470.P5769672262982358456

/-! ## A094470.P13783382177434025917

`A015764(A062399(n+1))`
-/

namespace A094470.P13783382177434025917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015764 (A062399 (n + 1)).toNat

end

end A094470.P13783382177434025917

/-!
# A094471: a(n) = Sum_{(n - k)|n, 0 <= k <= n} k.

The programs for A094471, the canonical program `A094471.P10880822235094612413` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094471 has offset 1).

The definition of A094471 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A094471.P10880822235094612413

`A038040(n+1)-A000203(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A094471

/-- `A038040(n+1)-A000203(n+1)` -/
def P10880822235094612413.Spec : Prop :=
  ∀ n, P10880822235094612413.a n = A094471 (n + 1)

theorem P10880822235094612413.correct : P10880822235094612413.Spec := by
  intro n
  simp only [A094471, Nat.add_sub_cancel]

end A094471

/-! ## A094471.P6599368859436369399

`(n+1)*A000005(n+1)-A000203(n+1)`
-/

namespace A094471.P6599368859436369399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (n + 1) - A000203 (n + 1)

end

end A094471.P6599368859436369399

namespace A094471

/-- `(n+1)*A000005(n+1)-A000203(n+1)` -/
def P6599368859436369399.Spec : Prop :=
  ∀ n, P6599368859436369399.a n = A094471 (n + 1)

end A094471

/-! ## A094471.P12570191623890715756

`∑{d}[n+1, 1-#+n]`
-/

namespace A094471.P12570191623890715756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ) + (n : ℤ))

end

end A094471.P12570191623890715756

namespace A094471

/-- `∑{d}[n+1, 1-#+n]` -/
def P12570191623890715756.Spec : Prop :=
  ∀ n, P12570191623890715756.a n = A094471 (n + 1)

end A094471

/-! ## A094471.P14093674282935096303

`∑[n]-A362625(n+1)`
-/

namespace A094471.P14093674282935096303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A362625 (n + 1)

end

end A094471.P14093674282935096303

namespace A094471

/-- `∑[n]-A362625(n+1)` -/
def P14093674282935096303.Spec : Prop :=
  ∀ n, P14093674282935096303.a n = A094471 (n + 1)

end A094471

/-! ## A094471.P9505716555696976742

`(n+1)²-A344483(n+1)`
-/

namespace A094471.P9505716555696976742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A344483 (n + 1)

end

end A094471.P9505716555696976742

namespace A094471

/-- `(n+1)²-A344483(n+1)` -/
def P9505716555696976742.Spec : Prop :=
  ∀ n, P9505716555696976742.a n = A094471 (n + 1)

end A094471

/-! ## A094471.P5841248569610204501

`(n+1)*∏{e}[n+1, #+1]-(A001065(n+1)+1+n)`
-/

namespace A094471.P5841248569610204501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℕ) : ℤ) - (A001065 (n + 1) + 1 + (n : ℤ))

end

end A094471.P5841248569610204501

namespace A094471

/-- `(n+1)*∏{e}[n+1, #+1]-(A001065(n+1)+1+n)` -/
def P5841248569610204501.Spec : Prop :=
  ∀ n, P5841248569610204501.a n = A094471 (n + 1)

end A094471

/-! ## A094471.P4877755189320484172

`(n+1)*∏{e}[n+1, #+1]-(A155085(n+1)-(n+1))`
-/

namespace A094471.P4877755189320484172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℕ) : ℤ) - (A155085 (n + 1) - (n + 1 : ℤ))

end

end A094471.P4877755189320484172

namespace A094471

/-- `(n+1)*∏{e}[n+1, #+1]-(A155085(n+1)-(n+1))` -/
def P4877755189320484172.Spec : Prop :=
  ∀ n, P4877755189320484172.a n = A094471 (n + 1)

end A094471

/-! ## A094471.P608279748801097461

`(n+1)*∏{e}[n+1, #+1]-A064987(n+1)/(n+1)`
-/

namespace A094471.P608279748801097461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℕ) : ℚ) - (A064987 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A094471.P608279748801097461

namespace A094471

/-- `(n+1)*∏{e}[n+1, #+1]-A064987(n+1)/(n+1)` -/
def P608279748801097461.Spec : Prop :=
  ∀ n, P608279748801097461.a n = (A094471 (n + 1) : ℚ)

end A094471

/-! ## A094471.P1925167448429307662

`A001318(n)-A297053(n+1)`
-/

namespace A094471.P1925167448429307662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n - A297053 (n + 1)

end

end A094471.P1925167448429307662

namespace A094471

/-- `A001318(n)-A297053(n+1)` -/
def P1925167448429307662.Spec : Prop :=
  ∀ n, P1925167448429307662.a n = A094471 (n + 1)

end A094471

/-! ## A094471.P18134103081411605388

`A024920(n+1)-A355947(n)`
-/

namespace A094471.P18134103081411605388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024920 (n + 1) - A355947 n

end

end A094471.P18134103081411605388

namespace A094471

/-- `A024920(n+1)-A355947(n)` -/
def P18134103081411605388.Spec : Prop :=
  ∀ n, P18134103081411605388.a n = A094471 (n + 1)

end A094471

/-! ## A094471.P16935109948043633874

`A094472(n+1)+A000010(n+1)`
-/

namespace A094471.P16935109948043633874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094472 (n + 1) + A000010 (n + 1)

end

end A094471.P16935109948043633874

namespace A094471

/-- `A094472(n+1)+A000010(n+1)` -/
def P16935109948043633874.Spec : Prop :=
  ∀ n, P16935109948043633874.a n = A094471 (n + 1)

end A094471

/-! ## A094471.P18365543177129577698

`A374969(n+1)+A065608(n+1)`
-/

namespace A094471.P18365543177129577698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374969 (n + 1) + A065608 (n + 1)

end

end A094471.P18365543177129577698

namespace A094471

/-- `A374969(n+1)+A065608(n+1)` -/
def P18365543177129577698.Spec : Prop :=
  ∀ n, P18365543177129577698.a n = A094471 (n + 1)

end A094471

/-! ## A094471.P13860516152357604014

`A081307(n+1)-A000005(n+1)`
-/

namespace A094471.P13860516152357604014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081307 (n + 1) - A000005 (n + 1)

end

end A094471.P13860516152357604014

namespace A094471

/-- `A081307(n+1)-A000005(n+1)` -/
def P13860516152357604014.Spec : Prop :=
  ∀ n, P13860516152357604014.a n = A094471 (n + 1)

end A094471

/-! ## A094471.P15064225524883520371

`A083271(n+1)-A088580(n+1)`
-/

namespace A094471.P15064225524883520371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083271 (n + 1) - A088580 (n + 1)

end

end A094471.P15064225524883520371

namespace A094471

/-- `A083271(n+1)-A088580(n+1)` -/
def P15064225524883520371.Spec : Prop :=
  ∀ n, P15064225524883520371.a n = A094471 (n + 1)

end A094471

/-! ## A094471.P9439881989562274454

`A152211(n+1)-A074400(n+1)`
-/

namespace A094471.P9439881989562274454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152211 (n + 1) - A074400 (n + 1)

end

end A094471.P9439881989562274454

namespace A094471

/-- `A152211(n+1)-A074400(n+1)` -/
def P9439881989562274454.Spec : Prop :=
  ∀ n, P9439881989562274454.a n = A094471 (n + 1)

end A094471

/-! ## A094471.P44620263529090278

`A086666(n+1)-A189835(n+1)`
-/

namespace A094471.P44620263529090278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086666 (n + 1) - A189835 (n + 1)

end

end A094471.P44620263529090278

namespace A094471

/-- `A086666(n+1)-A189835(n+1)` -/
def P44620263529090278.Spec : Prop :=
  ∀ n, P44620263529090278.a n = A094471 (n + 1)

end A094471

/-! ## A094471.P7177175805317932951

`A349680(n+1)-A049820(n+1)`
-/

namespace A094471.P7177175805317932951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349680 (n + 1) - A049820 (n + 1)

end

end A094471.P7177175805317932951

namespace A094471

/-- `A349680(n+1)-A049820(n+1)` -/
def P7177175805317932951.Spec : Prop :=
  ∀ n, P7177175805317932951.a n = A094471 (n + 1)

end A094471

/-! ## A094471.P5623272704285455403

`A345741(n+1)-A137319(n+1)`
-/

namespace A094471.P5623272704285455403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345741 (n + 1) - A137319 (n + 1)

end

end A094471.P5623272704285455403

namespace A094471

/-- `A345741(n+1)-A137319(n+1)` -/
def P5623272704285455403.Spec : Prop :=
  ∀ n, P5623272704285455403.a n = A094471 (n + 1)

end A094471

/-! ## A094471.P15526880633947229105

`A334136(n+1)-A330866(n+1)`
-/

namespace A094471.P15526880633947229105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334136 (n + 1) - A330866 (n + 1)

end

end A094471.P15526880633947229105

namespace A094471

/-- `A334136(n+1)-A330866(n+1)` -/
def P15526880633947229105.Spec : Prop :=
  ∀ n, P15526880633947229105.a n = A094471 (n + 1)

end A094471

/-! ## A094471.P12475895718736812499

`A337297(n+1)-A343824(n+1)`
-/

namespace A094471.P12475895718736812499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337297 (n + 1) - A343824 (n + 1)

end

end A094471.P12475895718736812499

namespace A094471

/-- `A337297(n+1)-A343824(n+1)` -/
def P12475895718736812499.Spec : Prop :=
  ∀ n, P12475895718736812499.a n = A094471 (n + 1)

end A094471

/-!
# A094472: a(n) = n*tau(n) - sigma(n) - phi(n), where tau(n) is the number of divisors of n.

The programs for A094472, the canonical program `A094472.P13859718929151834946` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094472 has offset 1).

The definition of A094472 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A094472.P13859718929151834946

`(n+1)*A000005(n+1)-A000203(n+1)-A000010(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A094472

/-- `(n+1)*A000005(n+1)-A000203(n+1)-A000010(n+1)` -/
def P13859718929151834946.Spec : Prop :=
  ∀ n, P13859718929151834946.a n = A094472 (n + 1)

theorem P13859718929151834946.correct : P13859718929151834946.Spec := by
  intro n
  simp only [A094472, Nat.add_sub_cancel]

end A094472

/-! ## A094472.P8900352594812924820

`∑{d}[n+1, n+1-#]-A000010(n+1)`
-/

namespace A094472.P8900352594812924820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℤ) - (d : ℤ)) - A000010 (n + 1)

end

end A094472.P8900352594812924820

namespace A094472

/-- `∑{d}[n+1, n+1-#]-A000010(n+1)` -/
def P8900352594812924820.Spec : Prop :=
  ∀ n, P8900352594812924820.a n = A094472 (n + 1)

end A094472

/-! ## A094472.P10895422135540130027

`A374969(n+1)+A046520(n+1)`
-/

namespace A094472.P10895422135540130027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374969 (n + 1) + A046520 (n + 1)

end

end A094472.P10895422135540130027

namespace A094472

/-- `A374969(n+1)+A046520(n+1)` -/
def P10895422135540130027.Spec : Prop :=
  ∀ n, P10895422135540130027.a n = A094472 (n + 1)

end A094472

/-! ## A094472.P13168855910446636340

`A094471(n+1)-A000010(n+1)`
-/

namespace A094472.P13168855910446636340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094471 (n + 1) - A000010 (n + 1)

end

end A094472.P13168855910446636340

namespace A094472

/-- `A094471(n+1)-A000010(n+1)` -/
def P13168855910446636340.Spec : Prop :=
  ∀ n, P13168855910446636340.a n = A094472 (n + 1)

end A094472

/-! ## A094472.P15950184583244624711

`A038040(n+1)-A065387(n+1)`
-/

namespace A094472.P15950184583244624711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - A065387 (n + 1)

end

end A094472.P15950184583244624711

namespace A094472

/-- `A038040(n+1)-A065387(n+1)` -/
def P15950184583244624711.Spec : Prop :=
  ∀ n, P15950184583244624711.a n = A094472 (n + 1)

end A094472

/-! ## A094472.P5330188970798968953

`A081307(n+1)-A061468(n+1)`
-/

namespace A094472.P5330188970798968953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081307 (n + 1) - A061468 (n + 1)

end

end A094472.P5330188970798968953

namespace A094472

/-- `A081307(n+1)-A061468(n+1)` -/
def P5330188970798968953.Spec : Prop :=
  ∀ n, P5330188970798968953.a n = A094472 (n + 1)

end A094472

/-! ## A094472.P4958810522071065769

`A258434(n+1)-A344483(n+1)`
-/

namespace A094472.P4958810522071065769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258434 (n + 1) - A344483 (n + 1)

end

end A094472.P4958810522071065769

namespace A094472

/-- `A258434(n+1)-A344483(n+1)` -/
def P4958810522071065769.Spec : Prop :=
  ∀ n, P4958810522071065769.a n = A094472 (n + 1)

end A094472

/-! ## A094472.P11692983946694950073

`n*A000005(n+1)-A255385(n+1)`
-/

namespace A094472.P11692983946694950073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000005 (n + 1) - A255385 (n + 1)

end

end A094472.P11692983946694950073

namespace A094472

/-- `n*A000005(n+1)-A255385(n+1)` -/
def P11692983946694950073.Spec : Prop :=
  ∀ n, P11692983946694950073.a n = A094472 (n + 1)

end A094472

/-! ## A094472.P3002228383945560246

`(n+1)*Δ[A006218(n)]-A065387(n+1)`
-/

namespace A094472.P3002228383945560246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) - A065387 (n + 1)

end

end A094472.P3002228383945560246

namespace A094472

/-- `(n+1)*Δ[A006218(n)]-A065387(n+1)` -/
def P3002228383945560246.Spec : Prop :=
  ∀ n, P3002228383945560246.a n = A094472 (n + 1)

end A094472

/-! ## A094472.P11223933576739570316

`(n+1)*Δ[A054519(n)]-A065387(n+1)`
-/

namespace A094472.P11223933576739570316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) - A065387 (n + 1)

end

end A094472.P11223933576739570316

namespace A094472

/-- `(n+1)*Δ[A054519(n)]-A065387(n+1)` -/
def P11223933576739570316.Spec : Prop :=
  ∀ n, P11223933576739570316.a n = A094472 (n + 1)

end A094472

/-! ## A094472.P11918830629202726093

`(n+1)*A000005(n+1)-A065387(n+1)`
-/

namespace A094472.P11918830629202726093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (n + 1) - A065387 (n + 1)

end

end A094472.P11918830629202726093

namespace A094472

/-- `(n+1)*A000005(n+1)-A065387(n+1)` -/
def P11918830629202726093.Spec : Prop :=
  ∀ n, P11918830629202726093.a n = A094472 (n + 1)

end A094472

/-! ## A094472.P3889588239128314042

`(n+1)*(∑{d}[n+1, #+1]-A000203(n+1))-A065387(n+1)`
-/

namespace A094472.P3889588239128314042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1)) - A065387 (n + 1)

end

end A094472.P3889588239128314042

namespace A094472

/-- `(n+1)*(∑{d}[n+1, #+1]-A000203(n+1))-A065387(n+1)` -/
def P3889588239128314042.Spec : Prop :=
  ∀ n, P3889588239128314042.a n = A094472 (n + 1)

end A094472

/-! ## A094472.P10006326276151983170

`A038040(n+1)-(A000203(n+1)+A000010(n+1))`
-/

namespace A094472.P10006326276151983170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - (A000203 (n + 1) + A000010 (n + 1))

end

end A094472.P10006326276151983170

namespace A094472

/-- `A038040(n+1)-(A000203(n+1)+A000010(n+1))` -/
def P10006326276151983170.Spec : Prop :=
  ∀ n, P10006326276151983170.a n = A094472 (n + 1)

end A094472

/-! ## A094472.P13586131268547758693

`A081307(n+1)-(A000010(n+1)+A000005(n+1))`
-/

namespace A094472.P13586131268547758693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081307 (n + 1) - (A000010 (n + 1) + A000005 (n + 1))

end

end A094472.P13586131268547758693

namespace A094472

/-- `A081307(n+1)-(A000010(n+1)+A000005(n+1))` -/
def P13586131268547758693.Spec : Prop :=
  ∀ n, P13586131268547758693.a n = A094472 (n + 1)

end A094472

/-! ## A094472.P5062733379596675913

`A000203(n+1)+A094471(n+1)-A065387(n+1)`
-/

namespace A094472.P5062733379596675913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A094471 (n + 1) - A065387 (n + 1))

end

end A094472.P5062733379596675913

namespace A094472

/-- `A000203(n+1)+A094471(n+1)-A065387(n+1)` -/
def P5062733379596675913.Spec : Prop :=
  ∀ n, P5062733379596675913.a n = A094472 (n + 1)

end A094472

/-! ## A094472.P18173514924673757410

`(n+1)*∑{d}[n+1, A000040(A000040(#))%2]-A065387(n+1)`
-/

namespace A094472.P18173514924673757410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000040 (A000040 d).toNat) 2) - A065387 (n + 1)

end

end A094472.P18173514924673757410

namespace A094472

/-- `(n+1)*∑{d}[n+1, A000040(A000040(#))%2]-A065387(n+1)` -/
def P18173514924673757410.Spec : Prop :=
  ∀ n, P18173514924673757410.a n = A094472 (n + 1)

end A094472

/-!
# A094473: Smallest prime factor of 2^n+3^n.

The programs for A094473, there is no canonical definition to state claims against.
-/

/-! ## A094473.P11232958083230317366

`A020639(A007689(2^val(n+1, 2)))`
-/

namespace A094473.P11232958083230317366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007689 (2 ^ SequenceMachineLib.valuation (n + 1) 2)).toNat

end

end A094473.P11232958083230317366

/-! ## A094473.P6826476849240113751

`A020639(A007689(A006519(n+1)))`
-/

namespace A094473.P6826476849240113751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007689 (A006519 (n + 1)).toNat).toNat

end

end A094473.P6826476849240113751

/-! ## A094473.P8752421420123040990

`A020639(A007689(A072014(n+1)))`
-/

namespace A094473.P8752421420123040990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007689 (A072014 (n + 1)).toNat).toNat

end

end A094473.P8752421420123040990

/-! ## A094473.P7599599844907885349

`A020639(A007689(A080079(n+1)))`
-/

namespace A094473.P7599599844907885349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007689 (A080079 (n + 1)).toNat).toNat

end

end A094473.P7599599844907885349

/-! ## A094473.P3981594956867315341

`A020639(A007689(A108738(n+1)))`
-/

namespace A094473.P3981594956867315341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007689 (A108738 (n + 1)).toNat).toNat

end

end A094473.P3981594956867315341

/-!
# A094474: a(n) is the largest prime factor of 2^n + 3^n.

The programs for A094474, the canonical program `A094474.P5728663512082856571` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094474 has offset 1).

The definition of A094474 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A094474.P5728663512082856571

`A006530(A007689(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A094474

/-- `A006530(A007689(n+1))` -/
def P5728663512082856571.Spec : Prop :=
  ∀ n, P5728663512082856571.a n = A094474 (n + 1)

theorem P5728663512082856571.correct : P5728663512082856571.Spec := by
  intro n
  simp only [A094474, Nat.add_sub_cancel]

end A094474

/-! ## A094474.P8063994812622115058

`A006530(A109325(2*(n+1)))`
-/

namespace A094474.P8063994812622115058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A109325 (2 * (n + 1))).toNat

end

end A094474.P8063994812622115058

namespace A094474

/-- `A006530(A109325(2*(n+1)))` -/
def P8063994812622115058.Spec : Prop :=
  ∀ n, P8063994812622115058.a n = A094474 (n + 1)

end A094474

/-! ## A094474.P15352311437068062416

`A006530(2^(n+1)+3^(n+1))`
-/

namespace A094474.P15352311437068062416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 ^ (n + 1) + 3 ^ (n + 1))

end

end A094474.P15352311437068062416

namespace A094474

/-- `A006530(2^(n+1)+3^(n+1))` -/
def P15352311437068062416.Spec : Prop :=
  ∀ n, P15352311437068062416.a n = A094474 (n + 1)

end A094474

/-! ## A094474.P12709103846221565265

`or(1, A006530(A085281(n+2)))`
-/

namespace A094474.P12709103846221565265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (A085281 (n + 2)).toNat)

end

end A094474.P12709103846221565265

namespace A094474

/-- `or(1, A006530(A085281(n+2)))` -/
def P12709103846221565265.Spec : Prop :=
  ∀ n, P12709103846221565265.a n = A094474 (n + 1)

end A094474

/-! ## A094474.P4338476541869168643

`p?[A006530(A007689(n))%(7^n)]`
-/

namespace A094474.P4338476541869168643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A007689 n).toNat) (7 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094474.P4338476541869168643

namespace A094474

/-- `p?[A006530(A007689(n))%(7^n)]` -/
def P4338476541869168643.Spec : Prop :=
  ∀ n, P4338476541869168643.a n = A094474 (n + 1)

end A094474

/-!
# A094479: Primes of the form p^4 + 16 where p is also a prime.

The programs for A094479, there is no canonical definition to state claims against.
-/

/-! ## A094479.P35939846474891949

`A158361(n+1)^4+16`
-/

namespace A094479.P35939846474891949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158361 (n + 1) ^ 4 + 16

end

end A094479.P35939846474891949

/-! ## A094479.P10682247000628542125

`record[A006530(A134620(n+1))]^4+16`
-/

namespace A094479.P10682247000628542125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A134620 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 4 + 16

end

end A094479.P10682247000628542125

/-! ## A094479.P12990828378916465314

`A000583(A158361(n+1))+16`
-/

namespace A094479.P12990828378916465314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A158361 (n + 1)).toNat + 16

end

end A094479.P12990828378916465314

/-! ## A094479.P6596693580367364340

`∩[A250717(n+1), A287925(n+1)]`
-/

namespace A094479.P6596693580367364340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094479.P6596693580367364340

/-! ## A094479.P15525193775957589537

`record[A005065(A134620(n+1))]`
-/

namespace A094479.P15525193775957589537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (A134620 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094479.P15525193775957589537

/-! ## A094479.P12253352882093775942

`A351244(2*A158361(n+1))`
-/

namespace A094479.P12253352882093775942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351244 (2 * A158361 (n + 1)).toNat

end

end A094479.P12253352882093775942

/-! ## A094479.P16831220038976979860

`A351244(lcm(2, A158361(n+1)))`
-/

namespace A094479.P16831220038976979860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351244 (Int.lcm 2 (A158361 (n + 1)))

end

end A094479.P16831220038976979860

/-! ## A094479.P14780331729279704141

`A287925(A287927(n+1))`
-/

namespace A094479.P14780331729279704141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287925 (A287927 (n + 1)).toNat

end

end A094479.P14780331729279704141

/-! ## A094479.P7845549157672940318

`∑{p}[A001749(A287927(n+1)), A005065(#)]`
-/

namespace A094479.P7845549157672940318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (A287927 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A005065 p

end

end A094479.P7845549157672940318

/-!
# A094480: Unhappy primes, primes that are also unhappy numbers.

The programs for A094480, there is no canonical definition to state claims against.
-/

/-! ## A094480.P8645499203338662439

`p?[A031177(n+1)]`
-/

namespace A094480.P8645499203338662439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094480.P8645499203338662439

/-! ## A094480.P11905829242918094289

`p?[lt[1, A031176(n)]]`
-/

namespace A094480.P11905829242918094289
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A094480.P11905829242918094289

/-! ## A094480.P2879357123601669771

`p?[comp[A007770(n+1)]]`
-/

namespace A094480.P2879357123601669771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A094480.P2879357123601669771

/-! ## A094480.P5890752722255582810

`filter[A031177(n+1), A010051(#)]`
-/

namespace A094480.P5890752722255582810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A094480.P5890752722255582810

/-! ## A094480.P5753224988275999095

`filter[A031177(n+1), A080339(#)]`
-/

namespace A094480.P5753224988275999095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A094480.P5753224988275999095

/-! ## A094480.P7622248971108601370

`record[A006530(2*A031177(n+1))]`
-/

namespace A094480.P7622248971108601370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A031177 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094480.P7622248971108601370

/-! ## A094480.P6554632327336489457

`record[A006530(lcm(2, A031177(n+1)))]`
-/

namespace A094480.P6554632327336489457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (A031177 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094480.P6554632327336489457

/-! ## A094480.P10722629920818999919

`lt[(A210442(n)+1)², A031176(n)]`
-/

namespace A094480.P10722629920818999919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A210442 n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094480.P10722629920818999919

/-! ## A094480.P4102244085959937064

`∩[A000040(n+1), A031177(n+1)]`
-/

namespace A094480.P4102244085959937064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094480.P4102244085959937064

/-! ## A094480.P12974484064609571383

`∩[A008578(n+1), A031177(n+1)]`
-/

namespace A094480.P12974484064609571383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094480.P12974484064609571383

/-!
# A094485: T(n, k) = Stirling1(n+1, k) - Stirling1(n, k-1), for 1 <= k <= n. Triangle read by rows.

The programs for A094485, there is no canonical definition to state claims against.
-/

/-! ## A094485.P12650619779412792401

`∑[-char[∑[n]]]*A008275(n+1)`
-/

namespace A094485.P12650619779412792401
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A008275 (n + 1)

end

end A094485.P12650619779412792401

/-! ## A094485.P2600360004751182901

`-A002024(n+1)*A008275(n+1)`
-/

namespace A094485.P2600360004751182901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A002024 (n + 1) * A008275 (n + 1))

end

end A094485.P2600360004751182901

/-! ## A094485.P9995223097312011129

`-A002024(n+1)*A048994(comp[∑[n]])`
-/

namespace A094485.P9995223097312011129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A002024 (n + 1) * A048994 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A094485.P9995223097312011129

/-! ## A094485.P16383539578159478550

`A008275(n+1)*(A024000(comp[∑[n]])+n)`
-/

namespace A094485.P16383539578159478550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (n + 1) * (A024000 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + (n : ℤ))

end

end A094485.P16383539578159478550

/-! ## A094485.P8424259610978238587

`-A000194(2*(n+1))*A008275(n+1)`
-/

namespace A094485.P8424259610978238587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A000194 (2 * (n + 1)) * A008275 (n + 1))

end

end A094485.P8424259610978238587

/-!
# A094487: Primes p such that 2^j+p^j are primes for j=0,1,2,4.

The programs for A094487, there is no canonical definition to state claims against.
-/

/-! ## A094487.P1958730686986984143

`∩[A107312(n+1), A158361(n+1)]`
-/

namespace A094487.P1958730686986984143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094487.P1958730686986984143

/-! ## A094487.P15386458929858388018

`∩[A158361(n+1), A192794(n+1)]`
-/

namespace A094487.P15386458929858388018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094487.P15386458929858388018

/-!
# A094495: Table of binomial coefficients mod m^2, read by rows: T(m, n) = binomial(m, n) mod m^2.

The programs for A094495, the canonical program `A094495.P15303068755985020940` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094495 has offset 0).

The definition of A094495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094495.P16735519608743670270

`sqrt(A008459(n))%A028310(A003056(n))²`
-/

namespace A094495.P16735519608743670270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ))) (A028310 (A003056 n).toNat ^ 2)

end

end A094495.P16735519608743670270

namespace A094495

/-- `sqrt(A008459(n))%A028310(A003056(n))²` -/
def P16735519608743670270.Spec : Prop :=
  ∀ n, P16735519608743670270.a n = A094495 n

end A094495

/-! ## A094495.P15303068755985020940

`(A028326(n)/2)%A028310(A003056(n))²`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A094495

/-- `(A028326(n)/2)%A028310(A003056(n))²` -/
def P15303068755985020940.Spec : Prop :=
  ∀ n, P15303068755985020940.a n = A094495 n

theorem P15303068755985020940.correct : P15303068755985020940.Spec := by
  intro n
  simp only [A094495]

end A094495

/-! ## A094495.P17456065701892420636

`A007318(n)%or(A003056(n), A010054(n))²`
-/

namespace A094495.P17456065701892420636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) (Int.lor (A003056 n) (A010054 n) ^ 2)

end

end A094495.P17456065701892420636

namespace A094495

/-- `A007318(n)%or(A003056(n), A010054(n))²` -/
def P17456065701892420636.Spec : Prop :=
  ∀ n, P17456065701892420636.a n = A094495 n

end A094495

/-! ## A094495.P6519074050061855906

`A007318(n)%Δ[A110449(n)]`
-/

namespace A094495.P6519074050061855906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) (f1 (n + 1) - f1 n)

end

end A094495.P6519074050061855906

namespace A094495

/-- `A007318(n)%Δ[A110449(n)]` -/
def P6519074050061855906.Spec : Prop :=
  ∀ n, P6519074050061855906.a n = A094495 n

end A094495

/-! ## A094495.P7135538209676252557

`A061356(n+2)%A028310(A003056(n)²)`
-/

namespace A094495.P7135538209676252557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061356 (n + 2)) (A028310 (A003056 n ^ 2).toNat)

end

end A094495.P7135538209676252557

namespace A094495

/-- `A061356(n+2)%A028310(A003056(n)²)` -/
def P7135538209676252557.Spec : Prop :=
  ∀ n, P7135538209676252557.a n = A094495 n

end A094495

/-! ## A094495.P5187789669144052100

`A007318(n)-A094496(n)`
-/

namespace A094495.P5187789669144052100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A094496 n

end

end A094495.P5187789669144052100

namespace A094495

/-- `A007318(n)-A094496(n)` -/
def P5187789669144052100.Spec : Prop :=
  ∀ n, P5187789669144052100.a n = A094495 n

end A094495

/-! ## A094495.P10293636294396389972

`Δ[A102363(n)]-A094496(n)`
-/

namespace A094495.P10293636294396389972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A094496 n

end

end A094495.P10293636294396389972

namespace A094495

/-- `Δ[A102363(n)]-A094496(n)` -/
def P10293636294396389972.Spec : Prop :=
  ∀ n, P10293636294396389972.a n = A094495 n

end A094495

/-! ## A094495.P10937862546384275634

`A152905(2*n)-A094496(n)`
-/

namespace A094495.P10937862546384275634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152905 (2 * n) - A094496 n

end

end A094495.P10937862546384275634

namespace A094495

/-- `A152905(2*n)-A094496(n)` -/
def P10937862546384275634.Spec : Prop :=
  ∀ n, P10937862546384275634.a n = A094495 n

end A094495

/-!
# A094496: Triangle read by rows: T(n,k) = binomial(n,k) - binomial(n,k) mod n^2, with T(0,0) = 1.

The programs for A094496, the canonical program `A094496.P15988676897616343177` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094496 has offset 0).

The definition of A094496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094496.P15988676897616343177

`A007318(n)-A094495(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A094496

/-- `A007318(n)-A094495(n)` -/
def P15988676897616343177.Spec : Prop :=
  ∀ n, P15988676897616343177.a n = A094496 n

theorem P15988676897616343177.correct : P15988676897616343177.Spec := by
  intro n
  simp only [A094496]

end A094496

/-! ## A094496.P76195561420545904

`abs(A108086(n))-A094495(n)`
-/

namespace A094496.P76195561420545904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n| - A094495 n

end

end A094496.P76195561420545904

namespace A094496

/-- `abs(A108086(n))-A094495(n)` -/
def P76195561420545904.Spec : Prop :=
  ∀ n, P76195561420545904.a n = A094496 n

end A094496

/-! ## A094496.P17527718490214646903

`abs(A117440(n))-A094495(n)`
-/

namespace A094496.P17527718490214646903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 n| - A094495 n

end

end A094496.P17527718490214646903

namespace A094496

/-- `abs(A117440(n))-A094495(n)` -/
def P17527718490214646903.Spec : Prop :=
  ∀ n, P17527718490214646903.a n = A094496 n

end A094496

/-! ## A094496.P12351473518158801023

`abs(A130595(n))-A094495(n)`
-/

namespace A094496.P12351473518158801023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| - A094495 n

end

end A094496.P12351473518158801023

namespace A094496

/-- `abs(A130595(n))-A094495(n)` -/
def P12351473518158801023.Spec : Prop :=
  ∀ n, P12351473518158801023.a n = A094496 n

end A094496

/-! ## A094496.P14097853469758449076

`sqrt(A008459(n))-A094495(n)`
-/

namespace A094496.P14097853469758449076
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) - (A094495 n : ℝ)

end

end A094496.P14097853469758449076

namespace A094496

/-- `sqrt(A008459(n))-A094495(n)` -/
def P14097853469758449076.Spec : Prop :=
  ∀ n, P14097853469758449076.a n = (A094496 n : ℝ)

end A094496

/-! ## A094496.P7708030336879517369

`Δ[A102363(n)]-A094495(n)`
-/

namespace A094496.P7708030336879517369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A094495 n

end

end A094496.P7708030336879517369

namespace A094496

/-- `Δ[A102363(n)]-A094495(n)` -/
def P7708030336879517369.Spec : Prop :=
  ∀ n, P7708030336879517369.a n = A094496 n

end A094496

/-! ## A094496.P6709411739095168942

`A014473(n)+1-A094495(n)`
-/

namespace A094496.P6709411739095168942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (1 - A094495 n)

end

end A094496.P6709411739095168942

namespace A094496

/-- `A014473(n)+1-A094495(n)` -/
def P6709411739095168942.Spec : Prop :=
  ∀ n, P6709411739095168942.a n = A094496 n

end A094496

/-! ## A094496.P16822673666273760112

`A028326(n)/2-A094495(n)`
-/

namespace A094496.P16822673666273760112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 - (A094495 n : ℚ)

end

end A094496.P16822673666273760112

namespace A094496

/-- `A028326(n)/2-A094495(n)` -/
def P16822673666273760112.Spec : Prop :=
  ∀ n, P16822673666273760112.a n = (A094496 n : ℚ)

end A094496

/-! ## A094496.P11657967027636613663

`A024000(A094495(n))+A014473(n)`
-/

namespace A094496.P11657967027636613663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A094495 n).toNat + A014473 n

end

end A094496.P11657967027636613663

namespace A094496

/-- `A024000(A094495(n))+A014473(n)` -/
def P11657967027636613663.Spec : Prop :=
  ∀ n, P11657967027636613663.a n = A094496 n

end A094496

/-! ## A094496.P11299947037056517400

`A004525(A028326(n))-A094495(n)`
-/

namespace A094496.P11299947037056517400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A028326 n).toNat - A094495 n

end

end A094496.P11299947037056517400

namespace A094496

/-- `A004525(A028326(n))-A094495(n)` -/
def P11299947037056517400.Spec : Prop :=
  ∀ n, P11299947037056517400.a n = A094496 n

end A094496

/-!
# A094498: Least prime factor of 2^(4*n) + 3^(4*n) = 16^n + 81^n.

The programs for A094498, there is no canonical definition to state claims against.
-/

/-! ## A094498.P5410121931609009171

`A094473(4*(n+1))`
-/

namespace A094498.P5410121931609009171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094473 (4 * (n + 1))

end

end A094498.P5410121931609009171

/-! ## A094498.P16286337014287763471

`or(1, A094473(Δ[A001844(n)]))`
-/

namespace A094498.P16286337014287763471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A094473 (f1 (n + 1) - f1 n).toNat)

end

end A094498.P16286337014287763471

/-! ## A094498.P199742203844804805

`or(1, A094473(A008574(n+1)))`
-/

namespace A094498.P199742203844804805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A094473 (A008574 (n + 1)).toNat)

end

end A094498.P199742203844804805

/-! ## A094498.P6259211086069671508

`A094473(Δ[A001844(n)])%A166329(n+2)`
-/

namespace A094498.P6259211086069671508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094473 (f1 (n + 1) - f1 n).toNat) (A166329 (n + 2))

end

end A094498.P6259211086069671508

/-! ## A094498.P7824339475016262800

`A094473(A008574(n+1))+A000038(n+1)`
-/

namespace A094498.P7824339475016262800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094473 (A008574 (n + 1)).toNat + A000038 (n + 1)

end

end A094498.P7824339475016262800

/-! ## A094498.P11501297775268184473

`A094473(A008574(n+1))/A001221(A003147(n+1))`
-/

namespace A094498.P11501297775268184473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094473 (A008574 (n + 1)).toNat : ℚ) / (A001221 (A003147 (n + 1)).toNat : ℚ)

end

end A094498.P11501297775268184473

/-! ## A094498.P531131881813196888

`A094473(A008574(n+1))/A000188(A007947(n+1))`
-/

namespace A094498.P531131881813196888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094473 (A008574 (n + 1)).toNat : ℚ) / (A000188 (A007947 (n + 1)).toNat : ℚ)

end

end A094498.P531131881813196888

/-! ## A094498.P13147900685079124794

`A094473(A008574(n+1))/A001221(A126329(n+1))`
-/

namespace A094498.P13147900685079124794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094473 (A008574 (n + 1)).toNat : ℚ) / (A001221 (A126329 (n + 1)).toNat : ℚ)

end

end A094498.P13147900685079124794

/-! ## A094498.P1564042109683041692

`A094473(A008574(n+1))/A001221(A126330(n+1))`
-/

namespace A094498.P1564042109683041692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094473 (A008574 (n + 1)).toNat : ℚ) / (A001221 (A126330 (n + 1)).toNat : ℚ)

end

end A094498.P1564042109683041692

/-! ## A094498.P9939554357906770076

`p?[and(-5, A094473(n+1))]`
-/

namespace A094498.P9939554357906770076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A094473 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094498.P9939554357906770076

/-!
# A094499: Smallest prime factor of 2^(2^n)+3^(2^n), i.e., exponents are powers of 2.

The programs for A094499, there is no canonical definition to state claims against.
-/

/-! ## A094499.P15215381084145681939

`A094473(2^(n+1))`
-/

namespace A094499.P15215381084145681939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094473 (2 ^ (n + 1))

end

end A094499.P15215381084145681939

/-! ## A094499.P4370067591541193973

`Δ[∑{d}[A000079(n), A094473(#)]]`
-/

namespace A094499.P4370067591541193973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A094473 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094499.P4370067591541193973

/-! ## A094499.P12224272081656224322

`or(1, A094473(A000079(n+1)))`
-/

namespace A094499.P12224272081656224322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A094473 (A000079 (n + 1)).toNat)

end

end A094499.P12224272081656224322

/-! ## A094499.P15983439035417634080

`or(1, A094473(A011782(n+2)))`
-/

namespace A094499.P15983439035417634080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A094473 (A011782 (n + 2)).toNat)

end

end A094499.P15983439035417634080

/-! ## A094499.P15281136880165239214

`or(1, A094473(record[A090988(n+1)]))`
-/

namespace A094499.P15281136880165239214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A094473 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A094499.P15281136880165239214

