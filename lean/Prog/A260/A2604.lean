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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B003.C004
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
# A260400: Positions of 0 in the infinite palindromic word at A259599.

The programs for A260400, there is no canonical definition to state claims against.
-/

/-! ## A260400.P3377184142921974455

`comp[(n+1)*A121465(A074723(val(n+1, 2)+1))]`
-/

namespace A260400.P3377184142921974455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A121465 (A074723 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A260400.P3377184142921974455

/-! ## A260400.P5914608401611561484

`∩[A036554(n+1), A260396(n+1)]`
-/

namespace A260400.P5914608401611561484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260400.P5914608401611561484

/-! ## A260400.P8660046418368696375

`∩[2*A003159(n+1), A260396(n+1)]`
-/

namespace A260400.P8660046418368696375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260400.P8660046418368696375

/-! ## A260400.P5193837644557562241

`∩[A260396(n+1), A260399(n+1)]`
-/

namespace A260400.P5193837644557562241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260400.P5193837644557562241

/-! ## A260400.P12970272630944661364

`filter[n+1, A260446(#)]`
-/

namespace A260400.P12970272630944661364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260446 (f1 j) = 1) n)

end

end A260400.P12970272630944661364

/-! ## A260400.P9738119585231113187

`eq[1, A260452(n+1)]+1`
-/

namespace A260400.P9738119585231113187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A260400.P9738119585231113187

/-! ## A260400.P5430888897945012582

`eq[1, A260453(n+1)]+1`
-/

namespace A260400.P5430888897945012582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A260400.P5430888897945012582

/-! ## A260400.P12658613007534512676

`eq[2, A260449(n+1)]+1`
-/

namespace A260400.P12658613007534512676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260449 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A260400.P12658613007534512676

/-! ## A260400.P4629289715748721172

`eq[2, A260454(n+1)]+1`
-/

namespace A260400.P4629289715748721172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260454 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A260400.P4629289715748721172

/-! ## A260400.P13275347623122436337

`lt[2, A260450(n+1)]+1`
-/

namespace A260400.P13275347623122436337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260450 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A260400.P13275347623122436337

/-! ## A260400.P13078756713046409912

`eq[1, A260452(A028310(n))]`
-/

namespace A260400.P13078756713046409912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260400.P13078756713046409912

/-! ## A260400.P13525948267209612055

`filter[A036554(n+1), A260394(#)]`
-/

namespace A260400.P13525948267209612055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260394 (f1 j).toNat = 1) n)

end

end A260400.P13525948267209612055

/-! ## A260400.P9370169245127514439

`filter[A260396(n+1), A260397(#)]`
-/

namespace A260400.P9370169245127514439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260397 (f1 j).toNat = 1) n)

end

end A260400.P9370169245127514439

/-! ## A260400.P17564459095667026610

`filter[A260399(n+1), A260394(#)]`
-/

namespace A260400.P17564459095667026610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260394 (f1 j).toNat = 1) n)

end

end A260400.P17564459095667026610

/-! ## A260400.P8685933352941282966

`eq[1, A103185(A007814(n+1))]+1`
-/

namespace A260400.P8685933352941282966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103185 (A007814 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A260400.P8685933352941282966

/-! ## A260400.P8263831008723847594

`filter[A036552(2*(n+1)), A260394(#)]`
-/

namespace A260400.P8263831008723847594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036552 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260394 (f1 j).toNat = 1) n)

end

end A260400.P8263831008723847594

/-! ## A260400.P359236128577037579

`lt[A260445(n+1), A260394(n+1)]+1`
-/

namespace A260400.P359236128577037579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260394 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A260400.P359236128577037579

/-! ## A260400.P7928480318426495245

`lt[tan(gcd(n, 2^n))+4, 3]`
-/

namespace A260400.P7928480318426495245
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (Nat.gcd n (2 ^ n) : ℝ) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A260400.P7928480318426495245

/-!
# A260401: Positions of 1 in the infinite palindromic word at A259599.

The programs for A260401, the canonical program `A260401.P2046318254898871270` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260401 has offset 1).

The definition of A260401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5589 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260401.P13297132125404969426

`filter[n+1, A259599(#)]`
-/

namespace A260401.P13297132125404969426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259599 (f1 j) = 1) n)

end

end A260401.P13297132125404969426

namespace A260401

/-- `filter[n+1, A259599(#)]` -/
def P13297132125404969426.Spec : Prop :=
  ∀ n, (P13297132125404969426.a n : ℤ) = A260401 (n + 1)

end A260401

/-! ## A260401.P14333798588374807200

`lt[1, A260452(n+1)]+1`
-/

namespace A260401.P14333798588374807200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A260401.P14333798588374807200

namespace A260401

/-- `lt[1, A260452(n+1)]+1` -/
def P14333798588374807200.Spec : Prop :=
  ∀ n, (P14333798588374807200.a n : ℤ) = A260401 (n + 1)

end A260401

/-! ## A260401.P5722013625290529436

`lt[1, A260453(n+1)]+1`
-/

namespace A260401.P5722013625290529436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A260401.P5722013625290529436

namespace A260401

/-- `lt[1, A260453(n+1)]+1` -/
def P5722013625290529436.Spec : Prop :=
  ∀ n, (P5722013625290529436.a n : ℤ) = A260401 (n + 1)

end A260401

/-! ## A260401.P14888732205316439438

`lt[A260450(n+1), 3]+1`
-/

namespace A260401.P14888732205316439438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260450 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A260401.P14888732205316439438

namespace A260401

/-- `lt[A260450(n+1), 3]+1` -/
def P14888732205316439438.Spec : Prop :=
  ∀ n, (P14888732205316439438.a n : ℤ) = A260401 (n + 1)

end A260401

/-! ## A260401.P2670421562629532141

`eq[0, A260446(or(n, a(n-1)))]` with `a(0)=1`
-/

namespace A260401.P2670421562629532141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A260446 (Int.lor (n : ℤ) (f2 (n - 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260401.P2670421562629532141

namespace A260401

/-- `eq[0, A260446(or(n, a(n-1)))]` -/
def P2670421562629532141.Spec : Prop :=
  ∀ n, (P2670421562629532141.a n : ℤ) = A260401 (n + 1)

end A260401

/-! ## A260401.P10558100598185958683

`eq[n, n*A259599(a(n-1)+1)]` with `a(0)=3`
-/

namespace A260401.P10558100598185958683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  (n : ℤ) * A259599 (f2 (n - 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260401.P10558100598185958683

namespace A260401

/-- `eq[n, n*A259599(a(n-1)+1)]` -/
def P10558100598185958683.Spec : Prop :=
  ∀ n, (P10558100598185958683.a n : ℤ) = A260401 (n + 1)

end A260401

/-! ## A260401.P6790343732983867655

`eq[1, A259599(n-A187954(a(n-1))+1)]` with `a(0)=0`
-/

namespace A260401.P6790343732983867655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A259599 ((n : ℤ) - A187954 (f2 (n - 1)).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260401.P6790343732983867655

namespace A260401

/-- `eq[1, A259599(n-A187954(a(n-1))+1)]` -/
def P6790343732983867655.Spec : Prop :=
  ∀ n, (P6790343732983867655.a n : ℤ) = A260401 (n + 1)

end A260401

/-! ## A260401.P8596178203810241101

`eq[1, A259599(n-A235124(a(n-1)+2)+1)]` with `a(0)=0`
-/

namespace A260401.P8596178203810241101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A259599 ((n : ℤ) - A235124 (f2 (n - 1) + 2).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260401.P8596178203810241101

namespace A260401

/-- `eq[1, A259599(n-A235124(a(n-1)+2)+1)]` -/
def P8596178203810241101.Spec : Prop :=
  ∀ n, (P8596178203810241101.a n : ℤ) = A260401 (n + 1)

end A260401

/-! ## A260401.P1213608473032499014

`a(n-1)+A260397(a(n-1)+1)+A260394(a(n-1)+1)` with `a(0)=1`
-/

namespace A260401.P1213608473032499014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A260397 (a (n - 1) + 1).toNat + A260394 (a (n - 1) + 1).toNat)

end

end A260401.P1213608473032499014

namespace A260401

/-- `a(n-1)+A260397(a(n-1)+1)+A260394(a(n-1)+1)` -/
def P1213608473032499014.Spec : Prop :=
  ∀ n, P1213608473032499014.a n = A260401 (n + 1)

end A260401

/-! ## A260401.P2046318254898871270

`record[n+1-A112604(xor(n, n+1))]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A260401

/-- `record[n+1-A112604(xor(n, n+1))]` -/
def P2046318254898871270.Spec : Prop :=
  ∀ n, P2046318254898871270.a n = A260401 (n + 1)

theorem P2046318254898871270.correct : P2046318254898871270.Spec := by
  intro n
  simp only [A260401, Nat.add_sub_cancel]

end A260401

/-! ## A260401.P1304376335282207160

`eq[1, A190188(A061393(n)+2)]`
-/

namespace A260401.P1304376335282207160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190188 (A061393 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260401.P1304376335282207160

namespace A260401

/-- `eq[1, A190188(A061393(n)+2)]` -/
def P1304376335282207160.Spec : Prop :=
  ∀ n, (P1304376335282207160.a n : ℤ) = A260401 (n + 1)

end A260401

/-!
# A260402: Numbers which cannot be the largest denominator of an Egyptian fraction for 1.

The programs for A260402, there is no canonical definition to state claims against.
-/

/-! ## A260402.P2194366131245936603

`comp[A092671(n+1)-1]+1`
-/

namespace A260402.P2194366131245936603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092671 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A260402.P2194366131245936603

/-! ## A260402.P18235633617265341664

`record[(n+2)%A275288(n+2)]`
-/

namespace A260402.P18235633617265341664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A275288 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260402.P18235633617265341664

/-! ## A260402.P8602411653241971373

`lt[A000005(n+1)+n, A275288(n+1)]+1`
-/

namespace A260402.P8602411653241971373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A260402.P8602411653241971373

/-! ## A260402.P532565931395065367

`eq[0, A092669(n+1)]+1`
-/

namespace A260402.P532565931395065367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A260402.P532565931395065367

/-! ## A260402.P1355706916359849089

`lt[A092669(n+2), 1]+2`
-/

namespace A260402.P1355706916359849089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092669 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A260402.P1355706916359849089

/-! ## A260402.P1111807385942900108

`eq[0, A092669(A028310(n))]`
-/

namespace A260402.P1111807385942900108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092669 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260402.P1111807385942900108

/-! ## A260402.P3586274306004131417

`eq[0, A092669(A065033(2*n))]`
-/

namespace A260402.P3586274306004131417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092669 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260402.P3586274306004131417

/-! ## A260402.P818883241875208438

`eq[0, A092669(A000007(n)+n)]`
-/

namespace A260402.P818883241875208438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092669 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260402.P818883241875208438

/-! ## A260402.P2094923115604468317

`eq[0, A092669(gcd(n, A008486(n)))]`
-/

namespace A260402.P2094923115604468317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092669 (Int.gcd (n : ℤ) (A008486 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260402.P2094923115604468317

/-!
# A260403: Number of unlabeled rooted trees with n nodes where the outdegrees (branching factors) of adjacent nodes differ by at most one.

The programs for A260403, there is no canonical definition to state claims against.
-/

/-! ## A260403.P1723801055158184106

`A327534(a(n-1)-(char[1]-a(n-2)))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A260403.P1723801055158184106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1, 1] fun n a =>
  A327534 (a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))).toNat

end

end A260403.P1723801055158184106

/-! ## A260403.P16418534134676241915

`A327534(2-(4/2-a(n-1)-a(n-2)))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A260403.P16418534134676241915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1, 1] fun n a =>
  A327534 (SequenceMachineLib.roundAway (2 - ((4 : ℚ) / 2 - (a (n - 1) : ℚ) - (a (n - 2) : ℚ)))).toNat

end

end A260403.P16418534134676241915

/-! ## A260403.P11451766912867544320

`A135660(A000577(n+1)+n)`
-/

namespace A260403.P11451766912867544320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A000577 (n + 1) + (n : ℤ)).toNat

end

end A260403.P11451766912867544320

/-! ## A260403.P626574567080021423

`A135661(A000577(n+1))+A057427(n)`
-/

namespace A260403.P626574567080021423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A000577 (n + 1)).toNat + A057427 n

end

end A260403.P626574567080021423

/-! ## A260403.P14510096994956435287

`A347520(A218020(n))`
-/

namespace A260403.P14510096994956435287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A218020 n).toNat

end

end A260403.P14510096994956435287

/-!
# A260404: 6th level factorials: product of first n 5th level factorials.

The programs for A260404, there is no canonical definition to state claims against.
-/

/-! ## A260404.P12829740963189538480

`∏[∏[∏[∏[∏[n!]]]]]`
-/

namespace A260404.P12829740963189538480
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A260404.P12829740963189538480

/-! ## A260404.P6164507398620868898

`∏[A057528(n)]`
-/

namespace A260404.P6164507398620868898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A260404.P6164507398620868898

/-! ## A260404.P9115649789348672690

`∏[∏[A057527(n)]]`
-/

namespace A260404.P9115649789348672690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057527 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A260404.P9115649789348672690

/-!
# A260406: Numbers n such that (n-1)^2-1 divides 2^(n-1)-1.

The programs for A260406, there is no canonical definition to state claims against.
-/

/-! ## A260406.P16613824964939900485

`A247219(A028310(n))+A158388(n)`
-/

namespace A260406.P16613824964939900485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247219 (A028310 n).toNat + A158388 n

end

end A260406.P16613824964939900485

/-! ## A260406.P11875040058050369232

`A081762(A028310(n))%A079397(n)`
-/

namespace A260406.P11875040058050369232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081762 (A028310 n).toNat) (A079397 n)

end

end A260406.P11875040058050369232

/-! ## A260406.P8625448498091848751

`p?[A081762(A028310(n))]-A000038(n)`
-/

namespace A260406.P8625448498091848751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081762 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A000038 n

end

end A260406.P8625448498091848751

/-! ## A260406.P8693781254041202030

`p?[A081762(A028310(n))]%A036289(n+1)`
-/

namespace A260406.P8693781254041202030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081762 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A036289 (n + 1))

end

end A260406.P8693781254041202030

/-! ## A260406.P11201111065292881972

`p?[A081762(A028310(n))]-A108069(n²+6)`
-/

namespace A260406.P11201111065292881972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081762 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A108069 (n ^ 2 + 6)

end

end A260406.P11201111065292881972

/-!
# A260407: Numbers n such that (n-1)^2+1 divides 2^(n-1)-1.

The programs for A260407, there is no canonical definition to state claims against.
-/

/-! ## A260407.P2685755488814464651

`A247165(n+1)+1`
-/

namespace A260407.P2685755488814464651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247165 (n + 1) + 1

end

end A260407.P2685755488814464651

/-! ## A260407.P2134833393286608995

`or(1, A247165(A005496(n)))`
-/

namespace A260407.P2134833393286608995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A247165 (A005496 n).toNat)

end

end A260407.P2134833393286608995

/-! ## A260407.P12528338048902398922

`or(1, A247165(A077168(n)))`
-/

namespace A260407.P12528338048902398922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A247165 (A077168 n).toNat)

end

end A260407.P12528338048902398922

/-!
# A260408: Bisection of A260310.

The programs for A260408, there is no canonical definition to state claims against.
-/

/-! ## A260408.P188657655794091727

`A260310(2*n+1)`
-/

namespace A260408.P188657655794091727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260310 (2 * n + 1)

end

end A260408.P188657655794091727

/-! ## A260408.P10444722146823100578

`A000027(A260310(comp[2*n]))`
-/

namespace A260408.P10444722146823100578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A260310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A260408.P10444722146823100578

/-! ## A260408.P16722843840120329307

`or(A000007(n), A260310(comp[2*n]))`
-/

namespace A260408.P16722843840120329307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A260310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A260408.P16722843840120329307

/-! ## A260408.P8890362477190728096

`A020985(n)²*A260310(comp[2*n])`
-/

namespace A260408.P8890362477190728096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A260310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A260408.P8890362477190728096

/-! ## A260408.P2275057167036001643

`A106400(n)²*A260310(comp[2*n])`
-/

namespace A260408.P2275057167036001643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n ^ 2 * A260310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A260408.P2275057167036001643

/-! ## A260408.P11000589016267241019

`A014963(A053741(n))*A260310(comp[2*n])`
-/

namespace A260408.P11000589016267241019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A053741 n).toNat * A260310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A260408.P11000589016267241019

/-!
# A260409: Bisection of A260310.

The programs for A260409, there is no canonical definition to state claims against.
-/

/-! ## A260409.P3164123656525101776

`A260310(2*(n+1))`
-/

namespace A260409.P3164123656525101776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260310 (2 * (n + 1))

end

end A260409.P3164123656525101776

/-! ## A260409.P13747998655600648714

`A260310(Δ[A002378(n)])%A017197(n)²`
-/

namespace A260409.P13747998655600648714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260310 (f1 (n + 1) - f1 n).toNat) (A017197 n ^ 2)

end

end A260409.P13747998655600648714

/-! ## A260409.P17971684521873352285

`A260310(Δ[A002378(n)])+A000007(n+1)`
-/

namespace A260409.P17971684521873352285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260310 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A260409.P17971684521873352285

/-! ## A260409.P16782292219643449803

`record[A260310(A010892(n)+A008620(n))]`
-/

namespace A260409.P16782292219643449803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260310 (A010892 n + A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260409.P16782292219643449803

/-! ## A260409.P737348612281416276

`A028310(A260310(n+2+n))`
-/

namespace A260409.P737348612281416276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A260310 (n + 2 + n)).toNat

end

end A260409.P737348612281416276

/-! ## A260409.P10225196303428052629

`record[A260310(A112798(n+2)+A112798(n+2))]`
-/

namespace A260409.P10225196303428052629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260310 (A112798 (n + 2) + A112798 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260409.P10225196303428052629

/-! ## A260409.P2910374443057166307

`A260310(Δ[A002378(n)])%A042734(n)`
-/

namespace A260409.P2910374443057166307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260310 (f1 (n + 1) - f1 n).toNat) (A042734 n)

end

end A260409.P2910374443057166307

/-! ## A260409.P10109255647546277566

`A145118((4-n)²)*A260310(Δ[A002378(n)])`
-/

namespace A260409.P10109255647546277566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145118 ((4 - (n : ℤ)) ^ 2).toNat * A260310 (f1 (n + 1) - f1 n).toNat

end

end A260409.P10109255647546277566

/-!
# A260411: Number of ways n can be represented as a sum of a positive cube, a positive square, and a positive triangular number.

The programs for A260411, there is no canonical definition to state claims against.
-/

/-! ## A260411.P777500778810777936

`A328620(A003056(A047522(n+1)+A002817(n)))`
-/

namespace A260411.P777500778810777936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328620 (A003056 (A047522 (n + 1) + A002817 n).toNat).toNat

end

end A260411.P777500778810777936

/-! ## A260411.P5908275940775414078

`val(n!, A214972(A022138(n)))`
-/

namespace A260411.P5908275940775414078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial n) (A214972 (A022138 n).toNat).toNat

end

end A260411.P5908275940775414078

/-! ## A260411.P1406939332667226164

`A031346(A222153(A014206(n)))`
-/

namespace A260411.P1406939332667226164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A222153 (A014206 n).toNat).toNat

end

end A260411.P1406939332667226164

/-! ## A260411.P3044666050064716230

`val(A000142(n), A214972(A022138(n)))`
-/

namespace A260411.P3044666050064716230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000142 n).toNat (A214972 (A022138 n).toNat).toNat

end

end A260411.P3044666050064716230

/-! ## A260411.P7719793634546206835

`and(A029285(n), A102007(A163511(n)))`
-/

namespace A260411.P7719793634546206835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029285 n) (A102007 (A163511 n).toNat)

end

end A260411.P7719793634546206835

/-!
# A260412: Expansion of psi(x^2) * psi(x^3) / f(-x^2, -x^10) in powers of x where psi(), f(,) are Ramanujan theta functions.

The programs for A260412, there is no canonical definition to state claims against.
-/

/-! ## A260412.P7531935352470539009

`A260413(n)+A053251(n)`
-/

namespace A260412.P7531935352470539009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260413 n + A053251 n

end

end A260412.P7531935352470539009

/-! ## A260412.P15786371167440971536

`(A257657(n)+A132969(n))/2`
-/

namespace A260412.P15786371167440971536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257657 n + A132969 n : ℚ) / 2

end

end A260412.P15786371167440971536

/-! ## A260412.P5199229627197129571

`A053251(n)+(-1)^n*A053252(n)`
-/

namespace A260412.P5199229627197129571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053251 n + (-1) ^ n * A053252 n

end

end A260412.P5199229627197129571

/-! ## A260412.P836757466706140547

`A053251(n)+A053252(n)/A033999(n)`
-/

namespace A260412.P836757466706140547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053251 n : ℚ) + (A053252 n : ℚ) / (A033999 n : ℚ)

end

end A260412.P836757466706140547

/-! ## A260412.P12641765311625951703

`A053251(n)+A053252(n)/∑[A280560(n)]`
-/

namespace A260412.P12641765311625951703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053251 n : ℚ) + (A053252 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A260412.P12641765311625951703

/-! ## A260412.P3951804188315690092

`A273943(A257657(n)+A132969(n))`
-/

namespace A260412.P3951804188315690092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A257657 n + A132969 n).toNat

end

end A260412.P3951804188315690092

/-! ## A260412.P12637914025118789018

`A014682(A257657(n)+A132969(n))`
-/

namespace A260412.P12637914025118789018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A257657 n + A132969 n).toNat

end

end A260412.P12637914025118789018

/-! ## A260412.P3309845560295060614

`A318518(char[1]+A257657(n)+A132969(n))`
-/

namespace A260412.P3309845560295060614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A257657 n + A132969 n)).toNat

end

end A260412.P3309845560295060614

/-! ## A260412.P5514330278251760012

`A328399(A257657(n)+A132969(n))-1`
-/

namespace A260412.P5514330278251760012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A257657 n + A132969 n).toNat - 1

end

end A260412.P5514330278251760012

/-! ## A260412.P16220411176697835552

`A038572(A257657(n)+A132969(n))`
-/

namespace A260412.P16220411176697835552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A257657 n + A132969 n).toNat

end

end A260412.P16220411176697835552

/-!
# A260413: Expansion of chi(-x) where chi() is a 3rd order mock theta function.

The programs for A260413, there is no canonical definition to state claims against.
-/

/-! ## A260413.P4441343887754841135

`A260412(n)-A053251(n)`
-/

namespace A260413.P4441343887754841135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260412 n - A053251 n

end

end A260413.P4441343887754841135

/-! ## A260413.P17231891384213524744

`(-1)^n*A053252(n)`
-/

namespace A260413.P17231891384213524744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A053252 n

end

end A260413.P17231891384213524744

/-! ## A260413.P4312148254490379662

`A053252(char[1]+n)/(-1)^n`
-/

namespace A260413.P4312148254490379662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053252 ((if ∃ j, f1 j = n then 1 else 0) + n) : ℚ) / ((-1) ^ n : ℚ)

end

end A260413.P4312148254490379662

/-! ## A260413.P12580868019680785513

`floor(A053252(abs(1-n)+1)/(-1)^n)`
-/

namespace A260413.P12580868019680785513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053252 (|1 - (n : ℤ)| + 1).toNat : ℚ) / ((-1) ^ n : ℚ)⌋

end

end A260413.P12580868019680785513

/-! ## A260413.P996474278061703280

`abs(A053252(n))*A257075(n)`
-/

namespace A260413.P996474278061703280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053252 n| * A257075 n

end

end A260413.P996474278061703280

/-! ## A260413.P18024237680760708102

`A053252(n)*A132970(n)/abs(A132970(n))`
-/

namespace A260413.P18024237680760708102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053252 n * A132970 n : ℚ) / (|A132970 n| : ℚ)

end

end A260413.P18024237680760708102

/-! ## A260413.P2015849099044766859

`A053252(n)*A053254(n)/A067357(n)`
-/

namespace A260413.P2015849099044766859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053252 n * A053254 n : ℚ) / (A067357 n : ℚ)

end

end A260413.P2015849099044766859

/-! ## A260413.P10313159178640675585

`A000025(n)*A053252(n)/A260460(n)`
-/

namespace A260413.P10313159178640675585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000025 n * A053252 n : ℚ) / (A260460 n : ℚ)

end

end A260413.P10313159178640675585

/-! ## A260413.P13514255318749243885

`A053252(n)*A214507(n²)`
-/

namespace A260413.P13514255318749243885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053252 n * A214507 (n ^ 2)

end

end A260413.P13514255318749243885

/-!
# A260414: Expansion of psi(x^3) * psi(x^6) / f(-x^4) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A260414, there is no canonical definition to state claims against.
-/

/-! ## A260414.P10563462682749765256

`A029262(n)-A079260(A198322(n+1))`
-/

namespace A260414.P10563462682749765256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029262 n - A079260 (A198322 (n + 1)).toNat

end

end A260414.P10563462682749765256

/-! ## A260414.P15623145776099384950

`A029262(n)+A016389(A022166(n))`
-/

namespace A260414.P15623145776099384950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029262 n + A016389 (A022166 n).toNat

end

end A260414.P15623145776099384950

/-! ## A260414.P17819617116324925412

`A029262(n)-A060510(A131070(n))`
-/

namespace A260414.P17819617116324925412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029262 n - A060510 (A131070 n).toNat

end

end A260414.P17819617116324925412

/-! ## A260414.P2398010543053200229

`A029262(n)-A353479(A004148(n))`
-/

namespace A260414.P2398010543053200229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029262 n - A353479 (A004148 n).toNat

end

end A260414.P2398010543053200229

/-! ## A260414.P15721860538934203413

`A124767(C(A353401(n), A051340(n)))`
-/

namespace A260414.P15721860538934203413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (Nat.choose (A353401 n).toNat (A051340 n).toNat)

end

end A260414.P15721860538934203413

/-!
# A260415: Expansion of f(x, x^2) * f(x^4, x^8) in powers of x where f(,) is Ramanujan's general theta function.

The programs for A260415, the canonical program `A260415.P18335187104503907792` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260415 has offset 0).

The definition of A260415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260415.P18335187104503907792

`A121444(2*n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A260415

/-- `A121444(2*n)` -/
def P18335187104503907792.Spec : Prop :=
  ∀ n, P18335187104503907792.a n = A260415 n

theorem P18335187104503907792.correct : P18335187104503907792.Spec := by
  intro n
  simp only [A260415]

end A260415

/-! ## A260415.P8006028166137886865

`A121444(n+n)^gcd(n, n+1)`
-/

namespace A260415.P8006028166137886865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121444 (n + n) ^ Nat.gcd n (n + 1)

end

end A260415.P8006028166137886865

namespace A260415

/-- `A121444(n+n)^gcd(n, n+1)` -/
def P8006028166137886865.Spec : Prop :=
  ∀ n, P8006028166137886865.a n = A260415 n

theorem P8006028166137886865.correct : P8006028166137886865.Spec := by
  intro n
  simp only [A260415, Nat.add_sub_cancel, A260415.P8006028166137886865.a, A260415.P18335187104503907792.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A260415

/-! ## A260415.P18104362790664586314

`A258832(2*n)`
-/

namespace A260415.P18104362790664586314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258832 (2 * n)

end

end A260415.P18104362790664586314

namespace A260415

/-- `A258832(2*n)` -/
def P18104362790664586314.Spec : Prop :=
  ∀ n, P18104362790664586314.a n = A260415 n

end A260415

/-! ## A260415.P18258244511146530584

`A053692(3*n)`
-/

namespace A260415.P18258244511146530584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053692 (3 * n)

end

end A260415.P18258244511146530584

namespace A260415

/-- `A053692(3*n)` -/
def P18258244511146530584.Spec : Prop :=
  ∀ n, P18258244511146530584.a n = A260415 n

end A260415

/-! ## A260415.P16751354622445593724

`abs(A226194(3*n))`
-/

namespace A260415.P16751354622445593724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A226194 (3 * n)|

end

end A260415.P16751354622445593724

namespace A260415

/-- `abs(A226194(3*n))` -/
def P16751354622445593724.Spec : Prop :=
  ∀ n, P16751354622445593724.a n = A260415 n

end A260415

/-! ## A260415.P2529298242273198037

`lcm(A020985(n), A226194(3*n))`
-/

namespace A260415.P2529298242273198037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A226194 (3 * n))

end

end A260415.P2529298242273198037

namespace A260415

/-- `lcm(A020985(n), A226194(3*n))` -/
def P2529298242273198037.Spec : Prop :=
  ∀ n, (P2529298242273198037.a n : ℤ) = A260415 n

end A260415

/-! ## A260415.P3792436383381126856

`A052343(6*n+1)`
-/

namespace A260415.P3792436383381126856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (6 * n + 1)

end

end A260415.P3792436383381126856

namespace A260415

/-- `A052343(6*n+1)` -/
def P3792436383381126856.Spec : Prop :=
  ∀ n, P3792436383381126856.a n = A260415 n

end A260415

/-! ## A260415.P14491324555062345735

`A005883(record[(2*(n+2))^(n%2)+n])/8`
-/

namespace A260415.P14491324555062345735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2)) ^ (n % 2) + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005883 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / 8

end

end A260415.P14491324555062345735

namespace A260415

/-- `A005883(record[(2*(n+2))^(n%2)+n])/8` -/
def P14491324555062345735.Spec : Prop :=
  ∀ n, P14491324555062345735.a n = (A260415 n : ℚ)

end A260415

/-! ## A260415.P14792250993378926502

`A008441(A016861(n)+n)/2`
-/

namespace A260415.P14792250993378926502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008441 (A016861 n + (n : ℤ)).toNat : ℚ) / 2

end

end A260415.P14792250993378926502

namespace A260415

/-- `A008441(A016861(n)+n)/2` -/
def P14792250993378926502.Spec : Prop :=
  ∀ n, P14792250993378926502.a n = (A260415 n : ℚ)

end A260415

/-! ## A260415.P9886017217582558001

`A259660(8*n)`
-/

namespace A260415.P9886017217582558001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259660 (8 * n)

end

end A260415.P9886017217582558001

namespace A260415

/-- `A259660(8*n)` -/
def P9886017217582558001.Spec : Prop :=
  ∀ n, P9886017217582558001.a n = A260415 n

end A260415

/-! ## A260415.P5227564640847586283

`A122856(A017089(n)-1)/2`
-/

namespace A260415.P5227564640847586283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122856 (A017089 n - 1).toNat : ℚ) / 2

end

end A260415.P5227564640847586283

namespace A260415

/-- `A122856(A017089(n)-1)/2` -/
def P5227564640847586283.Spec : Prop :=
  ∀ n, P5227564640847586283.a n = (A260415 n : ℚ)

end A260415

/-! ## A260415.P8315851531624984776

`A125079(2*A016921(n))/2`
-/

namespace A260415.P8315851531624984776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125079 (2 * A016921 n).toNat : ℚ) / 2

end

end A260415.P8315851531624984776

namespace A260415

/-- `A125079(2*A016921(n))/2` -/
def P8315851531624984776.Spec : Prop :=
  ∀ n, P8315851531624984776.a n = (A260415 n : ℚ)

end A260415

/-! ## A260415.P10444510864356237837

`A000161(A017581(2*n))`
-/

namespace A260415.P10444510864356237837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A017581 (2 * n)).toNat

end

end A260415.P10444510864356237837

namespace A260415

/-- `A000161(A017581(2*n))` -/
def P10444510864356237837.Spec : Prop :=
  ∀ n, P10444510864356237837.a n = A260415 n

end A260415

/-! ## A260415.P5721121667775712376

`A000161(A004771(3*n)-2)`
-/

namespace A260415.P5721121667775712376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A004771 (3 * n) - 2).toNat

end

end A260415.P5721121667775712376

namespace A260415

/-- `A000161(A004771(3*n)-2)` -/
def P5721121667775712376.Spec : Prop :=
  ∀ n, P5721121667775712376.a n = A260415 n

end A260415

/-! ## A260415.P1272494712252264434

`A000161(A016813(6*n+1))`
-/

namespace A260415.P1272494712252264434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A016813 (6 * n + 1)).toNat

end

end A260415.P1272494712252264434

namespace A260415

/-- `A000161(A016813(6*n+1))` -/
def P1272494712252264434.Spec : Prop :=
  ∀ n, P1272494712252264434.a n = A260415 n

end A260415

/-! ## A260415.P9987942626202026893

`A035181(A259752(n+1)-1)/2`
-/

namespace A260415.P9987942626202026893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035181 (A259752 (n + 1) - 1).toNat : ℚ) / 2

end

end A260415.P9987942626202026893

namespace A260415

/-- `A035181(A259752(n+1)-1)/2` -/
def P9987942626202026893.Spec : Prop :=
  ∀ n, P9987942626202026893.a n = (A260415 n : ℚ)

end A260415

/-! ## A260415.P4284787337631429248

`A337743(A348845(2*n))`
-/

namespace A260415.P4284787337631429248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337743 (A348845 (2 * n)).toNat

end

end A260415.P4284787337631429248

namespace A260415

/-- `A337743(A348845(2*n))` -/
def P4284787337631429248.Spec : Prop :=
  ∀ n, P4284787337631429248.a n = A260415 n

end A260415

/-! ## A260415.P9905687757351252158

`A364047(A063162(2*n+1))`
-/

namespace A260415.P9905687757351252158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364047 (A063162 (2 * n + 1)).toNat

end

end A260415.P9905687757351252158

namespace A260415

/-- `A364047(A063162(2*n+1))` -/
def P9905687757351252158.Spec : Prop :=
  ∀ n, P9905687757351252158.a n = A260415 n

end A260415

/-!
# A260417: Number of triple-crossings of diagonals in the regular 2n-gon.

The programs for A260417, there is no canonical definition to state claims against.
-/

/-! ## A260417.P12148669802864480676

`A005732(2*(n+2))-A006600(2*(n+2))`
-/

namespace A260417.P12148669802864480676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005732 (2 * (n + 2)) - A006600 (2 * (n + 2))

end

end A260417.P12148669802864480676

/-! ## A260417.P6261461066865498267

`A005732(2*n+4)%A006600(2*n+4)`
-/

namespace A260417.P6261461066865498267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005732 (2 * n + 4)) (A006600 (2 * n + 4))

end

end A260417.P6261461066865498267

/-!
# A260418: Number of ways to write 12*n+5 as 4*x^4 + 4*y^2 + z^2, where x is a nonnegative integer, and y and z are positive integers.

The programs for A260418, there is no canonical definition to state claims against.
-/

/-! ## A260418.P5895877702770857430

`A001222(or(A074288(n+1), A117786(n+1)))`
-/

namespace A260418.P5895877702770857430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A074288 (n + 1)) (A117786 (n + 1))).toNat

end

end A260418.P5895877702770857430

/-! ## A260418.P7239339360618204499

`A191372((1-floor(sqrt(n))²+n)*A052839(n))`
-/

namespace A260418.P7239339360618204499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191372 ((1 - (Nat.sqrt n ^ 2 : ℤ) + (n : ℤ)) * A052839 n).toNat

end

end A260418.P7239339360618204499

/-! ## A260418.P9020363875109143363

`A001222(A208776(n+1)+A004186(n))`
-/

namespace A260418.P9020363875109143363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A208776 (n + 1) + A004186 n).toNat

end

end A260418.P9020363875109143363

/-! ## A260418.P14050147453056617247

`A038374(A179485(n+1)+A000079(n))`
-/

namespace A260418.P14050147453056617247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (A179485 (n + 1) + A000079 n).toNat

end

end A260418.P14050147453056617247

/-!
# A260419: Square array T(n,m) read by antidiagonals, T(n,m) is the number of (m,n)-parking functions.

The programs for A260419, there is no canonical definition to state claims against.
-/

/-! ## A260419.P1441211141546840273

`A000005(A007318(n)^A025884(3*(n+1)))`
-/

namespace A260419.P1441211141546840273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A007318 n : ℚ) ^ (A025884 (3 * (n + 1)) : ℤ))).toNat

end

end A260419.P1441211141546840273

/-! ## A260419.P16639496070012318912

`A000005(A034328(n)^A264482(n+1))`
-/

namespace A260419.P16639496070012318912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A034328 n : ℚ) ^ (A264482 (n + 1) : ℤ))).toNat

end

end A260419.P16639496070012318912

/-! ## A260419.P10036864416344429183

`A072078(A007318(n)^A264482(n+1))`
-/

namespace A260419.P10036864416344429183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (SequenceMachineLib.roundAway ((A007318 n : ℚ) ^ (A264482 (n + 1) : ℤ))).toNat

end

end A260419.P10036864416344429183

/-! ## A260419.P8509010104490162823

`A000005(A157109(n)^A157103(n+3))`
-/

namespace A260419.P8509010104490162823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A157109 n : ℚ) ^ (A157103 (n + 3) : ℤ))).toNat

end

end A260419.P8509010104490162823

/-!
# A260420: Numbers n such that sigma(n+1) - sigma(n-1) = n+1.

The programs for A260420, there is no canonical definition to state claims against.
-/

/-! ## A260420.P17251149294198629728

`A246852(n+1)+1`
-/

namespace A260420.P17251149294198629728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246852 (n + 1) + 1

end

end A260420.P17251149294198629728

/-!
# A260421: a(1) = 1, a(A206074(n)) = 1 + (2*a(n)), a(A205783(1+n)) = 2*a(n), where A206074 and A205783 give binary codes for polynomials with coefficients 0 or 1 that are irreducible [resp. reducible] over Q.

The programs for A260421, there is no canonical definition to state claims against.
-/

/-! ## A260421.P16687683562028291722

`A246377(A260424(n+1))`
-/

namespace A260421.P16687683562028291722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246377 (A260424 (n + 1)).toNat

end

end A260421.P16687683562028291722

/-! ## A260421.P17237761781659223291

`A246201(A260426(n+1))`
-/

namespace A260421.P17237761781659223291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246201 (A260426 (n + 1)).toNat

end

end A260421.P17237761781659223291

/-!
# A260422: a(1) = 1, a(2n) = A205783(1+a(n)), a(2n+1) = A206074(a(n)), where A206074 and A205783 give binary codes for polynomials with coefficients 0 or 1 that are irreducible [resp. reducible] over Q.

The programs for A260422, there is no canonical definition to state claims against.
-/

/-! ## A260422.P6737274583747054000

`A260423(A246378(n+1))`
-/

namespace A260422.P6737274583747054000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260423 (A246378 (n + 1)).toNat

end

end A260422.P6737274583747054000

/-! ## A260422.P15479587338706920866

`A260425(A246202(n+1))`
-/

namespace A260422.P15479587338706920866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260425 (A246202 (n + 1)).toNat

end

end A260422.P15479587338706920866

/-! ## A260422.P16655360932562050937

`A260425(A246164(A246201(A246164(n+1))))`
-/

namespace A260422.P16655360932562050937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260425 (A246164 (A246201 (A246164 (n + 1)).toNat).toNat).toNat

end

end A260422.P16655360932562050937

/-! ## A260422.P3642687855697552925

`A260425(A246204(A246201(A246204(n+1))))`
-/

namespace A260422.P3642687855697552925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260425 (A246204 (A246201 (A246204 (n + 1)).toNat).toNat).toNat

end

end A260422.P3642687855697552925

/-! ## A260422.P13745755334617521463

`or(A219071(A003415(n)), A246378(n+1))`
-/

namespace A260422.P13745755334617521463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A219071 (A003415 n).toNat) (A246378 (n + 1))

end

end A260422.P13745755334617521463

/-!
# A260423: a(1) = 1, a(prime(n)) = A206074(a(n)), a(composite(n)) = A205783(1+a(n)), where A206074 and A205783 give binary codes for polynomials with coefficients 0 or 1 that are irreducible [resp. reducible] over Q.

The programs for A260423, there is no canonical definition to state claims against.
-/

/-! ## A260423.P13108115735565535825

`A260425(A245703(n+1))`
-/

namespace A260423.P13108115735565535825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260425 (A245703 (n + 1)).toNat

end

end A260423.P13108115735565535825

/-! ## A260423.P6400314819670540009

`A260425(A245819(n+2)-1)`
-/

namespace A260423.P6400314819670540009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260425 (A245819 (n + 2) - 1).toNat

end

end A260423.P6400314819670540009

/-! ## A260423.P1571453514965186684

`A260422(A246377(n+1))`
-/

namespace A260423.P1571453514965186684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260422 (A246377 (n + 1)).toNat

end

end A260423.P1571453514965186684

/-!
# A260424: a(1) = 1, a(A206074(n)) = prime(a(n)), a(A205783(1+n)) = composite(a(n)), where A206074 and A205783 give binary codes for polynomials with coefficients 0 or 1 that are irreducible [resp. reducible] over Q.

The programs for A260424, there is no canonical definition to state claims against.
-/

/-! ## A260424.P3314297642852547924

`A246378(A260421(n+1))`
-/

namespace A260424.P3314297642852547924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (A260421 (n + 1)).toNat

end

end A260424.P3314297642852547924

/-! ## A260424.P12702074603978587220

`A245704(A260426(n+1))`
-/

namespace A260424.P12702074603978587220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245704 (A260426 (n + 1)).toNat

end

end A260424.P12702074603978587220

/-!
# A260425: a(1) = 1, a(A014580(n)) = A206074(a(n)), a(A091242(n)) = A205783(1+a(n)), where A014580(n) [resp. A091242(n)] give binary codes for n-th irreducible [resp. reducible] polynomial over GF(2), while A206074 and A205783 give similar codes for polynomials with coefficients 0 or 1 that are irreducible [resp. reducible] over Q.

The programs for A260425, there is no canonical definition to state claims against.
-/

/-! ## A260425.P4581251407855129169

`A260423(A245704(n+1))`
-/

namespace A260425.P4581251407855129169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260423 (A245704 (n + 1)).toNat

end

end A260425.P4581251407855129169

/-! ## A260425.P5185431261720601352

`A260423(A245820(n+2)-1)`
-/

namespace A260425.P5185431261720601352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260423 (A245820 (n + 2) - 1).toNat

end

end A260425.P5185431261720601352

/-! ## A260425.P11261375824921939761

`A260422(A246201(n+1))`
-/

namespace A260425.P11261375824921939761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260422 (A246201 (n + 1)).toNat

end

end A260425.P11261375824921939761

/-! ## A260425.P1131307147720390677

`A260422(A246203(A246163(A246202(n+1))))`
-/

namespace A260425.P1131307147720390677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260422 (A246203 (A246163 (A246202 (n + 1)).toNat).toNat).toNat

end

end A260425.P1131307147720390677

/-! ## A260425.P17059573825867861971

`A260422(A246203(A246202(A246203(n+1))))`
-/

namespace A260425.P17059573825867861971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260422 (A246203 (A246202 (A246203 (n + 1)).toNat).toNat).toNat

end

end A260425.P17059573825867861971

/-!
# A260426: a(1) = 1, a(A206074(n)) = A014580(a(n)), a(A205783(1+n)) = A091242(a(n)), where A014580 [respectively A091242] give binary codes for irreducible [resp. reducible] polynomials over GF(2), while A206074 and A205783 give similar codes for polynomials with coefficients 0 or 1 that are irreducible [resp. reducible] over Q.

The programs for A260426, there is no canonical definition to state claims against.
-/

/-! ## A260426.P5490514875964102203

`A245703(A260424(n+1))`
-/

namespace A260426.P5490514875964102203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245703 (A260424 (n + 1)).toNat

end

end A260426.P5490514875964102203

/-! ## A260426.P1815703521253066418

`A246202(A260421(n+1))`
-/

namespace A260426.P1815703521253066418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246202 (A260421 (n + 1)).toNat

end

end A260426.P1815703521253066418

/-!
# A260427: Binary codes for polynomials (with coefficients 0 or 1) that are irreducible over Q, but reducible over GF(2).

The programs for A260427, there is no canonical definition to state claims against.
-/

/-! ## A260427.P12535259914431041827

`lt[A091225(n), A257000(n)]`
-/

namespace A260427.P12535259914431041827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260427.P12535259914431041827

/-! ## A260427.P9518273791157124805

`eq[A091225(n)+2, A305300(n+1)]`
-/

namespace A260427.P9518273791157124805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305300 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260427.P9518273791157124805

/-! ## A260427.P13459772413562458395

`∪[A091209(n+1), A260428(n+1)]`
-/

namespace A260427.P13459772413562458395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A260427.P13459772413562458395

/-! ## A260427.P8814003953476035714

`lt[A091225(n), A014669(A305300(n+1))]`
-/

namespace A260427.P8814003953476035714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014669 (A305300 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260427.P8814003953476035714

/-! ## A260427.P5350507008792611033

`∩[A206074(n+1), A246156(n+1)]`
-/

namespace A260427.P5350507008792611033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260427.P5350507008792611033

/-! ## A260427.P4486572038147734707

`filter[A206074(n+3), A091247(#)]`
-/

namespace A260427.P4486572038147734707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A260427.P4486572038147734707

/-! ## A260427.P8340434884017769844

`filter[A246156(n+1), A257000(#)]`
-/

namespace A260427.P8340434884017769844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A260427.P8340434884017769844

/-! ## A260427.P15816905041143688931

`record[A305430(n+3)%A305420(n+3)]`
-/

namespace A260427.P15816905041143688931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305430 (n + 3)) (A305420 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260427.P15816905041143688931

/-! ## A260427.P16584324697270885015

`∩[A091242(n+1), A206074(n+1)]`
-/

namespace A260427.P16584324697270885015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260427.P16584324697270885015

/-! ## A260427.P4278542644876935227

`A260423(p?[A260424(A091242(n+1))])`
-/

namespace A260427.P4278542644876935227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260424 (A091242 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260423 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A260427.P4278542644876935227

/-!
# A260428: Composite numbers whose binary representations encode a polynomial (with coefficients 0 or 1) which is irreducible over Q, but reducible over GF(2).

The programs for A260428, there is no canonical definition to state claims against.
-/

/-! ## A260428.P8451824937272300327

`filter[A206075(n+1), A091247(#)]`
-/

namespace A260428.P8451824937272300327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A260428.P8451824937272300327

/-! ## A260428.P15022010161604910869

`filter[A260427(n+3), A005171(#)]`
-/

namespace A260428.P15022010161604910869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260427 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A260428.P15022010161604910869

/-! ## A260428.P13868108678052158834

`filter[A260427(n+3), A066247(#)]`
-/

namespace A260428.P13868108678052158834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260427 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A260428.P13868108678052158834

/-! ## A260428.P6562453282728884169

`filter[A260427(n+3), A202238(#)]`
-/

namespace A260428.P6562453282728884169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260427 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A260428.P6562453282728884169

/-! ## A260428.P14176585495445331444

`filter[A260427(n+3), A292438(#)]`
-/

namespace A260428.P14176585495445331444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260427 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A260428.P14176585495445331444

/-! ## A260428.P13567624615809228032

`filter[A260427(n+3), A305821(#)]`
-/

namespace A260428.P13567624615809228032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260427 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305821 (f1 j).toNat = 1) n)

end

end A260428.P13567624615809228032

/-! ## A260428.P7549867409493421463

`filter[A260427(n+3), A323162(#)]`
-/

namespace A260428.P7549867409493421463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260427 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A260428.P7549867409493421463

/-! ## A260428.P15682003150835916474

`∩[A206075(n+1), A260427(n+1)]`
-/

namespace A260428.P15682003150835916474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260428.P15682003150835916474

/-! ## A260428.P7787287620958863193

`∩[A260427(n+1), A325571(n+1)]`
-/

namespace A260428.P7787287620958863193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260428.P7787287620958863193

/-! ## A260428.P1533361540785300926

`∩[A091212(n+1), A206074(n+1)]`
-/

namespace A260428.P1533361540785300926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260428.P1533361540785300926

/-! ## A260428.P8819925386714033302

`∩[A071904(n+1), A260427(n+1)]`
-/

namespace A260428.P8819925386714033302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260428.P8819925386714033302

/-! ## A260428.P2782804359807714416

`∩[A014076(n+1), A260427(n+1)]`
-/

namespace A260428.P2782804359807714416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260428.P2782804359807714416

/-! ## A260428.P2220609470156092207

`∩[A260427(n+1), A270574(n+1)]`
-/

namespace A260428.P2220609470156092207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260428.P2220609470156092207

/-! ## A260428.P6597720408035543936

`∩[A078505(n+1), A260427(n+1)]`
-/

namespace A260428.P6597720408035543936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260428.P6597720408035543936

/-! ## A260428.P5700138321599512429

`∩[A206075(n+1), A246156(n+1)]`
-/

namespace A260428.P5700138321599512429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260428.P5700138321599512429

/-! ## A260428.P16552351398239231501

`∩[A260427(n+1), A264828(n+1)]`
-/

namespace A260428.P16552351398239231501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260428.P16552351398239231501

/-! ## A260428.P4821808669089840542

`∩[A091212(n+1), A260427(n+1)]`
-/

namespace A260428.P4821808669089840542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260428.P4821808669089840542

/-! ## A260428.P16967063149526189902

`∩[A002808(n+1), A260427(n+1)]`
-/

namespace A260428.P16967063149526189902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260428.P16967063149526189902

/-! ## A260428.P11428613727019610853

`∩[A018252(n+1), A260427(n+1)]`
-/

namespace A260428.P11428613727019610853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260428.P11428613727019610853

/-! ## A260428.P5830916682357659439

`∩[A141468(n+1), A260427(n+1)]`
-/

namespace A260428.P5830916682357659439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260428.P5830916682357659439

/-!
# A260429: Column index to A255545: if n is Lucky number, then a(n) = 1, otherwise a(n) = 1 + the position at the stage where n is removed in the Lucky sieve.

The programs for A260429, there is no canonical definition to state claims against.
-/

/-! ## A260429.P15994316701467008124

`1+A260437(n+1)`
-/

namespace A260429.P15994316701467008124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A260437 (n + 1)

end

end A260429.P15994316701467008124

/-! ## A260429.P9238676228239195241

`A260439(n+1)+char[comp[2*(n+1)]]`
-/

namespace A260429.P9238676228239195241
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260439 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A260429.P9238676228239195241

/-! ## A260429.P14504605751347160894

`A260439(A014681(n)+2)`
-/

namespace A260429.P14504605751347160894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260439 (A014681 n + 2).toNat

end

end A260429.P14504605751347160894

/-! ## A260429.P6834100181560747533

`A260439(A065190(n+1)+1)`
-/

namespace A260429.P6834100181560747533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260439 (A065190 (n + 1) + 1).toNat

end

end A260429.P6834100181560747533

/-! ## A260429.P14897541379313071053

`floor(A260439(n+1)+1/A260438(n+1))`
-/

namespace A260429.P14897541379313071053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A260439 (n + 1) : ℚ) + 1 / (A260438 (n + 1) : ℚ)⌋

end

end A260429.P14897541379313071053

/-! ## A260429.P3893948861613751491

`A260439(2*(A260439(n+1)+A135528(n+1)))`
-/

namespace A260429.P3893948861613751491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260439 (2 * (A260439 (n + 1) + A135528 (n + 1))).toNat

end

end A260429.P3893948861613751491

/-! ## A260429.P1758475234617407696

`A260439(A114112(n+2))`
-/

namespace A260429.P1758475234617407696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260439 (A114112 (n + 2)).toNat

end

end A260429.P1758475234617407696

/-! ## A260429.P1599938194811096839

`floor(A260439(n+1)+A348717(n+1)/A255553(n+1))`
-/

namespace A260429.P1599938194811096839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A260439 (n + 1) : ℚ) + (A348717 (n + 1) : ℚ) / (A255553 (n + 1) : ℚ)⌋

end

end A260429.P1599938194811096839

/-! ## A260429.P9979780316176141582

`A004736(A255546(n+1))`
-/

namespace A260429.P9979780316176141582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A255546 (n + 1)).toNat

end

end A260429.P9979780316176141582

/-! ## A260429.P14278911648465378949

`A002260(A255548(n+1))`
-/

namespace A260429.P14278911648465378949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A255548 (n + 1)).toNat

end

end A260429.P14278911648465378949

/-!
# A260430: Involution of natural numbers: a(1) = 1, a(A257803(1+n)) = A257804(a(n)), a(A257804(n)) = A257803(1+a(n)), where A257803 and A257804 give the positions of odd and even terms in A233271, the infinite trunk of inverted binary beanstalk.

The programs for A260430, there is no canonical definition to state claims against.
-/

/-! ## A260430.P4392359455939665418

`A260434(A260431(n+1))`
-/

namespace A260430.P4392359455939665418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260434 (A260431 (n + 1)).toNat

end

end A260430.P4392359455939665418

/-! ## A260430.P17281147687504772644

`A260432(A260433(n+1))`
-/

namespace A260430.P17281147687504772644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260432 (A260433 (n + 1)).toNat

end

end A260430.P17281147687504772644

/-! ## A260430.P16713378488337065222

`A260432(A054429(A260431(A054429(A054429(n+1)))))`
-/

namespace A260430.P16713378488337065222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260432 (A054429 (A260431 (A054429 (A054429 (n + 1)).toNat).toNat).toNat).toNat

end

end A260430.P16713378488337065222

/-!
# A260431: Permutation of natural numbers: a(1) = 1, a(A257804(n)) = 2*a(n), a(A257803(1+n)) = 1 + 2*a(n), where A257804 and A257803 give the positions of even and odd terms in A233271, the infinite trunk of inverted binary beanstalk.

The programs for A260431, there is no canonical definition to state claims against.
-/

/-! ## A260431.P3798002598555852088

`A054429(A260433(n+1))`
-/

namespace A260431.P3798002598555852088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A260433 (n + 1)).toNat

end

end A260431.P3798002598555852088

/-! ## A260431.P3258274767051447943

`A092569(xor(A057427(n), A260433(n+1)))`
-/

namespace A260431.P3258274767051447943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (Int.xor (A057427 n) (A260433 (n + 1))).toNat

end

end A260431.P3258274767051447943

/-! ## A260431.P1009813855392786469

`A260433(A260430(n+1))`
-/

namespace A260431.P1009813855392786469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260433 (A260430 (n + 1)).toNat

end

end A260431.P1009813855392786469

/-! ## A260431.P15263603323275558966

`A092569(2*A260433(n+1))/2`
-/

namespace A260431.P15263603323275558966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092569 (2 * A260433 (n + 1)).toNat : ℚ) / 2

end

end A260431.P15263603323275558966

/-! ## A260431.P640172463003314548

`A260433(A260432(A260433(A257808(A257804(n+1)))))`
-/

namespace A260431.P640172463003314548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260433 (A260432 (A260433 (A257808 (A257804 (n + 1)).toNat).toNat).toNat).toNat

end

end A260431.P640172463003314548

/-! ## A260431.P17609059518701299731

`A260433(A260432(A260433(A260433(A260434(n+1)))))`
-/

namespace A260431.P17609059518701299731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260433 (A260432 (A260433 (A260433 (A260434 (n + 1)).toNat).toNat).toNat).toNat

end

end A260431.P17609059518701299731

/-! ## A260431.P14909029378283967976

`A260433(A260432(A260433(n+1)))%A000051(n)`
-/

namespace A260431.P14909029378283967976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260433 (A260432 (A260433 (n + 1)).toNat).toNat) (A000051 n)

end

end A260431.P14909029378283967976

/-!
# A260432: Permutation of natural numbers: a(1) = 1, a(2n) = A257804(a(n)), a(2n+1) = A257803(1+a(n)), where A257804 and A257803 give the positions of even and odd terms in A233271, the infinite trunk of inverted binary beanstalk.

The programs for A260432, there is no canonical definition to state claims against.
-/

/-! ## A260432.P3519202841968843715

`A260434(A054429(n+1))`
-/

namespace A260432.P3519202841968843715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260434 (A054429 (n + 1)).toNat

end

end A260432.P3519202841968843715

/-! ## A260432.P14252855185875314345

`A260434(A346306(Δ[n²])/2)`
-/

namespace A260432.P14252855185875314345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260434 (SequenceMachineLib.roundAway ((A346306 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2)).toNat

end

end A260432.P14252855185875314345

/-! ## A260432.P4818201089473311100

`A260434(A004756(n+1)-(2*n+3))`
-/

namespace A260432.P4818201089473311100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260434 (A004756 (n + 1) - (2 * n + 3 : ℤ)).toNat

end

end A260432.P4818201089473311100

/-! ## A260432.P2804666380647113960

`A260434(xor(A086099(n), A086799(n+1)))`
-/

namespace A260432.P2804666380647113960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260434 (Int.xor (A086099 n) (A086799 (n + 1))).toNat

end

end A260432.P2804666380647113960

/-! ## A260432.P7037653432043983219

`A260434(A004754(n+1)-A006257(n+1))`
-/

namespace A260432.P7037653432043983219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260434 (A004754 (n + 1) - A006257 (n + 1)).toNat

end

end A260432.P7037653432043983219

/-! ## A260432.P15284062405091444544

`A260434(A260431(A260434(n+1)))`
-/

namespace A260432.P15284062405091444544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260434 (A260431 (A260434 (n + 1)).toNat).toNat

end

end A260432.P15284062405091444544

/-! ## A260432.P1191831682507818206

`A260430(A260434(n+1))`
-/

namespace A260432.P1191831682507818206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260430 (A260434 (n + 1)).toNat

end

end A260432.P1191831682507818206

/-!
# A260433: Permutation of natural numbers: a(1) = 1, a(A257803(1+n)) = 2*a(n), a(A257804(n)) = 1 + 2*a(n), where A257803 and A257804 give the positions of odd and even terms in A233271, the infinite trunk of inverted binary beanstalk.

The programs for A260433, there is no canonical definition to state claims against.
-/

/-! ## A260433.P8497743495579066291

`A054429(A260431(n+1))`
-/

namespace A260433.P8497743495579066291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A260431 (n + 1)).toNat

end

end A260433.P8497743495579066291

/-! ## A260433.P8628246046328268899

`A092569(xor(A057427(n), A260431(n+1)))`
-/

namespace A260433.P8628246046328268899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (Int.xor (A057427 n) (A260431 (n + 1))).toNat

end

end A260433.P8628246046328268899

/-! ## A260433.P9581808001607341353

`A092569(2*A260431(n+1))/2`
-/

namespace A260433.P9581808001607341353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092569 (2 * A260431 (n + 1)).toNat : ℚ) / 2

end

end A260433.P9581808001607341353

/-! ## A260433.P14304465093852198167

`A054429(A260431(2*n-(n-1))%A000051(n))`
-/

namespace A260433.P14304465093852198167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (Int.tmod (A260431 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) (A000051 n)).toNat

end

end A260433.P14304465093852198167

/-! ## A260433.P17557424676600288854

`A260431(A260430(n+1))`
-/

namespace A260433.P17557424676600288854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260431 (A260430 (n + 1)).toNat

end

end A260433.P17557424676600288854

/-! ## A260433.P13169231816830344056

`A260431(A260434(A260431(A257808(A257804(n+1)))))`
-/

namespace A260433.P13169231816830344056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260431 (A260434 (A260431 (A257808 (A257804 (n + 1)).toNat).toNat).toNat).toNat

end

end A260433.P13169231816830344056

/-! ## A260433.P16453063295089404454

`A260431(A260434(A260431(A260431(A260432(n+1)))))`
-/

namespace A260433.P16453063295089404454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260431 (A260434 (A260431 (A260431 (A260432 (n + 1)).toNat).toNat).toNat).toNat

end

end A260433.P16453063295089404454

/-!
# A260434: Permutation of natural numbers: a(1) = 1, a(2n) = A257803(1+a(n)), a(2n+1) = A257804(a(n)), where A257803 and A257804 give the positions of odd and even terms in A233271, the infinite trunk of inverted binary beanstalk.

The programs for A260434, there is no canonical definition to state claims against.
-/

/-! ## A260434.P6021567800994507976

`A260432(A054429(n+1))`
-/

namespace A260434.P6021567800994507976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260432 (A054429 (n + 1)).toNat

end

end A260434.P6021567800994507976

/-! ## A260434.P9298607087052424188

`A260432(A346306(Δ[n²])/2)`
-/

namespace A260434.P9298607087052424188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260432 (SequenceMachineLib.roundAway ((A346306 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2)).toNat

end

end A260434.P9298607087052424188

/-! ## A260434.P15646972937130452829

`A260432(xor(A086099(n), A086799(n+1)))`
-/

namespace A260434.P15646972937130452829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260432 (Int.xor (A086099 n) (A086799 (n + 1))).toNat

end

end A260434.P15646972937130452829

/-! ## A260434.P13575434125257884601

`A260432(A004754(n+1)-A006257(n+1))`
-/

namespace A260434.P13575434125257884601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260432 (A004754 (n + 1) - A006257 (n + 1)).toNat

end

end A260434.P13575434125257884601

/-! ## A260434.P4300793437151744512

`A260432(A003817(n+1)-A053645(n+1))`
-/

namespace A260434.P4300793437151744512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260432 (A003817 (n + 1) - A053645 (n + 1)).toNat

end

end A260434.P4300793437151744512

/-! ## A260434.P9534719219138022630

`A260432(A260433(A260432(n+1)))`
-/

namespace A260434.P9534719219138022630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260432 (A260433 (A260432 (n + 1)).toNat).toNat

end

end A260434.P9534719219138022630

/-! ## A260434.P4861289399994713182

`A260430(A260432(n+1))`
-/

namespace A260434.P4861289399994713182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260430 (A260432 (n + 1)).toNat

end

end A260434.P4861289399994713182

/-!
# A260435: Permutation mapping from Lucky sieve to Ludic sieve: a(1) = 1, for n > 1: a(n) = A255127(A260438(n), A260439(n)).

The programs for A260435, there is no canonical definition to state claims against.
-/

/-! ## A260435.P17745000061491521135

`A255407(A255554(n+1))`
-/

namespace A260435.P17745000061491521135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A255554 (n + 1)).toNat

end

end A260435.P17745000061491521135

/-! ## A260435.P17649963941705457141

`A269171(A255554(n+1))+A000038(A008778(n))`
-/

namespace A260435.P17649963941705457141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (A255554 (n + 1)).toNat + A000038 (A008778 n).toNat

end

end A260435.P17649963941705457141

/-! ## A260435.P5280395459991863305

`A269171(A255554(n+1))%A337811(2*n+3)`
-/

namespace A260435.P5280395459991863305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269171 (A255554 (n + 1)).toNat) (A337811 (2 * n + 3))

end

end A260435.P5280395459991863305

/-! ## A260435.P2726062005858459210

`A255554(A255408(n+1)%A246279(3*n+2))`
-/

namespace A260435.P2726062005858459210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255554 (Int.tmod (A255408 (n + 1)) (A246279 (3 * n + 2))).toNat

end

end A260435.P2726062005858459210

/-! ## A260435.P852890501619438542

`A255554(A255554(A255408(A255408(A255553(n+1)))))`
-/

namespace A260435.P852890501619438542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255554 (A255554 (A255408 (A255408 (A255553 (n + 1)).toNat).toNat).toNat).toNat

end

end A260435.P852890501619438542

/-!
# A260436: Permutation mapping from Ludic sieve to Lucky sieve: a(1) = 1, for n > 1: a(n) = A255551(A260738(n), A260739(n)).

The programs for A260436, there is no canonical definition to state claims against.
-/

/-! ## A260436.P7264111094963050573

`A255553(A255408(n+1))`
-/

namespace A260436.P7264111094963050573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255553 (A255408 (n + 1)).toNat

end

end A260436.P7264111094963050573

/-! ## A260436.P4984475542090745218

`A255553(A269172(n+1)+A234898(3*n+2)%2)`
-/

namespace A260436.P4984475542090745218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255553 (A269172 (n + 1) + Int.tmod (A234898 (3 * n + 2)) 2).toNat

end

end A260436.P4984475542090745218

/-! ## A260436.P17474226051984568671

`A255553(A269172(n+1))%A016897(A027187(n))`
-/

namespace A260436.P17474226051984568671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255553 (A269172 (n + 1)).toNat) (A016897 (A027187 n).toNat)

end

end A260436.P17474226051984568671

/-!
# A260437: Column index to A255543: if n is Lucky number then a(n) = 0, otherwise a(n) = the position at the stage where n is removed in the Lucky sieve.

The programs for A260437, there is no canonical definition to state claims against.
-/

/-! ## A260437.P14089416409451015245

`A260429(n+1)-1`
-/

namespace A260437.P14089416409451015245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (n + 1) - 1

end

end A260437.P14089416409451015245

/-! ## A260437.P8004515932208070113

`A260439(n+1)-char[2*(n+1)]`
-/

namespace A260437.P8004515932208070113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260439 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A260437.P8004515932208070113

/-! ## A260437.P11037487694274296887

`A023444(A260429(n+1)+1)`
-/

namespace A260437.P11037487694274296887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A260429 (n + 1) + 1).toNat

end

end A260437.P11037487694274296887

/-! ## A260437.P1721283088295457559

`A135528(n+1)+A260439(n+1)-1`
-/

namespace A260437.P1721283088295457559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (n + 1) + (A260439 (n + 1) - 1)

end

end A260437.P1721283088295457559

/-! ## A260437.P11495939304842983364

`(A260429(n+1)+n+1)%A260429(A005843(n+1))`
-/

namespace A260437.P11495939304842983364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260429 (n + 1) + (n + 1 : ℤ)) (A260429 (A005843 (n + 1)).toNat)

end

end A260437.P11495939304842983364

/-! ## A260437.P16111598312461694779

`(A260429(n+1)+n)%A260438(A000959(n+1))`
-/

namespace A260437.P16111598312461694779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260429 (n + 1) + (n : ℤ)) (A260438 (A000959 (n + 1)).toNat)

end

end A260437.P16111598312461694779

/-! ## A260437.P15890975492117166325

`A070198(n)%A260429(n+1)`
-/

namespace A260437.P15890975492117166325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A260429 (n + 1))

end

end A260437.P15890975492117166325

/-! ## A260437.P910358450275134881

`A079782(n+1)%A260429(n+1)`
-/

namespace A260437.P910358450275134881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A260429 (n + 1))

end

end A260437.P910358450275134881

/-! ## A260437.P15467338780026996196

`A083685(n+1)%A260429(n+1)`
-/

namespace A260437.P15467338780026996196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A260429 (n + 1))

end

end A260437.P15467338780026996196

/-! ## A260437.P15851597764512717740

`A121934(n+1)%A260429(n+1)`
-/

namespace A260437.P15851597764512717740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A260429 (n + 1))

end

end A260437.P15851597764512717740

/-! ## A260437.P14787183150988050600

`A004736(A255546(n+1))-1`
-/

namespace A260437.P14787183150988050600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A255546 (n + 1)).toNat - 1

end

end A260437.P14787183150988050600

/-! ## A260437.P16307396219661305942

`A002260(A255548(n+1))-1`
-/

namespace A260437.P16307396219661305942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A255548 (n + 1)).toNat - 1

end

end A260437.P16307396219661305942

/-! ## A260437.P11376821898598626267

`A030494(n+1)%A260429(n+1)`
-/

namespace A260437.P11376821898598626267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A260429 (n + 1))

end

end A260437.P11376821898598626267

/-! ## A260437.P10961460563686204396

`A072828(n+1)%A260429(n+1)`
-/

namespace A260437.P10961460563686204396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A260429 (n + 1))

end

end A260437.P10961460563686204396

/-!
# A260438: Row index to A255545: If n is k-th Lucky number then a(n) = k, otherwise a(n) = number of the stage where n is removed in Lucky sieve.

The programs for A260438, there is no canonical definition to state claims against.
-/

/-! ## A260438.P12668250621914105247

`A260738(A260435(n+1)+A000007(n))`
-/

namespace A260438.P12668250621914105247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (A260435 (n + 1) + A000007 n).toNat

end

end A260438.P12668250621914105247

/-! ## A260438.P11630119279269692563

`A260738(A260435(n+1)+A069517(n+1))`
-/

namespace A260438.P11630119279269692563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (A260435 (n + 1) + A069517 (n + 1)).toNat

end

end A260438.P11630119279269692563

/-! ## A260438.P7432727805971861572

`A260738(A260741(n+1)+A000007(n))`
-/

namespace A260438.P7432727805971861572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (A260741 (n + 1) + A000007 n).toNat

end

end A260438.P7432727805971861572

/-! ## A260438.P9726988696009823447

`A260738(A260741(n+1))^A019426(n)`
-/

namespace A260438.P9726988696009823447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260738 (A260741 (n + 1)).toNat : ℚ) ^ (A019426 n : ℤ)

end

end A260438.P9726988696009823447

/-! ## A260438.P5278811452345404103

`A260738(A260741(n+1))^A019431(n)`
-/

namespace A260438.P5278811452345404103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260738 (A260741 (n + 1)).toNat : ℚ) ^ (A019431 n : ℤ)

end

end A260438.P5278811452345404103

/-! ## A260438.P10953739626622965223

`A260738(A260741(n+1))^A260738(A269385(n))`
-/

namespace A260438.P10953739626622965223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260738 (A260741 (n + 1)).toNat : ℚ) ^ (A260738 (A269385 n).toNat : ℤ)

end

end A260438.P10953739626622965223

/-! ## A260438.P7996679192140558862

`A260738(A260741(n+1))^A260738(A252755(n))`
-/

namespace A260438.P7996679192140558862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260738 (A260741 (n + 1)).toNat : ℚ) ^ (A260738 (A252755 n).toNat : ℤ)

end

end A260438.P7996679192140558862

/-! ## A260438.P10006235288642424250

`A002260(A255552(n+1)-char[A003602(n+1)])`
-/

namespace A260438.P10006235288642424250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A255552 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A260438.P10006235288642424250

/-! ## A260438.P3513156061280062730

`A002260(A255552(n+1)-char[A255553(n+1)])`
-/

namespace A260438.P3513156061280062730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255553 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A255552 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A260438.P3513156061280062730

/-! ## A260438.P14632642771250809603

`A002260(A255546(n+1))`
-/

namespace A260438.P14632642771250809603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A255546 (n + 1)).toNat

end

end A260438.P14632642771250809603

/-! ## A260438.P4043131821407484248

`A002262(A255546(n+1)-1)+1`
-/

namespace A260438.P4043131821407484248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A255546 (n + 1) - 1).toNat + 1

end

end A260438.P4043131821407484248

/-! ## A260438.P3014604648388085340

`A004736(A255548(n+1))`
-/

namespace A260438.P3014604648388085340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A255548 (n + 1)).toNat

end

end A260438.P3014604648388085340

/-! ## A260438.P5428337277433989150

`A002260(A003602(A004280(A255552(n+1))))`
-/

namespace A260438.P5428337277433989150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A003602 (A004280 (A255552 (n + 1)).toNat).toNat).toNat

end

end A260438.P5428337277433989150

/-!
# A260439: Column index to A255551: a(1) = 0; for n > 1: if n is Lucky number then a(n) = 1, otherwise for a(2k) = k, and for odd unlucky numbers, a(n) = 1 + the position at the stage where n is removed in the Lucky sieve.

The programs for A260439, there is no canonical definition to state claims against.
-/

/-! ## A260439.P8071062268869022743

`A260429(n+1)-and(1, n)^n`
-/

namespace A260439.P8071062268869022743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (n + 1) - (Nat.land 1 n ^ n : ℤ)

end

end A260439.P8071062268869022743

/-! ## A260439.P6507793652238875441

`A260437(n+1)+val(∏{p}[n, #], 2)`
-/

namespace A260439.P6507793652238875441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (n + 1) + (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 2 : ℤ)

end

end A260439.P6507793652238875441

/-! ## A260439.P11481711361022804544

`A260429(n+1)-A135528(n+1)`
-/

namespace A260439.P11481711361022804544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (n + 1) - A135528 (n + 1)

end

end A260439.P11481711361022804544

/-! ## A260439.P5356014933586057787

`A260437(n+1)+n²%A109613(n)`
-/

namespace A260439.P5356014933586057787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (n + 1) + Int.tmod (n ^ 2 : ℤ) (A109613 n)

end

end A260439.P5356014933586057787

/-! ## A260439.P10391022196419644650

`A260429(n+1)-A049559(n+1)%2`
-/

namespace A260439.P10391022196419644650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (n + 1) - Int.tmod (A049559 (n + 1)) 2

end

end A260439.P10391022196419644650

/-! ## A260439.P8182446040939780199

`A260437(n+1)+A260438(n+2)%A260438(n+1)`
-/

namespace A260439.P8182446040939780199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (n + 1) + Int.tmod (A260438 (n + 2)) (A260438 (n + 1))

end

end A260439.P8182446040939780199

/-! ## A260439.P6710160481958596648

`A260739(A260435(n+1))%(n+1)`
-/

namespace A260439.P6710160481958596648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260739 (A260435 (n + 1)).toNat) (n + 1 : ℤ)

end

end A260439.P6710160481958596648

/-! ## A260439.P5560488681439615128

`A078898(A255554(n+1))%(n+1)`
-/

namespace A260439.P5560488681439615128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078898 (A255554 (n + 1)).toNat) (n + 1 : ℤ)

end

end A260439.P5560488681439615128

/-! ## A260439.P8483204345315598105

`A078898(char[A078898(n+1)]*A255554(n+1))`
-/

namespace A260439.P8483204345315598105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A255554 (n + 1)).toNat

end

end A260439.P8483204345315598105

/-!
# A260440: Unlucky numbers removed at the stage four of Lucky sieve.

The programs for A260440, the canonical program `A260440.P2776861179369447704` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260440 has offset 1).

The definition of A260440 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260440.P2776861179369447704

`a(n-4)+126` with `a(0)=27, a(1)=57, a(2)=91, a(3)=121`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A260440

/-- `a(n-4)+126` -/
def P2776861179369447704.Spec : Prop :=
  ∀ n, (P2776861179369447704.a n : ℤ) = A260440 (n + 1)

theorem P2776861179369447704.correct : P2776861179369447704.Spec := by
  intro n
  simp only [A260440, Nat.add_sub_cancel]

end A260440

/-! ## A260440.P16255401809170429893

`A269369(A258016(n+1))`
-/

namespace A260440.P16255401809170429893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269369 (A258016 (n + 1)).toNat

end

end A260440.P16255401809170429893

namespace A260440

/-- `A269369(A258016(n+1))` -/
def P16255401809170429893.Spec : Prop :=
  ∀ n, P16255401809170429893.a n = A260440 (n + 1)

end A260440

/-! ## A260440.P16824583627186333398

`A258011(9*(n+1))`
-/

namespace A260440.P16824583627186333398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258011 (9 * (n + 1))

end

end A260440.P16824583627186333398

namespace A260440

/-- `A258011(9*(n+1))` -/
def P16824583627186333398.Spec : Prop :=
  ∀ n, P16824583627186333398.a n = A260440 (n + 1)

end A260440

/-! ## A260440.P5757324179257588441

`A047241(A001651(7*(n+1)))`
-/

namespace A260440.P5757324179257588441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (A001651 (7 * (n + 1))).toNat

end

end A260440.P5757324179257588441

namespace A260440

/-- `A047241(A001651(7*(n+1)))` -/
def P5757324179257588441.Spec : Prop :=
  ∀ n, P5757324179257588441.a n = A260440 (n + 1)

end A260440

/-! ## A260440.P16581698468924995851

`A047235(A047280(3*(n+1)))-1`
-/

namespace A260440.P16581698468924995851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047235 (A047280 (3 * (n + 1))).toNat - 1

end

end A260440.P16581698468924995851

namespace A260440

/-- `A047235(A047280(3*(n+1)))-1` -/
def P16581698468924995851.Spec : Prop :=
  ∀ n, P16581698468924995851.a n = A260440 (n + 1)

end A260440

/-! ## A260440.P6113740629634472019

`A001651(A258016(n+1)+1)-gcd(2, A001651(n+2))`
-/

namespace A260440.P6113740629634472019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A258016 (n + 1) + 1).toNat - (Int.gcd 2 (A001651 (n + 2)) : ℤ)

end

end A260440.P6113740629634472019

namespace A260440

/-- `A001651(A258016(n+1)+1)-gcd(2, A001651(n+2))` -/
def P6113740629634472019.Spec : Prop :=
  ∀ n, P6113740629634472019.a n = A260440 (n + 1)

end A260440

/-! ## A260440.P12911606556717253666

`A260436(A255414(n+2))`
-/

namespace A260440.P12911606556717253666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260436 (A255414 (n + 2)).toNat

end

end A260440.P12911606556717253666

namespace A260440

/-- `A260436(A255414(n+2))` -/
def P12911606556717253666.Spec : Prop :=
  ∀ n, P12911606556717253666.a n = A260440 (n + 1)

end A260440

/-! ## A260440.P17959549845149148566

`A260436(A269379(A269379(A016945(n+1))))`
-/

namespace A260440.P17959549845149148566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260436 (A269379 (A269379 (A016945 (n + 1)).toNat).toNat).toNat

end

end A260440.P17959549845149148566

namespace A260440

/-- `A260436(A269379(A269379(A016945(n+1))))` -/
def P17959549845149148566.Spec : Prop :=
  ∀ n, P17959549845149148566.a n = A260440 (n + 1)

end A260440

/-! ## A260440.P2059644961290249606

`A255553(A084968(n+2))`
-/

namespace A260440.P2059644961290249606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255553 (A084968 (n + 2)).toNat

end

end A260440.P2059644961290249606

namespace A260440

/-- `A255553(A084968(n+2))` -/
def P2059644961290249606.Spec : Prop :=
  ∀ n, P2059644961290249606.a n = A260440 (n + 1)

end A260440

/-! ## A260440.P12252472529420739587

`A255544(C(n+4, 2)+1+n)`
-/

namespace A260440.P12252472529420739587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255544 (Nat.choose (n + 4) 2 + 1 + n)

end

end A260440.P12252472529420739587

namespace A260440

/-- `A255544(C(n+4, 2)+1+n)` -/
def P12252472529420739587.Spec : Prop :=
  ∀ n, P12252472529420739587.a n = A260440 (n + 1)

end A260440

/-! ## A260440.P12840288950302680525

`A255544(A055998(n+2))`
-/

namespace A260440.P12840288950302680525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255544 (A055998 (n + 2)).toNat

end

end A260440.P12840288950302680525

namespace A260440

/-- `A255544(A055998(n+2))` -/
def P12840288950302680525.Spec : Prop :=
  ∀ n, P12840288950302680525.a n = A260440 (n + 1)

end A260440

/-! ## A260440.P6956992551976693497

`A255545(eq[4, A002262(n)])`
-/

namespace A260440.P6956992551976693497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260440.P6956992551976693497

namespace A260440

/-- `A255545(eq[4, A002262(n)])` -/
def P6956992551976693497.Spec : Prop :=
  ∀ n, P6956992551976693497.a n = A260440 (n + 1)

end A260440

/-! ## A260440.P6266812986195460228

`A255543(A167614(n+2)+1)`
-/

namespace A260440.P6266812986195460228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255543 (A167614 (n + 2) + 1).toNat

end

end A260440.P6266812986195460228

namespace A260440

/-- `A255543(A167614(n+2)+1)` -/
def P6266812986195460228.Spec : Prop :=
  ∀ n, P6266812986195460228.a n = A260440 (n + 1)

end A260440

/-! ## A260440.P2849738851140597244

`A255544(A000124(n+4)-4)`
-/

namespace A260440.P2849738851140597244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255544 (A000124 (n + 4) - 4).toNat

end

end A260440.P2849738851140597244

namespace A260440

/-- `A255544(A000124(n+4)-4)` -/
def P2849738851140597244.Spec : Prop :=
  ∀ n, P2849738851140597244.a n = A260440 (n + 1)

end A260440

/-! ## A260440.P5449753960861978011

`A255545(eq[5, A002260(n+1)])`
-/

namespace A260440.P5449753960861978011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260440.P5449753960861978011

namespace A260440

/-- `A255545(eq[5, A002260(n+1)])` -/
def P5449753960861978011.Spec : Prop :=
  ∀ n, P5449753960861978011.a n = A260440 (n + 1)

end A260440

/-! ## A260440.P8798071200382002552

`A255544(A000096(n+2)+n+2)`
-/

namespace A260440.P8798071200382002552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255544 (A000096 (n + 2) + (n + 2 : ℤ)).toNat

end

end A260440.P8798071200382002552

namespace A260440

/-- `A255544(A000096(n+2)+n+2)` -/
def P8798071200382002552.Spec : Prop :=
  ∀ n, P8798071200382002552.a n = A260440 (n + 1)

end A260440

/-! ## A260440.P7643486628863157654

`A255544(A000217(n+3)+n+1)`
-/

namespace A260440.P7643486628863157654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255544 (A000217 (n + 3) + (n + 1 : ℤ)).toNat

end

end A260440.P7643486628863157654

namespace A260440

/-- `A255544(A000217(n+3)+n+1)` -/
def P7643486628863157654.Spec : Prop :=
  ∀ n, P7643486628863157654.a n = A260440 (n + 1)

end A260440

/-! ## A260440.P8036516057025962381

`A255545(eq[5, ceil(A158405(n+1)/2)])`
-/

namespace A260440.P8036516057025962381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158405 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260440.P8036516057025962381

namespace A260440

/-- `A255545(eq[5, ceil(A158405(n+1)/2)])` -/
def P8036516057025962381.Spec : Prop :=
  ∀ n, P8036516057025962381.a n = A260440 (n + 1)

end A260440

/-!
# A260442: Sequence A260443 sorted into ascending order.

The programs for A260442, there is no canonical definition to state claims against.
-/

/-! ## A260442.P7289213810779461652

`filter[A073491(n+1), A389449(#)]`
-/

namespace A260442.P7289213810779461652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A260442.P7289213810779461652

/-! ## A260442.P10595973294763927259

`filter[A253784(n+1), A389449(#)]`
-/

namespace A260442.P10595973294763927259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A260442.P10595973294763927259

/-! ## A260442.P5054354837437889169

`filter[A391909(n+1), A389449(#)]`
-/

namespace A260442.P5054354837437889169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A260442.P5054354837437889169

/-! ## A260442.P17267010233378830624

`filter[A042968(n+1), A389449(#)]`
-/

namespace A260442.P17267010233378830624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A260442.P17267010233378830624

/-! ## A260442.P9842032731992072192

`filter[A253567(n+1), A389449(#)]`
-/

namespace A260442.P9842032731992072192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A260442.P9842032731992072192

/-! ## A260442.P4204562402895050740

`filter[A119316(n+1), A389449(#)]`
-/

namespace A260442.P4204562402895050740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A260442.P4204562402895050740

/-! ## A260442.P14622038642352418663

`filter[A359794(n+1), A389449(#)]`
-/

namespace A260442.P14622038642352418663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A260442.P14622038642352418663

/-! ## A260442.P13092671351548821026

`filter[A207481(n+1), A389449(#)]`
-/

namespace A260442.P13092671351548821026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A260442.P13092671351548821026

/-! ## A260442.P16525199132827835806

`filter[A047592(n+1), A389449(#)]`
-/

namespace A260442.P16525199132827835806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A260442.P16525199132827835806

/-! ## A260442.P6144866784527551547

`filter[A212167(n+1), A389449(#)]`
-/

namespace A260442.P6144866784527551547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A260442.P6144866784527551547

/-! ## A260442.P1948937763517906868

`filter[A168186(n+1), A389449(#)]`
-/

namespace A260442.P1948937763517906868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A260442.P1948937763517906868

/-! ## A260442.P12149697757195663422

`filter[A046100(n+1), A389449(#)]`
-/

namespace A260442.P12149697757195663422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A260442.P12149697757195663422

/-! ## A260442.P10195959779447945553

`filter[A115063(n+1), A389449(#)]`
-/

namespace A260442.P10195959779447945553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A260442.P10195959779447945553

/-! ## A260442.P7782013739449800243

`filter[A110303(n+1), A389449(#)]`
-/

namespace A260442.P7782013739449800243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A260442.P7782013739449800243

/-! ## A260442.P6914377426620984425

`filter[A175082(n+1), A389449(#)]`
-/

namespace A260442.P6914377426620984425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A260442.P6914377426620984425

/-! ## A260442.P5678144906778578804

`filter[A164514(n+1), A389449(#)]`
-/

namespace A260442.P5678144906778578804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A260442.P5678144906778578804

/-! ## A260442.P13910896786928309040

`filter[A171521(n+1), A389449(#)]`
-/

namespace A260442.P13910896786928309040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A260442.P13910896786928309040

/-! ## A260442.P5124456450386291178

`filter[A068937(n+1), A389449(#)]`
-/

namespace A260442.P5124456450386291178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A260442.P5124456450386291178

/-! ## A260442.P16008160668053482967

`filter[n+1, A389449(#)]`
-/

namespace A260442.P16008160668053482967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j) = 1) n)

end

end A260442.P16008160668053482967

/-!
# A260443: Prime factorization representation of Stern polynomials: a(0) = 1, a(1) = 2, a(2n) = A003961(a(n)), a(2n+1) = a(n)*a(n+1).

The programs for A260443, there is no canonical definition to state claims against.
-/

/-! ## A260443.P8205006379763074650

`∑[A277197(abs(1-n))]`
-/

namespace A260443.P8205006379763074650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277197 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260443.P8205006379763074650

/-! ## A260443.P11348862442430060362

`A277197(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A260443.P11348862442430060362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A277197 (n - 1) + a (n - 1)

end

end A260443.P11348862442430060362

/-! ## A260443.P5880171384120026124

`A277330(n)*A283989(n)`
-/

namespace A260443.P5880171384120026124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 n * A283989 n

end

end A260443.P5880171384120026124

/-! ## A260443.P3931804171579629109

`A284553(n)*A284554(n)`
-/

namespace A260443.P3931804171579629109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284553 n * A284554 n

end

end A260443.P3931804171579629109

/-! ## A260443.P734293852672205456

`A283983(n)²*A277330(n)`
-/

namespace A260443.P734293852672205456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283983 n ^ 2 * A277330 n

end

end A260443.P734293852672205456

/-! ## A260443.P17969559572716605284

`∑[A277197(n)]+1-A277197(n)`
-/

namespace A260443.P17969559572716605284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A277197 n)

end

end A260443.P17969559572716605284

/-! ## A260443.P7034722009902383642

`A277324(n-1)/a(n-1)` with `a(0)=1`
-/

namespace A260443.P7034722009902383642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A277324 (n - 1) : ℚ) / a (n - 1)

end

end A260443.P7034722009902383642

/-!
# A260444: Infinite palindromic word (a(1),a(2),a(3),...) with initial word w(1) = (1,0,0) and midword sequence (a(n)); see A260390.

The programs for A260444, there is no canonical definition to state claims against.
-/

/-! ## A260444.P17240132082945729410

`∑{e}[and(n-1, -(n+3)), #]%2`
-/

namespace A260444.P17240132082945729410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) (-(n + 3 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) % 2

end

end A260444.P17240132082945729410

/-! ## A260444.P12784470811716041263

`and(1, ∑{e}[and(n-1, -(n+3)), #])`
-/

namespace A260444.P12784470811716041263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) (-(n + 3 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A260444.P12784470811716041263

/-! ## A260444.P13470169206782297358

`1-A260394(n+1)`
-/

namespace A260444.P13470169206782297358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A260394 (n + 1)

end

end A260444.P13470169206782297358

/-! ## A260444.P12310480043930615947

`3%A260451(n+1)`
-/

namespace A260444.P12310480043930615947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A260451 (n + 1))

end

end A260444.P12310480043930615947

/-! ## A260444.P6703826336152640349

`4%A260453(n+1)`
-/

namespace A260444.P6703826336152640349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A260453 (n + 1))

end

end A260444.P6703826336152640349

/-! ## A260444.P17046971425227313728

`val(A260452(n+1), 2)`
-/

namespace A260444.P17046971425227313728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A260452 (n + 1)).toNat 2

end

end A260444.P17046971425227313728

/-! ## A260444.P905020010584078421

`val(A260454(n+1), 3)`
-/

namespace A260444.P905020010584078421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A260454 (n + 1)).toNat 3

end

end A260444.P905020010584078421

/-! ## A260444.P13583015296032696150

`round(acot(A260450(n+1)))`
-/

namespace A260444.P13583015296032696150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A260450 (n + 1) : ℝ))

end

end A260444.P13583015296032696150

/-! ## A260444.P14595766088404733355

`floor(1/A260449(n+1))`
-/

namespace A260444.P14595766088404733355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A260449 (n + 1) : ℚ)⌋

end

end A260444.P14595766088404733355

/-! ## A260444.P9352585286005768851

`A001998(n)%A260454(n+1)`
-/

namespace A260444.P9352585286005768851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001998 n) (A260454 (n + 1))

end

end A260444.P9352585286005768851

/-!
# A260445: Infinite palindromic word (a(1),a(2),a(3),...) with initial word w(1) = (0,0,1) and midword sequence (a(n)); see Comments.

The programs for A260445, there is no canonical definition to state claims against.
-/

/-! ## A260445.P12609340818050227187

`1-A260397(n+1)`
-/

namespace A260445.P12609340818050227187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A260397 (n + 1)

end

end A260445.P12609340818050227187

/-! ## A260445.P16550436194040577494

`3%A260450(n+1)`
-/

namespace A260445.P16550436194040577494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A260450 (n + 1))

end

end A260445.P16550436194040577494

/-! ## A260445.P15856401788234700513

`4%A260449(n+1)`
-/

namespace A260445.P15856401788234700513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A260449 (n + 1))

end

end A260445.P15856401788234700513

/-! ## A260445.P6859816344542563753

`val(A260453(n+1), 2)`
-/

namespace A260445.P6859816344542563753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A260453 (n + 1)).toNat 2

end

end A260445.P6859816344542563753

/-! ## A260445.P10321123139071475911

`val(A260452(n+1), 3)`
-/

namespace A260445.P10321123139071475911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A260452 (n + 1)).toNat 3

end

end A260445.P10321123139071475911

/-! ## A260445.P7404053122710706506

`floor(1/A260451(n+1))`
-/

namespace A260445.P7404053122710706506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A260451 (n + 1) : ℚ)⌋

end

end A260445.P7404053122710706506

/-! ## A260445.P14162697480766263002

`floor(1/A260454(n+1))`
-/

namespace A260445.P14162697480766263002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A260454 (n + 1) : ℚ)⌋

end

end A260445.P14162697480766263002

/-! ## A260445.P11779260799407312254

`A260394(n+1)-A260446(n+1)`
-/

namespace A260445.P11779260799407312254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260394 (n + 1) - A260446 (n + 1)

end

end A260445.P11779260799407312254

/-! ## A260445.P441644892982569959

`A035263(n+1)*A260394(n+1)`
-/

namespace A260445.P441644892982569959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) * A260394 (n + 1)

end

end A260445.P441644892982569959

/-! ## A260445.P11444483612922681523

`A259599(n+1)*A260394(n+1)`
-/

namespace A260445.P11444483612922681523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259599 (n + 1) * A260394 (n + 1)

end

end A260445.P11444483612922681523

/-! ## A260445.P6696122204537689731

`(1-A096268(n))*A260394(n+1)`
-/

namespace A260445.P6696122204537689731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A096268 n) * A260394 (n + 1)

end

end A260445.P6696122204537689731

/-! ## A260445.P1010768716861910893

`and(1, A260450(n+1)+A000328(n))`
-/

namespace A260445.P1010768716861910893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A260450 (n + 1) + A000328 n)

end

end A260445.P1010768716861910893

/-! ## A260445.P956226239010048390

`and(1, A260453(n+1)+A000328(n))`
-/

namespace A260445.P956226239010048390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A260453 (n + 1) + A000328 n)

end

end A260445.P956226239010048390

/-! ## A260445.P15021750072169372962

`and(A001511(n+1), A260394(n+1))`
-/

namespace A260445.P15021750072169372962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001511 (n + 1)) (A260394 (n + 1))

end

end A260445.P15021750072169372962

/-! ## A260445.P8394329303457221088

`and(1, A260450(n+1)+A001513(n))`
-/

namespace A260445.P8394329303457221088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A260450 (n + 1) + A001513 n)

end

end A260445.P8394329303457221088

/-! ## A260445.P3757605236555296189

`and(1, A260453(n+1)+A001513(n))`
-/

namespace A260445.P3757605236555296189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A260453 (n + 1) + A001513 n)

end

end A260445.P3757605236555296189

/-! ## A260445.P10144629341780436648

`and(1, A260450(n+1)+A001535(n))`
-/

namespace A260445.P10144629341780436648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A260450 (n + 1) + A001535 n)

end

end A260445.P10144629341780436648

/-! ## A260445.P18303179388274182959

`and(1, A260453(n+1)+A001535(n))`
-/

namespace A260445.P18303179388274182959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A260453 (n + 1) + A001535 n)

end

end A260445.P18303179388274182959

/-! ## A260445.P366476569081574052

`and(1, A260450(n+1)+A001546(n))`
-/

namespace A260445.P366476569081574052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A260450 (n + 1) + A001546 n)

end

end A260445.P366476569081574052

/-! ## A260445.P12577599606775704601

`and(1, A260453(n+1)+A001546(n))`
-/

namespace A260445.P12577599606775704601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A260453 (n + 1) + A001546 n)

end

end A260445.P12577599606775704601

/-!
# A260446: Infinite palindromic word (a(1),a(2),a(3),...) with initial word w(1) = (0,1,0) and midword sequence (a(n)); see Comments.

The programs for A260446, there is no canonical definition to state claims against.
-/

/-! ## A260446.P5459841377965521735

`1-A259599(n+1)`
-/

namespace A260446.P5459841377965521735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A259599 (n + 1)

end

end A260446.P5459841377965521735

/-! ## A260446.P1369421037182869214

`3%A260449(n+1)`
-/

namespace A260446.P1369421037182869214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A260449 (n + 1))

end

end A260446.P1369421037182869214

/-! ## A260446.P15189962569714995636

`4%A260450(n+1)`
-/

namespace A260446.P15189962569714995636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A260450 (n + 1))

end

end A260446.P15189962569714995636

/-! ## A260446.P17881311000431668294

`val(A260454(n+1), 2)`
-/

namespace A260446.P17881311000431668294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A260454 (n + 1)).toNat 2

end

end A260446.P17881311000431668294

/-! ## A260446.P4116162836567415829

`val(A260451(n+1), 3)`
-/

namespace A260446.P4116162836567415829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A260451 (n + 1)).toNat 3

end

end A260446.P4116162836567415829

/-! ## A260446.P5458037603600851175

`floor(1/A260452(n+1))`
-/

namespace A260446.P5458037603600851175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A260452 (n + 1) : ℚ)⌋

end

end A260446.P5458037603600851175

/-! ## A260446.P8666323274434830988

`floor(1/A260453(n+1))`
-/

namespace A260446.P8666323274434830988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A260453 (n + 1) : ℚ)⌋

end

end A260446.P8666323274434830988

/-! ## A260446.P7965711711177092660

`A096268(n)*A260394(n+1)`
-/

namespace A260446.P7965711711177092660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 n * A260394 (n + 1)

end

end A260446.P7965711711177092660

/-! ## A260446.P6604663919134475037

`A260394(n+1)-A260445(n+1)`
-/

namespace A260446.P6604663919134475037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260394 (n + 1) - A260445 (n + 1)

end

end A260446.P6604663919134475037

/-! ## A260446.P407287358774648508

`and(1, A260449(n+1)+A008379(n))`
-/

namespace A260446.P407287358774648508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A260449 (n + 1) + A008379 n)

end

end A260446.P407287358774648508

/-! ## A260446.P9274506844126763023

`and(1, A260454(n+1)+A008379(n))`
-/

namespace A260446.P9274506844126763023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A260454 (n + 1) + A008379 n)

end

end A260446.P9274506844126763023

/-! ## A260446.P9595344862937810938

`and(1, A260449(n+1)+A016760(n))`
-/

namespace A260446.P9595344862937810938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A260449 (n + 1) + A016760 n)

end

end A260446.P9595344862937810938

/-! ## A260446.P13934303025407134343

`and(1, A260454(n+1)+A016760(n))`
-/

namespace A260446.P13934303025407134343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A260454 (n + 1) + A016760 n)

end

end A260446.P13934303025407134343

/-! ## A260446.P10903609711680288745

`and(1, A260449(n+1)+A016819(n))`
-/

namespace A260446.P10903609711680288745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A260449 (n + 1) + A016819 n)

end

end A260446.P10903609711680288745

/-! ## A260446.P2154296390423019241

`and(1, A260454(n+1)+A016819(n))`
-/

namespace A260446.P2154296390423019241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A260454 (n + 1) + A016819 n)

end

end A260446.P2154296390423019241

/-! ## A260446.P13801420286887503446

`and(1, A260449(n+1)+A017286(n))`
-/

namespace A260446.P13801420286887503446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A260449 (n + 1) + A017286 n)

end

end A260446.P13801420286887503446

/-! ## A260446.P2427735516798558896

`and(1, A260454(n+1)+A017286(n))`
-/

namespace A260446.P2427735516798558896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A260454 (n + 1) + A017286 n)

end

end A260446.P2427735516798558896

/-! ## A260446.P11047228524562182625

`and(1, A260449(n+1)+A017310(n))`
-/

namespace A260446.P11047228524562182625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A260449 (n + 1) + A017310 n)

end

end A260446.P11047228524562182625

/-! ## A260446.P7545511405802432103

`and(1, A260454(n+1)+A017310(n))`
-/

namespace A260446.P7545511405802432103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A260454 (n + 1) + A017310 n)

end

end A260446.P7545511405802432103

/-!
# A260448: Denominators in the asymptotic expansion of the Barnes G-function.

The programs for A260448, there is no canonical definition to state claims against.
-/

/-! ## A260448.P9563256976682571876

`A289132(A166754(n))`
-/

namespace A260448.P9563256976682571876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289132 (A166754 n).toNat

end

end A260448.P9563256976682571876

/-!
# A260449: Infinite palindromic word (a(1),a(2),a(3),...) with initial word w(1) = (1,2,3) and midword sequence (a(n)); see Comments.

The programs for A260449, there is no canonical definition to state claims against.
-/

/-! ## A260449.P15206844805548035724

`4-A260454(n+1)`
-/

namespace A260449.P15206844805548035724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A260454 (n + 1)

end

end A260449.P15206844805548035724

/-! ## A260449.P7749648279630422760

`xor(1, C(A260452(n+1), 2))+1`
-/

namespace A260449.P7749648279630422760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.choose (A260452 (n + 1)).toNat 2) + 1

end

end A260449.P7749648279630422760

/-! ## A260449.P8003415923563186084

`A260451(a(A260451(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A260449.P8003415923563186084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A260451 (a (A260451 (n + 1)).toNat).toNat

end

end A260449.P8003415923563186084

/-! ## A260449.P4019467972547305688

`xor(A260394(n+1), A260450(n+1))`
-/

namespace A260449.P4019467972547305688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A260394 (n + 1)) (A260450 (n + 1))

end

end A260449.P4019467972547305688

/-! ## A260449.P3404567919385479980

`xor(A260451(n+1), A260453(n+1))`
-/

namespace A260449.P3404567919385479980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A260451 (n + 1)) (A260453 (n + 1))

end

end A260449.P3404567919385479980

/-! ## A260449.P7651347974995598008

`A260450(xor(n, xor(n, A260450(n+1))))`
-/

namespace A260449.P7651347974995598008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260450 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A260450 (n + 1)))).toNat

end

end A260449.P7651347974995598008

/-! ## A260449.P5476219162370222341

`A260452(xor(n, xor(n, A260452(n+1))))`
-/

namespace A260449.P5476219162370222341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A260452 (n + 1)))).toNat

end

end A260449.P5476219162370222341

/-! ## A260449.P9958083207246636498

`A260454(xor(n, xor(n, A260454(n+1))))`
-/

namespace A260449.P9958083207246636498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260454 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A260454 (n + 1)))).toNat

end

end A260449.P9958083207246636498

/-! ## A260449.P1013230195604948130

`A260394(n+1)+A260445(n+1)+1`
-/

namespace A260449.P1013230195604948130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260394 (n + 1) + (A260445 (n + 1) + 1)

end

end A260449.P1013230195604948130

/-! ## A260449.P5061891109113169473

`A260394(n+1)+2-A260397(n+1)`
-/

namespace A260449.P5061891109113169473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260394 (n + 1) + (2 - A260397 (n + 1))

end

end A260449.P5061891109113169473

/-! ## A260449.P2722136312541346351

`A260450(n+1)+A260452(n+1)-2`
-/

namespace A260449.P2722136312541346351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260450 (n + 1) + (A260452 (n + 1) - 2)

end

end A260449.P2722136312541346351

/-! ## A260449.P9260764617980461123

`A260452(n+1)+2-A260453(n+1)`
-/

namespace A260449.P9260764617980461123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 (n + 1) + (2 - A260453 (n + 1))

end

end A260449.P9260764617980461123

/-! ## A260449.P1604451241383473959

`A259599(n+1)+2*A260394(n+1)`
-/

namespace A260449.P1604451241383473959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259599 (n + 1) + 2 * A260394 (n + 1)

end

end A260449.P1604451241383473959

/-! ## A260449.P13576140152401137330

`A259599(n+1)+and(2, A260450(n+1))`
-/

namespace A260449.P13576140152401137330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259599 (n + 1) + Int.land 2 (A260450 (n + 1))

end

end A260449.P13576140152401137330

/-! ## A260449.P1712245734443234725

`A260397(n+1)+xor(2, A260451(n+1))`
-/

namespace A260449.P1712245734443234725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260397 (n + 1) + Int.xor 2 (A260451 (n + 1))

end

end A260449.P1712245734443234725

/-! ## A260449.P5297140197813281807

`A260450(and(A317466(n)-1, A260450(n+1)))`
-/

namespace A260449.P5297140197813281807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260450 (Int.land (A317466 n - 1) (A260450 (n + 1))).toNat

end

end A260449.P5297140197813281807

/-! ## A260449.P16253078889143448109

`A260450(and(A000328(n)-2, A260450(n+1)))`
-/

namespace A260449.P16253078889143448109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260450 (Int.land (A000328 n - 2) (A260450 (n + 1))).toNat

end

end A260449.P16253078889143448109

/-! ## A260449.P11252909925385623897

`A260452(and(A000328(n)-2, A260452(n+1)))`
-/

namespace A260449.P11252909925385623897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 (Int.land (A000328 n - 2) (A260452 (n + 1))).toNat

end

end A260449.P11252909925385623897

/-! ## A260449.P17704910957195725988

`A260450(and(A001513(n)-2, A260450(n+1)))`
-/

namespace A260449.P17704910957195725988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260450 (Int.land (A001513 n - 2) (A260450 (n + 1))).toNat

end

end A260449.P17704910957195725988

/-! ## A260449.P12116603651907060149

`A260452(and(A001513(n)-2, A260452(n+1)))`
-/

namespace A260449.P12116603651907060149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 (Int.land (A001513 n - 2) (A260452 (n + 1))).toNat

end

end A260449.P12116603651907060149

/-!
# A260450: Infinite palindromic word (a(1),a(2),a(3),...) with initial word w(1) = (1,3,2) and midword sequence (a(n)); see Comments.

The programs for A260450, there is no canonical definition to state claims against.
-/

/-! ## A260450.P14304302101890430741

`4-A260453(n+1)`
-/

namespace A260450.P14304302101890430741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A260453 (n + 1)

end

end A260450.P14304302101890430741

/-! ## A260450.P4427193026590213364

`lcm(2, A260449(n+1)+1)/2`
-/

namespace A260450.P4427193026590213364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A260449 (n + 1) + 1) : ℚ) / 2

end

end A260450.P4427193026590213364

/-! ## A260450.P17465316854082972908

`xor(A260394(n+1), A260449(n+1))`
-/

namespace A260450.P17465316854082972908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A260394 (n + 1)) (A260449 (n + 1))

end

end A260450.P17465316854082972908

/-! ## A260450.P11151058151675943880

`xor(A260452(n+1), A260454(n+1))`
-/

namespace A260450.P11151058151675943880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A260452 (n + 1)) (A260454 (n + 1))

end

end A260450.P11151058151675943880

/-! ## A260450.P5167448780912038103

`A131165(lcm((-1)^n, A260449(n+1)))`
-/

namespace A260450.P5167448780912038103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131165 (Int.lcm ((-1) ^ n) (A260449 (n + 1)))

end

end A260450.P5167448780912038103

/-! ## A260450.P18440931050351332782

`A260394(n+1)+A260446(n+1)+1`
-/

namespace A260450.P18440931050351332782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260394 (n + 1) + (A260446 (n + 1) + 1)

end

end A260450.P18440931050351332782

/-! ## A260450.P8794852851641942485

`A260394(n+1)+2-A259599(n+1)`
-/

namespace A260450.P8794852851641942485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260394 (n + 1) + (2 - A259599 (n + 1))

end

end A260450.P8794852851641942485

/-! ## A260450.P2137968785633715656

`A260449(n+1)+A260451(n+1)-2`
-/

namespace A260450.P2137968785633715656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260449 (n + 1) + (A260451 (n + 1) - 2)

end

end A260450.P2137968785633715656

/-! ## A260450.P15079905980990087519

`A260397(n+1)+2*A260394(n+1)`
-/

namespace A260450.P15079905980990087519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260397 (n + 1) + 2 * A260394 (n + 1)

end

end A260450.P15079905980990087519

/-! ## A260450.P574588466420120866

`A260397(n+1)+and(2, A260449(n+1))`
-/

namespace A260450.P574588466420120866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260397 (n + 1) + Int.land 2 (A260449 (n + 1))

end

end A260450.P574588466420120866

/-! ## A260450.P8260538409861589576

`A259599(n+1)+xor(2, A260452(n+1))`
-/

namespace A260450.P8260538409861589576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259599 (n + 1) + Int.xor 2 (A260452 (n + 1))

end

end A260450.P8260538409861589576

/-! ## A260450.P17915036815614434001

`A260397(n+1)+A260449(n+1)-A259599(n+1)`
-/

namespace A260450.P17915036815614434001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260397 (n + 1) + (A260449 (n + 1) - A259599 (n + 1))

end

end A260450.P17915036815614434001

/-! ## A260450.P3345523153083909697

`A332491(A260452(n+1)-A260438(2*(n+2)))`
-/

namespace A260450.P3345523153083909697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332491 (A260452 (n + 1) - A260438 (2 * (n + 2))).toNat

end

end A260450.P3345523153083909697

/-! ## A260450.P2619990409768554584

`A260452((A017221(n)-n)*A260452(n+1))`
-/

namespace A260450.P2619990409768554584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 ((A017221 n - (n : ℤ)) * A260452 (n + 1)).toNat

end

end A260450.P2619990409768554584

/-! ## A260450.P17349338234514665334

`A260452((A158057(n)+2)*A260452(n+1))`
-/

namespace A260450.P17349338234514665334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 ((A158057 n + 2) * A260452 (n + 1)).toNat

end

end A260450.P17349338234514665334

/-! ## A260450.P337915777034152083

`A260452(A316490(n)+A260452(n+1))`
-/

namespace A260450.P337915777034152083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 (A316490 n + A260452 (n + 1)).toNat

end

end A260450.P337915777034152083

/-!
# A260451: Infinite palindromic word (a(1),a(2),a(3),...) with initial word w(1) = (2,3,1) and midword sequence (a(n)); see Comments.

The programs for A260451, there is no canonical definition to state claims against.
-/

/-! ## A260451.P4474582937900533566

`4-A260452(n+1)`
-/

namespace A260451.P4474582937900533566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A260452 (n + 1)

end

end A260451.P4474582937900533566

/-! ## A260451.P1738159035702980946

`A260449(n+1)%3+1`
-/

namespace A260451.P1738159035702980946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260449 (n + 1)) 3 + 1

end

end A260451.P1738159035702980946

/-! ## A260451.P14294075137647688189

`3-A260450(n+1)%3`
-/

namespace A260451.P14294075137647688189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.tmod (A260450 (n + 1)) 3

end

end A260451.P14294075137647688189

/-! ## A260451.P15093062288598475686

`xor(A260397(n+1), A260454(n+1))`
-/

namespace A260451.P15093062288598475686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A260397 (n + 1)) (A260454 (n + 1))

end

end A260451.P15093062288598475686

/-! ## A260451.P7341350627971394305

`xor(A260449(n+1), A260453(n+1))`
-/

namespace A260451.P7341350627971394305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A260449 (n + 1)) (A260453 (n + 1))

end

end A260451.P7341350627971394305

/-! ## A260451.P15793397673225606948

`A260452(xor(n, xor(n, A260450(n+1))))`
-/

namespace A260451.P15793397673225606948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A260450 (n + 1)))).toNat

end

end A260451.P15793397673225606948

/-! ## A260451.P6366156346223459962

`A260454(xor(n, xor(n, A260452(n+1))))`
-/

namespace A260451.P6366156346223459962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260454 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A260452 (n + 1)))).toNat

end

end A260451.P6366156346223459962

/-! ## A260451.P11662293787358702616

`A260453(xor(n, xor(n, A260453(n+1))))`
-/

namespace A260451.P11662293787358702616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260453 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A260453 (n + 1)))).toNat

end

end A260451.P11662293787358702616

/-! ## A260451.P6918917611410911801

`A260450(xor(n, xor(n, A260454(n+1))))`
-/

namespace A260451.P6918917611410911801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260450 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A260454 (n + 1)))).toNat

end

end A260451.P6918917611410911801

/-! ## A260451.P11389199150062641857

`A260397(n+1)+A260446(n+1)+1`
-/

namespace A260451.P11389199150062641857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260397 (n + 1) + (A260446 (n + 1) + 1)

end

end A260451.P11389199150062641857

/-! ## A260451.P3483345592175003058

`A260397(n+1)+2-A259599(n+1)`
-/

namespace A260451.P3483345592175003058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260397 (n + 1) + (2 - A259599 (n + 1))

end

end A260451.P3483345592175003058

/-! ## A260451.P1818464385746311498

`A260397(n+1)*A260449(n+1)+1`
-/

namespace A260451.P1818464385746311498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260397 (n + 1) * A260449 (n + 1) + 1

end

end A260451.P1818464385746311498

/-! ## A260451.P15179720820948678730

`A260450(n+1)+A260454(n+1)-2`
-/

namespace A260451.P15179720820948678730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260450 (n + 1) + (A260454 (n + 1) - 2)

end

end A260451.P15179720820948678730

/-! ## A260451.P8763351128406076226

`A260394(n+1)+2*A260397(n+1)`
-/

namespace A260451.P8763351128406076226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260394 (n + 1) + 2 * A260397 (n + 1)

end

end A260451.P8763351128406076226

/-! ## A260451.P2520470240584022805

`A260453(and(A000328(n)-2, A260453(n+1)))`
-/

namespace A260451.P2520470240584022805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260453 (Int.land (A000328 n - 2) (A260453 (n + 1))).toNat

end

end A260451.P2520470240584022805

/-! ## A260451.P7756332244596034514

`A260453(and(A001513(n)-2, A260453(n+1)))`
-/

namespace A260451.P7756332244596034514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260453 (Int.land (A001513 n - 2) (A260453 (n + 1))).toNat

end

end A260451.P7756332244596034514

/-! ## A260451.P1886280612382540088

`A260453(and(A001535(n)-2, A260453(n+1)))`
-/

namespace A260451.P1886280612382540088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260453 (Int.land (A001535 n - 2) (A260453 (n + 1))).toNat

end

end A260451.P1886280612382540088

/-! ## A260451.P11526297037187391571

`A260453(and(A001546(n)-2, A260453(n+1)))`
-/

namespace A260451.P11526297037187391571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260453 (Int.land (A001546 n - 2) (A260453 (n + 1))).toNat

end

end A260451.P11526297037187391571

/-! ## A260451.P10196084200755420958

`A260453(and(A001844(n)-2, A260453(n+1)))`
-/

namespace A260451.P10196084200755420958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260453 (Int.land (A001844 n - 2) (A260453 (n + 1))).toNat

end

end A260451.P10196084200755420958

/-! ## A260451.P13905858536867275629

`A260453(and(A016760(n)-2, A260453(n+1)))`
-/

namespace A260451.P13905858536867275629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260453 (Int.land (A016760 n - 2) (A260453 (n + 1))).toNat

end

end A260451.P13905858536867275629

/-!
# A260452: Infinite palindromic word (a(1),a(2),a(3),...) with initial word w(1) = (2,1,3) and midword sequence (a(n)); see Comments.

The programs for A260452, there is no canonical definition to state claims against.
-/

/-! ## A260452.P10517732288163073010

`4-A260451(n+1)`
-/

namespace A260452.P10517732288163073010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A260451 (n + 1)

end

end A260452.P10517732288163073010

/-! ## A260452.P6291080562729268114

`A260450(n+1)%3+1`
-/

namespace A260452.P6291080562729268114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260450 (n + 1)) 3 + 1

end

end A260452.P6291080562729268114

/-! ## A260452.P10079002333930771871

`val(A260449(n+1)+1, 2)+1`
-/

namespace A260452.P10079002333930771871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A260449 (n + 1) + 1).toNat 2 + 1

end

end A260452.P10079002333930771871

/-! ## A260452.P14079669468970063409

`xor(A259599(n+1), A260453(n+1))`
-/

namespace A260452.P14079669468970063409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A259599 (n + 1)) (A260453 (n + 1))

end

end A260452.P14079669468970063409

/-! ## A260452.P2894139743900268220

`xor(A260450(n+1), A260454(n+1))`
-/

namespace A260452.P2894139743900268220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A260450 (n + 1)) (A260454 (n + 1))

end

end A260452.P2894139743900268220

/-! ## A260452.P4979463549574187979

`A260454(a(A260454(n+1)))` with `a(0)=2, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A260452.P4979463549574187979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3, 2] fun n a =>
  A260454 (a (A260454 (n + 1)).toNat).toNat

end

end A260452.P4979463549574187979

/-! ## A260452.P16924875480710388577

`A259599(n+1)+A260445(n+1)+1`
-/

namespace A260452.P16924875480710388577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259599 (n + 1) + (A260445 (n + 1) + 1)

end

end A260452.P16924875480710388577

/-! ## A260452.P16972706745893694183

`A259599(n+1)+2-A260397(n+1)`
-/

namespace A260452.P16972706745893694183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259599 (n + 1) + (2 - A260397 (n + 1))

end

end A260452.P16972706745893694183

/-! ## A260452.P2636904083620678899

`A259599(n+1)*A260450(n+1)+1`
-/

namespace A260452.P2636904083620678899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259599 (n + 1) * A260450 (n + 1) + 1

end

end A260452.P2636904083620678899

/-! ## A260452.P721849006375656263

`A260449(n+1)+A260453(n+1)-2`
-/

namespace A260452.P721849006375656263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260449 (n + 1) + (A260453 (n + 1) - 2)

end

end A260452.P721849006375656263

/-! ## A260452.P2167507143792541229

`A260394(n+1)+2*A259599(n+1)`
-/

namespace A260452.P2167507143792541229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260394 (n + 1) + 2 * A259599 (n + 1)

end

end A260452.P2167507143792541229

/-! ## A260452.P14039517882154680274

`A260397(n+1)+xor(2, A260454(n+1))`
-/

namespace A260452.P14039517882154680274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260397 (n + 1) + Int.xor 2 (A260454 (n + 1))

end

end A260452.P14039517882154680274

/-! ## A260452.P12942269151048035590

`A260397(n+1)+A259599(n+1)*A260449(n+1)`
-/

namespace A260452.P12942269151048035590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260397 (n + 1) + A259599 (n + 1) * A260449 (n + 1)

end

end A260452.P12942269151048035590

/-! ## A260452.P8417358338078225330

`A260450(A260450(n+1)+2*A111284(n+1))`
-/

namespace A260452.P8417358338078225330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260450 (A260450 (n + 1) + 2 * A111284 (n + 1)).toNat

end

end A260452.P8417358338078225330

/-! ## A260452.P17295260720339774208

`A260450(A111284(n+1)+A260450(n+1)+A111284(n+1))`
-/

namespace A260452.P17295260720339774208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260450 (A111284 (n + 1) + (A260450 (n + 1) + A111284 (n + 1))).toNat

end

end A260452.P17295260720339774208

/-! ## A260452.P234573667486757569

`A260450(A260450(n+1)+2*A016825(n))`
-/

namespace A260452.P234573667486757569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260450 (A260450 (n + 1) + 2 * A016825 n).toNat

end

end A260452.P234573667486757569

/-! ## A260452.P786066431614318650

`A260450(A016825(n)+A260450(n+1)+A016825(n))`
-/

namespace A260452.P786066431614318650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260450 (A016825 n + (A260450 (n + 1) + A016825 n)).toNat

end

end A260452.P786066431614318650

/-! ## A260452.P1527734284051301986

`A260450(A260450(n+1)+A142241(n)-2)`
-/

namespace A260452.P1527734284051301986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260450 (A260450 (n + 1) + (A142241 n - 2)).toNat

end

end A260452.P1527734284051301986

/-! ## A260452.P15114741361510251907

`A260450(A260450(n+1)+xor(2, A142241(n)))`
-/

namespace A260452.P15114741361510251907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260450 (A260450 (n + 1) + Int.xor 2 (A142241 n)).toNat

end

end A260452.P15114741361510251907

/-! ## A260452.P3531365373976658189

`A260450(A260450(n+1)+2*A142241(n))`
-/

namespace A260452.P3531365373976658189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260450 (A260450 (n + 1) + 2 * A142241 n).toNat

end

end A260452.P3531365373976658189

/-!
# A260453: Infinite palindromic word (a(1),a(2),a(3),...) with initial word w(1) = (3,1,2) and midword sequence (a(n)); see Comments.

The programs for A260453, there is no canonical definition to state claims against.
-/

/-! ## A260453.P9813174798639459533

`4-A260450(n+1)`
-/

namespace A260453.P9813174798639459533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A260450 (n + 1)

end

end A260453.P9813174798639459533

/-! ## A260453.P6006190015531780195

`(A260449(n+1)+1)%3+1`
-/

namespace A260453.P6006190015531780195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260449 (n + 1) + 1) 3 + 1

end

end A260453.P6006190015531780195

/-! ## A260453.P2668249129733646966

`xor(A259599(n+1), A260452(n+1))`
-/

namespace A260453.P2668249129733646966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A259599 (n + 1)) (A260452 (n + 1))

end

end A260453.P2668249129733646966

/-! ## A260453.P17047250670793969723

`xor(A260449(n+1), A260451(n+1))`
-/

namespace A260453.P17047250670793969723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A260449 (n + 1)) (A260451 (n + 1))

end

end A260453.P17047250670793969723

/-! ## A260453.P10860961190063010568

`A260454(xor(n, xor(n, A260450(n+1))))`
-/

namespace A260453.P10860961190063010568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260454 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A260450 (n + 1)))).toNat

end

end A260453.P10860961190063010568

/-! ## A260453.P10993829064028645359

`A260451(xor(n, xor(n, A260451(n+1))))`
-/

namespace A260453.P10993829064028645359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260451 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A260451 (n + 1)))).toNat

end

end A260453.P10993829064028645359

/-! ## A260453.P11491039154540821256

`A260450(xor(n, xor(n, A260452(n+1))))`
-/

namespace A260453.P11491039154540821256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260450 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A260452 (n + 1)))).toNat

end

end A260453.P11491039154540821256

/-! ## A260453.P15009526419128703328

`A260452(xor(n, xor(n, A260454(n+1))))`
-/

namespace A260453.P15009526419128703328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A260454 (n + 1)))).toNat

end

end A260453.P15009526419128703328

/-! ## A260453.P7107012058359574887

`A259599(n+1)+2-A260394(n+1)`
-/

namespace A260453.P7107012058359574887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259599 (n + 1) + (2 - A260394 (n + 1))

end

end A260453.P7107012058359574887

/-! ## A260453.P1789451200976178040

`A260452(n+1)+A260454(n+1)-2`
-/

namespace A260453.P1789451200976178040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 (n + 1) + (A260454 (n + 1) - 2)

end

end A260453.P1789451200976178040

/-! ## A260453.P4495012251465908398

`A260397(n+1)+2*A259599(n+1)`
-/

namespace A260453.P4495012251465908398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260397 (n + 1) + 2 * A259599 (n + 1)

end

end A260453.P4495012251465908398

/-! ## A260453.P8218820075628558304

`A260394(n+1)+xor(2, A260449(n+1))`
-/

namespace A260453.P8218820075628558304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260394 (n + 1) + Int.xor 2 (A260449 (n + 1))

end

end A260453.P8218820075628558304

/-! ## A260453.P10326022000990734209

`A260451(and(A000328(n)-2, A260451(n+1)))`
-/

namespace A260453.P10326022000990734209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260451 (Int.land (A000328 n - 2) (A260451 (n + 1))).toNat

end

end A260453.P10326022000990734209

/-! ## A260453.P3150763369468418176

`A260451(and(A001513(n)-2, A260451(n+1)))`
-/

namespace A260453.P3150763369468418176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260451 (Int.land (A001513 n - 2) (A260451 (n + 1))).toNat

end

end A260453.P3150763369468418176

/-! ## A260453.P17523327343434033227

`A260451(and(A001535(n)-2, A260451(n+1)))`
-/

namespace A260453.P17523327343434033227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260451 (Int.land (A001535 n - 2) (A260451 (n + 1))).toNat

end

end A260453.P17523327343434033227

/-! ## A260453.P11891186274360058910

`A260451(and(A001546(n)-2, A260451(n+1)))`
-/

namespace A260453.P11891186274360058910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260451 (Int.land (A001546 n - 2) (A260451 (n + 1))).toNat

end

end A260453.P11891186274360058910

/-! ## A260453.P17005047341662067450

`A260451(and(A001844(n)-2, A260451(n+1)))`
-/

namespace A260453.P17005047341662067450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260451 (Int.land (A001844 n - 2) (A260451 (n + 1))).toNat

end

end A260453.P17005047341662067450

/-! ## A260453.P8985285223937302897

`A260451(and(A001846(n)-2, A260451(n+1)))`
-/

namespace A260453.P8985285223937302897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260451 (Int.land (A001846 n - 2) (A260451 (n + 1))).toNat

end

end A260453.P8985285223937302897

/-! ## A260453.P2862325587302389372

`A260451(and(A001848(n)-2, A260451(n+1)))`
-/

namespace A260453.P2862325587302389372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260451 (Int.land (A001848 n - 2) (A260451 (n + 1))).toNat

end

end A260453.P2862325587302389372

/-! ## A260453.P18389326560685868060

`A260451(and(A016760(n)-2, A260451(n+1)))`
-/

namespace A260453.P18389326560685868060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260451 (Int.land (A016760 n - 2) (A260451 (n + 1))).toNat

end

end A260453.P18389326560685868060

/-!
# A260454: Infinite palindromic word (a(1),a(2),a(3),...) with initial word w(1) = (3,2,1) and midword sequence (a(n)); see Comments.

The programs for A260454, there is no canonical definition to state claims against.
-/

/-! ## A260454.P6918356555130812

`4-A260449(n+1)`
-/

namespace A260454.P6918356555130812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A260449 (n + 1)

end

end A260454.P6918356555130812

/-! ## A260454.P8923017684063153399

`xor(2, C(A260452(n+1), 2))`
-/

namespace A260454.P8923017684063153399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.choose (A260452 (n + 1)).toNat 2)

end

end A260454.P8923017684063153399

/-! ## A260454.P1586707115083237773

`xor(A260397(n+1), A260451(n+1))`
-/

namespace A260454.P1586707115083237773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A260397 (n + 1)) (A260451 (n + 1))

end

end A260454.P1586707115083237773

/-! ## A260454.P13209108881340734593

`xor(A260450(n+1), A260452(n+1))`
-/

namespace A260454.P13209108881340734593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A260450 (n + 1)) (A260452 (n + 1))

end

end A260454.P13209108881340734593

/-! ## A260454.P7443479249282222219

`A260451(a(A260451(n+1))+1)` with `a(0)=3, a(1)=2`
-/

namespace A260454.P7443479249282222219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  A260451 (a (A260451 (n + 1)).toNat + 1).toNat

end

end A260454.P7443479249282222219

/-! ## A260454.P10590109333592380571

`A260397(n+1)+2-A260394(n+1)`
-/

namespace A260454.P10590109333592380571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260397 (n + 1) + (2 - A260394 (n + 1))

end

end A260454.P10590109333592380571

/-! ## A260454.P6936703977221414911

`A260451(n+1)+A260453(n+1)-2`
-/

namespace A260454.P6936703977221414911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260451 (n + 1) + (A260453 (n + 1) - 2)

end

end A260454.P6936703977221414911

/-! ## A260454.P351758119602447634

`A260453(n+1)+2-A260452(n+1)`
-/

namespace A260454.P351758119602447634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260453 (n + 1) + (2 - A260452 (n + 1))

end

end A260454.P351758119602447634

/-! ## A260454.P8797787831791992705

`A259599(n+1)+2*A260397(n+1)`
-/

namespace A260454.P8797787831791992705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259599 (n + 1) + 2 * A260397 (n + 1)

end

end A260454.P8797787831791992705

/-! ## A260454.P14121935068526142086

`A260394(n+1)+xor(2, A260450(n+1))`
-/

namespace A260454.P14121935068526142086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260394 (n + 1) + Int.xor 2 (A260450 (n + 1))

end

end A260454.P14121935068526142086

/-! ## A260454.P7232639127932416600

`A260452(A017221(n)-(A260452(n+1)+n))`
-/

namespace A260454.P7232639127932416600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 (A017221 n - (A260452 (n + 1) + (n : ℤ))).toNat

end

end A260454.P7232639127932416600

/-! ## A260454.P12327653166378002809

`A260452(A260452(n+1)+A158057(n)+2)`
-/

namespace A260454.P12327653166378002809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 (A260452 (n + 1) + (A158057 n + 2)).toNat

end

end A260454.P12327653166378002809

/-! ## A260454.P13898525667293150673

`A260453((A004771(n)-2)*A260453(n+1))`
-/

namespace A260454.P13898525667293150673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260453 ((A004771 n - 2) * A260453 (n + 1)).toNat

end

end A260454.P13898525667293150673

/-!
# A260455: Infinite palindromic word (a(1),a(2),a(3),...) with initial word w(1) = 0 and midword sequence (1,null,1,null,1,null,...); see Comments.

The programs for A260455, the canonical program `A260455.P9893475964516076535` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260455 has offset 1).

The definition of A260455 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260456, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A260455.P9893475964516076535

`1-A260456(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A260455

/-- `1-A260456(n+1)` -/
def P9893475964516076535.Spec : Prop :=
  ∀ n, P9893475964516076535.a n = A260455 (n + 1)

theorem P9893475964516076535.correct : P9893475964516076535.Spec := by
  intro n
  simp only [A260455, Nat.add_sub_cancel]

end A260455

/-! ## A260455.P5723442791516358273

`char[lt[0, xor(n, n-1)%3]+n]`
-/

namespace A260455.P5723442791516358273
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A260455.P5723442791516358273

namespace A260455

/-- `char[lt[0, xor(n, n-1)%3]+n]` -/
def P5723442791516358273.Spec : Prop :=
  ∀ n, (P5723442791516358273.a n : ℤ) = A260455 (n + 1)

end A260455

/-! ## A260455.P2215517290032390866

`comp[2*comp[or(n, val(n+2, 2))]+3]%2`
-/

namespace A260455.P2215517290032390866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (SequenceMachineLib.valuation (n + 2) 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2

end

end A260455.P2215517290032390866

namespace A260455

/-- `comp[2*comp[or(n, val(n+2, 2))]+3]%2` -/
def P2215517290032390866.Spec : Prop :=
  ∀ n, (P2215517290032390866.a n : ℤ) = A260455 (n + 1)

end A260455

/-! ## A260455.P4650445809258009891

`comp[A131323(n+1)]%2`
-/

namespace A260455.P4650445809258009891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2

end

end A260455.P4650445809258009891

namespace A260455

/-- `comp[A131323(n+1)]%2` -/
def P4650445809258009891.Spec : Prop :=
  ∀ n, (P4650445809258009891.a n : ℤ) = A260455 (n + 1)

end A260455

/-! ## A260455.P3106522943927478288

`char[A003159(n+1)+n]`
-/

namespace A260455.P3106522943927478288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A260455.P3106522943927478288

namespace A260455

/-- `char[A003159(n+1)+n]` -/
def P3106522943927478288.Spec : Prop :=
  ∀ n, (P3106522943927478288.a n : ℤ) = A260455 (n + 1)

end A260455

/-! ## A260455.P7301920866715167968

`1-char[A050292(n)+n]`
-/

namespace A260455.P7301920866715167968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A260455.P7301920866715167968

namespace A260455

/-- `1-char[A050292(n)+n]` -/
def P7301920866715167968.Spec : Prop :=
  ∀ n, P7301920866715167968.a n = A260455 (n + 1)

end A260455

/-! ## A260455.P302078882674427122

`and(1, A359794(n+1)+1)`
-/

namespace A260455.P302078882674427122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A359794 (n + 1) + 1)

end

end A260455.P302078882674427122

namespace A260455

/-- `and(1, A359794(n+1)+1)` -/
def P302078882674427122.Spec : Prop :=
  ∀ n, P302078882674427122.a n = A260455 (n + 1)

end A260455

/-! ## A260455.P3312829390137660755

`char[∑[A026465(n+1)]+n]`
-/

namespace A260455.P3312829390137660755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A260455.P3312829390137660755

namespace A260455

/-- `char[∑[A026465(n+1)]+n]` -/
def P3312829390137660755.Spec : Prop :=
  ∀ n, (P3312829390137660755.a n : ℤ) = A260455 (n + 1)

end A260455

/-! ## A260455.P15488270823612503795

`char[A121539(n+1)+n+1]`
-/

namespace A260455.P15488270823612503795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121539 (n + 1) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A260455.P15488270823612503795

namespace A260455

/-- `char[A121539(n+1)+n+1]` -/
def P15488270823612503795.Spec : Prop :=
  ∀ n, (P15488270823612503795.a n : ℤ) = A260455 (n + 1)

end A260455

/-! ## A260455.P6030153059427727883

`char[A285385(n+1)-2+n]`
-/

namespace A260455.P6030153059427727883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285385 (n + 1) - 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A260455.P6030153059427727883

namespace A260455

/-- `char[A285385(n+1)-2+n]` -/
def P6030153059427727883.Spec : Prop :=
  ∀ n, (P6030153059427727883.a n : ℤ) = A260455 (n + 1)

end A260455

/-! ## A260455.P5277014409532757758

`char[A036552(2*n+1)+n]`
-/

namespace A260455.P5277014409532757758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036552 (2 * n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A260455.P5277014409532757758

namespace A260455

/-- `char[A036552(2*n+1)+n]` -/
def P5277014409532757758.Spec : Prop :=
  ∀ n, (P5277014409532757758.a n : ℤ) = A260455 (n + 1)

end A260455

/-! ## A260455.P14865760370412480048

`char[comp[A079523(n+1)]+1+n]`
-/

namespace A260455.P14865760370412480048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A260455.P14865760370412480048

namespace A260455

/-- `char[comp[A079523(n+1)]+1+n]` -/
def P14865760370412480048.Spec : Prop :=
  ∀ n, (P14865760370412480048.a n : ℤ) = A260455 (n + 1)

end A260455

/-! ## A260455.P14613679544694454837

`A191254(A359794(n+1))`
-/

namespace A260455.P14613679544694454837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191254 (A359794 (n + 1)).toNat

end

end A260455.P14613679544694454837

namespace A260455

/-- `A191254(A359794(n+1))` -/
def P14613679544694454837.Spec : Prop :=
  ∀ n, P14613679544694454837.a n = A260455 (n + 1)

end A260455

/-! ## A260455.P1530800475689589106

`and(1, p?[A192498(A135481(n)+1)])`
-/

namespace A260455.P1530800475689589106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192498 (A135481 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A260455.P1530800475689589106

namespace A260455

/-- `and(1, p?[A192498(A135481(n)+1)])` -/
def P1530800475689589106.Spec : Prop :=
  ∀ n, P1530800475689589106.a n = A260455 (n + 1)

end A260455

/-! ## A260455.P15947241428541964718

`A230746(n+1)%A080027(n+1)`
-/

namespace A260455.P15947241428541964718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230746 (n + 1)) (A080027 (n + 1))

end

end A260455.P15947241428541964718

namespace A260455

/-- `A230746(n+1)%A080027(n+1)` -/
def P15947241428541964718.Spec : Prop :=
  ∀ n, P15947241428541964718.a n = A260455 (n + 1)

end A260455

/-! ## A260455.P12227563531214265179

`A128915(p?[A020639(xor(n, n+1))+2])`
-/

namespace A260455.P12227563531214265179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.xor n (n + 1)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128915 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A260455.P12227563531214265179

namespace A260455

/-- `A128915(p?[A020639(xor(n, n+1))+2])` -/
def P12227563531214265179.Spec : Prop :=
  ∀ n, P12227563531214265179.a n = A260455 (n + 1)

end A260455

/-! ## A260455.P13526986822965698080

`xor(A000120(A006519(n+1)), A260456(n+1))`
-/

namespace A260455.P13526986822965698080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000120 (A006519 (n + 1)).toNat) (A260456 (n + 1))

end

end A260455.P13526986822965698080

namespace A260455

/-- `xor(A000120(A006519(n+1)), A260456(n+1))` -/
def P13526986822965698080.Spec : Prop :=
  ∀ n, P13526986822965698080.a n = A260455 (n + 1)

end A260455

/-! ## A260455.P18110147307544868099

`3%Δ[A285092(n+1)]`
-/

namespace A260455.P18110147307544868099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (f1 (n + 1) - f1 n)

end

end A260455.P18110147307544868099

namespace A260455

/-- `3%Δ[A285092(n+1)]` -/
def P18110147307544868099.Spec : Prop :=
  ∀ n, P18110147307544868099.a n = A260455 (n + 1)

end A260455

/-!
# A260456: Infinite palindromic word (a(1),a(2),a(3),...) with initial word w(1) = 1 and midword sequence (0,null,0,null,0,null,...); see Comments.

The programs for A260456, the canonical program `A260456.P8742662874947804953` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260456 has offset 1).

The definition of A260456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260456.P11445604614910447254

`1-A260455(n+1)`
-/

namespace A260456.P11445604614910447254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A260455 (n + 1)

end

end A260456.P11445604614910447254

namespace A260456

/-- `1-A260455(n+1)` -/
def P11445604614910447254.Spec : Prop :=
  ∀ n, P11445604614910447254.a n = A260456 (n + 1)

end A260456

/-! ## A260456.P10183553975244910493

`char[∑[and(2*n, -2*n)%3]]`
-/

namespace A260456.P10183553975244910493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (2 * n : ℤ) (-(2 * n : ℤ))) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A260456.P10183553975244910493

namespace A260456

/-- `char[∑[and(2*n, -2*n)%3]]` -/
def P10183553975244910493.Spec : Prop :=
  ∀ n, (P10183553975244910493.a n : ℤ) = A260456 (n + 1)

end A260456

/-! ## A260456.P2920754025955722712

`char[A050292(n)+n]`
-/

namespace A260456.P2920754025955722712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A260456.P2920754025955722712

namespace A260456

/-- `char[A050292(n)+n]` -/
def P2920754025955722712.Spec : Prop :=
  ∀ n, (P2920754025955722712.a n : ℤ) = A260456 (n + 1)

end A260456

/-! ## A260456.P8742662874947804953

`A359794(n+1)%2`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A260456

/-- `A359794(n+1)%2` -/
def P8742662874947804953.Spec : Prop :=
  ∀ n, P8742662874947804953.a n = A260456 (n + 1)

theorem P8742662874947804953.correct : P8742662874947804953.Spec := by
  intro n
  simp only [A260456, Nat.add_sub_cancel]

end A260456

/-! ## A260456.P3537512343229323843

`char[A260479(n+1)-1]`
-/

namespace A260456.P3537512343229323843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260479 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A260456.P3537512343229323843

namespace A260456

/-- `char[A260479(n+1)-1]` -/
def P3537512343229323843.Spec : Prop :=
  ∀ n, (P3537512343229323843.a n : ℤ) = A260456 (n + 1)

end A260456

/-! ## A260456.P209391658324140178

`1-char[A003159(n+1)+n]`
-/

namespace A260456.P209391658324140178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A260456.P209391658324140178

namespace A260456

/-- `1-char[A003159(n+1)+n]` -/
def P209391658324140178.Spec : Prop :=
  ∀ n, P209391658324140178.a n = A260456 (n + 1)

end A260456

/-! ## A260456.P7249186922786034261

`(1-comp[2*n*gcd(2, A316826(n))])%2+1`
-/

namespace A260456.P7249186922786034261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Int.gcd 2 (A316826 n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) 2 + 1

end

end A260456.P7249186922786034261

namespace A260456

/-- `(1-comp[2*n*gcd(2, A316826(n))])%2+1` -/
def P7249186922786034261.Spec : Prop :=
  ∀ n, P7249186922786034261.a n = A260456 (n + 1)

end A260456

/-! ## A260456.P2971258582168954371

`A359832(2*A359794(n+1))`
-/

namespace A260456.P2971258582168954371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359832 (2 * A359794 (n + 1)).toNat

end

end A260456.P2971258582168954371

namespace A260456

/-- `A359832(2*A359794(n+1))` -/
def P2971258582168954371.Spec : Prop :=
  ∀ n, P2971258582168954371.a n = A260456 (n + 1)

end A260456

/-! ## A260456.P3624955116960111122

`and(A060576(n), A359794(n+1))`
-/

namespace A260456.P3624955116960111122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A359794 (n + 1))

end

end A260456.P3624955116960111122

namespace A260456

/-- `and(A060576(n), A359794(n+1))` -/
def P3624955116960111122.Spec : Prop :=
  ∀ n, P3624955116960111122.a n = A260456 (n + 1)

end A260456

/-! ## A260456.P3024948387937728938

`and(A158388(n), A359794(n+1))`
-/

namespace A260456.P3024948387937728938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A359794 (n + 1))

end

end A260456.P3024948387937728938

namespace A260456

/-- `and(A158388(n), A359794(n+1))` -/
def P3024948387937728938.Spec : Prop :=
  ∀ n, P3024948387937728938.a n = A260456 (n + 1)

end A260456

/-! ## A260456.P12441447728029784460

`A260455(n*A260455(n+1)+2)`
-/

namespace A260456.P12441447728029784460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260455 ((n : ℤ) * A260455 (n + 1) + 2).toNat

end

end A260456.P12441447728029784460

namespace A260456

/-- `A260455(n*A260455(n+1)+2)` -/
def P12441447728029784460.Spec : Prop :=
  ∀ n, P12441447728029784460.a n = A260456 (n + 1)

end A260456

/-! ## A260456.P7694019708967390572

`A359832(A359794(n+1)+A359794(n+1))`
-/

namespace A260456.P7694019708967390572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359832 (A359794 (n + 1) + A359794 (n + 1)).toNat

end

end A260456.P7694019708967390572

namespace A260456

/-- `A359832(A359794(n+1)+A359794(n+1))` -/
def P7694019708967390572.Spec : Prop :=
  ∀ n, P7694019708967390572.a n = A260456 (n + 1)

end A260456

/-! ## A260456.P4914859223625291298

`xor(A000120(A006519(n+1)), A260455(n+1))`
-/

namespace A260456.P4914859223625291298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000120 (A006519 (n + 1)).toNat) (A260455 (n + 1))

end

end A260456.P4914859223625291298

namespace A260456

/-- `xor(A000120(A006519(n+1)), A260455(n+1))` -/
def P4914859223625291298.Spec : Prop :=
  ∀ n, P4914859223625291298.a n = A260456 (n + 1)

end A260456

/-! ## A260456.P1907264085347543867

`A254379(eq[A228495(2*n+1), A254379(n+1)])`
-/

namespace A260456.P1907264085347543867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A260456.P1907264085347543867

namespace A260456

/-- `A254379(eq[A228495(2*n+1), A254379(n+1)])` -/
def P1907264085347543867.Spec : Prop :=
  ∀ n, P1907264085347543867.a n = A260456 (n + 1)

end A260456

/-! ## A260456.P4657392287639146903

`Δ[A284685(n+1)]%2`
-/

namespace A260456.P4657392287639146903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A260456.P4657392287639146903

namespace A260456

/-- `Δ[A284685(n+1)]%2` -/
def P4657392287639146903.Spec : Prop :=
  ∀ n, P4657392287639146903.a n = A260456 (n + 1)

end A260456

/-! ## A260456.P7176621866885539423

`and(1, Δ[A285092(n+1)])`
-/

namespace A260456.P7176621866885539423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A260456.P7176621866885539423

namespace A260456

/-- `and(1, Δ[A285092(n+1)])` -/
def P7176621866885539423.Spec : Prop :=
  ∀ n, P7176621866885539423.a n = A260456 (n + 1)

end A260456

/-! ## A260456.P16445326198555491777

`(2-Δ[A284623(n+1)])²`
-/

namespace A260456.P16445326198555491777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (f1 (n + 1) - f1 n)) ^ 2

end

end A260456.P16445326198555491777

namespace A260456

/-- `(2-Δ[A284623(n+1)])²` -/
def P16445326198555491777.Spec : Prop :=
  ∀ n, P16445326198555491777.a n = A260456 (n + 1)

end A260456

/-! ## A260456.P7588872126627633624

`(2-Δ[A284820(n+1)])²`
-/

namespace A260456.P7588872126627633624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (f1 (n + 1) - f1 n)) ^ 2

end

end A260456.P7588872126627633624

namespace A260456

/-- `(2-Δ[A284820(n+1)])²` -/
def P7588872126627633624.Spec : Prop :=
  ∀ n, P7588872126627633624.a n = A260456 (n + 1)

end A260456

/-! ## A260456.P17562583279143587407

`A000035(Δ[A284623(n+1)])`
-/

namespace A260456.P17562583279143587407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (f1 (n + 1) - f1 n).toNat

end

end A260456.P17562583279143587407

namespace A260456

/-- `A000035(Δ[A284623(n+1)])` -/
def P17562583279143587407.Spec : Prop :=
  ∀ n, P17562583279143587407.a n = A260456 (n + 1)

end A260456

/-! ## A260456.P10965802421820712605

`A000035(Δ[A284685(n+1)])`
-/

namespace A260456.P10965802421820712605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (f1 (n + 1) - f1 n).toNat

end

end A260456.P10965802421820712605

namespace A260456

/-- `A000035(Δ[A284685(n+1)])` -/
def P10965802421820712605.Spec : Prop :=
  ∀ n, P10965802421820712605.a n = A260456 (n + 1)

end A260456

/-!
# A260458: Limit of gcd(PP(n) - k, PP(n) + k) as k -> oo, where PP(n) is the product of the first n primes.

The programs for A260458, the canonical program `A260458.P8030264566610905607` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260458 has offset 1).

The definition of A260458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260458.P12378110192677830496

`A007947(n+1)*A138191(A332815(n))`
-/

namespace A260458.P12378110192677830496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A138191 (A332815 n).toNat

end

end A260458.P12378110192677830496

namespace A260458

/-- `A007947(n+1)*A138191(A332815(n))` -/
def P12378110192677830496.Spec : Prop :=
  ∀ n, P12378110192677830496.a n = A260458 (n + 1)

end A260458

/-! ## A260458.P11927957000443922338

`A007947(n+1)*A050603(A390568(n+2))`
-/

namespace A260458.P11927957000443922338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A050603 (A390568 (n + 2)).toNat

end

end A260458.P11927957000443922338

namespace A260458

/-- `A007947(n+1)*A050603(A390568(n+2))` -/
def P11927957000443922338.Spec : Prop :=
  ∀ n, P11927957000443922338.a n = A260458 (n + 1)

end A260458

/-! ## A260458.P8299660711034179575

`gcd(A007947(A046092(n+1))+n+1, A046092(n+1))`
-/

namespace A260458.P8299660711034179575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007947 (A046092 (n + 1)).toNat + (n + 1 : ℤ)) (A046092 (n + 1))

end

end A260458.P8299660711034179575

namespace A260458

/-- `gcd(A007947(A046092(n+1))+n+1, A046092(n+1))` -/
def P8299660711034179575.Spec : Prop :=
  ∀ n, (P8299660711034179575.a n : ℤ) = A260458 (n + 1)

end A260458

/-! ## A260458.P12012824398621247841

`A007947(n+1)*A177704(A139610(n))`
-/

namespace A260458.P12012824398621247841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A177704 (A139610 n).toNat

end

end A260458.P12012824398621247841

namespace A260458

/-- `A007947(n+1)*A177704(A139610(n))` -/
def P12012824398621247841.Spec : Prop :=
  ∀ n, P12012824398621247841.a n = A260458 (n + 1)

end A260458

/-! ## A260458.P16348731436437124905

`A007947(n+1)*A129252(A008597(3*n+5))`
-/

namespace A260458.P16348731436437124905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A129252 (A008597 (3 * n + 5)).toNat

end

end A260458.P16348731436437124905

namespace A260458

/-- `A007947(n+1)*A129252(A008597(3*n+5))` -/
def P16348731436437124905.Spec : Prop :=
  ∀ n, P16348731436437124905.a n = A260458 (n + 1)

end A260458

/-! ## A260458.P2247083658270990466

`A006519(A347137(n+1))*A204455(n+1)`
-/

namespace A260458.P2247083658270990466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A347137 (n + 1)).toNat * A204455 (n + 1)

end

end A260458.P2247083658270990466

namespace A260458

/-- `A006519(A347137(n+1))*A204455(n+1)` -/
def P2247083658270990466.Spec : Prop :=
  ∀ n, P2247083658270990466.a n = A260458 (n + 1)

end A260458

/-! ## A260458.P8030264566610905607

`∏{p}[n+1, #]*A006519(∑[A004526(n+1)]+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A260458

/-- `∏{p}[n+1, #]*A006519(∑[A004526(n+1)]+1)` -/
def P8030264566610905607.Spec : Prop :=
  ∀ n, P8030264566610905607.a n = A260458 (n + 1)

theorem P8030264566610905607.correct : P8030264566610905607.Spec := by
  intro n
  simp only [A260458, Nat.add_sub_cancel]

end A260458

/-! ## A260458.P16886706999015158142

`A001511(∑[A065033(n)])*A007947(n+1)`
-/

namespace A260458.P16886706999015158142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A007947 (n + 1)

end

end A260458.P16886706999015158142

namespace A260458

/-- `A001511(∑[A065033(n)])*A007947(n+1)` -/
def P16886706999015158142.Spec : Prop :=
  ∀ n, P16886706999015158142.a n = A260458 (n + 1)

end A260458

/-! ## A260458.P16515582672490087203

`A000034(∑[A110654(n)])*A007947(n+1)`
-/

namespace A260458.P16515582672490087203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A007947 (n + 1)

end

end A260458.P16515582672490087203

namespace A260458

/-- `A000034(∑[A110654(n)])*A007947(n+1)` -/
def P16515582672490087203.Spec : Prop :=
  ∀ n, P16515582672490087203.a n = A260458 (n + 1)

end A260458

/-! ## A260458.P10116829444516442727

`A000034(A079524(n))*A007947(n+1)`
-/

namespace A260458.P10116829444516442727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A079524 n).toNat * A007947 (n + 1)

end

end A260458.P10116829444516442727

namespace A260458

/-- `A000034(A079524(n))*A007947(n+1)` -/
def P10116829444516442727.Spec : Prop :=
  ∀ n, P10116829444516442727.a n = A260458 (n + 1)

end A260458

/-! ## A260458.P11768883842118157765

`A001511(A184676(n+1))*A007947(n+1)`
-/

namespace A260458.P11768883842118157765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A184676 (n + 1)).toNat * A007947 (n + 1)

end

end A260458.P11768883842118157765

namespace A260458

/-- `A001511(A184676(n+1))*A007947(n+1)` -/
def P11768883842118157765.Spec : Prop :=
  ∀ n, P11768883842118157765.a n = A260458 (n + 1)

end A260458

/-!
# A260460: Expansion of f(-q) in powers of q where f() is a 3rd order mock theta function.

The programs for A260460, there is no canonical definition to state claims against.
-/

/-! ## A260460.P17792161695037024209

`(-1)^n*A000025(n)`
-/

namespace A260460.P17792161695037024209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000025 n

end

end A260460.P17792161695037024209

/-! ## A260460.P16831780688171765292

`A053250(n)-2*A053251(n)`
-/

namespace A260460.P16831780688171765292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053250 n - 2 * A053251 n

end

end A260460.P16831780688171765292

/-! ## A260460.P5574881082704321965

`2*A053250(n)-A132969(n)`
-/

namespace A260460.P5574881082704321965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053250 n - A132969 n

end

end A260460.P5574881082704321965

/-! ## A260460.P11756101047582279867

`A132969(n)-4*A053251(n)`
-/

namespace A260460.P11756101047582279867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132969 n - 4 * A053251 n

end

end A260460.P11756101047582279867

/-! ## A260460.P9271355652117629896

`A000025(round(sqrt(n²+1)))/(-1)^n`
-/

namespace A260460.P9271355652117629896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000025 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A260460.P9271355652117629896

/-! ## A260460.P4574029073175474938

`A000025(n)*A033999(n)`
-/

namespace A260460.P4574029073175474938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000025 n * A033999 n

end

end A260460.P4574029073175474938

/-! ## A260460.P15853488500379107659

`A000038(n)-abs(A000025(n))`
-/

namespace A260460.P15853488500379107659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - |A000025 n|

end

end A260460.P15853488500379107659

/-! ## A260460.P4068305162373310850

`2*A053250(n)-abs(A132970(n))`
-/

namespace A260460.P4068305162373310850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053250 n - |A132970 n|

end

end A260460.P4068305162373310850

/-! ## A260460.P7661568999034999317

`(A000041(n)-4*A101707(n))*(-1)^n`
-/

namespace A260460.P7661568999034999317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000041 n - 4 * A101707 n) * (-1) ^ n

end

end A260460.P7661568999034999317

/-! ## A260460.P15137354477796551338

`A000025(n)*A053254(n)/A067357(n)`
-/

namespace A260460.P15137354477796551338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000025 n * A053254 n : ℚ) / (A067357 n : ℚ)

end

end A260460.P15137354477796551338

/-! ## A260460.P1924502591430336628

`A053250(n)-A005843(A053251(n))`
-/

namespace A260460.P1924502591430336628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053250 n - A005843 (A053251 n).toNat

end

end A260460.P1924502591430336628

/-!
# A260462: Numbers k such that the digits of k are in increasing order and k divides (reverse(k) * 10^m) for some sufficiently-large integer m.

The programs for A260462, there is no canonical definition to state claims against.
-/

/-! ## A260462.P17478927016411493624

`∩[A035303(n+1), comp[A004186(n)]]`
-/

namespace A260462.P17478927016411493624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035303 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A260462.P17478927016411493624

/-! ## A260462.P14010631079617832841

`∩[A035303(n+1), comp[A227362(n)]]`
-/

namespace A260462.P14010631079617832841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035303 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A260462.P14010631079617832841

/-! ## A260462.P9118239643125289388

`∩[A035303(n+1), A038687(n+1)]`
-/

namespace A260462.P9118239643125289388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260462.P9118239643125289388

/-! ## A260462.P9024231769600170160

`∩[A035303(n+1), A071589(n+1)]`
-/

namespace A260462.P9024231769600170160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260462.P9024231769600170160

/-! ## A260462.P8864892313130659888

`∩[A035303(n+1), A101594(n+1)]`
-/

namespace A260462.P8864892313130659888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260462.P8864892313130659888

/-!
# A260463: a(n) is the smallest number not already in the sequence such that a(n)^2 begins with n.

The programs for A260463, there is no canonical definition to state claims against.
-/

/-! ## A260463.P14381924661024241325

`A018851(n+1)%A099969(n)`
-/

namespace A260463.P14381924661024241325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018851 (n + 1)) (A099969 n)

end

end A260463.P14381924661024241325

/-! ## A260463.P14144892363268768318

`A018851(C(A328617(n+1), n))`
-/

namespace A260463.P14144892363268768318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (Nat.choose (A328617 (n + 1)).toNat n)

end

end A260463.P14144892363268768318

/-! ## A260463.P12909457999591101523

`A018851((n+1)^A119335(n)²)`
-/

namespace A260463.P12909457999591101523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A119335 n ^ 2 : ℤ))).toNat

end

end A260463.P12909457999591101523

/-! ## A260463.P8743569134065076512

`∑[Δ[A018851(n)]%A138174(n+3)]`
-/

namespace A260463.P8743569134065076512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A138174 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260463.P8743569134065076512

/-! ## A260463.P14809027248073927048

`A018851(A319499(A319268(n+1)))`
-/

namespace A260463.P14809027248073927048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A319499 (A319268 (n + 1)).toNat).toNat

end

end A260463.P14809027248073927048

/-!
# A260464: Number of chains in the poset of even-sized subsets of {1,2,...,n} ordered by inclusion.

The programs for A260464, there is no canonical definition to state claims against.
-/

/-! ## A260464.P2207582247235800724

`2*A327034(n)-1`
-/

namespace A260464.P2207582247235800724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327034 n - 1

end

end A260464.P2207582247235800724

/-! ## A260464.P15319074273913546100

`A008683(A060395(n))+2*A327034(n)`
-/

namespace A260464.P15319074273913546100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A060395 n).toNat + 2 * A327034 n

end

end A260464.P15319074273913546100

/-! ## A260464.P5203625107086245896

`A008683(A060397(n))+2*A327034(n)`
-/

namespace A260464.P5203625107086245896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A060397 n).toNat + 2 * A327034 n

end

end A260464.P5203625107086245896

/-! ## A260464.P12851943916054610739

`A008683(A060400(n))+2*A327034(n)`
-/

namespace A260464.P12851943916054610739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A060400 n).toNat + 2 * A327034 n

end

end A260464.P12851943916054610739

/-! ## A260464.P11704247384450820670

`A008683(A056216(n+1))+2*A327034(n)`
-/

namespace A260464.P11704247384450820670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A056216 (n + 1)).toNat + 2 * A327034 n

end

end A260464.P11704247384450820670

/-!
# A260465: a(n) is the smallest number not already in the sequence such that a(n)^3 begins with n.

The programs for A260465, there is no canonical definition to state claims against.
-/

/-! ## A260465.P7188340802815622344

`A030669(n+1)%A312051(A138173(n+1))`
-/

namespace A260465.P7188340802815622344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030669 (n + 1)) (A312051 (A138173 (n + 1)).toNat)

end

end A260465.P7188340802815622344

/-! ## A260465.P18047029468736381323

`A018852(n+1)%A117881(n)`
-/

namespace A260465.P18047029468736381323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018852 (n + 1)) (A117881 n)

end

end A260465.P18047029468736381323

/-! ## A260465.P8168225541456356395

`∑[Δ[A018852(n)]%A117881(n)]`
-/

namespace A260465.P8168225541456356395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A117881 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260465.P8168225541456356395

/-! ## A260465.P2462245432000400992

`A018852(sqrt(record[A135840(n+1)²]))`
-/

namespace A260465.P2462245432000400992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135840 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 (SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))).toNat

end

end A260465.P2462245432000400992

/-! ## A260465.P13662323702725639057

`A018852(n+1)*A051904(A006972(n+1))`
-/

namespace A260465.P13662323702725639057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 (n + 1) * A051904 (A006972 (n + 1)).toNat

end

end A260465.P13662323702725639057

/-!
# A260466: Number of integers in Pascal's triangle strictly between 1 and n.

The programs for A260466, there is no canonical definition to state claims against.
-/

/-! ## A260466.P11114426901565623933

`∑[A003016(n-char[1])]`
-/

namespace A260466.P11114426901565623933
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 (n - (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260466.P11114426901565623933

/-! ## A260466.P10955044272389561205

`∑[floor(atan(n))*A003016(n)]`
-/

namespace A260466.P10955044272389561205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ)⌋ * A003016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260466.P10955044272389561205

/-! ## A260466.P7131108344142853124

`∑[A003016(n)*A060576(n)]`
-/

namespace A260466.P7131108344142853124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 n * A060576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260466.P7131108344142853124

/-! ## A260466.P10495161735564592900

`∑[A003016(n)*A157928(n)]`
-/

namespace A260466.P10495161735564592900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 n * A157928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260466.P10495161735564592900

/-! ## A260466.P14813454443057476871

`∑[A003016(n)%A242314(n)]`
-/

namespace A260466.P14813454443057476871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003016 n) (A242314 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260466.P14813454443057476871

/-! ## A260466.P14776969287980268382

`∑[lcm(A003016(n), A105812(n))]`
-/

namespace A260466.P14776969287980268382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003016 n) (A105812 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260466.P14776969287980268382

/-! ## A260466.P15906182302112677457

`∑[A003016(n)]-A003016(A178334(n))`
-/

namespace A260466.P15906182302112677457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003016 (A178334 n).toNat

end

end A260466.P15906182302112677457

/-! ## A260466.P3809419477662047106

`∑[A164507(n)%(A003016(n)-A164507(n))]`
-/

namespace A260466.P3809419477662047106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164507 n) (A003016 n - A164507 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260466.P3809419477662047106

/-!
# A260467: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00010101.

The programs for A260467, there is no canonical definition to state claims against.
-/

/-! ## A260467.P8214212988247893492

`A260475(∑[4*n]+1)`
-/

namespace A260467.P8214212988247893492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260475 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260467.P8214212988247893492

/-! ## A260467.P14829107846026655975

`record[gcd(A003987(n), A260475(n+1))]`
-/

namespace A260467.P14829107846026655975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A260475 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260467.P14829107846026655975

/-! ## A260467.P1436689726993767480

`A260475(A001844(n))+A070206(n+1)`
-/

namespace A260467.P1436689726993767480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260475 (A001844 n).toNat + A070206 (n + 1)

end

end A260467.P1436689726993767480

/-! ## A260467.P9775749331464945933

`A240228(n+1)*A260475(A001844(n))`
-/

namespace A260467.P9775749331464945933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240228 (n + 1) * A260475 (A001844 n).toNat

end

end A260467.P9775749331464945933

/-! ## A260467.P1476192279065058023

`A260475(A001844(n))%A269272(n+1)`
-/

namespace A260467.P1476192279065058023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260475 (A001844 n).toNat) (A269272 (n + 1))

end

end A260467.P1476192279065058023

/-!
# A260468: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000000 00000001 or 00010101.

The programs for A260468, there is no canonical definition to state claims against.
-/

/-! ## A260468.P16571956997060011323

`A260475(∑[n]+1)`
-/

namespace A260468.P16571956997060011323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260475 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260468.P16571956997060011323

/-! ## A260468.P5361544824140305799

`or(char[2], A260475(A000124(n)))`
-/

namespace A260468.P5361544824140305799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A260475 (A000124 n).toNat)

end

end A260468.P5361544824140305799

/-! ## A260468.P13476912190199114100

`record[A010054(n)*A260475(n+1)]`
-/

namespace A260468.P13476912190199114100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A260475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260468.P13476912190199114100

/-! ## A260468.P1167766579339237064

`record[A260475(n+1)/A013619(n)]`
-/

namespace A260468.P1167766579339237064
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260475 (n + 1) : ℚ) / (A013619 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260468.P1167766579339237064

/-! ## A260468.P17029056963526311518

`record[root(A260475(n+1), A026736(n))]`
-/

namespace A260468.P17029056963526311518
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A260475 (n + 1) : ℝ) ^ (1 / (A026736 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260468.P17029056963526311518

/-!
# A260469: Number of (n+2)X(2+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00010101.

The programs for A260469, there is no canonical definition to state claims against.
-/

/-! ## A260469.P1970468813757867895

`A260475(∑[n+1]+2)`
-/

namespace A260469.P1970468813757867895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260475 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A260469.P1970468813757867895

/-! ## A260469.P14996221288102140408

`record[A010054(n)*A260475(n+2)]`
-/

namespace A260469.P14996221288102140408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A260475 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260469.P14996221288102140408

/-! ## A260469.P6676547157897118150

`record[A260475(n+2)/A013619(n)]`
-/

namespace A260469.P6676547157897118150
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260475 (n + 2) : ℚ) / (A013619 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260469.P6676547157897118150

/-! ## A260469.P6519939802993587624

`A007318(C(n, 2))*A260475(A000096(n+1))`
-/

namespace A260469.P6519939802993587624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A260475 (A000096 (n + 1)).toNat

end

end A260469.P6519939802993587624

/-! ## A260469.P17349555548499397969

`A260475(A000096(n+1))+A008683(4*(n+1))`
-/

namespace A260469.P17349555548499397969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260475 (A000096 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A260469.P17349555548499397969

/-!
# A260470: Number of (n+2)X(3+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00010101.

The programs for A260470, there is no canonical definition to state claims against.
-/

/-! ## A260470.P17436375324755497387

`A260475(∑[n+2]+4)`
-/

namespace A260470.P17436375324755497387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260475 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A260470.P17436375324755497387

/-! ## A260470.P5151141129414995953

`A260475(A167614(n+1))%A016940(n)`
-/

namespace A260470.P5151141129414995953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260475 (A167614 (n + 1)).toNat) (A016940 n)

end

end A260470.P5151141129414995953

/-! ## A260470.P1322611032028093469

`or(A000038(n), A260475(A167614(n+1)))`
-/

namespace A260470.P1322611032028093469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A260475 (A167614 (n + 1)).toNat)

end

end A260470.P1322611032028093469

/-! ## A260470.P15097952078355647561

`lcm(A064372(n+1), A260475(A167614(n+1)))`
-/

namespace A260470.P15097952078355647561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A064372 (n + 1)) (A260475 (A167614 (n + 1)).toNat)

end

end A260470.P15097952078355647561

/-! ## A260470.P13171879376350263604

`A260475(A034856(n+2))%A332179(n+1)`
-/

namespace A260470.P13171879376350263604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260475 (A034856 (n + 2)).toNat) (A332179 (n + 1))

end

end A260470.P13171879376350263604

/-!
# A260471: Number of (n+2)X(4+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00010101.

The programs for A260471, there is no canonical definition to state claims against.
-/

/-! ## A260471.P10564700798877629826

`A260475(A374004(n+1))`
-/

namespace A260471.P10564700798877629826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260475 (A374004 (n + 1)).toNat

end

end A260471.P10564700798877629826

/-! ## A260471.P11252278353996591523

`A260475(A141214(n)+7)`
-/

namespace A260471.P11252278353996591523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260475 (A141214 n + 7).toNat

end

end A260471.P11252278353996591523

/-! ## A260471.P1471890035176203250

`A260475(A052905(n)+9)`
-/

namespace A260471.P1471890035176203250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260475 (A052905 n + 9).toNat

end

end A260471.P1471890035176203250

/-! ## A260471.P11313718268768952974

`A260475(A055999(n)+10)`
-/

namespace A260471.P11313718268768952974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260475 (A055999 n + 10).toNat

end

end A260471.P11313718268768952974

/-! ## A260471.P4939471330116228047

`A260475(A167614(n+2)+1)`
-/

namespace A260471.P4939471330116228047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260475 (A167614 (n + 2) + 1).toNat

end

end A260471.P4939471330116228047

/-!
# A260472: Number of (n+2) X (5+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000000 00000001 or 00010101.

The programs for A260472, there is no canonical definition to state claims against.
-/

/-! ## A260472.P15906715692302198602

`A260475(A374005(n+1))`
-/

namespace A260472.P15906715692302198602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260475 (A374005 (n + 1)).toNat

end

end A260472.P15906715692302198602

/-! ## A260472.P9858815806366750225

`A260475(A167499(n+3))`
-/

namespace A260472.P9858815806366750225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260475 (A167499 (n + 3)).toNat

end

end A260472.P9858815806366750225

/-! ## A260472.P4095157600321848313

`A260475(A056000(n)+15)`
-/

namespace A260472.P4095157600321848313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260475 (A056000 n + 15).toNat

end

end A260472.P4095157600321848313

/-! ## A260472.P16311628818149368175

`A260475(A000217(n+4)+5)`
-/

namespace A260472.P16311628818149368175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260475 (A000217 (n + 4) + 5).toNat

end

end A260472.P16311628818149368175

/-! ## A260472.P14907344192330553604

`A260475(A038722(Δ[A023545(n+1)]))`
-/

namespace A260472.P14907344192330553604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260475 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A260472.P14907344192330553604

/-!
# A260473: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00010101.

The programs for A260473, there is no canonical definition to state claims against.
-/

/-! ## A260473.P350282661045883253

`A260475(A374007(n+1))`
-/

namespace A260473.P350282661045883253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260475 (A374007 (n + 1)).toNat

end

end A260473.P350282661045883253

/-! ## A260473.P9957075755477728497

`A260475(A166136(n+4))`
-/

namespace A260473.P9957075755477728497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260475 (A166136 (n + 4)).toNat

end

end A260473.P9957075755477728497

/-! ## A260473.P16915364027406867105

`A260475(A167499(n+4)+1)`
-/

namespace A260473.P16915364027406867105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260475 (A167499 (n + 4) + 1).toNat

end

end A260473.P16915364027406867105

/-! ## A260473.P17276767533696528407

`A260475(A000217(n+5)+6)`
-/

namespace A260473.P17276767533696528407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260475 (A000217 (n + 5) + 6).toNat

end

end A260473.P17276767533696528407

/-! ## A260473.P14128974514062326547

`A260475(A046691(n+3)+10)`
-/

namespace A260473.P14128974514062326547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260475 (A046691 (n + 3) + 10).toNat

end

end A260473.P14128974514062326547

/-!
# A260474: Number of (n+2)X(7+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00010101.

The programs for A260474, there is no canonical definition to state claims against.
-/

/-! ## A260474.P10184913693772301515

`A260475(A374008(n+1))`
-/

namespace A260474.P10184913693772301515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260475 (A374008 (n + 1)).toNat

end

end A260474.P10184913693772301515

/-! ## A260474.P10987733519696767002

`A260475(A167499(n+5)+2)`
-/

namespace A260474.P10987733519696767002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260475 (A167499 (n + 5) + 2).toNat

end

end A260474.P10987733519696767002

/-! ## A260474.P6807900712496493235

`A260475(A000217(n+6)+7)`
-/

namespace A260474.P6807900712496493235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260475 (A000217 (n + 6) + 7).toNat

end

end A260474.P6807900712496493235

/-! ## A260474.P17418660847998049250

`A260475(A027379(n+4)+10)`
-/

namespace A260474.P17418660847998049250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260475 (A027379 (n + 4) + 10).toNat

end

end A260474.P17418660847998049250

/-! ## A260474.P16201527209133740512

`A260475(A052905(n+8)-A016885(n+6))`
-/

namespace A260474.P16201527209133740512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260475 (A052905 (n + 8) - A016885 (n + 6)).toNat

end

end A260474.P16201527209133740512

/-!
# A260476: Primes p such that p = 2*phi(sigma((p-1)/2))+1.

The programs for A260476, there is no canonical definition to state claims against.
-/

/-! ## A260476.P16649402893886261702

`p?[A266165(n+1)]`
-/

namespace A260476.P16649402893886261702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260476.P16649402893886261702

/-!
# A260477: Numbers n where n^2 is an anagram of (n+1)^2 in base 2.

The programs for A260477, the canonical program `A260477.P5696824646865594787` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260477 has offset 1).

The definition of A260477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260477.P5696824646865594787

`eq[A159918(n+2), A159918(n+3)]+2`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A260477

/-- `eq[A159918(n+2), A159918(n+3)]+2` -/
def P5696824646865594787.Spec : Prop :=
  ∀ n, (P5696824646865594787.a n : ℤ) = A260477 (n + 1)

theorem P5696824646865594787.correct : P5696824646865594787.Spec := by
  intro n
  simp only [A260477, Nat.add_sub_cancel]

end A260477

/-! ## A260477.P13324392976571988604

`eq[A159918(A348776(n+1)), A159918(n)]`
-/

namespace A260477.P13324392976571988604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (A348776 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260477.P13324392976571988604

namespace A260477

/-- `eq[A159918(A348776(n+1)), A159918(n)]` -/
def P13324392976571988604.Spec : Prop :=
  ∀ n, (P13324392976571988604.a n : ℤ) = A260477 (n + 1)

end A260477

/-! ## A260477.P15229868821622932949

`eq[A159918(A299232(n+1)), A159918(n)]`
-/

namespace A260477.P15229868821622932949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (A299232 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260477.P15229868821622932949

namespace A260477

/-- `eq[A159918(A299232(n+1)), A159918(n)]` -/
def P15229868821622932949.Spec : Prop :=
  ∀ n, (P15229868821622932949.a n : ℤ) = A260477 (n + 1)

end A260477

/-!
# A260478: Cyclotomic polynomial value Phi(8,n!).

The programs for A260478, there is no canonical definition to state claims against.
-/

/-! ## A260478.P17631718955554158454

`n!^4+1`
-/

namespace A260478.P17631718955554158454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 4 + 1

end

end A260478.P17631718955554158454

/-! ## A260478.P14163951972304556750

`n!²²+1`
-/

namespace A260478.P14163951972304556750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2) ^ 2 + 1

end

end A260478.P14163951972304556750

/-! ## A260478.P10281363158109166112

`root(n!, 1/4)+1`
-/

namespace A260478.P10281363158109166112
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℝ) ^ (1 / ((1 : ℚ) / 4 : ℝ)) + 1

end

end A260478.P10281363158109166112

/-! ## A260478.P8186056809469752231

`or(2, n!^4)-1`
-/

namespace A260478.P8186056809469752231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (Nat.factorial n ^ 4) : ℤ) - 1

end

end A260478.P8186056809469752231

/-! ## A260478.P2691807071568717502

`xor(2, n!^4)-1`
-/

namespace A260478.P2691807071568717502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (Nat.factorial n ^ 4) : ℤ) - 1

end

end A260478.P2691807071568717502

/-!
# A260479: Positions of 0 in the infinite palindromic word at A260455.

The programs for A260479, the canonical program `A260479.P11507470578859938320` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260479 has offset 1).

The definition of A260479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260479.P11507470578859938320

`∑[3-a(∑[n]%n)]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A260479

/-- `∑[3-a(∑[n]%n)]` -/
def P11507470578859938320.Spec : Prop :=
  ∀ n, P11507470578859938320.a n = A260479 (n + 1)

theorem P11507470578859938320.correct : P11507470578859938320.Spec := by
  intro n
  simp only [A260479, Nat.add_sub_cancel]

end A260479

/-! ## A260479.P6116370143934903222

`∑[char[n*and(n, -n)]]+n`
-/

namespace A260479.P6116370143934903222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A260479.P6116370143934903222

namespace A260479

/-- `∑[char[n*and(n, -n)]]+n` -/
def P6116370143934903222.Spec : Prop :=
  ∀ n, (P6116370143934903222.a n : ℤ) = A260479 (n + 1)

end A260479

/-! ## A260479.P13399958147362380350

`a(n-1)+gcd(2, val(n, 2))` with `a(0)=1`
-/

namespace A260479.P13399958147362380350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.gcd 2 (SequenceMachineLib.valuation n 2)

end

end A260479.P13399958147362380350

namespace A260479

/-- `a(n-1)+gcd(2, val(n, 2))` -/
def P13399958147362380350.Spec : Prop :=
  ∀ n, (P13399958147362380350.a n : ℤ) = A260479 (n + 1)

end A260479

/-! ## A260479.P17978572464400876022

`∑[(xor(n, n-1)%3)²]+n`
-/

namespace A260479.P17978572464400876022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A260479.P17978572464400876022

namespace A260479

/-- `∑[(xor(n, n-1)%3)²]+n` -/
def P17978572464400876022.Spec : Prop :=
  ∀ n, P17978572464400876022.a n = A260479 (n + 1)

end A260479

/-! ## A260479.P1102746705953904448

`∑[and(2*n, -2*n)%3]+1`
-/

namespace A260479.P1102746705953904448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (2 * n : ℤ) (-(2 * n : ℤ))) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A260479.P1102746705953904448

namespace A260479

/-- `∑[and(2*n, -2*n)%3]+1` -/
def P1102746705953904448.Spec : Prop :=
  ∀ n, P1102746705953904448.a n = A260479 (n + 1)

end A260479

/-! ## A260479.P3316766068534495304

`∑[gcd(2, A316826(n))]`
-/

namespace A260479.P3316766068534495304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A316826 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260479.P3316766068534495304

namespace A260479

/-- `∑[gcd(2, A316826(n))]` -/
def P3316766068534495304.Spec : Prop :=
  ∀ n, (P3316766068534495304.a n : ℤ) = A260479 (n + 1)

end A260479

/-! ## A260479.P7916381695150988412

`∑[abs(A292118(n))!]`
-/

namespace A260479.P7916381695150988412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |A292118 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260479.P7916381695150988412

namespace A260479

/-- `∑[abs(A292118(n))!]` -/
def P7916381695150988412.Spec : Prop :=
  ∀ n, (P7916381695150988412.a n : ℤ) = A260479 (n + 1)

end A260479

/-! ## A260479.P10700975017691400550

`∑[round(log(A249032(n)))]`
-/

namespace A260479.P10700975017691400550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A249032 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260479.P10700975017691400550

namespace A260479

/-- `∑[round(log(A249032(n)))]` -/
def P10700975017691400550.Spec : Prop :=
  ∀ n, P10700975017691400550.a n = A260479 (n + 1)

end A260479

/-! ## A260479.P561093814875577611

`A050292(n)+1+n`
-/

namespace A260479.P561093814875577611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 n + 1 + (n : ℤ)

end

end A260479.P561093814875577611

namespace A260479

/-- `A050292(n)+1+n` -/
def P561093814875577611.Spec : Prop :=
  ∀ n, P561093814875577611.a n = A260479 (n + 1)

end A260479

/-! ## A260479.P9093320911538423524

`Δ[n²]-A123087(n)`
-/

namespace A260479.P9093320911538423524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A123087 n

end

end A260479.P9093320911538423524

namespace A260479

/-- `Δ[n²]-A123087(n)` -/
def P9093320911538423524.Spec : Prop :=
  ∀ n, P9093320911538423524.a n = A260479 (n + 1)

end A260479

/-! ## A260479.P9384196609364588820

`∑[A285383(n+1)+1]`
-/

namespace A260479.P9384196609364588820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285383 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260479.P9384196609364588820

namespace A260479

/-- `∑[A285383(n+1)+1]` -/
def P9384196609364588820.Spec : Prop :=
  ∀ n, P9384196609364588820.a n = A260479 (n + 1)

end A260479

/-! ## A260479.P11338475157278937052

`∑[2-A284948(n+1)]`
-/

namespace A260479.P11338475157278937052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A284948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260479.P11338475157278937052

namespace A260479

/-- `∑[2-A284948(n+1)]` -/
def P11338475157278937052.Spec : Prop :=
  ∀ n, P11338475157278937052.a n = A260479 (n + 1)

end A260479

/-! ## A260479.P16019603311135137506

`∑[and(1, A088705(n))+1]`
-/

namespace A260479.P16019603311135137506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A088705 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260479.P16019603311135137506

namespace A260479

/-- `∑[and(1, A088705(n))+1]` -/
def P16019603311135137506.Spec : Prop :=
  ∀ n, P16019603311135137506.a n = A260479 (n + 1)

end A260479

/-! ## A260479.P12203293245421219669

`∑[2/a(A142150(n))]` with `a(0)=1`
-/

namespace A260479.P12203293245421219669
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 / f1 (A142150 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260479.P12203293245421219669

namespace A260479

/-- `∑[2/a(A142150(n))]` -/
def P12203293245421219669.Spec : Prop :=
  ∀ n, P12203293245421219669.a n = (A260479 (n + 1) : ℚ)

end A260479

/-! ## A260479.P16819505985039728344

`∑[A285384(n+1)]+n`
-/

namespace A260479.P16819505985039728344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A260479.P16819505985039728344

namespace A260479

/-- `∑[A285384(n+1)]+n` -/
def P16819505985039728344.Spec : Prop :=
  ∀ n, P16819505985039728344.a n = A260479 (n + 1)

end A260479

/-! ## A260479.P11665098637601698397

`∑[A026491(n)-2*n]`
-/

namespace A260479.P11665098637601698397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260479.P11665098637601698397

namespace A260479

/-- `∑[A026491(n)-2*n]` -/
def P11665098637601698397.Spec : Prop :=
  ∀ n, P11665098637601698397.a n = A260479 (n + 1)

end A260479

/-! ## A260479.P10385829910011594077

`∑[char[A003159(n+1)]+1]`
-/

namespace A260479.P10385829910011594077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260479.P10385829910011594077

namespace A260479

/-- `∑[char[A003159(n+1)]+1]` -/
def P10385829910011594077.Spec : Prop :=
  ∀ n, (P10385829910011594077.a n : ℤ) = A260479 (n + 1)

end A260479

/-! ## A260479.P4122407534974216725

`∑[char[A214682(n+1)]+1]`
-/

namespace A260479.P4122407534974216725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214682 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260479.P4122407534974216725

namespace A260479

/-- `∑[char[A214682(n+1)]+1]` -/
def P4122407534974216725.Spec : Prop :=
  ∀ n, (P4122407534974216725.a n : ℤ) = A260479 (n + 1)

end A260479

/-! ## A260479.P6619869509743182204

`∑[char[A300841(n+1)]+1]`
-/

namespace A260479.P6619869509743182204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300841 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260479.P6619869509743182204

namespace A260479

/-- `∑[char[A300841(n+1)]+1]` -/
def P6619869509743182204.Spec : Prop :=
  ∀ n, (P6619869509743182204.a n : ℤ) = A260479 (n + 1)

end A260479

/-!
# A260480: Positions of 0 in the infinite palindromic word at A260455.

The programs for A260480, the canonical program `A260480.P18251365356245955987` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260480 has offset 1).

The definition of A260480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260480.P18251365356245955987

`eq[0, val(n+1, 2)%2]+2+n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A260480

/-- `eq[0, val(n+1, 2)%2]+2+n` -/
def P18251365356245955987.Spec : Prop :=
  ∀ n, (P18251365356245955987.a n : ℤ) = A260480 (n + 1)

theorem P18251365356245955987.correct : P18251365356245955987.Spec := by
  intro n
  simp only [A260480, Nat.add_sub_cancel]

end A260480

/-! ## A260480.P16656684190047591113

`lt[0, xor(n, n-1)%3]+1+n`
-/

namespace A260480.P16656684190047591113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 + n

end

end A260480.P16656684190047591113

namespace A260480

/-- `lt[0, xor(n, n-1)%3]+1+n` -/
def P16656684190047591113.Spec : Prop :=
  ∀ n, (P16656684190047591113.a n : ℤ) = A260480 (n + 1)

end A260480

/-! ## A260480.P16644376882416249243

`comp[(n+1)*xor(n, n+1)+n]+2+n`
-/

namespace A260480.P16644376882416249243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.xor n (n + 1) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2 + n

end

end A260480.P16644376882416249243

namespace A260480

/-- `comp[(n+1)*xor(n, n+1)+n]+2+n` -/
def P16644376882416249243.Spec : Prop :=
  ∀ n, (P16644376882416249243.a n : ℤ) = A260480 (n + 1)

end A260480

/-! ## A260480.P16479336120198416269

`∑[A026465(n+1)+1]`
-/

namespace A260480.P16479336120198416269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260480.P16479336120198416269

namespace A260480

/-- `∑[A026465(n+1)+1]` -/
def P16479336120198416269.Spec : Prop :=
  ∀ n, P16479336120198416269.a n = A260480 (n + 1)

end A260480

/-! ## A260480.P16528254252668242396

`A003159(n+1)+1+n`
-/

namespace A260480.P16528254252668242396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1) + 1 + (n : ℤ)

end

end A260480.P16528254252668242396

namespace A260480

/-- `A003159(n+1)+1+n` -/
def P16528254252668242396.Spec : Prop :=
  ∀ n, P16528254252668242396.a n = A260480 (n + 1)

end A260480

/-! ## A260480.P2066549347115426143

`A121539(n+1)+2+n`
-/

namespace A260480.P2066549347115426143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121539 (n + 1) + 2 + (n : ℤ)

end

end A260480.P2066549347115426143

namespace A260480

/-- `A121539(n+1)+2+n` -/
def P2066549347115426143.Spec : Prop :=
  ∀ n, P2066549347115426143.a n = A260480 (n + 1)

end A260480

/-! ## A260480.P17661137572917085346

`∑[char[A003156(n+1)]+2]`
-/

namespace A260480.P17661137572917085346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260480.P17661137572917085346

namespace A260480

/-- `∑[char[A003156(n+1)]+2]` -/
def P17661137572917085346.Spec : Prop :=
  ∀ n, (P17661137572917085346.a n : ℤ) = A260480 (n + 1)

end A260480

/-! ## A260480.P4810498398369554051

`∑[A284391(n+1)+2]-1`
-/

namespace A260480.P4810498398369554051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284391 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A260480.P4810498398369554051

namespace A260480

/-- `∑[A284391(n+1)+2]-1` -/
def P4810498398369554051.Spec : Prop :=
  ∀ n, P4810498398369554051.a n = A260480 (n + 1)

end A260480

/-! ## A260480.P1940427122876705518

`ceil((A003157(n+1)+n)/2)`
-/

namespace A260480.P1940427122876705518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003157 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A260480.P1940427122876705518

namespace A260480

/-- `ceil((A003157(n+1)+n)/2)` -/
def P1940427122876705518.Spec : Prop :=
  ∀ n, P1940427122876705518.a n = A260480 (n + 1)

end A260480

/-! ## A260480.P1739878783487008728

`record[A302792(n+1)+1]+n`
-/

namespace A260480.P1739878783487008728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302792 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A260480.P1739878783487008728

namespace A260480

/-- `record[A302792(n+1)+1]+n` -/
def P1739878783487008728.Spec : Prop :=
  ∀ n, P1739878783487008728.a n = A260480 (n + 1)

end A260480

/-! ## A260480.P15917151210865884188

`comp[A079523(n+1)]+2+n`
-/

namespace A260480.P15917151210865884188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2 + n

end

end A260480.P15917151210865884188

namespace A260480

/-- `comp[A079523(n+1)]+2+n` -/
def P15917151210865884188.Spec : Prop :=
  ∀ n, (P15917151210865884188.a n : ℤ) = A260480 (n + 1)

end A260480

/-! ## A260480.P9025838066724093813

`∑[ceil(sqrt(A080426(n+1)))+1]`
-/

namespace A260480.P9025838066724093813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A080426 (n + 1) : ℝ)⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260480.P9025838066724093813

namespace A260480

/-- `∑[ceil(sqrt(A080426(n+1)))+1]` -/
def P9025838066724093813.Spec : Prop :=
  ∀ n, P9025838066724093813.a n = A260480 (n + 1)

end A260480

/-! ## A260480.P904175588143380686

`A036554(n+1)/2+n+1`
-/

namespace A260480.P904175588143380686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036554 (n + 1) : ℚ) / 2 + (n + 1 : ℚ)

end

end A260480.P904175588143380686

namespace A260480

/-- `A036554(n+1)/2+n+1` -/
def P904175588143380686.Spec : Prop :=
  ∀ n, P904175588143380686.a n = (A260480 (n + 1) : ℚ)

end A260480

/-! ## A260480.P3999720471579918494

`(A003158(n+1)+n+2)/2`
-/

namespace A260480.P3999720471579918494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003158 (n + 1) + (n + 2 : ℤ) : ℚ) / 2

end

end A260480.P3999720471579918494

namespace A260480

/-- `(A003158(n+1)+n+2)/2` -/
def P3999720471579918494.Spec : Prop :=
  ∀ n, P3999720471579918494.a n = (A260480 (n + 1) : ℚ)

end A260480

/-! ## A260480.P16825948934778468181

`A162648(n+1)/2+n+2`
-/

namespace A260480.P16825948934778468181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162648 (n + 1) : ℚ) / 2 + (n + 2 : ℚ)

end

end A260480.P16825948934778468181

namespace A260480

/-- `A162648(n+1)/2+n+2` -/
def P16825948934778468181.Spec : Prop :=
  ∀ n, P16825948934778468181.a n = (A260480 (n + 1) : ℚ)

end A260480

/-!
# A260483: Beatty sequence for e^(1/Pi) = A179706.

The programs for A260483, the canonical program `A260483.P9872346312215219181` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260483 has offset 1).

The definition of A260483 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260483.P9872346312215219181

`floor((n+1)*root(e, π))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A260483

/-- `floor((n+1)*root(e, π))` -/
def P9872346312215219181.Spec : Prop :=
  ∀ n, P9872346312215219181.a n = A260483 (n + 1)

theorem P9872346312215219181.correct : P9872346312215219181.Spec := by
  intro n
  simp only [A260483, Nat.add_sub_cancel]

end A260483

/-! ## A260483.P7782810059689063066

`A008679(11*A001651(n+1))`
-/

namespace A260483.P7782810059689063066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (11 * A001651 (n + 1)).toNat

end

end A260483.P7782810059689063066

namespace A260483

/-- `A008679(11*A001651(n+1))` -/
def P7782810059689063066.Spec : Prop :=
  ∀ n, P7782810059689063066.a n = A260483 (n + 1)

end A260483

/-! ## A260483.P14192173278156095404

`ceil(A314685(5*n+1)/16)`
-/

namespace A260483.P14192173278156095404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A314685 (5 * n + 1) : ℚ) / 16⌉

end

end A260483.P14192173278156095404

namespace A260483

/-- `ceil(A314685(5*n+1)/16)` -/
def P14192173278156095404.Spec : Prop :=
  ∀ n, P14192173278156095404.a n = A260483 (n + 1)

end A260483

/-! ## A260483.P5070645113510318248

`lt[A040765(3*n+1), A176775(A161344(n+1))]`
-/

namespace A260483.P5070645113510318248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040765 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176775 (A161344 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260483.P5070645113510318248

namespace A260483

/-- `lt[A040765(3*n+1), A176775(A161344(n+1))]` -/
def P5070645113510318248.Spec : Prop :=
  ∀ n, (P5070645113510318248.a n : ℤ) = A260483 (n + 1)

end A260483

/-! ## A260483.P7251751992368734189

`A008621(A008621(2*11*n))`
-/

namespace A260483.P7251751992368734189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A008621 (2 * (11 * n))).toNat

end

end A260483.P7251751992368734189

namespace A260483

/-- `A008621(A008621(2*11*n))` -/
def P7251751992368734189.Spec : Prop :=
  ∀ n, P7251751992368734189.a n = A260483 (n + 1)

end A260483

/-! ## A260483.P5289930403676803770

`round(A301710(5*n+3)/20)`
-/

namespace A260483.P5289930403676803770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A301710 (5 * n + 3) : ℚ) / 20)

end

end A260483.P5289930403676803770

namespace A260483

/-- `round(A301710(5*n+3)/20)` -/
def P5289930403676803770.Spec : Prop :=
  ∀ n, P5289930403676803770.a n = A260483 (n + 1)

end A260483

/-! ## A260483.P3804599267879700554

`A276669(A057353(n+2)²+1)+n`
-/

namespace A260483.P3804599267879700554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276669 (A057353 (n + 2) ^ 2 + 1).toNat + (n : ℤ)

end

end A260483.P3804599267879700554

namespace A260483

/-- `A276669(A057353(n+2)²+1)+n` -/
def P3804599267879700554.Spec : Prop :=
  ∀ n, P3804599267879700554.a n = A260483 (n + 1)

end A260483

/-! ## A260483.P12528558704392228635

`round(∑[∑[1/A003946(n)]])`
-/

namespace A260483.P12528558704392228635
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A003946 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A260483.P12528558704392228635

namespace A260483

/-- `round(∑[∑[1/A003946(n)]])` -/
def P12528558704392228635.Spec : Prop :=
  ∀ n, P12528558704392228635.a n = A260483 (n + 1)

end A260483

/-! ## A260483.P13391025700519580265

`A008621(A276669((n+1)²))+n`
-/

namespace A260483.P13391025700519580265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A276669 ((n + 1) ^ 2)).toNat + (n : ℤ)

end

end A260483.P13391025700519580265

namespace A260483

/-- `A008621(A276669((n+1)²))+n` -/
def P13391025700519580265.Spec : Prop :=
  ∀ n, P13391025700519580265.a n = A260483 (n + 1)

end A260483

/-!
# A260484: Complement of the Beatty sequence for e^(1/Pi) = A179706.

The programs for A260484, the canonical program `A260484.P442551651470973066` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260484 has offset 1).

The definition of A260484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260484.P442551651470973066

`comp[floor(n*exp(1/π))]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A260484

/-- `comp[floor(n*exp(1/π))]` -/
def P442551651470973066.Spec : Prop :=
  ∀ n, (P442551651470973066.a n : ℤ) = A260484 (n + 1)

theorem P442551651470973066.correct : P442551651470973066.Spec := by
  intro n
  simp only [A260484, Nat.add_sub_cancel]

end A260484

/-! ## A260484.P10093950689476905136

`comp[A260483(n+1)-1]+1`
-/

namespace A260484.P10093950689476905136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260483 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A260484.P10093950689476905136

namespace A260484

/-- `comp[A260483(n+1)-1]+1` -/
def P10093950689476905136.Spec : Prop :=
  ∀ n, (P10093950689476905136.a n : ℤ) = A260484 (n + 1)

end A260484

/-! ## A260484.P16596543224505547800

`∑[A010702(Δ[A007089(n+5)])]`
-/

namespace A260484.P16596543224505547800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260484.P16596543224505547800

namespace A260484

/-- `∑[A010702(Δ[A007089(n+5)])]` -/
def P16596543224505547800.Spec : Prop :=
  ∀ n, P16596543224505547800.a n = A260484 (n + 1)

end A260484

/-! ## A260484.P4480721149582003492

`∑[A011655(n)+3]%A298911(n+1)`
-/

namespace A260484.P4480721149582003492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A298911 (n + 1))

end

end A260484.P4480721149582003492

namespace A260484

/-- `∑[A011655(n)+3]%A298911(n+1)` -/
def P4480721149582003492.Spec : Prop :=
  ∀ n, P4480721149582003492.a n = A260484 (n + 1)

end A260484

/-! ## A260484.P12260419423675872343

`∑[A000032(A306542(A038500(n+6)))]`
-/

namespace A260484.P12260419423675872343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A306542 (A038500 (n + 6)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260484.P12260419423675872343

namespace A260484

/-- `∑[A000032(A306542(A038500(n+6)))]` -/
def P12260419423675872343.Spec : Prop :=
  ∀ n, P12260419423675872343.a n = A260484 (n + 1)

end A260484

/-! ## A260484.P5472641010965396705

`∑[A163169(A017089(A008706(n+13)))]`
-/

namespace A260484.P5472641010965396705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 (A017089 (A008706 (n + 13)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260484.P5472641010965396705

namespace A260484

/-- `∑[A163169(A017089(A008706(n+13)))]` -/
def P5472641010965396705.Spec : Prop :=
  ∀ n, P5472641010965396705.a n = A260484 (n + 1)

end A260484

/-! ## A260484.P7365626859528329174

`∑[A306542(A038500(n+6))]+A005408(n)-n`
-/

namespace A260484.P7365626859528329174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306542 (A038500 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A005408 n - (n : ℤ))

end

end A260484.P7365626859528329174

namespace A260484

/-- `∑[A306542(A038500(n+6))]+A005408(n)-n` -/
def P7365626859528329174.Spec : Prop :=
  ∀ n, P7365626859528329174.a n = A260484 (n + 1)

end A260484

/-! ## A260484.P137657363207855343

`∑[A306542(A038500(n+6))+(A000041(n)%2)!]`
-/

namespace A260484.P137657363207855343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306542 (A038500 (n + 6)).toNat + (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260484.P137657363207855343

namespace A260484

/-- `∑[A306542(A038500(n+6))+(A000041(n)%2)!]` -/
def P137657363207855343.Spec : Prop :=
  ∀ n, P137657363207855343.a n = A260484 (n + 1)

end A260484

/-! ## A260484.P8300806127587548464

`∑[A306542(A038500(n+6))+A260438(2*n+2)]`
-/

namespace A260484.P8300806127587548464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306542 (A038500 (n + 6)).toNat + A260438 (2 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260484.P8300806127587548464

namespace A260484

/-- `∑[A306542(A038500(n+6))+A260438(2*n+2)]` -/
def P8300806127587548464.Spec : Prop :=
  ∀ n, P8300806127587548464.a n = A260484 (n + 1)

end A260484

/-! ## A260484.P5944166616137886904

`∑[A306542(A038500(n+6))+A014963(40*(n+1))]`
-/

namespace A260484.P5944166616137886904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306542 (A038500 (n + 6)).toNat + A014963 (40 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260484.P5944166616137886904

namespace A260484

/-- `∑[A306542(A038500(n+6))+A014963(40*(n+1))]` -/
def P5944166616137886904.Spec : Prop :=
  ∀ n, P5944166616137886904.a n = A260484 (n + 1)

end A260484

/-! ## A260484.P15425906676607586743

`∑[A306542(A038500(n+6))+((-1)^A000009(n))²]`
-/

namespace A260484.P15425906676607586743
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306542 (A038500 (n + 6)).toNat : ℚ) + ((-1 : ℚ) ^ (A000009 n : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260484.P15425906676607586743

namespace A260484

/-- `∑[A306542(A038500(n+6))+((-1)^A000009(n))²]` -/
def P15425906676607586743.Spec : Prop :=
  ∀ n, P15425906676607586743.a n = (A260484 (n + 1) : ℚ)

end A260484

/-! ## A260484.P6888398996569370135

`∑[A306542(A038500(n+6))+((-1)^A007318(n))²]`
-/

namespace A260484.P6888398996569370135
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306542 (A038500 (n + 6)).toNat : ℚ) + ((-1 : ℚ) ^ (A007318 n : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260484.P6888398996569370135

namespace A260484

/-- `∑[A306542(A038500(n+6))+((-1)^A007318(n))²]` -/
def P6888398996569370135.Spec : Prop :=
  ∀ n, P6888398996569370135.a n = (A260484 (n + 1) : ℚ)

end A260484

/-! ## A260484.P79843295642861822

`A020639(2*(n+1))+∑[A306542(A038500(n+6))]+n-1`
-/

namespace A260484.P79843295642861822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306542 (A038500 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) + (∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - 1))

end

end A260484.P79843295642861822

namespace A260484

/-- `A020639(2*(n+1))+∑[A306542(A038500(n+6))]+n-1` -/
def P79843295642861822.Spec : Prop :=
  ∀ n, P79843295642861822.a n = A260484 (n + 1)

end A260484

/-! ## A260484.P13998459228758259011

`∑[gcd(2, A332819(∑[n+1]))+2]`
-/

namespace A260484.P13998459228758259011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A332819 (∑ j ∈ Finset.range (n + 1), f2 j)) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260484.P13998459228758259011

namespace A260484

/-- `∑[gcd(2, A332819(∑[n+1]))+2]` -/
def P13998459228758259011.Spec : Prop :=
  ∀ n, (P13998459228758259011.a n : ℤ) = A260484 (n + 1)

end A260484

/-! ## A260484.P9961235143370099732

`∑[A139401(Δ[A154617(n)])]`
-/

namespace A260484.P9961235143370099732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154617 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260484.P9961235143370099732

namespace A260484

/-- `∑[A139401(Δ[A154617(n)])]` -/
def P9961235143370099732.Spec : Prop :=
  ∀ n, P9961235143370099732.a n = A260484 (n + 1)

end A260484

/-! ## A260484.P1660532958590284473

`∑[A163169(A017461(A008586(n)))]`
-/

namespace A260484.P1660532958590284473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 (A017461 (A008586 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260484.P1660532958590284473

namespace A260484

/-- `∑[A163169(A017461(A008586(n)))]` -/
def P1660532958590284473.Spec : Prop :=
  ∀ n, P1660532958590284473.a n = A260484 (n + 1)

end A260484

/-! ## A260484.P6215229751640429794

`∑[A292269(A141694(A005843(n)))]`
-/

namespace A260484.P6215229751640429794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (A141694 (A005843 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260484.P6215229751640429794

namespace A260484

/-- `∑[A292269(A141694(A005843(n)))]` -/
def P6215229751640429794.Spec : Prop :=
  ∀ n, P6215229751640429794.a n = A260484 (n + 1)

end A260484

/-! ## A260484.P13019789509330251232

`A002264(Δ[A154617(n)])-A008593(n)`
-/

namespace A260484.P13019789509330251232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (n + 1) - f1 n).toNat - A008593 n

end

end A260484.P13019789509330251232

namespace A260484

/-- `A002264(Δ[A154617(n)])-A008593(n)` -/
def P13019789509330251232.Spec : Prop :=
  ∀ n, P13019789509330251232.a n = A260484 (n + 1)

end A260484

/-! ## A260484.P9601614890159795267

`A002264(A008593(4*n+1))-A008593(n)`
-/

namespace A260484.P9601614890159795267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A008593 (4 * n + 1)).toNat - A008593 n

end

end A260484.P9601614890159795267

namespace A260484

/-- `A002264(A008593(4*n+1))-A008593(n)` -/
def P9601614890159795267.Spec : Prop :=
  ∀ n, P9601614890159795267.a n = A260484 (n + 1)

end A260484

/-! ## A260484.P2259829503024739178

`A081753(2*A248339(n))`
-/

namespace A260484.P2259829503024739178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (2 * A248339 n).toNat

end

end A260484.P2259829503024739178

namespace A260484

/-- `A081753(2*A248339(n))` -/
def P2259829503024739178.Spec : Prop :=
  ∀ n, P2259829503024739178.a n = A260484 (n + 1)

end A260484

/-!
# A260485: Smallest number m such that 2*m = OddPrime(n) + q, q prime, and 2*m - prime(k) is not prime for k less than n.

The programs for A260485, there is no canonical definition to state claims against.
-/

/-! ## A260485.P16196731641806277213

`A260580(∑[A105047(n+1)])`
-/

namespace A260485.P16196731641806277213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260580 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A260485.P16196731641806277213

/-! ## A260485.P14504538879467081702

`A260580(A061781(n+1)-n)`
-/

namespace A260485.P14504538879467081702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260580 (A061781 (n + 1) - (n : ℤ)).toNat

end

end A260485.P14504538879467081702

/-! ## A260485.P4662030001213389957

`A260580(A000124(n)-A061784(n+1))`
-/

namespace A260485.P4662030001213389957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260580 (A000124 n - A061784 (n + 1)).toNat

end

end A260485.P4662030001213389957

/-! ## A260485.P6072987549002664130

`A260580(∑[A028310(n)]-A061784(n+1))`
-/

namespace A260485.P6072987549002664130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260580 (∑ j ∈ Finset.range (n + 1), f1 j - A061784 (n + 1)).toNat

end

end A260485.P6072987549002664130

/-! ## A260485.P3900801598695239635

`A260580(A006093(n+1)-A334810(n+1))`
-/

namespace A260485.P3900801598695239635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260580 (A006093 (n + 1) - A334810 (n + 1)).toNat

end

end A260485.P3900801598695239635

/-! ## A260485.P11729929070490771085

`A260580(A102696(n+1)-A105047(n+2)+1)`
-/

namespace A260485.P11729929070490771085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260580 (A102696 (n + 1) - A105047 (n + 2) + 1).toNat

end

end A260485.P11729929070490771085

/-!
# A260488: Numbers of the form 2^m * (6k + 1) for m, k >= 0, and 0.

The programs for A260488, the canonical program `A260488.P4920664847729717800` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260488 has offset 0).

The definition of A260488 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260488.P4920664847729717800

`eq[0, and(n, n-1)%3]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A260488

/-- `eq[0, and(n, n-1)%3]` -/
def P4920664847729717800.Spec : Prop :=
  ∀ n, (P4920664847729717800.a n : ℤ) = A260488 n

theorem P4920664847729717800.correct : P4920664847729717800.Spec := by
  intro n
  simp only [A260488]

end A260488

/-! ## A260488.P3164158252495987962

`comp[(n+1)*gcd(3, and(n, n+1))]`
-/

namespace A260488.P3164158252495987962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd 3 (Nat.land n (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A260488.P3164158252495987962

namespace A260488

/-- `comp[(n+1)*gcd(3, and(n, n+1))]` -/
def P3164158252495987962.Spec : Prop :=
  ∀ n, (P3164158252495987962.a n : ℤ) = A260488 n

end A260488

/-! ## A260488.P10107583415642118488

`3*n-A260489(n)`
-/

namespace A260488.P10107583415642118488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A260489 n

end

end A260488.P10107583415642118488

namespace A260488

/-- `3*n-A260489(n)` -/
def P10107583415642118488.Spec : Prop :=
  ∀ n, P10107583415642118488.a n = A260488 n

end A260488

/-! ## A260488.P14836204868820660372

`eq[0, A100050(and(n, n-1))]`
-/

namespace A260488.P14836204868820660372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260488.P14836204868820660372

namespace A260488

/-- `eq[0, A100050(and(n, n-1))]` -/
def P14836204868820660372.Spec : Prop :=
  ∀ n, (P14836204868820660372.a n : ℤ) = A260488 n

end A260488

/-! ## A260488.P10076238790456555617

`eq[1, A010892(and(n, n-1))]`
-/

namespace A260488.P10076238790456555617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260488.P10076238790456555617

namespace A260488

/-- `eq[1, A010892(and(n, n-1))]` -/
def P10076238790456555617.Spec : Prop :=
  ∀ n, (P10076238790456555617.a n : ℤ) = A260488 n

end A260488

/-! ## A260488.P17338798417578495532

`eq[1, A138189(and(n, n-1))]`
-/

namespace A260488.P17338798417578495532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138189 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260488.P17338798417578495532

namespace A260488

/-- `eq[1, A138189(and(n, n-1))]` -/
def P17338798417578495532.Spec : Prop :=
  ∀ n, (P17338798417578495532.a n : ℤ) = A260488 n

end A260488

/-! ## A260488.P4093775033815534486

`eq[1, A100833(and(n, n-1)+1)]`
-/

namespace A260488.P4093775033815534486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100833 (Int.land (n : ℤ) ((n : ℤ) - 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260488.P4093775033815534486

namespace A260488

/-- `eq[1, A100833(and(n, n-1)+1)]` -/
def P4093775033815534486.Spec : Prop :=
  ∀ n, (P4093775033815534486.a n : ℤ) = A260488 n

end A260488

/-! ## A260488.P6669003299942562629

`eq[1, (A143098(n+1)-A084091(n))²]`
-/

namespace A260488.P6669003299942562629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A143098 (n + 1) - A084091 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260488.P6669003299942562629

namespace A260488

/-- `eq[1, (A143098(n+1)-A084091(n))²]` -/
def P6669003299942562629.Spec : Prop :=
  ∀ n, (P6669003299942562629.a n : ℤ) = A260488 n

end A260488

/-! ## A260488.P5475594967493328103

`eq[A285383(2*n+1)+A100063(n), A100063(n+1)]`
-/

namespace A260488.P5475594967493328103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285383 (2 * n + 1) + A100063 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260488.P5475594967493328103

namespace A260488

/-- `eq[A285383(2*n+1)+A100063(n), A100063(n+1)]` -/
def P5475594967493328103.Spec : Prop :=
  ∀ n, (P5475594967493328103.a n : ℤ) = A260488 n

end A260488

/-! ## A260488.P579021496164380698

`eq[A285383(2*n+1)+A136619(2*n+1), A136619(n+2)]`
-/

namespace A260488.P579021496164380698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285383 (2 * n + 1) + A136619 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136619 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260488.P579021496164380698

namespace A260488

/-- `eq[A285383(2*n+1)+A136619(2*n+1), A136619(n+2)]` -/
def P579021496164380698.Spec : Prop :=
  ∀ n, (P579021496164380698.a n : ℤ) = A260488 n

end A260488

/-!
# A260489: a(n) = 3n - A260488(n).

The programs for A260489, the canonical program `A260489.P15651954897891413003` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260489 has offset 0).

The definition of A260489 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260488, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A260489.P15651954897891413003

`3*n-A260488(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A260489

/-- `3*n-A260488(n)` -/
def P15651954897891413003.Spec : Prop :=
  ∀ n, P15651954897891413003.a n = A260489 n

theorem P15651954897891413003.correct : P15651954897891413003.Spec := by
  intro n
  simp only [A260489]

end A260489

/-! ## A260489.P3980664973069085565

`3*n-eq[0, and(n, n-1)%3]`
-/

namespace A260489.P3980664973069085565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) ((n : ℤ) - 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A260489.P3980664973069085565

namespace A260489

/-- `3*n-eq[0, and(n, n-1)%3]` -/
def P3980664973069085565.Spec : Prop :=
  ∀ n, P3980664973069085565.a n = A260489 n

end A260489

/-! ## A260489.P2587706422524750238

`3*n-comp[(n+1)*gcd(3, and(n, n+1))]`
-/

namespace A260489.P2587706422524750238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd 3 (Nat.land n (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A260489.P2587706422524750238

namespace A260489

/-- `3*n-comp[(n+1)*gcd(3, and(n, n+1))]` -/
def P2587706422524750238.Spec : Prop :=
  ∀ n, P2587706422524750238.a n = A260489 n

end A260489

/-! ## A260489.P11002143303047971804

`abs(A008585(n)-A260488(n))`
-/

namespace A260489.P11002143303047971804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008585 n - A260488 n|

end

end A260489.P11002143303047971804

namespace A260489

/-- `abs(A008585(n)-A260488(n))` -/
def P11002143303047971804.Spec : Prop :=
  ∀ n, P11002143303047971804.a n = A260489 n

end A260489

/-! ## A260489.P11821067843371245016

`A016777(n)-(A260488(n)+1)`
-/

namespace A260489.P11821067843371245016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - (A260488 n + 1)

end

end A260489.P11821067843371245016

namespace A260489

/-- `A016777(n)-(A260488(n)+1)` -/
def P11821067843371245016.Spec : Prop :=
  ∀ n, P11821067843371245016.a n = A260489 n

end A260489

/-! ## A260489.P14273038477393417315

`A016789(n)-(A260488(n)+2)`
-/

namespace A260489.P14273038477393417315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - (A260488 n + 2)

end

end A260489.P14273038477393417315

namespace A260489

/-- `A016789(n)-(A260488(n)+2)` -/
def P14273038477393417315.Spec : Prop :=
  ∀ n, P14273038477393417315.a n = A260489 n

end A260489

/-! ## A260489.P1562039340575678615

`∑{d}[A008585(n)-A260488(n), A000010(#)]`
-/

namespace A260489.P1562039340575678615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - A260488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A260489.P1562039340575678615

namespace A260489

/-- `∑{d}[A008585(n)-A260488(n), A000010(#)]` -/
def P1562039340575678615.Spec : Prop :=
  ∀ n, P1562039340575678615.a n = A260489 n

end A260489

/-! ## A260489.P6098819604860413096

`(A008585(n)-A260488(n))%A000040(n+1)`
-/

namespace A260489.P6098819604860413096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008585 n - A260488 n) (A000040 (n + 1))

end

end A260489.P6098819604860413096

namespace A260489

/-- `(A008585(n)-A260488(n))%A000040(n+1)` -/
def P6098819604860413096.Spec : Prop :=
  ∀ n, P6098819604860413096.a n = A260489 n

end A260489

/-! ## A260489.P965543321206292436

`3*n-eq[0, A100050(and(n, n-1))]`
-/

namespace A260489.P965543321206292436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A260489.P965543321206292436

namespace A260489

/-- `3*n-eq[0, A100050(and(n, n-1))]` -/
def P965543321206292436.Spec : Prop :=
  ∀ n, P965543321206292436.a n = A260489 n

end A260489

/-! ## A260489.P3222419741171258646

`3*n-eq[1, A138189(and(n, n-1))]`
-/

namespace A260489.P3222419741171258646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138189 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A260489.P3222419741171258646

namespace A260489

/-- `3*n-eq[1, A138189(and(n, n-1))]` -/
def P3222419741171258646.Spec : Prop :=
  ∀ n, P3222419741171258646.a n = A260489 n

end A260489

/-!
# A260490: Number of cells that are "POISONED" at the n-th stage of the "Ulam-Warburton" two-dimensional cellular automaton.

The programs for A260490, there is no canonical definition to state claims against.
-/

/-! ## A260490.P10436098039694630442

`Δ[A264039(abs(1-n))]`
-/

namespace A260490.P10436098039694630442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264039 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260490.P10436098039694630442

/-! ## A260490.P2946108296805384974

`A264039(n)-A264039(abs(1-n))`
-/

namespace A260490.P2946108296805384974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264039 n - A264039 |1 - (n : ℤ)|.toNat

end

end A260490.P2946108296805384974

/-! ## A260490.P13639905562247318728

`∑{e}[A009832(n), A009906(#)]`
-/

namespace A260490.P13639905562247318728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A009906 (Nat.factorization (f1 n).natAbs p)

end

end A260490.P13639905562247318728

/-! ## A260490.P15069669317047298418

`∑{e}[A009832(n), A186924(#)]`
-/

namespace A260490.P15069669317047298418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A186924 (Nat.factorization (f1 n).natAbs p)

end

end A260490.P15069669317047298418

/-! ## A260490.P11387048933709405984

`A186643(A266232(n))*A194663(n+1)`
-/

namespace A260490.P11387048933709405984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186643 (A266232 n).toNat * A194663 (n + 1)

end

end A260490.P11387048933709405984

/-!
# A260492: Pascal's triangle aerated with columns of zeros.

The programs for A260492, the canonical program `A260492.P11140523939615091371` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260492 has offset 0).

The definition of A260492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260492.P1734211707047585733

`sqrt(A059064(n))`
-/

namespace A260492.P1734211707047585733
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059064 n : ℝ)

end

end A260492.P1734211707047585733

namespace A260492

/-- `sqrt(A059064(n))` -/
def P1734211707047585733.Spec : Prop :=
  ∀ n, P1734211707047585733.a n = (A260492 n : ℝ)

end A260492

/-! ## A260492.P4936377591267704938

`A178112(comp[round(sqrt(n+1))²+n])`
-/

namespace A260492.P4936377591267704938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178112 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A260492.P4936377591267704938

namespace A260492

/-- `A178112(comp[round(sqrt(n+1))²+n])` -/
def P4936377591267704938.Spec : Prop :=
  ∀ n, P4936377591267704938.a n = A260492 n

end A260492

/-! ## A260492.P17628317657823560819

`A204293(comp[round(sqrt(n+1))²+n])`
-/

namespace A260492.P17628317657823560819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204293 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A260492.P17628317657823560819

namespace A260492

/-- `A204293(comp[round(sqrt(n+1))²+n])` -/
def P17628317657823560819.Spec : Prop :=
  ∀ n, P17628317657823560819.a n = A260492 n

end A260492

/-! ## A260492.P210223242856384067

`sqrt(comp[∑[2*n]]%2*A247644(n+1))`
-/

namespace A260492.P210223242856384067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ) * A247644 (n + 1) : ℝ)

end

end A260492.P210223242856384067

namespace A260492

/-- `sqrt(comp[∑[2*n]]%2*A247644(n+1))` -/
def P210223242856384067.Spec : Prop :=
  ∀ n, P210223242856384067.a n = (A260492 n : ℝ)

end A260492

/-! ## A260492.P18322012290842914459

`A051159(A161983(n))`
-/

namespace A260492.P18322012290842914459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (A161983 n).toNat

end

end A260492.P18322012290842914459

namespace A260492

/-- `A051159(A161983(n))` -/
def P18322012290842914459.Spec : Prop :=
  ∀ n, P18322012290842914459.a n = A260492 n

end A260492

/-! ## A260492.P3183433090935653024

`A179181(A007606(n+1))`
-/

namespace A260492.P3183433090935653024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179181 (A007606 (n + 1)).toNat

end

end A260492.P3183433090935653024

namespace A260492

/-- `A179181(A007606(n+1))` -/
def P3183433090935653024.Spec : Prop :=
  ∀ n, P3183433090935653024.a n = A260492 n

end A260492

/-! ## A260492.P5818177006694964091

`A179181(A161983(n+1))`
-/

namespace A260492.P5818177006694964091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179181 (A161983 (n + 1)).toNat

end

end A260492.P5818177006694964091

namespace A260492

/-- `A179181(A161983(n+1))` -/
def P5818177006694964091.Spec : Prop :=
  ∀ n, P5818177006694964091.a n = A260492 n

end A260492

/-! ## A260492.P2166326128986540410

`A051159(A316670(n+1))`
-/

namespace A260492.P2166326128986540410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (A316670 (n + 1)).toNat

end

end A260492.P2166326128986540410

namespace A260492

/-- `A051159(A316670(n+1))` -/
def P2166326128986540410.Spec : Prop :=
  ∀ n, P2166326128986540410.a n = A260492 n

end A260492

/-! ## A260492.P16407912438390256667

`A051159(A316965(n)+1)`
-/

namespace A260492.P16407912438390256667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (A316965 n + 1).toNat

end

end A260492.P16407912438390256667

namespace A260492

/-- `A051159(A316965(n)+1)` -/
def P16407912438390256667.Spec : Prop :=
  ∀ n, P16407912438390256667.a n = A260492 n

end A260492

/-! ## A260492.P10690491171962242618

`A051159(A116942(2*n))`
-/

namespace A260492.P10690491171962242618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (A116942 (2 * n)).toNat

end

end A260492.P10690491171962242618

namespace A260492

/-- `A051159(A116942(2*n))` -/
def P10690491171962242618.Spec : Prop :=
  ∀ n, P10690491171962242618.a n = A260492 n

end A260492

/-! ## A260492.P11140523939615091371

`A071028(n)*A140751(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A260492

/-- `A071028(n)*A140751(n)` -/
def P11140523939615091371.Spec : Prop :=
  ∀ n, P11140523939615091371.a n = A260492 n

theorem P11140523939615091371.correct : P11140523939615091371.Spec := by
  intro n
  simp only [A260492]

end A260492

/-! ## A260492.P6719684909421105851

`A071028(n)*A249095(n)`
-/

namespace A260492.P6719684909421105851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n * A249095 n

end

end A260492.P6719684909421105851

namespace A260492

/-- `A071028(n)*A249095(n)` -/
def P6719684909421105851.Spec : Prop :=
  ∀ n, P6719684909421105851.a n = A260492 n

end A260492

/-! ## A260492.P5794944417489706803

`A059064(n)/A140751(n)`
-/

namespace A260492.P5794944417489706803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059064 n : ℚ) / (A140751 n : ℚ)

end

end A260492.P5794944417489706803

namespace A260492

/-- `A059064(n)/A140751(n)` -/
def P5794944417489706803.Spec : Prop :=
  ∀ n, P5794944417489706803.a n = (A260492 n : ℚ)

end A260492

/-! ## A260492.P9497372850647683917

`A059064(n)/A249095(n)`
-/

namespace A260492.P9497372850647683917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059064 n : ℚ) / (A249095 n : ℚ)

end

end A260492.P9497372850647683917

namespace A260492

/-- `A059064(n)/A249095(n)` -/
def P9497372850647683917.Spec : Prop :=
  ∀ n, P9497372850647683917.a n = (A260492 n : ℚ)

end A260492

/-! ## A260492.P2913701948933303072

`A051159(A007606(n+1)-1)`
-/

namespace A260492.P2913701948933303072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (A007606 (n + 1) - 1).toNat

end

end A260492.P2913701948933303072

namespace A260492

/-- `A051159(A007606(n+1)-1)` -/
def P2913701948933303072.Spec : Prop :=
  ∀ n, P2913701948933303072.a n = A260492 n

end A260492

/-! ## A260492.P8919151066947891758

`A051159(eq[0, A057212(n+1)])`
-/

namespace A260492.P8919151066947891758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260492.P8919151066947891758

namespace A260492

/-- `A051159(eq[0, A057212(n+1)])` -/
def P8919151066947891758.Spec : Prop :=
  ∀ n, P8919151066947891758.a n = A260492 n

end A260492

/-! ## A260492.P13098175510598226497

`A051159(eq[1, A057211(n+1)])`
-/

namespace A260492.P13098175510598226497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260492.P13098175510598226497

namespace A260492

/-- `A051159(eq[1, A057211(n+1)])` -/
def P13098175510598226497.Spec : Prop :=
  ∀ n, P13098175510598226497.a n = A260492 n

end A260492

/-! ## A260492.P12805726509980282306

`A051159(2*n-A196199(n))`
-/

namespace A260492.P12805726509980282306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 ((2 * n : ℤ) - A196199 n).toNat

end

end A260492.P12805726509980282306

namespace A260492

/-- `A051159(2*n-A196199(n))` -/
def P12805726509980282306.Spec : Prop :=
  ∀ n, P12805726509980282306.a n = A260492 n

end A260492

/-! ## A260492.P15061893725703215934

`A051159(n-A196199(n)+n)`
-/

namespace A260492.P15061893725703215934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 ((n : ℤ) - A196199 n + (n : ℤ)).toNat

end

end A260492.P15061893725703215934

namespace A260492

/-- `A051159(n-A196199(n)+n)` -/
def P15061893725703215934.Spec : Prop :=
  ∀ n, P15061893725703215934.a n = A260492 n

end A260492

/-! ## A260492.P6250274655123319078

`A051159(n-(A196199(n)-n))`
-/

namespace A260492.P6250274655123319078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 ((n : ℤ) - (A196199 n - (n : ℤ))).toNat

end

end A260492.P6250274655123319078

namespace A260492

/-- `A051159(n-(A196199(n)-n))` -/
def P6250274655123319078.Spec : Prop :=
  ∀ n, P6250274655123319078.a n = A260492 n

end A260492

/-!
# A260493: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00001011.

The programs for A260493, there is no canonical definition to state claims against.
-/

/-! ## A260493.P6256664704437984022

`A260501(∑[4*n]+1)`
-/

namespace A260493.P6256664704437984022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260501 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260493.P6256664704437984022

/-! ## A260493.P14131256740855826775

`record[A260501(A330613(n+1))]`
-/

namespace A260493.P14131256740855826775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260501 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260493.P14131256740855826775

/-! ## A260493.P14569996938815380783

`record[A260501(A152271((n+2)²))]`
-/

namespace A260493.P14569996938815380783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260501 (A152271 ((n + 2) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260493.P14569996938815380783

/-! ## A260493.P7672676367464484740

`A260501(Δ[A005900(n)])+char[34]`
-/

namespace A260493.P7672676367464484740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260501 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A260493.P7672676367464484740

/-! ## A260493.P16063763801685477202

`(1/A260501(A001844(n)))^-1`
-/

namespace A260493.P16063763801685477202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 / (A260501 (A001844 n).toNat : ℚ)) ^ (-1 : ℤ)

end

end A260493.P16063763801685477202

/-!
# A260494: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000001 00000011 or 00001011.

The programs for A260494, there is no canonical definition to state claims against.
-/

/-! ## A260494.P11049445181546399529

`A260501(∑[n]+1)`
-/

namespace A260494.P11049445181546399529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260501 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260494.P11049445181546399529

/-! ## A260494.P8401570847752135302

`record[A260501(A056534(n+1))]`
-/

namespace A260494.P8401570847752135302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260501 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260494.P8401570847752135302

/-! ## A260494.P15823328435522379145

`record[A260501(A056536(n+1))]`
-/

namespace A260494.P15823328435522379145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260501 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260494.P15823328435522379145

/-! ## A260494.P9986954245803845823

`record[A260501(A255546(n+1))]`
-/

namespace A260494.P9986954245803845823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260501 (A255546 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260494.P9986954245803845823

/-! ## A260494.P1354611358794180100

`lcm((-1)^n, A260501(A000124(n)))`
-/

namespace A260494.P1354611358794180100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A260501 (A000124 n).toNat)

end

end A260494.P1354611358794180100

/-!
# A260495: Number of (n+2)X(2+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00001011.

The programs for A260495, there is no canonical definition to state claims against.
-/

/-! ## A260495.P3464825081121728306

`A260501(∑[n+1]+2)`
-/

namespace A260495.P3464825081121728306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260501 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A260495.P3464825081121728306

/-! ## A260495.P7487004610102116649

`or(char[2], A260501(A133263(n+1)))`
-/

namespace A260495.P7487004610102116649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A260501 (A133263 (n + 1)).toNat)

end

end A260495.P7487004610102116649

/-! ## A260495.P10181462331716337526

`A007318(C(2, n))*A260501(A133263(n+1))`
-/

namespace A260495.P10181462331716337526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A260501 (A133263 (n + 1)).toNat

end

end A260495.P10181462331716337526

/-! ## A260495.P12915865619889229524

`A007318(and(1, -n))*A260501(A133263(n+1))`
-/

namespace A260495.P12915865619889229524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A260501 (A133263 (n + 1)).toNat

end

end A260495.P12915865619889229524

/-! ## A260495.P4219570118744482585

`A000108(n*char[1])*A260501(A133263(n+1))`
-/

namespace A260495.P4219570118744482585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n * (if ∃ j, f1 j = n then 1 else 0)) * A260501 (A133263 (n + 1)).toNat

end

end A260495.P4219570118744482585

/-!
# A260496: Number of (n+2)X(3+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00001011.

The programs for A260496, there is no canonical definition to state claims against.
-/

/-! ## A260496.P1451998810075773249

`A260501(∑[n+2]+4)`
-/

namespace A260496.P1451998810075773249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260501 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A260496.P1451998810075773249

/-! ## A260496.P748569705024106698

`or(char[1], A260501(A167614(n+1)))`
-/

namespace A260496.P748569705024106698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A260501 (A167614 (n + 1)).toNat)

end

end A260496.P748569705024106698

/-! ## A260496.P5039715383726113103

`lcm(A020985(n), A260501(A167614(n+1)))`
-/

namespace A260496.P5039715383726113103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A260501 (A167614 (n + 1)).toNat)

end

end A260496.P5039715383726113103

/-! ## A260496.P9650524610619594752

`A260501(A167614(n+1))+A000007(n+2)`
-/

namespace A260496.P9650524610619594752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260501 (A167614 (n + 1)).toNat + A000007 (n + 2)

end

end A260496.P9650524610619594752

/-! ## A260496.P12552515460289126291

`A260501(A167614(n+1))%A186476(n+1)`
-/

namespace A260496.P12552515460289126291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260501 (A167614 (n + 1)).toNat) (A186476 (n + 1))

end

end A260496.P12552515460289126291

/-!
# A260497: Number of (n+2)X(4+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00001011.

The programs for A260497, there is no canonical definition to state claims against.
-/

/-! ## A260497.P14151278044137503541

`A260501(∑[n+3]+7)`
-/

namespace A260497.P14151278044137503541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260501 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A260497.P14151278044137503541

/-! ## A260497.P17019172625474259029

`or(char[1], A260501(A052905(n)+9))`
-/

namespace A260497.P17019172625474259029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A260501 (A052905 n + 9).toNat)

end

end A260497.P17019172625474259029

/-! ## A260497.P264382180338148513

`or(char[3], A260501(A055999(n)+10))`
-/

namespace A260497.P264382180338148513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A260501 (A055999 n + 10).toNat)

end

end A260497.P264382180338148513

/-! ## A260497.P6201578005514656519

`A007318(C(2, n))*A260501(A052905(n)+9)`
-/

namespace A260497.P6201578005514656519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A260501 (A052905 n + 9).toNat

end

end A260497.P6201578005514656519

/-! ## A260497.P8149779261327798250

`A260501(A052905(n)+9)/A007318(C(n, 2))²`
-/

namespace A260497.P8149779261327798250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260501 (A052905 n + 9).toNat : ℚ) / (A007318 (Nat.choose n 2) ^ 2 : ℚ)

end

end A260497.P8149779261327798250

/-!
# A260498: Number of (n+2)X(5+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00001011.

The programs for A260498, there is no canonical definition to state claims against.
-/

/-! ## A260498.P7527771351773068018

`A260501(∑[n+2]+2*n+13)`
-/

namespace A260498.P7527771351773068018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260501 (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 13))

end

end A260498.P7527771351773068018

/-! ## A260498.P1498367627675154021

`A260502(n+1)+A260501(Δ[A264443(n)])`
-/

namespace A260498.P1498367627675154021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260502 (n + 1) + A260501 (f1 (n + 1) - f1 n).toNat

end

end A260498.P1498367627675154021

/-! ## A260498.P4240826144475238401

`A360125(2*n+5)+A260501(eq[4, A193592(n)])`
-/

namespace A260498.P4240826144475238401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360125 (2 * n + 5) + A260501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260498.P4240826144475238401

/-!
# A260499: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00001011.

The programs for A260499, there is no canonical definition to state claims against.
-/

/-! ## A260499.P13698081168006499447

`A260501(∑[n+5]+16)`
-/

namespace A260499.P13698081168006499447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260501 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A260499.P13698081168006499447

/-! ## A260499.P4914839236892311027

`A260501(A141214(n+2)+9)+char[45]`
-/

namespace A260499.P4914839236892311027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260501 (A141214 (n + 2) + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A260499.P4914839236892311027

/-! ## A260499.P6124929996670281655

`A014963(6*(n+1))*A260501(A141214(n+2)+9)`
-/

namespace A260499.P6124929996670281655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A260501 (A141214 (n + 2) + 9).toNat

end

end A260499.P6124929996670281655

/-! ## A260499.P9747643464052275802

`A007318(C(2, 2*n))*A260501(A141214(n+2)+9)`
-/

namespace A260499.P9747643464052275802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (2 * n)) * A260501 (A141214 (n + 2) + 9).toNat

end

end A260499.P9747643464052275802

/-! ## A260499.P14526249072321672600

`A000041(gcd(n, n+1))*A260501(A141214(n+2)+9)`
-/

namespace A260499.P14526249072321672600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A260501 (A141214 (n + 2) + 9).toNat

end

end A260499.P14526249072321672600

