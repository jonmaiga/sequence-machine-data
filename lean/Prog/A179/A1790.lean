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
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A179000: Array T(n,k) read by antidiagonals: coefficient [x^k] of (1 + n*Sum_{i>=1} x^i)^2, k >= 0.

The programs for A179000, there is no canonical definition to state claims against.
-/

/-! ## A179000.P12189971789835514721

`A179901(comp[A000217(n)]+1-A010054(n))`
-/

namespace A179000.P12189971789835514721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179901 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) - A010054 n).toNat

end

end A179000.P12189971789835514721

/-! ## A179000.P13393737186587952685

`A121306(n)-A000164(A265856(n+1))`
-/

namespace A179000.P13393737186587952685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121306 n - A000164 (A265856 (n + 1)).toNat

end

end A179000.P13393737186587952685

/-! ## A179000.P13469526809925244597

`A029656(n+1)-A000164(A265856(n+1))`
-/

namespace A179000.P13469526809925244597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 1) - A000164 (A265856 (n + 1)).toNat

end

end A179000.P13469526809925244597

/-! ## A179000.P16244951766862483163

`A121306(n)-A000164(A249027(n+1))`
-/

namespace A179000.P16244951766862483163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121306 n - A000164 (A249027 (n + 1)).toNat

end

end A179000.P16244951766862483163

/-! ## A179000.P4827662935053226318

`A121306(n)-A165430(A258935(n+1))`
-/

namespace A179000.P4827662935053226318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121306 n - A165430 (A258935 (n + 1)).toNat

end

end A179000.P4827662935053226318

/-!
# A179001: Partial sums of floor(Fibonacci(n)/3).

The programs for A179001, the canonical program `A179001.P13692469998195323094` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179001 has offset 0).

The definition of A179001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179001.P13289152317135119656

`∑[A004696(n)]`
-/

namespace A179001.P13289152317135119656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179001.P13289152317135119656

namespace A179001

/-- `∑[A004696(n)]` -/
def P13289152317135119656.Spec : Prop :=
  ∀ n, P13289152317135119656.a n = A179001 n

end A179001

/-! ## A179001.P13692469998195323094

`∑[floor(A000045(n)/3)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A179001

/-- `∑[floor(A000045(n)/3)]` -/
def P13692469998195323094.Spec : Prop :=
  ∀ n, P13692469998195323094.a n = A179001 n

theorem P13692469998195323094.correct : P13692469998195323094.Spec := by
  intro n
  simp only [A179001]

end A179001

/-! ## A179001.P14170920642692264385

`∑[floor(A212804(n+1)/3)]`
-/

namespace A179001.P14170920642692264385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A212804 (n + 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179001.P14170920642692264385

namespace A179001

/-- `∑[floor(A212804(n+1)/3)]` -/
def P14170920642692264385.Spec : Prop :=
  ∀ n, P14170920642692264385.a n = A179001 n

end A179001

/-! ## A179001.P5109147543815449506

`∑[floor((A001611(n)-1)/3)]`
-/

namespace A179001.P5109147543815449506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001611 n - 1 : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179001.P5109147543815449506

namespace A179001

/-- `∑[floor((A001611(n)-1)/3)]` -/
def P5109147543815449506.Spec : Prop :=
  ∀ n, P5109147543815449506.a n = A179001 n

end A179001

/-! ## A179001.P10865350679503801050

`∑[A000045(n)-A293546(n)]`
-/

namespace A179001.P10865350679503801050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A293546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179001.P10865350679503801050

namespace A179001

/-- `∑[A000045(n)-A293546(n)]` -/
def P10865350679503801050.Spec : Prop :=
  ∀ n, P10865350679503801050.a n = A179001 n

end A179001

/-! ## A179001.P667836155404746309

`∑[(A000045(n)-A082115(n))/3]`
-/

namespace A179001.P667836155404746309
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n - A082115 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179001.P667836155404746309

namespace A179001

/-- `∑[(A000045(n)-A082115(n))/3]` -/
def P667836155404746309.Spec : Prop :=
  ∀ n, P667836155404746309.a n = (A179001 n : ℚ)

end A179001

/-! ## A179001.P9467936802254903895

`∑[floor(Δ[A000071(n+1)]/3)]`
-/

namespace A179001.P9467936802254903895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (n + 1) - f2 n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179001.P9467936802254903895

namespace A179001

/-- `∑[floor(Δ[A000071(n+1)]/3)]` -/
def P9467936802254903895.Spec : Prop :=
  ∀ n, P9467936802254903895.a n = A179001 n

end A179001

/-! ## A179001.P9067872217084519779

`floor(A000045(n+2)/3-3*n/8)`
-/

namespace A179001.P9067872217084519779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 (n + 2) : ℚ) / 3 - 3 * ((n : ℚ) / 8)⌋

end

end A179001.P9067872217084519779

namespace A179001

/-- `floor(A000045(n+2)/3-3*n/8)` -/
def P9067872217084519779.Spec : Prop :=
  ∀ n, P9067872217084519779.a n = A179001 n

end A179001

/-!
# A179002: Primes p such that 2^(2p-1) mod (2p+1) is prime.

The programs for A179002, there is no canonical definition to state claims against.
-/

/-! ## A179002.P7788168794043184633

`eq[A001065(n+1), A001222(A178970(n+1))]+1`
-/

namespace A179002.P7788168794043184633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A178970 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A179002.P7788168794043184633

/-! ## A179002.P9191151762400941116

`eq[A001222(A178970(n+1)), A347954(n+1)]+1`
-/

namespace A179002.P9191151762400941116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A178970 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347954 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A179002.P9191151762400941116

/-! ## A179002.P9049798926691393922

`eq[A323902(n+1)², A001222(A178970(n+1))]+1`
-/

namespace A179002.P9049798926691393922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323902 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A178970 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A179002.P9049798926691393922

/-! ## A179002.P15372078931949586847

`p?[A179003(n+1)]`
-/

namespace A179002.P15372078931949586847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179002.P15372078931949586847

/-! ## A179002.P2738126842888588678

`record[p?[A179003(A052938(n))]]`
-/

namespace A179002.P2738126842888588678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179003 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179002.P2738126842888588678

/-!
# A179003: Numbers k such that 2^(2*k-1) mod (2*k+1) is prime.

The programs for A179003, there is no canonical definition to state claims against.
-/

/-! ## A179003.P5959174528740851839

`eq[1, A001222(A178970(n+1))]+1`
-/

namespace A179003.P5959174528740851839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A178970 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A179003.P5959174528740851839

/-! ## A179003.P12955806903374780372

`record[A000027(n+1)/A001222(A178970(n+1))]`
-/

namespace A179003.P12955806903374780372
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A001222 (A178970 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179003.P12955806903374780372

/-! ## A179003.P14949569599626338203

`record[A008619(2*n)/A001222(A178970(n+1))]`
-/

namespace A179003.P14949569599626338203
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A001222 (A178970 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179003.P14949569599626338203

/-! ## A179003.P16754640804948972307

`record[A110514(2*n)/A001222(A178970(n+1))]`
-/

namespace A179003.P16754640804948972307
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110514 (2 * n) : ℚ) / (A001222 (A178970 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179003.P16754640804948972307

/-! ## A179003.P16179798997598452484

`eq[2, A098008(A213859(2*n+1))]+1`
-/

namespace A179003.P16179798997598452484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (A213859 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A179003.P16179798997598452484

/-!
# A179004: T(n,k)=Maximum 1's in an nXk binary array with no element equal to a strict majority of its horizontal and vertical neighbors.

The programs for A179004, there is no canonical definition to state claims against.
-/

/-! ## A179004.P18063704973378876419

`A048766(A064289(A199655(n+1))²)`
-/

namespace A179004.P18063704973378876419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A064289 (A199655 (n + 1)).toNat ^ 2).toNat

end

end A179004.P18063704973378876419

/-! ## A179004.P9305346536526265755

`A217710(or(A060546(n), A223725(n+1)))`
-/

namespace A179004.P9305346536526265755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217710 (Int.lor (A060546 n) (A223725 (n + 1))).toNat

end

end A179004.P9305346536526265755

/-! ## A179004.P6147529386590416596

`A217710(floor(A226717(n+1)/A254730(n)))`
-/

namespace A179004.P6147529386590416596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217710 ⌊(A226717 (n + 1) : ℚ) / (A254730 n : ℚ)⌋.toNat

end

end A179004.P6147529386590416596

/-! ## A179004.P14024384005564890141

`A217710(ceil(A226717(n+1)/A254730(n)))`
-/

namespace A179004.P14024384005564890141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217710 ⌈(A226717 (n + 1) : ℚ) / (A254730 n : ℚ)⌉.toNat

end

end A179004.P14024384005564890141

/-! ## A179004.P12638938620617517764

`A217710(A226717(n+1))`
-/

namespace A179004.P12638938620617517764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217710 (A226717 (n + 1)).toNat

end

end A179004.P12638938620617517764

/-!
# A179005: Indices of nonprime repunits: nonnegative numbers n such that 11...111 = (10^n - 1)/9 is composite.

The programs for A179005, the canonical program `A179005.P14351113100697518095` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179005 has offset 1).

The definition of A179005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179005.P6455105943523152207

`comp[A175451(A110218(n+1))]`
-/

namespace A179005.P6455105943523152207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175451 (A110218 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A179005.P6455105943523152207

namespace A179005

/-- `comp[A175451(A110218(n+1))]` -/
def P6455105943523152207.Spec : Prop :=
  ∀ n, (P6455105943523152207.a n : ℤ) = A179005 (n + 1)

end A179005

/-! ## A179005.P2054290093825389725

`comp[A175451(A068553(comp[2*(n+3)]+1))]`
-/

namespace A179005.P2054290093825389725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 3)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175451 (A068553 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A179005.P2054290093825389725

namespace A179005

/-- `comp[A175451(A068553(comp[2*(n+3)]+1))]` -/
def P2054290093825389725.Spec : Prop :=
  ∀ n, (P2054290093825389725.a n : ℤ) = A179005 (n + 1)

end A179005

/-! ## A179005.P14351113100697518095

`lt[A001414(A162341(n)), A349164(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A179005

/-- `lt[A001414(A162341(n)), A349164(n+1)]` -/
def P14351113100697518095.Spec : Prop :=
  ∀ n, (P14351113100697518095.a n : ℤ) = A179005 (n + 1)

theorem P14351113100697518095.correct : P14351113100697518095.Spec := by
  intro n
  simp only [A179005, Nat.add_sub_cancel]

end A179005

/-! ## A179005.P367047771041694442

`lt[A304038(n+3), A256294(A054082(3*n+5))]`
-/

namespace A179005.P367047771041694442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304038 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256294 (A054082 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A179005.P367047771041694442

namespace A179005

/-- `lt[A304038(n+3), A256294(A054082(3*n+5))]` -/
def P367047771041694442.Spec : Prop :=
  ∀ n, (P367047771041694442.a n : ℤ) = A179005 (n + 1)

end A179005

/-! ## A179005.P14016830899316698699

`lt[A010815(n+3), A157196(A237824(n+5))]`
-/

namespace A179005.P14016830899316698699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157196 (A237824 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A179005.P14016830899316698699

namespace A179005

/-- `lt[A010815(n+3), A157196(A237824(n+5))]` -/
def P14016830899316698699.Spec : Prop :=
  ∀ n, (P14016830899316698699.a n : ℤ) = A179005 (n + 1)

end A179005

/-! ## A179005.P3705055813484347360

`lt[A010815(n+3), A000002(A140513(n))]`
-/

namespace A179005.P3705055813484347360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A140513 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A179005.P3705055813484347360

namespace A179005

/-- `lt[A010815(n+3), A000002(A140513(n))]` -/
def P3705055813484347360.Spec : Prop :=
  ∀ n, (P3705055813484347360.a n : ℤ) = A179005 (n + 1)

end A179005

/-! ## A179005.P1184678511622734717

`lt[A156258(n+2), A355748(A353832(n+1))]`
-/

namespace A179005.P1184678511622734717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156258 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355748 (A353832 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A179005.P1184678511622734717

namespace A179005

/-- `lt[A156258(n+2), A355748(A353832(n+1))]` -/
def P1184678511622734717.Spec : Prop :=
  ∀ n, (P1184678511622734717.a n : ℤ) = A179005 (n + 1)

end A179005

/-! ## A179005.P1243459117173830247

`lt[A010815(n+3), A073204(A179390(n+1))]`
-/

namespace A179005.P1243459117173830247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073204 (A179390 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A179005.P1243459117173830247

namespace A179005

/-- `lt[A010815(n+3), A073204(A179390(n+1))]` -/
def P1243459117173830247.Spec : Prop :=
  ∀ n, (P1243459117173830247.a n : ℤ) = A179005 (n + 1)

end A179005

/-! ## A179005.P9606782709482783599

`lt[A002945(A007294(n+3)), A352186(3*n+2)]`
-/

namespace A179005.P9606782709482783599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002945 (A007294 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352186 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A179005.P9606782709482783599

namespace A179005

/-- `lt[A002945(A007294(n+3)), A352186(3*n+2)]` -/
def P9606782709482783599.Spec : Prop :=
  ∀ n, (P9606782709482783599.a n : ℤ) = A179005 (n + 1)

end A179005

/-! ## A179005.P5727354616286831846

`lt[A113722(n), A163531(A093506(2*(n+2)))]`
-/

namespace A179005.P5727354616286831846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113722 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163531 (A093506 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A179005.P5727354616286831846

namespace A179005

/-- `lt[A113722(n), A163531(A093506(2*(n+2)))]` -/
def P5727354616286831846.Spec : Prop :=
  ∀ n, (P5727354616286831846.a n : ℤ) = A179005 (n + 1)

end A179005

/-!
# A179006: Partial sums of floor(Fibonacci(n)/4).

The programs for A179006, the canonical program `A179006.P8202191832822900743` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179006 has offset 0).

The definition of A179006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179006.P8202191832822900743

`∑[A004697(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A179006

/-- `∑[A004697(n)]` -/
def P8202191832822900743.Spec : Prop :=
  ∀ n, P8202191832822900743.a n = A179006 n

theorem P8202191832822900743.correct : P8202191832822900743.Spec := by
  intro n
  simp only [A179006]

end A179006

/-! ## A179006.P8176251223453583569

`∑[floor(A000045(n)/4)]`
-/

namespace A179006.P8176251223453583569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179006.P8176251223453583569

namespace A179006

/-- `∑[floor(A000045(n)/4)]` -/
def P8176251223453583569.Spec : Prop :=
  ∀ n, P8176251223453583569.a n = A179006 n

end A179006

/-! ## A179006.P5313698574557667779

`∑[floor((A001611(n)-1)/4)]`
-/

namespace A179006.P5313698574557667779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001611 n - 1 : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179006.P5313698574557667779

namespace A179006

/-- `∑[floor((A001611(n)-1)/4)]` -/
def P5313698574557667779.Spec : Prop :=
  ∀ n, P5313698574557667779.a n = A179006 n

end A179006

/-! ## A179006.P11107415425043273061

`∑[(A128429(n+1)-1)/3]`
-/

namespace A179006.P11107415425043273061
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128429 (n + 1) - 1 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179006.P11107415425043273061

namespace A179006

/-- `∑[(A128429(n+1)-1)/3]` -/
def P11107415425043273061.Spec : Prop :=
  ∀ n, P11107415425043273061.a n = (A179006 n : ℚ)

end A179006

/-! ## A179006.P529076243809435752

`∑[(A000045(n)-A079343(n))/4]`
-/

namespace A179006.P529076243809435752
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n - A079343 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179006.P529076243809435752

namespace A179006

/-- `∑[(A000045(n)-A079343(n))/4]` -/
def P529076243809435752.Spec : Prop :=
  ∀ n, P529076243809435752.a n = (A179006 n : ℚ)

end A179006

/-! ## A179006.P7480306461946620508

`∑[floor(A055389(n)/8)]`
-/

namespace A179006.P7480306461946620508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055389 n : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179006.P7480306461946620508

namespace A179006

/-- `∑[floor(A055389(n)/8)]` -/
def P7480306461946620508.Spec : Prop :=
  ∀ n, P7480306461946620508.a n = A179006 n

end A179006

/-!
# A179007: Sum of 3 consecutive composite odd numbers.

The programs for A179007, there is no canonical definition to state claims against.
-/

/-! ## A179007.P8298875646867541920

`A163631(n+4)-A163631(n+1)`
-/

namespace A179007.P8298875646867541920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163631 (n + 4) - A163631 (n + 1)

end

end A179007.P8298875646867541920

/-! ## A179007.P7593392853501950021

`A396571(n+2)+A396571(n+2)+A071904(n+1)`
-/

namespace A179007.P7593392853501950021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396571 (n + 2) + (A396571 (n + 2) + A071904 (n + 1))

end

end A179007.P7593392853501950021

/-! ## A179007.P2043331566271374970

`A071904(n+1)+A071904(n+2)+A071904(n+3)`
-/

namespace A179007.P2043331566271374970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1) + (A071904 (n + 2) + A071904 (n + 3))

end

end A179007.P2043331566271374970

/-! ## A179007.P11039976795299272185

`A014076(n+2)+A014076(n+3)+A014076(n+4)`
-/

namespace A179007.P11039976795299272185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 2) + (A014076 (n + 3) + A014076 (n + 4))

end

end A179007.P11039976795299272185

/-! ## A179007.P1363164956501583354

`A005381(2*n+1)+A005381(2*n+3)+A005381(2*n+5)`
-/

namespace A179007.P1363164956501583354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (2 * n + 1) + (A005381 (2 * n + 3) + A005381 (2 * n + 5))

end

end A179007.P1363164956501583354

/-!
# A179008: T(n,k) is the base-2 logarithm of the number of n X k binary arrays with no adjacent elements having the mod 2 sum of their neighbors equal.

The programs for A179008, there is no canonical definition to state claims against.
-/

/-! ## A179008.P18126335413814438980

`A190683(xor(34, A217457(n+1)))`
-/

namespace A179008.P18126335413814438980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190683 (Int.xor 34 (A217457 (n + 1))).toNat

end

end A179008.P18126335413814438980

/-! ## A179008.P15612885483699171342

`gcd(A159919(n+1), A192438(A098358(n)))`
-/

namespace A179008.P15612885483699171342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A159919 (n + 1)) (A192438 (A098358 n).toNat)

end

end A179008.P15612885483699171342

/-! ## A179008.P2547770787640989753

`A228812(A295120(n+1))`
-/

namespace A179008.P2547770787640989753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228812 (A295120 (n + 1)).toNat

end

end A179008.P2547770787640989753

/-! ## A179008.P15396998625375053349

`gcd(A270831(A143038(n)), A341520(n))`
-/

namespace A179008.P15396998625375053349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A270831 (A143038 n).toNat) (A341520 n)

end

end A179008.P15396998625375053349

/-! ## A179008.P5159402303973202115

`A118914(A234266(n+1)-A201384(n+1))`
-/

namespace A179008.P5159402303973202115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118914 (A234266 (n + 1) - A201384 (n + 1)).toNat

end

end A179008.P5159402303973202115

/-!
# A179009: Number of maximally refined partitions of n into distinct parts.

The programs for A179009, there is no canonical definition to state claims against.
-/

/-! ## A179009.P9355091311585395884

`A000009(n)-A384318(n)`
-/

namespace A179009.P9355091311585395884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A384318 n

end

end A179009.P9355091311585395884

/-! ## A179009.P9331476196102917800

`A384348(n)-A383710(n)`
-/

namespace A179009.P9331476196102917800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384348 n - A383710 n

end

end A179009.P9331476196102917800

/-! ## A179009.P4213188665293419572

`A069010(floor(A000079(n)/A140642(n)))`
-/

namespace A179009.P4213188665293419572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 ⌊(A000079 n : ℚ) / (A140642 n : ℚ)⌋.toNat

end

end A179009.P4213188665293419572

/-! ## A179009.P10913041404523954437

`A014963(∏{e}[A038309(n+1), A000045(#)])`
-/

namespace A179009.P10913041404523954437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A179009.P10913041404523954437

/-! ## A179009.P11958474010910158152

`A104763(n+1)*A326515(A115012(3*n+1))`
-/

namespace A179009.P11958474010910158152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) * A326515 (A115012 (3 * n + 1)).toNat

end

end A179009.P11958474010910158152

/-!
# A179010: The number of isomorphism classes of commutative quandles of order n.

The programs for A179010, there is no canonical definition to state claims against.
-/

/-! ## A179010.P1248491286168254662

`∏{e}[or(1, (n+1)²), A241378(#)]`
-/

namespace A179010.P1248491286168254662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A241378 (Nat.factorization (f1 n) p)

end

end A179010.P1248491286168254662

/-! ## A179010.P10169068334249876064

`round(sqrt(char[2*n]*A256692(n+1)))`
-/

namespace A179010.P10169068334249876064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A256692 (n + 1) : ℝ))

end

end A179010.P10169068334249876064

/-! ## A179010.P4520802152766904119

`log2(gcd(2, n))*A003307(∏{e}[n+1, #])`
-/

namespace A179010.P4520802152766904119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (A003307 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℝ)

end

end A179010.P4520802152766904119

/-! ## A179010.P4327041514447090258

`∏{e}[1-n*xor(n, -2), A257698(#)]`
-/

namespace A179010.P4327041514447090258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * Int.xor (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A257698 (Nat.factorization (f1 n).natAbs p)

end

end A179010.P4327041514447090258

/-! ## A179010.P7280426873013159991

`char[2*n]*A111759(∏{e}[n+1, #])`
-/

namespace A179010.P7280426873013159991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A111759 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A179010.P7280426873013159991

/-! ## A179010.P1506747347487683412

`A329412(∏{e}[n+1, #])%A040868(n)`
-/

namespace A179010.P1506747347487683412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329412 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (A040868 n)

end

end A179010.P1506747347487683412

/-! ## A179010.P5359670913492465480

`log2(gcd(2, n))*A000041(A000688(n+1))`
-/

namespace A179010.P5359670913492465480
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (A000041 (A000688 (n + 1)).toNat : ℝ)

end

end A179010.P5359670913492465480

/-! ## A179010.P13901707514387389587

`A000041(A295879(n+1))*char[2*n]`
-/

namespace A179010.P13901707514387389587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A295879 (n + 1)).toNat * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A179010.P13901707514387389587

/-! ## A179010.P8131165887194898320

`(n+1)%2*A006530(A347463(n+1))`
-/

namespace A179010.P8131165887194898320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) * A006530 (A347463 (n + 1)).toNat

end

end A179010.P8131165887194898320

/-! ## A179010.P15700167952634899007

`A000041(A101872(n+1))*and(1, n+1)`
-/

namespace A179010.P15700167952634899007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A101872 (n + 1)).toNat * (Nat.land 1 (n + 1) : ℤ)

end

end A179010.P15700167952634899007

/-!
# A179011: T(n,k)=Log base 2 of the number of nXk binary arrays with no element equal to the modulo 2 sum of its knight-move neighbors.

The programs for A179011, there is no canonical definition to state claims against.
-/

/-! ## A179011.P2734268402200486572

`A004524(A174126(n))%6`
-/

namespace A179011.P2734268402200486572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004524 (A174126 n).toNat) 6

end

end A179011.P2734268402200486572

/-! ## A179011.P8467723646601810995

`and(6, A069545(A046802(n)))`
-/

namespace A179011.P8467723646601810995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A069545 (A046802 n).toNat)

end

end A179011.P8467723646601810995

/-! ## A179011.P796414992896744768

`A007814(A189150(n+1)%A130861(2*n+5))`
-/

namespace A179011.P796414992896744768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.tmod (A189150 (n + 1)) (A130861 (2 * n + 5))).toNat

end

end A179011.P796414992896744768

/-! ## A179011.P4104161097985130689

`val(A189150(n+1), A000005(A078857(n+1)))`
-/

namespace A179011.P4104161097985130689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A189150 (n + 1)).toNat (A000005 (A078857 (n + 1)).toNat).toNat

end

end A179011.P4104161097985130689

/-!
# A179012: Primes that are the sum of three consecutive composite odd numbers.

The programs for A179012, the canonical program `A179012.P1284403483129430649` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179012 has offset 1).

The definition of A179012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179012.P1284403483129430649

`p?[A163631(n+4)-A163631(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A179012

/-- `p?[A163631(n+4)-A163631(n+1)]` -/
def P1284403483129430649.Spec : Prop :=
  ∀ n, P1284403483129430649.a n = A179012 (n + 1)

theorem P1284403483129430649.correct : P1284403483129430649.Spec := by
  intro n
  simp only [A179012, Nat.add_sub_cancel]

end A179012

/-! ## A179012.P11534568643747620804

`p?[A262044(n+4)-A262044(n+1)]`
-/

namespace A179012.P11534568643747620804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262044 (n + 4) - A262044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179012.P11534568643747620804

namespace A179012

/-- `p?[A262044(n+4)-A262044(n+1)]` -/
def P11534568643747620804.Spec : Prop :=
  ∀ n, P11534568643747620804.a n = A179012 (n + 1)

end A179012

/-! ## A179012.P17718715857474522429

`record[A020639(A163631(n+5)-A163631(n+2))]`
-/

namespace A179012.P17718715857474522429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A163631 (n + 5) - A163631 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179012.P17718715857474522429

namespace A179012

/-- `record[A020639(A163631(n+5)-A163631(n+2))]` -/
def P17718715857474522429.Spec : Prop :=
  ∀ n, P17718715857474522429.a n = A179012 (n + 1)

end A179012

/-! ## A179012.P2498750320448765644

`p?[A071904(n+1)+A071904(n+2)+A071904(n+3)]`
-/

namespace A179012.P2498750320448765644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1) + (A071904 (n + 2) + A071904 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179012.P2498750320448765644

namespace A179012

/-- `p?[A071904(n+1)+A071904(n+2)+A071904(n+3)]` -/
def P2498750320448765644.Spec : Prop :=
  ∀ n, P2498750320448765644.a n = A179012 (n + 1)

end A179012

/-! ## A179012.P2347835292413311136

`p?[A014076(n+2)+A014076(n+3)+A014076(n+4)]`
-/

namespace A179012.P2347835292413311136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 2) + (A014076 (n + 3) + A014076 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179012.P2347835292413311136

namespace A179012

/-- `p?[A014076(n+2)+A014076(n+3)+A014076(n+4)]` -/
def P2347835292413311136.Spec : Prop :=
  ∀ n, P2347835292413311136.a n = A179012 (n + 1)

end A179012

/-! ## A179012.P8243362577608504881

`p?[A005381(2*n+1)+A005381(2*n+3)+A005381(2*n+5)]`
-/

namespace A179012.P8243362577608504881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (2 * n + 1) + (A005381 (2 * n + 3) + A005381 (2 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179012.P8243362577608504881

namespace A179012

/-- `p?[A005381(2*n+1)+A005381(2*n+3)+A005381(2*n+5)]` -/
def P8243362577608504881.Spec : Prop :=
  ∀ n, P8243362577608504881.a n = A179012 (n + 1)

end A179012

/-!
# A179014: Even numbers that can only be expressed as the sum of two distinct twin prime pairs in two ways: n = p+(q+2) = (p+2)+q where (3,5) < (p,p+2) < (q,q+2).

The programs for A179014, there is no canonical definition to state claims against.
-/

/-! ## A179014.P1012208176202526706

`6*A000267(A211131(n+1))`
-/

namespace A179014.P1012208176202526706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000267 (A211131 (n + 1)).toNat

end

end A179014.P1012208176202526706

/-! ## A179014.P9967409920194493667

`p?[A122079(3*n+5)]+13`
-/

namespace A179014.P9967409920194493667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122079 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 13

end

end A179014.P9967409920194493667

/-! ## A179014.P3567414387003951301

`A099257(6*A102363(n))+13`
-/

namespace A179014.P3567414387003951301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099257 (6 * A102363 n).toNat + 13

end

end A179014.P3567414387003951301

/-! ## A179014.P10251997806919454503

`record[6*A088242(A088299(n+1))]`
-/

namespace A179014.P10251997806919454503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A088242 (A088299 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179014.P10251997806919454503

/-!
# A179015: Number of ways in which n^2 can be expressed as the sum of exactly five positive squares.

The programs for A179015, there is no canonical definition to state claims against.
-/

/-! ## A179015.P2767877707815291853

`A065459(n+1)-A065458(n+1)`
-/

namespace A179015.P2767877707815291853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065459 (n + 1) - A065458 (n + 1)

end

end A179015.P2767877707815291853

/-! ## A179015.P2852169975748858179

`A025429((n+1)²)`
-/

namespace A179015.P2852169975748858179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 ((n + 1) ^ 2)

end

end A179015.P2852169975748858179

/-! ## A179015.P1808350789923627277

`xor(1, xor(1, A025429((n+1)^2)))`
-/

namespace A179015.P1808350789923627277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A025429 ((n + 1) ^ 2)))

end

end A179015.P1808350789923627277

/-! ## A179015.P16784168780146005555

`and(-1, A025429(A000290(n+1)))`
-/

namespace A179015.P16784168780146005555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A025429 (A000290 (n + 1)).toNat)

end

end A179015.P16784168780146005555

/-! ## A179015.P1010820170212563374

`∑{d}[A025429((n+1)^2), A000010(#)]`
-/

namespace A179015.P1010820170212563374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A179015.P1010820170212563374

/-! ## A179015.P11176775370456386147

`A000174((n+1)²)-A065458(n+1)`
-/

namespace A179015.P11176775370456386147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 ((n + 1) ^ 2) - A065458 (n + 1)

end

end A179015.P11176775370456386147

/-! ## A179015.P17441416018530246157

`A025429((n+1)^2)%∑[A007318(n)]`
-/

namespace A179015.P17441416018530246157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025429 ((n + 1) ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A179015.P17441416018530246157

/-! ## A179015.P15882903350736456939

`A025429((n+1)^2)+A000007(n+1)`
-/

namespace A179015.P15882903350736456939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 ((n + 1) ^ 2) + A000007 (n + 1)

end

end A179015.P15882903350736456939

/-! ## A179015.P7643576978932283582

`A000174((n+1)²)-A002635((n+1)²)`
-/

namespace A179015.P7643576978932283582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 ((n + 1) ^ 2) - A002635 ((n + 1) ^ 2)

end

end A179015.P7643576978932283582

/-! ## A179015.P3477799855064891204

`A014963(∑[n+1])*A025429((n+1)^2)`
-/

namespace A179015.P3477799855064891204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f1 j) * A025429 ((n + 1) ^ 2)

end

end A179015.P3477799855064891204

/-! ## A179015.P13054794609468212073

`A025429((n+1)^2)^A014963(∑[n+3])`
-/

namespace A179015.P13054794609468212073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025429 ((n + 1) ^ 2) : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A179015.P13054794609468212073

/-! ## A179015.P14903918497403921969

`A007318(val(n+1, 5))*A025429((n+1)^2)`
-/

namespace A179015.P14903918497403921969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 5) * A025429 ((n + 1) ^ 2)

end

end A179015.P14903918497403921969

/-! ## A179015.P2540671116739233466

`gcd(A000040(n+1), ∑[n])*A025429((n+1)^2)`
-/

namespace A179015.P2540671116739233466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000040 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ) * A025429 ((n + 1) ^ 2)

end

end A179015.P2540671116739233466

/-! ## A179015.P16918382325703353322

`A025429((n+1)^2)*A119329(A025429(n))`
-/

namespace A179015.P16918382325703353322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 ((n + 1) ^ 2) * A119329 (A025429 n).toNat

end

end A179015.P16918382325703353322

/-! ## A179015.P18397030301640063223

`A010052(A000290(n))*A025429(A000290(n+1))`
-/

namespace A179015.P18397030301640063223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A000290 n).toNat * A025429 (A000290 (n + 1)).toNat

end

end A179015.P18397030301640063223

/-!
# A179016: The infinite trunk of binary beanstalk: The only infinite sequence such that a(n-1) = a(n) - number of 1's in binary representation of a(n).

The programs for A179016, there is no canonical definition to state claims against.
-/

/-! ## A179016.P5713477411070816666

`A218616(A218602(n))`
-/

namespace A179016.P5713477411070816666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218616 (A218602 n).toNat

end

end A179016.P5713477411070816666

/-! ## A179016.P14297761103749169937

`∑[A213712(n)]`
-/

namespace A179016.P14297761103749169937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179016.P14297761103749169937

/-! ## A179016.P9953167820951543678

`A218603(n)+A213708(n)`
-/

namespace A179016.P9953167820951543678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218603 n + A213708 n

end

end A179016.P9953167820951543678

/-! ## A179016.P3632201059187969305

`A173601(n)-A218604(n)`
-/

namespace A179016.P3632201059187969305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173601 n - A218604 n

end

end A179016.P3632201059187969305

/-! ## A179016.P9718151232583648093

`A233271(n)-A233270(n)`
-/

namespace A179016.P9718151232583648093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 n - A233270 n

end

end A179016.P9718151232583648093

/-! ## A179016.P3155384275049177926

`A218616(A071542(A218616(n)))`
-/

namespace A179016.P3155384275049177926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218616 (A071542 (A218616 n).toNat).toNat

end

end A179016.P3155384275049177926

/-! ## A179016.P11289828358446304912

`A005187(A213715(n))`
-/

namespace A179016.P11289828358446304912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A213715 n).toNat

end

end A179016.P11289828358446304912

/-! ## A179016.P11207228818609788578

`comp[A213713(n+1)]`
-/

namespace A179016.P11207228818609788578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A179016.P11207228818609788578

/-! ## A179016.P17192818070706276928

`eq[0, A213725(n)]`
-/

namespace A179016.P17192818070706276928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179016.P17192818070706276928

/-! ## A179016.P2376197570205182674

`eq[0, A213727(n)]`
-/

namespace A179016.P2376197570205182674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213727 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179016.P2376197570205182674

/-! ## A179016.P7068768213906263904

`∑{d}[A213730(n), A297117(#)]`
-/

namespace A179016.P7068768213906263904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297117 d

end

end A179016.P7068768213906263904

/-! ## A179016.P16031608388767285775

`lt[A213727(n)-char[1], A257265(n)]`
-/

namespace A179016.P16031608388767285775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213727 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257265 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A179016.P16031608388767285775

/-! ## A179016.P13778570280273664296

`A011371(A213730(n))`
-/

namespace A179016.P13778570280273664296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A213730 n).toNat

end

end A179016.P13778570280273664296

/-! ## A179016.P12516501915548524747

`eq[1, A213719(n)]`
-/

namespace A179016.P12516501915548524747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213719 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179016.P12516501915548524747

/-! ## A179016.P3759238876628642739

`eq[1, A213731(n)]`
-/

namespace A179016.P3759238876628642739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213731 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179016.P3759238876628642739

/-! ## A179016.P13414195799934799639

`filter[A005187(n), A213719(#)]`
-/

namespace A179016.P13414195799934799639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A213719 (f1 j).toNat = 1) n)

end

end A179016.P13414195799934799639

/-! ## A179016.P1718072679678442747

`filter[A080412(n), A213719(#)]`
-/

namespace A179016.P1718072679678442747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A213719 (f1 j).toNat = 1) n)

end

end A179016.P1718072679678442747

/-! ## A179016.P20106964906106713

`filter[A132368(n), A213719(#)]`
-/

namespace A179016.P20106964906106713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A213719 (f1 j).toNat = 1) n)

end

end A179016.P20106964906106713

/-! ## A179016.P3385978511446693943

`filter[A011371(2*n), A213719(#)]`
-/

namespace A179016.P3385978511446693943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A213719 (f1 j).toNat = 1) n)

end

end A179016.P3385978511446693943

/-!
# A179017: Odd numbers c such that c*(c^2 - 1)/4 is squarefree.

The programs for A179017, the canonical program `A179017.P6095337465077806677` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179017 has offset 1).

The definition of A179017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7776 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179017.P3656961026968566593

`2*A172186(n+1)+1`
-/

namespace A179017.P3656961026968566593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172186 (n + 1) + 1

end

end A179017.P3656961026968566593

namespace A179017

/-- `2*A172186(n+1)+1` -/
def P3656961026968566593.Spec : Prop :=
  ∀ n, P3656961026968566593.a n = A179017 (n + 1)

end A179017

/-! ## A179017.P11434057521802974448

`2*A179019(n+1)-1`
-/

namespace A179017.P11434057521802974448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A179019 (n + 1) - 1

end

end A179017.P11434057521802974448

namespace A179017

/-- `2*A179019(n+1)-1` -/
def P11434057521802974448.Spec : Prop :=
  ∀ n, P11434057521802974448.a n = A179017 (n + 1)

end A179017

/-! ## A179017.P9286801803805621233

`A179019(n+1)+A172186(n+1)`
-/

namespace A179017.P9286801803805621233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179019 (n + 1) + A172186 (n + 1)

end

end A179017.P9286801803805621233

namespace A179017

/-- `A179019(n+1)+A172186(n+1)` -/
def P9286801803805621233.Spec : Prop :=
  ∀ n, P9286801803805621233.a n = A179017 (n + 1)

end A179017

/-! ## A179017.P15742256606160684343

`A007913(A172186(n+1)+A172186(n+1)+1)`
-/

namespace A179017.P15742256606160684343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A172186 (n + 1) + (A172186 (n + 1) + 1)).toNat

end

end A179017.P15742256606160684343

namespace A179017

/-- `A007913(A172186(n+1)+A172186(n+1)+1)` -/
def P15742256606160684343.Spec : Prop :=
  ∀ n, P15742256606160684343.a n = A179017 (n + 1)

end A179017

/-! ## A179017.P800435918266501743

`A007947(A172186(n+1)+A172186(n+1)+1)`
-/

namespace A179017.P800435918266501743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A172186 (n + 1) + (A172186 (n + 1) + 1)).toNat

end

end A179017.P800435918266501743

namespace A179017

/-- `A007947(A172186(n+1)+A172186(n+1)+1)` -/
def P800435918266501743.Spec : Prop :=
  ∀ n, P800435918266501743.a n = A179017 (n + 1)

end A179017

/-! ## A179017.P14624046198311454488

`A007947(A179019(n+1)+A179019(n+1)-1)`
-/

namespace A179017.P14624046198311454488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A179019 (n + 1) + (A179019 (n + 1) - 1)).toNat

end

end A179017.P14624046198311454488

namespace A179017

/-- `A007947(A179019(n+1)+A179019(n+1)-1)` -/
def P14624046198311454488.Spec : Prop :=
  ∀ n, P14624046198311454488.a n = A179017 (n + 1)

end A179017

/-! ## A179017.P6095337465077806677

`filter[A295243(n+1), A008966(#)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A179017

/-- `filter[A295243(n+1), A008966(#)]` -/
def P6095337465077806677.Spec : Prop :=
  ∀ n, P6095337465077806677.a n = A179017 (n + 1)

theorem P6095337465077806677.correct : P6095337465077806677.Spec := by
  intro n
  simp only [A179017, Nat.add_sub_cancel]

end A179017

/-! ## A179017.P6276229743376535337

`filter[A295243(n+1), A105597(#)]`
-/

namespace A179017.P6276229743376535337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105597 (f1 j).toNat = 1) n)

end

end A179017.P6276229743376535337

namespace A179017

/-- `filter[A295243(n+1), A105597(#)]` -/
def P6276229743376535337.Spec : Prop :=
  ∀ n, P6276229743376535337.a n = A179017 (n + 1)

end A179017

/-! ## A179017.P16500597950769739402

`filter[A295243(n+1), A323154(#)]`
-/

namespace A179017.P16500597950769739402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A179017.P16500597950769739402

namespace A179017

/-- `filter[A295243(n+1), A323154(#)]` -/
def P16500597950769739402.Spec : Prop :=
  ∀ n, P16500597950769739402.a n = A179017 (n + 1)

end A179017

/-! ## A179017.P15959935243970860129

`filter[A295243(n+1), A323239(#)]`
-/

namespace A179017.P15959935243970860129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A179017.P15959935243970860129

namespace A179017

/-- `filter[A295243(n+1), A323239(#)]` -/
def P15959935243970860129.Spec : Prop :=
  ∀ n, P15959935243970860129.a n = A179017 (n + 1)

end A179017

/-! ## A179017.P2306318844372391110

`filter[A295243(n+1), A353559(#)]`
-/

namespace A179017.P2306318844372391110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A179017.P2306318844372391110

namespace A179017

/-- `filter[A295243(n+1), A353559(#)]` -/
def P2306318844372391110.Spec : Prop :=
  ∀ n, P2306318844372391110.a n = A179017 (n + 1)

end A179017

/-! ## A179017.P9798741263254380491

`filter[A295243(n+1), A353627(#)]`
-/

namespace A179017.P9798741263254380491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A179017.P9798741263254380491

namespace A179017

/-- `filter[A295243(n+1), A353627(#)]` -/
def P9798741263254380491.Spec : Prop :=
  ∀ n, P9798741263254380491.a n = A179017 (n + 1)

end A179017

/-! ## A179017.P6256915842361401527

`filter[A295243(n+1), A359590(#)]`
-/

namespace A179017.P6256915842361401527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A179017.P6256915842361401527

namespace A179017

/-- `filter[A295243(n+1), A359590(#)]` -/
def P6256915842361401527.Spec : Prop :=
  ∀ n, P6256915842361401527.a n = A179017 (n + 1)

end A179017

/-! ## A179017.P14744786091863812944

`filter[A295243(n+1), A359592(#)]`
-/

namespace A179017.P14744786091863812944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A179017.P14744786091863812944

namespace A179017

/-- `filter[A295243(n+1), A359592(#)]` -/
def P14744786091863812944.Spec : Prop :=
  ∀ n, P14744786091863812944.a n = A179017 (n + 1)

end A179017

/-! ## A179017.P15444193264908449237

`filter[A295243(n+1), A359834(#)]`
-/

namespace A179017.P15444193264908449237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A179017.P15444193264908449237

namespace A179017

/-- `filter[A295243(n+1), A359834(#)]` -/
def P15444193264908449237.Spec : Prop :=
  ∀ n, P15444193264908449237.a n = A179017 (n + 1)

end A179017

/-! ## A179017.P15814343910204369088

`∩[A005117(n+1), A295243(n+1)]`
-/

namespace A179017.P15814343910204369088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179017.P15814343910204369088

namespace A179017

/-- `∩[A005117(n+1), A295243(n+1)]` -/
def P15814343910204369088.Spec : Prop :=
  ∀ n, (P15814343910204369088.a n : ℤ) = A179017 (n + 1)

end A179017

/-! ## A179017.P5836306667199010607

`∩[A117205(n+1), A295243(n+1)]`
-/

namespace A179017.P5836306667199010607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179017.P5836306667199010607

namespace A179017

/-- `∩[A117205(n+1), A295243(n+1)]` -/
def P5836306667199010607.Spec : Prop :=
  ∀ n, (P5836306667199010607.a n : ℤ) = A179017 (n + 1)

end A179017

/-! ## A179017.P12201434825669776472

`∩[A117203(n+1), A117205(n+1)]`
-/

namespace A179017.P12201434825669776472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179017.P12201434825669776472

namespace A179017

/-- `∩[A117203(n+1), A117205(n+1)]` -/
def P12201434825669776472.Spec : Prop :=
  ∀ n, (P12201434825669776472.a n : ℤ) = A179017 (n + 1)

end A179017

/-! ## A179017.P436229524928103259

`∩[A117203(n+1), A295243(n+1)]`
-/

namespace A179017.P436229524928103259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179017.P436229524928103259

namespace A179017

/-- `∩[A117203(n+1), A295243(n+1)]` -/
def P436229524928103259.Spec : Prop :=
  ∀ n, (P436229524928103259.a n : ℤ) = A179017 (n + 1)

end A179017

/-! ## A179017.P11780553044058225617

`∩[A117203(n+1), A240603(n+1)]`
-/

namespace A179017.P11780553044058225617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179017.P11780553044058225617

namespace A179017

/-- `∩[A117203(n+1), A240603(n+1)]` -/
def P11780553044058225617.Spec : Prop :=
  ∀ n, (P11780553044058225617.a n : ℤ) = A179017 (n + 1)

end A179017

/-!
# A179018: Partial sums of ceiling(Fibonacci(n)/2).

The programs for A179018, the canonical program `A179018.P16645548225252772904` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179018 has offset 0).

The definition of A179018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179018.P16645548225252772904

`2*a(n-1)-2*a(n-4)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=8`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179018

/-- `2*a(n-1)-2*a(n-4)+a(n-6)` -/
def P16645548225252772904.Spec : Prop :=
  ∀ n, P16645548225252772904.a n = A179018 n

theorem P16645548225252772904.correct : P16645548225252772904.Spec := by
  intro n
  simp only [A179018]

end A179018

/-! ## A179018.P11678011013312705044

`∑[A173173(n)]`
-/

namespace A179018.P11678011013312705044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179018.P11678011013312705044

namespace A179018

/-- `∑[A173173(n)]` -/
def P11678011013312705044.Spec : Prop :=
  ∀ n, P11678011013312705044.a n = A179018 n

end A179018

/-! ## A179018.P3887986686467147018

`∑[floor(A001611(n)/2)]`
-/

namespace A179018.P3887986686467147018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001611 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179018.P3887986686467147018

namespace A179018

/-- `∑[floor(A001611(n)/2)]` -/
def P3887986686467147018.Spec : Prop :=
  ∀ n, P3887986686467147018.a n = A179018 n

end A179018

/-! ## A179018.P18190106082224769137

`∑[ceil(A000045(n)/2)]`
-/

namespace A179018.P18190106082224769137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000045 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179018.P18190106082224769137

namespace A179018

/-- `∑[ceil(A000045(n)/2)]` -/
def P18190106082224769137.Spec : Prop :=
  ∀ n, P18190106082224769137.a n = A179018 n

end A179018

/-! ## A179018.P15277294962496581793

`∑[A173673(2*n+1)]`
-/

namespace A179018.P15277294962496581793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179018.P15277294962496581793

namespace A179018

/-- `∑[A173673(2*n+1)]` -/
def P15277294962496581793.Spec : Prop :=
  ∀ n, P15277294962496581793.a n = A179018 n

end A179018

/-! ## A179018.P15066411784500229840

`∑[ceil(A212804(n+1)/2)]`
-/

namespace A179018.P15066411784500229840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A212804 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179018.P15066411784500229840

namespace A179018

/-- `∑[ceil(A212804(n+1)/2)]` -/
def P15066411784500229840.Spec : Prop :=
  ∀ n, P15066411784500229840.a n = A179018 n

end A179018

/-! ## A179018.P11374568304873187892

`∑[ceil(A053602(2*n)/2)]`
-/

namespace A179018.P11374568304873187892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053602 (2 * n) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179018.P11374568304873187892

namespace A179018

/-- `∑[ceil(A053602(2*n)/2)]` -/
def P11374568304873187892.Spec : Prop :=
  ∀ n, P11374568304873187892.a n = A179018 n

end A179018

/-! ## A179018.P3212888987131049678

`a(n-1)+A201864(n)+1` with `a(0)=0`
-/

namespace A179018.P3212888987131049678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A201864 n + 1)

end

end A179018.P3212888987131049678

namespace A179018

/-- `a(n-1)+A201864(n)+1` -/
def P3212888987131049678.Spec : Prop :=
  ∀ n, P3212888987131049678.a n = A179018 n

end A179018

/-! ## A179018.P13806353305238156500

`∑[round(1/2*A000045(n-char[2]))]`
-/

namespace A179018.P13806353305238156500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 : ℚ) / 2 * (A000045 (n - (if ∃ j, f2 j = n then 1 else 0)) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179018.P13806353305238156500

namespace A179018

/-- `∑[round(1/2*A000045(n-char[2]))]` -/
def P13806353305238156500.Spec : Prop :=
  ∀ n, P13806353305238156500.a n = A179018 n

end A179018

/-! ## A179018.P16615154832992039448

`∑[A000045(n-2)+a(n-3)]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A179018.P16615154832992039448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  A000045 (n - 2) + f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179018.P16615154832992039448

namespace A179018

/-- `∑[A000045(n-2)+a(n-3)]` -/
def P16615154832992039448.Spec : Prop :=
  ∀ n, P16615154832992039448.a n = A179018 n

end A179018

/-! ## A179018.P6435863244232449407

`∑[A000045(n)-A004695(n)]`
-/

namespace A179018.P6435863244232449407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A004695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179018.P6435863244232449407

namespace A179018

/-- `∑[A000045(n)-A004695(n)]` -/
def P6435863244232449407.Spec : Prop :=
  ∀ n, P6435863244232449407.a n = A179018 n

end A179018

/-! ## A179018.P147792119129113423

`A322042(n+1)+A178982(n)`
-/

namespace A179018.P147792119129113423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322042 (n + 1) + A178982 n

end

end A179018.P147792119129113423

namespace A179018

/-- `A322042(n+1)+A178982(n)` -/
def P147792119129113423.Spec : Prop :=
  ∀ n, P147792119129113423.a n = A179018 n

end A179018

/-! ## A179018.P3821171940714307804

`∑[round(Δ[A000045(n+1)/2])]`
-/

namespace A179018.P3821171940714307804
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179018.P3821171940714307804

namespace A179018

/-- `∑[round(Δ[A000045(n+1)/2])]` -/
def P3821171940714307804.Spec : Prop :=
  ∀ n, P3821171940714307804.a n = A179018 n

end A179018

/-! ## A179018.P3493460609248847910

`∑[floor((A006355(n+1)+2)/4)]`
-/

namespace A179018.P3493460609248847910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006355 (n + 1) + 2 : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179018.P3493460609248847910

namespace A179018

/-- `∑[floor((A006355(n+1)+2)/4)]` -/
def P3493460609248847910.Spec : Prop :=
  ∀ n, P3493460609248847910.a n = A179018 n

end A179018

/-! ## A179018.P6042125698911406324

`floor(A000045(n+2)/2+n/3)`
-/

namespace A179018.P6042125698911406324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 (n + 2) : ℚ) / 2 + (n : ℚ) / 3⌋

end

end A179018.P6042125698911406324

namespace A179018

/-- `floor(A000045(n+2)/2+n/3)` -/
def P6042125698911406324.Spec : Prop :=
  ∀ n, P6042125698911406324.a n = A179018 n

end A179018

/-! ## A179018.P4214072802118086851

`∑[(A000045(n)+and(1, A000032(n)))/2]`
-/

namespace A179018.P4214072802118086851
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n + Int.land 1 (A000032 n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179018.P4214072802118086851

namespace A179018

/-- `∑[(A000045(n)+and(1, A000032(n)))/2]` -/
def P4214072802118086851.Spec : Prop :=
  ∀ n, P4214072802118086851.a n = (A179018 n : ℚ)

end A179018

/-! ## A179018.P3612492024692169590

`∑[A001611(n)-A000217(n+1)%3]/2`
-/

namespace A179018.P3612492024692169590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - Int.tmod (A000217 (n + 1)) 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A179018.P3612492024692169590

namespace A179018

/-- `∑[A001611(n)-A000217(n+1)%3]/2` -/
def P3612492024692169590.Spec : Prop :=
  ∀ n, P3612492024692169590.a n = (A179018 n : ℚ)

end A179018

/-!
# A179019: a(n) = (A179017(n)+1)/2.

The programs for A179019, the canonical program `A179019.P4552771100310599832` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179019 has offset 1).

The definition of A179019 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179017, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A179019.P4552771100310599832

`(A179017(n+1)+1)/2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A179019

/-- `(A179017(n+1)+1)/2` -/
def P4552771100310599832.Spec : Prop :=
  ∀ n, P4552771100310599832.a n = (A179019 (n + 1) : ℚ)

end A179019

/-! ## A179019.P11213766892684643681

`A179017(n+1)-A172186(n+1)`
-/

namespace A179019.P11213766892684643681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179017 (n + 1) - A172186 (n + 1)

end

end A179019.P11213766892684643681

namespace A179019

/-- `A179017(n+1)-A172186(n+1)` -/
def P11213766892684643681.Spec : Prop :=
  ∀ n, P11213766892684643681.a n = A179019 (n + 1)

end A179019

/-! ## A179019.P11424066936734494803

`A172186(n+1)+1`
-/

namespace A179019.P11424066936734494803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172186 (n + 1) + 1

end

end A179019.P11424066936734494803

namespace A179019

/-- `A172186(n+1)+1` -/
def P11424066936734494803.Spec : Prop :=
  ∀ n, P11424066936734494803.a n = A179019 (n + 1)

end A179019

/-! ## A179019.P5256467549749319837

`ceil(A179017(n+1)/2)`
-/

namespace A179019.P5256467549749319837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A179017 (n + 1) : ℚ) / 2⌉

end

end A179019.P5256467549749319837

namespace A179019

/-- `ceil(A179017(n+1)/2)` -/
def P5256467549749319837.Spec : Prop :=
  ∀ n, P5256467549749319837.a n = A179019 (n + 1)

end A179019

/-! ## A179019.P1628560274773462372

`A273943(A179017(n+1)+1)`
-/

namespace A179019.P1628560274773462372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A179017 (n + 1) + 1).toNat

end

end A179019.P1628560274773462372

namespace A179019

/-- `A273943(A179017(n+1)+1)` -/
def P1628560274773462372.Spec : Prop :=
  ∀ n, P1628560274773462372.a n = A179019 (n + 1)

end A179019

/-! ## A179019.P7282352893414949120

`∩[A007674(n+1), A117204(n+1)]+1`
-/

namespace A179019.P7282352893414949120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A179019.P7282352893414949120

namespace A179019

/-- `∩[A007674(n+1), A117204(n+1)]+1` -/
def P7282352893414949120.Spec : Prop :=
  ∀ n, (P7282352893414949120.a n : ℤ) = A179019 (n + 1)

end A179019

/-! ## A179019.P7034296028871124355

`∩[A081083(n+1), A117204(n+1)]+1`
-/

namespace A179019.P7034296028871124355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A179019.P7034296028871124355

namespace A179019

/-- `∩[A081083(n+1), A117204(n+1)]+1` -/
def P7034296028871124355.Spec : Prop :=
  ∀ n, (P7034296028871124355.a n : ℤ) = A179019 (n + 1)

end A179019

/-! ## A179019.P13739624542453217350

`∩[A117204(n+1), A344312(n+1)]+1`
-/

namespace A179019.P13739624542453217350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A179019.P13739624542453217350

namespace A179019

/-- `∩[A117204(n+1), A344312(n+1)]+1` -/
def P13739624542453217350.Spec : Prop :=
  ∀ n, (P13739624542453217350.a n : ℤ) = A179019 (n + 1)

end A179019

/-! ## A179019.P11118756788195330238

`∩[A117204(n+1), A344314(n+1)]+1`
-/

namespace A179019.P11118756788195330238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A179019.P11118756788195330238

namespace A179019

/-- `∩[A117204(n+1), A344314(n+1)]+1` -/
def P11118756788195330238.Spec : Prop :=
  ∀ n, (P11118756788195330238.a n : ℤ) = A179019 (n + 1)

end A179019

/-! ## A179019.P17954742899090682832

`∩[A117204(n+1), A358817(n+1)]+1`
-/

namespace A179019.P17954742899090682832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A179019.P17954742899090682832

namespace A179019

/-- `∩[A117204(n+1), A358817(n+1)]+1` -/
def P17954742899090682832.Spec : Prop :=
  ∀ n, (P17954742899090682832.a n : ℤ) = A179019 (n + 1)

end A179019

/-! ## A179019.P6574684636044655495

`∩[A079709(n+1), A117204(n+1)]+1`
-/

namespace A179019.P6574684636044655495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A179019.P6574684636044655495

namespace A179019

/-- `∩[A079709(n+1), A117204(n+1)]+1` -/
def P6574684636044655495.Spec : Prop :=
  ∀ n, (P6574684636044655495.a n : ℤ) = A179019 (n + 1)

end A179019

/-! ## A179019.P17472855741634878380

`∩[A007674(n+1), A264387(n+1)]+1`
-/

namespace A179019.P17472855741634878380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A179019.P17472855741634878380

namespace A179019

/-- `∩[A007674(n+1), A264387(n+1)]+1` -/
def P17472855741634878380.Spec : Prop :=
  ∀ n, (P17472855741634878380.a n : ℤ) = A179019 (n + 1)

end A179019

/-! ## A179019.P16723803167547093117

`A020725(A172186(n+1))`
-/

namespace A179019.P16723803167547093117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A172186 (n + 1)).toNat

end

end A179019.P16723803167547093117

namespace A179019

/-- `A020725(A172186(n+1))` -/
def P16723803167547093117.Spec : Prop :=
  ∀ n, P16723803167547093117.a n = A179019 (n + 1)

end A179019

/-! ## A179019.P9208507769979388159

`A000463(A179017(n+1))`
-/

namespace A179019.P9208507769979388159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A179017 (n + 1)).toNat

end

end A179019.P9208507769979388159

namespace A179019

/-- `A000463(A179017(n+1))` -/
def P9208507769979388159.Spec : Prop :=
  ∀ n, P9208507769979388159.a n = A179019 (n + 1)

end A179019

/-! ## A179019.P6274993354213892024

`A032742(A179017(n+1)+1)`
-/

namespace A179019.P6274993354213892024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A179017 (n + 1) + 1).toNat

end

end A179019.P6274993354213892024

namespace A179019

/-- `A032742(A179017(n+1)+1)` -/
def P6274993354213892024.Spec : Prop :=
  ∀ n, P6274993354213892024.a n = A179019 (n + 1)

end A179019

/-! ## A179019.P15280881493156440801

`A142150(A179017(n+1)+1)`
-/

namespace A179019.P15280881493156440801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A179017 (n + 1) + 1).toNat

end

end A179019.P15280881493156440801

namespace A179019

/-- `A142150(A179017(n+1)+1)` -/
def P15280881493156440801.Spec : Prop :=
  ∀ n, P15280881493156440801.a n = A179019 (n + 1)

end A179019

/-! ## A179019.P2377041179241023310

`A001651(A179017(n+1)+1)-A179017(n+1)`
-/

namespace A179019.P2377041179241023310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A179017 (n + 1) + 1).toNat - A179017 (n + 1)

end

end A179019.P2377041179241023310

namespace A179019

/-- `A001651(A179017(n+1)+1)-A179017(n+1)` -/
def P2377041179241023310.Spec : Prop :=
  ∀ n, P2377041179241023310.a n = A179019 (n + 1)

end A179019

/-!
# A179020: Doubled Thue-Morse sequence: the A010059 sequence replacing 0 with 0,0 and 1 with 1,1.

The programs for A179020, the canonical program `A179020.P13298888622046712416` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179020 has offset 0).

The definition of A179020 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179020.P13298888622046712416

`1-A095190(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A179020

/-- `1-A095190(n)` -/
def P13298888622046712416.Spec : Prop :=
  ∀ n, P13298888622046712416.a n = A179020 n

theorem P13298888622046712416.correct : P13298888622046712416.Spec := by
  intro n
  simp only [A179020]

end A179020

/-! ## A179020.P177286988735821806

`char[xor(n, xor(1, n)+n)]`
-/

namespace A179020.P177286988735821806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.xor 1 n + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A179020.P177286988735821806

namespace A179020

/-- `char[xor(n, xor(1, n)+n)]` -/
def P177286988735821806.Spec : Prop :=
  ∀ n, (P177286988735821806.a n : ℤ) = A179020 n

end A179020

/-! ## A179020.P12700919227675927193

`char[xor(n, 2*and(n, -2))]`
-/

namespace A179020.P12700919227675927193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (2 * Int.land (n : ℤ) (-2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A179020.P12700919227675927193

namespace A179020

/-- `char[xor(n, 2*and(n, -2))]` -/
def P12700919227675927193.Spec : Prop :=
  ∀ n, (P12700919227675927193.a n : ℤ) = A179020 n

end A179020

/-! ## A179020.P15238631058049612465

`char[xor(n, 4*floor(n/2))]`
-/

namespace A179020.P15238631058049612465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (4 * ⌊(n : ℚ) / 2⌋)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A179020.P15238631058049612465

namespace A179020

/-- `char[xor(n, 4*floor(n/2))]` -/
def P15238631058049612465.Spec : Prop :=
  ∀ n, (P15238631058049612465.a n : ℤ) = A179020 n

end A179020

/-! ## A179020.P227832089991632973

`char[comp[xor(n, 2*or(1, n))]]`
-/

namespace A179020.P227832089991632973
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * Nat.lor 1 n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A179020.P227832089991632973

namespace A179020

/-- `char[comp[xor(n, 2*or(1, n))]]` -/
def P227832089991632973.Spec : Prop :=
  ∀ n, (P227832089991632973.a n : ℤ) = A179020 n

end A179020

/-! ## A179020.P10542938174928693575

`1-a(and(n, n-2))` with `a(0)=1, a(1)=1`
-/

namespace A179020.P10542938174928693575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - a (Int.land (n : ℤ) ((n : ℤ) - 2)).toNat

end

end A179020.P10542938174928693575

namespace A179020

/-- `1-a(and(n, n-2))` -/
def P10542938174928693575.Spec : Prop :=
  ∀ n, P10542938174928693575.a n = A179020 n

end A179020

/-! ## A179020.P15400136913235042340

`1-char[xor(n, 2*or(1, n))]`
-/

namespace A179020.P15400136913235042340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * Nat.lor 1 n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A179020.P15400136913235042340

namespace A179020

/-- `1-char[xor(n, 2*or(1, n))]` -/
def P15400136913235042340.Spec : Prop :=
  ∀ n, P15400136913235042340.a n = A179020 n

end A179020

/-! ## A179020.P16851037571179557669

`xor(1, char[xor(n, 2*or(1, n))])`
-/

namespace A179020.P16851037571179557669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * Nat.lor 1 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A179020.P16851037571179557669

namespace A179020

/-- `xor(1, char[xor(n, 2*or(1, n))])` -/
def P16851037571179557669.Spec : Prop :=
  ∀ n, (P16851037571179557669.a n : ℤ) = A179020 n

end A179020

/-! ## A179020.P7313638439362443686

`(comp[xor(n, 2*n)]+n)%2`
-/

namespace A179020.P7313638439362443686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) % 2

end

end A179020.P7313638439362443686

namespace A179020

/-- `(comp[xor(n, 2*n)]+n)%2` -/
def P7313638439362443686.Spec : Prop :=
  ∀ n, (P7313638439362443686.a n : ℤ) = A179020 n

end A179020

/-! ## A179020.P4738963059160636392

`and(1, comp[xor(n, 2*n)]+n)`
-/

namespace A179020.P4738963059160636392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A179020.P4738963059160636392

namespace A179020

/-- `and(1, comp[xor(n, 2*n)]+n)` -/
def P4738963059160636392.Spec : Prop :=
  ∀ n, (P4738963059160636392.a n : ℤ) = A179020 n

end A179020

/-! ## A179020.P10051126474741505508

`and(1, n-char[xor(n, 2*n)])`
-/

namespace A179020.P10051126474741505508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A179020.P10051126474741505508

namespace A179020

/-- `and(1, n-char[xor(n, 2*n)])` -/
def P10051126474741505508.Spec : Prop :=
  ∀ n, P10051126474741505508.a n = A179020 n

end A179020

/-! ## A179020.P7167055446372650395

`xor(n%2, char[xor(n, 2*n)])`
-/

namespace A179020.P7167055446372650395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n % 2) (if ∃ j, f1 j = n then 1 else 0)

end

end A179020.P7167055446372650395

namespace A179020

/-- `xor(n%2, char[xor(n, 2*n)])` -/
def P7167055446372650395.Spec : Prop :=
  ∀ n, (P7167055446372650395.a n : ℤ) = A179020 n

end A179020

/-! ## A179020.P16839182625387066517

`(a(n-1)+val(n, 2))%2` with `a(0)=1`
-/

namespace A179020.P16839182625387066517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + SequenceMachineLib.valuation n 2) % 2

end

end A179020.P16839182625387066517

namespace A179020

/-- `(a(n-1)+val(n, 2))%2` -/
def P16839182625387066517.Spec : Prop :=
  ∀ n, (P16839182625387066517.a n : ℤ) = A179020 n

end A179020

/-! ## A179020.P13885793088980679163

`∑[val(abs(1-n)+1, 2)]%2`
-/

namespace A179020.P13885793088980679163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A179020.P13885793088980679163

namespace A179020

/-- `∑[val(abs(1-n)+1, 2)]%2` -/
def P13885793088980679163.Spec : Prop :=
  ∀ n, (P13885793088980679163.a n : ℤ) = A179020 n

end A179020

/-! ## A179020.P16205810454666808602

`abs(comp[xor(n, 2*n)]-n)%2`
-/

namespace A179020.P16205810454666808602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)| 2

end

end A179020.P16205810454666808602

namespace A179020

/-- `abs(comp[xor(n, 2*n)]-n)%2` -/
def P16205810454666808602.Spec : Prop :=
  ∀ n, P16205810454666808602.a n = A179020 n

end A179020

/-! ## A179020.P10184642796888727282

`((n-comp[xor(n, 2*n)])^6)%2`
-/

namespace A179020.P10184642796888727282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 6) 2

end

end A179020.P10184642796888727282

namespace A179020

/-- `((n-comp[xor(n, 2*n)])^6)%2` -/
def P10184642796888727282.Spec : Prop :=
  ∀ n, P10184642796888727282.a n = A179020 n

end A179020

/-! ## A179020.P16095204339313678700

`((comp[xor(n, 2*n)]-n)%2)%2`
-/

namespace A179020.P16095204339313678700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) 2) 2

end

end A179020.P16095204339313678700

namespace A179020

/-- `((comp[xor(n, 2*n)]-n)%2)%2` -/
def P16095204339313678700.Spec : Prop :=
  ∀ n, P16095204339313678700.a n = A179020 n

end A179020

/-! ## A179020.P9812765137837033649

`and(1, ∑[val(abs(1-4*n)+1, 2)])`
-/

namespace A179020.P9812765137837033649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (4 * n : ℤ)| + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A179020.P9812765137837033649

namespace A179020

/-- `and(1, ∑[val(abs(1-4*n)+1, 2)])` -/
def P9812765137837033649.Spec : Prop :=
  ∀ n, (P9812765137837033649.a n : ℤ) = A179020 n

end A179020

/-! ## A179020.P10595330664318872310

`A010060(or(1, n))`
-/

namespace A179020.P10595330664318872310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.lor 1 n)

end

end A179020.P10595330664318872310

namespace A179020

/-- `A010060(or(1, n))` -/
def P10595330664318872310.Spec : Prop :=
  ∀ n, P10595330664318872310.a n = A179020 n

end A179020

/-!
# A179023: a(n) = n(F(n+2) - 1) where F(n) is defined by A000045.

The programs for A179023, the canonical program `A179023.P17617203113148699406` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179023 has offset 0).

The definition of A179023 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179023.P17617203113148699406

`4*a(n-1)-4*a(n-2)-2*a(n-3)+4*a(n-4)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=12, a(4)=28, a(5)=60`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179023

/-- `4*a(n-1)-4*a(n-2)-2*a(n-3)+4*a(n-4)-a(n-6)` -/
def P17617203113148699406.Spec : Prop :=
  ∀ n, P17617203113148699406.a n = A179023 n

theorem P17617203113148699406.correct : P17617203113148699406.Spec := by
  intro n
  simp only [A179023]

end A179023

/-! ## A179023.P12724802398907587001

`n*∑[a(n-1)+a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A179023.P12724802398907587001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A179023.P12724802398907587001

namespace A179023

/-- `n*∑[a(n-1)+a(n-2)]` -/
def P12724802398907587001.Spec : Prop :=
  ∀ n, (P12724802398907587001.a n : ℤ) = A179023 n

end A179023

/-! ## A179023.P11545738498090756436

`n*∑[A000045(n)]`
-/

namespace A179023.P11545738498090756436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A179023.P11545738498090756436

namespace A179023

/-- `n*∑[A000045(n)]` -/
def P11545738498090756436.Spec : Prop :=
  ∀ n, P11545738498090756436.a n = A179023 n

end A179023

/-! ## A179023.P8280268154674003996

`n*A000071(n+2)`
-/

namespace A179023.P8280268154674003996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000071 (n + 2)

end

end A179023.P8280268154674003996

namespace A179023

/-- `n*A000071(n+2)` -/
def P8280268154674003996.Spec : Prop :=
  ∀ n, P8280268154674003996.a n = A179023 n

end A179023

/-! ## A179023.P7567446159089384097

`n*A339572(2*n)`
-/

namespace A179023.P7567446159089384097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A339572 (2 * n)

end

end A179023.P7567446159089384097

namespace A179023

/-- `n*A339572(2*n)` -/
def P7567446159089384097.Spec : Prop :=
  ∀ n, P7567446159089384097.a n = A179023 n

end A179023

/-! ## A179023.P15781850990998234087

`n*A321664(3*n)`
-/

namespace A179023.P15781850990998234087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A321664 (3 * n)

end

end A179023.P15781850990998234087

namespace A179023

/-- `n*A321664(3*n)` -/
def P15781850990998234087.Spec : Prop :=
  ∀ n, P15781850990998234087.a n = A179023 n

end A179023

/-! ## A179023.P3709264912652370727

`n*∑[abs(A236191(n))]`
-/

namespace A179023.P3709264912652370727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A179023.P3709264912652370727

namespace A179023

/-- `n*∑[abs(A236191(n))]` -/
def P3709264912652370727.Spec : Prop :=
  ∀ n, P3709264912652370727.a n = A179023 n

end A179023

/-! ## A179023.P13667668824522662664

`n*∑[abs(A333378(n))]`
-/

namespace A179023.P13667668824522662664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A333378 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A179023.P13667668824522662664

namespace A179023

/-- `n*∑[abs(A333378(n))]` -/
def P13667668824522662664.Spec : Prop :=
  ∀ n, P13667668824522662664.a n = A179023 n

end A179023

/-! ## A179023.P8485531524862432692

`n*A131524(Δ[n²])`
-/

namespace A179023.P8485531524862432692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A131524 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A179023.P8485531524862432692

namespace A179023

/-- `n*A131524(Δ[n²])` -/
def P8485531524862432692.Spec : Prop :=
  ∀ n, P8485531524862432692.a n = A179023 n

end A179023

/-! ## A179023.P1676576929258055385

`∑[A007502(n+1)-1]`
-/

namespace A179023.P1676576929258055385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007502 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179023.P1676576929258055385

namespace A179023

/-- `∑[A007502(n+1)-1]` -/
def P1676576929258055385.Spec : Prop :=
  ∀ n, P1676576929258055385.a n = A179023 n

end A179023

/-! ## A179023.P1337194974856316302

`n*∑[A212804(n+1)]`
-/

namespace A179023.P1337194974856316302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A179023.P1337194974856316302

namespace A179023

/-- `n*∑[A212804(n+1)]` -/
def P1337194974856316302.Spec : Prop :=
  ∀ n, P1337194974856316302.a n = A179023 n

end A179023

/-! ## A179023.P15197857158929501724

`n*∑[A001611(n)-1]`
-/

namespace A179023.P15197857158929501724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A179023.P15197857158929501724

namespace A179023

/-- `n*∑[A001611(n)-1]` -/
def P15197857158929501724.Spec : Prop :=
  ∀ n, P15197857158929501724.a n = A179023 n

end A179023

/-! ## A179023.P13986752475864400388

`n*(Δ[A001911(n)]-1)`
-/

namespace A179023.P13986752475864400388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n - 1)

end

end A179023.P13986752475864400388

namespace A179023

/-- `n*(Δ[A001911(n)]-1)` -/
def P13986752475864400388.Spec : Prop :=
  ∀ n, P13986752475864400388.a n = A179023 n

end A179023

/-! ## A179023.P11827725310394457164

`n*(Δ[A018910(n)]-1)`
-/

namespace A179023.P11827725310394457164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n - 1)

end

end A179023.P11827725310394457164

namespace A179023

/-- `n*(Δ[A018910(n)]-1)` -/
def P11827725310394457164.Spec : Prop :=
  ∀ n, P11827725310394457164.a n = A179023 n

end A179023

/-! ## A179023.P1423533171680183304

`n*(Δ[A020695(n)]-1)`
-/

namespace A179023.P1423533171680183304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n - 1)

end

end A179023.P1423533171680183304

namespace A179023

/-- `n*(Δ[A020695(n)]-1)` -/
def P1423533171680183304.Spec : Prop :=
  ∀ n, P1423533171680183304.a n = A179023 n

end A179023

/-! ## A179023.P11278102718185371623

`n*∑[A053602(2*n)]`
-/

namespace A179023.P11278102718185371623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A179023.P11278102718185371623

namespace A179023

/-- `n*∑[A053602(2*n)]` -/
def P11278102718185371623.Spec : Prop :=
  ∀ n, P11278102718185371623.a n = A179023 n

end A179023

/-! ## A179023.P5627045735734320385

`n*∑[A103609(2*n)]`
-/

namespace A179023.P5627045735734320385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A179023.P5627045735734320385

namespace A179023

/-- `n*∑[A103609(2*n)]` -/
def P5627045735734320385.Spec : Prop :=
  ∀ n, P5627045735734320385.a n = A179023 n

end A179023

/-! ## A179023.P14550953061662730131

`n*∑[A302126(2*n)]`
-/

namespace A179023.P14550953061662730131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A179023.P14550953061662730131

namespace A179023

/-- `n*∑[A302126(2*n)]` -/
def P14550953061662730131.Spec : Prop :=
  ∀ n, P14550953061662730131.a n = A179023 n

end A179023

/-! ## A179023.P9011916582112704706

`n*(A000045(n+2)-1)`
-/

namespace A179023.P9011916582112704706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000045 (n + 2) - 1)

end

end A179023.P9011916582112704706

namespace A179023

/-- `n*(A000045(n+2)-1)` -/
def P9011916582112704706.Spec : Prop :=
  ∀ n, P9011916582112704706.a n = A179023 n

end A179023

/-!
# A179024: Primes whose only prime digits are 2's.

The programs for A179024, there is no canonical definition to state claims against.
-/

/-! ## A179024.P14273760504933932056

`∩[A152312(n+1), A208272(n+1)]`
-/

namespace A179024.P14273760504933932056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179024.P14273760504933932056

/-! ## A179024.P15638448554473401485

`∩[A062653(n+1), A152312(n+1)]`
-/

namespace A179024.P15638448554473401485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179024.P15638448554473401485

/-! ## A179024.P16191350203419768286

`∩[A152312(n+1), A179336(n+1)]`
-/

namespace A179024.P16191350203419768286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179024.P16191350203419768286

/-! ## A179024.P13580202544132534559

`∩[A036433(n+1), A152312(n+1)]`
-/

namespace A179024.P13580202544132534559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179024.P13580202544132534559

/-! ## A179024.P8530975723607907178

`∩[A011532(n+1), A152312(n+1)]`
-/

namespace A179024.P8530975723607907178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179024.P8530975723607907178

/-! ## A179024.P9825884889578554521

`∩[A152312(n+1), A092451(n)]`
-/

namespace A179024.P9825884889578554521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092451 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179024.P9825884889578554521

/-! ## A179024.P1812191414257925338

`∩[A152312(n+1), A257219(n+1)]`
-/

namespace A179024.P1812191414257925338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179024.P1812191414257925338

/-! ## A179024.P4886420734696560128

`∩[A118950(n+1), A152312(n+1)]`
-/

namespace A179024.P4886420734696560128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179024.P4886420734696560128

/-!
# A179025: Primes with a single 2 as the only prime digit.

The programs for A179025, there is no canonical definition to state claims against.
-/

/-! ## A179025.P12727874370052394964

`∩[A092621(n+1), A152312(n+1)]`
-/

namespace A179025.P12727874370052394964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179025.P12727874370052394964

/-! ## A179025.P13337247721112868250

`∩[A092621(n+1), A179024(n+1)]`
-/

namespace A179025.P13337247721112868250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179025.P13337247721112868250

/-! ## A179025.P15706379812194717463

`∩[A092621(n+1), A208272(n+1)]`
-/

namespace A179025.P15706379812194717463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179025.P15706379812194717463

/-! ## A179025.P8702464476994656814

`∩[A062653(n+1), A092621(n+1)]`
-/

namespace A179025.P8702464476994656814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179025.P8702464476994656814

/-! ## A179025.P5777950523245614013

`∩[A036433(n+1), A092621(n+1)]`
-/

namespace A179025.P5777950523245614013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179025.P5777950523245614013

/-! ## A179025.P944801211444894259

`∩[A092620(n+1), A152312(n+1)]`
-/

namespace A179025.P944801211444894259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179025.P944801211444894259

/-! ## A179025.P4908618945129478422

`∩[A092620(n+1), A179024(n+1)]`
-/

namespace A179025.P4908618945129478422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179025.P4908618945129478422

/-! ## A179025.P1467228233589881214

`∩[A092620(n+1), A208272(n+1)]`
-/

namespace A179025.P1467228233589881214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179025.P1467228233589881214

/-! ## A179025.P10847083523382626744

`∩[A043497(n+1), A092621(n+1)]`
-/

namespace A179025.P10847083523382626744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179025.P10847083523382626744

/-! ## A179025.P6088882070082196453

`∩[A043497(n+1), A152312(n+1)]`
-/

namespace A179025.P6088882070082196453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179025.P6088882070082196453

/-! ## A179025.P5542168196087541278

`∩[A043497(n+1), A179024(n+1)]`
-/

namespace A179025.P5542168196087541278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179025.P5542168196087541278

/-! ## A179025.P77842224978476681

`∩[A011532(n+1), A092621(n+1)]`
-/

namespace A179025.P77842224978476681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179025.P77842224978476681

/-! ## A179025.P5730254222928461523

`∩[A094317(n+1), A152312(n+1)]`
-/

namespace A179025.P5730254222928461523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179025.P5730254222928461523

/-! ## A179025.P4831180867733108615

`∩[A094317(n+1), A179024(n+1)]`
-/

namespace A179025.P4831180867733108615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179025.P4831180867733108615

/-! ## A179025.P2269666521449530313

`∩[A092621(n+1), A092451(n)]`
-/

namespace A179025.P2269666521449530313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092451 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179025.P2269666521449530313

/-!
# A179026: Primes whose only prime digits are 3's.

The programs for A179026, there is no canonical definition to state claims against.
-/

/-! ## A179026.P15250567254852764023

`A006530(A179027(n+1)²)`
-/

namespace A179026.P15250567254852764023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A179027 (n + 1) ^ 2).toNat

end

end A179026.P15250567254852764023

/-! ## A179026.P11962646208338709223

`A007947(A179027(n+1)²)`
-/

namespace A179026.P11962646208338709223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A179027 (n + 1) ^ 2).toNat

end

end A179026.P11962646208338709223

/-! ## A179026.P2852891269796576941

`A020639(A179027(n+1)²)`
-/

namespace A179026.P2852891269796576941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A179027 (n + 1) ^ 2).toNat

end

end A179026.P2852891269796576941

/-! ## A179026.P8407553088257537579

`A052410(A179027(n+1)²)`
-/

namespace A179026.P8407553088257537579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A179027 (n + 1) ^ 2).toNat

end

end A179026.P8407553088257537579

/-! ## A179026.P9408118567352762813

`A179027(A101646(∑[n+1]))`
-/

namespace A179026.P9408118567352762813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179027 (A101646 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A179026.P9408118567352762813

/-!
# A179027: Primes with a 3 as the only prime digit.

The programs for A179027, there is no canonical definition to state claims against.
-/

/-! ## A179027.P4458803757279478739

`∩[A092621(n+1), A179026(n+1)]`
-/

namespace A179027.P4458803757279478739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179027.P4458803757279478739

/-! ## A179027.P2480996499594136862

`∩[A092621(n+1), A212525(n+1)]`
-/

namespace A179027.P2480996499594136862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179027.P2480996499594136862

/-! ## A179027.P12049182951123942780

`∩[A062667(n+1), A092621(n+1)]`
-/

namespace A179027.P12049182951123942780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179027.P12049182951123942780

/-! ## A179027.P8050682808447550119

`∩[A092620(n+1), A179026(n+1)]`
-/

namespace A179027.P8050682808447550119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179027.P8050682808447550119

/-! ## A179027.P12175831679565886663

`∩[A092620(n+1), A212525(n+1)]`
-/

namespace A179027.P12175831679565886663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179027.P12175831679565886663

/-! ## A179027.P18082084085761387574

`∩[A043501(n+1), A092621(n+1)]`
-/

namespace A179027.P18082084085761387574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179027.P18082084085761387574

/-! ## A179027.P384656902467472641

`∩[A043501(n+1), A179026(n+1)]`
-/

namespace A179027.P384656902467472641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179027.P384656902467472641

/-! ## A179027.P4047067617837825507

`∩[A011533(n+1), A092621(n+1)]`
-/

namespace A179027.P4047067617837825507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179027.P4047067617837825507

/-! ## A179027.P7649973524483589412

`∩[A094317(n+1), A179026(n+1)]`
-/

namespace A179027.P7649973524483589412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179027.P7649973524483589412

/-! ## A179027.P100062751193331217

`∩[A092621(n+1), A092452(n)]`
-/

namespace A179027.P100062751193331217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092452 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179027.P100062751193331217

/-! ## A179027.P15668395388627821724

`∩[A092621(n+1), A257220(n+1)]`
-/

namespace A179027.P15668395388627821724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179027.P15668395388627821724

/-!
# A179028: Primes whose only prime digits are 5's.

The programs for A179028, there is no canonical definition to state claims against.
-/

/-! ## A179028.P17098179343209269781

`A051664(∪[A179029(n+1), A179036(n+1)])`
-/

namespace A179028.P17098179343209269781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179036 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A179028.P17098179343209269781

/-! ## A179028.P9533369028860459860

`A050367(A179029(n+1))`
-/

namespace A179028.P9533369028860459860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050367 (A179029 (n + 1)).toNat

end

end A179028.P9533369028860459860

/-! ## A179028.P12178691769861460106

`A179029(A187829(n+1))`
-/

namespace A179028.P12178691769861460106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179029 (A187829 (n + 1)).toNat

end

end A179028.P12178691769861460106

/-! ## A179028.P13491895131280172160

`A065330(6*A179029(n+1))`
-/

namespace A179028.P13491895131280172160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (6 * A179029 (n + 1)).toNat

end

end A179028.P13491895131280172160

/-! ## A179028.P11910319645029133448

`A179029(n+1)%A190900(3*(n+1))²`
-/

namespace A179028.P11910319645029133448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179029 (n + 1)) (A190900 (3 * (n + 1)) ^ 2)

end

end A179028.P11910319645029133448

/-!
# A179029: Primes with a 5 as the only prime digit.

The programs for A179029, there is no canonical definition to state claims against.
-/

/-! ## A179029.P146859980260267349

`∩[A092621(n+1), A179028(n+1)]`
-/

namespace A179029.P146859980260267349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179029.P146859980260267349

/-! ## A179029.P3941109403689702535

`∩[A092621(n+1), A257667(n+1)]`
-/

namespace A179029.P3941109403689702535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179029.P3941109403689702535

/-! ## A179029.P11211682004529419089

`∩[A062671(n+1), A092621(n+1)]`
-/

namespace A179029.P11211682004529419089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179029.P11211682004529419089

/-! ## A179029.P17656051720606552323

`∩[A062671(n+1), A092620(n+1)]`
-/

namespace A179029.P17656051720606552323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179029.P17656051720606552323

/-! ## A179029.P12178994140867470065

`∩[A092621(n+1), A092454(n)]`
-/

namespace A179029.P12178994140867470065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092454 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179029.P12178994140867470065

/-! ## A179029.P3668129149741152466

`∩[A011535(n+1), A092621(n+1)]`
-/

namespace A179029.P3668129149741152466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179029.P3668129149741152466

/-! ## A179029.P14005092611161783868

`∩[A043509(n+1), A092621(n+1)]`
-/

namespace A179029.P14005092611161783868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179029.P14005092611161783868

/-! ## A179029.P10539870034852758065

`∩[A094317(n+1), A179028(n+1)]`
-/

namespace A179029.P10539870034852758065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179029.P10539870034852758065

/-!
# A179030: Primes whose only prime digits are 7's.

The programs for A179030, there is no canonical definition to state claims against.
-/

/-! ## A179030.P17065415131650248355

`A045344(eq[7, A179335(n+1)])`
-/

namespace A179030.P17065415131650248355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179030.P17065415131650248355

/-! ## A179030.P2636814187120375859

`A065091(eq[7, A179335(n+1)])`
-/

namespace A179030.P2636814187120375859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179030.P2636814187120375859

/-! ## A179030.P13624943243082559614

`A000040(eq[7, A179335(n+1)]+1)`
-/

namespace A179030.P13624943243082559614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A179030.P13624943243082559614

/-! ## A179030.P16699682848504366609

`A006005(eq[7, A179335(n+1)]+1)`
-/

namespace A179030.P16699682848504366609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A179030.P16699682848504366609

/-! ## A179030.P17412646964405927695

`p?[eq[7, A211396(n)]]`
-/

namespace A179030.P17412646964405927695
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A179030.P17412646964405927695

/-! ## A179030.P14185982160791431806

`eq[A155212(A032741(n)), A211396(n)]`
-/

namespace A179030.P14185982160791431806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179030.P14185982160791431806

/-! ## A179030.P3789797289134471720

`eq[A004492(A211396(n)), A107279(n)]`
-/

namespace A179030.P3789797289134471720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004492 (A211396 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179030.P3789797289134471720

/-!
# A179031: Primes with a 7 as the only prime digit.

The programs for A179031, there is no canonical definition to state claims against.
-/

/-! ## A179031.P9091892668638888318

`∩[A092621(n+1), A179030(n+1)]`
-/

namespace A179031.P9091892668638888318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179031.P9091892668638888318

/-! ## A179031.P2846576937788665723

`∩[A092621(n+1), A257668(n+1)]`
-/

namespace A179031.P2846576937788665723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179031.P2846576937788665723

/-! ## A179031.P1365428408005549456

`∩[A062675(n+1), A092621(n+1)]`
-/

namespace A179031.P1365428408005549456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179031.P1365428408005549456

/-! ## A179031.P4775108593773884473

`∩[A011537(n+1), A092621(n+1)]`
-/

namespace A179031.P4775108593773884473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179031.P4775108593773884473

/-! ## A179031.P13058858832433529118

`∩[A043517(n+1), A092621(n+1)]`
-/

namespace A179031.P13058858832433529118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179031.P13058858832433529118

/-! ## A179031.P6577471418100382979

`∩[A080837(n+1), A092621(n+1)]`
-/

namespace A179031.P6577471418100382979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179031.P6577471418100382979

/-! ## A179031.P15682114679550105681

`∩[A092433(n+1), A092621(n+1)]`
-/

namespace A179031.P15682114679550105681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179031.P15682114679550105681

/-! ## A179031.P9566427617209211385

`∩[A043517(n+1), A179030(n+1)]`
-/

namespace A179031.P9566427617209211385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179031.P9566427617209211385

/-! ## A179031.P14412502324730310401

`∩[A094317(n+1), A179030(n+1)]`
-/

namespace A179031.P14412502324730310401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179031.P14412502324730310401

/-! ## A179031.P13402374226580690745

`∩[A092621(n+1), A257224(n+1)]`
-/

namespace A179031.P13402374226580690745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179031.P13402374226580690745

/-!
# A179032: Emirps whose only prime digits are one or more 2's.

The programs for A179032, there is no canonical definition to state claims against.
-/

/-! ## A179032.P14625422214412098252

`∩[A006567(n+1), A179024(n+1)]`
-/

namespace A179032.P14625422214412098252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179032.P14625422214412098252

/-! ## A179032.P10631625971503864913

`∩[A000040(A156793(n+1)), A179024(n+1)]`
-/

namespace A179032.P10631625971503864913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A156793 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179032.P10631625971503864913

/-! ## A179032.P16069464786576994639

`∩[A006005(A156793(n+1)), A179024(n+2)]`
-/

namespace A179032.P16069464786576994639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A156793 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179024 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179032.P16069464786576994639

/-! ## A179032.P12775400387048879927

`∩[A008578(A156793(n+1)+1), A179024(n+1)]`
-/

namespace A179032.P12775400387048879927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A156793 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179032.P12775400387048879927

/-! ## A179032.P12188690626040558311

`∩[A162753(2*A156793(n+1)), A179024(n+1)]`
-/

namespace A179032.P12188690626040558311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (2 * A156793 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179032.P12188690626040558311

/-!
# A179033: Emirps with a single 2 as the only prime digit.

The programs for A179033, there is no canonical definition to state claims against.
-/

/-! ## A179033.P16794428674008336201

`∩[A179025(n+1), A179032(n+1)]`
-/

namespace A179033.P16794428674008336201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179033.P16794428674008336201

/-! ## A179033.P1501543100439437251

`∩[A006567(n+1), A179025(n+1)]`
-/

namespace A179033.P1501543100439437251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179033.P1501543100439437251

/-! ## A179033.P9248465424036142906

`∩[A000040(A156793(n+1)), A179025(n+1)]`
-/

namespace A179033.P9248465424036142906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A156793 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179033.P9248465424036142906

/-! ## A179033.P10585731638805251159

`∩[A008578(A156793(n+1)+1), A179025(n+1)]`
-/

namespace A179033.P10585731638805251159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A156793 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179033.P10585731638805251159

/-! ## A179033.P7012437658921553681

`∩[A162753(2*A156793(n+1)), A179025(n+1)]`
-/

namespace A179033.P7012437658921553681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (2 * A156793 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179033.P7012437658921553681

/-!
# A179034: Emirps whose only prime digits are 3's.

The programs for A179034, there is no canonical definition to state claims against.
-/

/-! ## A179034.P10712640646203609636

`∩[A006567(n+1), A179026(n+1)]`
-/

namespace A179034.P10712640646203609636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179034.P10712640646203609636

/-! ## A179034.P4676474450134629620

`∩[A068893(n+1), A179026(n+1)]`
-/

namespace A179034.P4676474450134629620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179034.P4676474450134629620

/-! ## A179034.P13648628983203189682

`∩[A109019(n+1), A179026(n+1)]`
-/

namespace A179034.P13648628983203189682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179034.P13648628983203189682

/-! ## A179034.P200287841034664456

`∩[A179026(n+1), A350867(n+1)]`
-/

namespace A179034.P200287841034664456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179034.P200287841034664456

/-! ## A179034.P5196323473666298228

`∩[A000040(A156793(n+1)), A179026(n+1)]`
-/

namespace A179034.P5196323473666298228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A156793 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179034.P5196323473666298228

/-! ## A179034.P16071783430548896337

`∩[A008578(A156793(n+1)+1), A179026(n+1)]`
-/

namespace A179034.P16071783430548896337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A156793 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179034.P16071783430548896337

/-! ## A179034.P14465965277235409926

`∩[A162753(2*A156793(n+1)), A179026(n+1)]`
-/

namespace A179034.P14465965277235409926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (2 * A156793 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179034.P14465965277235409926

/-!
# A179035: Emirps with a 3 as the only prime digit.

The programs for A179035, there is no canonical definition to state claims against.
-/

/-! ## A179035.P3217430612398769186

`∩[A179027(n+1), A179034(n+1)]`
-/

namespace A179035.P3217430612398769186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179035.P3217430612398769186

/-! ## A179035.P7208451692508575382

`∩[A006567(n+1), A179027(n+1)]`
-/

namespace A179035.P7208451692508575382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179035.P7208451692508575382

/-! ## A179035.P5529040278565427917

`∩[A092621(n+1), A179034(n+1)]`
-/

namespace A179035.P5529040278565427917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179035.P5529040278565427917

/-! ## A179035.P4678488901234738405

`∩[A068893(n+1), A179027(n+1)]`
-/

namespace A179035.P4678488901234738405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179035.P4678488901234738405

/-! ## A179035.P686574373178434723

`∩[A109019(n+1), A179027(n+1)]`
-/

namespace A179035.P686574373178434723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179035.P686574373178434723

/-! ## A179035.P5237625960101087309

`∩[A179027(n+1), A350867(n+1)]`
-/

namespace A179035.P5237625960101087309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179035.P5237625960101087309

/-! ## A179035.P8587561678023501888

`∩[A094317(n+1), A179034(n+1)]`
-/

namespace A179035.P8587561678023501888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179035.P8587561678023501888

/-!
# A179036: Emirps whose only prime digits are 5's.

The programs for A179036, there is no canonical definition to state claims against.
-/

/-! ## A179036.P17180627499121181962

`∩[A006567(n+1), A179028(n+1)]`
-/

namespace A179036.P17180627499121181962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179036.P17180627499121181962

/-!
# A179037: Emirps with a 5 as the only prime digit.

The programs for A179037, there is no canonical definition to state claims against.
-/

/-! ## A179037.P10168512390349026158

`∩[A179029(n+1), A179036(n+1)]`
-/

namespace A179037.P10168512390349026158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179037.P10168512390349026158

/-!
# A179038: Emirps whose only prime digits are 7's.

The programs for A179038, there is no canonical definition to state claims against.
-/

/-! ## A179038.P15230529283006728421

`∩[A006567(n+1), A179030(n+1)]`
-/

namespace A179038.P15230529283006728421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179038.P15230529283006728421

/-! ## A179038.P17522552254045171459

`A007955(A179039(n+1))`
-/

namespace A179038.P17522552254045171459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A179039 (n + 1)).toNat

end

end A179038.P17522552254045171459

/-! ## A179038.P15930869060029617921

`A004526(2*A179039(n+1))`
-/

namespace A179038.P15930869060029617921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A179039 (n + 1)).toNat

end

end A179038.P15930869060029617921

/-! ## A179038.P11550411596757028836

`A006370(2*A179039(n+1))`
-/

namespace A179038.P11550411596757028836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (2 * A179039 (n + 1)).toNat

end

end A179038.P11550411596757028836

/-! ## A179038.P11298503979946286171

`filter[A179039(n+1), A232750(#)]`
-/

namespace A179038.P11298503979946286171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A232750 (f1 j).toNat = 1) n)

end

end A179038.P11298503979946286171

/-!
# A179039: Emirps with a single 7 as the only prime digit.

The programs for A179039, there is no canonical definition to state claims against.
-/

/-! ## A179039.P7020634234659957769

`∩[A179031(n+1), A179038(n+1)]`
-/

namespace A179039.P7020634234659957769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179039.P7020634234659957769

/-! ## A179039.P15211895181024571146

`∩[A006567(n+1), A179031(n+1)]`
-/

namespace A179039.P15211895181024571146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179039.P15211895181024571146

/-! ## A179039.P2179263312720692904

`p?[or(A111332(n), A179038(n+1))]`
-/

namespace A179039.P2179263312720692904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A111332 n) (A179038 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179039.P2179263312720692904

/-!
# A179040: Number of permutations of 1..n with no three elements collinear.

The programs for A179040, there is no canonical definition to state claims against.
-/

/-! ## A179040.P11189116088506721294

`A087086(A277346(n))`
-/

namespace A179040.P11189116088506721294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087086 (A277346 n).toNat

end

end A179040.P11189116088506721294

/-! ## A179040.P6686245987683179081

`A002487(A005443(n)+A001063(n))`
-/

namespace A179040.P6686245987683179081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A005443 n + A001063 n).toNat

end

end A179040.P6686245987683179081

/-! ## A179040.P6205824312136740873

`A007898(A053505(n)+A002375(n+1))`
-/

namespace A179040.P6205824312136740873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007898 (A053505 n + A002375 (n + 1)).toNat

end

end A179040.P6205824312136740873

/-!
# A179041: Partial sums of ceiling(Fibonacci(n)/3).

The programs for A179041, the canonical program `A179041.P11965237360766745298` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179041 has offset 0).

The definition of A179041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179041.P11965237360766745298

`∑[floor(∑[a(n-1)+a(n-2)]/3)]` with `a(0)=2, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179041

/-- `∑[floor(∑[a(n-1)+a(n-2)]/3)]` -/
def P11965237360766745298.Spec : Prop :=
  ∀ n, P11965237360766745298.a n = A179041 n

theorem P11965237360766745298.correct : P11965237360766745298.Spec := by
  intro n
  simp only [A179041]

end A179041

/-! ## A179041.P8231966762627019707

`∑[A293543(n)]`
-/

namespace A179041.P8231966762627019707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179041.P8231966762627019707

namespace A179041

/-- `∑[A293543(n)]` -/
def P8231966762627019707.Spec : Prop :=
  ∀ n, P8231966762627019707.a n = A179041 n

end A179041

/-! ## A179041.P5354155939424991979

`∑[floor(A157725(n)/3)]`
-/

namespace A179041.P5354155939424991979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157725 n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179041.P5354155939424991979

namespace A179041

/-- `∑[floor(A157725(n)/3)]` -/
def P5354155939424991979.Spec : Prop :=
  ∀ n, P5354155939424991979.a n = A179041 n

end A179041

/-! ## A179041.P14666904533961318123

`∑[ceil(A000045(n)/3)]`
-/

namespace A179041.P14666904533961318123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000045 n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179041.P14666904533961318123

namespace A179041

/-- `∑[ceil(A000045(n)/3)]` -/
def P14666904533961318123.Spec : Prop :=
  ∀ n, P14666904533961318123.a n = A179041 n

end A179041

/-! ## A179041.P4217042026263267377

`∑[A000045(n)-A293545(n)]`
-/

namespace A179041.P4217042026263267377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A293545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179041.P4217042026263267377

namespace A179041

/-- `∑[A000045(n)-A293545(n)]` -/
def P4217042026263267377.Spec : Prop :=
  ∀ n, P4217042026263267377.a n = A179041 n

end A179041

/-! ## A179041.P11404512315828655766

`∑[A001611(n)-(A293545(n)+1)]`
-/

namespace A179041.P11404512315828655766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - (A293545 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179041.P11404512315828655766

namespace A179041

/-- `∑[A001611(n)-(A293545(n)+1)]` -/
def P11404512315828655766.Spec : Prop :=
  ∀ n, P11404512315828655766.a n = A179041 n

end A179041

/-! ## A179041.P1455768222306281458

`∑[A212804(n+1)-A293545(n)]`
-/

namespace A179041.P1455768222306281458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - A293545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179041.P1455768222306281458

namespace A179041

/-- `∑[A212804(n+1)-A293545(n)]` -/
def P1455768222306281458.Spec : Prop :=
  ∀ n, P1455768222306281458.a n = A179041 n

end A179041

/-! ## A179041.P776432513593428747

`∑[A157725(n)-(A293545(n)+2)]`
-/

namespace A179041.P776432513593428747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n - (A293545 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179041.P776432513593428747

namespace A179041

/-- `∑[A157725(n)-(A293545(n)+2)]` -/
def P776432513593428747.Spec : Prop :=
  ∀ n, P776432513593428747.a n = A179041 n

end A179041

/-! ## A179041.P5578159622185249606

`∑[A103609(2*n)-A293545(n)]`
-/

namespace A179041.P5578159622185249606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) - A293545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179041.P5578159622185249606

namespace A179041

/-- `∑[A103609(2*n)-A293545(n)]` -/
def P5578159622185249606.Spec : Prop :=
  ∀ n, P5578159622185249606.a n = A179041 n

end A179041

/-! ## A179041.P8037293089218071946

`∑[3*A167816(n)/A167817(n)-A293545(n)]`
-/

namespace A179041.P8037293089218071946
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A167816 n : ℚ) / (A167817 n : ℚ)) - (A293545 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179041.P8037293089218071946

namespace A179041

/-- `∑[3*A167816(n)/A167817(n)-A293545(n)]` -/
def P8037293089218071946.Spec : Prop :=
  ∀ n, P8037293089218071946.a n = (A179041 n : ℚ)

end A179041

/-! ## A179041.P17653935308484288035

`∑[ceil(A053602(2*n)/3)]`
-/

namespace A179041.P17653935308484288035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053602 (2 * n) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179041.P17653935308484288035

namespace A179041

/-- `∑[ceil(A053602(2*n)/3)]` -/
def P17653935308484288035.Spec : Prop :=
  ∀ n, P17653935308484288035.a n = A179041 n

end A179041

/-! ## A179041.P13390735030923715961

`∑[ceil(Δ[a(n-1)+a(n-2)]/3)]` with `a(0)=1, a(1)=1`
-/

namespace A179041.P13390735030923715961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179041.P13390735030923715961

namespace A179041

/-- `∑[ceil(Δ[a(n-1)+a(n-2)]/3)]` -/
def P13390735030923715961.Spec : Prop :=
  ∀ n, P13390735030923715961.a n = A179041 n

end A179041

/-! ## A179041.P12530953542921926225

`∑[round((Δ[A000045(n+1)]+1)/3)]`
-/

namespace A179041.P12530953542921926225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f2 (n + 1) - f2 n + 1 : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179041.P12530953542921926225

namespace A179041

/-- `∑[round((Δ[A000045(n+1)]+1)/3)]` -/
def P12530953542921926225.Spec : Prop :=
  ∀ n, P12530953542921926225.a n = A179041 n

end A179041

/-! ## A179041.P13059053377937106934

`round(A000045(n+2)/3+3*n/8)`
-/

namespace A179041.P13059053377937106934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000045 (n + 2) : ℚ) / 3 + 3 * ((n : ℚ) / 8))

end

end A179041.P13059053377937106934

namespace A179041

/-- `round(A000045(n+2)/3+3*n/8)` -/
def P13059053377937106934.Spec : Prop :=
  ∀ n, P13059053377937106934.a n = A179041 n

end A179041

/-! ## A179041.P7939077994699340548

`A000071(n+2)-∑[A293545(n)]`
-/

namespace A179041.P7939077994699340548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179041.P7939077994699340548

namespace A179041

/-- `A000071(n+2)-∑[A293545(n)]` -/
def P7939077994699340548.Spec : Prop :=
  ∀ n, P7939077994699340548.a n = A179041 n

end A179041

/-! ## A179041.P16055945828063570091

`∑[A192956(n)-(A293545(n)+A192958(n))]`
-/

namespace A179041.P16055945828063570091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192956 n - (A293545 n + A192958 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179041.P16055945828063570091

namespace A179041

/-- `∑[A192956(n)-(A293545(n)+A192958(n))]` -/
def P16055945828063570091.Spec : Prop :=
  ∀ n, P16055945828063570091.a n = A179041 n

end A179041

/-! ## A179041.P11612065277504558647

`∑[A192979(n)-(A293545(n)+A192964(n))]`
-/

namespace A179041.P11612065277504558647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192979 n - (A293545 n + A192964 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179041.P11612065277504558647

namespace A179041

/-- `∑[A192979(n)-(A293545(n)+A192964(n))]` -/
def P11612065277504558647.Spec : Prop :=
  ∀ n, P11612065277504558647.a n = A179041 n

end A179041

/-! ## A179041.P17018411391257971840

`∑[sqrt(A245306(n)-1)-A293545(n)]`
-/

namespace A179041.P17018411391257971840
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A245306 n - 1 : ℝ) - (A293545 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179041.P17018411391257971840

namespace A179041

/-- `∑[sqrt(A245306(n)-1)-A293545(n)]` -/
def P17018411391257971840.Spec : Prop :=
  ∀ n, P17018411391257971840.a n = (A179041 n : ℝ)

end A179041

/-!
# A179042: Partial sums of ceiling(Fibonacci(n)/4).

The programs for A179042, the canonical program `A179042.P9582328423632917604` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179042 has offset 0).

The definition of A179042 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179042.P9582328423632917604

`2*a(n-1)-a(n-3)+a(n-6)-2*a(n-7)+a(n-9)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=6, a(6)=8, a(7)=12, a(8)=18`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179042

/-- `2*a(n-1)-a(n-3)+a(n-6)-2*a(n-7)+a(n-9)` -/
def P9582328423632917604.Spec : Prop :=
  ∀ n, P9582328423632917604.a n = A179042 n

theorem P9582328423632917604.correct : P9582328423632917604.Spec := by
  intro n
  simp only [A179042]

end A179042

/-! ## A179042.P10967976986280606847

`∑[A293552(n)]`
-/

namespace A179042.P10967976986280606847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179042.P10967976986280606847

namespace A179042

/-- `∑[A293552(n)]` -/
def P10967976986280606847.Spec : Prop :=
  ∀ n, P10967976986280606847.a n = A179042 n

end A179042

/-! ## A179042.P11517974864623507254

`∑[ceil(A000045(n)/4)]`
-/

namespace A179042.P11517974864623507254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000045 n : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179042.P11517974864623507254

namespace A179042

/-- `∑[ceil(A000045(n)/4)]` -/
def P11517974864623507254.Spec : Prop :=
  ∀ n, P11517974864623507254.a n = A179042 n

end A179042

/-! ## A179042.P15143914637719599300

`floor(∑[(A212804(n+1)+2)/4])`
-/

namespace A179042.P15143914637719599300
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212804 (n + 1) + 2 : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A179042.P15143914637719599300

namespace A179042

/-- `floor(∑[(A212804(n+1)+2)/4])` -/
def P15143914637719599300.Spec : Prop :=
  ∀ n, P15143914637719599300.a n = A179042 n

end A179042

/-! ## A179042.P16627974417638919312

`∑[ceil(A062114(n)/8)]`
-/

namespace A179042.P16627974417638919312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062114 n : ℚ) / 8⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179042.P16627974417638919312

namespace A179042

/-- `∑[ceil(A062114(n)/8)]` -/
def P16627974417638919312.Spec : Prop :=
  ∀ n, P16627974417638919312.a n = A179042 n

end A179042

/-! ## A179042.P8005747747550733936

`floor(∑[A001611(n)+1]/4)`
-/

namespace A179042.P8005747747550733936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4⌋

end

end A179042.P8005747747550733936

namespace A179042

/-- `floor(∑[A001611(n)+1]/4)` -/
def P8005747747550733936.Spec : Prop :=
  ∀ n, P8005747747550733936.a n = A179042 n

end A179042

/-! ## A179042.P12952801007327452762

`floor((A052952(n)+2*(n+1))/4)`
-/

namespace A179042.P12952801007327452762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052952 n + (2 * (n + 1) : ℤ) : ℚ) / 4⌋

end

end A179042.P12952801007327452762

namespace A179042

/-- `floor((A052952(n)+2*(n+1))/4)` -/
def P12952801007327452762.Spec : Prop :=
  ∀ n, P12952801007327452762.a n = A179042 n

end A179042

/-! ## A179042.P5696832186486916790

`round((A000045(n+2)+2*n)/4)`
-/

namespace A179042.P5696832186486916790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000045 (n + 2) + (2 * n : ℤ) : ℚ) / 4)

end

end A179042.P5696832186486916790

namespace A179042

/-- `round((A000045(n+2)+2*n)/4)` -/
def P5696832186486916790.Spec : Prop :=
  ∀ n, P5696832186486916790.a n = A179042 n

end A179042

/-! ## A179042.P2415294203439716334

`floor(∑[(Δ[A000045(n+1)]+2)/4])`
-/

namespace A179042.P2415294203439716334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n + 2 : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A179042.P2415294203439716334

namespace A179042

/-- `floor(∑[(Δ[A000045(n+1)]+2)/4])` -/
def P2415294203439716334.Spec : Prop :=
  ∀ n, P2415294203439716334.a n = A179042 n

end A179042

/-! ## A179042.P6479889201928615763

`floor(∑[A000045(abs(1-n)+1)+2]/4)`
-/

namespace A179042.P6479889201928615763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (|1 - (n : ℤ)| + 1).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4⌋

end

end A179042.P6479889201928615763

namespace A179042

/-- `floor(∑[A000045(abs(1-n)+1)+2]/4)` -/
def P6479889201928615763.Spec : Prop :=
  ∀ n, P6479889201928615763.a n = A179042 n

end A179042

/-!
# A179043: Number of n X n checkered tori.

The programs for A179043, there is no canonical definition to state claims against.
-/

/-! ## A179043.P5983807653463212808

`A294684(A179865(n+1))+A036453(n+1)`
-/

namespace A179043.P5983807653463212808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294684 (A179865 (n + 1)).toNat + A036453 (n + 1)

end

end A179043.P5983807653463212808

/-!
# A179045: Triangle T(n,k), 1<=k<=n, read by rows, related to A033485.

The programs for A179045, there is no canonical definition to state claims against.
-/

/-! ## A179045.P2496677100339505160

`A155077(A341706(n+1))`
-/

namespace A179045.P2496677100339505160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155077 (A341706 (n + 1)).toNat

end

end A179045.P2496677100339505160

/-! ## A179045.P4915442319499887004

`A389182(A393918(n+1))`
-/

namespace A179045.P4915442319499887004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389182 (A393918 (n + 1)).toNat

end

end A179045.P4915442319499887004

/-! ## A179045.P17649966435049979580

`A225644(2*A137633(n+1))`
-/

namespace A179045.P17649966435049979580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (2 * A137633 (n + 1)).toNat

end

end A179045.P17649966435049979580

/-! ## A179045.P2390796717209885372

`ceil(ratio[A179152(A029656(n+1))])`
-/

namespace A179045.P2390796717209885372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179152 (A029656 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A179045.P2390796717209885372

/-! ## A179045.P11890903262075150764

`∑{e}[A024701(A143983(n+1)), #]`
-/

namespace A179045.P11890903262075150764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024701 (A143983 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A179045.P11890903262075150764

/-!
# A179046: Partitions into distinct parts with minimal difference 3 and minimal part >= 3.

The programs for A179046, there is no canonical definition to state claims against.
-/

/-! ## A179046.P5500500134390802900

`A264592(lt[A264606(n+2), A264613(n+2)])`
-/

namespace A179046.P5500500134390802900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264606 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264613 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264592 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A179046.P5500500134390802900

/-! ## A179046.P952812282228680455

`A185329(lt[A060544(n+2), A066918(n+1)])`
-/

namespace A179046.P952812282228680455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185329 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A179046.P952812282228680455

/-! ## A179046.P1175126230924150996

`A264592(lt[A340531(3*(n+1)), A000040(n+1)])`
-/

namespace A179046.P1175126230924150996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340531 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264592 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A179046.P1175126230924150996

/-! ## A179046.P12949656202721093603

`A264592(lt[A340531(3*(n+1)), A235032(2*n+3)])`
-/

namespace A179046.P12949656202721093603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340531 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235032 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264592 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A179046.P12949656202721093603

/-! ## A179046.P10725245328963959381

`A123108(∑[A097795(A266542(n+1))])`
-/

namespace A179046.P10725245328963959381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (A266542 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A179046.P10725245328963959381

/-!
# A179049: Odd-even partitions: number of partitions into distinct parts where all differences between consecutive parts are odd and the minimal part is odd.

The programs for A179049, there is no canonical definition to state claims against.
-/

/-! ## A179049.P15755143312441059452

`A179080(n)-A218355(A028310(n))`
-/

namespace A179049.P15755143312441059452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179080 n - A218355 (A028310 n).toNat

end

end A179049.P15755143312441059452

/-! ## A179049.P4723133287285748216

`A000007(n)+A179080(n)-A218355(n)`
-/

namespace A179049.P4723133287285748216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A179080 n - A218355 n)

end

end A179049.P4723133287285748216

/-! ## A179049.P12217974507555996494

`A002448(n)%2+A179080(n)-A218355(n)`
-/

namespace A179049.P12217974507555996494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002448 n) 2 + (A179080 n - A218355 n)

end

end A179049.P12217974507555996494

/-! ## A179049.P14098332101232471721

`(A179080(n)-A218355(n))^ceil(1/A100041(n))`
-/

namespace A179049.P14098332101232471721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179080 n - A218355 n : ℚ) ^ (⌈1 / (A100041 n : ℚ)⌉ : ℤ)

end

end A179049.P14098332101232471721

/-! ## A179049.P8265690386457127931

`A179080(n)-A218355(n)%A000041(n)`
-/

namespace A179049.P8265690386457127931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179080 n - Int.tmod (A218355 n) (A000041 n)

end

end A179049.P8265690386457127931

/-! ## A179049.P4190752321141253004

`A156297(A027379(n))+A179080(n)-A218355(n)`
-/

namespace A179049.P4190752321141253004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156297 (A027379 n).toNat + (A179080 n - A218355 n)

end

end A179049.P4190752321141253004

/-!
# A179051: Number of partitions of n into powers of 10 (cf. A011557).

The programs for A179051, the canonical program `A179051.P15377436199673264274` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179051 has offset 0).

The definition of A179051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179051.P15377436199673264274

`A179052(floor(n/10))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A179051

/-- `A179052(floor(n/10))` -/
def P15377436199673264274.Spec : Prop :=
  ∀ n, P15377436199673264274.a n = A179051 n

theorem P15377436199673264274.correct : P15377436199673264274.Spec := by
  intro n
  simp only [A179051]

end A179051

/-! ## A179051.P18090542079573347831

`∑{e}[A008776((n-∑{digits}[n, #])/9), #]`
-/

namespace A179051.P18090542079573347831
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 (SequenceMachineLib.roundAway (((n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) : ℚ) / 9)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A179051.P18090542079573347831

namespace A179051

/-- `∑{e}[A008776((n-∑{digits}[n, #])/9), #]` -/
def P18090542079573347831.Spec : Prop :=
  ∀ n, (P18090542079573347831.a n : ℤ) = A179051 n

end A179051

/-! ## A179051.P6964341020451439461

`A057427(∑[∑{d}[n, #]]+1)+A054899(n)`
-/

namespace A179051.P6964341020451439461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A054899 n

end

end A179051.P6964341020451439461

namespace A179051

/-- `A057427(∑[∑{d}[n, #]]+1)+A054899(n)` -/
def P6964341020451439461.Spec : Prop :=
  ∀ n, P6964341020451439461.a n = A179051 n

end A179051

/-! ## A179051.P9457051018231078255

`A129274(A056940((n-∑{digits}[n, #])/9))+(n-∑{digits}[n, #])/9`
-/

namespace A179051.P9457051018231078255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129274 (A056940 (SequenceMachineLib.roundAway (((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) : ℚ) / 9)).toNat).toNat : ℚ) + ((n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) : ℚ) / 9

end

end A179051.P9457051018231078255

namespace A179051

/-- `A129274(A056940((n-∑{digits}[n, #])/9))+(n-∑{digits}[n, #])/9` -/
def P9457051018231078255.Spec : Prop :=
  ∀ n, P9457051018231078255.a n = (A179051 n : ℚ)

end A179051

/-! ## A179051.P3925573803661279096

`A057427(A091369(n+2))+A054899(n)`
-/

namespace A179051.P3925573803661279096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A091369 (n + 2)).toNat + A054899 n

end

end A179051.P3925573803661279096

namespace A179051

/-- `A057427(A091369(n+2))+A054899(n)` -/
def P3925573803661279096.Spec : Prop :=
  ∀ n, P3925573803661279096.a n = A179051 n

end A179051

/-! ## A179051.P5593866903226056962

`A057427(∑[A000203(n+1)])+A054899(n)`
-/

namespace A179051.P5593866903226056962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A054899 n

end

end A179051.P5593866903226056962

namespace A179051

/-- `A057427(∑[A000203(n+1)])+A054899(n)` -/
def P5593866903226056962.Spec : Prop :=
  ∀ n, P5593866903226056962.a n = A179051 n

end A179051

/-! ## A179051.P16254765744927083980

`(A054899(n)+1)%A262545(8*n+11)`
-/

namespace A179051.P16254765744927083980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054899 n + 1) (A262545 (8 * n + 11))

end

end A179051.P16254765744927083980

namespace A179051

/-- `(A054899(n)+1)%A262545(8*n+11)` -/
def P16254765744927083980.Spec : Prop :=
  ∀ n, P16254765744927083980.a n = A179051 n

end A179051

/-! ## A179051.P2237903778643040930

`A139553(A001844(n))+A054899(n)`
-/

namespace A179051.P2237903778643040930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139553 (A001844 n).toNat + A054899 n

end

end A179051.P2237903778643040930

namespace A179051

/-- `A139553(A001844(n))+A054899(n)` -/
def P2237903778643040930.Spec : Prop :=
  ∀ n, P2237903778643040930.a n = A179051 n

end A179051

/-! ## A179051.P3450259560943993583

`A054899(n)+A001221(A060213(n+1))`
-/

namespace A179051.P3450259560943993583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 n + A001221 (A060213 (n + 1)).toNat

end

end A179051.P3450259560943993583

namespace A179051

/-- `A054899(n)+A001221(A060213(n+1))` -/
def P3450259560943993583.Spec : Prop :=
  ∀ n, P3450259560943993583.a n = A179051 n

end A179051

/-! ## A179051.P14708651145825860957

`A274741(A234959(2*(n+2)))+A065039(n)-n`
-/

namespace A179051.P14708651145825860957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274741 (A234959 (2 * (n + 2))).toNat + (A065039 n - (n : ℤ))

end

end A179051.P14708651145825860957

namespace A179051

/-- `A274741(A234959(2*(n+2)))+A065039(n)-n` -/
def P14708651145825860957.Spec : Prop :=
  ∀ n, P14708651145825860957.a n = A179051 n

end A179051

/-! ## A179051.P9471621090748472333

`A054899(n)+A003963(A130321(n))`
-/

namespace A179051.P9471621090748472333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 n + A003963 (A130321 n).toNat

end

end A179051.P9471621090748472333

namespace A179051

/-- `A054899(n)+A003963(A130321(n))` -/
def P9471621090748472333.Spec : Prop :=
  ∀ n, P9471621090748472333.a n = A179051 n

end A179051

/-! ## A179051.P15674868112122251899

`A254609(A088261(n))+A054899(n)`
-/

namespace A179051.P15674868112122251899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254609 (A088261 n).toNat + A054899 n

end

end A179051.P15674868112122251899

namespace A179051

/-- `A254609(A088261(n))+A054899(n)` -/
def P15674868112122251899.Spec : Prop :=
  ∀ n, P15674868112122251899.a n = A179051 n

end A179051

/-! ## A179051.P6044037937210197652

`A057427(∑[A244426(n+1)])+A054899(n)`
-/

namespace A179051.P6044037937210197652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A054899 n

end

end A179051.P6044037937210197652

namespace A179051

/-- `A057427(∑[A244426(n+1)])+A054899(n)` -/
def P6044037937210197652.Spec : Prop :=
  ∀ n, P6044037937210197652.a n = A179051 n

end A179051

/-! ## A179051.P141253731160633308

`and(10^n-1, (n-∑{digits}[n, #])/9)+1`
-/

namespace A179051.P141253731160633308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((10 ^ n : ℤ) - 1) (SequenceMachineLib.roundAway (((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) : ℚ) / 9)) + 1

end

end A179051.P141253731160633308

namespace A179051

/-- `and(10^n-1, (n-∑{digits}[n, #])/9)+1` -/
def P141253731160633308.Spec : Prop :=
  ∀ n, P141253731160633308.a n = A179051 n

end A179051

/-!
# A179052: Range and record values of number of partitions of n into powers of 10 (cf. A179051).

The programs for A179052, the canonical program `A179052.P10066539499872565508` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179052 has offset 0).

The definition of A179052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179052.P10066539499872565508

`a(n-1)+a(floor(n/10))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179052

/-- `a(n-1)+a(floor(n/10))` -/
def P10066539499872565508.Spec : Prop :=
  ∀ n, (P10066539499872565508.a n : ℤ) = A179052 n

theorem P10066539499872565508.correct : P10066539499872565508.Spec := by
  intro n
  simp only [A179052]

end A179052

/-! ## A179052.P15213363893169399559

`∑[A179051(n)]`
-/

namespace A179052.P15213363893169399559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179052.P15213363893169399559

namespace A179052

/-- `∑[A179051(n)]` -/
def P15213363893169399559.Spec : Prop :=
  ∀ n, P15213363893169399559.a n = A179052 n

end A179052

/-! ## A179052.P3467338190984662568

`A179051(10*n)`
-/

namespace A179052.P3467338190984662568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179051 (10 * n)

end

end A179052.P3467338190984662568

namespace A179052

/-- `A179051(10*n)` -/
def P3467338190984662568.Spec : Prop :=
  ∀ n, P3467338190984662568.a n = A179052 n

end A179052

/-! ## A179052.P2202357995567420639

`record[A179051(xor(1, n)+1)]`
-/

namespace A179052.P2202357995567420639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179051 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179052.P2202357995567420639

namespace A179052

/-- `record[A179051(xor(1, n)+1)]` -/
def P2202357995567420639.Spec : Prop :=
  ∀ n, P2202357995567420639.a n = A179052 n

end A179052

/-! ## A179052.P400682950407403688

`record[A179051(n%or(1, n))]`
-/

namespace A179052.P400682950407403688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179051 (n % Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179052.P400682950407403688

namespace A179052

/-- `record[A179051(n%or(1, n))]` -/
def P400682950407403688.Spec : Prop :=
  ∀ n, P400682950407403688.a n = A179052 n

end A179052

/-! ## A179052.P5364668209379768354

`record[A179051(n)-A209229(n)]`
-/

namespace A179052.P5364668209379768354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179051 n - A209229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179052.P5364668209379768354

namespace A179052

/-- `record[A179051(n)-A209229(n)]` -/
def P5364668209379768354.Spec : Prop :=
  ∀ n, P5364668209379768354.a n = A179052 n

end A179052

/-! ## A179052.P3694531947661843602

`record[A179051(xor(2, n))]`
-/

namespace A179052.P3694531947661843602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179051 (Nat.xor 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179052.P3694531947661843602

namespace A179052

/-- `record[A179051(xor(2, n))]` -/
def P3694531947661843602.Spec : Prop :=
  ∀ n, P3694531947661843602.a n = A179052 n

end A179052

/-! ## A179052.P18172438602726115096

`record[A179051(A065253(n+1))]`
-/

namespace A179052.P18172438602726115096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179051 (A065253 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179052.P18172438602726115096

namespace A179052

/-- `record[A179051(A065253(n+1))]` -/
def P18172438602726115096.Spec : Prop :=
  ∀ n, P18172438602726115096.a n = A179052 n

end A179052

/-!
# A179053: Partial sums of ceiling(Fibonacci(n)/11).

The programs for A179053, the canonical program `A179053.P6495662916326547234` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179053 has offset 0).

The definition of A179053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179053.P6495662916326547234

`∑[ceil(A000045(n)/11)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A179053

/-- `∑[ceil(A000045(n)/11)]` -/
def P6495662916326547234.Spec : Prop :=
  ∀ n, P6495662916326547234.a n = A179053 n

theorem P6495662916326547234.correct : P6495662916326547234.Spec := by
  intro n
  simp only [A179053]

end A179053

/-! ## A179053.P5270160027640485892

`∑[ceil(A062114(n)/22)]`
-/

namespace A179053.P5270160027640485892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062114 n : ℚ) / 22⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179053.P5270160027640485892

namespace A179053

/-- `∑[ceil(A062114(n)/22)]` -/
def P5270160027640485892.Spec : Prop :=
  ∀ n, P5270160027640485892.a n = A179053 n

end A179053

/-! ## A179053.P3889123474252662128

`∑[round((Δ[A000045(n+1)]+5)/11)]`
-/

namespace A179053.P3889123474252662128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f2 (n + 1) - f2 n + 5 : ℚ) / 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179053.P3889123474252662128

namespace A179053

/-- `∑[round((Δ[A000045(n+1)]+5)/11)]` -/
def P3889123474252662128.Spec : Prop :=
  ∀ n, P3889123474252662128.a n = A179053 n

end A179053

/-! ## A179053.P12128198559758460004

`∑[ceil(A022086(n)/33)]`
-/

namespace A179053.P12128198559758460004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022086 n : ℚ) / 33⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179053.P12128198559758460004

namespace A179053

/-- `∑[ceil(A022086(n)/33)]` -/
def P12128198559758460004.Spec : Prop :=
  ∀ n, P12128198559758460004.a n = A179053 n

end A179053

/-! ## A179053.P1166363253773276870

`∑[ceil(A022087(n)/44)]`
-/

namespace A179053.P1166363253773276870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022087 n : ℚ) / 44⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179053.P1166363253773276870

namespace A179053

/-- `∑[ceil(A022087(n)/44)]` -/
def P1166363253773276870.Spec : Prop :=
  ∀ n, P1166363253773276870.a n = A179053 n

end A179053

/-!
# A179054: a(n) = (1^k + 2^k + ... + n^k) modulo (n+2), where k is any odd integer greater than or equal to 3.

The programs for A179054, the canonical program `A179054.P5019671529560031790` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179054 has offset 1).

The definition of A179054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179054.P5019671529560031790

`((n+1)²*(n+2)²/4)%(n+3)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179054

/-- `((n+1)²*(n+2)²/4)%(n+3)` -/
def P5019671529560031790.Spec : Prop :=
  ∀ n, P5019671529560031790.a n = A179054 (n + 1)

theorem P5019671529560031790.correct : P5019671529560031790.Spec := by
  intro n
  simp only [A179054, Nat.add_sub_cancel]

end A179054

/-! ## A179054.P16486685052906715579

`Δ[ceil((n+1)/4)²]+1`
-/

namespace A179054.P16486685052906715579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 4⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A179054.P16486685052906715579

namespace A179054

/-- `Δ[ceil((n+1)/4)²]+1` -/
def P16486685052906715579.Spec : Prop :=
  ∀ n, P16486685052906715579.a n = A179054 (n + 1)

end A179054

/-! ## A179054.P17540970344096643312

`gcd(∑[n]%(n+1)+2, (n+1)%4)`
-/

namespace A179054.P17540970344096643312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) + 2) ((n + 1) % 4)

end

end A179054.P17540970344096643312

namespace A179054

/-- `gcd(∑[n]%(n+1)+2, (n+1)%4)` -/
def P17540970344096643312.Spec : Prop :=
  ∀ n, (P17540970344096643312.a n : ℤ) = A179054 (n + 1)

end A179054

/-! ## A179054.P9110196726935178673

`(lcm(n+3, gcd(n+1, n-3))-(n+1))/2`
-/

namespace A179054.P9110196726935178673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm (n + 3) (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 3)) : ℤ) - (n + 1 : ℤ) : ℚ) / 2

end

end A179054.P9110196726935178673

namespace A179054

/-- `(lcm(n+3, gcd(n+1, n-3))-(n+1))/2` -/
def P9110196726935178673.Spec : Prop :=
  ∀ n, P9110196726935178673.a n = (A179054 (n + 1) : ℚ)

end A179054

/-! ## A179054.P15356489113008770177

`A097362(a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A179054.P15356489113008770177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 4] fun n a =>
  A097362 (a (n - 4)).toNat

end

end A179054.P15356489113008770177

namespace A179054

/-- `A097362(a(n-4))` -/
def P15356489113008770177.Spec : Prop :=
  ∀ n, P15356489113008770177.a n = A179054 (n + 1)

end A179054

/-! ## A179054.P302829341398360581

`A159475(a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A179054.P302829341398360581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 4] fun n a =>
  A159475 (a (n - 4)).toNat

end

end A179054.P302829341398360581

namespace A179054

/-- `A159475(a(n-4))` -/
def P302829341398360581.Spec : Prop :=
  ∀ n, P302829341398360581.a n = A179054 (n + 1)

end A179054

/-! ## A179054.P16858115019025348628

`A171463(a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A179054.P16858115019025348628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 4] fun n a =>
  A171463 (a (n - 4)).toNat

end

end A179054.P16858115019025348628

namespace A179054

/-- `A171463(a(n-4))` -/
def P16858115019025348628.Spec : Prop :=
  ∀ n, P16858115019025348628.a n = A179054 (n + 1)

end A179054

/-! ## A179054.P14683265451968453300

`A227832(a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A179054.P14683265451968453300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 4] fun n a =>
  A227832 (a (n - 4)).toNat

end

end A179054.P14683265451968453300

namespace A179054

/-- `A227832(a(n-4))` -/
def P14683265451968453300.Spec : Prop :=
  ∀ n, P14683265451968453300.a n = A179054 (n + 1)

end A179054

/-! ## A179054.P12385450713236302501

`A282738(n*A038189(n))`
-/

namespace A179054.P12385450713236302501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282738 ((n : ℤ) * A038189 n).toNat

end

end A179054.P12385450713236302501

namespace A179054

/-- `A282738(n*A038189(n))` -/
def P12385450713236302501.Spec : Prop :=
  ∀ n, P12385450713236302501.a n = A179054 (n + 1)

end A179054

/-! ## A179054.P9895986021012575737

`gcd(A003815(n), A052938(n))`
-/

namespace A179054.P9895986021012575737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003815 n) (A052938 n)

end

end A179054.P9895986021012575737

namespace A179054

/-- `gcd(A003815(n), A052938(n))` -/
def P9895986021012575737.Spec : Prop :=
  ∀ n, (P9895986021012575737.a n : ℤ) = A179054 (n + 1)

end A179054

/-! ## A179054.P6029878325600984190

`gcd(A110514(n), A267530(n))`
-/

namespace A179054.P6029878325600984190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110514 n) (A267530 n)

end

end A179054.P6029878325600984190

namespace A179054

/-- `gcd(A110514(n), A267530(n))` -/
def P6029878325600984190.Spec : Prop :=
  ∀ n, (P6029878325600984190.a n : ℤ) = A179054 (n + 1)

end A179054

/-! ## A179054.P14741166551436289345

`gcd(A128130(n), A282738(n))`
-/

namespace A179054.P14741166551436289345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128130 n) (A282738 n)

end

end A179054.P14741166551436289345

namespace A179054

/-- `gcd(A128130(n), A282738(n))` -/
def P14741166551436289345.Spec : Prop :=
  ∀ n, (P14741166551436289345.a n : ℤ) = A179054 (n + 1)

end A179054

/-! ## A179054.P12938726730012517884

`A052938(n*A121262(n+1))`
-/

namespace A179054.P12938726730012517884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 ((n : ℤ) * A121262 (n + 1)).toNat

end

end A179054.P12938726730012517884

namespace A179054

/-- `A052938(n*A121262(n+1))` -/
def P12938726730012517884.Spec : Prop :=
  ∀ n, P12938726730012517884.a n = A179054 (n + 1)

end A179054

/-! ## A179054.P15662818226924476100

`A282738(2*n-A227380(n))`
-/

namespace A179054.P15662818226924476100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282738 ((2 * n : ℤ) - A227380 n).toNat

end

end A179054.P15662818226924476100

namespace A179054

/-- `A282738(2*n-A227380(n))` -/
def P15662818226924476100.Spec : Prop :=
  ∀ n, P15662818226924476100.a n = A179054 (n + 1)

end A179054

/-! ## A179054.P3279759305019556892

`gcd(A112299(n+1), A152832(n))`
-/

namespace A179054.P3279759305019556892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112299 (n + 1)) (A152832 n)

end

end A179054.P3279759305019556892

namespace A179054

/-- `gcd(A112299(n+1), A152832(n))` -/
def P3279759305019556892.Spec : Prop :=
  ∀ n, (P3279759305019556892.a n : ℤ) = A179054 (n + 1)

end A179054

/-! ## A179054.P8856616720154169633

`gcd(A230074(n+1), A267185(n))`
-/

namespace A179054.P8856616720154169633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A230074 (n + 1)) (A267185 n)

end

end A179054.P8856616720154169633

namespace A179054

/-- `gcd(A230074(n+1), A267185(n))` -/
def P8856616720154169633.Spec : Prop :=
  ∀ n, (P8856616720154169633.a n : ℤ) = A179054 (n + 1)

end A179054

/-! ## A179054.P9509999309384649302

`A282738(n-A227380(n)+n)`
-/

namespace A179054.P9509999309384649302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282738 ((n : ℤ) - A227380 n + (n : ℤ)).toNat

end

end A179054.P9509999309384649302

namespace A179054

/-- `A282738(n-A227380(n)+n)` -/
def P9509999309384649302.Spec : Prop :=
  ∀ n, P9509999309384649302.a n = A179054 (n + 1)

end A179054

/-! ## A179054.P14142652353338870879

`A282738(n-(A227380(n)-n))`
-/

namespace A179054.P14142652353338870879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282738 ((n : ℤ) - (A227380 n - (n : ℤ))).toNat

end

end A179054.P14142652353338870879

namespace A179054

/-- `A282738(n-(A227380(n)-n))` -/
def P14142652353338870879.Spec : Prop :=
  ∀ n, P14142652353338870879.a n = A179054 (n + 1)

end A179054

/-! ## A179054.P2039149272797985378

`gcd(A089389(n+1), A358839(n+1))`
-/

namespace A179054.P2039149272797985378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089389 (n + 1)) (A358839 (n + 1))

end

end A179054.P2039149272797985378

namespace A179054

/-- `gcd(A089389(n+1), A358839(n+1))` -/
def P2039149272797985378.Spec : Prop :=
  ∀ n, (P2039149272797985378.a n : ℤ) = A179054 (n + 1)

end A179054

/-! ## A179054.P906103693773017043

`A065530(A026741(n+1))/A026741(n+1)`
-/

namespace A179054.P906103693773017043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065530 (A026741 (n + 1)).toNat : ℚ) / (A026741 (n + 1) : ℚ)

end

end A179054.P906103693773017043

namespace A179054

/-- `A065530(A026741(n+1))/A026741(n+1)` -/
def P906103693773017043.Spec : Prop :=
  ∀ n, P906103693773017043.a n = (A179054 (n + 1) : ℚ)

end A179054

/-!
# A179055: Numbers k such that the product of all numbers formed by cyclically permuting digits of k is a square.

The programs for A179055, there is no canonical definition to state claims against.
-/

/-! ## A179055.P16497366374320509306

`∑[11%A157795(n+1)]`
-/

namespace A179055.P16497366374320509306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 11 (A157795 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179055.P16497366374320509306

/-! ## A179055.P4593306612248791933

`eq[log2(A061901(n)), A267635(n)]`
-/

namespace A179055.P4593306612248791933
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061901 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A179055.P4593306612248791933

/-! ## A179055.P872789423165236927

`∩[A032573(n+1), A174800(n)]`
-/

namespace A179055.P872789423165236927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179055.P872789423165236927

/-! ## A179055.P17543227435264970165

`∩[A063527(n+1), A174800(n)]`
-/

namespace A179055.P17543227435264970165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179055.P17543227435264970165

/-! ## A179055.P9289681409914303647

`∩[A050626(n+1), A109882(n+1)]`
-/

namespace A179055.P9289681409914303647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179055.P9289681409914303647

/-!
# A179058: Number of non-attacking placements of 3 rooks on an n X n board.

The programs for A179058, the canonical program `A179058.P879221254676352211` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179058 has offset 1).

The definition of A179058 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179058.P879221254676352211

`(n+1)²*(2-3*(n+1)+(n+1)²)²/6`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179058

/-- `(n+1)²*(2-3*(n+1)+(n+1)²)²/6` -/
def P879221254676352211.Spec : Prop :=
  ∀ n, P879221254676352211.a n = (A179058 (n + 1) : ℚ)

end A179058

/-! ## A179058.P862246279853007375

`6*∑[C(n, 2)]²`
-/

namespace A179058.P862246279853007375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A179058.P862246279853007375

namespace A179058

/-- `6*∑[C(n, 2)]²` -/
def P862246279853007375.Spec : Prop :=
  ∀ n, (P862246279853007375.a n : ℤ) = A179058 (n + 1)

end A179058

/-! ## A179058.P2630218106351162983

`6*C(n+1, 3)²`
-/

namespace A179058.P2630218106351162983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose (n + 1) 3 ^ 2

end

end A179058.P2630218106351162983

namespace A179058

/-- `6*C(n+1, 3)²` -/
def P2630218106351162983.Spec : Prop :=
  ∀ n, (P2630218106351162983.a n : ℤ) = A179058 (n + 1)

end A179058

/-! ## A179058.P8142200334538322160

`6*∑[C(n, 2)]^2`
-/

namespace A179058.P8142200334538322160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A179058.P8142200334538322160

namespace A179058

/-- `6*∑[C(n, 2)]^2` -/
def P8142200334538322160.Spec : Prop :=
  ∀ n, (P8142200334538322160.a n : ℤ) = A179058 (n + 1)

end A179058

/-! ## A179058.P17387498981940908909

`6*C(n+1, 3)^2`
-/

namespace A179058.P17387498981940908909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose (n + 1) 3 ^ 2

end

end A179058.P17387498981940908909

namespace A179058

/-- `6*C(n+1, 3)^2` -/
def P17387498981940908909.Spec : Prop :=
  ∀ n, (P17387498981940908909.a n : ℤ) = A179058 (n + 1)

end A179058

/-! ## A179058.P3612970566211203906

`2/3*Δ[C(C(n, 2), 2)]²`
-/

namespace A179058.P3612970566211203906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose n 2) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 : ℚ)

end

end A179058.P3612970566211203906

namespace A179058

/-- `2/3*Δ[C(C(n, 2), 2)]²` -/
def P3612970566211203906.Spec : Prop :=
  ∀ n, P3612970566211203906.a n = (A179058 (n + 1) : ℚ)

end A179058

/-! ## A179058.P6579534370441322614

`C(n², 3)+C(n², 2)/3`
-/

namespace A179058.P6579534370441322614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 3 : ℚ) + (Nat.choose (n ^ 2) 2 : ℚ) / 3

end

end A179058.P6579534370441322614

namespace A179058

/-- `C(n², 3)+C(n², 2)/3` -/
def P6579534370441322614.Spec : Prop :=
  ∀ n, P6579534370441322614.a n = (A179058 (n + 1) : ℚ)

end A179058

/-! ## A179058.P8616932419250360193

`6*∑[∑[(1-n)%(n+1)]]²`
-/

namespace A179058.P8616932419250360193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A179058.P8616932419250360193

namespace A179058

/-- `6*∑[∑[(1-n)%(n+1)]]²` -/
def P8616932419250360193.Spec : Prop :=
  ∀ n, P8616932419250360193.a n = A179058 (n + 1)

end A179058

/-! ## A179058.P1812707490193277084

`(n-1)*∑[2*n]*∑[C(n, 2)]`
-/

namespace A179058.P1812707490193277084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (((∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℤ)

end

end A179058.P1812707490193277084

namespace A179058

/-- `(n-1)*∑[2*n]*∑[C(n, 2)]` -/
def P1812707490193277084.Spec : Prop :=
  ∀ n, P1812707490193277084.a n = A179058 (n + 1)

end A179058

/-! ## A179058.P13151343252541392724

`(n-1)*∑[lcm(n, n-1)]*∑[n]`
-/

namespace A179058.P13151343252541392724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (((∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℤ)

end

end A179058.P13151343252541392724

namespace A179058

/-- `(n-1)*∑[lcm(n, n-1)]*∑[n]` -/
def P13151343252541392724.Spec : Prop :=
  ∀ n, P13151343252541392724.a n = A179058 (n + 1)

end A179058

/-! ## A179058.P7194652938631784268

`3/2*A169801(n)`
-/

namespace A179058.P7194652938631784268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A169801 n : ℚ)

end

end A179058.P7194652938631784268

namespace A179058

/-- `3/2*A169801(n)` -/
def P7194652938631784268.Spec : Prop :=
  ∀ n, P7194652938631784268.a n = (A179058 (n + 1) : ℚ)

end A179058

/-! ## A179058.P5452542195380656144

`A303212(n+1)-char[1]`
-/

namespace A179058.P5452542195380656144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303212 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A179058.P5452542195380656144

namespace A179058

/-- `A303212(n+1)-char[1]` -/
def P5452542195380656144.Spec : Prop :=
  ∀ n, P5452542195380656144.a n = A179058 (n + 1)

end A179058

/-! ## A179058.P5903961340493647193

`(n²-1)*A008911(n)`
-/

namespace A179058.P5903961340493647193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - 1) * A008911 n

end

end A179058.P5903961340493647193

namespace A179058

/-- `(n²-1)*A008911(n)` -/
def P5903961340493647193.Spec : Prop :=
  ∀ n, P5903961340493647193.a n = A179058 (n + 1)

end A179058

/-! ## A179058.P9618455652573398286

`C(n, 2)*A288961(n+1)`
-/

namespace A179058.P9618455652573398286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A288961 (n + 1)

end

end A179058.P9618455652573398286

namespace A179058

/-- `C(n, 2)*A288961(n+1)` -/
def P9618455652573398286.Spec : Prop :=
  ∀ n, P9618455652573398286.a n = A179058 (n + 1)

end A179058

/-! ## A179058.P13794764151598536837

`A303212(A060576(n)+n)`
-/

namespace A179058.P13794764151598536837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303212 (A060576 n + (n : ℤ)).toNat

end

end A179058.P13794764151598536837

namespace A179058

/-- `A303212(A060576(n)+n)` -/
def P13794764151598536837.Spec : Prop :=
  ∀ n, P13794764151598536837.a n = A179058 (n + 1)

end A179058

/-! ## A179058.P14618155217658386828

`A160834(n)-A160788(n)`
-/

namespace A179058.P14618155217658386828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160834 n - A160788 n

end

end A179058.P14618155217658386828

namespace A179058

/-- `A160834(n)-A160788(n)` -/
def P14618155217658386828.Spec : Prop :=
  ∀ n, P14618155217658386828.a n = A179058 (n + 1)

end A179058

/-! ## A179058.P1567228292880146321

`A160831(n)-A160817(n)`
-/

namespace A179058.P1567228292880146321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160831 n - A160817 n

end

end A179058.P1567228292880146321

namespace A179058

/-- `A160831(n)-A160817(n)` -/
def P1567228292880146321.Spec : Prop :=
  ∀ n, P1567228292880146321.a n = A179058 (n + 1)

end A179058

/-! ## A179058.P16973175653624120440

`A160833(n)-A160816(n)`
-/

namespace A179058.P16973175653624120440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160833 n - A160816 n

end

end A179058.P16973175653624120440

namespace A179058

/-- `A160833(n)-A160816(n)` -/
def P16973175653624120440.Spec : Prop :=
  ∀ n, P16973175653624120440.a n = A179058 (n + 1)

end A179058

/-! ## A179058.P6797149613621977862

`A008911(n)*A132411(n)`
-/

namespace A179058.P6797149613621977862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 n * A132411 n

end

end A179058.P6797149613621977862

namespace A179058

/-- `A008911(n)*A132411(n)` -/
def P6797149613621977862.Spec : Prop :=
  ∀ n, P6797149613621977862.a n = A179058 (n + 1)

end A179058

/-! ## A179058.P10331573663925815630

`A303212(A159075(n)+1+n)`
-/

namespace A179058.P10331573663925815630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303212 (A159075 n + 1 + (n : ℤ)).toNat

end

end A179058.P10331573663925815630

namespace A179058

/-- `A303212(A159075(n)+1+n)` -/
def P10331573663925815630.Spec : Prop :=
  ∀ n, P10331573663925815630.a n = A179058 (n + 1)

end A179058

/-!
# A179059: Number of non-attacking placements of 4 rooks on an n X n board.

The programs for A179059, the canonical program `A179059.P8424246157151929873` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179059 has offset 1).

The definition of A179059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179059.P8424246157151929873

`24*C(n+1, 4)²`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179059

/-- `24*C(n+1, 4)²` -/
def P8424246157151929873.Spec : Prop :=
  ∀ n, (P8424246157151929873.a n : ℤ) = A179059 (n + 1)

theorem P8424246157151929873.correct : P8424246157151929873.Spec := by
  intro n
  simp only [A179059, Nat.add_sub_cancel]

end A179059

/-! ## A179059.P15510229253413100332

`∑[24*Δ[C(n, 4)²]]`
-/

namespace A179059.P15510229253413100332
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4 ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179059.P15510229253413100332

namespace A179059

/-- `∑[24*Δ[C(n, 4)²]]` -/
def P15510229253413100332.Spec : Prop :=
  ∀ n, P15510229253413100332.a n = A179059 (n + 1)

end A179059

/-! ## A179059.P6066281148412618786

`24*C(n+1, 4)^2`
-/

namespace A179059.P6066281148412618786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * Nat.choose (n + 1) 4 ^ 2

end

end A179059.P6066281148412618786

namespace A179059

/-- `24*C(n+1, 4)^2` -/
def P6066281148412618786.Spec : Prop :=
  ∀ n, (P6066281148412618786.a n : ℤ) = A179059 (n + 1)

theorem P6066281148412618786.correct : P6066281148412618786.Spec := by
  intro n
  simp only [A179059, Nat.add_sub_cancel, A179059.P6066281148412618786.a, A179059.P8424246157151929873.a, SequenceMachineLib.memo_apply]

end A179059

/-! ## A179059.P17885856559704976135

`6*∑[2*C(n, 3)]²`
-/

namespace A179059.P17885856559704976135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A179059.P17885856559704976135

namespace A179059

/-- `6*∑[2*C(n, 3)]²` -/
def P17885856559704976135.Spec : Prop :=
  ∀ n, (P17885856559704976135.a n : ℤ) = A179059 (n + 1)

end A179059

/-! ## A179059.P5204977413090297254

`8*C(C(n, 2), 2)²/3`
-/

namespace A179059.P5204977413090297254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * Nat.choose (Nat.choose n 2) 2 ^ 2 : ℚ) / 3

end

end A179059.P5204977413090297254

namespace A179059

/-- `8*C(C(n, 2), 2)²/3` -/
def P5204977413090297254.Spec : Prop :=
  ∀ n, P5204977413090297254.a n = (A179059 (n + 1) : ℚ)

theorem P5204977413090297254.correct : P5204977413090297254.Spec := by
  intro n
  simp only [A179059, Nat.add_sub_cancel, A179059.P5204977413090297254.a, A179059.P8424246157151929873.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179059

/-! ## A179059.P14264849799448857071

`6*∑[A007290(n)]²`
-/

namespace A179059.P14264849799448857071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A179059.P14264849799448857071

namespace A179059

/-- `6*∑[A007290(n)]²` -/
def P14264849799448857071.Spec : Prop :=
  ∀ n, P14264849799448857071.a n = A179059 (n + 1)

end A179059

/-! ## A179059.P6942661341416034739

`∑[A280058(n)]²/6`
-/

namespace A179059.P6942661341416034739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280058 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 6

end

end A179059.P6942661341416034739

namespace A179059

/-- `∑[A280058(n)]²/6` -/
def P6942661341416034739.Spec : Prop :=
  ∀ n, P6942661341416034739.a n = (A179059 (n + 1) : ℚ)

end A179059

/-! ## A179059.P12538757255023425609

`∑[24*A132458(n+1)]`
-/

namespace A179059.P12538757255023425609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A132458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179059.P12538757255023425609

namespace A179059

/-- `∑[24*A132458(n+1)]` -/
def P12538757255023425609.Spec : Prop :=
  ∀ n, P12538757255023425609.a n = A179059 (n + 1)

end A179059

/-! ## A179059.P7337830153644571396

`(n+1)*(n-2)*A292061(n+1)`
-/

namespace A179059.P7337830153644571396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (((n : ℤ) - 2) * A292061 (n + 1))

end

end A179059.P7337830153644571396

namespace A179059

/-- `(n+1)*(n-2)*A292061(n+1)` -/
def P7337830153644571396.Spec : Prop :=
  ∀ n, P7337830153644571396.a n = A179059 (n + 1)

end A179059

/-! ## A179059.P6169144386649599882

`(n+1)*A007290(n)*A050534(n)`
-/

namespace A179059.P6169144386649599882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A007290 n * A050534 n)

end

end A179059.P6169144386649599882

namespace A179059

/-- `(n+1)*A007290(n)*A050534(n)` -/
def P6169144386649599882.Spec : Prop :=
  ∀ n, P6169144386649599882.a n = A179059 (n + 1)

theorem P6169144386649599882.correct : P6169144386649599882.Spec := by
  intro n
  simp only [A179059, Nat.add_sub_cancel, A179059.P6169144386649599882.a, A179059.P8424246157151929873.a, A007290, A007290.P9295456119697579818.a, A050534, A050534.P12216670126680451922.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179059

/-! ## A179059.P11481239233598922587

`24*A000332(n+1)²`
-/

namespace A179059.P11481239233598922587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A000332 (n + 1) ^ 2

end

end A179059.P11481239233598922587

namespace A179059

/-- `24*A000332(n+1)²` -/
def P11481239233598922587.Spec : Prop :=
  ∀ n, P11481239233598922587.a n = A179059 (n + 1)

theorem P11481239233598922587.correct : P11481239233598922587.Spec := by
  intro n
  simp only [A179059, Nat.add_sub_cancel, A179059.P11481239233598922587.a, A179059.P8424246157151929873.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179059

/-! ## A179059.P4142109696079819477

`∑[24*Δ[A000332(n)²]]`
-/

namespace A179059.P4142109696079819477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179059.P4142109696079819477

namespace A179059

/-- `∑[24*Δ[A000332(n)²]]` -/
def P4142109696079819477.Spec : Prop :=
  ∀ n, P4142109696079819477.a n = A179059 (n + 1)

end A179059

/-! ## A179059.P15002916259557129293

`A000332(n+1)*A052762(n+1)`
-/

namespace A179059.P15002916259557129293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) * A052762 (n + 1)

end

end A179059.P15002916259557129293

namespace A179059

/-- `A000332(n+1)*A052762(n+1)` -/
def P15002916259557129293.Spec : Prop :=
  ∀ n, P15002916259557129293.a n = A179059 (n + 1)

theorem P15002916259557129293.correct : P15002916259557129293.Spec := by
  intro n
  simp only [A179059, Nat.add_sub_cancel, A179059.P15002916259557129293.a, A179059.P8424246157151929873.a, A000332, A000332.P5946310388023661265.a, A052762, A052762.P17182617027547716710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179059

/-! ## A179059.P16418446718850750225

`4*A050534(n)*A034827(n+1)`
-/

namespace A179059.P16418446718850750225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A050534 n * A034827 (n + 1)

end

end A179059.P16418446718850750225

namespace A179059

/-- `4*A050534(n)*A034827(n+1)` -/
def P16418446718850750225.Spec : Prop :=
  ∀ n, P16418446718850750225.a n = A179059 (n + 1)

theorem P16418446718850750225.correct : P16418446718850750225.Spec := by
  intro n
  simp only [A179059, Nat.add_sub_cancel, A179059.P16418446718850750225.a, A179059.P8424246157151929873.a, A034827, A034827.P5779717595868083396.a, A050534, A050534.P12216670126680451922.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179059

/-! ## A179059.P1190345611216495448

`(A060008(n+1)-A000332(n+1))*A050534(n)`
-/

namespace A179059.P1190345611216495448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060008 (n + 1) - A000332 (n + 1)) * A050534 n

end

end A179059.P1190345611216495448

namespace A179059

/-- `(A060008(n+1)-A000332(n+1))*A050534(n)` -/
def P1190345611216495448.Spec : Prop :=
  ∀ n, P1190345611216495448.a n = A179059 (n + 1)

theorem P1190345611216495448.correct : P1190345611216495448.Spec := by
  intro n
  simp only [A179059, Nat.add_sub_cancel, A179059.P1190345611216495448.a, A179059.P8424246157151929873.a, A000332, A000332.P5946310388023661265.a, A050534, A050534.P12216670126680451922.a, A060008, A060008.P5269451932416479602.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179059

/-! ## A179059.P2506200828013598185

`A000332(n+1)*A040132(n+1)*A000332(n+1)`
-/

namespace A179059.P2506200828013598185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) * A040132 (n + 1) * A000332 (n + 1)

end

end A179059.P2506200828013598185

namespace A179059

/-- `A000332(n+1)*A040132(n+1)*A000332(n+1)` -/
def P2506200828013598185.Spec : Prop :=
  ∀ n, P2506200828013598185.a n = A179059 (n + 1)

end A179059

/-! ## A179059.P12872684889280142348

`A000332(n+1)*A000332(n+1)*A101104(n+1)`
-/

namespace A179059.P12872684889280142348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) * A000332 (n + 1) * A101104 (n + 1)

end

end A179059.P12872684889280142348

namespace A179059

/-- `A000332(n+1)*A000332(n+1)*A101104(n+1)` -/
def P12872684889280142348.Spec : Prop :=
  ∀ n, P12872684889280142348.a n = A179059 (n + 1)

end A179059

/-! ## A179059.P6095698895192698057

`Δ[A000389(n+1)]*A052762(n+1)`
-/

namespace A179059.P6095698895192698057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A052762 (n + 1)

end

end A179059.P6095698895192698057

namespace A179059

/-- `Δ[A000389(n+1)]*A052762(n+1)` -/
def P6095698895192698057.Spec : Prop :=
  ∀ n, P6095698895192698057.a n = A179059 (n + 1)

theorem P6095698895192698057.correct : P6095698895192698057.Spec := by
  intro n
  simp only [A179059, Nat.add_sub_cancel, A179059.P6095698895192698057.f1, A179059.P6095698895192698057.a, A179059.P8424246157151929873.a, A000389, A000389.P15450220129395289428.a, A052762, A052762.P17182617027547716710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179059

/-! ## A179059.P742354303658248225

`A028724(2*n+3)*A028725(2*n)`
-/

namespace A179059.P742354303658248225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028724 (2 * n + 3) * A028725 (2 * n)

end

end A179059.P742354303658248225

namespace A179059

/-- `A028724(2*n+3)*A028725(2*n)` -/
def P742354303658248225.Spec : Prop :=
  ∀ n, P742354303658248225.a n = A179059 (n + 1)

end A179059

/-!
# A179060: Number of non-attacking placements of 5 rooks on an n X n board.

The programs for A179060, the canonical program `A179060.P2000030887198902217` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179060 has offset 1).

The definition of A179060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179060.P2000030887198902217

`5*24*C(n+1, 5)²`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179060

/-- `5*24*C(n+1, 5)²` -/
def P2000030887198902217.Spec : Prop :=
  ∀ n, (P2000030887198902217.a n : ℤ) = A179060 (n + 1)

theorem P2000030887198902217.correct : P2000030887198902217.Spec := by
  intro n
  simp only [A179060, Nat.add_sub_cancel]

end A179060

/-! ## A179060.P6083929872024647309

`30*∑[A034827(n)]²`
-/

namespace A179060.P6083929872024647309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034827 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A179060.P6083929872024647309

namespace A179060

/-- `30*∑[A034827(n)]²` -/
def P6083929872024647309.Spec : Prop :=
  ∀ n, P6083929872024647309.a n = A179060 (n + 1)

end A179060

/-! ## A179060.P7787902814698728341

`(n+1)*A000332(n)*∑[A052762(n)]`
-/

namespace A179060.P7787902814698728341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000332 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A179060.P7787902814698728341

namespace A179060

/-- `(n+1)*A000332(n)*∑[A052762(n)]` -/
def P7787902814698728341.Spec : Prop :=
  ∀ n, P7787902814698728341.a n = A179060 (n + 1)

end A179060

/-! ## A179060.P14271272759629773643

`∑[A000332(n)]*A052787(n+1)`
-/

namespace A179060.P14271272759629773643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A052787 (n + 1)

end

end A179060.P14271272759629773643

namespace A179060

/-- `∑[A000332(n)]*A052787(n+1)` -/
def P14271272759629773643.Spec : Prop :=
  ∀ n, P14271272759629773643.a n = A179060 (n + 1)

end A179060

/-! ## A179060.P2649647653658071368

`A000389(n+1)*A052787(n+1)`
-/

namespace A179060.P2649647653658071368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 1) * A052787 (n + 1)

end

end A179060.P2649647653658071368

namespace A179060

/-- `A000389(n+1)*A052787(n+1)` -/
def P2649647653658071368.Spec : Prop :=
  ∀ n, P2649647653658071368.a n = A179060 (n + 1)

theorem P2649647653658071368.correct : P2649647653658071368.Spec := by
  intro n
  simp only [A179060, Nat.add_sub_cancel, A179060.P2649647653658071368.a, A179060.P2000030887198902217.a, A000389, A000389.P15450220129395289428.a, A052787, A052787.P3134947303530466889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179060

/-! ## A179060.P4668775070760281368

`A000389(n+1)²*A101100(n+2)`
-/

namespace A179060.P4668775070760281368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 1) ^ 2 * A101100 (n + 2)

end

end A179060.P4668775070760281368

namespace A179060

/-- `A000389(n+1)²*A101100(n+2)` -/
def P4668775070760281368.Spec : Prop :=
  ∀ n, P4668775070760281368.a n = A179060 (n + 1)

end A179060

/-! ## A179060.P7937434753635464240

`A052787(n+1)²/A101100(n+2)`
-/

namespace A179060.P7937434753635464240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052787 (n + 1) ^ 2 : ℚ) / (A101100 (n + 2) : ℚ)

end

end A179060.P7937434753635464240

namespace A179060

/-- `A052787(n+1)²/A101100(n+2)` -/
def P7937434753635464240.Spec : Prop :=
  ∀ n, P7937434753635464240.a n = (A179060 (n + 1) : ℚ)

end A179060

/-! ## A179060.P10221648761758835429

`(n+1)*A000389(n+1)*A052762(n)`
-/

namespace A179060.P10221648761758835429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000389 (n + 1) * A052762 n)

end

end A179060.P10221648761758835429

namespace A179060

/-- `(n+1)*A000389(n+1)*A052762(n)` -/
def P10221648761758835429.Spec : Prop :=
  ∀ n, P10221648761758835429.a n = A179060 (n + 1)

theorem P10221648761758835429.correct : P10221648761758835429.Spec := by
  intro n
  simp only [A179060, Nat.add_sub_cancel, A179060.P10221648761758835429.a, A179060.P2000030887198902217.a, A000389, A000389.P15450220129395289428.a, A052762, A052762.P17182617027547716710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179060

/-! ## A179060.P17233260894115507392

`gcd(A052787(n+1), A266387(n+2))*A052787(n+1)`
-/

namespace A179060.P17233260894115507392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A052787 (n + 1)) (A266387 (n + 2)) : ℤ) * A052787 (n + 1)

end

end A179060.P17233260894115507392

namespace A179060

/-- `gcd(A052787(n+1), A266387(n+2))*A052787(n+1)` -/
def P17233260894115507392.Spec : Prop :=
  ∀ n, P17233260894115507392.a n = A179060 (n + 1)

end A179060

/-! ## A179060.P13622258511265626103

`A000389(n+1)*A101100(2*n+1)*A000389(n+1)`
-/

namespace A179060.P13622258511265626103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 1) * A101100 (2 * n + 1) * A000389 (n + 1)

end

end A179060.P13622258511265626103

namespace A179060

/-- `A000389(n+1)*A101100(2*n+1)*A000389(n+1)` -/
def P13622258511265626103.Spec : Prop :=
  ∀ n, P13622258511265626103.a n = A179060 (n + 1)

end A179060

/-!
# A179061: Number of non-attacking placements of 6 rooks on an n X n board.

The programs for A179061, the canonical program `A179061.P7700912075756676565` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179061 has offset 1).

The definition of A179061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179061.P7700912075756676565

`5*(12*C(n+1, 6))²`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179061

/-- `5*(12*C(n+1, 6))²` -/
def P7700912075756676565.Spec : Prop :=
  ∀ n, (P7700912075756676565.a n : ℤ) = A179061 (n + 1)

theorem P7700912075756676565.correct : P7700912075756676565.Spec := by
  intro n
  simp only [A179061, Nat.add_sub_cancel]

end A179061

/-! ## A179061.P6758986548768555071

`∑[A052787(n)]²/20`
-/

namespace A179061.P6758986548768555071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052787 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 20

end

end A179061.P6758986548768555071

namespace A179061

/-- `∑[A052787(n)]²/20` -/
def P6758986548768555071.Spec : Prop :=
  ∀ n, P6758986548768555071.a n = (A179061 (n + 1) : ℚ)

end A179061

/-! ## A179061.P116013719368517553

`∑[A000389(n)]*A053625(n+1)`
-/

namespace A179061.P116013719368517553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A053625 (n + 1)

end

end A179061.P116013719368517553

namespace A179061

/-- `∑[A000389(n)]*A053625(n+1)` -/
def P116013719368517553.Spec : Prop :=
  ∀ n, P116013719368517553.a n = A179061 (n + 1)

end A179061

/-! ## A179061.P4737849792732234207

`A000579(n+1)*A053625(n+1)`
-/

namespace A179061.P4737849792732234207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 1) * A053625 (n + 1)

end

end A179061.P4737849792732234207

namespace A179061

/-- `A000579(n+1)*A053625(n+1)` -/
def P4737849792732234207.Spec : Prop :=
  ∀ n, P4737849792732234207.a n = A179061 (n + 1)

theorem P4737849792732234207.correct : P4737849792732234207.Spec := by
  intro n
  simp only [A179061, Nat.add_sub_cancel, A179061.P4737849792732234207.a, A179061.P7700912075756676565.a, A000579, A000579.P13663713855180125612.a, A053625, A053625.P9911558398274709758.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179061

/-! ## A179061.P11848738858987289236

`(n+1)*A000579(n+1)*A052787(n)`
-/

namespace A179061.P11848738858987289236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000579 (n + 1) * A052787 n)

end

end A179061.P11848738858987289236

namespace A179061

/-- `(n+1)*A000579(n+1)*A052787(n)` -/
def P11848738858987289236.Spec : Prop :=
  ∀ n, P11848738858987289236.a n = A179061 (n + 1)

theorem P11848738858987289236.correct : P11848738858987289236.Spec := by
  intro n
  simp only [A179061, Nat.add_sub_cancel, A179061.P11848738858987289236.a, A179061.P7700912075756676565.a, A000579, A000579.P13663713855180125612.a, A052787, A052787.P3134947303530466889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179061

/-! ## A179061.P5318255940433384846

`(A001096(n+1)-(n+1))*A000579(n+1)`
-/

namespace A179061.P5318255940433384846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001096 (n + 1) - (n + 1 : ℤ)) * A000579 (n + 1)

end

end A179061.P5318255940433384846

namespace A179061

/-- `(A001096(n+1)-(n+1))*A000579(n+1)` -/
def P5318255940433384846.Spec : Prop :=
  ∀ n, P5318255940433384846.a n = A179061 (n + 1)

theorem P5318255940433384846.correct : P5318255940433384846.Spec := by
  intro n
  simp only [A179061, Nat.add_sub_cancel, A179061.P5318255940433384846.a, A179061.P7700912075756676565.a, A000579, A000579.P13663713855180125612.a, A001096, A001096.P17984634652378150633.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179061

/-! ## A179061.P15743115976760236913

`2*A331576(2*n)*A033583(n+1)`
-/

namespace A179061.P15743115976760236913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331576 (2 * n) * A033583 (n + 1)

end

end A179061.P15743115976760236913

namespace A179061

/-- `2*A331576(2*n)*A033583(n+1)` -/
def P15743115976760236913.Spec : Prop :=
  ∀ n, P15743115976760236913.a n = A179061 (n + 1)

end A179061

/-!
# A179062: Number of non-attacking placements of 7 rooks on an n X n board.

The programs for A179062, the canonical program `A179062.P4322763169761835599` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179062 has offset 1).

The definition of A179062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179062.P4322763169761835599

`∑[A000579(n)]*A159083(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A179062

/-- `∑[A000579(n)]*A159083(n+1)` -/
def P4322763169761835599.Spec : Prop :=
  ∀ n, P4322763169761835599.a n = A179062 (n + 1)

theorem P4322763169761835599.correct : P4322763169761835599.Spec := by
  intro n
  simp only [A179062, Nat.add_sub_cancel]

end A179062

/-! ## A179062.P7870946388636629709

`∑{d}[∑{d}[A291116(n+1), #], #]`
-/

namespace A179062.P7870946388636629709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291116 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A179062.P7870946388636629709

namespace A179062

/-- `∑{d}[∑{d}[A291116(n+1), #], #]` -/
def P7870946388636629709.Spec : Prop :=
  ∀ n, (P7870946388636629709.a n : ℤ) = A179062 (n + 1)

end A179062

/-! ## A179062.P7649496527987258360

`A000142(n+1)*A373636(A005347(n))`
-/

namespace A179062.P7649496527987258360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A373636 (A005347 n).toNat

end

end A179062.P7649496527987258360

namespace A179062

/-- `A000142(n+1)*A373636(A005347(n))` -/
def P7649496527987258360.Spec : Prop :=
  ∀ n, P7649496527987258360.a n = A179062 (n + 1)

end A179062

/-!
# A179063: Number of non-attacking placements of 8 rooks on an n X n board.

The programs for A179063, there is no canonical definition to state claims against.
-/

/-! ## A179063.P12704027851254352929

`Δ[A179064(n+1)]/A231190(2*n+3)`
-/

namespace A179063.P12704027851254352929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179064 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A231190 (2 * n + 3) : ℚ)

end

end A179063.P12704027851254352929

/-! ## A179063.P7364282586879852239

`8*A291114(A001104(n+1))`
-/

namespace A179063.P7364282586879852239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A291114 (A001104 (n + 1)).toNat

end

end A179063.P7364282586879852239

/-! ## A179063.P14218605234126443049

`8*A291114(A028431(n+1))`
-/

namespace A179063.P14218605234126443049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A291114 (A028431 (n + 1)).toNat

end

end A179063.P14218605234126443049

/-! ## A179063.P18145493091809038547

`8*A291114(A032555(n+1))`
-/

namespace A179063.P18145493091809038547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A291114 (A032555 (n + 1)).toNat

end

end A179063.P18145493091809038547

/-!
# A179064: Number of non-attacking placements of 9 rooks on an n X n board.

The programs for A179064, there is no canonical definition to state claims against.
-/

/-! ## A179064.P7595339914273300758

`record[A292977(n)]*A035040(n)`
-/

namespace A179064.P7595339914273300758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A035040 n

end

end A179064.P7595339914273300758

/-! ## A179064.P3464592780350389456

`A071274(n+1)!*A035040(n)`
-/

namespace A179064.P3464592780350389456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A071274 (n + 1)).toNat : ℤ) * A035040 n

end

end A179064.P3464592780350389456

/-! ## A179064.P18172944153570499611

`A351870(n+1)!*A035040(n)`
-/

namespace A179064.P18172944153570499611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A351870 (n + 1)).toNat : ℤ) * A035040 n

end

end A179064.P18172944153570499611

/-! ## A179064.P9620449403944382840

`record[A134134(n+1)]*A035040(n)`
-/

namespace A179064.P9620449403944382840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A035040 n

end

end A179064.P9620449403944382840

/-! ## A179064.P15699538800377219002

`A291092(A000108(n))*A291115(n+1)`
-/

namespace A179064.P15699538800377219002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291092 (A000108 n).toNat * A291115 (n + 1)

end

end A179064.P15699538800377219002

/-!
# A179065: Number of non-attacking placements of 10 rooks on an n X n board.

The programs for A179065, there is no canonical definition to state claims against.
-/

/-! ## A179065.P14538809816814953982

`record[A331327(n)]*A035041(n)`
-/

namespace A179065.P14538809816814953982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A035041 n

end

end A179065.P14538809816814953982

/-! ## A179065.P5885601979430532915

`record[A331327(n)]*A125591(n)`
-/

namespace A179065.P5885601979430532915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A125591 n

end

end A179065.P5885601979430532915

/-! ## A179065.P8039346495103820403

`A068634(n+1)!*A035041(n)`
-/

namespace A179065.P8039346495103820403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A068634 (n + 1)).toNat : ℤ) * A035041 n

end

end A179065.P8039346495103820403

/-! ## A179065.P9261509758221825572

`A001222(A003946(n))*A246617(n+1)`
-/

namespace A179065.P9261509758221825572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003946 n).toNat * A246617 (n + 1)

end

end A179065.P9261509758221825572

/-! ## A179065.P14199590314744232340

`A061134(n+1)*A353867(A199101(n+1))`
-/

namespace A179065.P14199590314744232340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061134 (n + 1) * A353867 (A199101 (n + 1)).toNat

end

end A179065.P14199590314744232340

/-!
# A179067: Orders of consecutive clusters of twin primes.

The programs for A179067, the canonical program `A179067.P13388217006194654114` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179067 has offset 1).

The definition of A179067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179067.P13388217006194654114

`Δ[comp[A242881(n+1)-1]]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A179067

/-- `Δ[comp[A242881(n+1)-1]]` -/
def P13388217006194654114.Spec : Prop :=
  ∀ n, P13388217006194654114.a n = A179067 (n + 1)

theorem P13388217006194654114.correct : P13388217006194654114.Spec := by
  intro n
  simp only [A179067, Nat.add_sub_cancel]

end A179067

/-!
# A179070: a(1)=a(2)=a(3)=1, a(4)=3; thereafter a(n) = a(n-1) + a(n-3).

The programs for A179070, the canonical program `A179070.P6458830498881027693` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179070 has offset 1).

The definition of A179070 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)` (program `A179070.P6458830498881027693`, by `A179070.P6458830498881027693.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179070.P6458830498881027693

`a(n-1)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179070

/-- `a(n-1)+a(n-3)` -/
def P6458830498881027693.Spec : Prop :=
  ∀ n, (P6458830498881027693.a n : ℤ) = A179070 (n + 1)

theorem P6458830498881027693.correct : P6458830498881027693.Spec := by
  intro n
  simp only [A179070, Nat.add_sub_cancel]

end A179070

/-! ## A179070.P15622578267455756167

`ogf((1+x^3)/(1-x-x^3))`
-/

namespace A179070.P15622578267455756167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 1] [1, -1, 0, -1] n

end

end A179070.P15622578267455756167

namespace A179070

/-- `ogf((1+x^3)/(1-x-x^3))` -/
def P15622578267455756167.Spec : Prop :=
  ∀ n, P15622578267455756167.a n = A179070 (n + 1)

end A179070

/-! ## A179070.P17804062989805751626

`record[A135851(n+1)]-A135851(n)`
-/

namespace A179070.P17804062989805751626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A135851 n

end

end A179070.P17804062989805751626

namespace A179070

/-- `record[A135851(n+1)]-A135851(n)` -/
def P17804062989805751626.Spec : Prop :=
  ∀ n, P17804062989805751626.a n = A179070 (n + 1)

end A179070

/-! ## A179070.P8554552160582527159

`A226916(2*n+1)+A000930(n)`
-/

namespace A179070.P8554552160582527159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (2 * n + 1) + A000930 n

end

end A179070.P8554552160582527159

namespace A179070

/-- `A226916(2*n+1)+A000930(n)` -/
def P8554552160582527159.Spec : Prop :=
  ∀ n, P8554552160582527159.a n = A179070 (n + 1)

end A179070

/-! ## A179070.P11029502797131498356

`A226916(2*n+1)+A078012(n+3)`
-/

namespace A179070.P11029502797131498356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (2 * n + 1) + A078012 (n + 3)

end

end A179070.P11029502797131498356

namespace A179070

/-- `A226916(2*n+1)+A078012(n+3)` -/
def P11029502797131498356.Spec : Prop :=
  ∀ n, P11029502797131498356.a n = A179070 (n + 1)

end A179070

/-! ## A179070.P3032147925208863161

`A306276(n)+A277253(A028310(n))`
-/

namespace A179070.P3032147925208863161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306276 n + A277253 (A028310 n).toNat

end

end A179070.P3032147925208863161

namespace A179070

/-- `A306276(n)+A277253(A028310(n))` -/
def P3032147925208863161.Spec : Prop :=
  ∀ n, P3032147925208863161.a n = A179070 (n + 1)

end A179070

/-! ## A179070.P14723881036831340962

`A306276(n)+A277253(A000007(n)+n)`
-/

namespace A179070.P14723881036831340962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306276 n + A277253 (A000007 n + (n : ℤ)).toNat

end

end A179070.P14723881036831340962

namespace A179070

/-- `A306276(n)+A277253(A000007(n)+n)` -/
def P14723881036831340962.Spec : Prop :=
  ∀ n, P14723881036831340962.a n = A179070 (n + 1)

end A179070

/-! ## A179070.P236933089398291698

`A306276(n)-(A000007(n)-A277253(n))`
-/

namespace A179070.P236933089398291698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306276 n - (A000007 n - A277253 n)

end

end A179070.P236933089398291698

namespace A179070

/-- `A306276(n)-(A000007(n)-A277253(n))` -/
def P236933089398291698.Spec : Prop :=
  ∀ n, P236933089398291698.a n = A179070 (n + 1)

end A179070

/-! ## A179070.P11424669662178296603

`A226916(2*n+1)+A226916(A020742(n))`
-/

namespace A179070.P11424669662178296603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (2 * n + 1) + A226916 (A020742 n).toNat

end

end A179070.P11424669662178296603

namespace A179070

/-- `A226916(2*n+1)+A226916(A020742(n))` -/
def P11424669662178296603.Spec : Prop :=
  ∀ n, P11424669662178296603.a n = A179070 (n + 1)

end A179070

/-! ## A179070.P8820355839636310871

`A003410(n)-A058278(n+2)`
-/

namespace A179070.P8820355839636310871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 n - A058278 (n + 2)

end

end A179070.P8820355839636310871

namespace A179070

/-- `A003410(n)-A058278(n+2)` -/
def P8820355839636310871.Spec : Prop :=
  ∀ n, P8820355839636310871.a n = A179070 (n + 1)

end A179070

/-! ## A179070.P8738055219517664300

`A003410(n)-(A097333(n)-A058278(n))`
-/

namespace A179070.P8738055219517664300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 n - (A097333 n - A058278 n)

end

end A179070.P8738055219517664300

namespace A179070

/-- `A003410(n)-(A097333(n)-A058278(n))` -/
def P8738055219517664300.Spec : Prop :=
  ∀ n, P8738055219517664300.a n = A179070 (n + 1)

end A179070

/-! ## A179070.P17449693360483127440

`A097333(n+1)+A003410(n)-A003410(n+1)`
-/

namespace A179070.P17449693360483127440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 (n + 1) + (A003410 n - A003410 (n + 1))

end

end A179070.P17449693360483127440

namespace A179070

/-- `A097333(n+1)+A003410(n)-A003410(n+1)` -/
def P17449693360483127440.Spec : Prop :=
  ∀ n, P17449693360483127440.a n = A179070 (n + 1)

end A179070

/-! ## A179070.P9865755047641854412

`A038718(n+1)+A003410(n)-A038718(n+2)`
-/

namespace A179070.P9865755047641854412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038718 (n + 1) + (A003410 n - A038718 (n + 2))

end

end A179070.P9865755047641854412

namespace A179070

/-- `A038718(n+1)+A003410(n)-A038718(n+2)` -/
def P9865755047641854412.Spec : Prop :=
  ∀ n, P9865755047641854412.a n = A179070 (n + 1)

end A179070

/-! ## A179070.P13886862615213897509

`Δ[A077868(n)-A226916(2*n+1)]`
-/

namespace A179070.P13886862615213897509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 n - A226916 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179070.P13886862615213897509

namespace A179070

/-- `Δ[A077868(n)-A226916(2*n+1)]` -/
def P13886862615213897509.Spec : Prop :=
  ∀ n, P13886862615213897509.a n = A179070 (n + 1)

end A179070

/-! ## A179070.P4463075563226527946

`A226916(2*n+1)+Δ[Δ[A077868(n+1)]]`
-/

namespace A179070.P4463075563226527946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A179070.P4463075563226527946

namespace A179070

/-- `A226916(2*n+1)+Δ[Δ[A077868(n+1)]]` -/
def P4463075563226527946.Spec : Prop :=
  ∀ n, P4463075563226527946.a n = A179070 (n + 1)

end A179070

/-! ## A179070.P3408651581993568260

`Δ[record[Δ[A288429(n)]]]`
-/

namespace A179070.P3408651581993568260
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179070.P3408651581993568260

namespace A179070

/-- `Δ[record[Δ[A288429(n)]]]` -/
def P3408651581993568260.Spec : Prop :=
  ∀ n, P3408651581993568260.a n = A179070 (n + 1)

end A179070

/-!
# A179072: Chapman's "evil" determinants II.

The programs for A179072, there is no canonical definition to state claims against.
-/

/-! ## A179072.P5798134309403816603

`A327276(A087130(n))^A328085(n+1)`
-/

namespace A179072.P5798134309403816603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327276 (A087130 n).toNat : ℚ) ^ (A328085 (n + 1) : ℤ)

end

end A179072.P5798134309403816603

/-! ## A179072.P14775968879245449865

`A327276(A087130(n))^A328597(n+1)`
-/

namespace A179072.P14775968879245449865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327276 (A087130 n).toNat : ℚ) ^ (A328597 (n + 1) : ℤ)

end

end A179072.P14775968879245449865

/-!
# A179073: A179071 for p == 1 (mod 4).

The programs for A179073, there is no canonical definition to state claims against.
-/

/-! ## A179073.P189711580028345385

`A179071(A080147(n+1))`
-/

namespace A179073.P189711580028345385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179071 (A080147 (n + 1)).toNat

end

end A179073.P189711580028345385

/-! ## A179073.P12645824351465576908

`A179071(A138970(n+1)+1)`
-/

namespace A179073.P12645824351465576908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179071 (A138970 (n + 1) + 1).toNat

end

end A179073.P12645824351465576908

/-! ## A179073.P8378763907627405250

`A179071(A026238(or(1, p?[4*n+1]-1)))`
-/

namespace A179073.P8378763907627405250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179071 (A026238 (Int.lor 1 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1)).toNat).toNat

end

end A179073.P8378763907627405250

/-! ## A179073.P8571886932754166279

`A179071(A026238(p?[A058281(n)]))`
-/

namespace A179073.P8571886932754166279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179071 (A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A179073.P8571886932754166279

/-! ## A179073.P101165397056101995

`A179071(A049084(p?[A058281(n)]))`
-/

namespace A179073.P101165397056101995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179071 (A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A179073.P101165397056101995

/-!
# A179074: A179072 for p == 1 (mod 4).

The programs for A179074, there is no canonical definition to state claims against.
-/

/-! ## A179074.P16371396321863612599

`A179072(A080147(n+1))`
-/

namespace A179074.P16371396321863612599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179072 (A080147 (n + 1)).toNat

end

end A179074.P16371396321863612599

/-! ## A179074.P13517615678794763565

`A179072(A138970(n+1)+1)`
-/

namespace A179074.P13517615678794763565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179072 (A138970 (n + 1) + 1).toNat

end

end A179074.P13517615678794763565

/-!
# A179075: Concatenation of the first n numbers in base n.

The programs for A179075, there is no canonical definition to state claims against.
-/

/-! ## A179075.P3129480889500493237

`(n+2)*(A062808(n+2)+1)`
-/

namespace A179075.P3129480889500493237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A062808 (n + 2) + 1)

end

end A179075.P3129480889500493237

/-! ## A179075.P10829488089026099982

`(A062805(n+2)-(n+1))*(n+2)`
-/

namespace A179075.P10829488089026099982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062805 (n + 2) - (n + 1 : ℤ)) * (n + 2 : ℤ)

end

end A179075.P10829488089026099982

/-! ## A179075.P7278489600350841496

`(n+2)²*A023811(n+2)+n+2`
-/

namespace A179075.P7278489600350841496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) * A023811 (n + 2) + (n + 2 : ℤ)

end

end A179075.P7278489600350841496

/-!
# A179076: Number of primes of the form k^2 + 1 less than n.

The programs for A179076, the canonical program `A179076.P13470073708610048040` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179076 has offset 1).

The definition of A179076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179076.P13470073708610048040

`∑[char[p?[n²+1]]]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179076

/-- `∑[char[p?[n²+1]]]` -/
def P13470073708610048040.Spec : Prop :=
  ∀ n, (P13470073708610048040.a n : ℤ) = A179076 (n + 1)

theorem P13470073708610048040.correct : P13470073708610048040.Spec := by
  intro n
  simp only [A179076, Nat.add_sub_cancel]

end A179076

/-! ## A179076.P15420173091811130441

`comp[p?[n²+1]+n]-n`
-/

namespace A179076.P15420173091811130441
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A179076.P15420173091811130441

namespace A179076

/-- `comp[p?[n²+1]+n]-n` -/
def P15420173091811130441.Spec : Prop :=
  ∀ n, P15420173091811130441.a n = A179076 (n + 1)

end A179076

/-! ## A179076.P13580237821229277661

`∑[char[A002496(n+1)]]`
-/

namespace A179076.P13580237821229277661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179076.P13580237821229277661

namespace A179076

/-- `∑[char[A002496(n+1)]]` -/
def P13580237821229277661.Spec : Prop :=
  ∀ n, (P13580237821229277661.a n : ℤ) = A179076 (n + 1)

end A179076

/-! ## A179076.P9426229594724660767

`∑[char[record[A020639((n+1)²+1)]]]`
-/

namespace A179076.P9426229594724660767
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1) ^ 2 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179076.P9426229594724660767

namespace A179076

/-- `∑[char[record[A020639((n+1)²+1)]]]` -/
def P9426229594724660767.Spec : Prop :=
  ∀ n, (P9426229594724660767.a n : ℤ) = A179076 (n + 1)

end A179076

/-! ## A179076.P9147200104018172493

`A001222(∏[char[p?[n²+1]]+1])`
-/

namespace A179076.P9147200104018172493
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A179076.P9147200104018172493

namespace A179076

/-- `A001222(∏[char[p?[n²+1]]+1])` -/
def P9147200104018172493.Spec : Prop :=
  ∀ n, P9147200104018172493.a n = A179076 (n + 1)

end A179076

/-! ## A179076.P1849457235254175483

`A056811(A354140(n+1))`
-/

namespace A179076.P1849457235254175483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A354140 (n + 1)).toNat

end

end A179076.P1849457235254175483

namespace A179076

/-- `A056811(A354140(n+1))` -/
def P1849457235254175483.Spec : Prop :=
  ∀ n, P1849457235254175483.a n = A179076 (n + 1)

end A179076

/-! ## A179076.P18238259385693578504

`A056811(A193406(n+1))`
-/

namespace A179076.P18238259385693578504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A193406 (n + 1)).toNat

end

end A179076.P18238259385693578504

namespace A179076

/-- `A056811(A193406(n+1))` -/
def P18238259385693578504.Spec : Prop :=
  ∀ n, P18238259385693578504.a n = A179076 (n + 1)

end A179076

/-! ## A179076.P4366904099415999587

`A001221(A214078(n))`
-/

namespace A179076.P4366904099415999587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A214078 n).toNat

end

end A179076.P4366904099415999587

namespace A179076

/-- `A001221(A214078(n))` -/
def P4366904099415999587.Spec : Prop :=
  ∀ n, P4366904099415999587.a n = A179076 (n + 1)

end A179076

/-! ## A179076.P4905772591027905538

`A358553(A005578(ceil(sqrt(n))))`
-/

namespace A179076.P4905772591027905538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358553 (A005578 ⌈Real.sqrt (n : ℝ)⌉.toNat).toNat

end

end A179076.P4905772591027905538

namespace A179076

/-- `A358553(A005578(ceil(sqrt(n))))` -/
def P4905772591027905538.Spec : Prop :=
  ∀ n, P4905772591027905538.a n = A179076 (n + 1)

end A179076

/-! ## A179076.P2846923657976000481

`A000194(n-A393564(A393698(n)))`
-/

namespace A179076.P2846923657976000481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((n : ℤ) - A393564 (A393698 n).toNat).toNat

end

end A179076.P2846923657976000481

namespace A179076

/-- `A000194(n-A393564(A393698(n)))` -/
def P2846923657976000481.Spec : Prop :=
  ∀ n, P2846923657976000481.a n = A179076 (n + 1)

end A179076

/-!
# A179077: a(n) is the residue ((2^p - 2)/p) mod p, where p is the n-th prime.

The programs for A179077, there is no canonical definition to state claims against.
-/

/-! ## A179077.P12357436501713771915

`A064535(n+1)%p?[A064524(n)]`
-/

namespace A179077.P12357436501713771915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064535 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A179077.P12357436501713771915

/-! ## A179077.P13859999216535529939

`A001037(A000040(n+1))%p?[A091203(n)]`
-/

namespace A179077.P13859999216535529939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001037 (A000040 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A179077.P13859999216535529939

/-! ## A179077.P15010151081343591874

`A052823(A216884(n+1))%A216884(n+1)`
-/

namespace A179077.P15010151081343591874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052823 (A216884 (n + 1)).toNat) (A216884 (n + 1))

end

end A179077.P15010151081343591874

/-! ## A179077.P14624658301834461945

`A001037(A082500(2*(n+1)))%A082500(2*(n+1))`
-/

namespace A179077.P14624658301834461945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001037 (A082500 (2 * (n + 1))).toNat) (A082500 (2 * (n + 1)))

end

end A179077.P14624658301834461945

/-!
# A179078: a(n) = ((3^p - 3)/p) mod p where p is n-th prime.

The programs for A179078, there is no canonical definition to state claims against.
-/

/-! ## A179078.P15599092773194267036

`A027376(A000040(n+1))%A000040(n+1)`
-/

namespace A179078.P15599092773194267036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027376 (A000040 (n + 1)).toNat) (A000040 (n + 1))

end

end A179078.P15599092773194267036

/-! ## A179078.P18413623821667455972

`A027376(A008578(n+2))%A008578(n+2)`
-/

namespace A179078.P18413623821667455972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027376 (A008578 (n + 2)).toNat) (A008578 (n + 2))

end

end A179078.P18413623821667455972

/-!
# A179079: Permanent of the n X n matrix whose (i,j)-element is (i+j-1) modulo 3.

The programs for A179079, there is no canonical definition to state claims against.
-/

/-! ## A179079.P16197873798303685243

`A204426(n+1)+A204434(n+1)-A204268(n+1)`
-/

namespace A179079.P16197873798303685243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204426 (n + 1) + (A204434 (n + 1) - A204268 (n + 1))

end

end A179079.P16197873798303685243

/-! ## A179079.P7918372364920644526

`A204428(n+1)+A204430(n+1)-A204265(n+1)`
-/

namespace A179079.P7918372364920644526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204428 (n + 1) + (A204430 (n + 1) - A204265 (n + 1))

end

end A179079.P7918372364920644526

/-! ## A179079.P9179948973659572850

`A204426(n+1)+A204428(n+1)-A204432(n+1)`
-/

namespace A179079.P9179948973659572850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204426 (n + 1) + (A204428 (n + 1) - A204432 (n + 1))

end

end A179079.P9179948973659572850

/-! ## A179079.P12446402093089572189

`A204430(n+1)+A204434(n+1)-A204424(n+1)`
-/

namespace A179079.P12446402093089572189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204430 (n + 1) + (A204434 (n + 1) - A204424 (n + 1))

end

end A179079.P12446402093089572189

/-!
# A179080: Number of partitions of n into distinct parts where all differences between consecutive parts are odd.

The programs for A179080, there is no canonical definition to state claims against.
-/

/-! ## A179080.P13501656284874157209

`A218355(A028310(n))+A179049(n)`
-/

namespace A179080.P13501656284874157209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218355 (A028310 n).toNat + A179049 n

end

end A179080.P13501656284874157209

/-! ## A179080.P16997848576204238188

`A218355(A000007(n)+n)+A179049(n)`
-/

namespace A179080.P16997848576204238188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218355 (A000007 n + (n : ℤ)).toNat + A179049 n

end

end A179080.P16997848576204238188

/-! ## A179080.P10444783939247056970

`A179049(n)-(A000007(n)-A218355(n))`
-/

namespace A179080.P10444783939247056970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179049 n - (A000007 n - A218355 n)

end

end A179080.P10444783939247056970

/-! ## A179080.P14194437018846805887

`A218355(n)+A179049(n)%A000726(n+1)`
-/

namespace A179080.P14194437018846805887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218355 n + Int.tmod (A179049 n) (A000726 (n + 1))

end

end A179080.P14194437018846805887

/-! ## A179080.P9544772295274250263

`A179049(n)+A218355(n)%A000041(n)`
-/

namespace A179080.P9544772295274250263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179049 n + Int.tmod (A218355 n) (A000041 n)

end

end A179080.P9544772295274250263

/-! ## A179080.P3657596138904036192

`A218355(n)+A179049(n)%A007096(n)`
-/

namespace A179080.P3657596138904036192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218355 n + Int.tmod (A179049 n) (A007096 n)

end

end A179080.P3657596138904036192

/-!
# A179081: Parity of sum of digits of n.

The programs for A179081, the canonical program `A179081.P10977035512665174028` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179081 has offset 0).

The definition of A179081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179081.P10977035512665174028

`∑{digits}[n, #]%2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179081

/-- `∑{digits}[n, #]%2` -/
def P10977035512665174028.Spec : Prop :=
  ∀ n, (P10977035512665174028.a n : ℤ) = A179081 n

theorem P10977035512665174028.correct : P10977035512665174028.Spec := by
  intro n
  simp only [A179081]

end A179081

/-! ## A179081.P14716212766586704982

`and(1, ∑{digits}[n, #])`
-/

namespace A179081.P14716212766586704982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A179081.P14716212766586704982

namespace A179081

/-- `and(1, ∑{digits}[n, #])` -/
def P14716212766586704982.Spec : Prop :=
  ∀ n, (P14716212766586704982.a n : ℤ) = A179081 n

theorem P14716212766586704982.correct : P14716212766586704982.Spec := by
  intro n
  simp only [A179081, Nat.add_sub_cancel, A179081.P14716212766586704982.f1, A179081.P14716212766586704982.a, A179081.P10977035512665174028.f1, A179081.P10977035512665174028.a, SequenceMachineLib.memo_apply]
  try simp

end A179081

/-! ## A179081.P15824295110314215663

`2-gcd(2, ∑{digits}[n, #])`
-/

namespace A179081.P15824295110314215663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 2 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℤ)

end

end A179081.P15824295110314215663

namespace A179081

/-- `2-gcd(2, ∑{digits}[n, #])` -/
def P15824295110314215663.Spec : Prop :=
  ∀ n, P15824295110314215663.a n = A179081 n

end A179081

/-! ## A179081.P10795737517212271124

`val(∑{digits}[n, #]²+1, 2)`
-/

namespace A179081.P10795737517212271124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2 + 1) 2

end

end A179081.P10795737517212271124

namespace A179081

/-- `val(∑{digits}[n, #]²+1, 2)` -/
def P10795737517212271124.Spec : Prop :=
  ∀ n, (P10795737517212271124.a n : ℤ) = A179081 n

end A179081

/-! ## A179081.P8770459043333878638

`or(-2, ∑{digits}[n, #])+2`
-/

namespace A179081.P8770459043333878638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-2) ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + 2

end

end A179081.P8770459043333878638

namespace A179081

/-- `or(-2, ∑{digits}[n, #])+2` -/
def P8770459043333878638.Spec : Prop :=
  ∀ n, P8770459043333878638.a n = A179081 n

end A179081

/-! ## A179081.P128350876630048580

`A003132(n)%2`
-/

namespace A179081.P128350876630048580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003132 n) 2

end

end A179081.P128350876630048580

namespace A179081

/-- `A003132(n)%2` -/
def P128350876630048580.Spec : Prop :=
  ∀ n, P128350876630048580.a n = A179081 n

end A179081

/-! ## A179081.P5114137348758135170

`A007953(n)%2`
-/

namespace A179081.P5114137348758135170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 n) 2

end

end A179081.P5114137348758135170

namespace A179081

/-- `A007953(n)%2` -/
def P5114137348758135170.Spec : Prop :=
  ∀ n, P5114137348758135170.a n = A179081 n

end A179081

/-! ## A179081.P14574831924253285083

`A028898(n)%2`
-/

namespace A179081.P14574831924253285083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028898 n) 2

end

end A179081.P14574831924253285083

namespace A179081

/-- `A028898(n)%2` -/
def P14574831924253285083.Spec : Prop :=
  ∀ n, P14574831924253285083.a n = A179081 n

end A179081

/-! ## A179081.P10676219867981378837

`A028900(n)%2`
-/

namespace A179081.P10676219867981378837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028900 n) 2

end

end A179081.P10676219867981378837

namespace A179081

/-- `A028900(n)%2` -/
def P10676219867981378837.Spec : Prop :=
  ∀ n, P10676219867981378837.a n = A179081 n

end A179081

/-! ## A179081.P15722636551874637993

`A028902(n)%2`
-/

namespace A179081.P15722636551874637993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028902 n) 2

end

end A179081.P15722636551874637993

namespace A179081

/-- `A028902(n)%2` -/
def P15722636551874637993.Spec : Prop :=
  ∀ n, P15722636551874637993.a n = A179081 n

end A179081

/-! ## A179081.P6355746411196719775

`A028904(n)%2`
-/

namespace A179081.P6355746411196719775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028904 n) 2

end

end A179081.P6355746411196719775

namespace A179081

/-- `A028904(n)%2` -/
def P6355746411196719775.Spec : Prop :=
  ∀ n, P6355746411196719775.a n = A179081 n

end A179081

/-! ## A179081.P3084701601595306049

`A045512(n)%2`
-/

namespace A179081.P3084701601595306049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045512 n) 2

end

end A179081.P3084701601595306049

namespace A179081

/-- `A045512(n)%2` -/
def P3084701601595306049.Spec : Prop :=
  ∀ n, P3084701601595306049.a n = A179081 n

end A179081

/-! ## A179081.P11335035045758148511

`A053837(n)%2`
-/

namespace A179081.P11335035045758148511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053837 n) 2

end

end A179081.P11335035045758148511

namespace A179081

/-- `A053837(n)%2` -/
def P11335035045758148511.Spec : Prop :=
  ∀ n, P11335035045758148511.a n = A179081 n

end A179081

/-! ## A179081.P3922285305919229873

`A055012(n)%2`
-/

namespace A179081.P3922285305919229873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055012 n) 2

end

end A179081.P3922285305919229873

namespace A179081

/-- `A055012(n)%2` -/
def P3922285305919229873.Spec : Prop :=
  ∀ n, P3922285305919229873.a n = A179081 n

end A179081

/-! ## A179081.P2207145193098125191

`A055013(n)%2`
-/

namespace A179081.P2207145193098125191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055013 n) 2

end

end A179081.P2207145193098125191

namespace A179081

/-- `A055013(n)%2` -/
def P2207145193098125191.Spec : Prop :=
  ∀ n, P2207145193098125191.a n = A179081 n

end A179081

/-! ## A179081.P10074688018533698850

`A055014(n)%2`
-/

namespace A179081.P10074688018533698850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055014 n) 2

end

end A179081.P10074688018533698850

namespace A179081

/-- `A055014(n)%2` -/
def P10074688018533698850.Spec : Prop :=
  ∀ n, P10074688018533698850.a n = A179081 n

end A179081

/-! ## A179081.P15708029518687226243

`A055015(n)%2`
-/

namespace A179081.P15708029518687226243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055015 n) 2

end

end A179081.P15708029518687226243

namespace A179081

/-- `A055015(n)%2` -/
def P15708029518687226243.Spec : Prop :=
  ∀ n, P15708029518687226243.a n = A179081 n

end A179081

/-! ## A179081.P7312667877494740805

`A060110(n)%2`
-/

namespace A179081.P7312667877494740805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060110 n) 2

end

end A179081.P7312667877494740805

namespace A179081

/-- `A060110(n)%2` -/
def P7312667877494740805.Spec : Prop :=
  ∀ n, P7312667877494740805.a n = A179081 n

end A179081

/-! ## A179081.P11914832234109102560

`A065039(n)%2`
-/

namespace A179081.P11914832234109102560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065039 n) 2

end

end A179081.P11914832234109102560

namespace A179081

/-- `A065039(n)%2` -/
def P11914832234109102560.Spec : Prop :=
  ∀ n, P11914832234109102560.a n = A179081 n

end A179081

/-! ## A179081.P6501299090008698792

`A171397(n)%2`
-/

namespace A179081.P6501299090008698792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171397 n) 2

end

end A179081.P6501299090008698792

namespace A179081

/-- `A171397(n)%2` -/
def P6501299090008698792.Spec : Prop :=
  ∀ n, P6501299090008698792.a n = A179081 n

end A179081

/-!
# A179082: Even numbers having an even sum of digits in their decimal representation.

The programs for A179082, the canonical program `A179082.P5883374979102671625` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179082 has offset 1).

The definition of A179082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179082.P5563903122933141098

`A179085(n+1)-1`
-/

namespace A179082.P5563903122933141098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179085 (n + 1) - 1

end

end A179082.P5563903122933141098

namespace A179082

/-- `A179085(n+1)-1` -/
def P5563903122933141098.Spec : Prop :=
  ∀ n, P5563903122933141098.a n = A179082 (n + 1)

theorem P5563903122933141098.correct : P5563903122933141098.Spec := by
  intro n
  simp only [A179082, Nat.add_sub_cancel, A179082.P5563903122933141098.a, A179082.P5883374979102671625.f1, A179082.P5883374979102671625.a, A054683, A054683.P13281263660057652761.f1, A054683.P13281263660057652761.a, A054684, A054684.P15062249721907076264.f1, A054684.P15062249721907076264.a, A179085, A179085.P446774508924507487.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A179082

/-! ## A179082.P11568034503000826438

`A329484(A328579(n))+A179085(n+1)+1`
-/

namespace A179082.P11568034503000826438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (A328579 n).toNat + (A179085 (n + 1) + 1)

end

end A179082.P11568034503000826438

namespace A179082

/-- `A329484(A328579(n))+A179085(n+1)+1` -/
def P11568034503000826438.Spec : Prop :=
  ∀ n, P11568034503000826438.a n = A179082 (n + 1)

end A179082

/-! ## A179082.P17457249584066306775

`A316441(A158611(n+3))+A179085(n+1)`
-/

namespace A179082.P17457249584066306775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A158611 (n + 3)).toNat + A179085 (n + 1)

end

end A179082.P17457249584066306775

namespace A179082

/-- `A316441(A158611(n+3))+A179085(n+1)` -/
def P17457249584066306775.Spec : Prop :=
  ∀ n, P17457249584066306775.a n = A179082 (n + 1)

end A179082

/-! ## A179082.P2643933199412818659

`∩[2*n, A054683(n+1)]`
-/

namespace A179082.P2643933199412818659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179082.P2643933199412818659

namespace A179082

/-- `∩[2*n, A054683(n+1)]` -/
def P2643933199412818659.Spec : Prop :=
  ∀ n, (P2643933199412818659.a n : ℤ) = A179082 (n + 1)

end A179082

/-! ## A179082.P5697901591871794091

`∩[A054683(n+1), A004275(n)]`
-/

namespace A179082.P5697901591871794091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179082.P5697901591871794091

namespace A179082

/-- `∩[A054683(n+1), A004275(n)]` -/
def P5697901591871794091.Spec : Prop :=
  ∀ n, (P5697901591871794091.a n : ℤ) = A179082 (n + 1)

end A179082

/-! ## A179082.P10212325530696380616

`∩[A054683(n+1), A005843(n)]`
-/

namespace A179082.P10212325530696380616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179082.P10212325530696380616

namespace A179082

/-- `∩[A054683(n+1), A005843(n)]` -/
def P10212325530696380616.Spec : Prop :=
  ∀ n, (P10212325530696380616.a n : ℤ) = A179082 (n + 1)

end A179082

/-! ## A179082.P5883374979102671625

`record[A054683(n+1)%A054684(n+1)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A179082

/-- `record[A054683(n+1)%A054684(n+1)]` -/
def P5883374979102671625.Spec : Prop :=
  ∀ n, P5883374979102671625.a n = A179082 (n + 1)

theorem P5883374979102671625.correct : P5883374979102671625.Spec := by
  intro n
  simp only [A179082, Nat.add_sub_cancel]

end A179082

/-! ## A179082.P15326292250967346385

`∩[A054683(n+1), A004271(n)]`
-/

namespace A179082.P15326292250967346385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179082.P15326292250967346385

namespace A179082

/-- `∩[A054683(n+1), A004271(n)]` -/
def P15326292250967346385.Spec : Prop :=
  ∀ n, (P15326292250967346385.a n : ℤ) = A179082 (n + 1)

end A179082

/-! ## A179082.P2839488447974789821

`∩[A054683(n+1), A004272(n)]`
-/

namespace A179082.P2839488447974789821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179082.P2839488447974789821

namespace A179082

/-- `∩[A054683(n+1), A004272(n)]` -/
def P2839488447974789821.Spec : Prop :=
  ∀ n, (P2839488447974789821.a n : ℤ) = A179082 (n + 1)

end A179082

/-! ## A179082.P2183224706772298337

`A004442(A179085(n+1))`
-/

namespace A179082.P2183224706772298337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A179085 (n + 1)).toNat

end

end A179082.P2183224706772298337

namespace A179082

/-- `A004442(A179085(n+1))` -/
def P2183224706772298337.Spec : Prop :=
  ∀ n, P2183224706772298337.a n = A179082 (n + 1)

end A179082

/-! ## A179082.P13705107867736694643

`eq[A010673(n), A179081(n)]`
-/

namespace A179082.P13705107867736694643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179082.P13705107867736694643

namespace A179082

/-- `eq[A010673(n), A179081(n)]` -/
def P13705107867736694643.Spec : Prop :=
  ∀ n, (P13705107867736694643.a n : ℤ) = A179082 (n + 1)

end A179082

/-! ## A179082.P17863682772741414039

`eq[A010674(n), A179081(n)]`
-/

namespace A179082.P17863682772741414039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010674 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179082.P17863682772741414039

namespace A179082

/-- `eq[A010674(n), A179081(n)]` -/
def P17863682772741414039.Spec : Prop :=
  ∀ n, (P17863682772741414039.a n : ℤ) = A179082 (n + 1)

end A179082

/-! ## A179082.P19768430106634636

`eq[A010675(n), A179081(n)]`
-/

namespace A179082.P19768430106634636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010675 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179082.P19768430106634636

namespace A179082

/-- `eq[A010675(n), A179081(n)]` -/
def P19768430106634636.Spec : Prop :=
  ∀ n, (P19768430106634636.a n : ℤ) = A179082 (n + 1)

end A179082

/-! ## A179082.P15835355525883839476

`eq[A010676(n), A179081(n)]`
-/

namespace A179082.P15835355525883839476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010676 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179082.P15835355525883839476

namespace A179082

/-- `eq[A010676(n), A179081(n)]` -/
def P15835355525883839476.Spec : Prop :=
  ∀ n, (P15835355525883839476.a n : ℤ) = A179082 (n + 1)

end A179082

/-! ## A179082.P4765829493422213305

`eq[A010677(n), A179081(n)]`
-/

namespace A179082.P4765829493422213305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010677 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179082.P4765829493422213305

namespace A179082

/-- `eq[A010677(n), A179081(n)]` -/
def P4765829493422213305.Spec : Prop :=
  ∀ n, (P4765829493422213305.a n : ℤ) = A179082 (n + 1)

end A179082

/-! ## A179082.P6011356366625946855

`eq[A010678(n), A179081(n)]`
-/

namespace A179082.P6011356366625946855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010678 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179082.P6011356366625946855

namespace A179082

/-- `eq[A010678(n), A179081(n)]` -/
def P6011356366625946855.Spec : Prop :=
  ∀ n, (P6011356366625946855.a n : ℤ) = A179082 (n + 1)

end A179082

/-! ## A179082.P8615808533257331480

`eq[A010679(n), A179081(n)]`
-/

namespace A179082.P8615808533257331480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010679 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179082.P8615808533257331480

namespace A179082

/-- `eq[A010679(n), A179081(n)]` -/
def P8615808533257331480.Spec : Prop :=
  ∀ n, (P8615808533257331480.a n : ℤ) = A179082 (n + 1)

end A179082

/-! ## A179082.P3606257450536820117

`eq[A010681(n), A179081(n)]`
-/

namespace A179082.P3606257450536820117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010681 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179082.P3606257450536820117

namespace A179082

/-- `eq[A010681(n), A179081(n)]` -/
def P3606257450536820117.Spec : Prop :=
  ∀ n, (P3606257450536820117.a n : ℤ) = A179082 (n + 1)

end A179082

/-! ## A179082.P1396839726975985037

`record[A153733(n-A179081(n))]`
-/

namespace A179082.P1396839726975985037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 ((n : ℤ) - A179081 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179082.P1396839726975985037

namespace A179082

/-- `record[A153733(n-A179081(n))]` -/
def P1396839726975985037.Spec : Prop :=
  ∀ n, P1396839726975985037.a n = A179082 (n + 1)

end A179082

/-! ## A179082.P12463296841698428734

`filter[A054683(n+1), A059841(#)]`
-/

namespace A179082.P12463296841698428734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A179082.P12463296841698428734

namespace A179082

/-- `filter[A054683(n+1), A059841(#)]` -/
def P12463296841698428734.Spec : Prop :=
  ∀ n, P12463296841698428734.a n = A179082 (n + 1)

end A179082

/-!
# A179083: Even numbers having an odd sum of digits in their decimal representation.

The programs for A179083, the canonical program `A179083.P5259151219979920016` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179083 has offset 1).

The definition of A179083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179083.P2588876455888455634

`A179084(n+1)-1`
-/

namespace A179083.P2588876455888455634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179084 (n + 1) - 1

end

end A179083.P2588876455888455634

namespace A179083

/-- `A179084(n+1)-1` -/
def P2588876455888455634.Spec : Prop :=
  ∀ n, P2588876455888455634.a n = A179083 (n + 1)

theorem P2588876455888455634.correct : P2588876455888455634.Spec := by
  intro n
  simp only [A179083, Nat.add_sub_cancel, A179083.P2588876455888455634.a, A179083.P5259151219979920016.f1, A179083.P5259151219979920016.f2, A179083.P5259151219979920016.a, A054684, A054684.P15062249721907076264.f1, A054684.P15062249721907076264.a, A179084, A179084.P14438194150601923336.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A179083

/-! ## A179083.P5259151219979920016

`∩[2*n, A054684(n+1)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A179083

/-- `∩[2*n, A054684(n+1)]` -/
def P5259151219979920016.Spec : Prop :=
  ∀ n, (P5259151219979920016.a n : ℤ) = A179083 (n + 1)

theorem P5259151219979920016.correct : P5259151219979920016.Spec := by
  intro n
  simp only [A179083, Nat.add_sub_cancel]

end A179083

/-! ## A179083.P3563800594951000677

`∩[A054684(n+1), A005843(n)]`
-/

namespace A179083.P3563800594951000677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179083.P3563800594951000677

namespace A179083

/-- `∩[A054684(n+1), A005843(n)]` -/
def P3563800594951000677.Spec : Prop :=
  ∀ n, (P3563800594951000677.a n : ℤ) = A179083 (n + 1)

end A179083

/-! ## A179083.P13062200633642106574

`∩[A054684(n+1), A020739(n)]`
-/

namespace A179083.P13062200633642106574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179083.P13062200633642106574

namespace A179083

/-- `∩[A054684(n+1), A020739(n)]` -/
def P13062200633642106574.Spec : Prop :=
  ∀ n, (P13062200633642106574.a n : ℤ) = A179083 (n + 1)

end A179083

/-! ## A179083.P3800469983382406354

`∩[A054684(n+1), A020744(n)]`
-/

namespace A179083.P3800469983382406354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179083.P3800469983382406354

namespace A179083

/-- `∩[A054684(n+1), A020744(n)]` -/
def P3800469983382406354.Spec : Prop :=
  ∀ n, (P3800469983382406354.a n : ℤ) = A179083 (n + 1)

end A179083

/-! ## A179083.P11653368506312927948

`∩[A054684(n+1), A163300(n+1)]`
-/

namespace A179083.P11653368506312927948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179083.P11653368506312927948

namespace A179083

/-- `∩[A054684(n+1), A163300(n+1)]` -/
def P11653368506312927948.Spec : Prop :=
  ∀ n, (P11653368506312927948.a n : ℤ) = A179083 (n + 1)

end A179083

/-! ## A179083.P392339534596841087

`filter[2*n, A179081(#)]`
-/

namespace A179083.P392339534596841087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179081 (f1 j) = 1) n)

end

end A179083.P392339534596841087

namespace A179083

/-- `filter[2*n, A179081(#)]` -/
def P392339534596841087.Spec : Prop :=
  ∀ n, (P392339534596841087.a n : ℤ) = A179083 (n + 1)

end A179083

/-! ## A179083.P1834094910744381883

`eq[A019303(n), A179081(n)]`
-/

namespace A179083.P1834094910744381883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019303 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179083.P1834094910744381883

namespace A179083

/-- `eq[A019303(n), A179081(n)]` -/
def P1834094910744381883.Spec : Prop :=
  ∀ n, (P1834094910744381883.a n : ℤ) = A179083 (n + 1)

end A179083

/-! ## A179083.P9159615896277961989

`eq[A033999(n), A179081(n)]`
-/

namespace A179083.P9159615896277961989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179083.P9159615896277961989

namespace A179083

/-- `eq[A033999(n), A179081(n)]` -/
def P9159615896277961989.Spec : Prop :=
  ∀ n, (P9159615896277961989.a n : ℤ) = A179083 (n + 1)

end A179083

/-! ## A179083.P16885327390402598707

`filter[A054684(n+2), A135528(#)]`
-/

namespace A179083.P16885327390402598707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A179083.P16885327390402598707

namespace A179083

/-- `filter[A054684(n+2), A135528(#)]` -/
def P16885327390402598707.Spec : Prop :=
  ∀ n, P16885327390402598707.a n = A179083 (n + 1)

end A179083

/-! ## A179083.P1685173961007489175

`eq[A010123(n+1), A179081(n)]`
-/

namespace A179083.P1685173961007489175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179083.P1685173961007489175

namespace A179083

/-- `eq[A010123(n+1), A179081(n)]` -/
def P1685173961007489175.Spec : Prop :=
  ∀ n, (P1685173961007489175.a n : ℤ) = A179083 (n + 1)

end A179083

/-! ## A179083.P532704672779880823

`eq[A010127(n+1), A179081(n)]`
-/

namespace A179083.P532704672779880823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179083.P532704672779880823

namespace A179083

/-- `eq[A010127(n+1), A179081(n)]` -/
def P532704672779880823.Spec : Prop :=
  ∀ n, (P532704672779880823.a n : ℤ) = A179083 (n + 1)

end A179083

/-! ## A179083.P15782358738638867968

`eq[A010131(n+1), A179081(n)]`
-/

namespace A179083.P15782358738638867968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179083.P15782358738638867968

namespace A179083

/-- `eq[A010131(n+1), A179081(n)]` -/
def P15782358738638867968.Spec : Prop :=
  ∀ n, (P15782358738638867968.a n : ℤ) = A179083 (n + 1)

end A179083

/-! ## A179083.P3544411836830816571

`eq[A010132(n+1), A179081(n)]`
-/

namespace A179083.P3544411836830816571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179083.P3544411836830816571

namespace A179083

/-- `eq[A010132(n+1), A179081(n)]` -/
def P3544411836830816571.Spec : Prop :=
  ∀ n, (P3544411836830816571.a n : ℤ) = A179083 (n + 1)

end A179083

/-! ## A179083.P6623302158849392153

`eq[A010137(n+1), A179081(n)]`
-/

namespace A179083.P6623302158849392153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179083.P6623302158849392153

namespace A179083

/-- `eq[A010137(n+1), A179081(n)]` -/
def P6623302158849392153.Spec : Prop :=
  ∀ n, (P6623302158849392153.a n : ℤ) = A179083 (n + 1)

end A179083

/-! ## A179083.P14662795753025006447

`eq[A010146(n+1), A179081(n)]`
-/

namespace A179083.P14662795753025006447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179083.P14662795753025006447

namespace A179083

/-- `eq[A010146(n+1), A179081(n)]` -/
def P14662795753025006447.Spec : Prop :=
  ∀ n, (P14662795753025006447.a n : ℤ) = A179083 (n + 1)

end A179083

/-! ## A179083.P13240223835191971409

`eq[A010156(n+1), A179081(n)]`
-/

namespace A179083.P13240223835191971409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179083.P13240223835191971409

namespace A179083

/-- `eq[A010156(n+1), A179081(n)]` -/
def P13240223835191971409.Spec : Prop :=
  ∀ n, (P13240223835191971409.a n : ℤ) = A179083 (n + 1)

end A179083

/-! ## A179083.P2862803562437614461

`eq[A010157(n+1), A179081(n)]`
-/

namespace A179083.P2862803562437614461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179083.P2862803562437614461

namespace A179083

/-- `eq[A010157(n+1), A179081(n)]` -/
def P2862803562437614461.Spec : Prop :=
  ∀ n, (P2862803562437614461.a n : ℤ) = A179083 (n + 1)

end A179083

/-!
# A179084: Odd numbers having an even sum of digits in their decimal representation.

The programs for A179084, the canonical program `A179084.P14438194150601923336` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179084 has offset 1).

The definition of A179084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179084.P14438194150601923336

`A179083(n+1)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A179084

/-- `A179083(n+1)+1` -/
def P14438194150601923336.Spec : Prop :=
  ∀ n, P14438194150601923336.a n = A179084 (n + 1)

theorem P14438194150601923336.correct : P14438194150601923336.Spec := by
  intro n
  simp only [A179084, Nat.add_sub_cancel]

end A179084

/-! ## A179084.P721626746932942151

`∩[2*n+1, A054683(n+1)]`
-/

namespace A179084.P721626746932942151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179084.P721626746932942151

namespace A179084

/-- `∩[2*n+1, A054683(n+1)]` -/
def P721626746932942151.Spec : Prop :=
  ∀ n, (P721626746932942151.a n : ℤ) = A179084 (n + 1)

end A179084

/-! ## A179084.P11048835331762744857

`∩[A054683(n+1), A020742(n)]`
-/

namespace A179084.P11048835331762744857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179084.P11048835331762744857

namespace A179084

/-- `∩[A054683(n+1), A020742(n)]` -/
def P11048835331762744857.Spec : Prop :=
  ∀ n, (P11048835331762744857.a n : ℤ) = A179084 (n + 1)

end A179084

/-! ## A179084.P10851318907909930527

`∩[A054683(n+1), A060747(n)]`
-/

namespace A179084.P10851318907909930527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179084.P10851318907909930527

namespace A179084

/-- `∩[A054683(n+1), A060747(n)]` -/
def P10851318907909930527.Spec : Prop :=
  ∀ n, (P10851318907909930527.a n : ℤ) = A179084 (n + 1)

end A179084

/-! ## A179084.P14865834536483585783

`∩[A054683(n+1), A005843(n)+1]`
-/

namespace A179084.P14865834536483585783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179084.P14865834536483585783

namespace A179084

/-- `∩[A054683(n+1), A005843(n)+1]` -/
def P14865834536483585783.Spec : Prop :=
  ∀ n, (P14865834536483585783.a n : ℤ) = A179084 (n + 1)

end A179084

/-! ## A179084.P14111414168071332797

`∩[A005843(n), A054684(n+1)]+1`
-/

namespace A179084.P14111414168071332797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A179084.P14111414168071332797

namespace A179084

/-- `∩[A005843(n), A054684(n+1)]+1` -/
def P14111414168071332797.Spec : Prop :=
  ∀ n, (P14111414168071332797.a n : ℤ) = A179084 (n + 1)

end A179084

/-! ## A179084.P167800021617775753

`∩[A054683(n+1), A144396(n+1)]`
-/

namespace A179084.P167800021617775753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179084.P167800021617775753

namespace A179084

/-- `∩[A054683(n+1), A144396(n+1)]` -/
def P167800021617775753.Spec : Prop :=
  ∀ n, (P167800021617775753.a n : ℤ) = A179084 (n + 1)

end A179084

/-! ## A179084.P584142537959679288

`A004442(A179083(n+1))`
-/

namespace A179084.P584142537959679288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A179083 (n + 1)).toNat

end

end A179084.P584142537959679288

namespace A179084

/-- `A004442(A179083(n+1))` -/
def P584142537959679288.Spec : Prop :=
  ∀ n, P584142537959679288.a n = A179084 (n + 1)

end A179084

/-! ## A179084.P14408890093394581459

`eq[A019303(n), A179081(n)]+1`
-/

namespace A179084.P14408890093394581459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019303 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A179084.P14408890093394581459

namespace A179084

/-- `eq[A019303(n), A179081(n)]+1` -/
def P14408890093394581459.Spec : Prop :=
  ∀ n, (P14408890093394581459.a n : ℤ) = A179084 (n + 1)

end A179084

/-! ## A179084.P846219850366846818

`eq[A027656(n), A179081(n)]`
-/

namespace A179084.P846219850366846818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179084.P846219850366846818

namespace A179084

/-- `eq[A027656(n), A179081(n)]` -/
def P846219850366846818.Spec : Prop :=
  ∀ n, (P846219850366846818.a n : ℤ) = A179084 (n + 1)

end A179084

/-! ## A179084.P10386674914873034274

`eq[A035363(n), A179081(n)]`
-/

namespace A179084.P10386674914873034274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179084.P10386674914873034274

namespace A179084

/-- `eq[A035363(n), A179081(n)]` -/
def P10386674914873034274.Spec : Prop :=
  ∀ n, (P10386674914873034274.a n : ℤ) = A179084 (n + 1)

end A179084

/-! ## A179084.P4730314402781641920

`eq[A035385(n), A179081(n)]`
-/

namespace A179084.P4730314402781641920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035385 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179084.P4730314402781641920

namespace A179084

/-- `eq[A035385(n), A179081(n)]` -/
def P4730314402781641920.Spec : Prop :=
  ∀ n, (P4730314402781641920.a n : ℤ) = A179084 (n + 1)

end A179084

/-! ## A179084.P9869118183337172921

`eq[A035457(n), A179081(n)]`
-/

namespace A179084.P9869118183337172921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179084.P9869118183337172921

namespace A179084

/-- `eq[A035457(n), A179081(n)]` -/
def P9869118183337172921.Spec : Prop :=
  ∀ n, (P9869118183337172921.a n : ℤ) = A179084 (n + 1)

end A179084

/-! ## A179084.P8640093259373513421

`filter[A054683(n+1), A000035(#)]`
-/

namespace A179084.P8640093259373513421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A179084.P8640093259373513421

namespace A179084

/-- `filter[A054683(n+1), A000035(#)]` -/
def P8640093259373513421.Spec : Prop :=
  ∀ n, P8640093259373513421.a n = A179084 (n + 1)

end A179084

/-! ## A179084.P17566739301908507714

`filter[A054683(n+2), A266070(#)]`
-/

namespace A179084.P17566739301908507714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A179084.P17566739301908507714

namespace A179084

/-- `filter[A054683(n+2), A266070(#)]` -/
def P17566739301908507714.Spec : Prop :=
  ∀ n, P17566739301908507714.a n = A179084 (n + 1)

end A179084

/-! ## A179084.P17487129015433582419

`filter[A054683(n+3), A266611(#)]`
-/

namespace A179084.P17487129015433582419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A179084.P17487129015433582419

namespace A179084

/-- `filter[A054683(n+3), A266611(#)]` -/
def P17487129015433582419.Spec : Prop :=
  ∀ n, P17487129015433582419.a n = A179084 (n + 1)

end A179084

/-! ## A179084.P4657717768657991984

`filter[A054683(n+3), A266719(#)]`
-/

namespace A179084.P4657717768657991984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A179084.P4657717768657991984

namespace A179084

/-- `filter[A054683(n+3), A266719(#)]` -/
def P4657717768657991984.Spec : Prop :=
  ∀ n, P4657717768657991984.a n = A179084 (n + 1)

end A179084

/-! ## A179084.P17984749210863846222

`filter[A054683(n+3), A296066(#)]`
-/

namespace A179084.P17984749210863846222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A179084.P17984749210863846222

namespace A179084

/-- `filter[A054683(n+3), A296066(#)]` -/
def P17984749210863846222.Spec : Prop :=
  ∀ n, P17984749210863846222.a n = A179084 (n + 1)

end A179084

/-!
# A179085: Odd numbers having an odd sum of digits in their decimal representation.

The programs for A179085, the canonical program `A179085.P446774508924507487` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179085 has offset 1).

The definition of A179085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179085.P446774508924507487

`A179082(n+1)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A179085

/-- `A179082(n+1)+1` -/
def P446774508924507487.Spec : Prop :=
  ∀ n, P446774508924507487.a n = A179085 (n + 1)

theorem P446774508924507487.correct : P446774508924507487.Spec := by
  intro n
  simp only [A179085, Nat.add_sub_cancel]

end A179085

/-! ## A179085.P10181493882157099586

`record[C(A054684(n+1), 2*n)]`
-/

namespace A179085.P10181493882157099586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A054684 (n + 1)).toNat (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179085.P10181493882157099586

namespace A179085

/-- `record[C(A054684(n+1), 2*n)]` -/
def P10181493882157099586.Spec : Prop :=
  ∀ n, (P10181493882157099586.a n : ℤ) = A179085 (n + 1)

end A179085

/-! ## A179085.P12725332143261200465

`record[A000265(A054684(n+1))]`
-/

namespace A179085.P12725332143261200465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A054684 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179085.P12725332143261200465

namespace A179085

/-- `record[A000265(A054684(n+1))]` -/
def P12725332143261200465.Spec : Prop :=
  ∀ n, P12725332143261200465.a n = A179085 (n + 1)

end A179085

/-! ## A179085.P7769577914774128993

`∩[A054684(n+1), A004273(n)]`
-/

namespace A179085.P7769577914774128993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179085.P7769577914774128993

namespace A179085

/-- `∩[A054684(n+1), A004273(n)]` -/
def P7769577914774128993.Spec : Prop :=
  ∀ n, (P7769577914774128993.a n : ℤ) = A179085 (n + 1)

end A179085

/-! ## A179085.P10660367199127520534

`record[gcd(A016754(n), A054684(n+1))]`
-/

namespace A179085.P10660367199127520534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016754 n) (A054684 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179085.P10660367199127520534

namespace A179085

/-- `record[gcd(A016754(n), A054684(n+1))]` -/
def P10660367199127520534.Spec : Prop :=
  ∀ n, (P10660367199127520534.a n : ℤ) = A179085 (n + 1)

end A179085

/-! ## A179085.P8271544614977218194

`∩[A054684(n+1), A060747(n)]`
-/

namespace A179085.P8271544614977218194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179085.P8271544614977218194

namespace A179085

/-- `∩[A054684(n+1), A060747(n)]` -/
def P8271544614977218194.Spec : Prop :=
  ∀ n, (P8271544614977218194.a n : ℤ) = A179085 (n + 1)

end A179085

/-! ## A179085.P8892529330164482027

`∩[A004280(n+1), A054684(n+1)]`
-/

namespace A179085.P8892529330164482027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179085.P8892529330164482027

namespace A179085

/-- `∩[A004280(n+1), A054684(n+1)]` -/
def P8892529330164482027.Spec : Prop :=
  ∀ n, (P8892529330164482027.a n : ℤ) = A179085 (n + 1)

end A179085

/-! ## A179085.P1056655688152336146

`∩[A054684(n+1), A004274(n)]`
-/

namespace A179085.P1056655688152336146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179085.P1056655688152336146

namespace A179085

/-- `∩[A054684(n+1), A004274(n)]` -/
def P1056655688152336146.Spec : Prop :=
  ∀ n, (P1056655688152336146.a n : ℤ) = A179085 (n + 1)

end A179085

/-! ## A179085.P3100092414055709956

`∩[A054684(n+1), A004281(n)]`
-/

namespace A179085.P3100092414055709956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179085.P3100092414055709956

namespace A179085

/-- `∩[A054684(n+1), A004281(n)]` -/
def P3100092414055709956.Spec : Prop :=
  ∀ n, (P3100092414055709956.a n : ℤ) = A179085 (n + 1)

end A179085

/-! ## A179085.P15316549611180093218

`∩[A054684(n+1), A004276(n)]`
-/

namespace A179085.P15316549611180093218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179085.P15316549611180093218

namespace A179085

/-- `∩[A054684(n+1), A004276(n)]` -/
def P15316549611180093218.Spec : Prop :=
  ∀ n, (P15316549611180093218.a n : ℤ) = A179085 (n + 1)

end A179085

/-! ## A179085.P12352113273873652414

`filter[2*n+1, A179081(#)]`
-/

namespace A179085.P12352113273873652414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179081 (f1 j) = 1) n)

end

end A179085.P12352113273873652414

namespace A179085

/-- `filter[2*n+1, A179081(#)]` -/
def P12352113273873652414.Spec : Prop :=
  ∀ n, (P12352113273873652414.a n : ℤ) = A179085 (n + 1)

end A179085

/-! ## A179085.P8874447714005906659

`A004442(A179082(n+1))`
-/

namespace A179085.P8874447714005906659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A179082 (n + 1)).toNat

end

end A179085.P8874447714005906659

namespace A179085

/-- `A004442(A179082(n+1))` -/
def P8874447714005906659.Spec : Prop :=
  ∀ n, P8874447714005906659.a n = A179085 (n + 1)

end A179085

/-! ## A179085.P15263903674528449523

`eq[A040008(n), A100961(n)]`
-/

namespace A179085.P15263903674528449523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179085.P15263903674528449523

namespace A179085

/-- `eq[A040008(n), A100961(n)]` -/
def P15263903674528449523.Spec : Prop :=
  ∀ n, (P15263903674528449523.a n : ℤ) = A179085 (n + 1)

end A179085

/-! ## A179085.P1909286115019547051

`eq[A040015(n), A100961(n)]`
-/

namespace A179085.P1909286115019547051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040015 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179085.P1909286115019547051

namespace A179085

/-- `eq[A040015(n), A100961(n)]` -/
def P1909286115019547051.Spec : Prop :=
  ∀ n, (P1909286115019547051.a n : ℤ) = A179085 (n + 1)

end A179085

/-! ## A179085.P8416420914317058526

`eq[A040024(n), A100961(n)]`
-/

namespace A179085.P8416420914317058526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040024 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179085.P8416420914317058526

namespace A179085

/-- `eq[A040024(n), A100961(n)]` -/
def P8416420914317058526.Spec : Prop :=
  ∀ n, (P8416420914317058526.a n : ℤ) = A179085 (n + 1)

end A179085

/-! ## A179085.P13346707031270719003

`eq[A040035(n), A100961(n)]`
-/

namespace A179085.P13346707031270719003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179085.P13346707031270719003

namespace A179085

/-- `eq[A040035(n), A100961(n)]` -/
def P13346707031270719003.Spec : Prop :=
  ∀ n, (P13346707031270719003.a n : ℤ) = A179085 (n + 1)

end A179085

/-! ## A179085.P12140101070280870500

`eq[A040048(n), A100961(n)]`
-/

namespace A179085.P12140101070280870500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040048 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179085.P12140101070280870500

namespace A179085

/-- `eq[A040048(n), A100961(n)]` -/
def P12140101070280870500.Spec : Prop :=
  ∀ n, (P12140101070280870500.a n : ℤ) = A179085 (n + 1)

end A179085

/-! ## A179085.P17552107062095368814

`eq[A040063(n), A100961(n)]`
-/

namespace A179085.P17552107062095368814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040063 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179085.P17552107062095368814

namespace A179085

/-- `eq[A040063(n), A100961(n)]` -/
def P17552107062095368814.Spec : Prop :=
  ∀ n, (P17552107062095368814.a n : ℤ) = A179085 (n + 1)

end A179085

/-! ## A179085.P1683870934775162198

`eq[A040080(n), A100961(n)]`
-/

namespace A179085.P1683870934775162198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040080 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179085.P1683870934775162198

namespace A179085

/-- `eq[A040080(n), A100961(n)]` -/
def P1683870934775162198.Spec : Prop :=
  ∀ n, (P1683870934775162198.a n : ℤ) = A179085 (n + 1)

end A179085

/-!
# A179086: Triangle T(n,k) = |Re|+|Im| where Re+i*Im is the complex coefficient of [x^k] of the series (1-x)^(n+1) * Sum_{k>=0} ((1+i)*k+i)^n *x^k and i the imaginary unit, row n and column k.

The programs for A179086, there is no canonical definition to state claims against.
-/

/-! ## A179086.P6608858336539555832

`A339089(A060546(n))+A285357(n+1)`
-/

namespace A179086.P6608858336539555832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339089 (A060546 n).toNat + A285357 (n + 1)

end

end A179086.P6608858336539555832

/-! ## A179086.P13989877721932654693

`A004737(A022176(n))`
-/

namespace A179086.P13989877721932654693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (A022176 n).toNat

end

end A179086.P13989877721932654693

/-! ## A179086.P14338821832056656931

`A005838(A157221(n))`
-/

namespace A179086.P14338821832056656931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005838 (A157221 n).toNat

end

end A179086.P14338821832056656931

/-! ## A179086.P14058873855199877398

`A078129(A099759(n))`
-/

namespace A179086.P14058873855199877398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078129 (A099759 n).toNat

end

end A179086.P14058873855199877398

/-! ## A179086.P12117765147207118031

`A007305(A173585(n))`
-/

namespace A179086.P12117765147207118031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A173585 n).toNat

end

end A179086.P12117765147207118031

/-!
# A179088: Positive integers of the form (2*m^2+1)/11.

The programs for A179088, the canonical program `A179088.P5233505157108718822` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179088 has offset 1).

The definition of A179088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179088.P6783487336379763225

`(22*(n+1)*n-5*(2*(n+1)-1)*(-1)^(n+1)+7)/4`
-/

namespace A179088.P6783487336379763225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((22 * (n + 1) * n : ℤ) - 5 * ((2 * (n + 1) : ℤ) - 1) * (-1) ^ (n + 1) + 7 : ℚ) / 4

end

end A179088.P6783487336379763225

namespace A179088

/-- `(22*(n+1)*n-5*(2*(n+1)-1)*(-1)^(n+1)+7)/4` -/
def P6783487336379763225.Spec : Prop :=
  ∀ n, P6783487336379763225.a n = (A179088 (n + 1) : ℚ)

theorem P6783487336379763225.correct : P6783487336379763225.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A179088, Nat.add_sub_cancel, A179088.P6783487336379763225.a, A179088.P5233505157108718822.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A179088, Nat.add_sub_cancel, A179088.P6783487336379763225.a, A179088.P5233505157108718822.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A179088

/-! ## A179088.P5233505157108718822

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=3, a(1)=9, a(2)=41, a(3)=59, a(4)=123`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179088

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P5233505157108718822.Spec : Prop :=
  ∀ n, P5233505157108718822.a n = A179088 (n + 1)

theorem P5233505157108718822.correct : P5233505157108718822.Spec := by
  intro n
  simp only [A179088, Nat.add_sub_cancel]

end A179088

/-! ## A179088.P5252743785623584135

`2*A181433(n+1)+1`
-/

namespace A179088.P5252743785623584135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181433 (n + 1) + 1

end

end A179088.P5252743785623584135

namespace A179088

/-- `2*A181433(n+1)+1` -/
def P5252743785623584135.Spec : Prop :=
  ∀ n, P5252743785623584135.a n = A179088 (n + 1)

end A179088

/-! ## A179088.P6366457841455553411

`A274682(n+1)+A036499(n+1)`
-/

namespace A179088.P6366457841455553411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274682 (n + 1) + A036499 (n + 1)

end

end A179088.P6366457841455553411

namespace A179088

/-- `A274682(n+1)+A036499(n+1)` -/
def P6366457841455553411.Spec : Prop :=
  ∀ n, P6366457841455553411.a n = A179088 (n + 1)

end A179088

/-! ## A179088.P4772277487398428935

`A372718(n+1)+A062717(n+1)`
-/

namespace A179088.P4772277487398428935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372718 (n + 1) + A062717 (n + 1)

end

end A179088.P4772277487398428935

namespace A179088

/-- `A372718(n+1)+A062717(n+1)` -/
def P4772277487398428935.Spec : Prop :=
  ∀ n, P4772277487398428935.a n = A179088 (n + 1)

end A179088

/-! ## A179088.P9261003299003018324

`A186424(n)+2*A014493(n+1)`
-/

namespace A179088.P9261003299003018324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186424 n + 2 * A014493 (n + 1)

end

end A179088.P9261003299003018324

namespace A179088

/-- `A186424(n)+2*A014493(n+1)` -/
def P9261003299003018324.Spec : Prop :=
  ∀ n, P9261003299003018324.a n = A179088 (n + 1)

end A179088

/-! ## A179088.P9971529141890410958

`2*(A195162(n)+A186424(n))+1`
-/

namespace A179088.P9971529141890410958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A195162 n + A186424 n) + 1

end

end A179088.P9971529141890410958

namespace A179088

/-- `2*(A195162(n)+A186424(n))+1` -/
def P9971529141890410958.Spec : Prop :=
  ∀ n, P9971529141890410958.a n = A179088 (n + 1)

end A179088

/-! ## A179088.P3841424462228906771

`A220082(n+1)+2*A036499(n+1)`
-/

namespace A179088.P3841424462228906771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220082 (n + 1) + 2 * A036499 (n + 1)

end

end A179088.P3841424462228906771

namespace A179088

/-- `A220082(n+1)+2*A036499(n+1)` -/
def P3841424462228906771.Spec : Prop :=
  ∀ n, P3841424462228906771.a n = A179088 (n + 1)

end A179088

/-! ## A179088.P6144715078627582097

`2*(A119617(n+1)-A074378(n))+1`
-/

namespace A179088.P6144715078627582097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A119617 (n + 1) - A074378 n) + 1

end

end A179088.P6144715078627582097

namespace A179088

/-- `2*(A119617(n+1)-A074378(n))+1` -/
def P6144715078627582097.Spec : Prop :=
  ∀ n, P6144715078627582097.a n = A179088 (n + 1)

end A179088

/-! ## A179088.P18227911469734882924

`A193868(n+1)+A274682(n+1)-A000124(n)`
-/

namespace A179088.P18227911469734882924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193868 (n + 1) + (A274682 (n + 1) - A000124 n)

end

end A179088.P18227911469734882924

namespace A179088

/-- `A193868(n+1)+A274682(n+1)-A000124(n)` -/
def P18227911469734882924.Spec : Prop :=
  ∀ n, P18227911469734882924.a n = A179088 (n + 1)

end A179088

/-!
# A179089: a(n) = (1/n^2) * Sum_{k=0..n-1} (2k+1)*T_k^2(-3)^(n-1-k), where T_0, T_1, ... are central trinomial coefficients given by A002426.

The programs for A179089, the canonical program `A179089.P17028568044351276168` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179089 has offset 1).

The definition of A179089 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179089.P17028568044351276168

`(A002426(n+1)+A002426(n))*(3*A002426(n)-A002426(n+1))/4`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A179089

/-- `(A002426(n+1)+A002426(n))*(3*A002426(n)-A002426(n+1))/4` -/
def P17028568044351276168.Spec : Prop :=
  ∀ n, P17028568044351276168.a n = (A179089 (n + 1) : ℚ)

end A179089

/-! ## A179089.P16823222195238125148

`A005043(n)*A038622(∑[n])`
-/

namespace A179089.P16823222195238125148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n * A038622 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A179089.P16823222195238125148

namespace A179089

/-- `A005043(n)*A038622(∑[n])` -/
def P16823222195238125148.Spec : Prop :=
  ∀ n, P16823222195238125148.a n = A179089 (n + 1)

end A179089

/-! ## A179089.P566784557411904609

`record[A038622(n)]*A005043(n)`
-/

namespace A179089.P566784557411904609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A005043 n

end

end A179089.P566784557411904609

namespace A179089

/-- `record[A038622(n)]*A005043(n)` -/
def P566784557411904609.Spec : Prop :=
  ∀ n, P566784557411904609.a n = A179089 (n + 1)

end A179089

/-! ## A179089.P11177399015154050840

`A005043(n)*A005773(n+1)`
-/

namespace A179089.P11177399015154050840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n * A005773 (n + 1)

end

end A179089.P11177399015154050840

namespace A179089

/-- `A005043(n)*A005773(n+1)` -/
def P11177399015154050840.Spec : Prop :=
  ∀ n, P11177399015154050840.a n = A179089 (n + 1)

end A179089

/-! ## A179089.P9036781209053397626

`A005043(n)*A307789(n+2)`
-/

namespace A179089.P9036781209053397626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n * A307789 (n + 2)

end

end A179089.P9036781209053397626

namespace A179089

/-- `A005043(n)*A307789(n+2)` -/
def P9036781209053397626.Spec : Prop :=
  ∀ n, P9036781209053397626.a n = A179089 (n + 1)

end A179089

/-! ## A179089.P17712507468901076424

`∑[A025566(n+1)]*A005043(n)`
-/

namespace A179089.P17712507468901076424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A005043 n

end

end A179089.P17712507468901076424

namespace A179089

/-- `∑[A025566(n+1)]*A005043(n)` -/
def P17712507468901076424.Spec : Prop :=
  ∀ n, P17712507468901076424.a n = A179089 (n + 1)

end A179089

/-! ## A179089.P2576625500195634646

`abs(A005773(n+1)*A099323(n+1))`
-/

namespace A179089.P2576625500195634646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005773 (n + 1) * A099323 (n + 1)|

end

end A179089.P2576625500195634646

namespace A179089

/-- `abs(A005773(n+1)*A099323(n+1))` -/
def P2576625500195634646.Spec : Prop :=
  ∀ n, P2576625500195634646.a n = A179089 (n + 1)

end A179089

/-! ## A179089.P15478690696236395766

`(A005774(n)+A001006(n))*A005043(n)`
-/

namespace A179089.P15478690696236395766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005774 n + A001006 n) * A005043 n

end

end A179089.P15478690696236395766

namespace A179089

/-- `(A005774(n)+A001006(n))*A005043(n)` -/
def P15478690696236395766.Spec : Prop :=
  ∀ n, P15478690696236395766.a n = A179089 (n + 1)

end A179089

/-! ## A179089.P9064259111108908310

`(A005043(n)+Δ[A002426(n)])*A005043(n)`
-/

namespace A179089.P9064259111108908310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005043 n + (f1 (n + 1) - f1 n)) * A005043 n

end

end A179089.P9064259111108908310

namespace A179089

/-- `(A005043(n)+Δ[A002426(n)])*A005043(n)` -/
def P9064259111108908310.Spec : Prop :=
  ∀ n, P9064259111108908310.a n = A179089 (n + 1)

end A179089

/-! ## A179089.P12974358629075727482

`(A025178(n+1)+A005043(n))*A005043(n)`
-/

namespace A179089.P12974358629075727482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025178 (n + 1) + A005043 n) * A005043 n

end

end A179089.P12974358629075727482

namespace A179089

/-- `(A025178(n+1)+A005043(n))*A005043(n)` -/
def P12974358629075727482.Spec : Prop :=
  ∀ n, P12974358629075727482.a n = A179089 (n + 1)

end A179089

/-! ## A179089.P1585504226679905117

`(A257520(n+1)+A097861(n))*A005043(n)`
-/

namespace A179089.P1585504226679905117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A257520 (n + 1) + A097861 n) * A005043 n

end

end A179089.P1585504226679905117

namespace A179089

/-- `(A257520(n+1)+A097861(n))*A005043(n)` -/
def P1585504226679905117.Spec : Prop :=
  ∀ n, P1585504226679905117.a n = A179089 (n + 1)

end A179089

/-! ## A179089.P9665314191153722034

`(A246437(n+1)+A246437(n))*A005043(n)`
-/

namespace A179089.P9665314191153722034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A246437 (n + 1) + A246437 n) * A005043 n

end

end A179089.P9665314191153722034

namespace A179089

/-- `(A246437(n+1)+A246437(n))*A005043(n)` -/
def P9665314191153722034.Spec : Prop :=
  ∀ n, P9665314191153722034.a n = A179089 (n + 1)

end A179089

/-! ## A179089.P10258089496203100041

`(A005213(2*n)-A005213(2*n+1))*A005773(n+1)`
-/

namespace A179089.P10258089496203100041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005213 (2 * n) - A005213 (2 * n + 1)) * A005773 (n + 1)

end

end A179089.P10258089496203100041

namespace A179089

/-- `(A005213(2*n)-A005213(2*n+1))*A005773(n+1)` -/
def P10258089496203100041.Spec : Prop :=
  ∀ n, P10258089496203100041.a n = A179089 (n + 1)

end A179089

/-! ## A179089.P17820111401730331251

`A168597(n)-Δ[A097861(n)]²`
-/

namespace A179089.P17820111401730331251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168597 n - (f1 (n + 1) - f1 n) ^ 2

end

end A179089.P17820111401730331251

namespace A179089

/-- `A168597(n)-Δ[A097861(n)]²` -/
def P17820111401730331251.Spec : Prop :=
  ∀ n, P17820111401730331251.a n = A179089 (n + 1)

end A179089

/-! ## A179089.P2445375060825226791

`A002426(n)²-Δ[A097861(n)]²`
-/

namespace A179089.P2445375060825226791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n ^ 2 - (f1 (n + 1) - f1 n) ^ 2

end

end A179089.P2445375060825226791

namespace A179089

/-- `A002426(n)²-Δ[A097861(n)]²` -/
def P2445375060825226791.Spec : Prop :=
  ∀ n, P2445375060825226791.a n = A179089 (n + 1)

end A179089

/-! ## A179089.P16434573869381725983

`A005213(2*n)²-A005213(2*n+1)²`
-/

namespace A179089.P16434573869381725983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (2 * n) ^ 2 - A005213 (2 * n + 1) ^ 2

end

end A179089.P16434573869381725983

namespace A179089

/-- `A005213(2*n)²-A005213(2*n+1)²` -/
def P16434573869381725983.Spec : Prop :=
  ∀ n, P16434573869381725983.a n = A179089 (n + 1)

end A179089

/-!
# A179090: 

The programs for A179090, there is no canonical definition to state claims against.
-/

/-! ## A179090.P2615197677916672509

`2*C(abs(a(n-1)), 2)+1` with `a(0)=14`
-/

namespace A179090.P2615197677916672509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [14] fun n a =>
  2 * Nat.choose (a (n - 1)) 2 + 1

end

end A179090.P2615197677916672509

/-! ## A179090.P4738318930426047700

`a(n-1)+(1-a(n-1))²` with `a(0)=14`
-/

namespace A179090.P4738318930426047700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  a (n - 1) + (1 - a (n - 1)) ^ 2

end

end A179090.P4738318930426047700

/-! ## A179090.P9762616101801970932

`(a(n-1)-1)*a(n-1)+1` with `a(0)=14`
-/

namespace A179090.P9762616101801970932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  (a (n - 1) - 1) * a (n - 1) + 1

end

end A179090.P9762616101801970932

/-!
# A179091: 

The programs for A179091, there is no canonical definition to state claims against.
-/

/-! ## A179091.P9717574109260317302

`2*C(a(n-1), 2)+1` with `a(0)=15`
-/

namespace A179091.P9717574109260317302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [15] fun n a =>
  2 * Nat.choose (a (n - 1)) 2 + 1

end

end A179091.P9717574109260317302

/-! ## A179091.P4235415971379631210

`ceil((1/2-a(n-1))²)` with `a(0)=15`
-/

namespace A179091.P4235415971379631210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15] fun n a =>
  ⌈((1 : ℚ) / 2 - (a (n - 1) : ℚ)) ^ 2⌉

end

end A179091.P4235415971379631210

/-! ## A179091.P8702956253208014320

`a(n-1)+(1-a(n-1))²` with `a(0)=15`
-/

namespace A179091.P8702956253208014320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15] fun n a =>
  a (n - 1) + (1 - a (n - 1)) ^ 2

end

end A179091.P8702956253208014320

/-!
# A179092: 

The programs for A179092, there is no canonical definition to state claims against.
-/

/-! ## A179092.P5518977655766929778

`2*C(a(n-1), 2)+1` with `a(0)=16`
-/

namespace A179092.P5518977655766929778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [16] fun n a =>
  2 * Nat.choose (a (n - 1)) 2 + 1

end

end A179092.P5518977655766929778

/-! ## A179092.P4446724018299975585

`ceil((1/2-a(n-1))²)` with `a(0)=16`
-/

namespace A179092.P4446724018299975585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  ⌈((1 : ℚ) / 2 - (a (n - 1) : ℚ)) ^ 2⌉

end

end A179092.P4446724018299975585

/-! ## A179092.P1519860881754154974

`a(n-1)+(1-a(n-1))²` with `a(0)=16`
-/

namespace A179092.P1519860881754154974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  a (n - 1) + (1 - a (n - 1)) ^ 2

end

end A179092.P1519860881754154974

/-!
# A179093: 

The programs for A179093, there is no canonical definition to state claims against.
-/

/-! ## A179093.P11445609643232776833

`a(n-1)+(1-a(n-1))²` with `a(0)=17`
-/

namespace A179093.P11445609643232776833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [17] fun n a =>
  a (n - 1) + (1 - a (n - 1)) ^ 2

end

end A179093.P11445609643232776833

/-! ## A179093.P13610859153895059272

`(a(n-1)-1)*a(n-1)+1` with `a(0)=17`
-/

namespace A179093.P13610859153895059272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [17] fun n a =>
  (a (n - 1) - 1) * a (n - 1) + 1

end

end A179093.P13610859153895059272

/-! ## A179093.P15277292724769079996

`1-(1-a(n-1))*a(n-1)` with `a(0)=17`
-/

namespace A179093.P15277292724769079996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [17] fun n a =>
  1 - (1 - a (n - 1)) * a (n - 1)

end

end A179093.P15277292724769079996

/-!
# A179094: Disorder number of the n X n grid graph.

The programs for A179094, the canonical program `A179094.P5774923003988924251` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179094 has offset 1).

The definition of A179094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179094.P5774923003988924251

`record[abs(1-n^3)]-(gcd(n, n%2)+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179094

/-- `record[abs(1-n^3)]-(gcd(n, n%2)+1)` -/
def P5774923003988924251.Spec : Prop :=
  ∀ n, P5774923003988924251.a n = A179094 (n + 1)

theorem P5774923003988924251.correct : P5774923003988924251.Spec := by
  intro n
  simp only [A179094, Nat.add_sub_cancel]

end A179094

/-! ## A179094.P11918915987999404219

`record[abs(1-n^3)]-A141310(n)`
-/

namespace A179094.P11918915987999404219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n ^ 3 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A141310 n

end

end A179094.P11918915987999404219

namespace A179094

/-- `record[abs(1-n^3)]-A141310(n)` -/
def P11918915987999404219.Spec : Prop :=
  ∀ n, P11918915987999404219.a n = A179094 (n + 1)

end A179094

/-! ## A179094.P10180239957579903395

`A135300(n+1)-(gcd(n, n%2)+1)`
-/

namespace A179094.P10180239957579903395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135300 (n + 1) - (Nat.gcd n (n % 2) + 1 : ℤ)

end

end A179094.P10180239957579903395

namespace A179094

/-- `A135300(n+1)-(gcd(n, n%2)+1)` -/
def P10180239957579903395.Spec : Prop :=
  ∀ n, P10180239957579903395.a n = A179094 (n + 1)

end A179094

/-! ## A179094.P18236720146491661089

`record[abs(1-n^3)]-gcd(n+1, A004442(n))`
-/

namespace A179094.P18236720146491661089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n ^ 3 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (Int.gcd (n + 1 : ℤ) (A004442 n) : ℤ)

end

end A179094.P18236720146491661089

namespace A179094

/-- `record[abs(1-n^3)]-gcd(n+1, A004442(n))` -/
def P18236720146491661089.Spec : Prop :=
  ∀ n, P18236720146491661089.a n = A179094 (n + 1)

end A179094

/-! ## A179094.P15653687026851803165

`A135300(n+1)-A141310(n)`
-/

namespace A179094.P15653687026851803165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135300 (n + 1) - A141310 n

end

end A179094.P15653687026851803165

namespace A179094

/-- `A135300(n+1)-A141310(n)` -/
def P15653687026851803165.Spec : Prop :=
  ∀ n, P15653687026851803165.a n = A179094 (n + 1)

end A179094

/-!
# A179095: Rectified 5-cell numbers: the coefficient of x^{2n-2} in (1+x+x^2+ ... + x^{n-1})^5.

The programs for A179095, the canonical program `A179095.P11027518095902956287` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179095 has offset 0).

The definition of A179095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179095.P11027518095902956287

`∑[∑[∑[a(n-1)+11]]]` with `a(0)=0, a(1)=1, a(2)=7`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179095

/-- `∑[∑[∑[a(n-1)+11]]]` -/
def P11027518095902956287.Spec : Prop :=
  ∀ n, (P11027518095902956287.a n : ℤ) = A179095 n

theorem P11027518095902956287.correct : P11027518095902956287.Spec := by
  intro n
  simp only [A179095]

end A179095

/-! ## A179095.P2158709855669833189

`∑[C(2*n, 3)+n^3-∑[3*C(n, 2)]]`
-/

namespace A179095.P2158709855669833189
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 3 + n ^ 3 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179095.P2158709855669833189

namespace A179095

/-- `∑[C(2*n, 3)+n^3-∑[3*C(n, 2)]]` -/
def P2158709855669833189.Spec : Prop :=
  ∀ n, P2158709855669833189.a n = A179095 n

end A179095

/-! ## A179095.P17471039510587072822

`n*(11*n^3+6*n²+n+6)/24`
-/

namespace A179095.P17471039510587072822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((11 * n ^ 3 + 6 * n ^ 2 + (n + 6) : ℚ) / 24)

end

end A179095.P17471039510587072822

namespace A179095

/-- `n*(11*n^3+6*n²+n+6)/24` -/
def P17471039510587072822.Spec : Prop :=
  ∀ n, P17471039510587072822.a n = (A179095 n : ℚ)

end A179095

/-! ## A179095.P5608667071772715367

`A071237(n)-∑[∑[∑[n]]]`
-/

namespace A179095.P5608667071772715367
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071237 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A179095.P5608667071772715367

namespace A179095

/-- `A071237(n)-∑[∑[∑[n]]]` -/
def P5608667071772715367.Spec : Prop :=
  ∀ n, P5608667071772715367.a n = A179095 n

end A179095

/-! ## A179095.P15810425393609724100

`A112742(n)+A002817(n)`
-/

namespace A179095.P15810425393609724100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112742 n + A002817 n

end

end A179095.P15810425393609724100

namespace A179095

/-- `A112742(n)+A002817(n)` -/
def P15810425393609724100.Spec : Prop :=
  ∀ n, P15810425393609724100.a n = A179095 n

end A179095

/-! ## A179095.P16219022530375646495

`A212246(n)+A006528(n)`
-/

namespace A179095.P16219022530375646495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212246 n + A006528 n

end

end A179095.P16219022530375646495

namespace A179095

/-- `A212246(n)+A006528(n)` -/
def P16219022530375646495.Spec : Prop :=
  ∀ n, P16219022530375646495.a n = A179095 n

end A179095

/-! ## A179095.P3810084377358994317

`A037270(n)-A000332(n)`
-/

namespace A179095.P3810084377358994317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 n - A000332 n

end

end A179095.P3810084377358994317

namespace A179095

/-- `A037270(n)-A000332(n)` -/
def P3810084377358994317.Spec : Prop :=
  ∀ n, P3810084377358994317.a n = A179095 n

end A179095

/-! ## A179095.P6345170010790288028

`∑[A132112(n)]-A132124(n)`
-/

namespace A179095.P6345170010790288028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A132124 n

end

end A179095.P6345170010790288028

namespace A179095

/-- `∑[A132112(n)]-A132124(n)` -/
def P6345170010790288028.Spec : Prop :=
  ∀ n, P6345170010790288028.a n = A179095 n

end A179095

/-! ## A179095.P8929439294340768744

`A228317(n+1)+A014205(n)`
-/

namespace A179095.P8929439294340768744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228317 (n + 1) + A014205 n

end

end A179095.P8929439294340768744

namespace A179095

/-- `A228317(n+1)+A014205(n)` -/
def P8929439294340768744.Spec : Prop :=
  ∀ n, P8929439294340768744.a n = A179095 n

end A179095

/-! ## A179095.P16429409979760367308

`A055268(n)-A100157(n+1)`
-/

namespace A179095.P16429409979760367308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055268 n - A100157 (n + 1)

end

end A179095.P16429409979760367308

namespace A179095

/-- `A055268(n)-A100157(n+1)` -/
def P16429409979760367308.Spec : Prop :=
  ∀ n, P16429409979760367308.a n = A179095 n

end A179095

/-! ## A179095.P15994655500695615197

`A014626(n)+2*A212246(n)`
-/

namespace A179095.P15994655500695615197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014626 n + 2 * A212246 n

end

end A179095.P15994655500695615197

namespace A179095

/-- `A014626(n)+2*A212246(n)` -/
def P15994655500695615197.Spec : Prop :=
  ∀ n, P15994655500695615197.a n = A179095 n

end A179095

/-! ## A179095.P8142833009616853878

`2*A006528(n)-A014626(n)`
-/

namespace A179095.P8142833009616853878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006528 n - A014626 n

end

end A179095.P8142833009616853878

namespace A179095

/-- `2*A006528(n)-A014626(n)` -/
def P8142833009616853878.Spec : Prop :=
  ∀ n, P8142833009616853878.a n = A179095 n

end A179095

/-! ## A179095.P10308203119578437067

`n*A006003(n)-A000332(n)`
-/

namespace A179095.P10308203119578437067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006003 n - A000332 n

end

end A179095.P10308203119578437067

namespace A179095

/-- `n*A006003(n)-A000332(n)` -/
def P10308203119578437067.Spec : Prop :=
  ∀ n, P10308203119578437067.a n = A179095 n

end A179095

/-! ## A179095.P5677574881285208671

`∑[A254407(n)+n]-A254407(n)`
-/

namespace A179095.P5677574881285208671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254407 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A254407 n

end

end A179095.P5677574881285208671

namespace A179095

/-- `∑[A254407(n)+n]-A254407(n)` -/
def P5677574881285208671.Spec : Prop :=
  ∀ n, P5677574881285208671.a n = A179095 n

end A179095

/-! ## A179095.P3573315977479640848

`A000578(n)+A264854(n)-A004466(n)`
-/

namespace A179095.P3573315977479640848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + (A264854 n - A004466 n)

end

end A179095.P3573315977479640848

namespace A179095

/-- `A000578(n)+A264854(n)-A004466(n)` -/
def P3573315977479640848.Spec : Prop :=
  ∀ n, P3573315977479640848.a n = A179095 n

end A179095

/-! ## A179095.P14803410190103859031

`A004006(n)+A264854(n)-A004068(n)`
-/

namespace A179095.P14803410190103859031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n + (A264854 n - A004068 n)

end

end A179095.P14803410190103859031

namespace A179095

/-- `A004006(n)+A264854(n)-A004068(n)` -/
def P14803410190103859031.Spec : Prop :=
  ∀ n, P14803410190103859031.a n = A179095 n

end A179095

/-! ## A179095.P8416320009313563700

`A034827(n+1)+A187673(n)-A005920(n)`
-/

namespace A179095.P8416320009313563700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034827 (n + 1) + (A187673 n - A005920 n)

end

end A179095.P8416320009313563700

namespace A179095

/-- `A034827(n+1)+A187673(n)-A005920(n)` -/
def P8416320009313563700.Spec : Prop :=
  ∀ n, P8416320009313563700.a n = A179095 n

end A179095

/-! ## A179095.P5307414459284140877

`A112742(n)+A000217(A000217(n))`
-/

namespace A179095.P5307414459284140877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112742 n + A000217 (A000217 n).toNat

end

end A179095.P5307414459284140877

namespace A179095

/-- `A112742(n)+A000217(A000217(n))` -/
def P5307414459284140877.Spec : Prop :=
  ∀ n, P5307414459284140877.a n = A179095 n

end A179095

/-! ## A179095.P9551009212447115151

`A000217(A000217(n))+2*A008911(n)`
-/

namespace A179095.P9551009212447115151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000217 n).toNat + 2 * A008911 n

end

end A179095.P9551009212447115151

namespace A179095

/-- `A000217(A000217(n))+2*A008911(n)` -/
def P9551009212447115151.Spec : Prop :=
  ∀ n, P9551009212447115151.a n = A179095 n

end A179095

/-! ## A179095.P14783298664182359536

`A000217(A000217(n))+A072819(n)/2`
-/

namespace A179095.P14783298664182359536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A000217 n).toNat : ℚ) + (A072819 n : ℚ) / 2

end

end A179095.P14783298664182359536

namespace A179095

/-- `A000217(A000217(n))+A072819(n)/2` -/
def P14783298664182359536.Spec : Prop :=
  ∀ n, P14783298664182359536.a n = (A179095 n : ℚ)

end A179095

/-!
# A179096: Rectified hexateron (5-simplex) numbers: the coefficient of x^(2n-2) in (1+x+x^2+...+x^(n-1))^6.

The programs for A179096, the canonical program `A179096.P11137882903066574492` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179096 has offset 0).

The definition of A179096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179096.P16101685018980809626

`n*(n+1)*(13*n^3+12*n²-7*n+12)/60`
-/

namespace A179096.P16101685018980809626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) * (((13 * n ^ 3 + 12 * n ^ 2 : ℤ) - (7 * n : ℤ) + 12 : ℚ) / 60))

end

end A179096.P16101685018980809626

namespace A179096

/-- `n*(n+1)*(13*n^3+12*n²-7*n+12)/60` -/
def P16101685018980809626.Spec : Prop :=
  ∀ n, P16101685018980809626.a n = (A179096 n : ℚ)

end A179096

/-! ## A179096.P11137882903066574492

`∑[A125082(n)+∑[A064999(n)]]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A179096

/-- `∑[A125082(n)+∑[A064999(n)]]` -/
def P11137882903066574492.Spec : Prop :=
  ∀ n, P11137882903066574492.a n = A179096 n

theorem P11137882903066574492.correct : P11137882903066574492.Spec := by
  intro n
  simp only [A179096]

end A179096

/-! ## A179096.P5405945232111916825

`A061927(n)+∑[∑[A270205(n)]]`
-/

namespace A179096.P5405945232111916825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270205 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061927 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179096.P5405945232111916825

namespace A179096

/-- `A061927(n)+∑[∑[A270205(n)]]` -/
def P5405945232111916825.Spec : Prop :=
  ∀ n, P5405945232111916825.a n = A179096 n

end A179096

/-! ## A179096.P12845120984963493111

`A277935(n+1)+∑[A132998(n)]`
-/

namespace A179096.P12845120984963493111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277935 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179096.P12845120984963493111

namespace A179096

/-- `A277935(n+1)+∑[A132998(n)]` -/
def P12845120984963493111.Spec : Prop :=
  ∀ n, P12845120984963493111.a n = A179096 n

end A179096

/-! ## A179096.P1684199326730132398

`A000389(2*n+3)-6*A000389(n+3)`
-/

namespace A179096.P1684199326730132398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (2 * n + 3) - 6 * A000389 (n + 3)

end

end A179096.P1684199326730132398

namespace A179096

/-- `A000389(2*n+3)-6*A000389(n+3)` -/
def P1684199326730132398.Spec : Prop :=
  ∀ n, P1684199326730132398.a n = A179096 n

end A179096

/-!
# A179097: Rectified heptapeton (6-simplex) numbers: the coefficient of x^(2n-2) in (1+x+x^2+...+x^(n-1))^7.

The programs for A179097, the canonical program `A179097.P4740471419031734672` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179097 has offset 0).

The definition of A179097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179097.P4740471419031734672

`n*(26*n+40+5*n²+75*n^3+75*n^4+19*n^5)/240`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179097

/-- `n*(26*n+40+5*n²+75*n^3+75*n^4+19*n^5)/240` -/
def P4740471419031734672.Spec : Prop :=
  ∀ n, P4740471419031734672.a n = (A179097 n : ℚ)

end A179097

/-!
# A179098: Rectified 7-simplex number: the coefficient of x^(2n-2) in (1+x+x^2+...+x^(n-1))^8.

The programs for A179098, the canonical program `A179098.P7284806579816666699` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179098 has offset 0).

The definition of A179098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179098.P7284806579816666699

`∑[∑[n^5-(n+1)*∑[n²-n]]]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A179098

/-- `∑[∑[n^5-(n+1)*∑[n²-n]]]` -/
def P7284806579816666699.Spec : Prop :=
  ∀ n, P7284806579816666699.a n = A179098 n

theorem P7284806579816666699.correct : P7284806579816666699.Spec := by
  intro n
  simp only [A179098]

end A179098

